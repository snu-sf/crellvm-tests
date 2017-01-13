; ModuleID = './MultiSource.Applications.ClamAV/36.libclamav_regex_regcomp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cclass = type { i8*, i8*, i8* }
%struct.cname = type { i8*, i8 }
%struct.regex_t = type { i32, i64, i8*, %struct.re_guts* }
%struct.re_guts = type { i32, i64*, i32, i32, %struct.cset*, i8*, i32, i64, i64, i64, i32, i32, i32, i32, i8*, i8*, i32, i64, i32, i64, [1 x i8] }
%struct.cset = type { i8*, i8, i8, i64, i8* }
%struct.parse = type { i8*, i8*, i32, i64*, i64, i64, i32, %struct.re_guts*, [10 x i64], [10 x i64] }

@.str = private unnamed_addr constant [7 x i8] c"[:<:]]\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[:>:]]\00", align 1
@cclasses = internal global [13 x %struct.cclass] [%struct.cclass { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0) }, %struct.cclass { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0) }, %struct.cclass { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0) }, %struct.cclass { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0) }, %struct.cclass { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0) }, %struct.cclass { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0) }, %struct.cclass { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0) }, %struct.cclass { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0) }, %struct.cclass { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0) }, %struct.cclass { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0) }, %struct.cclass { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0) }, %struct.cclass { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0) }, %struct.cclass { i8* null, i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0) }], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\07\08\09\0A\0B\0C\0D\01\02\03\04\05\06\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F\7F\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.14 = private unnamed_addr constant [95 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!\22#$%&'()*+,-./:;<=>?@[\5C]^_`{|}~\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.18 = private unnamed_addr constant [96 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!\22#$%&'()*+,-./:;<=>?@[\5C]^_`{|}~ \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"!\22#$%&'()*+,-./:;<=>?@[\5C]^_`{|}~\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"\09\0A\0B\0C\0D \00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"0123456789ABCDEFabcdef\00", align 1
@cnames = internal global [96 x %struct.cname] [%struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8 0 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8 1 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8 2 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8 3 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8 4 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8 5 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i8 6 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i8 7 }, %struct.cname { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8 7 }, %struct.cname { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8 8 }, %struct.cname { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8 8 }, %struct.cname { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i8 9 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8 9 }, %struct.cname { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i8 10 }, %struct.cname { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8 10 }, %struct.cname { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8 11 }, %struct.cname { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i8 11 }, %struct.cname { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8 12 }, %struct.cname { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8 12 }, %struct.cname { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8 13 }, %struct.cname { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), i8 13 }, %struct.cname { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8 14 }, %struct.cname { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8 15 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i8 16 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i8 17 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i8 18 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8 19 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i8 20 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i8 21 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i8 22 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8 23 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i8 24 }, %struct.cname { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i8 25 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i8 26 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i32 0, i32 0), i8 27 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0), i8 28 }, %struct.cname { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0), i8 28 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i8 29 }, %struct.cname { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i32 0, i32 0), i8 29 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i8 30 }, %struct.cname { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0), i8 30 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0), i8 31 }, %struct.cname { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8 31 }, %struct.cname { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8 32 }, %struct.cname { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i8 33 }, %struct.cname { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0), i8 34 }, %struct.cname { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0), i8 35 }, %struct.cname { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0), i8 36 }, %struct.cname { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i32 0, i32 0), i8 37 }, %struct.cname { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i8 38 }, %struct.cname { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), i8 39 }, %struct.cname { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0), i8 40 }, %struct.cname { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i32 0, i32 0), i8 41 }, %struct.cname { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), i8 42 }, %struct.cname { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i8 43 }, %struct.cname { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i8 44 }, %struct.cname { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i8 45 }, %struct.cname { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i8 45 }, %struct.cname { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i8 46 }, %struct.cname { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i8 46 }, %struct.cname { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i8 47 }, %struct.cname { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i8 47 }, %struct.cname { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i8 48 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i8 49 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i8 50 }, %struct.cname { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8 51 }, %struct.cname { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8 52 }, %struct.cname { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0), i8 53 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i8 54 }, %struct.cname { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i8 55 }, %struct.cname { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0), i8 56 }, %struct.cname { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i32 0, i32 0), i8 57 }, %struct.cname { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i32 0, i32 0), i8 58 }, %struct.cname { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i32 0, i32 0), i8 59 }, %struct.cname { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.100, i32 0, i32 0), i8 60 }, %struct.cname { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i8 61 }, %struct.cname { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.102, i32 0, i32 0), i8 62 }, %struct.cname { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.103, i32 0, i32 0), i8 63 }, %struct.cname { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.104, i32 0, i32 0), i8 64 }, %struct.cname { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.105, i32 0, i32 0), i8 91 }, %struct.cname { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), i8 92 }, %struct.cname { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.107, i32 0, i32 0), i8 92 }, %struct.cname { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.108, i32 0, i32 0), i8 93 }, %struct.cname { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.109, i32 0, i32 0), i8 94 }, %struct.cname { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i32 0, i32 0), i8 94 }, %struct.cname { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i32 0, i32 0), i8 95 }, %struct.cname { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i32 0, i32 0), i8 95 }, %struct.cname { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.113, i32 0, i32 0), i8 96 }, %struct.cname { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.114, i32 0, i32 0), i8 123 }, %struct.cname { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.115, i32 0, i32 0), i8 123 }, %struct.cname { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.116, i32 0, i32 0), i8 124 }, %struct.cname { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i32 0, i32 0), i8 125 }, %struct.cname { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.118, i32 0, i32 0), i8 125 }, %struct.cname { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i32 0, i32 0), i8 126 }, %struct.cname { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i32 0, i32 0), i8 127 }, %struct.cname zeroinitializer], align 16
@.str.27 = private unnamed_addr constant [4 x i8] c"NUL\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"SOH\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"STX\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"ETX\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"EOT\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"ENQ\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"BEL\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"alert\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"BS\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"backspace\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"HT\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"LF\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"newline\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"VT\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"vertical-tab\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"FF\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"form-feed\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"carriage-return\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"SO\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"SI\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"DLE\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"DC1\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"DC2\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"DC3\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"DC4\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"NAK\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"SYN\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"ETB\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"CAN\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"EM\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"ESC\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"IS4\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"FS\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"IS3\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"GS\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"IS2\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"RS\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"IS1\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"exclamation-mark\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"quotation-mark\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"number-sign\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"dollar-sign\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"percent-sign\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"ampersand\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"apostrophe\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"left-parenthesis\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"right-parenthesis\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"asterisk\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"plus-sign\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"comma\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"hyphen\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"hyphen-minus\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"full-stop\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"slash\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"solidus\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"colon\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"semicolon\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"less-than-sign\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"equals-sign\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"greater-than-sign\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"question-mark\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"commercial-at\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"left-square-bracket\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"backslash\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"reverse-solidus\00", align 1
@.str.108 = private unnamed_addr constant [21 x i8] c"right-square-bracket\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"circumflex\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"circumflex-accent\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"underscore\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"low-line\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"grave-accent\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"left-brace\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"left-curly-bracket\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"vertical-line\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"right-brace\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"right-curly-bracket\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"tilde\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@nuls = internal global [10 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @cli_regcomp(%struct.regex_t* %preg, i8* %pattern, i32 %cflags) #0 {
entry:
  %retval = alloca i32, align 4
  %preg.addr = alloca %struct.regex_t*, align 8
  %pattern.addr = alloca i8*, align 8
  %cflags.addr = alloca i32, align 4
  %pa = alloca %struct.parse, align 8
  %g = alloca %struct.re_guts*, align 8
  %p = alloca %struct.parse*, align 8
  %i = alloca i32, align 4
  %len = alloca i64, align 8
  store %struct.regex_t* %preg, %struct.regex_t** %preg.addr, align 8
  store i8* %pattern, i8** %pattern.addr, align 8
  store i32 %cflags, i32* %cflags.addr, align 4
  store %struct.parse* %pa, %struct.parse** %p, align 8
  %0 = load i32, i32* %cflags.addr, align 4
  %and = and i32 %0, -129
  store i32 %and, i32* %cflags.addr, align 4
  %1 = load i32, i32* %cflags.addr, align 4
  %and1 = and i32 %1, 1
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %cflags.addr, align 4
  %and2 = and i32 %2, 16
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 16, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %cflags.addr, align 4
  %and4 = and i32 %3, 32
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %4 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %re_endp = getelementptr inbounds %struct.regex_t, %struct.regex_t* %4, i32 0, i32 2
  %5 = load i8*, i8** %re_endp, align 8
  %6 = load i8*, i8** %pattern.addr, align 8
  %cmp = icmp ult i8* %5, %6
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.6
  store i32 16, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.6
  %7 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %re_endp9 = getelementptr inbounds %struct.regex_t, %struct.regex_t* %7, i32 0, i32 2
  %8 = load i8*, i8** %re_endp9, align 8
  %9 = load i8*, i8** %pattern.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %10 = load i8*, i8** %pattern.addr, align 8
  %call = call i64 @strlen(i8* %10) #6
  store i64 %call, i64* %len, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end.8
  %call11 = call i8* @cli_malloc(i64 399)
  %11 = bitcast i8* %call11 to %struct.re_guts*
  store %struct.re_guts* %11, %struct.re_guts** %g, align 8
  %12 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %cmp12 = icmp eq %struct.re_guts* %12, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 12, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %13 = load i64, i64* %len, align 8
  %div = udiv i64 %13, 2
  %mul = mul i64 %div, 3
  %add = add i64 %mul, 1
  %14 = load %struct.parse*, %struct.parse** %p, align 8
  %ssize = getelementptr inbounds %struct.parse, %struct.parse* %14, i32 0, i32 4
  store i64 %add, i64* %ssize, align 8
  %15 = load %struct.parse*, %struct.parse** %p, align 8
  %ssize15 = getelementptr inbounds %struct.parse, %struct.parse* %15, i32 0, i32 4
  %16 = load i64, i64* %ssize15, align 8
  %call16 = call i8* @cli_calloc(i64 %16, i64 8)
  %17 = bitcast i8* %call16 to i64*
  %18 = load %struct.parse*, %struct.parse** %p, align 8
  %strip = getelementptr inbounds %struct.parse, %struct.parse* %18, i32 0, i32 3
  store i64* %17, i64** %strip, align 8
  %19 = load %struct.parse*, %struct.parse** %p, align 8
  %slen = getelementptr inbounds %struct.parse, %struct.parse* %19, i32 0, i32 5
  store i64 0, i64* %slen, align 8
  %20 = load %struct.parse*, %struct.parse** %p, align 8
  %strip17 = getelementptr inbounds %struct.parse, %struct.parse* %20, i32 0, i32 3
  %21 = load i64*, i64** %strip17, align 8
  %cmp18 = icmp eq i64* %21, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  %22 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %23 = bitcast %struct.re_guts* %22 to i8*
  call void @free(i8* %23) #4
  store i32 12, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.14
  %24 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %25 = load %struct.parse*, %struct.parse** %p, align 8
  %g21 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 7
  store %struct.re_guts* %24, %struct.re_guts** %g21, align 8
  %26 = load i8*, i8** %pattern.addr, align 8
  %27 = load %struct.parse*, %struct.parse** %p, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %27, i32 0, i32 0
  store i8* %26, i8** %next, align 8
  %28 = load %struct.parse*, %struct.parse** %p, align 8
  %next22 = getelementptr inbounds %struct.parse, %struct.parse* %28, i32 0, i32 0
  %29 = load i8*, i8** %next22, align 8
  %30 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %30
  %31 = load %struct.parse*, %struct.parse** %p, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %31, i32 0, i32 1
  store i8* %add.ptr, i8** %end, align 8
  %32 = load %struct.parse*, %struct.parse** %p, align 8
  %error = getelementptr inbounds %struct.parse, %struct.parse* %32, i32 0, i32 2
  store i32 0, i32* %error, align 4
  %33 = load %struct.parse*, %struct.parse** %p, align 8
  %ncsalloc = getelementptr inbounds %struct.parse, %struct.parse* %33, i32 0, i32 6
  store i32 0, i32* %ncsalloc, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %34 = load i32, i32* %i, align 4
  %cmp23 = icmp slt i32 %34, 10
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.parse*, %struct.parse** %p, align 8
  %pbegin = getelementptr inbounds %struct.parse, %struct.parse* %36, i32 0, i32 8
  %arrayidx = getelementptr inbounds [10 x i64], [10 x i64]* %pbegin, i32 0, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %37 to i64
  %38 = load %struct.parse*, %struct.parse** %p, align 8
  %pend = getelementptr inbounds %struct.parse, %struct.parse* %38, i32 0, i32 9
  %arrayidx25 = getelementptr inbounds [10 x i64], [10 x i64]* %pend, i32 0, i64 %idxprom24
  store i64 0, i64* %arrayidx25, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %csetsize = getelementptr inbounds %struct.re_guts, %struct.re_guts* %40, i32 0, i32 2
  store i32 256, i32* %csetsize, align 4
  %41 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %sets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %41, i32 0, i32 4
  store %struct.cset* null, %struct.cset** %sets, align 8
  %42 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %setbits = getelementptr inbounds %struct.re_guts, %struct.re_guts* %42, i32 0, i32 5
  store i8* null, i8** %setbits, align 8
  %43 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %ncsets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %43, i32 0, i32 3
  store i32 0, i32* %ncsets, align 4
  %44 = load i32, i32* %cflags.addr, align 4
  %45 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %cflags26 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %45, i32 0, i32 6
  store i32 %44, i32* %cflags26, align 4
  %46 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %iflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %46, i32 0, i32 10
  store i32 0, i32* %iflags, align 4
  %47 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %nbol = getelementptr inbounds %struct.re_guts, %struct.re_guts* %47, i32 0, i32 11
  store i32 0, i32* %nbol, align 4
  %48 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %neol = getelementptr inbounds %struct.re_guts, %struct.re_guts* %48, i32 0, i32 12
  store i32 0, i32* %neol, align 4
  %49 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %must = getelementptr inbounds %struct.re_guts, %struct.re_guts* %49, i32 0, i32 15
  store i8* null, i8** %must, align 8
  %50 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %mlen = getelementptr inbounds %struct.re_guts, %struct.re_guts* %50, i32 0, i32 16
  store i32 0, i32* %mlen, align 4
  %51 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %nsub = getelementptr inbounds %struct.re_guts, %struct.re_guts* %51, i32 0, i32 17
  store i64 0, i64* %nsub, align 8
  %52 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %ncategories = getelementptr inbounds %struct.re_guts, %struct.re_guts* %52, i32 0, i32 13
  store i32 1, i32* %ncategories, align 4
  %53 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %catspace = getelementptr inbounds %struct.re_guts, %struct.re_guts* %53, i32 0, i32 20
  %arrayidx27 = getelementptr inbounds [1 x i8], [1 x i8]* %catspace, i32 0, i64 128
  %54 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %categories = getelementptr inbounds %struct.re_guts, %struct.re_guts* %54, i32 0, i32 14
  store i8* %arrayidx27, i8** %categories, align 8
  %55 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %catspace28 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %55, i32 0, i32 20
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %catspace28, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay, i8 0, i64 256, i32 1, i1 false)
  %56 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %backrefs = getelementptr inbounds %struct.re_guts, %struct.re_guts* %56, i32 0, i32 18
  store i32 0, i32* %backrefs, align 4
  %57 = load %struct.parse*, %struct.parse** %p, align 8
  call void @doemit(%struct.parse* %57, i64 134217728, i64 0)
  %58 = load %struct.parse*, %struct.parse** %p, align 8
  %slen29 = getelementptr inbounds %struct.parse, %struct.parse* %58, i32 0, i32 5
  %59 = load i64, i64* %slen29, align 8
  %sub = sub nsw i64 %59, 1
  %60 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %firststate = getelementptr inbounds %struct.re_guts, %struct.re_guts* %60, i32 0, i32 8
  store i64 %sub, i64* %firststate, align 8
  %61 = load i32, i32* %cflags.addr, align 4
  %and30 = and i32 %61, 1
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %for.end
  %62 = load %struct.parse*, %struct.parse** %p, align 8
  call void @p_ere(%struct.parse* %62, i32 128)
  br label %if.end.39

if.else.33:                                       ; preds = %for.end
  %63 = load i32, i32* %cflags.addr, align 4
  %and34 = and i32 %63, 16
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.else.33
  %64 = load %struct.parse*, %struct.parse** %p, align 8
  call void @p_str(%struct.parse* %64)
  br label %if.end.38

if.else.37:                                       ; preds = %if.else.33
  %65 = load %struct.parse*, %struct.parse** %p, align 8
  call void @p_bre(%struct.parse* %65, i32 128, i32 128)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.32
  %66 = load %struct.parse*, %struct.parse** %p, align 8
  call void @doemit(%struct.parse* %66, i64 134217728, i64 0)
  %67 = load %struct.parse*, %struct.parse** %p, align 8
  %slen40 = getelementptr inbounds %struct.parse, %struct.parse* %67, i32 0, i32 5
  %68 = load i64, i64* %slen40, align 8
  %sub41 = sub nsw i64 %68, 1
  %69 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %laststate = getelementptr inbounds %struct.re_guts, %struct.re_guts* %69, i32 0, i32 9
  store i64 %sub41, i64* %laststate, align 8
  %70 = load %struct.parse*, %struct.parse** %p, align 8
  %71 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  call void @categorize(%struct.parse* %70, %struct.re_guts* %71)
  %72 = load %struct.parse*, %struct.parse** %p, align 8
  %73 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  call void @stripsnug(%struct.parse* %72, %struct.re_guts* %73)
  %74 = load %struct.parse*, %struct.parse** %p, align 8
  %75 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  call void @findmust(%struct.parse* %74, %struct.re_guts* %75)
  %76 = load %struct.parse*, %struct.parse** %p, align 8
  %77 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %call42 = call i64 @pluscount(%struct.parse* %76, %struct.re_guts* %77)
  %78 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %nplus = getelementptr inbounds %struct.re_guts, %struct.re_guts* %78, i32 0, i32 19
  store i64 %call42, i64* %nplus, align 8
  %79 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %magic = getelementptr inbounds %struct.re_guts, %struct.re_guts* %79, i32 0, i32 0
  store i32 53829, i32* %magic, align 4
  %80 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %nsub43 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %80, i32 0, i32 17
  %81 = load i64, i64* %nsub43, align 8
  %82 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %re_nsub = getelementptr inbounds %struct.regex_t, %struct.regex_t* %82, i32 0, i32 1
  store i64 %81, i64* %re_nsub, align 8
  %83 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %84 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %re_g = getelementptr inbounds %struct.regex_t, %struct.regex_t* %84, i32 0, i32 3
  store %struct.re_guts* %83, %struct.re_guts** %re_g, align 8
  %85 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %re_magic = getelementptr inbounds %struct.regex_t, %struct.regex_t* %85, i32 0, i32 0
  store i32 62053, i32* %re_magic, align 4
  %86 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %iflags44 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %86, i32 0, i32 10
  %87 = load i32, i32* %iflags44, align 4
  %and45 = and i32 %87, 4
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.39
  %88 = load %struct.parse*, %struct.parse** %p, align 8
  %call48 = call i32 @seterr(%struct.parse* %88, i32 15)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.39
  %89 = load %struct.parse*, %struct.parse** %p, align 8
  %error50 = getelementptr inbounds %struct.parse, %struct.parse* %89, i32 0, i32 2
  %90 = load i32, i32* %error50, align 4
  %cmp51 = icmp ne i32 %90, 0
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.49
  %91 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  call void @cli_regfree(%struct.regex_t* %91)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.49
  %92 = load %struct.parse*, %struct.parse** %p, align 8
  %error54 = getelementptr inbounds %struct.parse, %struct.parse* %92, i32 0, i32 2
  %93 = load i32, i32* %error54, align 4
  store i32 %93, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.19, %if.then.13, %if.then.7, %if.then
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i8* @cli_malloc(i64) #2

