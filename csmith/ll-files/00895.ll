; ModuleID = '00895.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_5 = internal global i16 -1, align 2
@.str.1 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_7 = internal global i32 4, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_7\00", align 1
@g_8 = internal global i32 1545029428, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_9 = internal global [8 x i32] [i32 -8, i32 1, i32 -8, i32 -8, i32 1, i32 -8, i32 -8, i32 1], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"g_9[i]\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_12 = internal global i32 876162848, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_12\00", align 1
@g_16 = internal global i16 8123, align 2
@.str.7 = private unnamed_addr constant [5 x i8] c"g_16\00", align 1
@g_45 = internal global i16 32152, align 2
@.str.8 = private unnamed_addr constant [5 x i8] c"g_45\00", align 1
@g_124 = internal global i8 82, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"g_124\00", align 1
@g_145 = internal global i64 3710512987168159683, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"g_145\00", align 1
@g_151 = internal global i16 0, align 2
@.str.11 = private unnamed_addr constant [6 x i8] c"g_151\00", align 1
@g_155 = internal global i16 0, align 2
@.str.12 = private unnamed_addr constant [6 x i8] c"g_155\00", align 1
@g_157 = internal global [3 x i64] [i64 -4430605804971561321, i64 -4430605804971561321, i64 -4430605804971561321], align 16
@.str.13 = private unnamed_addr constant [9 x i8] c"g_157[i]\00", align 1
@g_173 = internal global i32 -9, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"g_173\00", align 1
@g_199 = internal global i64 1, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"g_199\00", align 1
@g_212 = internal global i8 -1, align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"g_212\00", align 1
@g_267 = internal global i8 91, align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"g_267\00", align 1
@g_276 = internal global i32 1510957879, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_276\00", align 1
@g_311 = internal global i8 -64, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_311\00", align 1
@g_471 = internal global %union.U0 { i32 852275792 }, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"g_471.f0\00", align 1
@g_472 = internal global %union.U0 { i32 -1435390517 }, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"g_472.f0\00", align 1
@g_486 = internal global i8 -1, align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_486\00", align 1
@g_511 = internal global [7 x i32] [i32 1997640585, i32 1997640585, i32 1, i32 1997640585, i32 1997640585, i32 1, i32 1997640585], align 16
@.str.23 = private unnamed_addr constant [9 x i8] c"g_511[i]\00", align 1
@g_530 = internal global [4 x [10 x [3 x i8]]] [[10 x [3 x i8]] [[3 x i8] c"\B3\FF\8F", [3 x i8] c"\0B.5", [3 x i8] c"\D0.\00", [3 x i8] c"\A4\FF\FF", [3 x i8] c"9\00\EA", [3 x i8] c"[\FF\06", [3 x i8] c"\FF\01\15", [3 x i8] c"5\F7\F7", [3 x i8] c",\F7\F7", [3 x i8] c"\A1!\15"], [10 x [3 x i8]] [[3 x i8] c"\01\FF\06", [3 x i8] c"\81\95\F7", [3 x i8] c"\00\FF\FA", [3 x i8] c"9!\F7", [3 x i8] c"\09\F7\FF", [3 x i8] c"\09\F7h", [3 x i8] c"9\01\89", [3 x i8] c"\00\FA\FD", [3 x i8] c"\81\FD\89", [3 x i8] c"\01\E7h"], [10 x [3 x i8]] [[3 x i8] c"\A1>\FF", [3 x i8] c",>\F7", [3 x i8] c"5\E7\FA", [3 x i8] c"\FF\FD\F7", [3 x i8] c"P\FA\06", [3 x i8] c"\FF\01\15", [3 x i8] c"5\F7\F7", [3 x i8] c",\F7\F7", [3 x i8] c"\A1!\15", [3 x i8] c"\01\FF\06"], [10 x [3 x i8]] [[3 x i8] c"\81\95\F7", [3 x i8] c"\00\FF\FA", [3 x i8] c"9!\F7", [3 x i8] c"\09\F7\FF", [3 x i8] c"\09\F7h", [3 x i8] c"9\01\89", [3 x i8] c"\00\FA\FD", [3 x i8] c"\81\FD\89", [3 x i8] c"\01\E7h", [3 x i8] c"\A1>\FF"]], align 16
@.str.24 = private unnamed_addr constant [15 x i8] c"g_530[i][j][k]\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_725 = internal global [2 x i64] zeroinitializer, align 16
@.str.26 = private unnamed_addr constant [9 x i8] c"g_725[i]\00", align 1
@g_730 = internal global [8 x [5 x [6 x i16]]] [[5 x [6 x i16]] [[6 x i16] [i16 7524, i16 -23181, i16 0, i16 -7, i16 0, i16 9], [6 x i16] [i16 -28694, i16 -1, i16 7524, i16 -10, i16 16979, i16 -8], [6 x i16] [i16 -10, i16 16979, i16 -8, i16 -7, i16 -3, i16 -7], [6 x i16] [i16 30118, i16 -11172, i16 30118, i16 1028, i16 -26923, i16 -1], [6 x i16] [i16 0, i16 -18237, i16 0, i16 -28722, i16 -1, i16 -1]], [5 x [6 x i16]] [[6 x i16] [i16 -7008, i16 -31805, i16 3735, i16 -28722, i16 -1502, i16 1028], [6 x i16] [i16 0, i16 0, i16 -7, i16 1028, i16 -14163, i16 0], [6 x i16] [i16 30118, i16 -26591, i16 -7, i16 -7, i16 -5, i16 -1], [6 x i16] [i16 -10, i16 -14163, i16 5057, i16 -10, i16 -31805, i16 0], [6 x i16] [i16 -28694, i16 26602, i16 8, i16 -7, i16 1, i16 0]], [5 x [6 x i16]] [[6 x i16] [i16 7524, i16 0, i16 -10, i16 -1, i16 1, i16 3735], [6 x i16] [i16 -19059, i16 26602, i16 -7008, i16 -3, i16 -31805, i16 18183], [6 x i16] [i16 -1, i16 -14163, i16 -15828, i16 3735, i16 -5, i16 -3], [6 x i16] [i16 5057, i16 -26591, i16 -1, i16 1, i16 -14163, i16 30118], [6 x i16] [i16 -1, i16 0, i16 -28694, i16 7524, i16 -1502, i16 5057]], [5 x [6 x i16]] [[6 x i16] [i16 1, i16 -31805, i16 -6, i16 18183, i16 -1, i16 5057], [6 x i16] [i16 -28722, i16 -18237, i16 -28694, i16 -19059, i16 -26923, i16 30118], [6 x i16] [i16 8, i16 -11172, i16 -1, i16 -8, i16 -3, i16 -3], [6 x i16] [i16 18183, i16 16979, i16 -15828, i16 -15828, i16 16979, i16 18183], [6 x i16] [i16 -1, i16 -1, i16 -7008, i16 -2, i16 0, i16 3735]], [5 x [6 x i16]] [[6 x i16] [i16 -3, i16 -23181, i16 -10, i16 8, i16 -26591, i16 0], [6 x i16] [i16 -3, i16 10949, i16 8, i16 -2, i16 0, i16 0], [6 x i16] [i16 -1, i16 0, i16 5057, i16 -15828, i16 -6, i16 3], [6 x i16] [i16 -18547, i16 -19059, i16 6, i16 -3, i16 -1, i16 -5589], [6 x i16] [i16 0, i16 0, i16 18576, i16 16063, i16 1, i16 -23433]], [5 x [6 x i16]] [[6 x i16] [i16 -1, i16 1028, i16 -1, i16 -18547, i16 7, i16 9], [6 x i16] [i16 11665, i16 1028, i16 -5589, i16 1, i16 1, i16 11211], [6 x i16] [i16 9, i16 0, i16 8351, i16 11665, i16 -1, i16 18576], [6 x i16] [i16 -25617, i16 -19059, i16 -3, i16 -1, i16 -6, i16 -3], [6 x i16] [i16 21018, i16 14290, i16 1, i16 -20209, i16 3735, i16 1]], [5 x [6 x i16]] [[6 x i16] [i16 16063, i16 -1, i16 -1335, i16 3, i16 -7008, i16 1], [6 x i16] [i16 1, i16 -8, i16 -1335, i16 6, i16 14290, i16 1], [6 x i16] [i16 -1, i16 -1, i16 1, i16 0, i16 -15828, i16 -3], [6 x i16] [i16 0, i16 -15828, i16 -3, i16 18576, i16 -3, i16 18576], [6 x i16] [i16 8351, i16 -10, i16 8351, i16 -23433, i16 7524, i16 11211]], [5 x [6 x i16]] [[6 x i16] [i16 0, i16 -1, i16 -5589, i16 -1, i16 0, i16 9], [6 x i16] [i16 0, i16 -28694, i16 -1, i16 -1, i16 -7, i16 -23433], [6 x i16] [i16 0, i16 1, i16 18576, i16 -23433, i16 9, i16 -5589], [6 x i16] [i16 8351, i16 -7008, i16 6, i16 18576, i16 8, i16 3], [6 x i16] [i16 0, i16 9, i16 -25617, i16 0, i16 -28694, i16 -4]]], align 16
@.str.27 = private unnamed_addr constant [15 x i8] c"g_730[i][j][k]\00", align 1
@g_799 = internal global i8 4, align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"g_799\00", align 1
@g_840 = internal global [1 x [9 x i32]] [[9 x i32] [i32 829478276, i32 1, i32 829478276, i32 1, i32 829478276, i32 1, i32 829478276, i32 1, i32 829478276]], align 16
@.str.29 = private unnamed_addr constant [12 x i8] c"g_840[i][j]\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_1138 = internal global [4 x [7 x i32]] [[7 x i32] [i32 1, i32 1, i32 205753400, i32 -946140406, i32 1, i32 912395192, i32 1], [7 x i32] [i32 205753400, i32 983198567, i32 983198567, i32 205753400, i32 912395192, i32 553930438, i32 1], [7 x i32] [i32 1, i32 553930438, i32 912395192, i32 205753400, i32 983198567, i32 983198567, i32 205753400], [7 x i32] [i32 1, i32 1, i32 1, i32 553930438, i32 -788885305, i32 1, i32 1]], align 16
@.str.31 = private unnamed_addr constant [13 x i8] c"g_1138[i][j]\00", align 1
@g_1149 = internal global [10 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 -1, i32 -1, i32 -9, i32 0, i32 -1, i32 -1], [8 x i32] [i32 0, i32 -9, i32 0, i32 0, i32 -9, i32 0, i32 8, i32 0], [8 x i32] [i32 0, i32 -9, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 -1], [8 x i32] [i32 -695936680, i32 0, i32 0, i32 -1, i32 -695936680, i32 -695936680, i32 -1, i32 0], [8 x i32] [i32 -695936680, i32 -695936680, i32 -1, i32 0, i32 0, i32 -695936680, i32 9, i32 -1], [8 x i32] [i32 0, i32 0, i32 -1, i32 -1, i32 -9, i32 0, i32 -1, i32 -1], [8 x i32] [i32 0, i32 -9, i32 0, i32 0, i32 -9, i32 0, i32 8, i32 0], [8 x i32] [i32 0, i32 -9, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 -1], [8 x i32] [i32 -695936680, i32 0, i32 0, i32 -1, i32 -695936680, i32 -695936680, i32 -1, i32 0], [8 x i32] [i32 -695936680, i32 -695936680, i32 -1, i32 0, i32 0, i32 -695936680, i32 9, i32 -1]], align 16
@.str.32 = private unnamed_addr constant [13 x i8] c"g_1149[i][j]\00", align 1
@g_1164 = internal global i16 -13011, align 2
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1164\00", align 1
@g_1190 = internal global i64 -8664506120032355393, align 8
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1190\00", align 1
@g_1254 = internal global i16 -1, align 2
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1254\00", align 1
@g_1271 = internal global i64 -10, align 8
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1271\00", align 1
@g_1319 = internal global [9 x i64] [i64 1569573681174199820, i64 1569573681174199820, i64 1569573681174199820, i64 1569573681174199820, i64 1569573681174199820, i64 1569573681174199820, i64 1569573681174199820, i64 1569573681174199820, i64 1569573681174199820], align 16
@.str.37 = private unnamed_addr constant [10 x i8] c"g_1319[i]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2 = private unnamed_addr constant [1 x [10 x [10 x i8]]] [[10 x [10 x i8]] [[10 x i8] c"\FE\A2\C6\B6\FF\00k\C6\14\FF", [10 x i8] c"\FF\B6\02\CB\FF\FF\CB\02\B6\14", [10 x i8] c"k\00\FF\01\CB\B6\00\FFW\14", [10 x i8] c"\A2W\7F\00\CB\14\01\7F\01\14", [10 x i8] c"\CB\00\16\00\CBk\FA\16\00\14", [10 x i8] c"\B6\018\FA\CB\A2\008\00\14", [10 x i8] c"\14\FA\00W\CB\CBW\00\FA\14", [10 x i8] c"k\00\FF\01\CB\B6\00\FFW\14", [10 x i8] c"\A2W\7F\00\CB\14\01\7F\01\14", [10 x i8] c"\CB\00\16\00\CBk\FA\16\00\14"]], align 16
@g_1110 = internal global i8** bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i8*]* @g_330 to i8*), i64 8) to i8**), align 8
@func_1.l_1111 = private unnamed_addr constant [10 x [10 x i8***]] [[10 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** @g_1110], [10 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** null, i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** null, i8*** null], [10 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [10 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** null, i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** null], [10 x i8***] [i8*** null, i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [10 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [10 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** null], [10 x i8***] [i8*** @g_1110, i8*** null, i8*** null, i8*** null, i8*** @g_1110, i8*** null, i8*** null, i8*** @g_1110, i8*** null, i8*** @g_1110], [10 x i8***] [i8*** @g_1110, i8*** null, i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110], [10 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110]], align 16
@func_1.l_1162 = private unnamed_addr constant [7 x i32] [i32 1656969612, i32 1656969612, i32 1656969612, i32 1656969612, i32 1656969612, i32 1656969612, i32 1656969612], align 16
@g_563 = internal global i32** null, align 8
@func_1.l_1387 = private unnamed_addr constant [10 x [9 x [2 x i16]]] [[9 x [2 x i16]] [[2 x i16] [i16 1, i16 0], [2 x i16] [i16 -11591, i16 1], [2 x i16] [i16 0, i16 -873], [2 x i16] [i16 31868, i16 -8], [2 x i16] [i16 1, i16 0], [2 x i16] [i16 -8, i16 -6], [2 x i16] [i16 0, i16 20194], [2 x i16] [i16 -14566, i16 -2], [2 x i16] [i16 7179, i16 31868]], [9 x [2 x i16]] [[2 x i16] [i16 -8535, i16 -8], [2 x i16] [i16 1, i16 -1], [2 x i16] [i16 1, i16 -5], [2 x i16] [i16 -3876, i16 10093], [2 x i16] [i16 -24373, i16 19437], [2 x i16] [i16 -2627, i16 1], [2 x i16] [i16 -873, i16 -1], [2 x i16] [i16 1, i16 -7274], [2 x i16] [i16 -17004, i16 -2]], [9 x [2 x i16]] [[2 x i16] [i16 -6, i16 -11591], [2 x i16] [i16 -5, i16 7179], [2 x i16] [i16 1, i16 1], [2 x i16] [i16 1, i16 0], [2 x i16] [i16 -8, i16 -12412], [2 x i16] zeroinitializer, [2 x i16] [i16 -15361, i16 0], [2 x i16] [i16 -1, i16 0], [2 x i16] [i16 -1, i16 0]], [9 x [2 x i16]] [[2 x i16] [i16 -15361, i16 0], [2 x i16] [i16 0, i16 -12412], [2 x i16] [i16 -8, i16 0], [2 x i16] [i16 1, i16 1], [2 x i16] [i16 1, i16 7179], [2 x i16] [i16 -5, i16 -11591], [2 x i16] [i16 -6, i16 -2], [2 x i16] [i16 -17004, i16 -7274], [2 x i16] [i16 1, i16 -1]], [9 x [2 x i16]] [[2 x i16] [i16 -873, i16 1], [2 x i16] [i16 -2627, i16 19437], [2 x i16] [i16 -24373, i16 10093], [2 x i16] [i16 -3876, i16 -5], [2 x i16] [i16 1, i16 -1], [2 x i16] [i16 1, i16 -8], [2 x i16] [i16 -8535, i16 31868], [2 x i16] [i16 7179, i16 -2], [2 x i16] [i16 -14566, i16 20194]], [9 x [2 x i16]] [[2 x i16] [i16 0, i16 -6], [2 x i16] [i16 -8, i16 0], [2 x i16] [i16 1, i16 -8], [2 x i16] [i16 31868, i16 -873], [2 x i16] [i16 0, i16 1], [2 x i16] [i16 -1, i16 15830], [2 x i16] [i16 -12412, i16 8], [2 x i16] [i16 0, i16 8], [2 x i16] [i16 -12412, i16 15830]], [9 x [2 x i16]] [[2 x i16] [i16 -1, i16 1], [2 x i16] [i16 0, i16 -873], [2 x i16] [i16 31868, i16 -8], [2 x i16] [i16 1, i16 0], [2 x i16] [i16 -8, i16 -6], [2 x i16] [i16 0, i16 20194], [2 x i16] [i16 -14566, i16 -2], [2 x i16] [i16 7179, i16 31868], [2 x i16] [i16 -8535, i16 -8]], [9 x [2 x i16]] [[2 x i16] [i16 1, i16 -1], [2 x i16] [i16 1, i16 -5], [2 x i16] [i16 -3876, i16 10093], [2 x i16] [i16 -24373, i16 19437], [2 x i16] [i16 -2627, i16 1], [2 x i16] [i16 -873, i16 -1], [2 x i16] [i16 1, i16 -7274], [2 x i16] [i16 -17004, i16 -2], [2 x i16] [i16 -6, i16 -11591]], [9 x [2 x i16]] [[2 x i16] [i16 -5, i16 7179], [2 x i16] [i16 1, i16 1], [2 x i16] [i16 1, i16 0], [2 x i16] [i16 -8, i16 -12412], [2 x i16] zeroinitializer, [2 x i16] [i16 -15361, i16 0], [2 x i16] [i16 -1, i16 0], [2 x i16] [i16 -1, i16 0], [2 x i16] [i16 -15361, i16 0]], [9 x [2 x i16]] [[2 x i16] [i16 0, i16 -12412], [2 x i16] [i16 -8, i16 0], [2 x i16] [i16 1, i16 1], [2 x i16] [i16 1, i16 7179], [2 x i16] [i16 -5, i16 -11591], [2 x i16] [i16 -6, i16 -2], [2 x i16] [i16 -17004, i16 -7274], [2 x i16] [i16 1, i16 -1], [2 x i16] [i16 -873, i16 1]]], align 16
@g_658 = internal global i32*** null, align 8
@func_1.l_1450 = private unnamed_addr constant [8 x [10 x [3 x i8]]] [[10 x [3 x i8]] [[3 x i8] c"\FF\00\A7", [3 x i8] c"\C5\FF\EE", [3 x i8] c"|\00\FF", [3 x i8] c"\BD\9F\01", [3 x i8] c"\05\B2\82", [3 x i8] c"B\08\82", [3 x i8] c"\00\07\01", [3 x i8] c"]\05\FF", [3 x i8] c"f\B2\EE", [3 x i8] c"\0C|\A7"], [10 x [3 x i8]] [[3 x i8] c"_B\18", [3 x i8] c"\0C\00\FB", [3 x i8] c"f\E7[", [3 x i8] c"]\05r", [3 x i8] c"\00he", [3 x i8] c"Bhj", [3 x i8] c"\05\05\E8", [3 x i8] c"\BD\E7\A2", [3 x i8] c"|\00.", [3 x i8] c"\C5B\09"], [10 x [3 x i8]] [[3 x i8] c"\FF|.", [3 x i8] c"h\B2\A2", [3 x i8] c"\B2\05\E8", [3 x i8] c"\B9\07j", [3 x i8] c" \08e", [3 x i8] c" \B2r", [3 x i8] c"\B9\9F[", [3 x i8] c"\B2\00\FB", [3 x i8] c"h\FF\18", [3 x i8] c"\FF\00\A7"], [10 x [3 x i8]] [[3 x i8] c"\C5\FF\EE", [3 x i8] c"|\00\FF", [3 x i8] c"\BD\9F\01", [3 x i8] c"\05\B2\82", [3 x i8] c"B\08\82", [3 x i8] c"\00\07\01", [3 x i8] c"]\05\FF", [3 x i8] c"f\B2\EE", [3 x i8] c"\0C|\A7", [3 x i8] c"_B\18"], [10 x [3 x i8]] [[3 x i8] c"\0C\00\FB", [3 x i8] c"f\E7[", [3 x i8] c"]\05r", [3 x i8] c"\00he", [3 x i8] c"Bhj", [3 x i8] c"\05\05\E8", [3 x i8] c"\BD\E7\A2", [3 x i8] c"|\00.", [3 x i8] c"\C5B\09", [3 x i8] c"\FF|."], [10 x [3 x i8]] [[3 x i8] c"h\B2\A2", [3 x i8] c"\B2\05\E8", [3 x i8] c"\B9\07j", [3 x i8] c" \08e", [3 x i8] c" \B2r", [3 x i8] c"\B9\9F[", [3 x i8] c"\B2\00\FB", [3 x i8] c"h\FF\18", [3 x i8] c"\FF\00\A7", [3 x i8] c"9\FF\9F"], [10 x [3 x i8]] [[3 x i8] c"\01m\83", [3 x i8] c"\F8J\E7", [3 x i8] c"\01\FF]", [3 x i8] c"+\FA]", [3 x i8] c"m\01\E7", [3 x i8] c"\00\F9\83", [3 x i8] c"\FF\A7\9F", [3 x i8] c"\06\01_", [3 x i8] c"\01+\01", [3 x i8] c"\06s "], [10 x [3 x i8]] [[3 x i8] c"\FF\5C\05", [3 x i8] c"\00\01\C5", [3 x i8] c"m\00\00", [3 x i8] c"+\00\05", [3 x i8] c"\01\01B", [3 x i8] c"\F8\5C\BD", [3 x i8] c"\01s\00", [3 x i8] c"9+\00", [3 x i8] c"\FF\01\00", [3 x i8] c"\00\A7\BD"]], align 16
@func_1.l_1150 = private unnamed_addr constant [8 x i32] [i32 1, i32 1, i32 -1361826107, i32 1, i32 1, i32 -1361826107, i32 1, i32 1], align 16
@g_494 = internal global i16** @g_495, align 8
@func_1.l_1233 = private unnamed_addr constant [10 x [1 x i64]] [[1 x i64] [i64 1], [1 x i64] [i64 -1], [1 x i64] [i64 1], [1 x i64] [i64 -1], [1 x i64] [i64 1], [1 x i64] [i64 -1], [1 x i64] [i64 1], [1 x i64] [i64 -1], [1 x i64] [i64 1], [1 x i64] [i64 -1]], align 16
@g_1109 = internal global [6 x [8 x [5 x i8***]]] [[8 x [5 x i8***]] [[5 x i8***] [i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** @g_1110], [5 x i8***] [i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** null], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** @g_1110]], [8 x [5 x i8***]] [[5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** null], [5 x i8***] [i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** null], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110]], [8 x [5 x i8***]] [[5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110]], [8 x [5 x i8***]] [[5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** null, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** null, i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** null], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110]], [8 x [5 x i8***]] [[5 x i8***] [i8*** @g_1110, i8*** null, i8*** null, i8*** @g_1110, i8*** null], [5 x i8***] [i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110]], [8 x [5 x i8***]] [[5 x i8***] [i8*** @g_1110, i8*** null, i8*** null, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** null, i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** null, i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110], [5 x i8***] [i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** @g_1110, i8*** null], [5 x i8***] [i8*** @g_1110, i8*** null, i8*** @g_1110, i8*** @g_1110, i8*** null]]], align 16
@g_109 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_9 to i8*), i64 4) to i32*), align 8
@g_330 = internal global [3 x i8*] [i8* @g_212, i8* @g_212, i8* @g_212], align 16
@g_495 = internal global i16* @g_5, align 8
@.str.38 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %4 = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %print_hash_value, align 4, !tbaa !1
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %89

; <label>:12                                      ; preds = %0
  %13 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %15, label %77

; <label>:15                                      ; preds = %12
  store i64 1, i64* %__s2_len, align 8, !tbaa !7
  %16 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %77

; <label>:18                                      ; preds = %15
  %19 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i8**, i8*** %3, align 8, !tbaa !5
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8, !tbaa !5
  store i8* %22, i8** %__s1, align 8, !tbaa !5
  %23 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i8*, i8** %__s1, align 8, !tbaa !5
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = sub nsw i32 %27, %29
  store i32 %30, i32* %__result, align 4, !tbaa !1
  %31 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %72

; <label>:33                                      ; preds = %18
  %34 = load i32, i32* %__result, align 4, !tbaa !1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %72

; <label>:36                                      ; preds = %33
  %37 = load i8*, i8** %__s1, align 8, !tbaa !5
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1, !tbaa !9
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %40, %42
  store i32 %43, i32* %__result, align 4, !tbaa !1
  %44 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %45 = icmp ugt i64 %44, 1
  br i1 %45, label %46, label %71

; <label>:46                                      ; preds = %36
  %47 = load i32, i32* %__result, align 4, !tbaa !1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %71

; <label>:49                                      ; preds = %46
  %50 = load i8*, i8** %__s1, align 8, !tbaa !5
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1, !tbaa !9
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !9
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %53, %55
  store i32 %56, i32* %__result, align 4, !tbaa !1
  %57 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %58 = icmp ugt i64 %57, 2
  br i1 %58, label %59, label %70