declare i8* @cli_calloc(i64, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @doemit(%struct.parse* %p, i64 %op, i64 %opnd) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %op.addr = alloca i64, align 8
  %opnd.addr = alloca i64, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i64 %op, i64* %op.addr, align 8
  store i64 %opnd, i64* %opnd.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %error = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 2
  %1 = load i32, i32* %error, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 5
  %3 = load i64, i64* %slen, align 8
  %4 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %ssize = getelementptr inbounds %struct.parse, %struct.parse* %4, i32 0, i32 4
  %5 = load i64, i64* %ssize, align 8
  %cmp1 = icmp sge i64 %3, %5
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %7 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %ssize3 = getelementptr inbounds %struct.parse, %struct.parse* %7, i32 0, i32 4
  %8 = load i64, i64* %ssize3, align 8
  %add = add nsw i64 %8, 1
  %div = sdiv i64 %add, 2
  %mul = mul nsw i64 %div, 3
  call void @enlarge(%struct.parse* %6, i64 %mul)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %9 = load i64, i64* %op.addr, align 8
  %10 = load i64, i64* %opnd.addr, align 8
  %or = or i64 %9, %10
  %11 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen5 = getelementptr inbounds %struct.parse, %struct.parse* %11, i32 0, i32 5
  %12 = load i64, i64* %slen5, align 8
  %inc = add nsw i64 %12, 1
  store i64 %inc, i64* %slen5, align 8
  %13 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %strip = getelementptr inbounds %struct.parse, %struct.parse* %13, i32 0, i32 3
  %14 = load i64*, i64** %strip, align 8
  %arrayidx = getelementptr inbounds i64, i64* %14, i64 %12
  store i64 %or, i64* %arrayidx, align 8
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @p_ere(%struct.parse* %p, i32 %stop) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %stop.addr = alloca i32, align 4
  %c = alloca i8, align 1
  %prevback = alloca i64, align 8
  %prevfwd = alloca i64, align 8
  %conc = alloca i64, align 8
  %first = alloca i32, align 4
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i32 %stop, i32* %stop.addr, align 4
  store i32 1, i32* %first, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.23, %entry
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 5
  %1 = load i64, i64* %slen, align 8
  store i64 %1, i64* %conc, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 0
  %3 = load i8*, i8** %next, align 8
  %4 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %4, i32 0, i32 1
  %5 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %3, %5
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next1 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 0
  %7 = load i8*, i8** %next1, align 8
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %c, align 1
  %conv = sext i8 %8 to i32
  %cmp2 = icmp ne i32 %conv, 124
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i8, i8* %c, align 1
  %conv4 = sext i8 %9 to i32
  %10 = load i32, i32* %stop.addr, align 4
  %cmp5 = icmp ne i32 %conv4, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @p_ere_exp(%struct.parse* %12)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen7 = getelementptr inbounds %struct.parse, %struct.parse* %13, i32 0, i32 5
  %14 = load i64, i64* %slen7, align 8
  %15 = load i64, i64* %conc, align 8
  %cmp8 = icmp ne i64 %14, %15
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end
  %16 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call = call i32 @seterr(%struct.parse* %16, i32 14)
  %tobool = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end
  %17 = phi i1 [ true, %while.end ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %17 to i32
  %18 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next10 = getelementptr inbounds %struct.parse, %struct.parse* %18, i32 0, i32 0
  %19 = load i8*, i8** %next10, align 8
  %20 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end11 = getelementptr inbounds %struct.parse, %struct.parse* %20, i32 0, i32 1
  %21 = load i8*, i8** %end11, align 8
  %cmp12 = icmp ult i8* %19, %21
  br i1 %cmp12, label %land.lhs.true.14, label %cond.false

land.lhs.true.14:                                 ; preds = %lor.end
  %22 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next15 = getelementptr inbounds %struct.parse, %struct.parse* %22, i32 0, i32 0
  %23 = load i8*, i8** %next15, align 8
  %24 = load i8, i8* %23, align 1
  %conv16 = sext i8 %24 to i32
  %cmp17 = icmp eq i32 %conv16, 124
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.14
  %25 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next19 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 0
  %26 = load i8*, i8** %next19, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %next19, align 8
  br i1 true, label %if.end, label %if.then

cond.false:                                       ; preds = %land.lhs.true.14, %lor.end
  br i1 false, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  br label %for.end

if.end:                                           ; preds = %cond.false, %cond.true
  %27 = load i32, i32* %first, align 4
  %tobool20 = icmp ne i32 %27, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end
  %28 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %29 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen22 = getelementptr inbounds %struct.parse, %struct.parse* %29, i32 0, i32 5
  %30 = load i64, i64* %slen22, align 8
  %31 = load i64, i64* %conc, align 8
  %sub = sub nsw i64 %30, %31
  %add = add nsw i64 %sub, 1
  %32 = load i64, i64* %conc, align 8
  call void @doinsert(%struct.parse* %28, i64 2013265920, i64 %add, i64 %32)
  %33 = load i64, i64* %conc, align 8
  store i64 %33, i64* %prevfwd, align 8
  %34 = load i64, i64* %conc, align 8
  store i64 %34, i64* %prevback, align 8
  store i32 0, i32* %first, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end
  %35 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %36 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen24 = getelementptr inbounds %struct.parse, %struct.parse* %36, i32 0, i32 5
  %37 = load i64, i64* %slen24, align 8
  %38 = load i64, i64* %prevback, align 8
  %sub25 = sub nsw i64 %37, %38
  call void @doemit(%struct.parse* %35, i64 2147483648, i64 %sub25)
  %39 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen26 = getelementptr inbounds %struct.parse, %struct.parse* %39, i32 0, i32 5
  %40 = load i64, i64* %slen26, align 8
  %sub27 = sub nsw i64 %40, 1
  store i64 %sub27, i64* %prevback, align 8
  %41 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %42 = load i64, i64* %prevfwd, align 8
  %43 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen28 = getelementptr inbounds %struct.parse, %struct.parse* %43, i32 0, i32 5
  %44 = load i64, i64* %slen28, align 8
  %45 = load i64, i64* %prevfwd, align 8
  %sub29 = sub nsw i64 %44, %45
  call void @dofwd(%struct.parse* %41, i64 %42, i64 %sub29)
  %46 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen30 = getelementptr inbounds %struct.parse, %struct.parse* %46, i32 0, i32 5
  %47 = load i64, i64* %slen30, align 8
  store i64 %47, i64* %prevfwd, align 8
  %48 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @doemit(%struct.parse* %48, i64 2281701376, i64 0)
  br label %for.cond

for.end:                                          ; preds = %if.then
  %49 = load i32, i32* %first, align 4
  %tobool31 = icmp ne i32 %49, 0
  br i1 %tobool31, label %if.end.37, label %if.then.32

if.then.32:                                       ; preds = %for.end
  %50 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %51 = load i64, i64* %prevfwd, align 8
  %52 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen33 = getelementptr inbounds %struct.parse, %struct.parse* %52, i32 0, i32 5
  %53 = load i64, i64* %slen33, align 8
  %54 = load i64, i64* %prevfwd, align 8
  %sub34 = sub nsw i64 %53, %54
  call void @dofwd(%struct.parse* %50, i64 %51, i64 %sub34)
  %55 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %56 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen35 = getelementptr inbounds %struct.parse, %struct.parse* %56, i32 0, i32 5
  %57 = load i64, i64* %slen35, align 8
  %58 = load i64, i64* %prevback, align 8
  %sub36 = sub nsw i64 %57, %58
  call void @doemit(%struct.parse* %55, i64 2415919104, i64 %sub36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @p_str(%struct.parse* %p) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 0
  %1 = load i8*, i8** %next, align 8
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 1
  %3 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %1, %3
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call = call i32 @seterr(%struct.parse* %4, i32 14)
  %tobool = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %lor.end
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next1 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 0
  %7 = load i8*, i8** %next1, align 8
  %8 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end2 = getelementptr inbounds %struct.parse, %struct.parse* %8, i32 0, i32 1
  %9 = load i8*, i8** %end2, align 8
  %cmp3 = icmp ult i8* %7, %9
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %11 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next4 = getelementptr inbounds %struct.parse, %struct.parse* %11, i32 0, i32 0
  %12 = load i8*, i8** %next4, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %next4, align 8
  %13 = load i8, i8* %12, align 1
  %conv = sext i8 %13 to i32
  call void @ordinary(%struct.parse* %10, i32 %conv)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @p_bre(%struct.parse* %p, i32 %end1, i32 %end2) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %end1.addr = alloca i32, align 4
  %end2.addr = alloca i32, align 4
  %start = alloca i64, align 8
  %first = alloca i32, align 4
  %wasdollar = alloca i32, align 4
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i32 %end1, i32* %end1.addr, align 4
  store i32 %end2, i32* %end2.addr, align 4
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 5
  %1 = load i64, i64* %slen, align 8
  store i64 %1, i64* %start, align 8
  store i32 1, i32* %first, align 4
  store i32 0, i32* %wasdollar, align 4
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 0
  %3 = load i8*, i8** %next, align 8
  %4 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %4, i32 0, i32 1
  %5 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %3, %5
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next1 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 0
  %7 = load i8*, i8** %next1, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp2 = icmp eq i32 %conv, 94
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %9 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next4 = getelementptr inbounds %struct.parse, %struct.parse* %9, i32 0, i32 0
  %10 = load i8*, i8** %next4, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %next4, align 8
  br i1 true, label %if.then, label %if.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br i1 false, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  %11 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @doemit(%struct.parse* %11, i64 402653184, i64 0)
  %12 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 7
  %13 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %iflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %13, i32 0, i32 10
  %14 = load i32, i32* %iflags, align 4
  %or = or i32 %14, 1
  store i32 %or, i32* %iflags, align 4
  %15 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g5 = getelementptr inbounds %struct.parse, %struct.parse* %15, i32 0, i32 7
  %16 = load %struct.re_guts*, %struct.re_guts** %g5, align 8
  %nbol = getelementptr inbounds %struct.re_guts, %struct.re_guts* %16, i32 0, i32 11
  %17 = load i32, i32* %nbol, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %nbol, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %18 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next6 = getelementptr inbounds %struct.parse, %struct.parse* %18, i32 0, i32 0
  %19 = load i8*, i8** %next6, align 8
  %20 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end7 = getelementptr inbounds %struct.parse, %struct.parse* %20, i32 0, i32 1
  %21 = load i8*, i8** %end7, align 8
  %cmp8 = icmp ult i8* %19, %21
  br i1 %cmp8, label %land.rhs, label %land.end.30

land.rhs:                                         ; preds = %while.cond
  %22 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next10 = getelementptr inbounds %struct.parse, %struct.parse* %22, i32 0, i32 0
  %23 = load i8*, i8** %next10, align 8
  %24 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end11 = getelementptr inbounds %struct.parse, %struct.parse* %24, i32 0, i32 1
  %25 = load i8*, i8** %end11, align 8
  %cmp12 = icmp ult i8* %23, %25
  br i1 %cmp12, label %land.lhs.true.14, label %land.end

land.lhs.true.14:                                 ; preds = %land.rhs
  %26 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next15 = getelementptr inbounds %struct.parse, %struct.parse* %26, i32 0, i32 0
  %27 = load i8*, i8** %next15, align 8
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end16 = getelementptr inbounds %struct.parse, %struct.parse* %28, i32 0, i32 1
  %29 = load i8*, i8** %end16, align 8
  %cmp17 = icmp ult i8* %add.ptr, %29
  br i1 %cmp17, label %land.lhs.true.19, label %land.end

land.lhs.true.19:                                 ; preds = %land.lhs.true.14
  %30 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next20 = getelementptr inbounds %struct.parse, %struct.parse* %30, i32 0, i32 0
  %31 = load i8*, i8** %next20, align 8
  %32 = load i8, i8* %31, align 1
  %conv21 = sext i8 %32 to i32
  %33 = load i32, i32* %end1.addr, align 4
  %cmp22 = icmp eq i32 %conv21, %33
  br i1 %cmp22, label %land.rhs.24, label %land.end

land.rhs.24:                                      ; preds = %land.lhs.true.19
  %34 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next25 = getelementptr inbounds %struct.parse, %struct.parse* %34, i32 0, i32 0
  %35 = load i8*, i8** %next25, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %add.ptr26, align 1
  %conv27 = sext i8 %36 to i32
  %37 = load i32, i32* %end2.addr, align 4
  %cmp28 = icmp eq i32 %conv27, %37
  br label %land.end

land.end:                                         ; preds = %land.rhs.24, %land.lhs.true.19, %land.lhs.true.14, %land.rhs
  %38 = phi i1 [ false, %land.lhs.true.19 ], [ false, %land.lhs.true.14 ], [ false, %land.rhs ], [ %cmp28, %land.rhs.24 ]
  %lnot = xor i1 %38, true
  br label %land.end.30

land.end.30:                                      ; preds = %land.end, %while.cond
  %39 = phi i1 [ false, %while.cond ], [ %lnot, %land.end ]
  br i1 %39, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.30
  %40 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %41 = load i32, i32* %first, align 4
  %call = call i32 @p_simp_re(%struct.parse* %40, i32 %41)
  store i32 %call, i32* %wasdollar, align 4
  store i32 0, i32* %first, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end.30
  %42 = load i32, i32* %wasdollar, align 4
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %while.end
  %43 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen32 = getelementptr inbounds %struct.parse, %struct.parse* %43, i32 0, i32 5
  %44 = load i64, i64* %slen32, align 8
  %sub = sub nsw i64 %44, 1
  store i64 %sub, i64* %slen32, align 8
  %45 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @doemit(%struct.parse* %45, i64 536870912, i64 0)
  %46 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g33 = getelementptr inbounds %struct.parse, %struct.parse* %46, i32 0, i32 7
  %47 = load %struct.re_guts*, %struct.re_guts** %g33, align 8
  %iflags34 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %47, i32 0, i32 10
  %48 = load i32, i32* %iflags34, align 4
  %or35 = or i32 %48, 2
  store i32 %or35, i32* %iflags34, align 4
  %49 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g36 = getelementptr inbounds %struct.parse, %struct.parse* %49, i32 0, i32 7
  %50 = load %struct.re_guts*, %struct.re_guts** %g36, align 8
  %neol = getelementptr inbounds %struct.re_guts, %struct.re_guts* %50, i32 0, i32 12
  %51 = load i32, i32* %neol, align 4
  %inc37 = add nsw i32 %51, 1
  store i32 %inc37, i32* %neol, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.31, %while.end
  %52 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen39 = getelementptr inbounds %struct.parse, %struct.parse* %52, i32 0, i32 5
  %53 = load i64, i64* %slen39, align 8
  %54 = load i64, i64* %start, align 8
  %cmp40 = icmp ne i64 %53, %54
  br i1 %cmp40, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.38
  %55 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call42 = call i32 @seterr(%struct.parse* %55, i32 14)
  %tobool43 = icmp ne i32 %call42, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.38
  %56 = phi i1 [ true, %if.end.38 ], [ %tobool43, %lor.rhs ]
  %lor.ext = zext i1 %56 to i32
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @categorize(%struct.parse* %p, %struct.re_guts* %g) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %g.addr = alloca %struct.re_guts*, align 8
  %cats = alloca i8*, align 8
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  %cat = alloca i8, align 1
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store %struct.re_guts* %g, %struct.re_guts** %g.addr, align 8
  %0 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %categories = getelementptr inbounds %struct.re_guts, %struct.re_guts* %0, i32 0, i32 14
  %1 = load i8*, i8** %categories, align 8
  store i8* %1, i8** %cats, align 8
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %error = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 2
  %3 = load i32, i32* %error, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.28

if.end:                                           ; preds = %entry
  store i32 -128, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %if.end
  %4 = load i32, i32* %c, align 4
  %cmp1 = icmp sle i32 %4, 127
  br i1 %cmp1, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %c, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %cats, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %9 = load i32, i32* %c, align 4
  %call = call i32 @isinsets(%struct.re_guts* %8, i32 %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.4, label %if.end.25

if.then.4:                                        ; preds = %land.lhs.true
  %10 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %ncategories = getelementptr inbounds %struct.re_guts, %struct.re_guts* %10, i32 0, i32 13
  %11 = load i32, i32* %ncategories, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %ncategories, align 4
  %conv5 = trunc i32 %11 to i8
  store i8 %conv5, i8* %cat, align 1
  %12 = load i8, i8* %cat, align 1
  %13 = load i32, i32* %c, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load i8*, i8** %cats, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %14, i64 %idxprom6
  store i8 %12, i8* %arrayidx7, align 1
  %15 = load i32, i32* %c, align 4
  %add = add nsw i32 %15, 1
  store i32 %add, i32* %c2, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.then.4
  %16 = load i32, i32* %c2, align 4
  %cmp9 = icmp sle i32 %16, 127
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %17 = load i32, i32* %c2, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load i8*, i8** %cats, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %18, i64 %idxprom12
  %19 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %19 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.23

land.lhs.true.17:                                 ; preds = %for.body.11
  %20 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %21 = load i32, i32* %c, align 4
  %22 = load i32, i32* %c2, align 4
  %call18 = call i32 @samesets(%struct.re_guts* %20, i32 %21, i32 %22)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %land.lhs.true.17
  %23 = load i8, i8* %cat, align 1
  %24 = load i32, i32* %c2, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load i8*, i8** %cats, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %25, i64 %idxprom21
  store i8 %23, i8* %arrayidx22, align 1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %land.lhs.true.17, %for.body.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %26 = load i32, i32* %c2, align 4
  %inc24 = add nsw i32 %26, 1
  store i32 %inc24, i32* %c2, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %if.end.25

if.end.25:                                        ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %27 = load i32, i32* %c, align 4
  %inc27 = add nsw i32 %27, 1
  store i32 %inc27, i32* %c, align 4
  br label %for.cond

for.end.28:                                       ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stripsnug(%struct.parse* %p, %struct.re_guts* %g) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %g.addr = alloca %struct.re_guts*, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store %struct.re_guts* %g, %struct.re_guts** %g.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 5
  %1 = load i64, i64* %slen, align 8
  %2 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %nstates = getelementptr inbounds %struct.re_guts, %struct.re_guts* %2, i32 0, i32 7
  store i64 %1, i64* %nstates, align 8
  %3 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %strip = getelementptr inbounds %struct.parse, %struct.parse* %3, i32 0, i32 3
  %4 = load i64*, i64** %strip, align 8
  %5 = bitcast i64* %4 to i8*
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen1 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 5
  %7 = load i64, i64* %slen1, align 8
  %mul = mul i64 %7, 8
  %call = call i8* @cli_realloc(i8* %5, i64 %mul)
  %8 = bitcast i8* %call to i64*
  %9 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %strip2 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %9, i32 0, i32 1
  store i64* %8, i64** %strip2, align 8
  %10 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %strip3 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %10, i32 0, i32 1
  %11 = load i64*, i64** %strip3, align 8
  %cmp = icmp eq i64* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call4 = call i32 @seterr(%struct.parse* %12, i32 12)
  %13 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %strip5 = getelementptr inbounds %struct.parse, %struct.parse* %13, i32 0, i32 3
  %14 = load i64*, i64** %strip5, align 8
  %15 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %strip6 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %15, i32 0, i32 1
  store i64* %14, i64** %strip6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @findmust(%struct.parse* %p, %struct.re_guts* %g) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %g.addr = alloca %struct.re_guts*, align 8
  %scan = alloca i64*, align 8
  %start = alloca i64*, align 8
  %newstart = alloca i64*, align 8
  %newlen = alloca i64, align 8
  %s = alloca i64, align 8
  %cp = alloca i8*, align 8
  %i = alloca i64, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store %struct.re_guts* %g, %struct.re_guts** %g.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %error = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 2
  %1 = load i32, i32* %error, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %newlen, align 8
  %2 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %strip = getelementptr inbounds %struct.re_guts, %struct.re_guts* %2, i32 0, i32 1
  %3 = load i64*, i64** %strip, align 8
  %add.ptr = getelementptr inbounds i64, i64* %3, i64 1
  store i64* %add.ptr, i64** %scan, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond.30, %if.end
  %4 = load i64*, i64** %scan, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %4, i32 1
  store i64* %incdec.ptr, i64** %scan, align 8
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %s, align 8
  %6 = load i64, i64* %s, align 8
  %and = and i64 %6, 4160749568
  switch i64 %and, label %sw.default [
    i64 268435456, label %sw.bb
    i64 1207959552, label %sw.bb.5
    i64 1744830464, label %sw.bb.5
    i64 1879048192, label %sw.bb.5
    i64 1476395008, label %sw.bb.6
    i64 2013265920, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %do.body
  %7 = load i64, i64* %newlen, align 8
  %cmp1 = icmp eq i64 %7, 0
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %sw.bb
  %8 = load i64*, i64** %scan, align 8
  %add.ptr3 = getelementptr inbounds i64, i64* %8, i64 -1
  store i64* %add.ptr3, i64** %newstart, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %sw.bb
  %9 = load i64, i64* %newlen, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %newlen, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %do.body, %do.body, %do.body
  br label %sw.epilog

sw.bb.6:                                          ; preds = %do.body, %do.body
  %10 = load i64*, i64** %scan, align 8
  %incdec.ptr7 = getelementptr inbounds i64, i64* %10, i32 -1
  store i64* %incdec.ptr7, i64** %scan, align 8
  br label %do.body.8

do.body.8:                                        ; preds = %land.end, %sw.bb.6
  %11 = load i64, i64* %s, align 8
  %and9 = and i64 %11, 134217727
  %12 = load i64*, i64** %scan, align 8
  %add.ptr10 = getelementptr inbounds i64, i64* %12, i64 %and9
  store i64* %add.ptr10, i64** %scan, align 8
  %13 = load i64*, i64** %scan, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %s, align 8
  %15 = load i64, i64* %s, align 8
  %and11 = and i64 %15, 4160749568
  %cmp12 = icmp ne i64 %and11, 1610612736
  br i1 %cmp12, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %do.body.8
  %16 = load i64, i64* %s, align 8
  %and13 = and i64 %16, 4160749568
  %cmp14 = icmp ne i64 %and13, 2415919104
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.19

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %17 = load i64, i64* %s, align 8
  %and16 = and i64 %17, 4160749568
  %cmp17 = icmp ne i64 %and16, 2281701376
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.15
  %18 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %iflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %18, i32 0, i32 10
  %19 = load i32, i32* %iflags, align 4
  %or = or i32 %19, 4
  store i32 %or, i32* %iflags, align 4
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.15, %land.lhs.true, %do.body.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  %20 = load i64, i64* %s, align 8
  %and20 = and i64 %20, 4160749568
  %cmp21 = icmp ne i64 %and20, 1610612736
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %21 = load i64, i64* %s, align 8
  %and22 = and i64 %21, 4160749568
  %cmp23 = icmp ne i64 %and22, 2415919104
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %22 = phi i1 [ false, %do.cond ], [ %cmp23, %land.rhs ]
  br i1 %22, label %do.body.8, label %do.end

do.end:                                           ; preds = %land.end
  br label %sw.default

sw.default:                                       ; preds = %do.body, %do.end
  %23 = load i64, i64* %newlen, align 8
  %24 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %mlen = getelementptr inbounds %struct.re_guts, %struct.re_guts* %24, i32 0, i32 16
  %25 = load i32, i32* %mlen, align 4
  %conv = sext i32 %25 to i64
  %cmp24 = icmp sgt i64 %23, %conv
  br i1 %cmp24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %sw.default
  %26 = load i64*, i64** %newstart, align 8
  store i64* %26, i64** %start, align 8
  %27 = load i64, i64* %newlen, align 8
  %conv27 = trunc i64 %27 to i32
  %28 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %mlen28 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %28, i32 0, i32 16
  store i32 %conv27, i32* %mlen28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %sw.default
  store i64 0, i64* %newlen, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.29, %sw.bb.5, %if.end.4
  br label %do.cond.30

do.cond.30:                                       ; preds = %sw.epilog
  %29 = load i64, i64* %s, align 8
  %and31 = and i64 %29, 4160749568
  %cmp32 = icmp ne i64 %and31, 134217728
  br i1 %cmp32, label %do.body, label %do.end.34

do.end.34:                                        ; preds = %do.cond.30
  %30 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %mlen35 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %30, i32 0, i32 16
  %31 = load i32, i32* %mlen35, align 4
  %cmp36 = icmp eq i32 %31, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %do.end.34
  br label %return

if.end.39:                                        ; preds = %do.end.34
  %32 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %mlen40 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %32, i32 0, i32 16
  %33 = load i32, i32* %mlen40, align 4
  %conv41 = sext i32 %33 to i64
  %add = add i64 %conv41, 1
  %call = call i8* @cli_malloc(i64 %add)
  %34 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %must = getelementptr inbounds %struct.re_guts, %struct.re_guts* %34, i32 0, i32 15
  store i8* %call, i8** %must, align 8
  %35 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %must42 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %35, i32 0, i32 15
  %36 = load i8*, i8** %must42, align 8
  %cmp43 = icmp eq i8* %36, null
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.39
  %37 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %mlen46 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %37, i32 0, i32 16
  store i32 0, i32* %mlen46, align 4
  br label %return

if.end.47:                                        ; preds = %if.end.39
  %38 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %must48 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %38, i32 0, i32 15
  %39 = load i8*, i8** %must48, align 8
  store i8* %39, i8** %cp, align 8
  %40 = load i64*, i64** %start, align 8
  store i64* %40, i64** %scan, align 8
  %41 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %mlen49 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %41, i32 0, i32 16
  %42 = load i32, i32* %mlen49, align 4
  %conv50 = sext i32 %42 to i64
  store i64 %conv50, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.47
  %43 = load i64, i64* %i, align 8
  %cmp51 = icmp sgt i64 %43, 0
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %44 = load i64*, i64** %scan, align 8
  %incdec.ptr53 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %incdec.ptr53, i64** %scan, align 8
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %s, align 8
  %and54 = and i64 %45, 4160749568
  %cmp55 = icmp ne i64 %and54, 268435456
  br i1 %cmp55, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load i64, i64* %s, align 8
  %and57 = and i64 %46, 134217727
  %conv58 = trunc i64 %and57 to i8
  %47 = load i8*, i8** %cp, align 8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr59, i8** %cp, align 8
  store i8 %conv58, i8* %47, align 1
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %48 = load i64, i64* %i, align 8
  %dec = add nsw i64 %48, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load i8*, i8** %cp, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr60, i8** %cp, align 8
  store i8 0, i8* %49, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then.45, %if.then.38, %if.then.18, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @pluscount(%struct.parse* %p, %struct.re_guts* %g) #0 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca %struct.parse*, align 8
  %g.addr = alloca %struct.re_guts*, align 8
  %scan = alloca i64*, align 8
  %s = alloca i64, align 8
  %plusnest = alloca i64, align 8
  %maxnest = alloca i64, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store %struct.re_guts* %g, %struct.re_guts** %g.addr, align 8
  store i64 0, i64* %plusnest, align 8
  store i64 0, i64* %maxnest, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %error = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 2
  %1 = load i32, i32* %error, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %strip = getelementptr inbounds %struct.re_guts, %struct.re_guts* %2, i32 0, i32 1
  %3 = load i64*, i64** %strip, align 8
  %add.ptr = getelementptr inbounds i64, i64* %3, i64 1
  store i64* %add.ptr, i64** %scan, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %4 = load i64*, i64** %scan, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %4, i32 1
  store i64* %incdec.ptr, i64** %scan, align 8
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %s, align 8
  %6 = load i64, i64* %s, align 8
  %and = and i64 %6, 4160749568
  switch i64 %and, label %sw.epilog [
    i64 1207959552, label %sw.bb
    i64 1342177280, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %do.body
  %7 = load i64, i64* %plusnest, align 8
  %inc = add nsw i64 %7, 1
  store i64 %inc, i64* %plusnest, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %do.body
  %8 = load i64, i64* %plusnest, align 8
  %9 = load i64, i64* %maxnest, align 8
  %cmp2 = icmp sgt i64 %8, %9
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %sw.bb.1
  %10 = load i64, i64* %plusnest, align 8
  store i64 %10, i64* %maxnest, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %sw.bb.1
  %11 = load i64, i64* %plusnest, align 8
  %dec = add nsw i64 %11, -1
  store i64 %dec, i64* %plusnest, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %if.end.4, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %12 = load i64, i64* %s, align 8
  %and5 = and i64 %12, 4160749568
  %cmp6 = icmp ne i64 %and5, 134217728
  br i1 %cmp6, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %13 = load i64, i64* %plusnest, align 8
  %cmp7 = icmp ne i64 %13, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end
  %14 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %iflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %14, i32 0, i32 10
  %15 = load i32, i32* %iflags, align 4
  %or = or i32 %15, 4
  store i32 %or, i32* %iflags, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.end
  %16 = load i64, i64* %maxnest, align 8
  store i64 %16, i64* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %17 = load i64, i64* %retval
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @seterr(%struct.parse* %p, i32 %e) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %e.addr = alloca i32, align 4
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i32 %e, i32* %e.addr, align 4
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %error = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 2
  %1 = load i32, i32* %error, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %e.addr, align 4
  %3 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %error1 = getelementptr inbounds %struct.parse, %struct.parse* %3, i32 0, i32 2
  store i32 %2, i32* %error1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @nuls, i32 0, i32 0), i8** %next, align 8
  %5 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @nuls, i32 0, i32 0), i8** %end, align 8
  ret i32 0
}

declare void @cli_regfree(%struct.regex_t*) #2

; Function Attrs: nounwind uwtable
define internal void @p_ere_exp(%struct.parse* %p) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %c = alloca i8, align 1
  %pos = alloca i64, align 8
  %count = alloca i32, align 4
  %count2 = alloca i32, align 4
  %subno = alloca i64, align 8
  %wascaret = alloca i32, align 4
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i32 0, i32* %wascaret, align 4
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 0
  %1 = load i8*, i8** %next, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %next, align 8
  %2 = load i8, i8* %1, align 1
  store i8 %2, i8* %c, align 1
  %3 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen = getelementptr inbounds %struct.parse, %struct.parse* %3, i32 0, i32 5
  %4 = load i64, i64* %slen, align 8
  store i64 %4, i64* %pos, align 8
  %5 = load i8, i8* %c, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 40, label %sw.bb
    i32 41, label %sw.bb.39
    i32 94, label %sw.bb.41
    i32 36, label %sw.bb.45
    i32 124, label %sw.bb.51
    i32 42, label %sw.bb.53
    i32 43, label %sw.bb.53
    i32 63, label %sw.bb.53
    i32 46, label %sw.bb.55
    i32 91, label %sw.bb.60
    i32 92, label %sw.bb.61
    i32 123, label %sw.bb.74
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next1 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 0
  %7 = load i8*, i8** %next1, align 8
  %8 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %8, i32 0, i32 1
  %9 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %7, %9
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb
  %10 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call = call i32 @seterr(%struct.parse* %10, i32 8)
  %tobool = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb
  %11 = phi i1 [ true, %sw.bb ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %11 to i32
  %12 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 7
  %13 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %nsub = getelementptr inbounds %struct.re_guts, %struct.re_guts* %13, i32 0, i32 17
  %14 = load i64, i64* %nsub, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %nsub, align 8
  %15 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g3 = getelementptr inbounds %struct.parse, %struct.parse* %15, i32 0, i32 7
  %16 = load %struct.re_guts*, %struct.re_guts** %g3, align 8
  %nsub4 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %16, i32 0, i32 17
  %17 = load i64, i64* %nsub4, align 8
  store i64 %17, i64* %subno, align 8
  %18 = load i64, i64* %subno, align 8
  %cmp5 = icmp slt i64 %18, 10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %19 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen7 = getelementptr inbounds %struct.parse, %struct.parse* %19, i32 0, i32 5
  %20 = load i64, i64* %slen7, align 8
  %21 = load i64, i64* %subno, align 8
  %22 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %pbegin = getelementptr inbounds %struct.parse, %struct.parse* %22, i32 0, i32 8
  %arrayidx = getelementptr inbounds [10 x i64], [10 x i64]* %pbegin, i32 0, i64 %21
  store i64 %20, i64* %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  %23 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %24 = load i64, i64* %subno, align 8
  call void @doemit(%struct.parse* %23, i64 1744830464, i64 %24)
  %25 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next8 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 0
  %26 = load i8*, i8** %next8, align 8
  %27 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end9 = getelementptr inbounds %struct.parse, %struct.parse* %27, i32 0, i32 1
  %28 = load i8*, i8** %end9, align 8
  %cmp10 = icmp ult i8* %26, %28
  br i1 %cmp10, label %land.lhs.true, label %if.then.16

land.lhs.true:                                    ; preds = %if.end
  %29 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next12 = getelementptr inbounds %struct.parse, %struct.parse* %29, i32 0, i32 0
  %30 = load i8*, i8** %next12, align 8
  %31 = load i8, i8* %30, align 1
  %conv13 = sext i8 %31 to i32
  %cmp14 = icmp eq i32 %conv13, 41
  br i1 %cmp14, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true, %if.end
  %32 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @p_ere(%struct.parse* %32, i32 41)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %land.lhs.true
  %33 = load i64, i64* %subno, align 8
  %cmp18 = icmp slt i64 %33, 10
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.17
  %34 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen21 = getelementptr inbounds %struct.parse, %struct.parse* %34, i32 0, i32 5
  %35 = load i64, i64* %slen21, align 8
  %36 = load i64, i64* %subno, align 8
  %37 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %pend = getelementptr inbounds %struct.parse, %struct.parse* %37, i32 0, i32 9
  %arrayidx22 = getelementptr inbounds [10 x i64], [10 x i64]* %pend, i32 0, i64 %36
  store i64 %35, i64* %arrayidx22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.17
  %38 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %39 = load i64, i64* %subno, align 8
  call void @doemit(%struct.parse* %38, i64 1879048192, i64 %39)
  %40 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next24 = getelementptr inbounds %struct.parse, %struct.parse* %40, i32 0, i32 0
  %41 = load i8*, i8** %next24, align 8
  %42 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end25 = getelementptr inbounds %struct.parse, %struct.parse* %42, i32 0, i32 1
  %43 = load i8*, i8** %end25, align 8
  %cmp26 = icmp ult i8* %41, %43
  br i1 %cmp26, label %land.lhs.true.28, label %lor.rhs.34

land.lhs.true.28:                                 ; preds = %if.end.23
  %44 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next29 = getelementptr inbounds %struct.parse, %struct.parse* %44, i32 0, i32 0
  %45 = load i8*, i8** %next29, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr30, i8** %next29, align 8
  %46 = load i8, i8* %45, align 1
  %conv31 = sext i8 %46 to i32
  %cmp32 = icmp eq i32 %conv31, 41
  br i1 %cmp32, label %lor.end.37, label %lor.rhs.34

lor.rhs.34:                                       ; preds = %land.lhs.true.28, %if.end.23
  %47 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call35 = call i32 @seterr(%struct.parse* %47, i32 8)
  %tobool36 = icmp ne i32 %call35, 0
  br label %lor.end.37

lor.end.37:                                       ; preds = %lor.rhs.34, %land.lhs.true.28
  %48 = phi i1 [ true, %land.lhs.true.28 ], [ %tobool36, %lor.rhs.34 ]
  %lor.ext38 = zext i1 %48 to i32
  br label %sw.epilog

sw.bb.39:                                         ; preds = %entry
  %49 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call40 = call i32 @seterr(%struct.parse* %49, i32 8)
  br label %sw.epilog

sw.bb.41:                                         ; preds = %entry
  %50 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @doemit(%struct.parse* %50, i64 402653184, i64 0)
  %51 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g42 = getelementptr inbounds %struct.parse, %struct.parse* %51, i32 0, i32 7
  %52 = load %struct.re_guts*, %struct.re_guts** %g42, align 8
  %iflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %52, i32 0, i32 10
  %53 = load i32, i32* %iflags, align 4
  %or = or i32 %53, 1
  store i32 %or, i32* %iflags, align 4
  %54 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g43 = getelementptr inbounds %struct.parse, %struct.parse* %54, i32 0, i32 7
  %55 = load %struct.re_guts*, %struct.re_guts** %g43, align 8
  %nbol = getelementptr inbounds %struct.re_guts, %struct.re_guts* %55, i32 0, i32 11
  %56 = load i32, i32* %nbol, align 4
  %inc44 = add nsw i32 %56, 1
  store i32 %inc44, i32* %nbol, align 4
  store i32 1, i32* %wascaret, align 4
  br label %sw.epilog

sw.bb.45:                                         ; preds = %entry
  %57 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @doemit(%struct.parse* %57, i64 536870912, i64 0)
  %58 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g46 = getelementptr inbounds %struct.parse, %struct.parse* %58, i32 0, i32 7
  %59 = load %struct.re_guts*, %struct.re_guts** %g46, align 8
  %iflags47 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %59, i32 0, i32 10
  %60 = load i32, i32* %iflags47, align 4
  %or48 = or i32 %60, 2
  store i32 %or48, i32* %iflags47, align 4
  %61 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g49 = getelementptr inbounds %struct.parse, %struct.parse* %61, i32 0, i32 7
  %62 = load %struct.re_guts*, %struct.re_guts** %g49, align 8
  %neol = getelementptr inbounds %struct.re_guts, %struct.re_guts* %62, i32 0, i32 12
  %63 = load i32, i32* %neol, align 4
  %inc50 = add nsw i32 %63, 1
  store i32 %inc50, i32* %neol, align 4
  br label %sw.epilog

sw.bb.51:                                         ; preds = %entry
  %64 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call52 = call i32 @seterr(%struct.parse* %64, i32 14)
  br label %sw.epilog

sw.bb.53:                                         ; preds = %entry, %entry, %entry
  %65 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call54 = call i32 @seterr(%struct.parse* %65, i32 13)
  br label %sw.epilog

sw.bb.55:                                         ; preds = %entry
  %66 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g56 = getelementptr inbounds %struct.parse, %struct.parse* %66, i32 0, i32 7
  %67 = load %struct.re_guts*, %struct.re_guts** %g56, align 8
  %cflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %67, i32 0, i32 6
  %68 = load i32, i32* %cflags, align 4
  %and = and i32 %68, 8
  %tobool57 = icmp ne i32 %and, 0
  br i1 %tobool57, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %sw.bb.55
  %69 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @nonnewline(%struct.parse* %69)
  br label %if.end.59

if.else:                                          ; preds = %sw.bb.55
  %70 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @doemit(%struct.parse* %70, i64 671088640, i64 0)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.then.58
  br label %sw.epilog

sw.bb.60:                                         ; preds = %entry
  %71 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @p_bracket(%struct.parse* %71)
  br label %sw.epilog

sw.bb.61:                                         ; preds = %entry
  %72 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next62 = getelementptr inbounds %struct.parse, %struct.parse* %72, i32 0, i32 0
  %73 = load i8*, i8** %next62, align 8
  %74 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end63 = getelementptr inbounds %struct.parse, %struct.parse* %74, i32 0, i32 1
  %75 = load i8*, i8** %end63, align 8
  %cmp64 = icmp ult i8* %73, %75
  br i1 %cmp64, label %lor.end.69, label %lor.rhs.66

lor.rhs.66:                                       ; preds = %sw.bb.61
  %76 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call67 = call i32 @seterr(%struct.parse* %76, i32 5)
  %tobool68 = icmp ne i32 %call67, 0
  br label %lor.end.69

lor.end.69:                                       ; preds = %lor.rhs.66, %sw.bb.61
  %77 = phi i1 [ true, %sw.bb.61 ], [ %tobool68, %lor.rhs.66 ]
  %lor.ext70 = zext i1 %77 to i32
  %78 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next71 = getelementptr inbounds %struct.parse, %struct.parse* %78, i32 0, i32 0
  %79 = load i8*, i8** %next71, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr72, i8** %next71, align 8
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %c, align 1
  %81 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %82 = load i8, i8* %c, align 1
  %conv73 = sext i8 %82 to i32
  call void @ordinary(%struct.parse* %81, i32 %conv73)
  br label %sw.epilog

sw.bb.74:                                         ; preds = %entry
  %83 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next75 = getelementptr inbounds %struct.parse, %struct.parse* %83, i32 0, i32 0
  %84 = load i8*, i8** %next75, align 8
  %85 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end76 = getelementptr inbounds %struct.parse, %struct.parse* %85, i32 0, i32 1
  %86 = load i8*, i8** %end76, align 8
  %cmp77 = icmp ult i8* %84, %86
  br i1 %cmp77, label %lor.lhs.false, label %lor.end.89

lor.lhs.false:                                    ; preds = %sw.bb.74
  %87 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next79 = getelementptr inbounds %struct.parse, %struct.parse* %87, i32 0, i32 0
  %88 = load i8*, i8** %next79, align 8
  %89 = load i8, i8* %88, align 1
  %conv80 = zext i8 %89 to i32
  %idxprom = sext i32 %conv80 to i64
  %call81 = call i16** @__ctype_b_loc() #7
  %90 = load i16*, i16** %call81, align 8
  %arrayidx82 = getelementptr inbounds i16, i16* %90, i64 %idxprom
  %91 = load i16, i16* %arrayidx82, align 2
  %conv83 = zext i16 %91 to i32
  %and84 = and i32 %conv83, 2048
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %lor.rhs.86, label %lor.end.89

lor.rhs.86:                                       ; preds = %lor.lhs.false
  %92 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call87 = call i32 @seterr(%struct.parse* %92, i32 13)
  %tobool88 = icmp ne i32 %call87, 0
  br label %lor.end.89

lor.end.89:                                       ; preds = %lor.rhs.86, %lor.lhs.false, %sw.bb.74
  %93 = phi i1 [ true, %lor.lhs.false ], [ true, %sw.bb.74 ], [ %tobool88, %lor.rhs.86 ]
  %lor.ext90 = zext i1 %93 to i32
  br label %sw.default

sw.default:                                       ; preds = %entry, %lor.end.89
  %94 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %95 = load i8, i8* %c, align 1
  %conv91 = sext i8 %95 to i32
  call void @ordinary(%struct.parse* %94, i32 %conv91)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %lor.end.69, %sw.bb.60, %if.end.59, %sw.bb.53, %sw.bb.51, %sw.bb.45, %sw.bb.41, %sw.bb.39, %lor.end.37
  %96 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next92 = getelementptr inbounds %struct.parse, %struct.parse* %96, i32 0, i32 0
  %97 = load i8*, i8** %next92, align 8
  %98 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end93 = getelementptr inbounds %struct.parse, %struct.parse* %98, i32 0, i32 1
  %99 = load i8*, i8** %end93, align 8
  %cmp94 = icmp ult i8* %97, %99
  br i1 %cmp94, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %sw.epilog
  br label %return

if.end.97:                                        ; preds = %sw.epilog
  %100 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next98 = getelementptr inbounds %struct.parse, %struct.parse* %100, i32 0, i32 0
  %101 = load i8*, i8** %next98, align 8
  %102 = load i8, i8* %101, align 1
  store i8 %102, i8* %c, align 1
  %103 = load i8, i8* %c, align 1
  %conv99 = sext i8 %103 to i32
  %cmp100 = icmp eq i32 %conv99, 42
  br i1 %cmp100, label %if.end.130, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %if.end.97
  %104 = load i8, i8* %c, align 1
  %conv103 = sext i8 %104 to i32
  %cmp104 = icmp eq i32 %conv103, 43
  br i1 %cmp104, label %if.end.130, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.102
  %105 = load i8, i8* %c, align 1
  %conv107 = sext i8 %105 to i32
  %cmp108 = icmp eq i32 %conv107, 63
  br i1 %cmp108, label %if.end.130, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %lor.lhs.false.106
  %106 = load i8, i8* %c, align 1
  %conv111 = sext i8 %106 to i32
  %cmp112 = icmp eq i32 %conv111, 123
  br i1 %cmp112, label %land.lhs.true.114, label %if.then.129

land.lhs.true.114:                                ; preds = %lor.lhs.false.110
  %107 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next115 = getelementptr inbounds %struct.parse, %struct.parse* %107, i32 0, i32 0
  %108 = load i8*, i8** %next115, align 8
  %add.ptr = getelementptr inbounds i8, i8* %108, i64 1
  %109 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end116 = getelementptr inbounds %struct.parse, %struct.parse* %109, i32 0, i32 1
  %110 = load i8*, i8** %end116, align 8
  %cmp117 = icmp ult i8* %add.ptr, %110
  br i1 %cmp117, label %land.lhs.true.119, label %if.then.129

land.lhs.true.119:                                ; preds = %land.lhs.true.114
  %111 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next120 = getelementptr inbounds %struct.parse, %struct.parse* %111, i32 0, i32 0
  %112 = load i8*, i8** %next120, align 8
  %add.ptr121 = getelementptr inbounds i8, i8* %112, i64 1
  %113 = load i8, i8* %add.ptr121, align 1
  %conv122 = zext i8 %113 to i32
  %idxprom123 = sext i32 %conv122 to i64
  %call124 = call i16** @__ctype_b_loc() #7
  %114 = load i16*, i16** %call124, align 8
  %arrayidx125 = getelementptr inbounds i16, i16* %114, i64 %idxprom123
  %115 = load i16, i16* %arrayidx125, align 2
  %conv126 = zext i16 %115 to i32
  %and127 = and i32 %conv126, 2048
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %if.end.130, label %if.then.129

if.then.129:                                      ; preds = %land.lhs.true.119, %land.lhs.true.114, %lor.lhs.false.110
  br label %return

if.end.130:                                       ; preds = %land.lhs.true.119, %lor.lhs.false.106, %lor.lhs.false.102, %if.end.97
  %116 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next131 = getelementptr inbounds %struct.parse, %struct.parse* %116, i32 0, i32 0
  %117 = load i8*, i8** %next131, align 8
  %incdec.ptr132 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr132, i8** %next131, align 8
  %118 = load i32, i32* %wascaret, align 4
  %tobool133 = icmp ne i32 %118, 0
  br i1 %tobool133, label %lor.rhs.134, label %lor.end.137

lor.rhs.134:                                      ; preds = %if.end.130
  %119 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call135 = call i32 @seterr(%struct.parse* %119, i32 13)
  %tobool136 = icmp ne i32 %call135, 0
  br label %lor.end.137

lor.end.137:                                      ; preds = %lor.rhs.134, %if.end.130
  %120 = phi i1 [ true, %if.end.130 ], [ %tobool136, %lor.rhs.134 ]
  %lor.ext138 = zext i1 %120 to i32
  %121 = load i8, i8* %c, align 1
  %conv139 = sext i8 %121 to i32
  switch i32 %conv139, label %sw.epilog.243 [
    i32 42, label %sw.bb.140
    i32 43, label %sw.bb.149
    i32 63, label %sw.bb.155
    i32 123, label %sw.bb.173
  ]

sw.bb.140:                                        ; preds = %lor.end.137
  %122 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %123 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen141 = getelementptr inbounds %struct.parse, %struct.parse* %123, i32 0, i32 5
  %124 = load i64, i64* %slen141, align 8
  %125 = load i64, i64* %pos, align 8
  %sub = sub nsw i64 %124, %125
  %add = add nsw i64 %sub, 1
  %126 = load i64, i64* %pos, align 8
  call void @doinsert(%struct.parse* %122, i64 1207959552, i64 %add, i64 %126)
  %127 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %128 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen142 = getelementptr inbounds %struct.parse, %struct.parse* %128, i32 0, i32 5
  %129 = load i64, i64* %slen142, align 8
  %130 = load i64, i64* %pos, align 8
  %sub143 = sub nsw i64 %129, %130
  call void @doemit(%struct.parse* %127, i64 1342177280, i64 %sub143)
  %131 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %132 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen144 = getelementptr inbounds %struct.parse, %struct.parse* %132, i32 0, i32 5
  %133 = load i64, i64* %slen144, align 8
  %134 = load i64, i64* %pos, align 8
  %sub145 = sub nsw i64 %133, %134
  %add146 = add nsw i64 %sub145, 1
  %135 = load i64, i64* %pos, align 8
  call void @doinsert(%struct.parse* %131, i64 1476395008, i64 %add146, i64 %135)
  %136 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %137 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen147 = getelementptr inbounds %struct.parse, %struct.parse* %137, i32 0, i32 5
  %138 = load i64, i64* %slen147, align 8
  %139 = load i64, i64* %pos, align 8
  %sub148 = sub nsw i64 %138, %139
  call void @doemit(%struct.parse* %136, i64 1610612736, i64 %sub148)
  br label %sw.epilog.243

sw.bb.149:                                        ; preds = %lor.end.137
  %140 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %141 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen150 = getelementptr inbounds %struct.parse, %struct.parse* %141, i32 0, i32 5
  %142 = load i64, i64* %slen150, align 8
  %143 = load i64, i64* %pos, align 8
  %sub151 = sub nsw i64 %142, %143
  %add152 = add nsw i64 %sub151, 1
  %144 = load i64, i64* %pos, align 8
  call void @doinsert(%struct.parse* %140, i64 1207959552, i64 %add152, i64 %144)
  %145 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %146 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen153 = getelementptr inbounds %struct.parse, %struct.parse* %146, i32 0, i32 5
  %147 = load i64, i64* %slen153, align 8
  %148 = load i64, i64* %pos, align 8
  %sub154 = sub nsw i64 %147, %148
  call void @doemit(%struct.parse* %145, i64 1342177280, i64 %sub154)
  br label %sw.epilog.243

sw.bb.155:                                        ; preds = %lor.end.137
  %149 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %150 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen156 = getelementptr inbounds %struct.parse, %struct.parse* %150, i32 0, i32 5
  %151 = load i64, i64* %slen156, align 8
  %152 = load i64, i64* %pos, align 8
  %sub157 = sub nsw i64 %151, %152
  %add158 = add nsw i64 %sub157, 1
  %153 = load i64, i64* %pos, align 8
  call void @doinsert(%struct.parse* %149, i64 2013265920, i64 %add158, i64 %153)
  %154 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %155 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen159 = getelementptr inbounds %struct.parse, %struct.parse* %155, i32 0, i32 5
  %156 = load i64, i64* %slen159, align 8
  %157 = load i64, i64* %pos, align 8
  %sub160 = sub nsw i64 %156, %157
  call void @doemit(%struct.parse* %154, i64 2147483648, i64 %sub160)
  %158 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %159 = load i64, i64* %pos, align 8
  %160 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen161 = getelementptr inbounds %struct.parse, %struct.parse* %160, i32 0, i32 5
  %161 = load i64, i64* %slen161, align 8
  %162 = load i64, i64* %pos, align 8
  %sub162 = sub nsw i64 %161, %162
  call void @dofwd(%struct.parse* %158, i64 %159, i64 %sub162)
  %163 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @doemit(%struct.parse* %163, i64 2281701376, i64 0)
  %164 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %165 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen163 = getelementptr inbounds %struct.parse, %struct.parse* %165, i32 0, i32 5
  %166 = load i64, i64* %slen163, align 8
  %sub164 = sub nsw i64 %166, 1
  %167 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen165 = getelementptr inbounds %struct.parse, %struct.parse* %167, i32 0, i32 5
  %168 = load i64, i64* %slen165, align 8
  %169 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen166 = getelementptr inbounds %struct.parse, %struct.parse* %169, i32 0, i32 5
  %170 = load i64, i64* %slen166, align 8
  %sub167 = sub nsw i64 %170, 1
  %sub168 = sub nsw i64 %168, %sub167
  call void @dofwd(%struct.parse* %164, i64 %sub164, i64 %sub168)
  %171 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %172 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen169 = getelementptr inbounds %struct.parse, %struct.parse* %172, i32 0, i32 5
  %173 = load i64, i64* %slen169, align 8
  %174 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen170 = getelementptr inbounds %struct.parse, %struct.parse* %174, i32 0, i32 5
  %175 = load i64, i64* %slen170, align 8
  %sub171 = sub nsw i64 %175, 2
  %sub172 = sub nsw i64 %173, %sub171
  call void @doemit(%struct.parse* %171, i64 2415919104, i64 %sub172)
  br label %sw.epilog.243

sw.bb.173:                                        ; preds = %lor.end.137
  %176 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call174 = call i32 @p_count(%struct.parse* %176)
  store i32 %call174, i32* %count, align 4
  %177 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next175 = getelementptr inbounds %struct.parse, %struct.parse* %177, i32 0, i32 0
  %178 = load i8*, i8** %next175, align 8
  %179 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end176 = getelementptr inbounds %struct.parse, %struct.parse* %179, i32 0, i32 1
  %180 = load i8*, i8** %end176, align 8
  %cmp177 = icmp ult i8* %178, %180
  br i1 %cmp177, label %land.lhs.true.179, label %cond.false

land.lhs.true.179:                                ; preds = %sw.bb.173
  %181 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next180 = getelementptr inbounds %struct.parse, %struct.parse* %181, i32 0, i32 0
  %182 = load i8*, i8** %next180, align 8
  %183 = load i8, i8* %182, align 1
  %conv181 = sext i8 %183 to i32
  %cmp182 = icmp eq i32 %conv181, 44
  br i1 %cmp182, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.179
  %184 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next184 = getelementptr inbounds %struct.parse, %struct.parse* %184, i32 0, i32 0
  %185 = load i8*, i8** %next184, align 8
  %incdec.ptr185 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %incdec.ptr185, i8** %next184, align 8
  br i1 true, label %if.then.186, label %if.else.206

cond.false:                                       ; preds = %land.lhs.true.179, %sw.bb.173
  br i1 false, label %if.then.186, label %if.else.206

if.then.186:                                      ; preds = %cond.false, %cond.true
  %186 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next187 = getelementptr inbounds %struct.parse, %struct.parse* %186, i32 0, i32 0
  %187 = load i8*, i8** %next187, align 8
  %188 = load i8, i8* %187, align 1
  %conv188 = zext i8 %188 to i32
  %idxprom189 = sext i32 %conv188 to i64
  %call190 = call i16** @__ctype_b_loc() #7
  %189 = load i16*, i16** %call190, align 8
  %arrayidx191 = getelementptr inbounds i16, i16* %189, i64 %idxprom189
  %190 = load i16, i16* %arrayidx191, align 2
  %conv192 = zext i16 %190 to i32
  %and193 = and i32 %conv192, 2048
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %if.then.195, label %if.else.204

if.then.195:                                      ; preds = %if.then.186
  %191 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call196 = call i32 @p_count(%struct.parse* %191)
  store i32 %call196, i32* %count2, align 4
  %192 = load i32, i32* %count, align 4
  %193 = load i32, i32* %count2, align 4
  %cmp197 = icmp sle i32 %192, %193
  br i1 %cmp197, label %lor.end.202, label %lor.rhs.199

lor.rhs.199:                                      ; preds = %if.then.195
  %194 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call200 = call i32 @seterr(%struct.parse* %194, i32 10)
  %tobool201 = icmp ne i32 %call200, 0
  br label %lor.end.202

lor.end.202:                                      ; preds = %lor.rhs.199, %if.then.195
  %195 = phi i1 [ true, %if.then.195 ], [ %tobool201, %lor.rhs.199 ]
  %lor.ext203 = zext i1 %195 to i32
  br label %if.end.205

if.else.204:                                      ; preds = %if.then.186
  store i32 256, i32* %count2, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.204, %lor.end.202
  br label %if.end.207

if.else.206:                                      ; preds = %cond.false, %cond.true
  %196 = load i32, i32* %count, align 4
  store i32 %196, i32* %count2, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.else.206, %if.end.205
  %197 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %198 = load i64, i64* %pos, align 8
  %199 = load i32, i32* %count, align 4
  %200 = load i32, i32* %count2, align 4
  call void @repeat(%struct.parse* %197, i64 %198, i32 %199, i32 %200)
  %201 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next208 = getelementptr inbounds %struct.parse, %struct.parse* %201, i32 0, i32 0
  %202 = load i8*, i8** %next208, align 8
  %203 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end209 = getelementptr inbounds %struct.parse, %struct.parse* %203, i32 0, i32 1
  %204 = load i8*, i8** %end209, align 8
  %cmp210 = icmp ult i8* %202, %204
  br i1 %cmp210, label %land.lhs.true.212, label %cond.false.220

land.lhs.true.212:                                ; preds = %if.end.207
  %205 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next213 = getelementptr inbounds %struct.parse, %struct.parse* %205, i32 0, i32 0
  %206 = load i8*, i8** %next213, align 8
  %207 = load i8, i8* %206, align 1
  %conv214 = sext i8 %207 to i32
  %cmp215 = icmp eq i32 %conv214, 125
  br i1 %cmp215, label %cond.true.217, label %cond.false.220

cond.true.217:                                    ; preds = %land.lhs.true.212
  %208 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next218 = getelementptr inbounds %struct.parse, %struct.parse* %208, i32 0, i32 0
  %209 = load i8*, i8** %next218, align 8
  %incdec.ptr219 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %incdec.ptr219, i8** %next218, align 8
  br i1 true, label %if.end.242, label %if.then.221

cond.false.220:                                   ; preds = %land.lhs.true.212, %if.end.207
  br i1 false, label %if.end.242, label %if.then.221

if.then.221:                                      ; preds = %cond.false.220, %cond.true.217
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.221
  %210 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next222 = getelementptr inbounds %struct.parse, %struct.parse* %210, i32 0, i32 0
  %211 = load i8*, i8** %next222, align 8
  %212 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end223 = getelementptr inbounds %struct.parse, %struct.parse* %212, i32 0, i32 1
  %213 = load i8*, i8** %end223, align 8
  %cmp224 = icmp ult i8* %211, %213
  br i1 %cmp224, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %214 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next226 = getelementptr inbounds %struct.parse, %struct.parse* %214, i32 0, i32 0
  %215 = load i8*, i8** %next226, align 8
  %216 = load i8, i8* %215, align 1
  %conv227 = sext i8 %216 to i32
  %cmp228 = icmp ne i32 %conv227, 125
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %217 = phi i1 [ false, %while.cond ], [ %cmp228, %land.rhs ]
  br i1 %217, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %218 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next230 = getelementptr inbounds %struct.parse, %struct.parse* %218, i32 0, i32 0
  %219 = load i8*, i8** %next230, align 8
  %incdec.ptr231 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %incdec.ptr231, i8** %next230, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %220 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next232 = getelementptr inbounds %struct.parse, %struct.parse* %220, i32 0, i32 0
  %221 = load i8*, i8** %next232, align 8
  %222 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end233 = getelementptr inbounds %struct.parse, %struct.parse* %222, i32 0, i32 1
  %223 = load i8*, i8** %end233, align 8
  %cmp234 = icmp ult i8* %221, %223
  br i1 %cmp234, label %lor.end.239, label %lor.rhs.236

lor.rhs.236:                                      ; preds = %while.end
  %224 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call237 = call i32 @seterr(%struct.parse* %224, i32 9)
  %tobool238 = icmp ne i32 %call237, 0
  br label %lor.end.239

lor.end.239:                                      ; preds = %lor.rhs.236, %while.end
  %225 = phi i1 [ true, %while.end ], [ %tobool238, %lor.rhs.236 ]
  %lor.ext240 = zext i1 %225 to i32
  %226 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call241 = call i32 @seterr(%struct.parse* %226, i32 10)
  br label %if.end.242

if.end.242:                                       ; preds = %lor.end.239, %cond.false.220, %cond.true.217
  br label %sw.epilog.243

sw.epilog.243:                                    ; preds = %lor.end.137, %if.end.242, %sw.bb.155, %sw.bb.149, %sw.bb.140
  %227 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next244 = getelementptr inbounds %struct.parse, %struct.parse* %227, i32 0, i32 0
  %228 = load i8*, i8** %next244, align 8
  %229 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end245 = getelementptr inbounds %struct.parse, %struct.parse* %229, i32 0, i32 1
  %230 = load i8*, i8** %end245, align 8
  %cmp246 = icmp ult i8* %228, %230
  br i1 %cmp246, label %if.end.249, label %if.then.248

if.then.248:                                      ; preds = %sw.epilog.243
  br label %return

if.end.249:                                       ; preds = %sw.epilog.243
  %231 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next250 = getelementptr inbounds %struct.parse, %struct.parse* %231, i32 0, i32 0
  %232 = load i8*, i8** %next250, align 8
  %233 = load i8, i8* %232, align 1
  store i8 %233, i8* %c, align 1
  %234 = load i8, i8* %c, align 1
  %conv251 = sext i8 %234 to i32
  %cmp252 = icmp eq i32 %conv251, 42
  br i1 %cmp252, label %if.end.283, label %lor.lhs.false.254

lor.lhs.false.254:                                ; preds = %if.end.249
  %235 = load i8, i8* %c, align 1
  %conv255 = sext i8 %235 to i32
  %cmp256 = icmp eq i32 %conv255, 43
  br i1 %cmp256, label %if.end.283, label %lor.lhs.false.258

lor.lhs.false.258:                                ; preds = %lor.lhs.false.254
  %236 = load i8, i8* %c, align 1
  %conv259 = sext i8 %236 to i32
  %cmp260 = icmp eq i32 %conv259, 63
  br i1 %cmp260, label %if.end.283, label %lor.lhs.false.262

lor.lhs.false.262:                                ; preds = %lor.lhs.false.258
  %237 = load i8, i8* %c, align 1
  %conv263 = sext i8 %237 to i32
  %cmp264 = icmp eq i32 %conv263, 123
  br i1 %cmp264, label %land.lhs.true.266, label %if.then.282

land.lhs.true.266:                                ; preds = %lor.lhs.false.262
  %238 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next267 = getelementptr inbounds %struct.parse, %struct.parse* %238, i32 0, i32 0
  %239 = load i8*, i8** %next267, align 8
  %add.ptr268 = getelementptr inbounds i8, i8* %239, i64 1
  %240 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end269 = getelementptr inbounds %struct.parse, %struct.parse* %240, i32 0, i32 1
  %241 = load i8*, i8** %end269, align 8
  %cmp270 = icmp ult i8* %add.ptr268, %241
  br i1 %cmp270, label %land.lhs.true.272, label %if.then.282

land.lhs.true.272:                                ; preds = %land.lhs.true.266
  %242 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next273 = getelementptr inbounds %struct.parse, %struct.parse* %242, i32 0, i32 0
  %243 = load i8*, i8** %next273, align 8
  %add.ptr274 = getelementptr inbounds i8, i8* %243, i64 1
  %244 = load i8, i8* %add.ptr274, align 1
  %conv275 = zext i8 %244 to i32
  %idxprom276 = sext i32 %conv275 to i64
  %call277 = call i16** @__ctype_b_loc() #7
  %245 = load i16*, i16** %call277, align 8
  %arrayidx278 = getelementptr inbounds i16, i16* %245, i64 %idxprom276
  %246 = load i16, i16* %arrayidx278, align 2
  %conv279 = zext i16 %246 to i32
  %and280 = and i32 %conv279, 2048
  %tobool281 = icmp ne i32 %and280, 0
  br i1 %tobool281, label %if.end.283, label %if.then.282

if.then.282:                                      ; preds = %land.lhs.true.272, %land.lhs.true.266, %lor.lhs.false.262
  br label %return

if.end.283:                                       ; preds = %land.lhs.true.272, %lor.lhs.false.258, %lor.lhs.false.254, %if.end.249
  %247 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call284 = call i32 @seterr(%struct.parse* %247, i32 13)
  br label %return

return:                                           ; preds = %if.end.283, %if.then.282, %if.then.248, %if.then.129, %if.then.96
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @doinsert(%struct.parse* %p, i64 %op, i64 %opnd, i64 %pos) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %op.addr = alloca i64, align 8
  %opnd.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %sn = alloca i64, align 8
  %s = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i64 %op, i64* %op.addr, align 8
  store i64 %opnd, i64* %opnd.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %error = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 2
  %1 = load i32, i32* %error, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 5
  %3 = load i64, i64* %slen, align 8
  store i64 %3, i64* %sn, align 8
  %4 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %5 = load i64, i64* %op.addr, align 8
  %6 = load i64, i64* %opnd.addr, align 8
  call void @doemit(%struct.parse* %4, i64 %5, i64 %6)
  %7 = load i64, i64* %sn, align 8
  %8 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %strip = getelementptr inbounds %struct.parse, %struct.parse* %8, i32 0, i32 3
  %9 = load i64*, i64** %strip, align 8
  %arrayidx = getelementptr inbounds i64, i64* %9, i64 %7
  %10 = load i64, i64* %arrayidx, align 8
  store i64 %10, i64* %s, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %11, 10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %pbegin = getelementptr inbounds %struct.parse, %struct.parse* %13, i32 0, i32 8
  %arrayidx2 = getelementptr inbounds [10 x i64], [10 x i64]* %pbegin, i32 0, i64 %idxprom
  %14 = load i64, i64* %arrayidx2, align 8
  %15 = load i64, i64* %pos.addr, align 8
  %cmp3 = icmp sge i64 %14, %15
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %pbegin6 = getelementptr inbounds %struct.parse, %struct.parse* %17, i32 0, i32 8
  %arrayidx7 = getelementptr inbounds [10 x i64], [10 x i64]* %pbegin6, i32 0, i64 %idxprom5
  %18 = load i64, i64* %arrayidx7, align 8
  %inc = add nsw i64 %18, 1
  store i64 %inc, i64* %arrayidx7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %19 to i64
  %20 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %pend = getelementptr inbounds %struct.parse, %struct.parse* %20, i32 0, i32 9
  %arrayidx10 = getelementptr inbounds [10 x i64], [10 x i64]* %pend, i32 0, i64 %idxprom9
  %21 = load i64, i64* %arrayidx10, align 8
  %22 = load i64, i64* %pos.addr, align 8
  %cmp11 = icmp sge i64 %21, %22
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end.8
  %23 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %pend14 = getelementptr inbounds %struct.parse, %struct.parse* %24, i32 0, i32 9
  %arrayidx15 = getelementptr inbounds [10 x i64], [10 x i64]* %pend14, i32 0, i64 %idxprom13
  %25 = load i64, i64* %arrayidx15, align 8
  %inc16 = add nsw i64 %25, 1
  store i64 %inc16, i64* %arrayidx15, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.12, %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %26 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %26, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i64, i64* %pos.addr, align 8
  %add = add nsw i64 %27, 1
  %28 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %strip19 = getelementptr inbounds %struct.parse, %struct.parse* %28, i32 0, i32 3
  %29 = load i64*, i64** %strip19, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %29, i64 %add
  %30 = bitcast i64* %arrayidx20 to i8*
  %31 = load i64, i64* %pos.addr, align 8
  %32 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %strip21 = getelementptr inbounds %struct.parse, %struct.parse* %32, i32 0, i32 3
  %33 = load i64*, i64** %strip21, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %33, i64 %31
  %34 = bitcast i64* %arrayidx22 to i8*
  %35 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen23 = getelementptr inbounds %struct.parse, %struct.parse* %35, i32 0, i32 5
  %36 = load i64, i64* %slen23, align 8
  %37 = load i64, i64* %pos.addr, align 8
  %sub = sub nsw i64 %36, %37
  %sub24 = sub nsw i64 %sub, 1
  %mul = mul i64 %sub24, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %30, i8* %34, i64 %mul, i32 1, i1 false)
  %38 = load i64, i64* %s, align 8
  %39 = load i64, i64* %pos.addr, align 8
  %40 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %strip25 = getelementptr inbounds %struct.parse, %struct.parse* %40, i32 0, i32 3
  %41 = load i64*, i64** %strip25, align 8
  %arrayidx26 = getelementptr inbounds i64, i64* %41, i64 %39
  store i64 %38, i64* %arrayidx26, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dofwd(%struct.parse* %p, i64 %pos, i64 %value) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %pos.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %error = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 2
  %1 = load i32, i32* %error, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %pos.addr, align 8
  %3 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %strip = getelementptr inbounds %struct.parse, %struct.parse* %3, i32 0, i32 3
  %4 = load i64*, i64** %strip, align 8
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %2
  %5 = load i64, i64* %arrayidx, align 8
  %and = and i64 %5, 4160749568
  %6 = load i64, i64* %value.addr, align 8
  %or = or i64 %and, %6
  %7 = load i64, i64* %pos.addr, align 8
  %8 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %strip1 = getelementptr inbounds %struct.parse, %struct.parse* %8, i32 0, i32 3
  %9 = load i64*, i64** %strip1, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %9, i64 %7
  store i64 %or, i64* %arrayidx2, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @nonnewline(%struct.parse* %p) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %oldnext = alloca i8*, align 8
  %oldend = alloca i8*, align 8
  %bracket = alloca [4 x i8], align 1
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 0
  %1 = load i8*, i8** %next, align 8
  store i8* %1, i8** %oldnext, align 8
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 1
  %3 = load i8*, i8** %end, align 8
  store i8* %3, i8** %oldend, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bracket, i32 0, i32 0
  %4 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next1 = getelementptr inbounds %struct.parse, %struct.parse* %4, i32 0, i32 0
  store i8* %arraydecay, i8** %next1, align 8
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %bracket, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay2, i64 3
  %5 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end3 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 1
  store i8* %add.ptr, i8** %end3, align 8
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %bracket, i32 0, i64 0
  store i8 94, i8* %arrayidx, align 1
  %arrayidx4 = getelementptr inbounds [4 x i8], [4 x i8]* %bracket, i32 0, i64 1
  store i8 10, i8* %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %bracket, i32 0, i64 2
  store i8 93, i8* %arrayidx5, align 1
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %bracket, i32 0, i64 3
  store i8 0, i8* %arrayidx6, align 1
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @p_bracket(%struct.parse* %6)
  %7 = load i8*, i8** %oldnext, align 8
  %8 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next7 = getelementptr inbounds %struct.parse, %struct.parse* %8, i32 0, i32 0
  store i8* %7, i8** %next7, align 8
  %9 = load i8*, i8** %oldend, align 8
  %10 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end8 = getelementptr inbounds %struct.parse, %struct.parse* %10, i32 0, i32 1
  store i8* %9, i8** %end8, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @p_bracket(%struct.parse* %p) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %cs = alloca %struct.cset*, align 8
  %invert = alloca i32, align 4
  %i = alloca i32, align 4
  %ci = alloca i32, align 4
  %i197 = alloca i32, align 4
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i32 0, i32* %invert, align 4
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 0
  %1 = load i8*, i8** %next, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 5
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 1
  %3 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %add.ptr, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next1 = getelementptr inbounds %struct.parse, %struct.parse* %4, i32 0, i32 0
  %5 = load i8*, i8** %next1, align 8
  %call = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 6) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @doemit(%struct.parse* %6, i64 2550136832, i64 0)
  %7 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next3 = getelementptr inbounds %struct.parse, %struct.parse* %7, i32 0, i32 0
  %8 = load i8*, i8** %next3, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %8, i64 6
  store i8* %add.ptr4, i8** %next3, align 8
  br label %if.end.278

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next5 = getelementptr inbounds %struct.parse, %struct.parse* %9, i32 0, i32 0
  %10 = load i8*, i8** %next5, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end7 = getelementptr inbounds %struct.parse, %struct.parse* %11, i32 0, i32 1
  %12 = load i8*, i8** %end7, align 8
  %cmp8 = icmp ult i8* %add.ptr6, %12
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.16

land.lhs.true.9:                                  ; preds = %if.end
  %13 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next10 = getelementptr inbounds %struct.parse, %struct.parse* %13, i32 0, i32 0
  %14 = load i8*, i8** %next10, align 8
  %call11 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i64 6) #6
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %land.lhs.true.9
  %15 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @doemit(%struct.parse* %15, i64 2684354560, i64 0)
  %16 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next14 = getelementptr inbounds %struct.parse, %struct.parse* %16, i32 0, i32 0
  %17 = load i8*, i8** %next14, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %17, i64 6
  store i8* %add.ptr15, i8** %next14, align 8
  br label %if.end.278

if.end.16:                                        ; preds = %land.lhs.true.9, %if.end
  %18 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call17 = call %struct.cset* @allocset(%struct.parse* %18)
  store %struct.cset* %call17, %struct.cset** %cs, align 8
  %cmp18 = icmp eq %struct.cset* %call17, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  br label %if.end.278

if.end.20:                                        ; preds = %if.end.16
  %19 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next21 = getelementptr inbounds %struct.parse, %struct.parse* %19, i32 0, i32 0
  %20 = load i8*, i8** %next21, align 8
  %21 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end22 = getelementptr inbounds %struct.parse, %struct.parse* %21, i32 0, i32 1
  %22 = load i8*, i8** %end22, align 8
  %cmp23 = icmp ult i8* %20, %22
  br i1 %cmp23, label %land.lhs.true.24, label %cond.false

land.lhs.true.24:                                 ; preds = %if.end.20
  %23 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next25 = getelementptr inbounds %struct.parse, %struct.parse* %23, i32 0, i32 0
  %24 = load i8*, i8** %next25, align 8
  %25 = load i8, i8* %24, align 1
  %conv = sext i8 %25 to i32
  %cmp26 = icmp eq i32 %conv, 94
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.24
  %26 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next28 = getelementptr inbounds %struct.parse, %struct.parse* %26, i32 0, i32 0
  %27 = load i8*, i8** %next28, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %next28, align 8
  br i1 true, label %if.then.29, label %if.end.30

cond.false:                                       ; preds = %land.lhs.true.24, %if.end.20
  br i1 false, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %cond.false, %cond.true
  %28 = load i32, i32* %invert, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %invert, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %cond.false, %cond.true
  %29 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next31 = getelementptr inbounds %struct.parse, %struct.parse* %29, i32 0, i32 0
  %30 = load i8*, i8** %next31, align 8
  %31 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end32 = getelementptr inbounds %struct.parse, %struct.parse* %31, i32 0, i32 1
  %32 = load i8*, i8** %end32, align 8
  %cmp33 = icmp ult i8* %30, %32
  br i1 %cmp33, label %land.lhs.true.35, label %cond.false.43

land.lhs.true.35:                                 ; preds = %if.end.30
  %33 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next36 = getelementptr inbounds %struct.parse, %struct.parse* %33, i32 0, i32 0
  %34 = load i8*, i8** %next36, align 8
  %35 = load i8, i8* %34, align 1
  %conv37 = sext i8 %35 to i32
  %cmp38 = icmp eq i32 %conv37, 93
  br i1 %cmp38, label %cond.true.40, label %cond.false.43

cond.true.40:                                     ; preds = %land.lhs.true.35
  %36 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next41 = getelementptr inbounds %struct.parse, %struct.parse* %36, i32 0, i32 0
  %37 = load i8*, i8** %next41, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr42, i8** %next41, align 8
  br i1 true, label %if.then.44, label %if.else

cond.false.43:                                    ; preds = %land.lhs.true.35, %if.end.30
  br i1 false, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %cond.false.43, %cond.true.40
  %38 = load %struct.cset*, %struct.cset** %cs, align 8
  %mask = getelementptr inbounds %struct.cset, %struct.cset* %38, i32 0, i32 1
  %39 = load i8, i8* %mask, align 1
  %conv45 = zext i8 %39 to i32
  %40 = load %struct.cset*, %struct.cset** %cs, align 8
  %ptr = getelementptr inbounds %struct.cset, %struct.cset* %40, i32 0, i32 0
  %41 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %41, i64 93
  %42 = load i8, i8* %arrayidx, align 1
  %conv46 = zext i8 %42 to i32
  %or = or i32 %conv46, %conv45
  %conv47 = trunc i32 %or to i8
  store i8 %conv47, i8* %arrayidx, align 1
  %43 = load %struct.cset*, %struct.cset** %cs, align 8
  %hash = getelementptr inbounds %struct.cset, %struct.cset* %43, i32 0, i32 2
  %44 = load i8, i8* %hash, align 1
  %conv48 = zext i8 %44 to i32
  %add = add nsw i32 %conv48, 93
  %conv49 = trunc i32 %add to i8
  store i8 %conv49, i8* %hash, align 1
  br label %if.end.76

if.else:                                          ; preds = %cond.false.43, %cond.true.40
  %45 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next50 = getelementptr inbounds %struct.parse, %struct.parse* %45, i32 0, i32 0
  %46 = load i8*, i8** %next50, align 8
  %47 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end51 = getelementptr inbounds %struct.parse, %struct.parse* %47, i32 0, i32 1
  %48 = load i8*, i8** %end51, align 8
  %cmp52 = icmp ult i8* %46, %48
  br i1 %cmp52, label %land.lhs.true.54, label %cond.false.62

land.lhs.true.54:                                 ; preds = %if.else
  %49 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next55 = getelementptr inbounds %struct.parse, %struct.parse* %49, i32 0, i32 0
  %50 = load i8*, i8** %next55, align 8
  %51 = load i8, i8* %50, align 1
  %conv56 = sext i8 %51 to i32
  %cmp57 = icmp eq i32 %conv56, 45
  br i1 %cmp57, label %cond.true.59, label %cond.false.62

cond.true.59:                                     ; preds = %land.lhs.true.54
  %52 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next60 = getelementptr inbounds %struct.parse, %struct.parse* %52, i32 0, i32 0
  %53 = load i8*, i8** %next60, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr61, i8** %next60, align 8
  br i1 true, label %if.then.63, label %if.end.75

cond.false.62:                                    ; preds = %land.lhs.true.54, %if.else
  br i1 false, label %if.then.63, label %if.end.75

if.then.63:                                       ; preds = %cond.false.62, %cond.true.59
  %54 = load %struct.cset*, %struct.cset** %cs, align 8
  %mask64 = getelementptr inbounds %struct.cset, %struct.cset* %54, i32 0, i32 1
  %55 = load i8, i8* %mask64, align 1
  %conv65 = zext i8 %55 to i32
  %56 = load %struct.cset*, %struct.cset** %cs, align 8
  %ptr66 = getelementptr inbounds %struct.cset, %struct.cset* %56, i32 0, i32 0
  %57 = load i8*, i8** %ptr66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %57, i64 45
  %58 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %58 to i32
  %or69 = or i32 %conv68, %conv65
  %conv70 = trunc i32 %or69 to i8
  store i8 %conv70, i8* %arrayidx67, align 1
  %59 = load %struct.cset*, %struct.cset** %cs, align 8
  %hash71 = getelementptr inbounds %struct.cset, %struct.cset* %59, i32 0, i32 2
  %60 = load i8, i8* %hash71, align 1
  %conv72 = zext i8 %60 to i32
  %add73 = add nsw i32 %conv72, 45
  %conv74 = trunc i32 %add73 to i8
  store i8 %conv74, i8* %hash71, align 1
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.63, %cond.false.62, %cond.true.59
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.44
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.76
  %61 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next77 = getelementptr inbounds %struct.parse, %struct.parse* %61, i32 0, i32 0
  %62 = load i8*, i8** %next77, align 8
  %63 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end78 = getelementptr inbounds %struct.parse, %struct.parse* %63, i32 0, i32 1
  %64 = load i8*, i8** %end78, align 8
  %cmp79 = icmp ult i8* %62, %64
  br i1 %cmp79, label %land.lhs.true.81, label %land.end.107

land.lhs.true.81:                                 ; preds = %while.cond
  %65 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next82 = getelementptr inbounds %struct.parse, %struct.parse* %65, i32 0, i32 0
  %66 = load i8*, i8** %next82, align 8
  %67 = load i8, i8* %66, align 1
  %conv83 = sext i8 %67 to i32
  %cmp84 = icmp ne i32 %conv83, 93
  br i1 %cmp84, label %land.rhs, label %land.end.107

land.rhs:                                         ; preds = %land.lhs.true.81
  %68 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next86 = getelementptr inbounds %struct.parse, %struct.parse* %68, i32 0, i32 0
  %69 = load i8*, i8** %next86, align 8
  %70 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end87 = getelementptr inbounds %struct.parse, %struct.parse* %70, i32 0, i32 1
  %71 = load i8*, i8** %end87, align 8
  %cmp88 = icmp ult i8* %69, %71
  br i1 %cmp88, label %land.lhs.true.90, label %land.end

land.lhs.true.90:                                 ; preds = %land.rhs
  %72 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next91 = getelementptr inbounds %struct.parse, %struct.parse* %72, i32 0, i32 0
  %73 = load i8*, i8** %next91, align 8
  %add.ptr92 = getelementptr inbounds i8, i8* %73, i64 1
  %74 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end93 = getelementptr inbounds %struct.parse, %struct.parse* %74, i32 0, i32 1
  %75 = load i8*, i8** %end93, align 8
  %cmp94 = icmp ult i8* %add.ptr92, %75
  br i1 %cmp94, label %land.lhs.true.96, label %land.end

land.lhs.true.96:                                 ; preds = %land.lhs.true.90
  %76 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next97 = getelementptr inbounds %struct.parse, %struct.parse* %76, i32 0, i32 0
  %77 = load i8*, i8** %next97, align 8
  %78 = load i8, i8* %77, align 1
  %conv98 = sext i8 %78 to i32
  %cmp99 = icmp eq i32 %conv98, 45
  br i1 %cmp99, label %land.rhs.101, label %land.end

land.rhs.101:                                     ; preds = %land.lhs.true.96
  %79 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next102 = getelementptr inbounds %struct.parse, %struct.parse* %79, i32 0, i32 0
  %80 = load i8*, i8** %next102, align 8
  %add.ptr103 = getelementptr inbounds i8, i8* %80, i64 1
  %81 = load i8, i8* %add.ptr103, align 1
  %conv104 = sext i8 %81 to i32
  %cmp105 = icmp eq i32 %conv104, 93
  br label %land.end

land.end:                                         ; preds = %land.rhs.101, %land.lhs.true.96, %land.lhs.true.90, %land.rhs
  %82 = phi i1 [ false, %land.lhs.true.96 ], [ false, %land.lhs.true.90 ], [ false, %land.rhs ], [ %cmp105, %land.rhs.101 ]
  %lnot = xor i1 %82, true
  br label %land.end.107

land.end.107:                                     ; preds = %land.end, %land.lhs.true.81, %while.cond
  %83 = phi i1 [ false, %land.lhs.true.81 ], [ false, %while.cond ], [ %lnot, %land.end ]
  br i1 %83, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.107
  %84 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %85 = load %struct.cset*, %struct.cset** %cs, align 8
  call void @p_b_term(%struct.parse* %84, %struct.cset* %85)
  br label %while.cond

while.end:                                        ; preds = %land.end.107
  %86 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next108 = getelementptr inbounds %struct.parse, %struct.parse* %86, i32 0, i32 0
  %87 = load i8*, i8** %next108, align 8
  %88 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end109 = getelementptr inbounds %struct.parse, %struct.parse* %88, i32 0, i32 1
  %89 = load i8*, i8** %end109, align 8
  %cmp110 = icmp ult i8* %87, %89
  br i1 %cmp110, label %land.lhs.true.112, label %cond.false.120

land.lhs.true.112:                                ; preds = %while.end
  %90 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next113 = getelementptr inbounds %struct.parse, %struct.parse* %90, i32 0, i32 0
  %91 = load i8*, i8** %next113, align 8
  %92 = load i8, i8* %91, align 1
  %conv114 = sext i8 %92 to i32
  %cmp115 = icmp eq i32 %conv114, 45
  br i1 %cmp115, label %cond.true.117, label %cond.false.120

cond.true.117:                                    ; preds = %land.lhs.true.112
  %93 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next118 = getelementptr inbounds %struct.parse, %struct.parse* %93, i32 0, i32 0
  %94 = load i8*, i8** %next118, align 8
  %incdec.ptr119 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr119, i8** %next118, align 8
  br i1 true, label %if.then.121, label %if.end.133

cond.false.120:                                   ; preds = %land.lhs.true.112, %while.end
  br i1 false, label %if.then.121, label %if.end.133

if.then.121:                                      ; preds = %cond.false.120, %cond.true.117
  %95 = load %struct.cset*, %struct.cset** %cs, align 8
  %mask122 = getelementptr inbounds %struct.cset, %struct.cset* %95, i32 0, i32 1
  %96 = load i8, i8* %mask122, align 1
  %conv123 = zext i8 %96 to i32
  %97 = load %struct.cset*, %struct.cset** %cs, align 8
  %ptr124 = getelementptr inbounds %struct.cset, %struct.cset* %97, i32 0, i32 0
  %98 = load i8*, i8** %ptr124, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %98, i64 45
  %99 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %99 to i32
  %or127 = or i32 %conv126, %conv123
  %conv128 = trunc i32 %or127 to i8
  store i8 %conv128, i8* %arrayidx125, align 1
  %100 = load %struct.cset*, %struct.cset** %cs, align 8
  %hash129 = getelementptr inbounds %struct.cset, %struct.cset* %100, i32 0, i32 2
  %101 = load i8, i8* %hash129, align 1
  %conv130 = zext i8 %101 to i32
  %add131 = add nsw i32 %conv130, 45
  %conv132 = trunc i32 %add131 to i8
  store i8 %conv132, i8* %hash129, align 1
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.121, %cond.false.120, %cond.true.117
  %102 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next134 = getelementptr inbounds %struct.parse, %struct.parse* %102, i32 0, i32 0
  %103 = load i8*, i8** %next134, align 8
  %104 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end135 = getelementptr inbounds %struct.parse, %struct.parse* %104, i32 0, i32 1
  %105 = load i8*, i8** %end135, align 8
  %cmp136 = icmp ult i8* %103, %105
  br i1 %cmp136, label %land.lhs.true.138, label %lor.rhs

land.lhs.true.138:                                ; preds = %if.end.133
  %106 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next139 = getelementptr inbounds %struct.parse, %struct.parse* %106, i32 0, i32 0
  %107 = load i8*, i8** %next139, align 8
  %incdec.ptr140 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr140, i8** %next139, align 8
  %108 = load i8, i8* %107, align 1
  %conv141 = sext i8 %108 to i32
  %cmp142 = icmp eq i32 %conv141, 93
  br i1 %cmp142, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.138, %if.end.133
  %109 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call144 = call i32 @seterr(%struct.parse* %109, i32 7)
  %tobool = icmp ne i32 %call144, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.138
  %110 = phi i1 [ true, %land.lhs.true.138 ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %110 to i32
  %111 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %error = getelementptr inbounds %struct.parse, %struct.parse* %111, i32 0, i32 2
  %112 = load i32, i32* %error, align 4
  %cmp145 = icmp ne i32 %112, 0
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %lor.end
  %113 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %114 = load %struct.cset*, %struct.cset** %cs, align 8
  call void @freeset(%struct.parse* %113, %struct.cset* %114)
  br label %if.end.278

if.end.148:                                       ; preds = %lor.end
  %115 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g = getelementptr inbounds %struct.parse, %struct.parse* %115, i32 0, i32 7
  %116 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %cflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %116, i32 0, i32 6
  %117 = load i32, i32* %cflags, align 4
  %and = and i32 %117, 2
  %tobool149 = icmp ne i32 %and, 0
  br i1 %tobool149, label %if.then.150, label %if.end.194

if.then.150:                                      ; preds = %if.end.148
  %118 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g151 = getelementptr inbounds %struct.parse, %struct.parse* %118, i32 0, i32 7
  %119 = load %struct.re_guts*, %struct.re_guts** %g151, align 8
  %csetsize = getelementptr inbounds %struct.re_guts, %struct.re_guts* %119, i32 0, i32 2
  %120 = load i32, i32* %csetsize, align 4
  %sub = sub nsw i32 %120, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.150
  %121 = load i32, i32* %i, align 4
  %cmp152 = icmp sge i32 %121, 0
  br i1 %cmp152, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %122 = load i32, i32* %i, align 4
  %conv154 = trunc i32 %122 to i8
  %idxprom = zext i8 %conv154 to i64
  %123 = load %struct.cset*, %struct.cset** %cs, align 8
  %ptr155 = getelementptr inbounds %struct.cset, %struct.cset* %123, i32 0, i32 0
  %124 = load i8*, i8** %ptr155, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %124, i64 %idxprom
  %125 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %125 to i32
  %126 = load %struct.cset*, %struct.cset** %cs, align 8
  %mask158 = getelementptr inbounds %struct.cset, %struct.cset* %126, i32 0, i32 1
  %127 = load i8, i8* %mask158, align 1
  %conv159 = zext i8 %127 to i32
  %and160 = and i32 %conv157, %conv159
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %land.lhs.true.162, label %if.end.189

land.lhs.true.162:                                ; preds = %for.body
  %128 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %128 to i64
  %call164 = call i16** @__ctype_b_loc() #7
  %129 = load i16*, i16** %call164, align 8
  %arrayidx165 = getelementptr inbounds i16, i16* %129, i64 %idxprom163
  %130 = load i16, i16* %arrayidx165, align 2
  %conv166 = zext i16 %130 to i32
  %and167 = and i32 %conv166, 1024
  %tobool168 = icmp ne i32 %and167, 0
  br i1 %tobool168, label %if.then.169, label %if.end.189

if.then.169:                                      ; preds = %land.lhs.true.162
  %131 = load i32, i32* %i, align 4
  %call170 = call signext i8 @othercase(i32 %131)
  %conv171 = sext i8 %call170 to i32
  store i32 %conv171, i32* %ci, align 4
  %132 = load i32, i32* %ci, align 4
  %133 = load i32, i32* %i, align 4
  %cmp172 = icmp ne i32 %132, %133
  br i1 %cmp172, label %if.then.174, label %if.end.188

if.then.174:                                      ; preds = %if.then.169
  %134 = load %struct.cset*, %struct.cset** %cs, align 8
  %mask175 = getelementptr inbounds %struct.cset, %struct.cset* %134, i32 0, i32 1
  %135 = load i8, i8* %mask175, align 1
  %conv176 = zext i8 %135 to i32
  %136 = load i32, i32* %ci, align 4
  %conv177 = trunc i32 %136 to i8
  %idxprom178 = zext i8 %conv177 to i64
  %137 = load %struct.cset*, %struct.cset** %cs, align 8
  %ptr179 = getelementptr inbounds %struct.cset, %struct.cset* %137, i32 0, i32 0
  %138 = load i8*, i8** %ptr179, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %138, i64 %idxprom178
  %139 = load i8, i8* %arrayidx180, align 1
  %conv181 = zext i8 %139 to i32
  %or182 = or i32 %conv181, %conv176
  %conv183 = trunc i32 %or182 to i8
  store i8 %conv183, i8* %arrayidx180, align 1
  %140 = load i32, i32* %ci, align 4
  %141 = load %struct.cset*, %struct.cset** %cs, align 8
  %hash184 = getelementptr inbounds %struct.cset, %struct.cset* %141, i32 0, i32 2
  %142 = load i8, i8* %hash184, align 1
  %conv185 = zext i8 %142 to i32
  %add186 = add nsw i32 %conv185, %140
  %conv187 = trunc i32 %add186 to i8
  store i8 %conv187, i8* %hash184, align 1
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.174, %if.then.169
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %land.lhs.true.162, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.189
  %143 = load i32, i32* %i, align 4
  %dec = add nsw i32 %143, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %144 = load %struct.cset*, %struct.cset** %cs, align 8
  %multis = getelementptr inbounds %struct.cset, %struct.cset* %144, i32 0, i32 4
  %145 = load i8*, i8** %multis, align 8
  %cmp190 = icmp ne i8* %145, null
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %for.end
  %146 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %147 = load %struct.cset*, %struct.cset** %cs, align 8
  call void @mccase(%struct.parse* %146, %struct.cset* %147)
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.192, %for.end
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.end.148
  %148 = load i32, i32* %invert, align 4
  %tobool195 = icmp ne i32 %148, 0
  br i1 %tobool195, label %if.then.196, label %if.end.269

if.then.196:                                      ; preds = %if.end.194
  %149 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g198 = getelementptr inbounds %struct.parse, %struct.parse* %149, i32 0, i32 7
  %150 = load %struct.re_guts*, %struct.re_guts** %g198, align 8
  %csetsize199 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %150, i32 0, i32 2
  %151 = load i32, i32* %csetsize199, align 4
  %sub200 = sub nsw i32 %151, 1
  store i32 %sub200, i32* %i197, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.243, %if.then.196
  %152 = load i32, i32* %i197, align 4
  %cmp202 = icmp sge i32 %152, 0
  br i1 %cmp202, label %for.body.204, label %for.end.245

for.body.204:                                     ; preds = %for.cond.201
  %153 = load i32, i32* %i197, align 4
  %conv205 = trunc i32 %153 to i8
  %idxprom206 = zext i8 %conv205 to i64
  %154 = load %struct.cset*, %struct.cset** %cs, align 8
  %ptr207 = getelementptr inbounds %struct.cset, %struct.cset* %154, i32 0, i32 0
  %155 = load i8*, i8** %ptr207, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %155, i64 %idxprom206
  %156 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %156 to i32
  %157 = load %struct.cset*, %struct.cset** %cs, align 8
  %mask210 = getelementptr inbounds %struct.cset, %struct.cset* %157, i32 0, i32 1
  %158 = load i8, i8* %mask210, align 1
  %conv211 = zext i8 %158 to i32
  %and212 = and i32 %conv209, %conv211
  %tobool213 = icmp ne i32 %and212, 0
  br i1 %tobool213, label %if.then.214, label %if.else.228

if.then.214:                                      ; preds = %for.body.204
  %159 = load %struct.cset*, %struct.cset** %cs, align 8
  %mask215 = getelementptr inbounds %struct.cset, %struct.cset* %159, i32 0, i32 1
  %160 = load i8, i8* %mask215, align 1
  %conv216 = zext i8 %160 to i32
  %neg = xor i32 %conv216, -1
  %161 = load i32, i32* %i197, align 4
  %conv217 = trunc i32 %161 to i8
  %idxprom218 = zext i8 %conv217 to i64
  %162 = load %struct.cset*, %struct.cset** %cs, align 8
  %ptr219 = getelementptr inbounds %struct.cset, %struct.cset* %162, i32 0, i32 0
  %163 = load i8*, i8** %ptr219, align 8
  %arrayidx220 = getelementptr inbounds i8, i8* %163, i64 %idxprom218
  %164 = load i8, i8* %arrayidx220, align 1
  %conv221 = zext i8 %164 to i32
  %and222 = and i32 %conv221, %neg
  %conv223 = trunc i32 %and222 to i8
  store i8 %conv223, i8* %arrayidx220, align 1
  %165 = load i32, i32* %i197, align 4
  %166 = load %struct.cset*, %struct.cset** %cs, align 8
  %hash224 = getelementptr inbounds %struct.cset, %struct.cset* %166, i32 0, i32 2
  %167 = load i8, i8* %hash224, align 1
  %conv225 = zext i8 %167 to i32
  %sub226 = sub nsw i32 %conv225, %165
  %conv227 = trunc i32 %sub226 to i8
  store i8 %conv227, i8* %hash224, align 1
  br label %if.end.242

if.else.228:                                      ; preds = %for.body.204
  %168 = load %struct.cset*, %struct.cset** %cs, align 8
  %mask229 = getelementptr inbounds %struct.cset, %struct.cset* %168, i32 0, i32 1
  %169 = load i8, i8* %mask229, align 1
  %conv230 = zext i8 %169 to i32
  %170 = load i32, i32* %i197, align 4
  %conv231 = trunc i32 %170 to i8
  %idxprom232 = zext i8 %conv231 to i64
  %171 = load %struct.cset*, %struct.cset** %cs, align 8
  %ptr233 = getelementptr inbounds %struct.cset, %struct.cset* %171, i32 0, i32 0
  %172 = load i8*, i8** %ptr233, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %172, i64 %idxprom232
  %173 = load i8, i8* %arrayidx234, align 1
  %conv235 = zext i8 %173 to i32
  %or236 = or i32 %conv235, %conv230
  %conv237 = trunc i32 %or236 to i8
  store i8 %conv237, i8* %arrayidx234, align 1
  %174 = load i32, i32* %i197, align 4
  %175 = load %struct.cset*, %struct.cset** %cs, align 8
  %hash238 = getelementptr inbounds %struct.cset, %struct.cset* %175, i32 0, i32 2
  %176 = load i8, i8* %hash238, align 1
  %conv239 = zext i8 %176 to i32
  %add240 = add nsw i32 %conv239, %174
  %conv241 = trunc i32 %add240 to i8
  store i8 %conv241, i8* %hash238, align 1
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.228, %if.then.214
  br label %for.inc.243

for.inc.243:                                      ; preds = %if.end.242
  %177 = load i32, i32* %i197, align 4
  %dec244 = add nsw i32 %177, -1
  store i32 %dec244, i32* %i197, align 4
  br label %for.cond.201

for.end.245:                                      ; preds = %for.cond.201
  %178 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g246 = getelementptr inbounds %struct.parse, %struct.parse* %178, i32 0, i32 7
  %179 = load %struct.re_guts*, %struct.re_guts** %g246, align 8
  %cflags247 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %179, i32 0, i32 6
  %180 = load i32, i32* %cflags247, align 4
  %and248 = and i32 %180, 8
  %tobool249 = icmp ne i32 %and248, 0
  br i1 %tobool249, label %if.then.250, label %if.end.263

if.then.250:                                      ; preds = %for.end.245
  %181 = load %struct.cset*, %struct.cset** %cs, align 8
  %mask251 = getelementptr inbounds %struct.cset, %struct.cset* %181, i32 0, i32 1
  %182 = load i8, i8* %mask251, align 1
  %conv252 = zext i8 %182 to i32
  %neg253 = xor i32 %conv252, -1
  %183 = load %struct.cset*, %struct.cset** %cs, align 8
  %ptr254 = getelementptr inbounds %struct.cset, %struct.cset* %183, i32 0, i32 0
  %184 = load i8*, i8** %ptr254, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %184, i64 10
  %185 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %185 to i32
  %and257 = and i32 %conv256, %neg253
  %conv258 = trunc i32 %and257 to i8
  store i8 %conv258, i8* %arrayidx255, align 1
  %186 = load %struct.cset*, %struct.cset** %cs, align 8
  %hash259 = getelementptr inbounds %struct.cset, %struct.cset* %186, i32 0, i32 2
  %187 = load i8, i8* %hash259, align 1
  %conv260 = zext i8 %187 to i32
  %sub261 = sub nsw i32 %conv260, 10
  %conv262 = trunc i32 %sub261 to i8
  store i8 %conv262, i8* %hash259, align 1
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.250, %for.end.245
  %188 = load %struct.cset*, %struct.cset** %cs, align 8
  %multis264 = getelementptr inbounds %struct.cset, %struct.cset* %188, i32 0, i32 4
  %189 = load i8*, i8** %multis264, align 8
  %cmp265 = icmp ne i8* %189, null
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %if.end.263
  %190 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %191 = load %struct.cset*, %struct.cset** %cs, align 8
  call void @mcinvert(%struct.parse* %190, %struct.cset* %191)
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.267, %if.end.263
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.end.194
  %192 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %193 = load %struct.cset*, %struct.cset** %cs, align 8
  %call270 = call i32 @nch(%struct.parse* %192, %struct.cset* %193)
  %cmp271 = icmp eq i32 %call270, 1
  br i1 %cmp271, label %if.then.273, label %if.else.275

if.then.273:                                      ; preds = %if.end.269
  %194 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %195 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %196 = load %struct.cset*, %struct.cset** %cs, align 8
  %call274 = call i32 @firstch(%struct.parse* %195, %struct.cset* %196)
  call void @ordinary(%struct.parse* %194, i32 %call274)
  %197 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %198 = load %struct.cset*, %struct.cset** %cs, align 8
  call void @freeset(%struct.parse* %197, %struct.cset* %198)
  br label %if.end.278

if.else.275:                                      ; preds = %if.end.269
  %199 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %200 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %201 = load %struct.cset*, %struct.cset** %cs, align 8
  %call276 = call i32 @freezeset(%struct.parse* %200, %struct.cset* %201)
  %conv277 = sext i32 %call276 to i64
  call void @doemit(%struct.parse* %199, i64 805306368, i64 %conv277)
  br label %if.end.278

if.end.278:                                       ; preds = %if.then, %if.then.13, %if.then.19, %if.then.147, %if.else.275, %if.then.273
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ordinary(%struct.parse* %p, i32 %ch) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %ch.addr = alloca i32, align 4
  %cap = alloca i8*, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 7
  %1 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %categories = getelementptr inbounds %struct.re_guts, %struct.re_guts* %1, i32 0, i32 14
  %2 = load i8*, i8** %categories, align 8
  store i8* %2, i8** %cap, align 8
  %3 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g1 = getelementptr inbounds %struct.parse, %struct.parse* %3, i32 0, i32 7
  %4 = load %struct.re_guts*, %struct.re_guts** %g1, align 8
  %cflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %4, i32 0, i32 6
  %5 = load i32, i32* %cflags, align 4
  %and = and i32 %5, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %ch.addr, align 4
  %conv = trunc i32 %6 to i8
  %conv2 = zext i8 %conv to i32
  %idxprom = sext i32 %conv2 to i64
  %call = call i16** @__ctype_b_loc() #7
  %7 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %8 to i32
  %and4 = and i32 %conv3, 1024
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %ch.addr, align 4
  %call7 = call signext i8 @othercase(i32 %9)
  %conv8 = sext i8 %call7 to i32
  %10 = load i32, i32* %ch.addr, align 4
  %cmp = icmp ne i32 %conv8, %10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.6
  %11 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %12 = load i32, i32* %ch.addr, align 4
  call void @bothcases(%struct.parse* %11, i32 %12)
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true, %entry
  %13 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %14 = load i32, i32* %ch.addr, align 4
  %conv10 = trunc i32 %14 to i8
  %conv11 = zext i8 %conv10 to i64
  call void @doemit(%struct.parse* %13, i64 268435456, i64 %conv11)
  %15 = load i32, i32* %ch.addr, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load i8*, i8** %cap, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom12
  %17 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %17 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.else
  %18 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g18 = getelementptr inbounds %struct.parse, %struct.parse* %18, i32 0, i32 7
  %19 = load %struct.re_guts*, %struct.re_guts** %g18, align 8
  %ncategories = getelementptr inbounds %struct.re_guts, %struct.re_guts* %19, i32 0, i32 13
  %20 = load i32, i32* %ncategories, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %ncategories, align 4
  %conv19 = trunc i32 %20 to i8
  %21 = load i32, i32* %ch.addr, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load i8*, i8** %cap, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %22, i64 %idxprom20
  store i8 %conv19, i8* %arrayidx21, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind uwtable
define internal i32 @p_count(%struct.parse* %p) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %count = alloca i32, align 4
  %ndigits = alloca i32, align 4
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %ndigits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 0
  %1 = load i8*, i8** %next, align 8
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 1
  %3 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %1, %3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %4 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next1 = getelementptr inbounds %struct.parse, %struct.parse* %4, i32 0, i32 0
  %5 = load i8*, i8** %next1, align 8
  %6 = load i8, i8* %5, align 1
  %conv = zext i8 %6 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #7
  %7 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %8 to i32
  %and = and i32 %conv2, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* %count, align 4
  %cmp3 = icmp sle i32 %9, 255
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %count, align 4
  %mul = mul nsw i32 %11, 10
  %12 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next5 = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 0
  %13 = load i8*, i8** %next5, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %next5, align 8
  %14 = load i8, i8* %13, align 1
  %conv6 = sext i8 %14 to i32
  %sub = sub nsw i32 %conv6, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* %count, align 4
  %15 = load i32, i32* %ndigits, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %ndigits, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load i32, i32* %ndigits, align 4
  %cmp7 = icmp sgt i32 %16, 0
  br i1 %cmp7, label %land.lhs.true.9, label %lor.rhs

land.lhs.true.9:                                  ; preds = %while.end
  %17 = load i32, i32* %count, align 4
  %cmp10 = icmp sle i32 %17, 255
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.9, %while.end
  %18 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call12 = call i32 @seterr(%struct.parse* %18, i32 10)
  %tobool13 = icmp ne i32 %call12, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.9
  %19 = phi i1 [ true, %land.lhs.true.9 ], [ %tobool13, %lor.rhs ]
  %lor.ext = zext i1 %19 to i32
  %20 = load i32, i32* %count, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @repeat(%struct.parse* %p, i64 %start, i32 %from, i32 %to) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %start.addr = alloca i64, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %finish = alloca i64, align 8
  %copy = alloca i64, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 5
  %1 = load i64, i64* %slen, align 8
  store i64 %1, i64* %finish, align 8
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %error = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 2
  %3 = load i32, i32* %error, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %from.addr, align 4
  %cmp1 = icmp sle i32 %4, 1
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load i32, i32* %from.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load i32, i32* %from.addr, align 4
  %cmp2 = icmp eq i32 %6, 256
  %cond = select i1 %cmp2, i32 3, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond3 = phi i32 [ %5, %cond.true ], [ %cond, %cond.false ]
  %mul = mul nsw i32 %cond3, 8
  %7 = load i32, i32* %to.addr, align 4
  %cmp4 = icmp sle i32 %7, 1
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  %8 = load i32, i32* %to.addr, align 4
  br label %cond.end.9

cond.false.6:                                     ; preds = %cond.end
  %9 = load i32, i32* %to.addr, align 4
  %cmp7 = icmp eq i32 %9, 256
  %cond8 = select i1 %cmp7, i32 3, i32 2
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ %8, %cond.true.5 ], [ %cond8, %cond.false.6 ]
  %add = add nsw i32 %mul, %cond10
  switch i32 %add, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.13
    i32 2, label %sw.bb.13
    i32 3, label %sw.bb.13
    i32 9, label %sw.bb.32
    i32 10, label %sw.bb.33
    i32 11, label %sw.bb.54
    i32 18, label %sw.bb.60
    i32 19, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %cond.end.9
  %10 = load i64, i64* %finish, align 8
  %11 = load i64, i64* %start.addr, align 8
  %sub = sub nsw i64 %10, %11
  %12 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen11 = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 5
  %13 = load i64, i64* %slen11, align 8
  %sub12 = sub nsw i64 %13, %sub
  store i64 %sub12, i64* %slen11, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %cond.end.9, %cond.end.9, %cond.end.9
  %14 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %15 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen14 = getelementptr inbounds %struct.parse, %struct.parse* %15, i32 0, i32 5
  %16 = load i64, i64* %slen14, align 8
  %17 = load i64, i64* %start.addr, align 8
  %sub15 = sub nsw i64 %16, %17
  %add16 = add nsw i64 %sub15, 1
  %18 = load i64, i64* %start.addr, align 8
  call void @doinsert(%struct.parse* %14, i64 2013265920, i64 %add16, i64 %18)
  %19 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %20 = load i64, i64* %start.addr, align 8
  %add17 = add nsw i64 %20, 1
  %21 = load i32, i32* %to.addr, align 4
  call void @repeat(%struct.parse* %19, i64 %add17, i32 1, i32 %21)
  %22 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %23 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen18 = getelementptr inbounds %struct.parse, %struct.parse* %23, i32 0, i32 5
  %24 = load i64, i64* %slen18, align 8
  %25 = load i64, i64* %start.addr, align 8
  %sub19 = sub nsw i64 %24, %25
  call void @doemit(%struct.parse* %22, i64 2147483648, i64 %sub19)
  %26 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %27 = load i64, i64* %start.addr, align 8
  %28 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen20 = getelementptr inbounds %struct.parse, %struct.parse* %28, i32 0, i32 5
  %29 = load i64, i64* %slen20, align 8
  %30 = load i64, i64* %start.addr, align 8
  %sub21 = sub nsw i64 %29, %30
  call void @dofwd(%struct.parse* %26, i64 %27, i64 %sub21)
  %31 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @doemit(%struct.parse* %31, i64 2281701376, i64 0)
  %32 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %33 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen22 = getelementptr inbounds %struct.parse, %struct.parse* %33, i32 0, i32 5
  %34 = load i64, i64* %slen22, align 8
  %sub23 = sub nsw i64 %34, 1
  %35 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen24 = getelementptr inbounds %struct.parse, %struct.parse* %35, i32 0, i32 5
  %36 = load i64, i64* %slen24, align 8
  %37 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen25 = getelementptr inbounds %struct.parse, %struct.parse* %37, i32 0, i32 5
  %38 = load i64, i64* %slen25, align 8
  %sub26 = sub nsw i64 %38, 1
  %sub27 = sub nsw i64 %36, %sub26
  call void @dofwd(%struct.parse* %32, i64 %sub23, i64 %sub27)
  %39 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %40 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen28 = getelementptr inbounds %struct.parse, %struct.parse* %40, i32 0, i32 5
  %41 = load i64, i64* %slen28, align 8
  %42 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen29 = getelementptr inbounds %struct.parse, %struct.parse* %42, i32 0, i32 5
  %43 = load i64, i64* %slen29, align 8
  %sub30 = sub nsw i64 %43, 2
  %sub31 = sub nsw i64 %41, %sub30
  call void @doemit(%struct.parse* %39, i64 2415919104, i64 %sub31)
  br label %sw.epilog

sw.bb.32:                                         ; preds = %cond.end.9
  br label %sw.epilog

sw.bb.33:                                         ; preds = %cond.end.9
  %44 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %45 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen34 = getelementptr inbounds %struct.parse, %struct.parse* %45, i32 0, i32 5
  %46 = load i64, i64* %slen34, align 8
  %47 = load i64, i64* %start.addr, align 8
  %sub35 = sub nsw i64 %46, %47
  %add36 = add nsw i64 %sub35, 1
  %48 = load i64, i64* %start.addr, align 8
  call void @doinsert(%struct.parse* %44, i64 2013265920, i64 %add36, i64 %48)
  %49 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %50 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen37 = getelementptr inbounds %struct.parse, %struct.parse* %50, i32 0, i32 5
  %51 = load i64, i64* %slen37, align 8
  %52 = load i64, i64* %start.addr, align 8
  %sub38 = sub nsw i64 %51, %52
  call void @doemit(%struct.parse* %49, i64 2147483648, i64 %sub38)
  %53 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %54 = load i64, i64* %start.addr, align 8
  %55 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen39 = getelementptr inbounds %struct.parse, %struct.parse* %55, i32 0, i32 5
  %56 = load i64, i64* %slen39, align 8
  %57 = load i64, i64* %start.addr, align 8
  %sub40 = sub nsw i64 %56, %57
  call void @dofwd(%struct.parse* %53, i64 %54, i64 %sub40)
  %58 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @doemit(%struct.parse* %58, i64 2281701376, i64 0)
  %59 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %60 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen41 = getelementptr inbounds %struct.parse, %struct.parse* %60, i32 0, i32 5
  %61 = load i64, i64* %slen41, align 8
  %sub42 = sub nsw i64 %61, 1
  %62 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen43 = getelementptr inbounds %struct.parse, %struct.parse* %62, i32 0, i32 5
  %63 = load i64, i64* %slen43, align 8
  %64 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen44 = getelementptr inbounds %struct.parse, %struct.parse* %64, i32 0, i32 5
  %65 = load i64, i64* %slen44, align 8
  %sub45 = sub nsw i64 %65, 1
  %sub46 = sub nsw i64 %63, %sub45
  call void @dofwd(%struct.parse* %59, i64 %sub42, i64 %sub46)
  %66 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %67 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen47 = getelementptr inbounds %struct.parse, %struct.parse* %67, i32 0, i32 5
  %68 = load i64, i64* %slen47, align 8
  %69 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen48 = getelementptr inbounds %struct.parse, %struct.parse* %69, i32 0, i32 5
  %70 = load i64, i64* %slen48, align 8
  %sub49 = sub nsw i64 %70, 2
  %sub50 = sub nsw i64 %68, %sub49
  call void @doemit(%struct.parse* %66, i64 2415919104, i64 %sub50)
  %71 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %72 = load i64, i64* %start.addr, align 8
  %add51 = add nsw i64 %72, 1
  %73 = load i64, i64* %finish, align 8
  %add52 = add nsw i64 %73, 1
  %call = call i64 @dupl(%struct.parse* %71, i64 %add51, i64 %add52)
  store i64 %call, i64* %copy, align 8
  %74 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %75 = load i64, i64* %copy, align 8
  %76 = load i32, i32* %to.addr, align 4
  %sub53 = sub nsw i32 %76, 1
  call void @repeat(%struct.parse* %74, i64 %75, i32 1, i32 %sub53)
  br label %sw.epilog

sw.bb.54:                                         ; preds = %cond.end.9
  %77 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %78 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen55 = getelementptr inbounds %struct.parse, %struct.parse* %78, i32 0, i32 5
  %79 = load i64, i64* %slen55, align 8
  %80 = load i64, i64* %start.addr, align 8
  %sub56 = sub nsw i64 %79, %80
  %add57 = add nsw i64 %sub56, 1
  %81 = load i64, i64* %start.addr, align 8
  call void @doinsert(%struct.parse* %77, i64 1207959552, i64 %add57, i64 %81)
  %82 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %83 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen58 = getelementptr inbounds %struct.parse, %struct.parse* %83, i32 0, i32 5
  %84 = load i64, i64* %slen58, align 8
  %85 = load i64, i64* %start.addr, align 8
  %sub59 = sub nsw i64 %84, %85
  call void @doemit(%struct.parse* %82, i64 1342177280, i64 %sub59)
  br label %sw.epilog

sw.bb.60:                                         ; preds = %cond.end.9
  %86 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %87 = load i64, i64* %start.addr, align 8
  %88 = load i64, i64* %finish, align 8
  %call61 = call i64 @dupl(%struct.parse* %86, i64 %87, i64 %88)
  store i64 %call61, i64* %copy, align 8
  %89 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %90 = load i64, i64* %copy, align 8
  %91 = load i32, i32* %from.addr, align 4
  %sub62 = sub nsw i32 %91, 1
  %92 = load i32, i32* %to.addr, align 4
  %sub63 = sub nsw i32 %92, 1
  call void @repeat(%struct.parse* %89, i64 %90, i32 %sub62, i32 %sub63)
  br label %sw.epilog

sw.bb.64:                                         ; preds = %cond.end.9
  %93 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %94 = load i64, i64* %start.addr, align 8
  %95 = load i64, i64* %finish, align 8
  %call65 = call i64 @dupl(%struct.parse* %93, i64 %94, i64 %95)
  store i64 %call65, i64* %copy, align 8
  %96 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %97 = load i64, i64* %copy, align 8
  %98 = load i32, i32* %from.addr, align 4
  %sub66 = sub nsw i32 %98, 1
  %99 = load i32, i32* %to.addr, align 4
  call void @repeat(%struct.parse* %96, i64 %97, i32 %sub66, i32 %99)
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.9
  %100 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call67 = call i32 @seterr(%struct.parse* %100, i32 15)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb.64, %sw.bb.60, %sw.bb.54, %sw.bb.33, %sw.bb.32, %sw.bb.13, %sw.bb
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct.cset* @allocset(%struct.parse* %p) #0 {
entry:
  %retval = alloca %struct.cset*, align 8
  %p.addr = alloca %struct.parse*, align 8
  %no = alloca i32, align 4
  %nc = alloca i64, align 8
  %nbytes = alloca i64, align 8
  %cs = alloca %struct.cset*, align 8
  %css = alloca i64, align 8
  %i = alloca i32, align 4
  %ptr = alloca i8*, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 7
  %1 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %ncsets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %1, i32 0, i32 3
  %2 = load i32, i32* %ncsets, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %ncsets, align 4
  store i32 %2, i32* %no, align 4
  %3 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g1 = getelementptr inbounds %struct.parse, %struct.parse* %3, i32 0, i32 7
  %4 = load %struct.re_guts*, %struct.re_guts** %g1, align 8
  %csetsize = getelementptr inbounds %struct.re_guts, %struct.re_guts* %4, i32 0, i32 2
  %5 = load i32, i32* %csetsize, align 4
  %conv = sext i32 %5 to i64
  store i64 %conv, i64* %css, align 8
  %6 = load i32, i32* %no, align 4
  %7 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %ncsalloc = getelementptr inbounds %struct.parse, %struct.parse* %7, i32 0, i32 6
  %8 = load i32, i32* %ncsalloc, align 4
  %cmp = icmp sge i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  %9 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %ncsalloc3 = getelementptr inbounds %struct.parse, %struct.parse* %9, i32 0, i32 6
  %10 = load i32, i32* %ncsalloc3, align 4
  %add = add nsw i32 %10, 8
  store i32 %add, i32* %ncsalloc3, align 4
  %11 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %ncsalloc4 = getelementptr inbounds %struct.parse, %struct.parse* %11, i32 0, i32 6
  %12 = load i32, i32* %ncsalloc4, align 4
  %conv5 = sext i32 %12 to i64
  store i64 %conv5, i64* %nc, align 8
  %13 = load i64, i64* %nc, align 8
  %div = udiv i64 %13, 8
  %14 = load i64, i64* %css, align 8
  %mul = mul i64 %div, %14
  store i64 %mul, i64* %nbytes, align 8
  %15 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g6 = getelementptr inbounds %struct.parse, %struct.parse* %15, i32 0, i32 7
  %16 = load %struct.re_guts*, %struct.re_guts** %g6, align 8
  %sets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %16, i32 0, i32 4
  %17 = load %struct.cset*, %struct.cset** %sets, align 8
  %18 = bitcast %struct.cset* %17 to i8*
  %19 = load i64, i64* %nc, align 8
  %mul7 = mul i64 %19, 32
  %call = call i8* @cli_realloc(i8* %18, i64 %mul7)
  %20 = bitcast i8* %call to %struct.cset*
  %21 = bitcast %struct.cset* %20 to i8*
  store i8* %21, i8** %ptr, align 8
  %22 = load i8*, i8** %ptr, align 8
  %cmp8 = icmp eq i8* %22, null
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  br label %nomem

if.end:                                           ; preds = %if.then
  %23 = load i8*, i8** %ptr, align 8
  %24 = bitcast i8* %23 to %struct.cset*
  %25 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g11 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 7
  %26 = load %struct.re_guts*, %struct.re_guts** %g11, align 8
  %sets12 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %26, i32 0, i32 4
  store %struct.cset* %24, %struct.cset** %sets12, align 8
  %27 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g13 = getelementptr inbounds %struct.parse, %struct.parse* %27, i32 0, i32 7
  %28 = load %struct.re_guts*, %struct.re_guts** %g13, align 8
  %setbits = getelementptr inbounds %struct.re_guts, %struct.re_guts* %28, i32 0, i32 5
  %29 = load i8*, i8** %setbits, align 8
  %30 = load i64, i64* %nbytes, align 8
  %call14 = call i8* @cli_realloc(i8* %29, i64 %30)
  store i8* %call14, i8** %ptr, align 8
  %31 = load i8*, i8** %ptr, align 8
  %cmp15 = icmp eq i8* %31, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  br label %nomem

if.end.18:                                        ; preds = %if.end
  %32 = load i8*, i8** %ptr, align 8
  %33 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g19 = getelementptr inbounds %struct.parse, %struct.parse* %33, i32 0, i32 7
  %34 = load %struct.re_guts*, %struct.re_guts** %g19, align 8
  %setbits20 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %34, i32 0, i32 5
  store i8* %32, i8** %setbits20, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %no, align 4
  %cmp21 = icmp slt i32 %35, %36
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g23 = getelementptr inbounds %struct.parse, %struct.parse* %37, i32 0, i32 7
  %38 = load %struct.re_guts*, %struct.re_guts** %g23, align 8
  %setbits24 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %38, i32 0, i32 5
  %39 = load i8*, i8** %setbits24, align 8
  %40 = load i64, i64* %css, align 8
  %41 = load i32, i32* %i, align 4
  %div25 = sdiv i32 %41, 8
  %conv26 = sext i32 %div25 to i64
  %mul27 = mul i64 %40, %conv26
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %mul27
  %42 = load i32, i32* %i, align 4
  %idxprom = sext i32 %42 to i64
  %43 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g28 = getelementptr inbounds %struct.parse, %struct.parse* %43, i32 0, i32 7
  %44 = load %struct.re_guts*, %struct.re_guts** %g28, align 8
  %sets29 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %44, i32 0, i32 4
  %45 = load %struct.cset*, %struct.cset** %sets29, align 8
  %arrayidx = getelementptr inbounds %struct.cset, %struct.cset* %45, i64 %idxprom
  %ptr30 = getelementptr inbounds %struct.cset, %struct.cset* %arrayidx, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr30, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %46, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g32 = getelementptr inbounds %struct.parse, %struct.parse* %47, i32 0, i32 7
  %48 = load %struct.re_guts*, %struct.re_guts** %g32, align 8
  %setbits33 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %48, i32 0, i32 5
  %49 = load i8*, i8** %setbits33, align 8
  %50 = load i64, i64* %nbytes, align 8
  %51 = load i64, i64* %css, align 8
  %sub = sub i64 %50, %51
  %add.ptr34 = getelementptr inbounds i8, i8* %49, i64 %sub
  %52 = load i64, i64* %css, align 8
  call void @llvm.memset.p0i8.i64(i8* %add.ptr34, i8 0, i64 %52, i32 1, i1 false)
  br label %if.end.35

if.end.35:                                        ; preds = %for.end, %entry
  %53 = load i32, i32* %no, align 4
  %idxprom36 = sext i32 %53 to i64
  %54 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g37 = getelementptr inbounds %struct.parse, %struct.parse* %54, i32 0, i32 7
  %55 = load %struct.re_guts*, %struct.re_guts** %g37, align 8
  %sets38 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %55, i32 0, i32 4
  %56 = load %struct.cset*, %struct.cset** %sets38, align 8
  %arrayidx39 = getelementptr inbounds %struct.cset, %struct.cset* %56, i64 %idxprom36
  store %struct.cset* %arrayidx39, %struct.cset** %cs, align 8
  %57 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g40 = getelementptr inbounds %struct.parse, %struct.parse* %57, i32 0, i32 7
  %58 = load %struct.re_guts*, %struct.re_guts** %g40, align 8
  %setbits41 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %58, i32 0, i32 5
  %59 = load i8*, i8** %setbits41, align 8
  %60 = load i64, i64* %css, align 8
  %61 = load i32, i32* %no, align 4
  %div42 = sdiv i32 %61, 8
  %conv43 = sext i32 %div42 to i64
  %mul44 = mul i64 %60, %conv43
  %add.ptr45 = getelementptr inbounds i8, i8* %59, i64 %mul44
  %62 = load %struct.cset*, %struct.cset** %cs, align 8
  %ptr46 = getelementptr inbounds %struct.cset, %struct.cset* %62, i32 0, i32 0
  store i8* %add.ptr45, i8** %ptr46, align 8
  %63 = load i32, i32* %no, align 4
  %rem = srem i32 %63, 8
  %shl = shl i32 1, %rem
  %conv47 = trunc i32 %shl to i8
  %64 = load %struct.cset*, %struct.cset** %cs, align 8
  %mask = getelementptr inbounds %struct.cset, %struct.cset* %64, i32 0, i32 1
  store i8 %conv47, i8* %mask, align 1
  %65 = load %struct.cset*, %struct.cset** %cs, align 8
  %hash = getelementptr inbounds %struct.cset, %struct.cset* %65, i32 0, i32 2
  store i8 0, i8* %hash, align 1
  %66 = load %struct.cset*, %struct.cset** %cs, align 8
  %smultis = getelementptr inbounds %struct.cset, %struct.cset* %66, i32 0, i32 3
  store i64 0, i64* %smultis, align 8
  %67 = load %struct.cset*, %struct.cset** %cs, align 8
  %multis = getelementptr inbounds %struct.cset, %struct.cset* %67, i32 0, i32 4
  store i8* null, i8** %multis, align 8
  %68 = load %struct.cset*, %struct.cset** %cs, align 8
  store %struct.cset* %68, %struct.cset** %retval
  br label %return

nomem:                                            ; preds = %if.then.17, %if.then.10
  %69 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g48 = getelementptr inbounds %struct.parse, %struct.parse* %69, i32 0, i32 7
  %70 = load %struct.re_guts*, %struct.re_guts** %g48, align 8
  %sets49 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %70, i32 0, i32 4
  %71 = load %struct.cset*, %struct.cset** %sets49, align 8
  %72 = bitcast %struct.cset* %71 to i8*
  call void @free(i8* %72) #4
  %73 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g50 = getelementptr inbounds %struct.parse, %struct.parse* %73, i32 0, i32 7
  %74 = load %struct.re_guts*, %struct.re_guts** %g50, align 8
  %sets51 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %74, i32 0, i32 4
  store %struct.cset* null, %struct.cset** %sets51, align 8
  %75 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g52 = getelementptr inbounds %struct.parse, %struct.parse* %75, i32 0, i32 7
  %76 = load %struct.re_guts*, %struct.re_guts** %g52, align 8
  %setbits53 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %76, i32 0, i32 5
  %77 = load i8*, i8** %setbits53, align 8
  call void @free(i8* %77) #4
  %78 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g54 = getelementptr inbounds %struct.parse, %struct.parse* %78, i32 0, i32 7
  %79 = load %struct.re_guts*, %struct.re_guts** %g54, align 8
  %setbits55 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %79, i32 0, i32 5
  store i8* null, i8** %setbits55, align 8
  %80 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call56 = call i32 @seterr(%struct.parse* %80, i32 12)
  store %struct.cset* null, %struct.cset** %retval
  br label %return

return:                                           ; preds = %nomem, %if.end.35
  %81 = load %struct.cset*, %struct.cset** %retval
  ret %struct.cset* %81
}