; <label>:59                                      ; preds = %49
  %60 = load i32, i32* %__result, align 4, !tbaa !1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

; <label>:62                                      ; preds = %59
  %63 = load i8*, i8** %__s1, align 8, !tbaa !5
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1, !tbaa !9
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %66, %68
  store i32 %69, i32* %__result, align 4, !tbaa !1
  br label %70

; <label>:70                                      ; preds = %62, %59, %49
  br label %71

; <label>:71                                      ; preds = %70, %46, %36
  br label %72

; <label>:72                                      ; preds = %71, %33, %18
  %73 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %73, i32* %5, !tbaa !1
  %74 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i32, i32* %5, !tbaa !1
  br label %82

; <label>:77                                      ; preds = %15, %12
  %78 = load i8**, i8*** %3, align 8, !tbaa !5
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8, !tbaa !5
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %82

; <label>:82                                      ; preds = %77, %72
  %83 = phi i32 [ %76, %72 ], [ %81, %77 ]
  store i32 %83, i32* %4, !tbaa !1
  %84 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %4, !tbaa !1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %82
  store i32 1, i32* %print_hash_value, align 4, !tbaa !1
  br label %89

; <label>:89                                      ; preds = %88, %82, %0
  call void @platform_main_begin()
  call void @crc32_gentab()
  %90 = call zeroext i8 @func_1()
  %91 = load i16, i16* @g_5, align 2, !tbaa !10
  %92 = sext i16 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_7, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i32, i32* @g_8, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:100                                     ; preds = %116, %89
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = icmp slt i32 %101, 8
  br i1 %102, label %103, label %119

; <label>:103                                     ; preds = %100
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* @g_9, i32 0, i64 %105
  %107 = load i32, i32* %106, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 %109)
  %110 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

; <label>:112                                     ; preds = %103
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %113)
  br label %115

; <label>:115                                     ; preds = %112, %103
  br label %116

; <label>:116                                     ; preds = %115
  %117 = load i32, i32* %i, align 4, !tbaa !1
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:119                                     ; preds = %100
  %120 = load i32, i32* @g_12, align 4, !tbaa !1
  %121 = sext i32 %120 to i64
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %122)
  %123 = load i16, i16* @g_16, align 2, !tbaa !10
  %124 = zext i16 %123 to i64
  %125 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %125)
  %126 = load i16, i16* @g_45, align 2, !tbaa !10
  %127 = sext i16 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %128)
  %129 = load i8, i8* @g_124, align 1, !tbaa !9
  %130 = sext i8 %129 to i64
  %131 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %131)
  %132 = load i64, i64* @g_145, align 8, !tbaa !7
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %133)
  %134 = load i16, i16* @g_151, align 2, !tbaa !10
  %135 = sext i16 %134 to i64
  %136 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %136)
  %137 = load i16, i16* @g_155, align 2, !tbaa !10
  %138 = sext i16 %137 to i64
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %139)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %140

; <label>:140                                     ; preds = %155, %119
  %141 = load i32, i32* %i, align 4, !tbaa !1
  %142 = icmp slt i32 %141, 3
  br i1 %142, label %143, label %158

; <label>:143                                     ; preds = %140
  %144 = load i32, i32* %i, align 4, !tbaa !1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [3 x i64], [3 x i64]* @g_157, i32 0, i64 %145
  %147 = load i64, i64* %146, align 8, !tbaa !7
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %148)
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

; <label>:151                                     ; preds = %143
  %152 = load i32, i32* %i, align 4, !tbaa !1
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %152)
  br label %154

; <label>:154                                     ; preds = %151, %143
  br label %155

; <label>:155                                     ; preds = %154
  %156 = load i32, i32* %i, align 4, !tbaa !1
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %i, align 4, !tbaa !1
  br label %140

; <label>:158                                     ; preds = %140
  %159 = load i32, i32* @g_173, align 4, !tbaa !1
  %160 = sext i32 %159 to i64
  %161 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %161)
  %162 = load i64, i64* @g_199, align 8, !tbaa !7
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %163)
  %164 = load i8, i8* @g_212, align 1, !tbaa !9
  %165 = zext i8 %164 to i64
  %166 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %166)
  %167 = load i8, i8* @g_267, align 1, !tbaa !9
  %168 = sext i8 %167 to i64
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %169)
  %170 = load i32, i32* @g_276, align 4, !tbaa !1
  %171 = zext i32 %170 to i64
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %172)
  %173 = load volatile i8, i8* @g_311, align 1, !tbaa !9
  %174 = sext i8 %173 to i64
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %175)
  %176 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_471, i32 0, i32 0), align 4, !tbaa !1
  %177 = sext i32 %176 to i64
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %178)
  %179 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_472, i32 0, i32 0), align 4, !tbaa !1
  %180 = sext i32 %179 to i64
  %181 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %181)
  %182 = load i8, i8* @g_486, align 1, !tbaa !9
  %183 = zext i8 %182 to i64
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %184)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %185

; <label>:185                                     ; preds = %201, %158
  %186 = load i32, i32* %i, align 4, !tbaa !1
  %187 = icmp slt i32 %186, 7
  br i1 %187, label %188, label %204

; <label>:188                                     ; preds = %185
  %189 = load i32, i32* %i, align 4, !tbaa !1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [7 x i32], [7 x i32]* @g_511, i32 0, i64 %190
  %192 = load volatile i32, i32* %191, align 4, !tbaa !1
  %193 = zext i32 %192 to i64
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %194)
  %195 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

; <label>:197                                     ; preds = %188
  %198 = load i32, i32* %i, align 4, !tbaa !1
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %198)
  br label %200

; <label>:200                                     ; preds = %197, %188
  br label %201

; <label>:201                                     ; preds = %200
  %202 = load i32, i32* %i, align 4, !tbaa !1
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %i, align 4, !tbaa !1
  br label %185

; <label>:204                                     ; preds = %185
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %205

; <label>:205                                     ; preds = %245, %204
  %206 = load i32, i32* %i, align 4, !tbaa !1
  %207 = icmp slt i32 %206, 4
  br i1 %207, label %208, label %248

; <label>:208                                     ; preds = %205
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %209

; <label>:209                                     ; preds = %241, %208
  %210 = load i32, i32* %j, align 4, !tbaa !1
  %211 = icmp slt i32 %210, 10
  br i1 %211, label %212, label %244

; <label>:212                                     ; preds = %209
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %213

; <label>:213                                     ; preds = %237, %212
  %214 = load i32, i32* %k, align 4, !tbaa !1
  %215 = icmp slt i32 %214, 3
  br i1 %215, label %216, label %240

; <label>:216                                     ; preds = %213
  %217 = load i32, i32* %k, align 4, !tbaa !1
  %218 = sext i32 %217 to i64
  %219 = load i32, i32* %j, align 4, !tbaa !1
  %220 = sext i32 %219 to i64
  %221 = load i32, i32* %i, align 4, !tbaa !1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [4 x [10 x [3 x i8]]], [4 x [10 x [3 x i8]]]* @g_530, i32 0, i64 %222
  %224 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* %223, i32 0, i64 %220
  %225 = getelementptr inbounds [3 x i8], [3 x i8]* %224, i32 0, i64 %218
  %226 = load i8, i8* %225, align 1, !tbaa !9
  %227 = zext i8 %226 to i64
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 %228)
  %229 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

; <label>:231                                     ; preds = %216
  %232 = load i32, i32* %i, align 4, !tbaa !1
  %233 = load i32, i32* %j, align 4, !tbaa !1
  %234 = load i32, i32* %k, align 4, !tbaa !1
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i32 %232, i32 %233, i32 %234)
  br label %236

; <label>:236                                     ; preds = %231, %216
  br label %237

; <label>:237                                     ; preds = %236
  %238 = load i32, i32* %k, align 4, !tbaa !1
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %k, align 4, !tbaa !1
  br label %213

; <label>:240                                     ; preds = %213
  br label %241

; <label>:241                                     ; preds = %240
  %242 = load i32, i32* %j, align 4, !tbaa !1
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %j, align 4, !tbaa !1
  br label %209

; <label>:244                                     ; preds = %209
  br label %245

; <label>:245                                     ; preds = %244
  %246 = load i32, i32* %i, align 4, !tbaa !1
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %i, align 4, !tbaa !1
  br label %205

; <label>:248                                     ; preds = %205
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %249

; <label>:249                                     ; preds = %264, %248
  %250 = load i32, i32* %i, align 4, !tbaa !1
  %251 = icmp slt i32 %250, 2
  br i1 %251, label %252, label %267

; <label>:252                                     ; preds = %249
  %253 = load i32, i32* %i, align 4, !tbaa !1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [2 x i64], [2 x i64]* @g_725, i32 0, i64 %254
  %256 = load i64, i64* %255, align 8, !tbaa !7
  %257 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %257)
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

; <label>:260                                     ; preds = %252
  %261 = load i32, i32* %i, align 4, !tbaa !1
  %262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %261)
  br label %263

; <label>:263                                     ; preds = %260, %252
  br label %264

; <label>:264                                     ; preds = %263
  %265 = load i32, i32* %i, align 4, !tbaa !1
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %i, align 4, !tbaa !1
  br label %249

; <label>:267                                     ; preds = %249
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %268

; <label>:268                                     ; preds = %308, %267
  %269 = load i32, i32* %i, align 4, !tbaa !1
  %270 = icmp slt i32 %269, 8
  br i1 %270, label %271, label %311

; <label>:271                                     ; preds = %268
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %272

; <label>:272                                     ; preds = %304, %271
  %273 = load i32, i32* %j, align 4, !tbaa !1
  %274 = icmp slt i32 %273, 5
  br i1 %274, label %275, label %307

; <label>:275                                     ; preds = %272
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %276

; <label>:276                                     ; preds = %300, %275
  %277 = load i32, i32* %k, align 4, !tbaa !1
  %278 = icmp slt i32 %277, 6
  br i1 %278, label %279, label %303