; Function Attrs: nounwind uwtable
define internal void @p_b_term(%struct.parse* %p, %struct.cset* %cs) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %cs.addr = alloca %struct.cset*, align 8
  %c = alloca i8, align 1
  %start = alloca i8, align 1
  %finish = alloca i8, align 1
  %i = alloca i32, align 4
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store %struct.cset* %cs, %struct.cset** %cs.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 0
  %1 = load i8*, i8** %next, align 8
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 1
  %3 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next1 = getelementptr inbounds %struct.parse, %struct.parse* %4, i32 0, i32 0
  %5 = load i8*, i8** %next1, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 91, label %sw.bb
    i32 45, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %cond.end
  %7 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next2 = getelementptr inbounds %struct.parse, %struct.parse* %7, i32 0, i32 0
  %8 = load i8*, i8** %next2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end3 = getelementptr inbounds %struct.parse, %struct.parse* %9, i32 0, i32 1
  %10 = load i8*, i8** %end3, align 8
  %cmp4 = icmp ult i8* %add.ptr, %10
  br i1 %cmp4, label %cond.true.6, label %cond.false.10

cond.true.6:                                      ; preds = %sw.bb
  %11 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next7 = getelementptr inbounds %struct.parse, %struct.parse* %11, i32 0, i32 0
  %12 = load i8*, i8** %next7, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %add.ptr8, align 1
  %conv9 = sext i8 %13 to i32
  br label %cond.end.11

cond.false.10:                                    ; preds = %sw.bb
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.6
  %cond12 = phi i32 [ %conv9, %cond.true.6 ], [ 0, %cond.false.10 ]
  %conv13 = trunc i32 %cond12 to i8
  store i8 %conv13, i8* %c, align 1
  br label %sw.epilog

sw.bb.14:                                         ; preds = %cond.end
  %14 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call = call i32 @seterr(%struct.parse* %14, i32 11)
  br label %sw.epilog.199

sw.default:                                       ; preds = %cond.end
  store i8 0, i8* %c, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.11
  %15 = load i8, i8* %c, align 1
  %conv15 = sext i8 %15 to i32
  switch i32 %conv15, label %sw.default.139 [
    i32 58, label %sw.bb.16
    i32 61, label %sw.bb.75
  ]

sw.bb.16:                                         ; preds = %sw.epilog
  %16 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next17 = getelementptr inbounds %struct.parse, %struct.parse* %16, i32 0, i32 0
  %17 = load i8*, i8** %next17, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %17, i64 2
  store i8* %add.ptr18, i8** %next17, align 8
  %18 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next19 = getelementptr inbounds %struct.parse, %struct.parse* %18, i32 0, i32 0
  %19 = load i8*, i8** %next19, align 8
  %20 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end20 = getelementptr inbounds %struct.parse, %struct.parse* %20, i32 0, i32 1
  %21 = load i8*, i8** %end20, align 8
  %cmp21 = icmp ult i8* %19, %21
  br i1 %cmp21, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.16
  %22 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call23 = call i32 @seterr(%struct.parse* %22, i32 7)
  %tobool = icmp ne i32 %call23, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.16
  %23 = phi i1 [ true, %sw.bb.16 ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32
  %24 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next24 = getelementptr inbounds %struct.parse, %struct.parse* %24, i32 0, i32 0
  %25 = load i8*, i8** %next24, align 8
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %c, align 1
  %27 = load i8, i8* %c, align 1
  %conv25 = sext i8 %27 to i32
  %cmp26 = icmp ne i32 %conv25, 45
  br i1 %cmp26, label %land.lhs.true, label %lor.rhs.31

land.lhs.true:                                    ; preds = %lor.end
  %28 = load i8, i8* %c, align 1
  %conv28 = sext i8 %28 to i32
  %cmp29 = icmp ne i32 %conv28, 93
  br i1 %cmp29, label %lor.end.34, label %lor.rhs.31

lor.rhs.31:                                       ; preds = %land.lhs.true, %lor.end
  %29 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call32 = call i32 @seterr(%struct.parse* %29, i32 4)
  %tobool33 = icmp ne i32 %call32, 0
  br label %lor.end.34

lor.end.34:                                       ; preds = %lor.rhs.31, %land.lhs.true
  %30 = phi i1 [ true, %land.lhs.true ], [ %tobool33, %lor.rhs.31 ]
  %lor.ext35 = zext i1 %30 to i32
  %31 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %32 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  call void @p_b_cclass(%struct.parse* %31, %struct.cset* %32)
  %33 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next36 = getelementptr inbounds %struct.parse, %struct.parse* %33, i32 0, i32 0
  %34 = load i8*, i8** %next36, align 8
  %35 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end37 = getelementptr inbounds %struct.parse, %struct.parse* %35, i32 0, i32 1
  %36 = load i8*, i8** %end37, align 8
  %cmp38 = icmp ult i8* %34, %36
  br i1 %cmp38, label %lor.end.43, label %lor.rhs.40

lor.rhs.40:                                       ; preds = %lor.end.34
  %37 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call41 = call i32 @seterr(%struct.parse* %37, i32 7)
  %tobool42 = icmp ne i32 %call41, 0
  br label %lor.end.43

lor.end.43:                                       ; preds = %lor.rhs.40, %lor.end.34
  %38 = phi i1 [ true, %lor.end.34 ], [ %tobool42, %lor.rhs.40 ]
  %lor.ext44 = zext i1 %38 to i32
  %39 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next45 = getelementptr inbounds %struct.parse, %struct.parse* %39, i32 0, i32 0
  %40 = load i8*, i8** %next45, align 8
  %41 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end46 = getelementptr inbounds %struct.parse, %struct.parse* %41, i32 0, i32 1
  %42 = load i8*, i8** %end46, align 8
  %cmp47 = icmp ult i8* %40, %42
  br i1 %cmp47, label %land.lhs.true.49, label %cond.false.69

land.lhs.true.49:                                 ; preds = %lor.end.43
  %43 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next50 = getelementptr inbounds %struct.parse, %struct.parse* %43, i32 0, i32 0
  %44 = load i8*, i8** %next50, align 8
  %add.ptr51 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end52 = getelementptr inbounds %struct.parse, %struct.parse* %45, i32 0, i32 1
  %46 = load i8*, i8** %end52, align 8
  %cmp53 = icmp ult i8* %add.ptr51, %46
  br i1 %cmp53, label %land.lhs.true.55, label %cond.false.69

land.lhs.true.55:                                 ; preds = %land.lhs.true.49
  %47 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next56 = getelementptr inbounds %struct.parse, %struct.parse* %47, i32 0, i32 0
  %48 = load i8*, i8** %next56, align 8
  %49 = load i8, i8* %48, align 1
  %conv57 = sext i8 %49 to i32
  %cmp58 = icmp eq i32 %conv57, 58
  br i1 %cmp58, label %land.lhs.true.60, label %cond.false.69

land.lhs.true.60:                                 ; preds = %land.lhs.true.55
  %50 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next61 = getelementptr inbounds %struct.parse, %struct.parse* %50, i32 0, i32 0
  %51 = load i8*, i8** %next61, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %add.ptr62, align 1
  %conv63 = sext i8 %52 to i32
  %cmp64 = icmp eq i32 %conv63, 93
  br i1 %cmp64, label %cond.true.66, label %cond.false.69

cond.true.66:                                     ; preds = %land.lhs.true.60
  %53 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next67 = getelementptr inbounds %struct.parse, %struct.parse* %53, i32 0, i32 0
  %54 = load i8*, i8** %next67, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %54, i64 2
  store i8* %add.ptr68, i8** %next67, align 8
  br i1 true, label %lor.end.73, label %lor.rhs.70

cond.false.69:                                    ; preds = %land.lhs.true.60, %land.lhs.true.55, %land.lhs.true.49, %lor.end.43
  br i1 false, label %lor.end.73, label %lor.rhs.70

lor.rhs.70:                                       ; preds = %cond.false.69, %cond.true.66
  %55 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call71 = call i32 @seterr(%struct.parse* %55, i32 4)
  %tobool72 = icmp ne i32 %call71, 0
  br label %lor.end.73

lor.end.73:                                       ; preds = %lor.rhs.70, %cond.false.69, %cond.true.66
  %56 = phi i1 [ true, %cond.false.69 ], [ true, %cond.true.66 ], [ %tobool72, %lor.rhs.70 ]
  %lor.ext74 = zext i1 %56 to i32
  br label %sw.epilog.199

sw.bb.75:                                         ; preds = %sw.epilog
  %57 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next76 = getelementptr inbounds %struct.parse, %struct.parse* %57, i32 0, i32 0
  %58 = load i8*, i8** %next76, align 8
  %add.ptr77 = getelementptr inbounds i8, i8* %58, i64 2
  store i8* %add.ptr77, i8** %next76, align 8
  %59 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next78 = getelementptr inbounds %struct.parse, %struct.parse* %59, i32 0, i32 0
  %60 = load i8*, i8** %next78, align 8
  %61 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end79 = getelementptr inbounds %struct.parse, %struct.parse* %61, i32 0, i32 1
  %62 = load i8*, i8** %end79, align 8
  %cmp80 = icmp ult i8* %60, %62
  br i1 %cmp80, label %lor.end.85, label %lor.rhs.82

lor.rhs.82:                                       ; preds = %sw.bb.75
  %63 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call83 = call i32 @seterr(%struct.parse* %63, i32 7)
  %tobool84 = icmp ne i32 %call83, 0
  br label %lor.end.85

lor.end.85:                                       ; preds = %lor.rhs.82, %sw.bb.75
  %64 = phi i1 [ true, %sw.bb.75 ], [ %tobool84, %lor.rhs.82 ]
  %lor.ext86 = zext i1 %64 to i32
  %65 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next87 = getelementptr inbounds %struct.parse, %struct.parse* %65, i32 0, i32 0
  %66 = load i8*, i8** %next87, align 8
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %c, align 1
  %68 = load i8, i8* %c, align 1
  %conv88 = sext i8 %68 to i32
  %cmp89 = icmp ne i32 %conv88, 45
  br i1 %cmp89, label %land.lhs.true.91, label %lor.rhs.95

land.lhs.true.91:                                 ; preds = %lor.end.85
  %69 = load i8, i8* %c, align 1
  %conv92 = sext i8 %69 to i32
  %cmp93 = icmp ne i32 %conv92, 93
  br i1 %cmp93, label %lor.end.98, label %lor.rhs.95

lor.rhs.95:                                       ; preds = %land.lhs.true.91, %lor.end.85
  %70 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call96 = call i32 @seterr(%struct.parse* %70, i32 3)
  %tobool97 = icmp ne i32 %call96, 0
  br label %lor.end.98

lor.end.98:                                       ; preds = %lor.rhs.95, %land.lhs.true.91
  %71 = phi i1 [ true, %land.lhs.true.91 ], [ %tobool97, %lor.rhs.95 ]
  %lor.ext99 = zext i1 %71 to i32
  %72 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %73 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  call void @p_b_eclass(%struct.parse* %72, %struct.cset* %73)
  %74 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next100 = getelementptr inbounds %struct.parse, %struct.parse* %74, i32 0, i32 0
  %75 = load i8*, i8** %next100, align 8
  %76 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end101 = getelementptr inbounds %struct.parse, %struct.parse* %76, i32 0, i32 1
  %77 = load i8*, i8** %end101, align 8
  %cmp102 = icmp ult i8* %75, %77
  br i1 %cmp102, label %lor.end.107, label %lor.rhs.104

lor.rhs.104:                                      ; preds = %lor.end.98
  %78 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call105 = call i32 @seterr(%struct.parse* %78, i32 7)
  %tobool106 = icmp ne i32 %call105, 0
  br label %lor.end.107

lor.end.107:                                      ; preds = %lor.rhs.104, %lor.end.98
  %79 = phi i1 [ true, %lor.end.98 ], [ %tobool106, %lor.rhs.104 ]
  %lor.ext108 = zext i1 %79 to i32
  %80 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next109 = getelementptr inbounds %struct.parse, %struct.parse* %80, i32 0, i32 0
  %81 = load i8*, i8** %next109, align 8
  %82 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end110 = getelementptr inbounds %struct.parse, %struct.parse* %82, i32 0, i32 1
  %83 = load i8*, i8** %end110, align 8
  %cmp111 = icmp ult i8* %81, %83
  br i1 %cmp111, label %land.lhs.true.113, label %cond.false.133

land.lhs.true.113:                                ; preds = %lor.end.107
  %84 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next114 = getelementptr inbounds %struct.parse, %struct.parse* %84, i32 0, i32 0
  %85 = load i8*, i8** %next114, align 8
  %add.ptr115 = getelementptr inbounds i8, i8* %85, i64 1
  %86 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end116 = getelementptr inbounds %struct.parse, %struct.parse* %86, i32 0, i32 1
  %87 = load i8*, i8** %end116, align 8
  %cmp117 = icmp ult i8* %add.ptr115, %87
  br i1 %cmp117, label %land.lhs.true.119, label %cond.false.133

land.lhs.true.119:                                ; preds = %land.lhs.true.113
  %88 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next120 = getelementptr inbounds %struct.parse, %struct.parse* %88, i32 0, i32 0
  %89 = load i8*, i8** %next120, align 8
  %90 = load i8, i8* %89, align 1
  %conv121 = sext i8 %90 to i32
  %cmp122 = icmp eq i32 %conv121, 61
  br i1 %cmp122, label %land.lhs.true.124, label %cond.false.133

land.lhs.true.124:                                ; preds = %land.lhs.true.119
  %91 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next125 = getelementptr inbounds %struct.parse, %struct.parse* %91, i32 0, i32 0
  %92 = load i8*, i8** %next125, align 8
  %add.ptr126 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i8, i8* %add.ptr126, align 1
  %conv127 = sext i8 %93 to i32
  %cmp128 = icmp eq i32 %conv127, 93
  br i1 %cmp128, label %cond.true.130, label %cond.false.133

cond.true.130:                                    ; preds = %land.lhs.true.124
  %94 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next131 = getelementptr inbounds %struct.parse, %struct.parse* %94, i32 0, i32 0
  %95 = load i8*, i8** %next131, align 8
  %add.ptr132 = getelementptr inbounds i8, i8* %95, i64 2
  store i8* %add.ptr132, i8** %next131, align 8
  br i1 true, label %lor.end.137, label %lor.rhs.134

cond.false.133:                                   ; preds = %land.lhs.true.124, %land.lhs.true.119, %land.lhs.true.113, %lor.end.107
  br i1 false, label %lor.end.137, label %lor.rhs.134

lor.rhs.134:                                      ; preds = %cond.false.133, %cond.true.130
  %96 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call135 = call i32 @seterr(%struct.parse* %96, i32 3)
  %tobool136 = icmp ne i32 %call135, 0
  br label %lor.end.137

lor.end.137:                                      ; preds = %lor.rhs.134, %cond.false.133, %cond.true.130
  %97 = phi i1 [ true, %cond.false.133 ], [ true, %cond.true.130 ], [ %tobool136, %lor.rhs.134 ]
  %lor.ext138 = zext i1 %97 to i32
  br label %sw.epilog.199

sw.default.139:                                   ; preds = %sw.epilog
  %98 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call140 = call signext i8 @p_b_symbol(%struct.parse* %98)
  store i8 %call140, i8* %start, align 1
  %99 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next141 = getelementptr inbounds %struct.parse, %struct.parse* %99, i32 0, i32 0
  %100 = load i8*, i8** %next141, align 8
  %101 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end142 = getelementptr inbounds %struct.parse, %struct.parse* %101, i32 0, i32 1
  %102 = load i8*, i8** %end142, align 8
  %cmp143 = icmp ult i8* %100, %102
  br i1 %cmp143, label %land.lhs.true.145, label %if.else.178

land.lhs.true.145:                                ; preds = %sw.default.139
  %103 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next146 = getelementptr inbounds %struct.parse, %struct.parse* %103, i32 0, i32 0
  %104 = load i8*, i8** %next146, align 8
  %105 = load i8, i8* %104, align 1
  %conv147 = sext i8 %105 to i32
  %cmp148 = icmp eq i32 %conv147, 45
  br i1 %cmp148, label %land.lhs.true.150, label %if.else.178

land.lhs.true.150:                                ; preds = %land.lhs.true.145
  %106 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next151 = getelementptr inbounds %struct.parse, %struct.parse* %106, i32 0, i32 0
  %107 = load i8*, i8** %next151, align 8
  %add.ptr152 = getelementptr inbounds i8, i8* %107, i64 1
  %108 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end153 = getelementptr inbounds %struct.parse, %struct.parse* %108, i32 0, i32 1
  %109 = load i8*, i8** %end153, align 8
  %cmp154 = icmp ult i8* %add.ptr152, %109
  br i1 %cmp154, label %land.lhs.true.156, label %if.else.178

land.lhs.true.156:                                ; preds = %land.lhs.true.150
  %110 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next157 = getelementptr inbounds %struct.parse, %struct.parse* %110, i32 0, i32 0
  %111 = load i8*, i8** %next157, align 8
  %add.ptr158 = getelementptr inbounds i8, i8* %111, i64 1
  %112 = load i8, i8* %add.ptr158, align 1
  %conv159 = sext i8 %112 to i32
  %cmp160 = icmp ne i32 %conv159, 93
  br i1 %cmp160, label %if.then, label %if.else.178

if.then:                                          ; preds = %land.lhs.true.156
  %113 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next162 = getelementptr inbounds %struct.parse, %struct.parse* %113, i32 0, i32 0
  %114 = load i8*, i8** %next162, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr, i8** %next162, align 8
  %115 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next163 = getelementptr inbounds %struct.parse, %struct.parse* %115, i32 0, i32 0
  %116 = load i8*, i8** %next163, align 8
  %117 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end164 = getelementptr inbounds %struct.parse, %struct.parse* %117, i32 0, i32 1
  %118 = load i8*, i8** %end164, align 8
  %cmp165 = icmp ult i8* %116, %118
  br i1 %cmp165, label %land.lhs.true.167, label %cond.false.175

land.lhs.true.167:                                ; preds = %if.then
  %119 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next168 = getelementptr inbounds %struct.parse, %struct.parse* %119, i32 0, i32 0
  %120 = load i8*, i8** %next168, align 8
  %121 = load i8, i8* %120, align 1
  %conv169 = sext i8 %121 to i32
  %cmp170 = icmp eq i32 %conv169, 45
  br i1 %cmp170, label %cond.true.172, label %cond.false.175

cond.true.172:                                    ; preds = %land.lhs.true.167
  %122 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next173 = getelementptr inbounds %struct.parse, %struct.parse* %122, i32 0, i32 0
  %123 = load i8*, i8** %next173, align 8
  %incdec.ptr174 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr174, i8** %next173, align 8
  br i1 true, label %if.then.176, label %if.else

cond.false.175:                                   ; preds = %land.lhs.true.167, %if.then
  br i1 false, label %if.then.176, label %if.else

if.then.176:                                      ; preds = %cond.false.175, %cond.true.172
  store i8 45, i8* %finish, align 1
  br label %if.end

if.else:                                          ; preds = %cond.false.175, %cond.true.172
  %124 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call177 = call signext i8 @p_b_symbol(%struct.parse* %124)
  store i8 %call177, i8* %finish, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.176
  br label %if.end.179

if.else.178:                                      ; preds = %land.lhs.true.156, %land.lhs.true.150, %land.lhs.true.145, %sw.default.139
  %125 = load i8, i8* %start, align 1
  store i8 %125, i8* %finish, align 1
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.178, %if.end
  %126 = load i8, i8* %start, align 1
  %conv180 = sext i8 %126 to i32
  %127 = load i8, i8* %finish, align 1
  %conv181 = sext i8 %127 to i32
  %cmp182 = icmp sle i32 %conv180, %conv181
  br i1 %cmp182, label %lor.end.187, label %lor.rhs.184

lor.rhs.184:                                      ; preds = %if.end.179
  %128 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call185 = call i32 @seterr(%struct.parse* %128, i32 11)
  %tobool186 = icmp ne i32 %call185, 0
  br label %lor.end.187

lor.end.187:                                      ; preds = %lor.rhs.184, %if.end.179
  %129 = phi i1 [ true, %if.end.179 ], [ %tobool186, %lor.rhs.184 ]
  %lor.ext188 = zext i1 %129 to i32
  %130 = load i8, i8* %start, align 1
  %conv189 = sext i8 %130 to i32
  store i32 %conv189, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %lor.end.187
  %131 = load i32, i32* %i, align 4
  %132 = load i8, i8* %finish, align 1
  %conv190 = sext i8 %132 to i32
  %cmp191 = icmp sle i32 %131, %conv190
  br i1 %cmp191, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %133 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %mask = getelementptr inbounds %struct.cset, %struct.cset* %133, i32 0, i32 1
  %134 = load i8, i8* %mask, align 1
  %conv193 = zext i8 %134 to i32
  %135 = load i32, i32* %i, align 4
  %conv194 = trunc i32 %135 to i8
  %idxprom = zext i8 %conv194 to i64
  %136 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %ptr = getelementptr inbounds %struct.cset, %struct.cset* %136, i32 0, i32 0
  %137 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %137, i64 %idxprom
  %138 = load i8, i8* %arrayidx, align 1
  %conv195 = zext i8 %138 to i32
  %or = or i32 %conv195, %conv193
  %conv196 = trunc i32 %or to i8
  store i8 %conv196, i8* %arrayidx, align 1
  %139 = load i32, i32* %i, align 4
  %140 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %hash = getelementptr inbounds %struct.cset, %struct.cset* %140, i32 0, i32 2
  %141 = load i8, i8* %hash, align 1
  %conv197 = zext i8 %141 to i32
  %add = add nsw i32 %conv197, %139
  %conv198 = trunc i32 %add to i8
  store i8 %conv198, i8* %hash, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %142 = load i32, i32* %i, align 4
  %inc = add nsw i32 %142, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog.199

sw.epilog.199:                                    ; preds = %sw.bb.14, %for.end, %lor.end.137, %lor.end.73
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freeset(%struct.parse* %p, %struct.cset* %cs) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %cs.addr = alloca %struct.cset*, align 8
  %i = alloca i64, align 8
  %top = alloca %struct.cset*, align 8
  %css = alloca i64, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store %struct.cset* %cs, %struct.cset** %cs.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 7
  %1 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %ncsets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %1, i32 0, i32 3
  %2 = load i32, i32* %ncsets, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g1 = getelementptr inbounds %struct.parse, %struct.parse* %3, i32 0, i32 7
  %4 = load %struct.re_guts*, %struct.re_guts** %g1, align 8
  %sets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %4, i32 0, i32 4
  %5 = load %struct.cset*, %struct.cset** %sets, align 8
  %arrayidx = getelementptr inbounds %struct.cset, %struct.cset* %5, i64 %idxprom
  store %struct.cset* %arrayidx, %struct.cset** %top, align 8
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g2 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 7
  %7 = load %struct.re_guts*, %struct.re_guts** %g2, align 8
  %csetsize = getelementptr inbounds %struct.re_guts, %struct.re_guts* %7, i32 0, i32 2
  %8 = load i32, i32* %csetsize, align 4
  %conv = sext i32 %8 to i64
  store i64 %conv, i64* %css, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %css, align 8
  %cmp = icmp ult i64 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %mask = getelementptr inbounds %struct.cset, %struct.cset* %11, i32 0, i32 1
  %12 = load i8, i8* %mask, align 1
  %conv4 = zext i8 %12 to i32
  %neg = xor i32 %conv4, -1
  %13 = load i64, i64* %i, align 8
  %conv5 = trunc i64 %13 to i8
  %idxprom6 = zext i8 %conv5 to i64
  %14 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %ptr = getelementptr inbounds %struct.cset, %struct.cset* %14, i32 0, i32 0
  %15 = load i8*, i8** %ptr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %15, i64 %idxprom6
  %16 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %16 to i32
  %and = and i32 %conv8, %neg
  %conv9 = trunc i32 %and to i8
  store i8 %conv9, i8* %arrayidx7, align 1
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %hash = getelementptr inbounds %struct.cset, %struct.cset* %18, i32 0, i32 2
  %19 = load i8, i8* %hash, align 1
  %conv10 = zext i8 %19 to i64
  %sub = sub i64 %conv10, %17
  %conv11 = trunc i64 %sub to i8
  store i8 %conv11, i8* %hash, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i64, i64* %i, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %22 = load %struct.cset*, %struct.cset** %top, align 8
  %add.ptr = getelementptr inbounds %struct.cset, %struct.cset* %22, i64 -1
  %cmp12 = icmp eq %struct.cset* %21, %add.ptr
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %23 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g14 = getelementptr inbounds %struct.parse, %struct.parse* %23, i32 0, i32 7
  %24 = load %struct.re_guts*, %struct.re_guts** %g14, align 8
  %ncsets15 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %24, i32 0, i32 3
  %25 = load i32, i32* %ncsets15, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %ncsets15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal signext i8 @othercase(i32 %ch) #0 {
entry:
  %retval = alloca i8, align 1
  %ch.addr = alloca i32, align 4
  store i32 %ch, i32* %ch.addr, align 4
  %0 = load i32, i32* %ch.addr, align 4
  %conv = trunc i32 %0 to i8
  %conv1 = zext i8 %conv to i32
  store i32 %conv1, i32* %ch.addr, align 4
  %1 = load i32, i32* %ch.addr, align 4
  %idxprom = sext i32 %1 to i64
  %call = call i16** @__ctype_b_loc() #7
  %2 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %3 to i32
  %and = and i32 %conv2, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ch.addr, align 4
  %call3 = call i32 @tolower(i32 %4) #4
  %conv4 = trunc i32 %call3 to i8
  store i8 %conv4, i8* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ch.addr, align 4
  %idxprom5 = sext i32 %5 to i64
  %call6 = call i16** @__ctype_b_loc() #7
  %6 = load i16*, i16** %call6, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %6, i64 %idxprom5
  %7 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %7 to i32
  %and9 = and i32 %conv8, 512
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %if.else
  %8 = load i32, i32* %ch.addr, align 4
  %call12 = call i32 @toupper(i32 %8) #4
  %conv13 = trunc i32 %call12 to i8
  store i8 %conv13, i8* %retval
  br label %return

if.else.14:                                       ; preds = %if.else
  %9 = load i32, i32* %ch.addr, align 4
  %conv15 = trunc i32 %9 to i8
  store i8 %conv15, i8* %retval
  br label %return

return:                                           ; preds = %if.else.14, %if.then.11, %if.then
  %10 = load i8, i8* %retval
  ret i8 %10
}