; <label>:279                                     ; preds = %276
  %280 = load i32, i32* %k, align 4, !tbaa !1
  %281 = sext i32 %280 to i64
  %282 = load i32, i32* %j, align 4, !tbaa !1
  %283 = sext i32 %282 to i64
  %284 = load i32, i32* %i, align 4, !tbaa !1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [8 x [5 x [6 x i16]]], [8 x [5 x [6 x i16]]]* @g_730, i32 0, i64 %285
  %287 = getelementptr inbounds [5 x [6 x i16]], [5 x [6 x i16]]* %286, i32 0, i64 %283
  %288 = getelementptr inbounds [6 x i16], [6 x i16]* %287, i32 0, i64 %281
  %289 = load i16, i16* %288, align 2, !tbaa !10
  %290 = zext i16 %289 to i64
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %290, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 %291)
  %292 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %299

; <label>:294                                     ; preds = %279
  %295 = load i32, i32* %i, align 4, !tbaa !1
  %296 = load i32, i32* %j, align 4, !tbaa !1
  %297 = load i32, i32* %k, align 4, !tbaa !1
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), i32 %295, i32 %296, i32 %297)
  br label %299

; <label>:299                                     ; preds = %294, %279
  br label %300

; <label>:300                                     ; preds = %299
  %301 = load i32, i32* %k, align 4, !tbaa !1
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %k, align 4, !tbaa !1
  br label %276

; <label>:303                                     ; preds = %276
  br label %304

; <label>:304                                     ; preds = %303
  %305 = load i32, i32* %j, align 4, !tbaa !1
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %j, align 4, !tbaa !1
  br label %272

; <label>:307                                     ; preds = %272
  br label %308

; <label>:308                                     ; preds = %307
  %309 = load i32, i32* %i, align 4, !tbaa !1
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %i, align 4, !tbaa !1
  br label %268

; <label>:311                                     ; preds = %268
  %312 = load i8, i8* @g_799, align 1, !tbaa !9
  %313 = sext i8 %312 to i64
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %314)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %315

; <label>:315                                     ; preds = %343, %311
  %316 = load i32, i32* %i, align 4, !tbaa !1
  %317 = icmp slt i32 %316, 1
  br i1 %317, label %318, label %346

; <label>:318                                     ; preds = %315
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %319

; <label>:319                                     ; preds = %339, %318
  %320 = load i32, i32* %j, align 4, !tbaa !1
  %321 = icmp slt i32 %320, 9
  br i1 %321, label %322, label %342

; <label>:322                                     ; preds = %319
  %323 = load i32, i32* %j, align 4, !tbaa !1
  %324 = sext i32 %323 to i64
  %325 = load i32, i32* %i, align 4, !tbaa !1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [1 x [9 x i32]], [1 x [9 x i32]]* @g_840, i32 0, i64 %326
  %328 = getelementptr inbounds [9 x i32], [9 x i32]* %327, i32 0, i64 %324
  %329 = load i32, i32* %328, align 4, !tbaa !1
  %330 = zext i32 %329 to i64
  %331 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %330, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 %331)
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %338

; <label>:334                                     ; preds = %322
  %335 = load i32, i32* %i, align 4, !tbaa !1
  %336 = load i32, i32* %j, align 4, !tbaa !1
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i32 %335, i32 %336)
  br label %338

; <label>:338                                     ; preds = %334, %322
  br label %339

; <label>:339                                     ; preds = %338
  %340 = load i32, i32* %j, align 4, !tbaa !1
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %j, align 4, !tbaa !1
  br label %319

; <label>:342                                     ; preds = %319
  br label %343

; <label>:343                                     ; preds = %342
  %344 = load i32, i32* %i, align 4, !tbaa !1
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %i, align 4, !tbaa !1
  br label %315

; <label>:346                                     ; preds = %315
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %347

; <label>:347                                     ; preds = %375, %346
  %348 = load i32, i32* %i, align 4, !tbaa !1
  %349 = icmp slt i32 %348, 4
  br i1 %349, label %350, label %378

; <label>:350                                     ; preds = %347
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %351

; <label>:351                                     ; preds = %371, %350
  %352 = load i32, i32* %j, align 4, !tbaa !1
  %353 = icmp slt i32 %352, 7
  br i1 %353, label %354, label %374

; <label>:354                                     ; preds = %351
  %355 = load i32, i32* %j, align 4, !tbaa !1
  %356 = sext i32 %355 to i64
  %357 = load i32, i32* %i, align 4, !tbaa !1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [4 x [7 x i32]], [4 x [7 x i32]]* @g_1138, i32 0, i64 %358
  %360 = getelementptr inbounds [7 x i32], [7 x i32]* %359, i32 0, i64 %356
  %361 = load volatile i32, i32* %360, align 4, !tbaa !1
  %362 = sext i32 %361 to i64
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %362, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i32 %363)
  %364 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

; <label>:366                                     ; preds = %354
  %367 = load i32, i32* %i, align 4, !tbaa !1
  %368 = load i32, i32* %j, align 4, !tbaa !1
  %369 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i32 %367, i32 %368)
  br label %370

; <label>:370                                     ; preds = %366, %354
  br label %371

; <label>:371                                     ; preds = %370
  %372 = load i32, i32* %j, align 4, !tbaa !1
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %j, align 4, !tbaa !1
  br label %351

; <label>:374                                     ; preds = %351
  br label %375

; <label>:375                                     ; preds = %374
  %376 = load i32, i32* %i, align 4, !tbaa !1
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %i, align 4, !tbaa !1
  br label %347

; <label>:378                                     ; preds = %347
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %379

; <label>:379                                     ; preds = %407, %378
  %380 = load i32, i32* %i, align 4, !tbaa !1
  %381 = icmp slt i32 %380, 10
  br i1 %381, label %382, label %410

; <label>:382                                     ; preds = %379
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %383

; <label>:383                                     ; preds = %403, %382
  %384 = load i32, i32* %j, align 4, !tbaa !1
  %385 = icmp slt i32 %384, 8
  br i1 %385, label %386, label %406

; <label>:386                                     ; preds = %383
  %387 = load i32, i32* %j, align 4, !tbaa !1
  %388 = sext i32 %387 to i64
  %389 = load i32, i32* %i, align 4, !tbaa !1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* @g_1149, i32 0, i64 %390
  %392 = getelementptr inbounds [8 x i32], [8 x i32]* %391, i32 0, i64 %388
  %393 = load volatile i32, i32* %392, align 4, !tbaa !1
  %394 = sext i32 %393 to i64
  %395 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %394, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i32 %395)
  %396 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %402

; <label>:398                                     ; preds = %386
  %399 = load i32, i32* %i, align 4, !tbaa !1
  %400 = load i32, i32* %j, align 4, !tbaa !1
  %401 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i32 %399, i32 %400)
  br label %402

; <label>:402                                     ; preds = %398, %386
  br label %403

; <label>:403                                     ; preds = %402
  %404 = load i32, i32* %j, align 4, !tbaa !1
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %j, align 4, !tbaa !1
  br label %383

; <label>:406                                     ; preds = %383
  br label %407

; <label>:407                                     ; preds = %406
  %408 = load i32, i32* %i, align 4, !tbaa !1
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %i, align 4, !tbaa !1
  br label %379

; <label>:410                                     ; preds = %379
  %411 = load i16, i16* @g_1164, align 2, !tbaa !10
  %412 = zext i16 %411 to i64
  %413 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %412, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %413)
  %414 = load i64, i64* @g_1190, align 8, !tbaa !7
  %415 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %414, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %415)
  %416 = load i16, i16* @g_1254, align 2, !tbaa !10
  %417 = sext i16 %416 to i64
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %417, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %418)
  %419 = load i64, i64* @g_1271, align 8, !tbaa !7
  %420 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %419, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %420)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %421

; <label>:421                                     ; preds = %436, %410
  %422 = load i32, i32* %i, align 4, !tbaa !1
  %423 = icmp slt i32 %422, 9
  br i1 %423, label %424, label %439

; <label>:424                                     ; preds = %421
  %425 = load i32, i32* %i, align 4, !tbaa !1
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [9 x i64], [9 x i64]* @g_1319, i32 0, i64 %426
  %428 = load i64, i64* %427, align 8, !tbaa !7
  %429 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %428, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 %429)
  %430 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %435

; <label>:432                                     ; preds = %424
  %433 = load i32, i32* %i, align 4, !tbaa !1
  %434 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %433)
  br label %435

; <label>:435                                     ; preds = %432, %424
  br label %436

; <label>:436                                     ; preds = %435
  %437 = load i32, i32* %i, align 4, !tbaa !1
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %i, align 4, !tbaa !1
  br label %421

; <label>:439                                     ; preds = %421
  %440 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %441 = zext i32 %440 to i64
  %442 = xor i64 %441, 4294967295
  %443 = trunc i64 %442 to i32
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %443, i32 %444)
  %445 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %445) #1
  %446 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %446) #1
  %447 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %447) #1
  %448 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %448) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @platform_main_begin() #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @crc32_gentab() #0 {
  %crc = alloca i32, align 4
  %poly = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast i32* %crc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %poly to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -306674912, i32* %poly, align 4, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %5

; <label>:5                                       ; preds = %33, %0
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %36

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %i, align 4, !tbaa !1
  store i32 %9, i32* %crc, align 4, !tbaa !1
  store i32 8, i32* %j, align 4, !tbaa !1
  br label %10

; <label>:10                                      ; preds = %25, %8
  %11 = load i32, i32* %j, align 4, !tbaa !1
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* %crc, align 4, !tbaa !1
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %crc, align 4, !tbaa !1
  %19 = lshr i32 %18, 1
  %20 = xor i32 %19, -306674912
  store i32 %20, i32* %crc, align 4, !tbaa !1
  br label %24

; <label>:21                                      ; preds = %13
  %22 = load i32, i32* %crc, align 4, !tbaa !1
  %23 = lshr i32 %22, 1
  store i32 %23, i32* %crc, align 4, !tbaa !1
  br label %24

; <label>:24                                      ; preds = %21, %17
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i32, i32* %j, align 4, !tbaa !1
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %j, align 4, !tbaa !1
  br label %10

; <label>:28                                      ; preds = %10
  %29 = load i32, i32* %crc, align 4, !tbaa !1
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i32 0, i64 %31
  store i32 %29, i32* %32, align 4, !tbaa !1
  br label %33

; <label>:33                                      ; preds = %28
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4, !tbaa !1
  br label %5

; <label>:36                                      ; preds = %5
  %37 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %poly to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %crc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @func_1() #0 {
  %l_2 = alloca [1 x [10 x [10 x i8]]], align 16
  %l_1093 = alloca [2 x i32], align 4
  %l_1111 = alloca [10 x [10 x i8***]], align 16
  %l_1118 = alloca i64*, align 8
  %l_1134 = alloca i32, align 4
  %l_1146 = alloca i32, align 4
  %l_1147 = alloca i32, align 4
  %l_1152 = alloca i32, align 4
  %l_1153 = alloca i32, align 4
  %l_1154 = alloca i32, align 4
  %l_1155 = alloca i32, align 4
  %l_1157 = alloca i32, align 4
  %l_1160 = alloca i32, align 4
  %l_1162 = alloca [7 x i32], align 16
  %l_1168 = alloca i8*, align 8
  %l_1167 = alloca i8**, align 8
  %l_1196 = alloca i16, align 2
  %l_1250 = alloca i32***, align 8
  %l_1266 = alloca i32*, align 8
  %l_1265 = alloca i32**, align 8
  %l_1294 = alloca i32*, align 8
  %l_1293 = alloca i32**, align 8
  %l_1334 = alloca [4 x i64], align 16
  %l_1387 = alloca [10 x [9 x [2 x i16]]], align 16
  %l_1434 = alloca i32****, align 8
  %l_1433 = alloca i32*****, align 8
  %l_1447 = alloca i32***, align 8
  %l_1446 = alloca [9 x [3 x i32****]], align 16
  %l_1450 = alloca [8 x [10 x [3 x i8]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_6 = alloca i32*, align 8
  %l_1066 = alloca i32*, align 8
  %l_1072 = alloca i64, align 8
  %l_1073 = alloca i8, align 1
  %l_1076 = alloca i32, align 4
  %l_1077 = alloca i32, align 4
  %l_1114 = alloca i16, align 2
  %l_1145 = alloca i32, align 4
  %l_1150 = alloca [8 x i32], align 16
  %l_1207 = alloca i16***, align 8
  %l_1208 = alloca i16, align 2
  %l_1222 = alloca i64*, align 8
  %l_1221 = alloca [7 x i64**], align 16
  %l_1220 = alloca i64***, align 8
  %l_1219 = alloca i64****, align 8
  %l_1218 = alloca i64*****, align 8
  %l_1233 = alloca [10 x [1 x i64]], align 16
  %l_1277 = alloca i8****, align 8
  %l_1297 = alloca i32, align 4
  %l_1339 = alloca i32**, align 8
  %l_1376 = alloca i32, align 4
  %l_1377 = alloca i32, align 4
  %l_1402 = alloca i8, align 1
  %l_1403 = alloca i32, align 4
  %l_1426 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %1 = bitcast [1 x [10 x [10 x i8]]]* %l_2 to i8*
  call void @llvm.lifetime.start(i64 100, i8* %1) #1
  %2 = bitcast [1 x [10 x [10 x i8]]]* %l_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([1 x [10 x [10 x i8]]], [1 x [10 x [10 x i8]]]* @func_1.l_2, i32 0, i32 0, i32 0, i32 0), i64 100, i32 16, i1 false)
  %3 = bitcast [2 x i32]* %l_1093 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast [10 x [10 x i8***]]* %l_1111 to i8*
  call void @llvm.lifetime.start(i64 800, i8* %4) #1
  %5 = bitcast [10 x [10 x i8***]]* %l_1111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([10 x [10 x i8***]]* @func_1.l_1111 to i8*), i64 800, i32 16, i1 false)
  %6 = bitcast i64** %l_1118 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64* getelementptr inbounds ([2 x i64], [2 x i64]* @g_725, i32 0, i64 0), i64** %l_1118, align 8, !tbaa !5
  %7 = bitcast i32* %l_1134 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %l_1134, align 4, !tbaa !1
  %8 = bitcast i32* %l_1146 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 5, i32* %l_1146, align 4, !tbaa !1
  %9 = bitcast i32* %l_1147 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -931930864, i32* %l_1147, align 4, !tbaa !1
  %10 = bitcast i32* %l_1152 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 -1695711651, i32* %l_1152, align 4, !tbaa !1
  %11 = bitcast i32* %l_1153 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 8, i32* %l_1153, align 4, !tbaa !1
  %12 = bitcast i32* %l_1154 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -630247453, i32* %l_1154, align 4, !tbaa !1
  %13 = bitcast i32* %l_1155 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 238545750, i32* %l_1155, align 4, !tbaa !1
  %14 = bitcast i32* %l_1157 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 1559678768, i32* %l_1157, align 4, !tbaa !1
  %15 = bitcast i32* %l_1160 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 5, i32* %l_1160, align 4, !tbaa !1
  %16 = bitcast [7 x i32]* %l_1162 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %16) #1
  %17 = bitcast [7 x i32]* %l_1162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast ([7 x i32]* @func_1.l_1162 to i8*), i64 28, i32 16, i1 false)
  %18 = bitcast i8** %l_1168 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i8* @g_267, i8** %l_1168, align 8, !tbaa !5
  %19 = bitcast i8*** %l_1167 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i8** %l_1168, i8*** %l_1167, align 8, !tbaa !5
  %20 = bitcast i16* %l_1196 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %20) #1
  store i16 -1, i16* %l_1196, align 2, !tbaa !10
  %21 = bitcast i32**** %l_1250 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i32*** @g_563, i32**** %l_1250, align 8, !tbaa !5
  %22 = bitcast i32** %l_1266 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i32* %l_1157, i32** %l_1266, align 8, !tbaa !5
  %23 = bitcast i32*** %l_1265 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i32** %l_1266, i32*** %l_1265, align 8, !tbaa !5
  %24 = bitcast i32** %l_1294 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %l_1093, i32 0, i64 1
  store i32* %25, i32** %l_1294, align 8, !tbaa !5
  %26 = bitcast i32*** %l_1293 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i32** %l_1294, i32*** %l_1293, align 8, !tbaa !5
  %27 = bitcast [4 x i64]* %l_1334 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %27) #1
  %28 = bitcast [10 x [9 x [2 x i16]]]* %l_1387 to i8*
  call void @llvm.lifetime.start(i64 360, i8* %28) #1
  %29 = bitcast [10 x [9 x [2 x i16]]]* %l_1387 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* bitcast ([10 x [9 x [2 x i16]]]* @func_1.l_1387 to i8*), i64 360, i32 16, i1 false)
  %30 = bitcast i32***** %l_1434 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i32**** @g_658, i32***** %l_1434, align 8, !tbaa !5
  %31 = bitcast i32****** %l_1433 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i32***** %l_1434, i32****** %l_1433, align 8, !tbaa !5
  %32 = bitcast i32**** %l_1447 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  store i32*** null, i32**** %l_1447, align 8, !tbaa !5
  %33 = bitcast [9 x [3 x i32****]]* %l_1446 to i8*
  call void @llvm.lifetime.start(i64 216, i8* %33) #1
  %34 = getelementptr inbounds [9 x [3 x i32****]], [9 x [3 x i32****]]* %l_1446, i64 0, i64 0
  %35 = getelementptr inbounds [3 x i32****], [3 x i32****]* %34, i64 0, i64 0
  store i32**** %l_1447, i32***** %35, !tbaa !5
  %36 = getelementptr inbounds i32****, i32***** %35, i64 1
  store i32**** %l_1447, i32***** %36, !tbaa !5
  %37 = getelementptr inbounds i32****, i32***** %36, i64 1
  store i32**** null, i32***** %37, !tbaa !5
  %38 = getelementptr inbounds [3 x i32****], [3 x i32****]* %34, i64 1
  %39 = getelementptr inbounds [3 x i32****], [3 x i32****]* %38, i64 0, i64 0
  store i32**** null, i32***** %39, !tbaa !5
  %40 = getelementptr inbounds i32****, i32***** %39, i64 1
  store i32**** %l_1447, i32***** %40, !tbaa !5
  %41 = getelementptr inbounds i32****, i32***** %40, i64 1
  store i32**** %l_1447, i32***** %41, !tbaa !5
  %42 = getelementptr inbounds [3 x i32****], [3 x i32****]* %38, i64 1
  %43 = getelementptr inbounds [3 x i32****], [3 x i32****]* %42, i64 0, i64 0
  store i32**** null, i32***** %43, !tbaa !5
  %44 = getelementptr inbounds i32****, i32***** %43, i64 1
  store i32**** %l_1447, i32***** %44, !tbaa !5
  %45 = getelementptr inbounds i32****, i32***** %44, i64 1
  store i32**** null, i32***** %45, !tbaa !5
  %46 = getelementptr inbounds [3 x i32****], [3 x i32****]* %42, i64 1
  %47 = getelementptr inbounds [3 x i32****], [3 x i32****]* %46, i64 0, i64 0
  store i32**** %l_1447, i32***** %47, !tbaa !5
  %48 = getelementptr inbounds i32****, i32***** %47, i64 1
  store i32**** %l_1447, i32***** %48, !tbaa !5
  %49 = getelementptr inbounds i32****, i32***** %48, i64 1
  store i32**** %l_1447, i32***** %49, !tbaa !5
  %50 = getelementptr inbounds [3 x i32****], [3 x i32****]* %46, i64 1
  %51 = getelementptr inbounds [3 x i32****], [3 x i32****]* %50, i64 0, i64 0
  store i32**** null, i32***** %51, !tbaa !5
  %52 = getelementptr inbounds i32****, i32***** %51, i64 1
  store i32**** %l_1447, i32***** %52, !tbaa !5
  %53 = getelementptr inbounds i32****, i32***** %52, i64 1
  store i32**** %l_1447, i32***** %53, !tbaa !5
  %54 = getelementptr inbounds [3 x i32****], [3 x i32****]* %50, i64 1
  %55 = getelementptr inbounds [3 x i32****], [3 x i32****]* %54, i64 0, i64 0
  store i32**** %l_1447, i32***** %55, !tbaa !5
  %56 = getelementptr inbounds i32****, i32***** %55, i64 1
  store i32**** %l_1447, i32***** %56, !tbaa !5
  %57 = getelementptr inbounds i32****, i32***** %56, i64 1
  store i32**** null, i32***** %57, !tbaa !5
  %58 = getelementptr inbounds [3 x i32****], [3 x i32****]* %54, i64 1
  %59 = getelementptr inbounds [3 x i32****], [3 x i32****]* %58, i64 0, i64 0
  store i32**** null, i32***** %59, !tbaa !5
  %60 = getelementptr inbounds i32****, i32***** %59, i64 1
  store i32**** %l_1447, i32***** %60, !tbaa !5
  %61 = getelementptr inbounds i32****, i32***** %60, i64 1
  store i32**** %l_1447, i32***** %61, !tbaa !5
  %62 = getelementptr inbounds [3 x i32****], [3 x i32****]* %58, i64 1
  %63 = getelementptr inbounds [3 x i32****], [3 x i32****]* %62, i64 0, i64 0
  store i32**** %l_1447, i32***** %63, !tbaa !5
  %64 = getelementptr inbounds i32****, i32***** %63, i64 1
  store i32**** %l_1447, i32***** %64, !tbaa !5
  %65 = getelementptr inbounds i32****, i32***** %64, i64 1
  store i32**** null, i32***** %65, !tbaa !5
  %66 = getelementptr inbounds [3 x i32****], [3 x i32****]* %62, i64 1
  %67 = getelementptr inbounds [3 x i32****], [3 x i32****]* %66, i64 0, i64 0
  store i32**** null, i32***** %67, !tbaa !5
  %68 = getelementptr inbounds i32****, i32***** %67, i64 1
  store i32**** %l_1447, i32***** %68, !tbaa !5
  %69 = getelementptr inbounds i32****, i32***** %68, i64 1
  store i32**** null, i32***** %69, !tbaa !5
  %70 = bitcast [8 x [10 x [3 x i8]]]* %l_1450 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %70) #1
  %71 = bitcast [8 x [10 x [3 x i8]]]* %l_1450 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* getelementptr inbounds ([8 x [10 x [3 x i8]]], [8 x [10 x [3 x i8]]]* @func_1.l_1450, i32 0, i32 0, i32 0, i32 0), i64 240, i32 16, i1 false)
  %72 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %75