; Function Attrs: nounwind uwtable
define internal void @mccase(%struct.parse* %p, %struct.cset* %cs) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %cs.addr = alloca %struct.cset*, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store %struct.cset* %cs, %struct.cset** %cs.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mcinvert(%struct.parse* %p, %struct.cset* %cs) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %cs.addr = alloca %struct.cset*, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store %struct.cset* %cs, %struct.cset** %cs.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @nch(%struct.parse* %p, %struct.cset* %cs) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %cs.addr = alloca %struct.cset*, align 8
  %i = alloca i64, align 8
  %css = alloca i64, align 8
  %n = alloca i32, align 4
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store %struct.cset* %cs, %struct.cset** %cs.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 7
  %1 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %csetsize = getelementptr inbounds %struct.re_guts, %struct.re_guts* %1, i32 0, i32 2
  %2 = load i32, i32* %csetsize, align 4
  %conv = sext i32 %2 to i64
  store i64 %conv, i64* %css, align 8
  store i32 0, i32* %n, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %css, align 8
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %i, align 8
  %conv2 = trunc i64 %5 to i8
  %idxprom = zext i8 %conv2 to i64
  %6 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %ptr = getelementptr inbounds %struct.cset, %struct.cset* %6, i32 0, i32 0
  %7 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %8 to i32
  %9 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %mask = getelementptr inbounds %struct.cset, %struct.cset* %9, i32 0, i32 1
  %10 = load i8, i8* %mask, align 1
  %conv4 = zext i8 %10 to i32
  %and = and i32 %conv3, %conv4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %n, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i64, i64* %i, align 8
  %inc5 = add i64 %12, 1
  store i64 %inc5, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %n, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @firstch(%struct.parse* %p, %struct.cset* %cs) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.parse*, align 8
  %cs.addr = alloca %struct.cset*, align 8
  %i = alloca i64, align 8
  %css = alloca i64, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store %struct.cset* %cs, %struct.cset** %cs.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 7
  %1 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %csetsize = getelementptr inbounds %struct.re_guts, %struct.re_guts* %1, i32 0, i32 2
  %2 = load i32, i32* %csetsize, align 4
  %conv = sext i32 %2 to i64
  store i64 %conv, i64* %css, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %css, align 8
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %i, align 8
  %conv2 = trunc i64 %5 to i8
  %idxprom = zext i8 %conv2 to i64
  %6 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %ptr = getelementptr inbounds %struct.cset, %struct.cset* %6, i32 0, i32 0
  %7 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %8 to i32
  %9 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %mask = getelementptr inbounds %struct.cset, %struct.cset* %9, i32 0, i32 1
  %10 = load i8, i8* %mask, align 1
  %conv4 = zext i8 %10 to i32
  %and = and i32 %conv3, %conv4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %conv5 = trunc i64 %11 to i8
  %conv6 = sext i8 %conv5 to i32
  store i32 %conv6, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i64, i64* %i, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @freezeset(%struct.parse* %p, %struct.cset* %cs) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %cs.addr = alloca %struct.cset*, align 8
  %h = alloca i8, align 1
  %i = alloca i64, align 8
  %top = alloca %struct.cset*, align 8
  %cs2 = alloca %struct.cset*, align 8
  %css = alloca i64, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store %struct.cset* %cs, %struct.cset** %cs.addr, align 8
  %0 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %hash = getelementptr inbounds %struct.cset, %struct.cset* %0, i32 0, i32 2
  %1 = load i8, i8* %hash, align 1
  store i8 %1, i8* %h, align 1
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 7
  %3 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %ncsets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %3, i32 0, i32 3
  %4 = load i32, i32* %ncsets, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g1 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 7
  %6 = load %struct.re_guts*, %struct.re_guts** %g1, align 8
  %sets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %6, i32 0, i32 4
  %7 = load %struct.cset*, %struct.cset** %sets, align 8
  %arrayidx = getelementptr inbounds %struct.cset, %struct.cset* %7, i64 %idxprom
  store %struct.cset* %arrayidx, %struct.cset** %top, align 8
  %8 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g2 = getelementptr inbounds %struct.parse, %struct.parse* %8, i32 0, i32 7
  %9 = load %struct.re_guts*, %struct.re_guts** %g2, align 8
  %csetsize = getelementptr inbounds %struct.re_guts, %struct.re_guts* %9, i32 0, i32 2
  %10 = load i32, i32* %csetsize, align 4
  %conv = sext i32 %10 to i64
  store i64 %conv, i64* %css, align 8
  %11 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g3 = getelementptr inbounds %struct.parse, %struct.parse* %11, i32 0, i32 7
  %12 = load %struct.re_guts*, %struct.re_guts** %g3, align 8
  %sets4 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %12, i32 0, i32 4
  %13 = load %struct.cset*, %struct.cset** %sets4, align 8
  %arrayidx5 = getelementptr inbounds %struct.cset, %struct.cset* %13, i64 0
  store %struct.cset* %arrayidx5, %struct.cset** %cs2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %entry
  %14 = load %struct.cset*, %struct.cset** %cs2, align 8
  %15 = load %struct.cset*, %struct.cset** %top, align 8
  %cmp = icmp ult %struct.cset* %14, %15
  br i1 %cmp, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  %16 = load %struct.cset*, %struct.cset** %cs2, align 8
  %hash7 = getelementptr inbounds %struct.cset, %struct.cset* %16, i32 0, i32 2
  %17 = load i8, i8* %hash7, align 1
  %conv8 = zext i8 %17 to i32
  %18 = load i8, i8* %h, align 1
  %conv9 = zext i8 %18 to i32
  %cmp10 = icmp eq i32 %conv8, %conv9
  br i1 %cmp10, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %for.body
  %19 = load %struct.cset*, %struct.cset** %cs2, align 8
  %20 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %cmp12 = icmp ne %struct.cset* %19, %20
  br i1 %cmp12, label %if.then, label %if.end.44

if.then:                                          ; preds = %land.lhs.true
  store i64 0, i64* %i, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.then
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %css, align 8
  %cmp15 = icmp ult i64 %21, %22
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %23 = load i64, i64* %i, align 8
  %conv18 = trunc i64 %23 to i8
  %idxprom19 = zext i8 %conv18 to i64
  %24 = load %struct.cset*, %struct.cset** %cs2, align 8
  %ptr = getelementptr inbounds %struct.cset, %struct.cset* %24, i32 0, i32 0
  %25 = load i8*, i8** %ptr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %25, i64 %idxprom19
  %26 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %26 to i32
  %27 = load %struct.cset*, %struct.cset** %cs2, align 8
  %mask = getelementptr inbounds %struct.cset, %struct.cset* %27, i32 0, i32 1
  %28 = load i8, i8* %mask, align 1
  %conv22 = zext i8 %28 to i32
  %and = and i32 %conv21, %conv22
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot23 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot23 to i32
  %29 = load i64, i64* %i, align 8
  %conv24 = trunc i64 %29 to i8
  %idxprom25 = zext i8 %conv24 to i64
  %30 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %ptr26 = getelementptr inbounds %struct.cset, %struct.cset* %30, i32 0, i32 0
  %31 = load i8*, i8** %ptr26, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %31, i64 %idxprom25
  %32 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %32 to i32
  %33 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %mask29 = getelementptr inbounds %struct.cset, %struct.cset* %33, i32 0, i32 1
  %34 = load i8, i8* %mask29, align 1
  %conv30 = zext i8 %34 to i32
  %and31 = and i32 %conv28, %conv30
  %tobool32 = icmp ne i32 %and31, 0
  %lnot33 = xor i1 %tobool32, true
  %lnot35 = xor i1 %lnot33, true
  %lnot.ext36 = zext i1 %lnot35 to i32
  %cmp37 = icmp ne i32 %lnot.ext, %lnot.ext36
  br i1 %cmp37, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %for.body.17
  br label %for.end

if.end:                                           ; preds = %for.body.17
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %35 = load i64, i64* %i, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.14

for.end:                                          ; preds = %if.then.39, %for.cond.14
  %36 = load i64, i64* %i, align 8
  %37 = load i64, i64* %css, align 8
  %cmp40 = icmp eq i64 %36, %37
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.end
  br label %for.end.46

if.end.43:                                        ; preds = %for.end
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %land.lhs.true, %for.body
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %38 = load %struct.cset*, %struct.cset** %cs2, align 8
  %incdec.ptr = getelementptr inbounds %struct.cset, %struct.cset* %38, i32 1
  store %struct.cset* %incdec.ptr, %struct.cset** %cs2, align 8
  br label %for.cond

for.end.46:                                       ; preds = %if.then.42, %for.cond
  %39 = load %struct.cset*, %struct.cset** %cs2, align 8
  %40 = load %struct.cset*, %struct.cset** %top, align 8
  %cmp47 = icmp ult %struct.cset* %39, %40
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.end.46
  %41 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %42 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  call void @freeset(%struct.parse* %41, %struct.cset* %42)
  %43 = load %struct.cset*, %struct.cset** %cs2, align 8
  store %struct.cset* %43, %struct.cset** %cs.addr, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %for.end.46
  %44 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %45 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g51 = getelementptr inbounds %struct.parse, %struct.parse* %45, i32 0, i32 7
  %46 = load %struct.re_guts*, %struct.re_guts** %g51, align 8
  %sets52 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %46, i32 0, i32 4
  %47 = load %struct.cset*, %struct.cset** %sets52, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.cset* %44 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.cset* %47 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  %conv53 = trunc i64 %sub.ptr.div to i32
  ret i32 %conv53
}

declare i8* @cli_realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @p_b_cclass(%struct.parse* %p, %struct.cset* %cs) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %cs.addr = alloca %struct.cset*, align 8
  %sp = alloca i8*, align 8
  %cp = alloca %struct.cclass*, align 8
  %len = alloca i64, align 8
  %u = alloca i8*, align 8
  %c = alloca i8, align 1
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store %struct.cset* %cs, %struct.cset** %cs.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 0
  %1 = load i8*, i8** %next, align 8
  store i8* %1, i8** %sp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next1 = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 0
  %3 = load i8*, i8** %next1, align 8
  %4 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %4, i32 0, i32 1
  %5 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %3, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next2 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 0
  %7 = load i8*, i8** %next2, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #7
  %9 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %10 to i32
  %and = and i32 %conv3, 1024
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next4 = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 0
  %13 = load i8*, i8** %next4, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %next4, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next5 = getelementptr inbounds %struct.parse, %struct.parse* %14, i32 0, i32 0
  %15 = load i8*, i8** %next5, align 8
  %16 = load i8*, i8** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8
  store %struct.cclass* getelementptr inbounds ([13 x %struct.cclass], [13 x %struct.cclass]* @cclasses, i32 0, i32 0), %struct.cclass** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %17 = load %struct.cclass*, %struct.cclass** %cp, align 8
  %name = getelementptr inbounds %struct.cclass, %struct.cclass* %17, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  %cmp6 = icmp ne i8* %18, null
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.cclass*, %struct.cclass** %cp, align 8
  %name8 = getelementptr inbounds %struct.cclass, %struct.cclass* %19, i32 0, i32 0
  %20 = load i8*, i8** %name8, align 8
  %21 = load i8*, i8** %sp, align 8
  %22 = load i64, i64* %len, align 8
  %call9 = call i32 @strncmp(i8* %20, i8* %21, i64 %22) #6
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %23 = load i64, i64* %len, align 8
  %24 = load %struct.cclass*, %struct.cclass** %cp, align 8
  %name12 = getelementptr inbounds %struct.cclass, %struct.cclass* %24, i32 0, i32 0
  %25 = load i8*, i8** %name12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %25, i64 %23
  %26 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %26 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load %struct.cclass*, %struct.cclass** %cp, align 8
  %incdec.ptr17 = getelementptr inbounds %struct.cclass, %struct.cclass* %27, i32 1
  store %struct.cclass* %incdec.ptr17, %struct.cclass** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %28 = load %struct.cclass*, %struct.cclass** %cp, align 8
  %name18 = getelementptr inbounds %struct.cclass, %struct.cclass* %28, i32 0, i32 0
  %29 = load i8*, i8** %name18, align 8
  %cmp19 = icmp eq i8* %29, null
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %for.end
  %30 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call22 = call i32 @seterr(%struct.parse* %30, i32 4)
  br label %for.end.47