; <label>:75                                      ; preds = %82, %0
  %76 = load i32, i32* %i, align 4, !tbaa !1
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %85

; <label>:78                                      ; preds = %75
  %79 = load i32, i32* %i, align 4, !tbaa !1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %l_1093, i32 0, i64 %80
  store i32 -1294327723, i32* %81, align 4, !tbaa !1
  br label %82

; <label>:82                                      ; preds = %78
  %83 = load i32, i32* %i, align 4, !tbaa !1
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %i, align 4, !tbaa !1
  br label %75

; <label>:85                                      ; preds = %75
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %86

; <label>:86                                      ; preds = %93, %85
  %87 = load i32, i32* %i, align 4, !tbaa !1
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %96

; <label>:89                                      ; preds = %86
  %90 = load i32, i32* %i, align 4, !tbaa !1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i64], [4 x i64]* %l_1334, i32 0, i64 %91
  store i64 -6, i64* %92, align 8, !tbaa !7
  br label %93

; <label>:93                                      ; preds = %89
  %94 = load i32, i32* %i, align 4, !tbaa !1
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %i, align 4, !tbaa !1
  br label %86

; <label>:96                                      ; preds = %86
  %97 = getelementptr inbounds [1 x [10 x [10 x i8]]], [1 x [10 x [10 x i8]]]* %l_2, i32 0, i64 0
  %98 = getelementptr inbounds [10 x [10 x i8]], [10 x [10 x i8]]* %97, i32 0, i64 1
  %99 = getelementptr inbounds [10 x i8], [10 x i8]* %98, i32 0, i64 4
  %100 = load i8, i8* %99, align 1, !tbaa !9
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %102, label %112

; <label>:102                                     ; preds = %96
  %103 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %103) #1
  store i32* @g_7, i32** %l_6, align 8, !tbaa !5
  %104 = load i16, i16* @g_5, align 2, !tbaa !10
  %105 = sext i16 %104 to i32
  %106 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext -3497, i32 %105)
  %107 = sext i16 %106 to i32
  %108 = load i32*, i32** %l_6, align 8, !tbaa !5
  %109 = load i32, i32* %108, align 4, !tbaa !1
  %110 = and i32 %109, %107
  store i32 %110, i32* %108, align 4, !tbaa !1
  %111 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  br label %171