if.end.23:                                        ; preds = %for.end
  %31 = load %struct.cclass*, %struct.cclass** %cp, align 8
  %chars = getelementptr inbounds %struct.cclass, %struct.cclass* %31, i32 0, i32 1
  %32 = load i8*, i8** %chars, align 8
  store i8* %32, i8** %u, align 8
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.29, %if.end.23
  %33 = load i8*, i8** %u, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr25, i8** %u, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %c, align 1
  %conv26 = sext i8 %34 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br i1 %cmp27, label %while.body.29, label %while.end.38

while.body.29:                                    ; preds = %while.cond.24
  %35 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %mask = getelementptr inbounds %struct.cset, %struct.cset* %35, i32 0, i32 1
  %36 = load i8, i8* %mask, align 1
  %conv30 = zext i8 %36 to i32
  %37 = load i8, i8* %c, align 1
  %idxprom31 = zext i8 %37 to i64
  %38 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %ptr = getelementptr inbounds %struct.cset, %struct.cset* %38, i32 0, i32 0
  %39 = load i8*, i8** %ptr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %39, i64 %idxprom31
  %40 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %40 to i32
  %or = or i32 %conv33, %conv30
  %conv34 = trunc i32 %or to i8
  store i8 %conv34, i8* %arrayidx32, align 1
  %41 = load i8, i8* %c, align 1
  %conv35 = sext i8 %41 to i32
  %42 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %hash = getelementptr inbounds %struct.cset, %struct.cset* %42, i32 0, i32 2
  %43 = load i8, i8* %hash, align 1
  %conv36 = zext i8 %43 to i32
  %add = add nsw i32 %conv36, %conv35
  %conv37 = trunc i32 %add to i8
  store i8 %conv37, i8* %hash, align 1
  br label %while.cond.24

while.end.38:                                     ; preds = %while.cond.24
  %44 = load %struct.cclass*, %struct.cclass** %cp, align 8
  %multis = getelementptr inbounds %struct.cclass, %struct.cclass* %44, i32 0, i32 2
  %45 = load i8*, i8** %multis, align 8
  store i8* %45, i8** %u, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.44, %while.end.38
  %46 = load i8*, i8** %u, align 8
  %47 = load i8, i8* %46, align 1
  %conv40 = sext i8 %47 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %for.body.43, label %for.end.47

for.body.43:                                      ; preds = %for.cond.39
  %48 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %49 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %50 = load i8*, i8** %u, align 8
  call void @mcadd(%struct.parse* %48, %struct.cset* %49, i8* %50)
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.43
  %51 = load i8*, i8** %u, align 8
  %call45 = call i64 @strlen(i8* %51) #6
  %add46 = add i64 %call45, 1
  %52 = load i8*, i8** %u, align 8
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %add46
  store i8* %add.ptr, i8** %u, align 8
  br label %for.cond.39

for.end.47:                                       ; preds = %if.then.21, %for.cond.39
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @p_b_eclass(%struct.parse* %p, %struct.cset* %cs) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %cs.addr = alloca %struct.cset*, align 8
  %c = alloca i8, align 1
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store %struct.cset* %cs, %struct.cset** %cs.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call = call signext i8 @p_b_coll_elem(%struct.parse* %0, i32 61)
  store i8 %call, i8* %c, align 1
  %1 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %mask = getelementptr inbounds %struct.cset, %struct.cset* %1, i32 0, i32 1
  %2 = load i8, i8* %mask, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8, i8* %c, align 1
  %idxprom = zext i8 %3 to i64
  %4 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %ptr = getelementptr inbounds %struct.cset, %struct.cset* %4, i32 0, i32 0
  %5 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %6 to i32
  %or = or i32 %conv1, %conv
  %conv2 = trunc i32 %or to i8
  store i8 %conv2, i8* %arrayidx, align 1
  %7 = load i8, i8* %c, align 1
  %conv3 = sext i8 %7 to i32
  %8 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %hash = getelementptr inbounds %struct.cset, %struct.cset* %8, i32 0, i32 2
  %9 = load i8, i8* %hash, align 1
  %conv4 = zext i8 %9 to i32
  %add = add nsw i32 %conv4, %conv3
  %conv5 = trunc i32 %add to i8
  store i8 %conv5, i8* %hash, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define internal signext i8 @p_b_symbol(%struct.parse* %p) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca %struct.parse*, align 8
  %value = alloca i8, align 1
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 0
  %1 = load i8*, i8** %next, align 8
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 1
  %3 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %1, %3
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call = call i32 @seterr(%struct.parse* %4, i32 7)
  %tobool = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next1 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 0
  %7 = load i8*, i8** %next1, align 8
  %8 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end2 = getelementptr inbounds %struct.parse, %struct.parse* %8, i32 0, i32 1
  %9 = load i8*, i8** %end2, align 8
  %cmp3 = icmp ult i8* %7, %9
  br i1 %cmp3, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.end
  %10 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next4 = getelementptr inbounds %struct.parse, %struct.parse* %10, i32 0, i32 0
  %11 = load i8*, i8** %next4, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end5 = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 1
  %13 = load i8*, i8** %end5, align 8
  %cmp6 = icmp ult i8* %add.ptr, %13
  br i1 %cmp6, label %land.lhs.true.7, label %cond.false

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %14 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next8 = getelementptr inbounds %struct.parse, %struct.parse* %14, i32 0, i32 0
  %15 = load i8*, i8** %next8, align 8
  %16 = load i8, i8* %15, align 1
  %conv = sext i8 %16 to i32
  %cmp9 = icmp eq i32 %conv, 91
  br i1 %cmp9, label %land.lhs.true.11, label %cond.false

land.lhs.true.11:                                 ; preds = %land.lhs.true.7
  %17 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next12 = getelementptr inbounds %struct.parse, %struct.parse* %17, i32 0, i32 0
  %18 = load i8*, i8** %next12, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %add.ptr13, align 1
  %conv14 = sext i8 %19 to i32
  %cmp15 = icmp eq i32 %conv14, 46
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.11
  %20 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next17 = getelementptr inbounds %struct.parse, %struct.parse* %20, i32 0, i32 0
  %21 = load i8*, i8** %next17, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %add.ptr18, i8** %next17, align 8
  br i1 true, label %if.end, label %if.then

cond.false:                                       ; preds = %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true, %lor.end
  br i1 false, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %22 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next19 = getelementptr inbounds %struct.parse, %struct.parse* %22, i32 0, i32 0
  %23 = load i8*, i8** %next19, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %next19, align 8
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %retval
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true
  %25 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call20 = call signext i8 @p_b_coll_elem(%struct.parse* %25, i32 46)
  store i8 %call20, i8* %value, align 1
  %26 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next21 = getelementptr inbounds %struct.parse, %struct.parse* %26, i32 0, i32 0
  %27 = load i8*, i8** %next21, align 8
  %28 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end22 = getelementptr inbounds %struct.parse, %struct.parse* %28, i32 0, i32 1
  %29 = load i8*, i8** %end22, align 8
  %cmp23 = icmp ult i8* %27, %29
  br i1 %cmp23, label %land.lhs.true.25, label %cond.false.45

land.lhs.true.25:                                 ; preds = %if.end
  %30 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next26 = getelementptr inbounds %struct.parse, %struct.parse* %30, i32 0, i32 0
  %31 = load i8*, i8** %next26, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end28 = getelementptr inbounds %struct.parse, %struct.parse* %32, i32 0, i32 1
  %33 = load i8*, i8** %end28, align 8
  %cmp29 = icmp ult i8* %add.ptr27, %33
  br i1 %cmp29, label %land.lhs.true.31, label %cond.false.45

land.lhs.true.31:                                 ; preds = %land.lhs.true.25
  %34 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next32 = getelementptr inbounds %struct.parse, %struct.parse* %34, i32 0, i32 0
  %35 = load i8*, i8** %next32, align 8
  %36 = load i8, i8* %35, align 1
  %conv33 = sext i8 %36 to i32
  %cmp34 = icmp eq i32 %conv33, 46
  br i1 %cmp34, label %land.lhs.true.36, label %cond.false.45

land.lhs.true.36:                                 ; preds = %land.lhs.true.31
  %37 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next37 = getelementptr inbounds %struct.parse, %struct.parse* %37, i32 0, i32 0
  %38 = load i8*, i8** %next37, align 8
  %add.ptr38 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %add.ptr38, align 1
  %conv39 = sext i8 %39 to i32
  %cmp40 = icmp eq i32 %conv39, 93
  br i1 %cmp40, label %cond.true.42, label %cond.false.45

cond.true.42:                                     ; preds = %land.lhs.true.36
  %40 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next43 = getelementptr inbounds %struct.parse, %struct.parse* %40, i32 0, i32 0
  %41 = load i8*, i8** %next43, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %add.ptr44, i8** %next43, align 8
  br i1 true, label %lor.end.49, label %lor.rhs.46

cond.false.45:                                    ; preds = %land.lhs.true.36, %land.lhs.true.31, %land.lhs.true.25, %if.end
  br i1 false, label %lor.end.49, label %lor.rhs.46

lor.rhs.46:                                       ; preds = %cond.false.45, %cond.true.42
  %42 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call47 = call i32 @seterr(%struct.parse* %42, i32 3)
  %tobool48 = icmp ne i32 %call47, 0
  br label %lor.end.49

lor.end.49:                                       ; preds = %lor.rhs.46, %cond.false.45, %cond.true.42
  %43 = phi i1 [ true, %cond.false.45 ], [ true, %cond.true.42 ], [ %tobool48, %lor.rhs.46 ]
  %lor.ext50 = zext i1 %43 to i32
  %44 = load i8, i8* %value, align 1
  store i8 %44, i8* %retval
  br label %return

return:                                           ; preds = %lor.end.49, %if.then
  %45 = load i8, i8* %retval
  ret i8 %45
}

; Function Attrs: nounwind uwtable
define internal void @mcadd(%struct.parse* %p, %struct.cset* %cs, i8* %cp) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %cs.addr = alloca %struct.cset*, align 8
  %cp.addr = alloca i8*, align 8
  %oldend = alloca i64, align 8
  %np = alloca i8*, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store %struct.cset* %cs, %struct.cset** %cs.addr, align 8
  store i8* %cp, i8** %cp.addr, align 8
  %0 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %smultis = getelementptr inbounds %struct.cset, %struct.cset* %0, i32 0, i32 3
  %1 = load i64, i64* %smultis, align 8
  store i64 %1, i64* %oldend, align 8
  %2 = load i8*, i8** %cp.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  %add = add i64 %call, 1
  %3 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %smultis1 = getelementptr inbounds %struct.cset, %struct.cset* %3, i32 0, i32 3
  %4 = load i64, i64* %smultis1, align 8
  %add2 = add i64 %4, %add
  store i64 %add2, i64* %smultis1, align 8
  %5 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %multis = getelementptr inbounds %struct.cset, %struct.cset* %5, i32 0, i32 4
  %6 = load i8*, i8** %multis, align 8
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %smultis3 = getelementptr inbounds %struct.cset, %struct.cset* %7, i32 0, i32 3
  %8 = load i64, i64* %smultis3, align 8
  %call4 = call i8* @cli_malloc(i64 %8)
  store i8* %call4, i8** %np, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %multis5 = getelementptr inbounds %struct.cset, %struct.cset* %9, i32 0, i32 4
  %10 = load i8*, i8** %multis5, align 8
  %11 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %smultis6 = getelementptr inbounds %struct.cset, %struct.cset* %11, i32 0, i32 3
  %12 = load i64, i64* %smultis6, align 8
  %call7 = call i8* @cli_realloc(i8* %10, i64 %12)
  store i8* %call7, i8** %np, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i8*, i8** %np, align 8
  %cmp8 = icmp eq i8* %13, null
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end
  %14 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %multis10 = getelementptr inbounds %struct.cset, %struct.cset* %14, i32 0, i32 4
  %15 = load i8*, i8** %multis10, align 8
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.9
  %16 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %multis12 = getelementptr inbounds %struct.cset, %struct.cset* %16, i32 0, i32 4
  %17 = load i8*, i8** %multis12, align 8
  call void @free(i8* %17) #4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.9
  %18 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %multis14 = getelementptr inbounds %struct.cset, %struct.cset* %18, i32 0, i32 4
  store i8* null, i8** %multis14, align 8
  %19 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call15 = call i32 @seterr(%struct.parse* %19, i32 12)
  br label %return

if.end.16:                                        ; preds = %if.end
  %20 = load i8*, i8** %np, align 8
  %21 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %multis17 = getelementptr inbounds %struct.cset, %struct.cset* %21, i32 0, i32 4
  store i8* %20, i8** %multis17, align 8
  %22 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %multis18 = getelementptr inbounds %struct.cset, %struct.cset* %22, i32 0, i32 4
  %23 = load i8*, i8** %multis18, align 8
  %24 = load i64, i64* %oldend, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %24
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %25 = load i8*, i8** %cp.addr, align 8
  %26 = load %struct.cset*, %struct.cset** %cs.addr, align 8
  %smultis20 = getelementptr inbounds %struct.cset, %struct.cset* %26, i32 0, i32 3
  %27 = load i64, i64* %smultis20, align 8
  %28 = load i64, i64* %oldend, align 8
  %sub = sub i64 %27, %28
  %add21 = add i64 %sub, 1
  %call22 = call i64 @cli_strlcpy(i8* %add.ptr19, i8* %25, i64 %add21)
  br label %return

return:                                           ; preds = %if.end.16, %if.end.13
  ret void
}

declare i64 @cli_strlcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal signext i8 @p_b_coll_elem(%struct.parse* %p, i32 %endc) #0 {
entry:
  %retval = alloca i8, align 1
  %p.addr = alloca %struct.parse*, align 8
  %endc.addr = alloca i32, align 4
  %sp = alloca i8*, align 8
  %cp = alloca %struct.cname*, align 8
  %len = alloca i32, align 4
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i32 %endc, i32* %endc.addr, align 4
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 0
  %1 = load i8*, i8** %next, align 8
  store i8* %1, i8** %sp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next1 = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 0
  %3 = load i8*, i8** %next1, align 8
  %4 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %4, i32 0, i32 1
  %5 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %3, %5
  br i1 %cmp, label %land.rhs, label %land.end.18

land.rhs:                                         ; preds = %while.cond
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next2 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 0
  %7 = load i8*, i8** %next2, align 8
  %8 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end3 = getelementptr inbounds %struct.parse, %struct.parse* %8, i32 0, i32 1
  %9 = load i8*, i8** %end3, align 8
  %cmp4 = icmp ult i8* %7, %9
  br i1 %cmp4, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %land.rhs
  %10 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next5 = getelementptr inbounds %struct.parse, %struct.parse* %10, i32 0, i32 0
  %11 = load i8*, i8** %next5, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end6 = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 1
  %13 = load i8*, i8** %end6, align 8
  %cmp7 = icmp ult i8* %add.ptr, %13
  br i1 %cmp7, label %land.lhs.true.8, label %land.end

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %14 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next9 = getelementptr inbounds %struct.parse, %struct.parse* %14, i32 0, i32 0
  %15 = load i8*, i8** %next9, align 8
  %16 = load i8, i8* %15, align 1
  %conv = sext i8 %16 to i32
  %17 = load i32, i32* %endc.addr, align 4
  %cmp10 = icmp eq i32 %conv, %17
  br i1 %cmp10, label %land.rhs.12, label %land.end

land.rhs.12:                                      ; preds = %land.lhs.true.8
  %18 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next13 = getelementptr inbounds %struct.parse, %struct.parse* %18, i32 0, i32 0
  %19 = load i8*, i8** %next13, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %add.ptr14, align 1
  %conv15 = sext i8 %20 to i32
  %cmp16 = icmp eq i32 %conv15, 93
  br label %land.end

land.end:                                         ; preds = %land.rhs.12, %land.lhs.true.8, %land.lhs.true, %land.rhs
  %21 = phi i1 [ false, %land.lhs.true.8 ], [ false, %land.lhs.true ], [ false, %land.rhs ], [ %cmp16, %land.rhs.12 ]
  %lnot = xor i1 %21, true
  br label %land.end.18

land.end.18:                                      ; preds = %land.end, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %lnot, %land.end ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.18
  %23 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next19 = getelementptr inbounds %struct.parse, %struct.parse* %23, i32 0, i32 0
  %24 = load i8*, i8** %next19, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %next19, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.18
  %25 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next20 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 0
  %26 = load i8*, i8** %next20, align 8
  %27 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end21 = getelementptr inbounds %struct.parse, %struct.parse* %27, i32 0, i32 1
  %28 = load i8*, i8** %end21, align 8
  %cmp22 = icmp ult i8* %26, %28
  br i1 %cmp22, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %29 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call = call i32 @seterr(%struct.parse* %29, i32 7)
  store i8 0, i8* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %30 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next24 = getelementptr inbounds %struct.parse, %struct.parse* %30, i32 0, i32 0
  %31 = load i8*, i8** %next24, align 8
  %32 = load i8*, i8** %sp, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv25 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv25, i32* %len, align 4
  store %struct.cname* getelementptr inbounds ([96 x %struct.cname], [96 x %struct.cname]* @cnames, i32 0, i32 0), %struct.cname** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %33 = load %struct.cname*, %struct.cname** %cp, align 8
  %name = getelementptr inbounds %struct.cname, %struct.cname* %33, i32 0, i32 0
  %34 = load i8*, i8** %name, align 8
  %cmp26 = icmp ne i8* %34, null
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct.cname*, %struct.cname** %cp, align 8
  %name28 = getelementptr inbounds %struct.cname, %struct.cname* %35, i32 0, i32 0
  %36 = load i8*, i8** %name28, align 8
  %37 = load i8*, i8** %sp, align 8
  %38 = load i32, i32* %len, align 4
  %conv29 = sext i32 %38 to i64
  %call30 = call i32 @strncmp(i8* %36, i8* %37, i64 %conv29) #6
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.39

land.lhs.true.33:                                 ; preds = %for.body
  %39 = load i32, i32* %len, align 4
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.cname*, %struct.cname** %cp, align 8
  %name34 = getelementptr inbounds %struct.cname, %struct.cname* %40, i32 0, i32 0
  %41 = load i8*, i8** %name34, align 8
  %arrayidx = getelementptr inbounds i8, i8* %41, i64 %idxprom
  %42 = load i8, i8* %arrayidx, align 1
  %conv35 = sext i8 %42 to i32
  %cmp36 = icmp eq i32 %conv35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.33
  %43 = load %struct.cname*, %struct.cname** %cp, align 8
  %code = getelementptr inbounds %struct.cname, %struct.cname* %43, i32 0, i32 1
  %44 = load i8, i8* %code, align 1
  store i8 %44, i8* %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.33, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %45 = load %struct.cname*, %struct.cname** %cp, align 8
  %incdec.ptr40 = getelementptr inbounds %struct.cname, %struct.cname* %45, i32 1
  store %struct.cname* %incdec.ptr40, %struct.cname** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load i32, i32* %len, align 4
  %cmp41 = icmp eq i32 %46, 1
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.end
  %47 = load i8*, i8** %sp, align 8
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %retval
  br label %return

if.end.44:                                        ; preds = %for.end
  %49 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call45 = call i32 @seterr(%struct.parse* %49, i32 3)
  store i8 0, i8* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.43, %if.then.38, %if.then
  %50 = load i8, i8* %retval
  ret i8 %50
}

; Function Attrs: nounwind
declare i32 @tolower(i32) #3

; Function Attrs: nounwind
declare i32 @toupper(i32) #3

; Function Attrs: nounwind uwtable
define internal void @bothcases(%struct.parse* %p, i32 %ch) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %ch.addr = alloca i32, align 4
  %oldnext = alloca i8*, align 8
  %oldend = alloca i8*, align 8
  %bracket = alloca [3 x i8], align 1
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i32 %ch, i32* %ch.addr, align 4
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 0
  %1 = load i8*, i8** %next, align 8
  store i8* %1, i8** %oldnext, align 8
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 1
  %3 = load i8*, i8** %end, align 8
  store i8* %3, i8** %oldend, align 8
  %4 = load i32, i32* %ch.addr, align 4
  %conv = trunc i32 %4 to i8
  %conv1 = zext i8 %conv to i32
  store i32 %conv1, i32* %ch.addr, align 4
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %bracket, i32 0, i32 0
  %5 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next2 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 0
  store i8* %arraydecay, i8** %next2, align 8
  %arraydecay3 = getelementptr inbounds [3 x i8], [3 x i8]* %bracket, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay3, i64 2
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end4 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 1
  store i8* %add.ptr, i8** %end4, align 8
  %7 = load i32, i32* %ch.addr, align 4
  %conv5 = trunc i32 %7 to i8
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %bracket, i32 0, i64 0
  store i8 %conv5, i8* %arrayidx, align 1
  %arrayidx6 = getelementptr inbounds [3 x i8], [3 x i8]* %bracket, i32 0, i64 1
  store i8 93, i8* %arrayidx6, align 1
  %arrayidx7 = getelementptr inbounds [3 x i8], [3 x i8]* %bracket, i32 0, i64 2
  store i8 0, i8* %arrayidx7, align 1
  %8 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @p_bracket(%struct.parse* %8)
  %9 = load i8*, i8** %oldnext, align 8
  %10 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next8 = getelementptr inbounds %struct.parse, %struct.parse* %10, i32 0, i32 0
  store i8* %9, i8** %next8, align 8
  %11 = load i8*, i8** %oldend, align 8
  %12 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end9 = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 1
  store i8* %11, i8** %end9, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @dupl(%struct.parse* %p, i64 %start, i64 %finish) #0 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca %struct.parse*, align 8
  %start.addr = alloca i64, align 8
  %finish.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %len = alloca i64, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %finish, i64* %finish.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 5
  %1 = load i64, i64* %slen, align 8
  store i64 %1, i64* %ret, align 8
  %2 = load i64, i64* %finish.addr, align 8
  %3 = load i64, i64* %start.addr, align 8
  %sub = sub nsw i64 %2, %3
  store i64 %sub, i64* %len, align 8
  %4 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %ret, align 8
  store i64 %5, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %7 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %ssize = getelementptr inbounds %struct.parse, %struct.parse* %7, i32 0, i32 4
  %8 = load i64, i64* %ssize, align 8
  %9 = load i64, i64* %len, align 8
  %add = add nsw i64 %8, %9
  call void @enlarge(%struct.parse* %6, i64 %add)
  %10 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %strip = getelementptr inbounds %struct.parse, %struct.parse* %10, i32 0, i32 3
  %11 = load i64*, i64** %strip, align 8
  %12 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen1 = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 5
  %13 = load i64, i64* %slen1, align 8
  %add.ptr = getelementptr inbounds i64, i64* %11, i64 %13
  %14 = bitcast i64* %add.ptr to i8*
  %15 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %strip2 = getelementptr inbounds %struct.parse, %struct.parse* %15, i32 0, i32 3
  %16 = load i64*, i64** %strip2, align 8
  %17 = load i64, i64* %start.addr, align 8
  %add.ptr3 = getelementptr inbounds i64, i64* %16, i64 %17
  %18 = bitcast i64* %add.ptr3 to i8*
  %19 = load i64, i64* %len, align 8
  %mul = mul i64 %19, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %14, i8* %18, i64 %mul, i32 1, i1 false)
  %20 = load i64, i64* %len, align 8
  %21 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen4 = getelementptr inbounds %struct.parse, %struct.parse* %21, i32 0, i32 5
  %22 = load i64, i64* %slen4, align 8
  %add5 = add nsw i64 %22, %20
  store i64 %add5, i64* %slen4, align 8
  %23 = load i64, i64* %ret, align 8
  store i64 %23, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %24 = load i64, i64* %retval
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define internal void @enlarge(%struct.parse* %p, i64 %size) #0 {
entry:
  %p.addr = alloca %struct.parse*, align 8
  %size.addr = alloca i64, align 8
  %sp = alloca i64*, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %ssize = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 4
  %1 = load i64, i64* %ssize, align 8
  %2 = load i64, i64* %size.addr, align 8
  %cmp = icmp sge i64 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %strip = getelementptr inbounds %struct.parse, %struct.parse* %3, i32 0, i32 3
  %4 = load i64*, i64** %strip, align 8
  %5 = bitcast i64* %4 to i8*
  %6 = load i64, i64* %size.addr, align 8
  %mul = mul i64 %6, 8
  %call = call i8* @cli_realloc(i8* %5, i64 %mul)
  %7 = bitcast i8* %call to i64*
  store i64* %7, i64** %sp, align 8
  %8 = load i64*, i64** %sp, align 8
  %cmp1 = icmp eq i64* %8, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call3 = call i32 @seterr(%struct.parse* %9, i32 12)
  br label %return

if.end.4:                                         ; preds = %if.end
  %10 = load i64*, i64** %sp, align 8
  %11 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %strip5 = getelementptr inbounds %struct.parse, %struct.parse* %11, i32 0, i32 3
  store i64* %10, i64** %strip5, align 8
  %12 = load i64, i64* %size.addr, align 8
  %13 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %ssize6 = getelementptr inbounds %struct.parse, %struct.parse* %13, i32 0, i32 4
  store i64 %12, i64* %ssize6, align 8
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal i32 @p_simp_re(%struct.parse* %p, i32 %starordinary) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.parse*, align 8
  %starordinary.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %count = alloca i32, align 4
  %count2 = alloca i32, align 4
  %pos = alloca i64, align 8
  %i = alloca i32, align 4
  %subno = alloca i64, align 8
  store %struct.parse* %p, %struct.parse** %p.addr, align 8
  store i32 %starordinary, i32* %starordinary.addr, align 4
  %0 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen = getelementptr inbounds %struct.parse, %struct.parse* %0, i32 0, i32 5
  %1 = load i64, i64* %slen, align 8
  store i64 %1, i64* %pos, align 8
  %2 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 0
  %3 = load i8*, i8** %next, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %next, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  store i32 %conv, i32* %c, align 4
  %5 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %5, 92
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next2 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 0
  %7 = load i8*, i8** %next2, align 8
  %8 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end = getelementptr inbounds %struct.parse, %struct.parse* %8, i32 0, i32 1
  %9 = load i8*, i8** %end, align 8
  %cmp3 = icmp ult i8* %7, %9
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %10 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call = call i32 @seterr(%struct.parse* %10, i32 5)
  %tobool = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %11 = phi i1 [ true, %if.then ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %11 to i32
  %12 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next5 = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 0
  %13 = load i8*, i8** %next5, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr6, i8** %next5, align 8
  %14 = load i8, i8* %13, align 1
  %conv7 = sext i8 %14 to i32
  %or = or i32 256, %conv7
  store i32 %or, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %lor.end, %entry
  %15 = load i32, i32* %c, align 4
  switch i32 %15, label %sw.default [
    i32 46, label %sw.bb
    i32 91, label %sw.bb.11
    i32 379, label %sw.bb.12
    i32 296, label %sw.bb.14
    i32 297, label %sw.bb.83
    i32 381, label %sw.bb.83
    i32 305, label %sw.bb.85
    i32 306, label %sw.bb.85
    i32 307, label %sw.bb.85
    i32 308, label %sw.bb.85
    i32 309, label %sw.bb.85
    i32 310, label %sw.bb.85
    i32 311, label %sw.bb.85
    i32 312, label %sw.bb.85
    i32 313, label %sw.bb.85
    i32 42, label %sw.bb.105
  ]

sw.bb:                                            ; preds = %if.end
  %16 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g = getelementptr inbounds %struct.parse, %struct.parse* %16, i32 0, i32 7
  %17 = load %struct.re_guts*, %struct.re_guts** %g, align 8
  %cflags = getelementptr inbounds %struct.re_guts, %struct.re_guts* %17, i32 0, i32 6
  %18 = load i32, i32* %cflags, align 4
  %and = and i32 %18, 8
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %sw.bb
  %19 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @nonnewline(%struct.parse* %19)
  br label %if.end.10

if.else:                                          ; preds = %sw.bb
  %20 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @doemit(%struct.parse* %20, i64 671088640, i64 0)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %21 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @p_bracket(%struct.parse* %21)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  %22 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call13 = call i32 @seterr(%struct.parse* %22, i32 13)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %23 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g15 = getelementptr inbounds %struct.parse, %struct.parse* %23, i32 0, i32 7
  %24 = load %struct.re_guts*, %struct.re_guts** %g15, align 8
  %nsub = getelementptr inbounds %struct.re_guts, %struct.re_guts* %24, i32 0, i32 17
  %25 = load i64, i64* %nsub, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %nsub, align 8
  %26 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g16 = getelementptr inbounds %struct.parse, %struct.parse* %26, i32 0, i32 7
  %27 = load %struct.re_guts*, %struct.re_guts** %g16, align 8
  %nsub17 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %27, i32 0, i32 17
  %28 = load i64, i64* %nsub17, align 8
  store i64 %28, i64* %subno, align 8
  %29 = load i64, i64* %subno, align 8
  %cmp18 = icmp slt i64 %29, 10
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %sw.bb.14
  %30 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen21 = getelementptr inbounds %struct.parse, %struct.parse* %30, i32 0, i32 5
  %31 = load i64, i64* %slen21, align 8
  %32 = load i64, i64* %subno, align 8
  %33 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %pbegin = getelementptr inbounds %struct.parse, %struct.parse* %33, i32 0, i32 8
  %arrayidx = getelementptr inbounds [10 x i64], [10 x i64]* %pbegin, i32 0, i64 %32
  store i64 %31, i64* %arrayidx, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %sw.bb.14
  %34 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %35 = load i64, i64* %subno, align 8
  call void @doemit(%struct.parse* %34, i64 1744830464, i64 %35)
  %36 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next23 = getelementptr inbounds %struct.parse, %struct.parse* %36, i32 0, i32 0
  %37 = load i8*, i8** %next23, align 8
  %38 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end24 = getelementptr inbounds %struct.parse, %struct.parse* %38, i32 0, i32 1
  %39 = load i8*, i8** %end24, align 8
  %cmp25 = icmp ult i8* %37, %39
  br i1 %cmp25, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end.22
  %40 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next27 = getelementptr inbounds %struct.parse, %struct.parse* %40, i32 0, i32 0
  %41 = load i8*, i8** %next27, align 8
  %42 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end28 = getelementptr inbounds %struct.parse, %struct.parse* %42, i32 0, i32 1
  %43 = load i8*, i8** %end28, align 8
  %cmp29 = icmp ult i8* %41, %43
  br i1 %cmp29, label %land.lhs.true.31, label %if.then.47

land.lhs.true.31:                                 ; preds = %land.lhs.true
  %44 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next32 = getelementptr inbounds %struct.parse, %struct.parse* %44, i32 0, i32 0
  %45 = load i8*, i8** %next32, align 8
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end33 = getelementptr inbounds %struct.parse, %struct.parse* %46, i32 0, i32 1
  %47 = load i8*, i8** %end33, align 8
  %cmp34 = icmp ult i8* %add.ptr, %47
  br i1 %cmp34, label %land.lhs.true.36, label %if.then.47

land.lhs.true.36:                                 ; preds = %land.lhs.true.31
  %48 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next37 = getelementptr inbounds %struct.parse, %struct.parse* %48, i32 0, i32 0
  %49 = load i8*, i8** %next37, align 8
  %50 = load i8, i8* %49, align 1
  %conv38 = sext i8 %50 to i32
  %cmp39 = icmp eq i32 %conv38, 92
  br i1 %cmp39, label %land.lhs.true.41, label %if.then.47

land.lhs.true.41:                                 ; preds = %land.lhs.true.36
  %51 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next42 = getelementptr inbounds %struct.parse, %struct.parse* %51, i32 0, i32 0
  %52 = load i8*, i8** %next42, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %add.ptr43, align 1
  %conv44 = sext i8 %53 to i32
  %cmp45 = icmp eq i32 %conv44, 41
  br i1 %cmp45, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.41, %land.lhs.true.36, %land.lhs.true.31, %land.lhs.true
  %54 = load %struct.parse*, %struct.parse** %p.addr, align 8
  call void @p_bre(%struct.parse* %54, i32 92, i32 41)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %land.lhs.true.41, %if.end.22
  %55 = load i64, i64* %subno, align 8
  %cmp49 = icmp slt i64 %55, 10
  br i1 %cmp49, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.end.48
  %56 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen52 = getelementptr inbounds %struct.parse, %struct.parse* %56, i32 0, i32 5
  %57 = load i64, i64* %slen52, align 8
  %58 = load i64, i64* %subno, align 8
  %59 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %pend = getelementptr inbounds %struct.parse, %struct.parse* %59, i32 0, i32 9
  %arrayidx53 = getelementptr inbounds [10 x i64], [10 x i64]* %pend, i32 0, i64 %58
  store i64 %57, i64* %arrayidx53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.end.48
  %60 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %61 = load i64, i64* %subno, align 8
  call void @doemit(%struct.parse* %60, i64 1879048192, i64 %61)
  %62 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next55 = getelementptr inbounds %struct.parse, %struct.parse* %62, i32 0, i32 0
  %63 = load i8*, i8** %next55, align 8
  %64 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end56 = getelementptr inbounds %struct.parse, %struct.parse* %64, i32 0, i32 1
  %65 = load i8*, i8** %end56, align 8
  %cmp57 = icmp ult i8* %63, %65
  br i1 %cmp57, label %land.lhs.true.59, label %cond.false

land.lhs.true.59:                                 ; preds = %if.end.54
  %66 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next60 = getelementptr inbounds %struct.parse, %struct.parse* %66, i32 0, i32 0
  %67 = load i8*, i8** %next60, align 8
  %add.ptr61 = getelementptr inbounds i8, i8* %67, i64 1
  %68 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end62 = getelementptr inbounds %struct.parse, %struct.parse* %68, i32 0, i32 1
  %69 = load i8*, i8** %end62, align 8
  %cmp63 = icmp ult i8* %add.ptr61, %69
  br i1 %cmp63, label %land.lhs.true.65, label %cond.false

land.lhs.true.65:                                 ; preds = %land.lhs.true.59
  %70 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next66 = getelementptr inbounds %struct.parse, %struct.parse* %70, i32 0, i32 0
  %71 = load i8*, i8** %next66, align 8
  %72 = load i8, i8* %71, align 1
  %conv67 = sext i8 %72 to i32
  %cmp68 = icmp eq i32 %conv67, 92
  br i1 %cmp68, label %land.lhs.true.70, label %cond.false

land.lhs.true.70:                                 ; preds = %land.lhs.true.65
  %73 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next71 = getelementptr inbounds %struct.parse, %struct.parse* %73, i32 0, i32 0
  %74 = load i8*, i8** %next71, align 8
  %add.ptr72 = getelementptr inbounds i8, i8* %74, i64 1
  %75 = load i8, i8* %add.ptr72, align 1
  %conv73 = sext i8 %75 to i32
  %cmp74 = icmp eq i32 %conv73, 41
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.70
  %76 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next76 = getelementptr inbounds %struct.parse, %struct.parse* %76, i32 0, i32 0
  %77 = load i8*, i8** %next76, align 8
  %add.ptr77 = getelementptr inbounds i8, i8* %77, i64 2
  store i8* %add.ptr77, i8** %next76, align 8
  br i1 true, label %lor.end.81, label %lor.rhs.78

cond.false:                                       ; preds = %land.lhs.true.70, %land.lhs.true.65, %land.lhs.true.59, %if.end.54
  br i1 false, label %lor.end.81, label %lor.rhs.78

lor.rhs.78:                                       ; preds = %cond.false, %cond.true
  %78 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call79 = call i32 @seterr(%struct.parse* %78, i32 8)
  %tobool80 = icmp ne i32 %call79, 0
  br label %lor.end.81

lor.end.81:                                       ; preds = %lor.rhs.78, %cond.false, %cond.true
  %79 = phi i1 [ true, %cond.false ], [ true, %cond.true ], [ %tobool80, %lor.rhs.78 ]
  %lor.ext82 = zext i1 %79 to i32
  br label %sw.epilog

sw.bb.83:                                         ; preds = %if.end, %if.end
  %80 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call84 = call i32 @seterr(%struct.parse* %80, i32 8)
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %81 = load i32, i32* %c, align 4
  %and86 = and i32 %81, -257
  %sub = sub nsw i32 %and86, 48
  store i32 %sub, i32* %i, align 4
  %82 = load i32, i32* %i, align 4
  %idxprom = sext i32 %82 to i64
  %83 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %pend87 = getelementptr inbounds %struct.parse, %struct.parse* %83, i32 0, i32 9
  %arrayidx88 = getelementptr inbounds [10 x i64], [10 x i64]* %pend87, i32 0, i64 %idxprom
  %84 = load i64, i64* %arrayidx88, align 8
  %cmp89 = icmp ne i64 %84, 0
  br i1 %cmp89, label %if.then.91, label %if.else.101

if.then.91:                                       ; preds = %sw.bb.85
  %85 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %86 = load i32, i32* %i, align 4
  %conv92 = sext i32 %86 to i64
  call void @doemit(%struct.parse* %85, i64 939524096, i64 %conv92)
  %87 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %88 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %88 to i64
  %89 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %pbegin94 = getelementptr inbounds %struct.parse, %struct.parse* %89, i32 0, i32 8
  %arrayidx95 = getelementptr inbounds [10 x i64], [10 x i64]* %pbegin94, i32 0, i64 %idxprom93
  %90 = load i64, i64* %arrayidx95, align 8
  %add = add nsw i64 %90, 1
  %91 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %91 to i64
  %92 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %pend97 = getelementptr inbounds %struct.parse, %struct.parse* %92, i32 0, i32 9
  %arrayidx98 = getelementptr inbounds [10 x i64], [10 x i64]* %pend97, i32 0, i64 %idxprom96
  %93 = load i64, i64* %arrayidx98, align 8
  %call99 = call i64 @dupl(%struct.parse* %87, i64 %add, i64 %93)
  %94 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %95 = load i32, i32* %i, align 4
  %conv100 = sext i32 %95 to i64
  call void @doemit(%struct.parse* %94, i64 1073741824, i64 %conv100)
  br label %if.end.103

if.else.101:                                      ; preds = %sw.bb.85
  %96 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call102 = call i32 @seterr(%struct.parse* %96, i32 6)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.101, %if.then.91
  %97 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %g104 = getelementptr inbounds %struct.parse, %struct.parse* %97, i32 0, i32 7
  %98 = load %struct.re_guts*, %struct.re_guts** %g104, align 8
  %backrefs = getelementptr inbounds %struct.re_guts, %struct.re_guts* %98, i32 0, i32 18
  store i32 1, i32* %backrefs, align 4
  br label %sw.epilog

sw.bb.105:                                        ; preds = %if.end
  %99 = load i32, i32* %starordinary.addr, align 4
  %tobool106 = icmp ne i32 %99, 0
  br i1 %tobool106, label %lor.end.110, label %lor.rhs.107

lor.rhs.107:                                      ; preds = %sw.bb.105
  %100 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call108 = call i32 @seterr(%struct.parse* %100, i32 13)
  %tobool109 = icmp ne i32 %call108, 0
  br label %lor.end.110

lor.end.110:                                      ; preds = %lor.rhs.107, %sw.bb.105
  %101 = phi i1 [ true, %sw.bb.105 ], [ %tobool109, %lor.rhs.107 ]
  %lor.ext111 = zext i1 %101 to i32
  br label %sw.default

sw.default:                                       ; preds = %if.end, %lor.end.110
  %102 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %103 = load i32, i32* %c, align 4
  %conv112 = trunc i32 %103 to i8
  %conv113 = sext i8 %conv112 to i32
  call void @ordinary(%struct.parse* %102, i32 %conv113)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.103, %sw.bb.83, %lor.end.81, %sw.bb.12, %sw.bb.11, %if.end.10
  %104 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next114 = getelementptr inbounds %struct.parse, %struct.parse* %104, i32 0, i32 0
  %105 = load i8*, i8** %next114, align 8
  %106 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end115 = getelementptr inbounds %struct.parse, %struct.parse* %106, i32 0, i32 1
  %107 = load i8*, i8** %end115, align 8
  %cmp116 = icmp ult i8* %105, %107
  br i1 %cmp116, label %land.lhs.true.118, label %cond.false.126

land.lhs.true.118:                                ; preds = %sw.epilog
  %108 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next119 = getelementptr inbounds %struct.parse, %struct.parse* %108, i32 0, i32 0
  %109 = load i8*, i8** %next119, align 8
  %110 = load i8, i8* %109, align 1
  %conv120 = sext i8 %110 to i32
  %cmp121 = icmp eq i32 %conv120, 42
  br i1 %cmp121, label %cond.true.123, label %cond.false.126

cond.true.123:                                    ; preds = %land.lhs.true.118
  %111 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next124 = getelementptr inbounds %struct.parse, %struct.parse* %111, i32 0, i32 0
  %112 = load i8*, i8** %next124, align 8
  %incdec.ptr125 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr125, i8** %next124, align 8
  br i1 true, label %if.then.127, label %if.else.138

cond.false.126:                                   ; preds = %land.lhs.true.118, %sw.epilog
  br i1 false, label %if.then.127, label %if.else.138

if.then.127:                                      ; preds = %cond.false.126, %cond.true.123
  %113 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %114 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen128 = getelementptr inbounds %struct.parse, %struct.parse* %114, i32 0, i32 5
  %115 = load i64, i64* %slen128, align 8
  %116 = load i64, i64* %pos, align 8
  %sub129 = sub nsw i64 %115, %116
  %add130 = add nsw i64 %sub129, 1
  %117 = load i64, i64* %pos, align 8
  call void @doinsert(%struct.parse* %113, i64 1207959552, i64 %add130, i64 %117)
  %118 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %119 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen131 = getelementptr inbounds %struct.parse, %struct.parse* %119, i32 0, i32 5
  %120 = load i64, i64* %slen131, align 8
  %121 = load i64, i64* %pos, align 8
  %sub132 = sub nsw i64 %120, %121
  call void @doemit(%struct.parse* %118, i64 1342177280, i64 %sub132)
  %122 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %123 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen133 = getelementptr inbounds %struct.parse, %struct.parse* %123, i32 0, i32 5
  %124 = load i64, i64* %slen133, align 8
  %125 = load i64, i64* %pos, align 8
  %sub134 = sub nsw i64 %124, %125
  %add135 = add nsw i64 %sub134, 1
  %126 = load i64, i64* %pos, align 8
  call void @doinsert(%struct.parse* %122, i64 1476395008, i64 %add135, i64 %126)
  %127 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %128 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %slen136 = getelementptr inbounds %struct.parse, %struct.parse* %128, i32 0, i32 5
  %129 = load i64, i64* %slen136, align 8
  %130 = load i64, i64* %pos, align 8
  %sub137 = sub nsw i64 %129, %130
  call void @doemit(%struct.parse* %127, i64 1610612736, i64 %sub137)
  br label %if.end.277

if.else.138:                                      ; preds = %cond.false.126, %cond.true.123
  %131 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next139 = getelementptr inbounds %struct.parse, %struct.parse* %131, i32 0, i32 0
  %132 = load i8*, i8** %next139, align 8
  %133 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end140 = getelementptr inbounds %struct.parse, %struct.parse* %133, i32 0, i32 1
  %134 = load i8*, i8** %end140, align 8
  %cmp141 = icmp ult i8* %132, %134
  br i1 %cmp141, label %land.lhs.true.143, label %cond.false.163

land.lhs.true.143:                                ; preds = %if.else.138
  %135 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next144 = getelementptr inbounds %struct.parse, %struct.parse* %135, i32 0, i32 0
  %136 = load i8*, i8** %next144, align 8
  %add.ptr145 = getelementptr inbounds i8, i8* %136, i64 1
  %137 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end146 = getelementptr inbounds %struct.parse, %struct.parse* %137, i32 0, i32 1
  %138 = load i8*, i8** %end146, align 8
  %cmp147 = icmp ult i8* %add.ptr145, %138
  br i1 %cmp147, label %land.lhs.true.149, label %cond.false.163

land.lhs.true.149:                                ; preds = %land.lhs.true.143
  %139 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next150 = getelementptr inbounds %struct.parse, %struct.parse* %139, i32 0, i32 0
  %140 = load i8*, i8** %next150, align 8
  %141 = load i8, i8* %140, align 1
  %conv151 = sext i8 %141 to i32
  %cmp152 = icmp eq i32 %conv151, 92
  br i1 %cmp152, label %land.lhs.true.154, label %cond.false.163

land.lhs.true.154:                                ; preds = %land.lhs.true.149
  %142 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next155 = getelementptr inbounds %struct.parse, %struct.parse* %142, i32 0, i32 0
  %143 = load i8*, i8** %next155, align 8
  %add.ptr156 = getelementptr inbounds i8, i8* %143, i64 1
  %144 = load i8, i8* %add.ptr156, align 1
  %conv157 = sext i8 %144 to i32
  %cmp158 = icmp eq i32 %conv157, 123
  br i1 %cmp158, label %cond.true.160, label %cond.false.163

cond.true.160:                                    ; preds = %land.lhs.true.154
  %145 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next161 = getelementptr inbounds %struct.parse, %struct.parse* %145, i32 0, i32 0
  %146 = load i8*, i8** %next161, align 8
  %add.ptr162 = getelementptr inbounds i8, i8* %146, i64 2
  store i8* %add.ptr162, i8** %next161, align 8
  br i1 true, label %if.then.164, label %if.else.271

cond.false.163:                                   ; preds = %land.lhs.true.154, %land.lhs.true.149, %land.lhs.true.143, %if.else.138
  br i1 false, label %if.then.164, label %if.else.271

if.then.164:                                      ; preds = %cond.false.163, %cond.true.160
  %147 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call165 = call i32 @p_count(%struct.parse* %147)
  store i32 %call165, i32* %count, align 4
  %148 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next166 = getelementptr inbounds %struct.parse, %struct.parse* %148, i32 0, i32 0
  %149 = load i8*, i8** %next166, align 8
  %150 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end167 = getelementptr inbounds %struct.parse, %struct.parse* %150, i32 0, i32 1
  %151 = load i8*, i8** %end167, align 8
  %cmp168 = icmp ult i8* %149, %151
  br i1 %cmp168, label %land.lhs.true.170, label %cond.false.178

land.lhs.true.170:                                ; preds = %if.then.164
  %152 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next171 = getelementptr inbounds %struct.parse, %struct.parse* %152, i32 0, i32 0
  %153 = load i8*, i8** %next171, align 8
  %154 = load i8, i8* %153, align 1
  %conv172 = sext i8 %154 to i32
  %cmp173 = icmp eq i32 %conv172, 44
  br i1 %cmp173, label %cond.true.175, label %cond.false.178

cond.true.175:                                    ; preds = %land.lhs.true.170
  %155 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next176 = getelementptr inbounds %struct.parse, %struct.parse* %155, i32 0, i32 0
  %156 = load i8*, i8** %next176, align 8
  %incdec.ptr177 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr177, i8** %next176, align 8
  br i1 true, label %if.then.179, label %if.else.204

cond.false.178:                                   ; preds = %land.lhs.true.170, %if.then.164
  br i1 false, label %if.then.179, label %if.else.204

if.then.179:                                      ; preds = %cond.false.178, %cond.true.175
  %157 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next180 = getelementptr inbounds %struct.parse, %struct.parse* %157, i32 0, i32 0
  %158 = load i8*, i8** %next180, align 8
  %159 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end181 = getelementptr inbounds %struct.parse, %struct.parse* %159, i32 0, i32 1
  %160 = load i8*, i8** %end181, align 8
  %cmp182 = icmp ult i8* %158, %160
  br i1 %cmp182, label %land.lhs.true.184, label %if.else.202

land.lhs.true.184:                                ; preds = %if.then.179
  %161 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next185 = getelementptr inbounds %struct.parse, %struct.parse* %161, i32 0, i32 0
  %162 = load i8*, i8** %next185, align 8
  %163 = load i8, i8* %162, align 1
  %conv186 = zext i8 %163 to i32
  %idxprom187 = sext i32 %conv186 to i64
  %call188 = call i16** @__ctype_b_loc() #7
  %164 = load i16*, i16** %call188, align 8
  %arrayidx189 = getelementptr inbounds i16, i16* %164, i64 %idxprom187
  %165 = load i16, i16* %arrayidx189, align 2
  %conv190 = zext i16 %165 to i32
  %and191 = and i32 %conv190, 2048
  %tobool192 = icmp ne i32 %and191, 0
  br i1 %tobool192, label %if.then.193, label %if.else.202

if.then.193:                                      ; preds = %land.lhs.true.184
  %166 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call194 = call i32 @p_count(%struct.parse* %166)
  store i32 %call194, i32* %count2, align 4
  %167 = load i32, i32* %count, align 4
  %168 = load i32, i32* %count2, align 4
  %cmp195 = icmp sle i32 %167, %168
  br i1 %cmp195, label %lor.end.200, label %lor.rhs.197

lor.rhs.197:                                      ; preds = %if.then.193
  %169 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call198 = call i32 @seterr(%struct.parse* %169, i32 10)
  %tobool199 = icmp ne i32 %call198, 0
  br label %lor.end.200

lor.end.200:                                      ; preds = %lor.rhs.197, %if.then.193
  %170 = phi i1 [ true, %if.then.193 ], [ %tobool199, %lor.rhs.197 ]
  %lor.ext201 = zext i1 %170 to i32
  br label %if.end.203

if.else.202:                                      ; preds = %land.lhs.true.184, %if.then.179
  store i32 256, i32* %count2, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.202, %lor.end.200
  br label %if.end.205

if.else.204:                                      ; preds = %cond.false.178, %cond.true.175
  %171 = load i32, i32* %count, align 4
  store i32 %171, i32* %count2, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.204, %if.end.203
  %172 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %173 = load i64, i64* %pos, align 8
  %174 = load i32, i32* %count, align 4
  %175 = load i32, i32* %count2, align 4
  call void @repeat(%struct.parse* %172, i64 %173, i32 %174, i32 %175)
  %176 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next206 = getelementptr inbounds %struct.parse, %struct.parse* %176, i32 0, i32 0
  %177 = load i8*, i8** %next206, align 8
  %178 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end207 = getelementptr inbounds %struct.parse, %struct.parse* %178, i32 0, i32 1
  %179 = load i8*, i8** %end207, align 8
  %cmp208 = icmp ult i8* %177, %179
  br i1 %cmp208, label %land.lhs.true.210, label %cond.false.230

land.lhs.true.210:                                ; preds = %if.end.205
  %180 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next211 = getelementptr inbounds %struct.parse, %struct.parse* %180, i32 0, i32 0
  %181 = load i8*, i8** %next211, align 8
  %add.ptr212 = getelementptr inbounds i8, i8* %181, i64 1
  %182 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end213 = getelementptr inbounds %struct.parse, %struct.parse* %182, i32 0, i32 1
  %183 = load i8*, i8** %end213, align 8
  %cmp214 = icmp ult i8* %add.ptr212, %183
  br i1 %cmp214, label %land.lhs.true.216, label %cond.false.230

land.lhs.true.216:                                ; preds = %land.lhs.true.210
  %184 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next217 = getelementptr inbounds %struct.parse, %struct.parse* %184, i32 0, i32 0
  %185 = load i8*, i8** %next217, align 8
  %186 = load i8, i8* %185, align 1
  %conv218 = sext i8 %186 to i32
  %cmp219 = icmp eq i32 %conv218, 92
  br i1 %cmp219, label %land.lhs.true.221, label %cond.false.230

land.lhs.true.221:                                ; preds = %land.lhs.true.216
  %187 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next222 = getelementptr inbounds %struct.parse, %struct.parse* %187, i32 0, i32 0
  %188 = load i8*, i8** %next222, align 8
  %add.ptr223 = getelementptr inbounds i8, i8* %188, i64 1
  %189 = load i8, i8* %add.ptr223, align 1
  %conv224 = sext i8 %189 to i32
  %cmp225 = icmp eq i32 %conv224, 125
  br i1 %cmp225, label %cond.true.227, label %cond.false.230

cond.true.227:                                    ; preds = %land.lhs.true.221
  %190 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next228 = getelementptr inbounds %struct.parse, %struct.parse* %190, i32 0, i32 0
  %191 = load i8*, i8** %next228, align 8
  %add.ptr229 = getelementptr inbounds i8, i8* %191, i64 2
  store i8* %add.ptr229, i8** %next228, align 8
  br i1 true, label %if.end.270, label %if.then.231

cond.false.230:                                   ; preds = %land.lhs.true.221, %land.lhs.true.216, %land.lhs.true.210, %if.end.205
  br i1 false, label %if.end.270, label %if.then.231

if.then.231:                                      ; preds = %cond.false.230, %cond.true.227
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.231
  %192 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next232 = getelementptr inbounds %struct.parse, %struct.parse* %192, i32 0, i32 0
  %193 = load i8*, i8** %next232, align 8
  %194 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end233 = getelementptr inbounds %struct.parse, %struct.parse* %194, i32 0, i32 1
  %195 = load i8*, i8** %end233, align 8
  %cmp234 = icmp ult i8* %193, %195
  br i1 %cmp234, label %land.rhs, label %land.end.257

land.rhs:                                         ; preds = %while.cond
  %196 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next236 = getelementptr inbounds %struct.parse, %struct.parse* %196, i32 0, i32 0
  %197 = load i8*, i8** %next236, align 8
  %198 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end237 = getelementptr inbounds %struct.parse, %struct.parse* %198, i32 0, i32 1
  %199 = load i8*, i8** %end237, align 8
  %cmp238 = icmp ult i8* %197, %199
  br i1 %cmp238, label %land.lhs.true.240, label %land.end

land.lhs.true.240:                                ; preds = %land.rhs
  %200 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next241 = getelementptr inbounds %struct.parse, %struct.parse* %200, i32 0, i32 0
  %201 = load i8*, i8** %next241, align 8
  %add.ptr242 = getelementptr inbounds i8, i8* %201, i64 1
  %202 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end243 = getelementptr inbounds %struct.parse, %struct.parse* %202, i32 0, i32 1
  %203 = load i8*, i8** %end243, align 8
  %cmp244 = icmp ult i8* %add.ptr242, %203
  br i1 %cmp244, label %land.lhs.true.246, label %land.end

land.lhs.true.246:                                ; preds = %land.lhs.true.240
  %204 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next247 = getelementptr inbounds %struct.parse, %struct.parse* %204, i32 0, i32 0
  %205 = load i8*, i8** %next247, align 8
  %206 = load i8, i8* %205, align 1
  %conv248 = sext i8 %206 to i32
  %cmp249 = icmp eq i32 %conv248, 92
  br i1 %cmp249, label %land.rhs.251, label %land.end

land.rhs.251:                                     ; preds = %land.lhs.true.246
  %207 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next252 = getelementptr inbounds %struct.parse, %struct.parse* %207, i32 0, i32 0
  %208 = load i8*, i8** %next252, align 8
  %add.ptr253 = getelementptr inbounds i8, i8* %208, i64 1
  %209 = load i8, i8* %add.ptr253, align 1
  %conv254 = sext i8 %209 to i32
  %cmp255 = icmp eq i32 %conv254, 125
  br label %land.end

land.end:                                         ; preds = %land.rhs.251, %land.lhs.true.246, %land.lhs.true.240, %land.rhs
  %210 = phi i1 [ false, %land.lhs.true.246 ], [ false, %land.lhs.true.240 ], [ false, %land.rhs ], [ %cmp255, %land.rhs.251 ]
  %lnot = xor i1 %210, true
  br label %land.end.257

land.end.257:                                     ; preds = %land.end, %while.cond
  %211 = phi i1 [ false, %while.cond ], [ %lnot, %land.end ]
  br i1 %211, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.257
  %212 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next258 = getelementptr inbounds %struct.parse, %struct.parse* %212, i32 0, i32 0
  %213 = load i8*, i8** %next258, align 8
  %incdec.ptr259 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %incdec.ptr259, i8** %next258, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.257
  %214 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %next260 = getelementptr inbounds %struct.parse, %struct.parse* %214, i32 0, i32 0
  %215 = load i8*, i8** %next260, align 8
  %216 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %end261 = getelementptr inbounds %struct.parse, %struct.parse* %216, i32 0, i32 1
  %217 = load i8*, i8** %end261, align 8
  %cmp262 = icmp ult i8* %215, %217
  br i1 %cmp262, label %lor.end.267, label %lor.rhs.264

lor.rhs.264:                                      ; preds = %while.end
  %218 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call265 = call i32 @seterr(%struct.parse* %218, i32 9)
  %tobool266 = icmp ne i32 %call265, 0
  br label %lor.end.267

lor.end.267:                                      ; preds = %lor.rhs.264, %while.end
  %219 = phi i1 [ true, %while.end ], [ %tobool266, %lor.rhs.264 ]
  %lor.ext268 = zext i1 %219 to i32
  %220 = load %struct.parse*, %struct.parse** %p.addr, align 8
  %call269 = call i32 @seterr(%struct.parse* %220, i32 10)
  br label %if.end.270

if.end.270:                                       ; preds = %lor.end.267, %cond.false.230, %cond.true.227
  br label %if.end.276

if.else.271:                                      ; preds = %cond.false.163, %cond.true.160
  %221 = load i32, i32* %c, align 4
  %cmp272 = icmp eq i32 %221, 36
  br i1 %cmp272, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %if.else.271
  store i32 1, i32* %retval
  br label %return

if.end.275:                                       ; preds = %if.else.271
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.end.270
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.then.127
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.277, %if.then.274
  %222 = load i32, i32* %retval
  ret i32 %222
}

; Function Attrs: nounwind uwtable
define internal i32 @isinsets(%struct.re_guts* %g, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.re_guts*, align 8
  %c.addr = alloca i32, align 4
  %col = alloca i8*, align 8
  %i = alloca i32, align 4
  %ncols = alloca i32, align 4
  %uc = alloca i32, align 4
  store %struct.re_guts* %g, %struct.re_guts** %g.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %ncsets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %0, i32 0, i32 3
  %1 = load i32, i32* %ncsets, align 4
  %add = add nsw i32 %1, 7
  %div = sdiv i32 %add, 8
  store i32 %div, i32* %ncols, align 4
  %2 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %2 to i8
  %conv1 = zext i8 %conv to i32
  store i32 %conv1, i32* %uc, align 4
  store i32 0, i32* %i, align 4
  %3 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %setbits = getelementptr inbounds %struct.re_guts, %struct.re_guts* %3, i32 0, i32 5
  %4 = load i8*, i8** %setbits, align 8
  store i8* %4, i8** %col, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %ncols, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %uc, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %9 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  %11 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %csetsize = getelementptr inbounds %struct.re_guts, %struct.re_guts* %11, i32 0, i32 2
  %12 = load i32, i32* %csetsize, align 4
  %13 = load i8*, i8** %col, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %col, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @samesets(%struct.re_guts* %g, i32 %c1, i32 %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.re_guts*, align 8
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %col = alloca i8*, align 8
  %i = alloca i32, align 4
  %ncols = alloca i32, align 4
  %uc1 = alloca i32, align 4
  %uc2 = alloca i32, align 4
  store %struct.re_guts* %g, %struct.re_guts** %g.addr, align 8
  store i32 %c1, i32* %c1.addr, align 4
  store i32 %c2, i32* %c2.addr, align 4
  %0 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %ncsets = getelementptr inbounds %struct.re_guts, %struct.re_guts* %0, i32 0, i32 3
  %1 = load i32, i32* %ncsets, align 4
  %add = add nsw i32 %1, 7
  %div = sdiv i32 %add, 8
  store i32 %div, i32* %ncols, align 4
  %2 = load i32, i32* %c1.addr, align 4
  %conv = trunc i32 %2 to i8
  %conv1 = zext i8 %conv to i32
  store i32 %conv1, i32* %uc1, align 4
  %3 = load i32, i32* %c2.addr, align 4
  %conv2 = trunc i32 %3 to i8
  %conv3 = zext i8 %conv2 to i32
  store i32 %conv3, i32* %uc2, align 4
  store i32 0, i32* %i, align 4
  %4 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %setbits = getelementptr inbounds %struct.re_guts, %struct.re_guts* %4, i32 0, i32 5
  %5 = load i8*, i8** %setbits, align 8
  store i8* %5, i8** %col, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %ncols, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %uc1, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv5 = zext i8 %10 to i32
  %11 = load i32, i32* %uc2, align 4
  %idxprom6 = zext i32 %11 to i64
  %12 = load i8*, i8** %col, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  %13 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %13 to i32
  %cmp9 = icmp ne i32 %conv5, %conv8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %15 = load %struct.re_guts*, %struct.re_guts** %g.addr, align 8
  %csetsize = getelementptr inbounds %struct.re_guts, %struct.re_guts* %15, i32 0, i32 2
  %16 = load i32, i32* %csetsize, align 4
  %17 = load i8*, i8** %col, align 8
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %col, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