; <label>:112                                     ; preds = %96
  %113 = bitcast i32** %l_1066 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #1
  store i32* getelementptr inbounds (%union.U0, %union.U0* @g_471, i32 0, i32 0), i32** %l_1066, align 8, !tbaa !5
  %114 = bitcast i64* %l_1072 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %114) #1
  store i64 9, i64* %l_1072, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_1073) #1
  store i8 0, i8* %l_1073, align 1, !tbaa !9
  %115 = bitcast i32* %l_1076 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  store i32 -1, i32* %l_1076, align 4, !tbaa !1
  %116 = bitcast i32* %l_1077 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #1
  store i32 1, i32* %l_1077, align 4, !tbaa !1
  %117 = bitcast i16* %l_1114 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %117) #1
  store i16 9, i16* %l_1114, align 2, !tbaa !10
  %118 = bitcast i32* %l_1145 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  store i32 -760425790, i32* %l_1145, align 4, !tbaa !1
  %119 = bitcast [8 x i32]* %l_1150 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %119) #1
  %120 = bitcast [8 x i32]* %l_1150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* bitcast ([8 x i32]* @func_1.l_1150 to i8*), i64 32, i32 16, i1 false)
  %121 = bitcast i16**** %l_1207 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %121) #1
  store i16*** @g_494, i16**** %l_1207, align 8, !tbaa !5
  %122 = bitcast i16* %l_1208 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %122) #1
  store i16 -1, i16* %l_1208, align 2, !tbaa !10
  %123 = bitcast i64** %l_1222 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #1
  store i64* null, i64** %l_1222, align 8, !tbaa !5
  %124 = bitcast [7 x i64**]* %l_1221 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %124) #1
  %125 = getelementptr inbounds [7 x i64**], [7 x i64**]* %l_1221, i64 0, i64 0
  store i64** %l_1222, i64*** %125, !tbaa !5
  %126 = getelementptr inbounds i64**, i64*** %125, i64 1
  store i64** %l_1222, i64*** %126, !tbaa !5
  %127 = getelementptr inbounds i64**, i64*** %126, i64 1
  store i64** %l_1222, i64*** %127, !tbaa !5
  %128 = getelementptr inbounds i64**, i64*** %127, i64 1
  store i64** %l_1222, i64*** %128, !tbaa !5
  %129 = getelementptr inbounds i64**, i64*** %128, i64 1
  store i64** %l_1222, i64*** %129, !tbaa !5
  %130 = getelementptr inbounds i64**, i64*** %129, i64 1
  store i64** %l_1222, i64*** %130, !tbaa !5
  %131 = getelementptr inbounds i64**, i64*** %130, i64 1
  store i64** %l_1222, i64*** %131, !tbaa !5
  %132 = bitcast i64**** %l_1220 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  %133 = getelementptr inbounds [7 x i64**], [7 x i64**]* %l_1221, i32 0, i64 2
  store i64*** %133, i64**** %l_1220, align 8, !tbaa !5
  %134 = bitcast i64***** %l_1219 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  store i64**** %l_1220, i64***** %l_1219, align 8, !tbaa !5
  %135 = bitcast i64****** %l_1218 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #1
  store i64***** %l_1219, i64****** %l_1218, align 8, !tbaa !5
  %136 = bitcast [10 x [1 x i64]]* %l_1233 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %136) #1
  %137 = bitcast [10 x [1 x i64]]* %l_1233 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* bitcast ([10 x [1 x i64]]* @func_1.l_1233 to i8*), i64 80, i32 16, i1 false)
  %138 = bitcast i8***** %l_1277 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %138) #1
  store i8**** getelementptr inbounds ([6 x [8 x [5 x i8***]]], [6 x [8 x [5 x i8***]]]* @g_1109, i32 0, i64 5, i64 0, i64 4), i8***** %l_1277, align 8, !tbaa !5
  %139 = bitcast i32* %l_1297 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #1
  store i32 -591560318, i32* %l_1297, align 4, !tbaa !1
  %140 = bitcast i32*** %l_1339 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %140) #1
  store i32** @g_109, i32*** %l_1339, align 8, !tbaa !5
  %141 = bitcast i32* %l_1376 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #1
  store i32 -1692708951, i32* %l_1376, align 4, !tbaa !1
  %142 = bitcast i32* %l_1377 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #1
  store i32 1092933170, i32* %l_1377, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1402) #1
  store i8 -10, i8* %l_1402, align 1, !tbaa !9
  %143 = bitcast i32* %l_1403 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #1
  store i32 -703696638, i32* %l_1403, align 4, !tbaa !1
  %144 = bitcast i32* %l_1426 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %144) #1
  store i32 951720735, i32* %l_1426, align 4, !tbaa !1
  %145 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  %146 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #1
  %147 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %l_1426 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %l_1403 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1402) #1
  %151 = bitcast i32* %l_1377 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %l_1376 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32*** %l_1339 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i32* %l_1297 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i8***** %l_1277 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast [10 x [1 x i64]]* %l_1233 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %156) #1
  %157 = bitcast i64****** %l_1218 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i64***** %l_1219 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast i64**** %l_1220 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast [7 x i64**]* %l_1221 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %160) #1
  %161 = bitcast i64** %l_1222 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast i16* %l_1208 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %162) #1
  %163 = bitcast i16**** %l_1207 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  %164 = bitcast [8 x i32]* %l_1150 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %164) #1
  %165 = bitcast i32* %l_1145 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i16* %l_1114 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %166) #1
  %167 = bitcast i32* %l_1077 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %l_1076 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1073) #1
  %169 = bitcast i64* %l_1072 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i32** %l_1066 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  br label %171

; <label>:171                                     ; preds = %112, %102
  %172 = getelementptr inbounds [8 x [10 x [3 x i8]]], [8 x [10 x [3 x i8]]]* %l_1450, i32 0, i64 1
  %173 = getelementptr inbounds [10 x [3 x i8]], [10 x [3 x i8]]* %172, i32 0, i64 8
  %174 = getelementptr inbounds [3 x i8], [3 x i8]* %173, i32 0, i64 1
  %175 = load i8, i8* %174, align 1, !tbaa !9
  %176 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast [8 x [10 x [3 x i8]]]* %l_1450 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %179) #1
  %180 = bitcast [9 x [3 x i32****]]* %l_1446 to i8*
  call void @llvm.lifetime.end(i64 216, i8* %180) #1
  %181 = bitcast i32**** %l_1447 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast i32****** %l_1433 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %183 = bitcast i32***** %l_1434 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast [10 x [9 x [2 x i16]]]* %l_1387 to i8*
  call void @llvm.lifetime.end(i64 360, i8* %184) #1
  %185 = bitcast [4 x i64]* %l_1334 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %185) #1
  %186 = bitcast i32*** %l_1293 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast i32** %l_1294 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast i32*** %l_1265 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = bitcast i32** %l_1266 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast i32**** %l_1250 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast i16* %l_1196 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %191) #1
  %192 = bitcast i8*** %l_1167 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast i8** %l_1168 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast [7 x i32]* %l_1162 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %194) #1
  %195 = bitcast i32* %l_1160 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %l_1157 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %l_1155 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %l_1154 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %l_1153 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %l_1152 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %l_1147 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %l_1146 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %l_1134 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i64** %l_1118 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast [10 x [10 x i8***]]* %l_1111 to i8*
  call void @llvm.lifetime.end(i64 800, i8* %205) #1
  %206 = bitcast [2 x i32]* %l_1093 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast [1 x [10 x [10 x i8]]]* %l_2 to i8*
  call void @llvm.lifetime.end(i64 100, i8* %207) #1
  ret i8 %175
}

; Function Attrs: nounwind uwtable
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i64 %val, i64* %1, align 8, !tbaa !7
  store i8* %vname, i8** %2, align 8, !tbaa !5
  store i32 %flag, i32* %3, align 4, !tbaa !1
  %4 = load i64, i64* %1, align 8, !tbaa !7
  call void @crc32_8bytes(i64 %4)
  %5 = load i32, i32* %3, align 4, !tbaa !1
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %0
  %8 = load i8*, i8** %2, align 8, !tbaa !5
  %9 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %10 = zext i32 %9 to i64
  %11 = xor i64 %10, 4294967295
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0), i8* %8, i64 %11)
  br label %13

; <label>:13                                      ; preds = %7, %0
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %crc, i32* %1, align 4, !tbaa !1
  store i32 %flag, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %6
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = sext i16 %10 to i32
  %12 = load i32, i32* %2, align 4, !tbaa !1
  %13 = ashr i32 32767, %12
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %9, %6, %0
  %16 = load i16, i16* %1, align 2, !tbaa !10
  %17 = sext i16 %16 to i32
  br label %23

; <label>:18                                      ; preds = %9
  %19 = load i16, i16* %1, align 2, !tbaa !10
  %20 = sext i16 %19 to i32
  %21 = load i32, i32* %2, align 4, !tbaa !1
  %22 = shl i32 %20, %21
  br label %23

; <label>:23                                      ; preds = %18, %15
  %24 = phi i32 [ %17, %15 ], [ %22, %18 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
}

; Function Attrs: nounwind uwtable
define internal void @crc32_8bytes(i64 %val) #0 {
  %1 = alloca i64, align 8
  store i64 %val, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = lshr i64 %2, 0
  %4 = and i64 %3, 255
  %5 = trunc i64 %4 to i8
  call void @crc32_byte(i8 zeroext %5)
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = lshr i64 %6, 8
  %8 = and i64 %7, 255
  %9 = trunc i64 %8 to i8
  call void @crc32_byte(i8 zeroext %9)
  %10 = load i64, i64* %1, align 8, !tbaa !7
  %11 = lshr i64 %10, 16
  %12 = and i64 %11, 255
  %13 = trunc i64 %12 to i8
  call void @crc32_byte(i8 zeroext %13)
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = lshr i64 %14, 24
  %16 = and i64 %15, 255
  %17 = trunc i64 %16 to i8
  call void @crc32_byte(i8 zeroext %17)
  %18 = load i64, i64* %1, align 8, !tbaa !7
  %19 = lshr i64 %18, 32
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i8
  call void @crc32_byte(i8 zeroext %21)
  %22 = load i64, i64* %1, align 8, !tbaa !7
  %23 = lshr i64 %22, 40
  %24 = and i64 %23, 255
  %25 = trunc i64 %24 to i8
  call void @crc32_byte(i8 zeroext %25)
  %26 = load i64, i64* %1, align 8, !tbaa !7
  %27 = lshr i64 %26, 48
  %28 = and i64 %27, 255
  %29 = trunc i64 %28 to i8
  call void @crc32_byte(i8 zeroext %29)
  %30 = load i64, i64* %1, align 8, !tbaa !7
  %31 = lshr i64 %30, 56
  %32 = and i64 %31, 255
  %33 = trunc i64 %32 to i8
  call void @crc32_byte(i8 zeroext %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @crc32_byte(i8 zeroext %b) #0 {
  %1 = alloca i8, align 1
  store i8 %b, i8* %1, align 1, !tbaa !9
  %2 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %3 = lshr i32 %2, 8
  %4 = and i32 %3, 16777215
  %5 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  %8 = xor i32 %5, %7
  %9 = and i32 %8, 255
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i32 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !1
  %13 = xor i32 %4, %12
  store i32 %13, i32* @crc32_context, align 4, !tbaa !1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.1 (tags/RELEASE_371/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
