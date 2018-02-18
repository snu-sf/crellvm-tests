; ModuleID = '00630.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal constant i32 -1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"g_11\00", align 1
@g_13 = internal global [6 x i16] [i16 -114, i16 -114, i16 -114, i16 -114, i16 -114, i16 -114], align 2
@.str.3 = private unnamed_addr constant [8 x i8] c"g_13[i]\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_15 = internal global i32 -1, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_15\00", align 1
@g_16 = internal global i32 1929668467, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_16\00", align 1
@g_21 = internal global i32 449505215, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_21\00", align 1
@g_24 = internal global i32 -6, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_24\00", align 1
@g_104 = internal global [3 x [10 x i16]] [[10 x i16] [i16 30950, i16 -2, i16 17011, i16 -2, i16 30950, i16 30950, i16 -2, i16 17011, i16 -2, i16 30950], [10 x i16] [i16 30950, i16 -2, i16 17011, i16 -2, i16 30950, i16 30950, i16 -2, i16 17011, i16 -2, i16 30950], [10 x i16] [i16 30950, i16 -2, i16 17011, i16 -2, i16 30950, i16 30950, i16 -2, i16 17011, i16 -2, i16 30950]], align 16
@.str.9 = private unnamed_addr constant [12 x i8] c"g_104[i][j]\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_106 = internal global i64 1, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"g_106\00", align 1
@g_109 = internal global i64 -1, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"g_109\00", align 1
@g_111 = internal global i32 1, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_111\00", align 1
@g_120 = internal global i64 -4791905858425528562, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"g_120\00", align 1
@g_121 = internal global i64 0, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"g_121\00", align 1
@g_125 = internal global i8 -8, align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"g_125\00", align 1
@g_126 = internal global i32 877593393, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"g_126\00", align 1
@g_127 = internal global i32 2120822318, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_127\00", align 1
@g_139 = internal global i16 27434, align 2
@.str.19 = private unnamed_addr constant [6 x i8] c"g_139\00", align 1
@g_176 = internal global i64 1, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"g_176\00", align 1
@g_186 = internal global i16 32293, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_186\00", align 1
@g_210 = internal global i32 -541110531, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_210\00", align 1
@g_260 = internal global i32 199507161, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_260\00", align 1
@g_291 = internal global i32 -6, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_291\00", align 1
@g_465 = internal global %union.U0 { i64 -4512019901508229354 }, align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"g_465.f0\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_465.f1\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"g_465.f2\00", align 1
@g_482 = internal global i32 -1351854531, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_482\00", align 1
@g_492 = internal global i32 1885556945, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_492\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_499\00", align 1
@g_510 = internal global [2 x i32] [i32 280380528, i32 280380528], align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"g_510[i]\00", align 1
@g_511 = internal global i32 1, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_511\00", align 1
@g_512 = internal global i16 1, align 2
@.str.33 = private unnamed_addr constant [6 x i8] c"g_512\00", align 1
@g_519 = internal global i16 0, align 2
@.str.34 = private unnamed_addr constant [6 x i8] c"g_519\00", align 1
@g_576 = internal global i8 5, align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"g_576\00", align 1
@g_631 = internal global i8 -1, align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"g_631\00", align 1
@g_676 = internal global i32 -432027394, align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"g_676\00", align 1
@g_765 = internal global i32 5, align 4
@.str.38 = private unnamed_addr constant [6 x i8] c"g_765\00", align 1
@g_902 = internal global [6 x i32] [i32 1548564696, i32 1548564696, i32 1548564696, i32 1548564696, i32 1548564696, i32 1548564696], align 16
@.str.39 = private unnamed_addr constant [9 x i8] c"g_902[i]\00", align 1
@g_933 = internal global i32 -1, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"g_933\00", align 1
@g_934 = internal global %union.U0 { i64 -2 }, align 8
@.str.41 = private unnamed_addr constant [9 x i8] c"g_934.f0\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"g_934.f1\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"g_934.f2\00", align 1
@g_953 = internal global i32 -1913698684, align 4
@.str.44 = private unnamed_addr constant [6 x i8] c"g_953\00", align 1
@g_1176 = internal global i32 1979513520, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1176\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_9 = internal constant [3 x [6 x [5 x i8]]] [[6 x [5 x i8]] [[5 x i8] c"K\DCKK\DC", [5 x i8] c"\DCKK\DCK", [5 x i8] c"\DC\DC\F7\DC\DC", [5 x i8] c"K\DCKK\DC", [5 x i8] c"\DCKK\DCK", [5 x i8] c"\DC\DC\F7\DC\DC"], [6 x [5 x i8]] [[5 x i8] c"K\DCKK\DC", [5 x i8] c"\DCKK\DCK", [5 x i8] c"\DC\DC\F7\DC\DC", [5 x i8] c"K\DCKK\DC", [5 x i8] c"\DCKK\DCK", [5 x i8] c"\DC\DC\F7\DC\DC"], [6 x [5 x i8]] [[5 x i8] c"K\DCKK\DC", [5 x i8] c"\DCKK\DCK", [5 x i8] c"\DC\DC\F7\DC\DC", [5 x i8] c"K\DCKK\DC", [5 x i8] c"\DCKK\DCK", [5 x i8] c"\DC\DC\F7\DC\DC"]], align 16
@func_1.l_1181 = private unnamed_addr constant [3 x [7 x [7 x i32]]] [[7 x [7 x i32]] [[7 x i32] [i32 245712601, i32 -1057503889, i32 2046112612, i32 5, i32 -1, i32 0, i32 -840990929], [7 x i32] [i32 -567731909, i32 0, i32 9, i32 -5, i32 715030077, i32 555500838, i32 555500838], [7 x i32] [i32 0, i32 -840990929, i32 -1, i32 -840990929, i32 0, i32 555500838, i32 2046112612], [7 x i32] [i32 -1754993810, i32 1, i32 5, i32 715030077, i32 9, i32 0, i32 1], [7 x i32] [i32 -1057503889, i32 -1, i32 0, i32 -1, i32 409167073, i32 -1057503889, i32 786261697], [7 x i32] [i32 -1754993810, i32 715030077, i32 -1057503889, i32 5, i32 786261697, i32 0, i32 0], [7 x i32] [i32 -1057503889, i32 -1057503889, i32 0, i32 409167073, i32 -1754993810, i32 -840990929, i32 715030077]], [7 x [7 x i32]] [[7 x i32] [i32 2046112612, i32 245712601, i32 7, i32 -1754993810, i32 -1057503889, i32 9, i32 1], [7 x i32] [i32 -1, i32 -567731909, i32 0, i32 245712601, i32 -1754993810, i32 -5, i32 -567731909], [7 x i32] [i32 0, i32 0, i32 786261697, i32 786261697, i32 0, i32 0, i32 -567731909], [7 x i32] [i32 -5, i32 -1754993810, i32 245712601, i32 0, i32 -567731909, i32 -1, i32 1], [7 x i32] [i32 9, i32 -1057503889, i32 -1754993810, i32 7, i32 245712601, i32 2046112612, i32 715030077], [7 x i32] [i32 -840990929, i32 -1754993810, i32 409167073, i32 0, i32 -1057503889, i32 -1057503889, i32 0], [7 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 -1, i32 0]], [7 x [7 x i32]] [[7 x i32] [i32 0, i32 -567731909, i32 1, i32 7, i32 8, i32 0, i32 -1], [7 x i32] [i32 0, i32 245712601, i32 1, i32 0, i32 -1, i32 -1, i32 -1754993810], [7 x i32] [i32 715030077, i32 -1057503889, i32 5, i32 786261697, i32 5, i32 -1057503889, i32 715030077], [7 x i32] [i32 715030077, i32 1, i32 -1, i32 245712601, i32 -1057503889, i32 2046112612, i32 5], [7 x i32] [i32 0, i32 8, i32 0, i32 -1754993810, i32 0, i32 -1, i32 8], [7 x i32] [i32 0, i32 -1, i32 -1, i32 409167073, i32 555500838, i32 0, i32 555500838], [7 x i32] [i32 0, i32 5, i32 5, i32 0, i32 555500838, i32 -5, i32 245712601]]], align 16
@func_1.l_1203 = private unnamed_addr constant [8 x [6 x i16]] [[6 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [6 x i16] [i16 -1, i16 26562, i16 -1, i16 -1, i16 26562, i16 -1], [6 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [6 x i16] [i16 -10550, i16 -1, i16 -1, i16 -10550, i16 26562, i16 -10550], [6 x i16] [i16 -10550, i16 26562, i16 -10550, i16 -1, i16 -1, i16 -10550], [6 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [6 x i16] [i16 -1, i16 26562, i16 -1, i16 -1, i16 26562, i16 -1], [6 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1]], align 16
@g_424 = internal global i32* @g_260, align 8
@g_1167 = internal global i8*** @g_1168, align 8
@g_714 = internal global i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @g_294, i32 0, i32 0), align 8
@g_890 = internal global i32* @g_511, align 8
@g_229 = internal global i32*** @g_227, align 8
@g_227 = internal global i32** @g_228, align 8
@g_851 = internal global i32** @g_852, align 8
@func_28.l_144 = private unnamed_addr constant [7 x [2 x i8]] [[2 x i8] c"\FF\FF", [2 x i8] c"\FF\FF", [2 x i8] c"\FF\FF", [2 x i8] c"\FF\FF", [2 x i8] c"\FF\FF", [2 x i8] c"\FF\FF", [2 x i8] c"\FF\FF"], align 1
@g_294 = internal global [2 x i32*] [i32* @g_260, i32* @g_260], align 16
@func_28.l_1073 = private unnamed_addr constant [6 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@func_28.l_1122 = private unnamed_addr constant [5 x i32] [i32 1865314252, i32 1865314252, i32 1865314252, i32 1865314252, i32 1865314252], align 16
@g_218 = internal global i16** @g_219, align 8
@func_28.l_80 = private unnamed_addr constant [9 x [6 x [4 x i16*]]] [[6 x [4 x i16*]] [[4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*)], [4 x i16*] [i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 8) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 8) to i16*)], [4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* null], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*)]], [6 x [4 x i16*]] [[4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* null], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 6) to i16*), i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* null], [4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* null, i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*)], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 8) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*)]], [6 x [4 x i16*]] [[4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* null], [4 x i16*] [i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* null], [4 x i16*] [i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*)], [4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 4) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)]], [6 x [4 x i16*]] [[4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 4) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* null], [4 x i16*] [i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*)], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*)]], [6 x [4 x i16*]] [[4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 4) to i16*), i16* null], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 8) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*)], [4 x i16*] [i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*)], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 6) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 4) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* null]], [6 x [4 x i16*]] [[4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*)], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* null], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 6) to i16*), i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* null]], [6 x [4 x i16*]] [[4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* null, i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*)], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 8) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*)], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* null], [4 x i16*] [i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)]], [6 x [4 x i16*]] [[4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* null], [4 x i16*] [i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*)], [4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 4) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 4) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* null], [4 x i16*] [i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*)]], [6 x [4 x i16*]] [[4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* null, i16* null], [4 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* null, i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)], [4 x i16*] [i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i16]* @g_13 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i32 0)]]], align 16
@g_152 = internal global i64* null, align 8
@g_852 = internal global i32* @g_765, align 8
@func_28.l_1086 = private unnamed_addr constant %union.U0 { i64 -6733696652333986778 }, align 8
@func_28.l_1138 = private unnamed_addr constant [3 x [3 x [6 x i32]]] [[3 x [6 x i32]] [[6 x i32] [i32 -9, i32 -6, i32 0, i32 -1072684005, i32 -1072684005, i32 0], [6 x i32] [i32 -9, i32 -9, i32 -1072684005, i32 -1, i32 -1750534624, i32 -1], [6 x i32] [i32 -6, i32 -9, i32 -6, i32 0, i32 -1072684005, i32 -1072684005]], [3 x [6 x i32]] [[6 x i32] [i32 1610559140, i32 -6, i32 -6, i32 1610559140, i32 -9, i32 -1], [6 x i32] [i32 -1, i32 1610559140, i32 -1072684005, i32 1610559140, i32 -1, i32 0], [6 x i32] [i32 1610559140, i32 -1, i32 0, i32 0, i32 -1, i32 1610559140]], [3 x [6 x i32]] [[6 x i32] [i32 -6, i32 1610559140, i32 -9, i32 -1, i32 -9, i32 1610559140], [6 x i32] [i32 -9, i32 -6, i32 0, i32 -1072684005, i32 -1072684005, i32 0], [6 x i32] [i32 -9, i32 -9, i32 -1072684005, i32 -1, i32 -1750534624, i32 -1]]], align 16
@g_704 = internal global i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @g_294, i32 0, i32 0), align 8
@g_219 = internal global i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i16]]* @g_104 to i8*), i64 24) to i16*), align 8
@g_1168 = internal global i8** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [3 x i8*]]* @g_1169 to i8*), i64 32) to i8**), align 8
@g_1169 = internal global [2 x [3 x i8*]] [[3 x i8*] [i8* @g_125, i8* @g_125, i8* @g_125], [3 x i8*] [i8* @g_125, i8* @g_125, i8* @g_125]], align 16
@g_228 = internal global i32* @g_210, align 8
@.str.46 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call i32 @func_1()
  %91 = load volatile i32, i32* @g_4, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1929966706, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %94)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %95

; <label>:95                                      ; preds = %111, %89
  %96 = load i32, i32* %i, align 4, !tbaa !1
  %97 = icmp slt i32 %96, 6
  br i1 %97, label %98, label %114

; <label>:98                                      ; preds = %95
  %99 = load i32, i32* %i, align 4, !tbaa !1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [6 x i16], [6 x i16]* @g_13, i32 0, i64 %100
  %102 = load i16, i16* %101, align 2, !tbaa !10
  %103 = zext i16 %102 to i64
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %104)
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

; <label>:107                                     ; preds = %98
  %108 = load i32, i32* %i, align 4, !tbaa !1
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %108)
  br label %110

; <label>:110                                     ; preds = %107, %98
  br label %111

; <label>:111                                     ; preds = %110
  %112 = load i32, i32* %i, align 4, !tbaa !1
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %i, align 4, !tbaa !1
  br label %95

; <label>:114                                     ; preds = %95
  %115 = load i32, i32* @g_15, align 4, !tbaa !1
  %116 = sext i32 %115 to i64
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %117)
  %118 = load volatile i32, i32* @g_16, align 4, !tbaa !1
  %119 = zext i32 %118 to i64
  %120 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %120)
  %121 = load i32, i32* @g_21, align 4, !tbaa !1
  %122 = sext i32 %121 to i64
  %123 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %123)
  %124 = load i32, i32* @g_24, align 4, !tbaa !1
  %125 = sext i32 %124 to i64
  %126 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %126)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %127

; <label>:127                                     ; preds = %155, %114
  %128 = load i32, i32* %i, align 4, !tbaa !1
  %129 = icmp slt i32 %128, 3
  br i1 %129, label %130, label %158

; <label>:130                                     ; preds = %127
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %131

; <label>:131                                     ; preds = %151, %130
  %132 = load i32, i32* %j, align 4, !tbaa !1
  %133 = icmp slt i32 %132, 10
  br i1 %133, label %134, label %154

; <label>:134                                     ; preds = %131
  %135 = load i32, i32* %j, align 4, !tbaa !1
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* %i, align 4, !tbaa !1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x [10 x i16]], [3 x [10 x i16]]* @g_104, i32 0, i64 %138
  %140 = getelementptr inbounds [10 x i16], [10 x i16]* %139, i32 0, i64 %136
  %141 = load i16, i16* %140, align 2, !tbaa !10
  %142 = zext i16 %141 to i64
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 %143)
  %144 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

; <label>:146                                     ; preds = %134
  %147 = load i32, i32* %i, align 4, !tbaa !1
  %148 = load i32, i32* %j, align 4, !tbaa !1
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 %147, i32 %148)
  br label %150

; <label>:150                                     ; preds = %146, %134
  br label %151

; <label>:151                                     ; preds = %150
  %152 = load i32, i32* %j, align 4, !tbaa !1
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %j, align 4, !tbaa !1
  br label %131

; <label>:154                                     ; preds = %131
  br label %155

; <label>:155                                     ; preds = %154
  %156 = load i32, i32* %i, align 4, !tbaa !1
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %i, align 4, !tbaa !1
  br label %127

; <label>:158                                     ; preds = %127
  %159 = load i64, i64* @g_106, align 8, !tbaa !7
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %160)
  %161 = load i64, i64* @g_109, align 8, !tbaa !7
  %162 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %162)
  %163 = load i32, i32* @g_111, align 4, !tbaa !1
  %164 = sext i32 %163 to i64
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %165)
  %166 = load i64, i64* @g_120, align 8, !tbaa !7
  %167 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %167)
  %168 = load i64, i64* @g_121, align 8, !tbaa !7
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %169)
  %170 = load i8, i8* @g_125, align 1, !tbaa !9
  %171 = sext i8 %170 to i64
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %172)
  %173 = load i32, i32* @g_126, align 4, !tbaa !1
  %174 = sext i32 %173 to i64
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %175)
  %176 = load volatile i32, i32* @g_127, align 4, !tbaa !1
  %177 = zext i32 %176 to i64
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %178)
  %179 = load i16, i16* @g_139, align 2, !tbaa !10
  %180 = sext i16 %179 to i64
  %181 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %181)
  %182 = load volatile i64, i64* @g_176, align 8, !tbaa !7
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %183)
  %184 = load i16, i16* @g_186, align 2, !tbaa !10
  %185 = sext i16 %184 to i64
  %186 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %186)
  %187 = load i32, i32* @g_210, align 4, !tbaa !1
  %188 = zext i32 %187 to i64
  %189 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %188, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %189)
  %190 = load i32, i32* @g_260, align 4, !tbaa !1
  %191 = sext i32 %190 to i64
  %192 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %192)
  %193 = load volatile i32, i32* @g_291, align 4, !tbaa !1
  %194 = zext i32 %193 to i64
  %195 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %195)
  %196 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_465, i32 0, i32 0), align 8, !tbaa !7
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %196, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %197)
  %198 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_465, i32 0, i32 0), align 8, !tbaa !7
  %199 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %198, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %199)
  %200 = load volatile i32, i32* bitcast (%union.U0* @g_465 to i32*), align 4, !tbaa !1
  %201 = sext i32 %200 to i64
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %202)
  %203 = load volatile i32, i32* @g_482, align 4, !tbaa !1
  %204 = sext i32 %203 to i64
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %205)
  %206 = load volatile i32, i32* @g_492, align 4, !tbaa !1
  %207 = zext i32 %206 to i64
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %208)
  %209 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 65535, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %209)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %210

; <label>:210                                     ; preds = %226, %158
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = icmp slt i32 %211, 2
  br i1 %212, label %213, label %229

; <label>:213                                     ; preds = %210
  %214 = load i32, i32* %i, align 4, !tbaa !1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [2 x i32], [2 x i32]* @g_510, i32 0, i64 %215
  %217 = load i32, i32* %216, align 4, !tbaa !1
  %218 = sext i32 %217 to i64
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %219)
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

; <label>:222                                     ; preds = %213
  %223 = load i32, i32* %i, align 4, !tbaa !1
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %223)
  br label %225

; <label>:225                                     ; preds = %222, %213
  br label %226

; <label>:226                                     ; preds = %225
  %227 = load i32, i32* %i, align 4, !tbaa !1
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %i, align 4, !tbaa !1
  br label %210

; <label>:229                                     ; preds = %210
  %230 = load i32, i32* @g_511, align 4, !tbaa !1
  %231 = sext i32 %230 to i64
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %231, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %232)
  %233 = load i16, i16* @g_512, align 2, !tbaa !10
  %234 = zext i16 %233 to i64
  %235 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %234, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %235)
  %236 = load i16, i16* @g_519, align 2, !tbaa !10
  %237 = zext i16 %236 to i64
  %238 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %238)
  %239 = load volatile i8, i8* @g_576, align 1, !tbaa !9
  %240 = sext i8 %239 to i64
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %241)
  %242 = load i8, i8* @g_631, align 1, !tbaa !9
  %243 = zext i8 %242 to i64
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %243, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %244)
  %245 = load i32, i32* @g_676, align 4, !tbaa !1
  %246 = zext i32 %245 to i64
  %247 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %247)
  %248 = load i32, i32* @g_765, align 4, !tbaa !1
  %249 = zext i32 %248 to i64
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %250)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %251

; <label>:251                                     ; preds = %267, %229
  %252 = load i32, i32* %i, align 4, !tbaa !1
  %253 = icmp slt i32 %252, 6
  br i1 %253, label %254, label %270

; <label>:254                                     ; preds = %251
  %255 = load i32, i32* %i, align 4, !tbaa !1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [6 x i32], [6 x i32]* @g_902, i32 0, i64 %256
  %258 = load volatile i32, i32* %257, align 4, !tbaa !1
  %259 = zext i32 %258 to i64
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %259, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 %260)
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %266

; <label>:263                                     ; preds = %254
  %264 = load i32, i32* %i, align 4, !tbaa !1
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %264)
  br label %266

; <label>:266                                     ; preds = %263, %254
  br label %267

; <label>:267                                     ; preds = %266
  %268 = load i32, i32* %i, align 4, !tbaa !1
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %i, align 4, !tbaa !1
  br label %251

; <label>:270                                     ; preds = %251
  %271 = load i32, i32* @g_933, align 4, !tbaa !1
  %272 = sext i32 %271 to i64
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %273)
  %274 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_934, i32 0, i32 0), align 8, !tbaa !7
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %275)
  %276 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_934, i32 0, i32 0), align 8, !tbaa !7
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 %277)
  %278 = load i32, i32* bitcast (%union.U0* @g_934 to i32*), align 4, !tbaa !1
  %279 = sext i32 %278 to i64
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %279, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %280)
  %281 = load i32, i32* @g_953, align 4, !tbaa !1
  %282 = sext i32 %281 to i64
  %283 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %283)
  %284 = load i32, i32* @g_1176, align 4, !tbaa !1
  %285 = zext i32 %284 to i64
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %285, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %286)
  %287 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %288 = zext i32 %287 to i64
  %289 = xor i64 %288, 4294967295
  %290 = trunc i64 %289 to i32
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %290, i32 %291)
  %292 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
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
define internal i32 @func_1() #0 {
  %l_12 = alloca i16*, align 8
  %l_14 = alloca [5 x i32*], align 16
  %l_1164 = alloca [5 x i32****], align 16
  %l_1181 = alloca [3 x [7 x [7 x i32]]], align 16
  %l_1184 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_25 = alloca i32, align 4
  %l_1163 = alloca i16, align 2
  %l_1175 = alloca i32, align 4
  %l_1179 = alloca i32, align 4
  %l_1180 = alloca i32, align 4
  %l_1190 = alloca i8***, align 8
  %l_1189 = alloca i8****, align 8
  %l_1160 = alloca i32, align 4
  %l_1162 = alloca [3 x i32], align 4
  %l_1188 = alloca i8****, align 8
  %l_1194 = alloca i32**, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %1 = alloca i32
  %l_31 = alloca i32*, align 8
  %l_1161 = alloca i32, align 4
  %l_1193 = alloca i16*, align 8
  %l_1203 = alloca [8 x [6 x i16]], align 16
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %l_1166 = alloca i8**, align 8
  %l_1165 = alloca i8***, align 8
  %l_1170 = alloca i8****, align 8
  %l_1171 = alloca [4 x i8****], align 16
  %l_1172 = alloca i64**, align 8
  %l_1174 = alloca i64*, align 8
  %l_1173 = alloca i64**, align 8
  %i5 = alloca i32, align 4
  %2 = bitcast i16** %l_12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i16* getelementptr inbounds ([6 x i16], [6 x i16]* @g_13, i32 0, i64 0), i16** %l_12, align 8, !tbaa !5
  %3 = bitcast [5 x i32*]* %l_14 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %3) #1
  %4 = bitcast [5 x i32****]* %l_1164 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %4) #1
  %5 = bitcast [5 x i32****]* %l_1164 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 40, i32 16, i1 false)
  %6 = bitcast [3 x [7 x [7 x i32]]]* %l_1181 to i8*
  call void @llvm.lifetime.start(i64 588, i8* %6) #1
  %7 = bitcast [3 x [7 x [7 x i32]]]* %l_1181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([3 x [7 x [7 x i32]]]* @func_1.l_1181 to i8*), i64 588, i32 16, i1 false)
  %8 = bitcast i64* %l_1184 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64 -8, i64* %l_1184, align 8, !tbaa !7
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %12

; <label>:12                                      ; preds = %19, %0
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %22

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5 x i32*], [5 x i32*]* %l_14, i32 0, i64 %17
  store i32* @g_15, i32** %18, align 8, !tbaa !5
  br label %19

; <label>:19                                      ; preds = %15
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %i, align 4, !tbaa !1
  br label %12

; <label>:22                                      ; preds = %12
  %23 = load volatile i32, i32* @g_4, align 4, !tbaa !1
  %24 = load i8, i8* getelementptr inbounds ([3 x [6 x [5 x i8]]], [3 x [6 x [5 x i8]]]* @func_1.l_9, i32 0, i64 1, i64 5, i64 1), align 1, !tbaa !9
  %25 = sext i8 %24 to i16
  %26 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %25, i32 -2)
  %27 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext 5492, i16 signext %26)
  %28 = sext i16 %27 to i32
  %29 = or i32 %23, %28
  %30 = trunc i32 %29 to i8
  %31 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext -4, i8 signext %30)
  %32 = sext i8 %31 to i32
  store i32 %32, i32* @g_15, align 4, !tbaa !1
  %33 = load volatile i32, i32* @g_16, align 4, !tbaa !1
  %34 = add i32 %33, -1
  store volatile i32 %34, i32* @g_16, align 4, !tbaa !1
  store i32 0, i32* @g_15, align 4, !tbaa !1
  br label %35

; <label>:35                                      ; preds = %304, %22
  %36 = load i32, i32* @g_15, align 4, !tbaa !1
  %37 = icmp sle i32 %36, 4
  br i1 %37, label %38, label %309

; <label>:38                                      ; preds = %35
  %39 = bitcast i32* %l_25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 -313800046, i32* %l_25, align 4, !tbaa !1
  %40 = bitcast i16* %l_1163 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %40) #1
  store i16 760, i16* %l_1163, align 2, !tbaa !10
  %41 = bitcast i32* %l_1175 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  store i32 0, i32* %l_1175, align 4, !tbaa !1
  %42 = bitcast i32* %l_1179 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 47695001, i32* %l_1179, align 4, !tbaa !1
  %43 = bitcast i32* %l_1180 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 9, i32* %l_1180, align 4, !tbaa !1
  %44 = bitcast i8**** %l_1190 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  store i8*** null, i8**** %l_1190, align 8, !tbaa !5
  %45 = bitcast i8***** %l_1189 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  store i8**** %l_1190, i8***** %l_1189, align 8, !tbaa !5
  store i32 19, i32* @g_21, align 4, !tbaa !1
  br label %46

; <label>:46                                      ; preds = %293, %38
  %47 = load i32, i32* @g_21, align 4, !tbaa !1
  %48 = icmp sle i32 %47, 19
  br i1 %48, label %49, label %296

; <label>:49                                      ; preds = %46
  %50 = bitcast i32* %l_1160 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  store i32 -437086283, i32* %l_1160, align 4, !tbaa !1
  %51 = bitcast [3 x i32]* %l_1162 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %51) #1
  %52 = bitcast i8***** %l_1188 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  store i8**** null, i8***** %l_1188, align 8, !tbaa !5
  %53 = bitcast i32*** %l_1194 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  store i32** null, i32*** %l_1194, align 8, !tbaa !5
  %54 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %55

; <label>:55                                      ; preds = %62, %49
  %56 = load i32, i32* %i1, align 4, !tbaa !1
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %65

; <label>:58                                      ; preds = %55
  %59 = load i32, i32* %i1, align 4, !tbaa !1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %l_1162, i32 0, i64 %60
  store i32 -2088303065, i32* %61, align 4, !tbaa !1
  br label %62

; <label>:62                                      ; preds = %58
  %63 = load i32, i32* %i1, align 4, !tbaa !1
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %i1, align 4, !tbaa !1
  br label %55

; <label>:65                                      ; preds = %55
  store i32 5, i32* @g_24, align 4, !tbaa !1
  br label %66

; <label>:66                                      ; preds = %81, %65
  %67 = load i32, i32* @g_24, align 4, !tbaa !1
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %84

; <label>:69                                      ; preds = %66
  %70 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = load i32, i32* @g_24, align 4, !tbaa !1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [6 x i16], [6 x i16]* @g_13, i32 0, i64 %72
  %74 = load i16, i16* %73, align 2, !tbaa !10
  %75 = icmp ne i16 %74, 0
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %69
  store i32 14, i32* %1
  br label %78

; <label>:77                                      ; preds = %69
  store i32 0, i32* %1
  br label %78

; <label>:78                                      ; preds = %77, %76
  %79 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %cleanup.dest = load i32, i32* %1
  switch i32 %cleanup.dest, label %322 [
    i32 0, label %80
    i32 14, label %84
  ]

; <label>:80                                      ; preds = %78
  br label %81

; <label>:81                                      ; preds = %80
  %82 = load i32, i32* @g_24, align 4, !tbaa !1
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* @g_24, align 4, !tbaa !1
  br label %66

; <label>:84                                      ; preds = %78, %66
  %85 = load i32, i32* %l_25, align 4, !tbaa !1
  %86 = zext i32 %85 to i64
  %87 = xor i64 %86, 63949711
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %l_25, align 4, !tbaa !1
  store i32 0, i32* %l_25, align 4, !tbaa !1
  br label %89

; <label>:89                                      ; preds = %282, %84
  %90 = load i32, i32* %l_25, align 4, !tbaa !1
  %91 = icmp ne i32 %90, 6
  br i1 %91, label %92, label %287

; <label>:92                                      ; preds = %89
  %93 = bitcast i32** %l_31 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  store i32* @g_15, i32** %l_31, align 8, !tbaa !5
  %94 = bitcast i32* %l_1161 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  store i32 -1, i32* %l_1161, align 4, !tbaa !1
  %95 = bitcast i16** %l_1193 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  store i16* @g_186, i16** %l_1193, align 8, !tbaa !5
  %96 = bitcast [8 x [6 x i16]]* %l_1203 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %96) #1
  %97 = bitcast [8 x [6 x i16]]* %l_1203 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* bitcast ([8 x [6 x i16]]* @func_1.l_1203 to i8*), i64 96, i32 16, i1 false)
  %98 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  %99 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #1
  %100 = load i32, i32* @g_15, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = icmp ne i64 -1, %101
  %103 = zext i1 %102 to i32
  %104 = sext i32 %103 to i64
  %105 = icmp ne i64 2714153570597547337, %104
  %106 = zext i1 %105 to i32
  %107 = load i32*, i32** %l_31, align 8, !tbaa !5
  %108 = call zeroext i16 @func_28(i32 0, i32* %107)
  %109 = zext i16 %108 to i32
  %110 = load i32, i32* %l_1160, align 4, !tbaa !1
  %111 = load i32, i32* %l_1160, align 4, !tbaa !1
  %112 = call i32 @safe_sub_func_int32_t_s_s(i32 %110, i32 %111)
  %113 = call i32 @safe_add_func_uint32_t_u_u(i32 %112, i32 1156161901)
  store i32 %113, i32* %l_1161, align 4, !tbaa !1
  %114 = load i32, i32* %l_1160, align 4, !tbaa !1
  %115 = icmp ugt i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %l_1162, i32 0, i64 1
  %118 = load i32, i32* %117, align 4, !tbaa !1
  %119 = or i32 %116, %118
  %120 = icmp eq i32 %119, 1929966706
  %121 = zext i1 %120 to i32
  %122 = load i16, i16* %l_1163, align 2, !tbaa !10
  %123 = sext i16 %122 to i32
  %124 = call i32 @safe_sub_func_int32_t_s_s(i32 %121, i32 %123)
  %125 = sext i32 %124 to i64
  %126 = icmp ne i64 %125, -2
  %127 = zext i1 %126 to i32
  %128 = getelementptr inbounds [5 x i32****], [5 x i32****]* %l_1164, i32 0, i64 1
  %129 = load i32****, i32***** %128, align 8, !tbaa !5
  %130 = bitcast i32**** %129 to i8*
  %131 = icmp eq i8* null, %130
  %132 = zext i1 %131 to i32
  %133 = load i32*, i32** %l_31, align 8, !tbaa !5
  %134 = load i32, i32* %133, align 4, !tbaa !1
  %135 = trunc i32 %134 to i16
  %136 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %135, i16 signext 21062)
  %137 = sext i16 %136 to i32
  %138 = load i32, i32* %l_1160, align 4, !tbaa !1
  %139 = icmp ult i32 %137, %138
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = sext i32 %141 to i64
  %143 = call i64 @safe_add_func_int64_t_s_s(i64 0, i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

; <label>:145                                     ; preds = %92
  br label %146

; <label>:146                                     ; preds = %145, %92
  %147 = phi i1 [ false, %92 ], [ true, %145 ]
  %148 = zext i1 %147 to i32
  %149 = sext i32 %148 to i64
  store i64 %149, i64* getelementptr inbounds (%union.U0, %union.U0* @g_934, i32 0, i32 0), align 8, !tbaa !7
  %150 = icmp eq i64 %149, -4004879141844734233
  %151 = zext i1 %150 to i32
  %152 = load i16, i16* %l_1163, align 2, !tbaa !10
  %153 = sext i16 %152 to i32
  %154 = icmp sgt i32 %151, %153
  %155 = zext i1 %154 to i32
  %156 = icmp slt i32 %109, %155
  br i1 %156, label %157, label %163

; <label>:157                                     ; preds = %146
  %158 = load volatile i32*, i32** @g_424, align 8, !tbaa !5
  %159 = load i32, i32* %158, align 4, !tbaa !1
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

; <label>:161                                     ; preds = %157
  store i32 17, i32* %1
  br label %274

; <label>:162                                     ; preds = %157
  br label %209

; <label>:163                                     ; preds = %146
  %164 = bitcast i8*** %l_1166 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %164) #1
  store i8** null, i8*** %l_1166, align 8, !tbaa !5
  %165 = bitcast i8**** %l_1165 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %165) #1
  store i8*** %l_1166, i8**** %l_1165, align 8, !tbaa !5
  %166 = bitcast i8***** %l_1170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %166) #1
  store i8**** null, i8***** %l_1170, align 8, !tbaa !5
  %167 = bitcast [4 x i8****]* %l_1171 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %167) #1
  %168 = bitcast i64*** %l_1172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %168) #1
  store i64** null, i64*** %l_1172, align 8, !tbaa !5
  %169 = bitcast i64** %l_1174 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #1
  store i64* null, i64** %l_1174, align 8, !tbaa !5
  %170 = bitcast i64*** %l_1173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  store i64** %l_1174, i64*** %l_1173, align 8, !tbaa !5
  %171 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #1
  store i32 0, i32* %i5, align 4, !tbaa !1
  br label %172

; <label>:172                                     ; preds = %179, %163
  %173 = load i32, i32* %i5, align 4, !tbaa !1
  %174 = icmp slt i32 %173, 4
  br i1 %174, label %175, label %182

; <label>:175                                     ; preds = %172
  %176 = load i32, i32* %i5, align 4, !tbaa !1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [4 x i8****], [4 x i8****]* %l_1171, i32 0, i64 %177
  store i8**** null, i8***** %178, align 8, !tbaa !5
  br label %179

; <label>:179                                     ; preds = %175
  %180 = load i32, i32* %i5, align 4, !tbaa !1
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %i5, align 4, !tbaa !1
  br label %172

; <label>:182                                     ; preds = %172
  %183 = load i8***, i8**** %l_1165, align 8, !tbaa !5
  %184 = load i8***, i8**** @g_1167, align 8, !tbaa !5
  store i8*** %184, i8**** @g_1167, align 8, !tbaa !5
  %185 = icmp eq i8*** %183, %184
  %186 = zext i1 %185 to i32
  %187 = load i64**, i64*** %l_1173, align 8, !tbaa !5
  store i64* @g_109, i64** %187, align 8, !tbaa !5
  %188 = icmp sle i32 %186, 1
  %189 = zext i1 %188 to i32
  %190 = load i32**, i32*** @g_714, align 8, !tbaa !5
  %191 = load i32*, i32** %190, align 8, !tbaa !5
  %192 = load i32, i32* %191, align 4, !tbaa !1
  %193 = xor i32 %192, %189
  store i32 %193, i32* %191, align 4, !tbaa !1
  %194 = load volatile i32*, i32** @g_890, align 8, !tbaa !5
  store i32 -598229403, i32* %194, align 4, !tbaa !1
  %195 = load i32**, i32*** @g_714, align 8, !tbaa !5
  %196 = load i32*, i32** %195, align 8, !tbaa !5
  %197 = load i32, i32* %196, align 4, !tbaa !1
  %198 = or i32 %197, -598229403
  store i32 %198, i32* %196, align 4, !tbaa !1
  %199 = load i32, i32* @g_1176, align 4, !tbaa !1
  %200 = add i32 %199, 1
  store i32 %200, i32* @g_1176, align 4, !tbaa !1
  %201 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i64*** %l_1173 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast i64** %l_1174 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast i64*** %l_1172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast [4 x i8****]* %l_1171 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %205) #1
  %206 = bitcast i8***** %l_1170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast i8**** %l_1165 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast i8*** %l_1166 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  br label %209

; <label>:209                                     ; preds = %182, %162
  %210 = getelementptr inbounds [3 x [7 x [7 x i32]]], [3 x [7 x [7 x i32]]]* %l_1181, i32 0, i64 1
  %211 = getelementptr inbounds [7 x [7 x i32]], [7 x [7 x i32]]* %210, i32 0, i64 2
  %212 = getelementptr inbounds [7 x i32], [7 x i32]* %211, i32 0, i64 0
  %213 = load i32, i32* %212, align 4, !tbaa !1
  %214 = add i32 %213, 1
  store i32 %214, i32* %212, align 4, !tbaa !1
  %215 = load i64, i64* %l_1184, align 8, !tbaa !7
  %216 = load i8****, i8***** %l_1188, align 8, !tbaa !5
  %217 = load i8****, i8***** %l_1189, align 8, !tbaa !5
  %218 = icmp eq i8**** %216, %217
  %219 = zext i1 %218 to i32
  %220 = load i32*, i32** %l_31, align 8, !tbaa !5
  %221 = load i32, i32* %220, align 4, !tbaa !1
  %222 = trunc i32 %221 to i16
  %223 = load i16*, i16** %l_1193, align 8, !tbaa !5
  store i16 %222, i16* %223, align 2, !tbaa !10
  %224 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %222, i16 signext -30223)
  %225 = sext i16 %224 to i32
  %226 = or i32 %219, %225
  %227 = load volatile i32***, i32**** @g_229, align 8, !tbaa !5
  %228 = load i32**, i32*** %227, align 8, !tbaa !5
  %229 = load i32**, i32*** %l_1194, align 8, !tbaa !5
  %230 = icmp ne i32** %228, %229
  %231 = zext i1 %230 to i32
  %232 = load i32**, i32*** @g_227, align 8, !tbaa !5
  %233 = load i32*, i32** %232, align 8, !tbaa !5
  %234 = load i32, i32* %233, align 4, !tbaa !1
  %235 = add i32 %234, -1
  store i32 %235, i32* %233, align 4, !tbaa !1
  %236 = load i32**, i32*** @g_227, align 8, !tbaa !5
  %237 = load i32*, i32** %236, align 8, !tbaa !5
  %238 = load i32**, i32*** @g_227, align 8, !tbaa !5
  %239 = load i32*, i32** %238, align 8, !tbaa !5
  %240 = icmp ne i32* %237, %239
  %241 = zext i1 %240 to i32
  %242 = sext i32 %241 to i64
  %243 = call i64 @safe_div_func_uint64_t_u_u(i64 %242, i64 -4)
  %244 = trunc i64 %243 to i32
  %245 = call i32 @safe_mod_func_uint32_t_u_u(i32 %235, i32 %244)
  %246 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext 19728, i32 %245)
  %247 = zext i16 %246 to i32
  %248 = load i32, i32* %l_25, align 4, !tbaa !1
  %249 = or i32 %247, %248
  %250 = or i32 %231, %249
  %251 = trunc i32 %250 to i8
  %252 = load i32*, i32** %l_31, align 8, !tbaa !5
  %253 = load i32, i32* %252, align 4, !tbaa !1
  %254 = trunc i32 %253 to i8
  %255 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %251, i8 signext %254)
  %256 = sext i8 %255 to i64
  %257 = icmp sge i64 %256, 53301
  %258 = zext i1 %257 to i32
  %259 = load i32*, i32** %l_31, align 8, !tbaa !5
  %260 = load i32, i32* %259, align 4, !tbaa !1
  %261 = icmp sle i32 %258, %260
  %262 = zext i1 %261 to i32
  %263 = trunc i32 %262 to i8
  %264 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %263)
  %265 = zext i8 %264 to i64
  %266 = icmp eq i64 %215, %265
  %267 = zext i1 %266 to i32
  %268 = getelementptr inbounds [3 x i32], [3 x i32]* %l_1162, i32 0, i64 1
  %269 = load i32, i32* %268, align 4, !tbaa !1
  %270 = and i32 %267, %269
  %271 = trunc i32 %270 to i16
  %272 = getelementptr inbounds [8 x [6 x i16]], [8 x [6 x i16]]* %l_1203, i32 0, i64 2
  %273 = getelementptr inbounds [6 x i16], [6 x i16]* %272, i32 0, i64 1
  store i16 %271, i16* %273, align 2, !tbaa !10
  store i32 0, i32* %1
  br label %274

; <label>:274                                     ; preds = %209, %161
  %275 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast [8 x [6 x i16]]* %l_1203 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %277) #1
  %278 = bitcast i16** %l_1193 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #1
  %279 = bitcast i32* %l_1161 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #1
  %280 = bitcast i32** %l_31 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #1
  %cleanup.dest.6 = load i32, i32* %1
  switch i32 %cleanup.dest.6, label %322 [
    i32 0, label %281
    i32 17, label %287
  ]

; <label>:281                                     ; preds = %274
  br label %282

; <label>:282                                     ; preds = %281
  %283 = load i32, i32* %l_25, align 4, !tbaa !1
  %284 = zext i32 %283 to i64
  %285 = call i64 @safe_add_func_uint64_t_u_u(i64 %284, i64 6)
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %l_25, align 4, !tbaa !1
  br label %89

; <label>:287                                     ; preds = %274, %89
  %288 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
  %289 = bitcast i32*** %l_1194 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #1
  %290 = bitcast i8***** %l_1188 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %290) #1
  %291 = bitcast [3 x i32]* %l_1162 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %291) #1
  %292 = bitcast i32* %l_1160 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  br label %293

; <label>:293                                     ; preds = %287
  %294 = load i32, i32* @g_21, align 4, !tbaa !1
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* @g_21, align 4, !tbaa !1
  br label %46

; <label>:296                                     ; preds = %46
  %297 = bitcast i8***** %l_1189 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #1
  %298 = bitcast i8**** %l_1190 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #1
  %299 = bitcast i32* %l_1180 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast i32* %l_1179 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  %301 = bitcast i32* %l_1175 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #1
  %302 = bitcast i16* %l_1163 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %302) #1
  %303 = bitcast i32* %l_25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  br label %304

; <label>:304                                     ; preds = %296
  %305 = load i32, i32* @g_15, align 4, !tbaa !1
  %306 = trunc i32 %305 to i8
  %307 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %306, i8 zeroext 7)
  %308 = zext i8 %307 to i32
  store i32 %308, i32* @g_15, align 4, !tbaa !1
  br label %35

; <label>:309                                     ; preds = %35
  %310 = load i32**, i32*** @g_714, align 8, !tbaa !5
  store i32* null, i32** %310, align 8, !tbaa !5
  %311 = load i32**, i32*** @g_851, align 8, !tbaa !5
  %312 = load i32*, i32** %311, align 8, !tbaa !5
  %313 = load i32, i32* %312, align 4, !tbaa !1
  store i32 1, i32* %1
  %314 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #1
  %315 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  %316 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i64* %l_1184 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #1
  %318 = bitcast [3 x [7 x [7 x i32]]]* %l_1181 to i8*
  call void @llvm.lifetime.end(i64 588, i8* %318) #1
  %319 = bitcast [5 x i32****]* %l_1164 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %319) #1
  %320 = bitcast [5 x i32*]* %l_14 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %320) #1
  %321 = bitcast i16** %l_12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %321) #1
  ret i32 %313

; <label>:322                                     ; preds = %274, %78
  unreachable
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_mul_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = sext i8 %5 to i32
  %7 = mul nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = mul nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %9, %6, %0
  %13 = load i16, i16* %1, align 2, !tbaa !10
  %14 = sext i16 %13 to i32
  br label %20

; <label>:15                                      ; preds = %9
  %16 = load i16, i16* %1, align 2, !tbaa !10
  %17 = sext i16 %16 to i32
  %18 = load i32, i32* %2, align 4, !tbaa !1
  %19 = ashr i32 %17, %18
  br label %20

; <label>:20                                      ; preds = %15, %12
  %21 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %22 = trunc i32 %21 to i16
  ret i16 %22
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @func_28(i32 %p_29, i32* %p_30) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %l_34 = alloca [3 x i16], align 2
  %l_144 = alloca [7 x [2 x i8]], align 1
  %l_904 = alloca i16*, align 8
  %l_972 = alloca i32**, align 8
  %l_998 = alloca [1 x i32], align 4
  %l_1019 = alloca i64*, align 8
  %l_1060 = alloca i64*, align 8
  %l_1073 = alloca [6 x i32], align 16
  %l_1092 = alloca [1 x i32***], align 8
  %l_1091 = alloca i32****, align 8
  %l_1122 = alloca [5 x i32], align 16
  %l_1127 = alloca i16***, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_80 = alloca [9 x [6 x [4 x i16*]]], align 16
  %l_145 = alloca [2 x [8 x %union.U0]], align 16
  %l_947 = alloca i32*, align 8
  %l_994 = alloca i8****, align 8
  %l_1081 = alloca i32*, align 8
  %l_1080 = alloca [10 x i32**], align 16
  %l_1118 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_77 = alloca i32, align 4
  %l_81 = alloca i16**, align 8
  %l_138 = alloca [3 x [3 x i32*]], align 16
  %l_619 = alloca i32, align 4
  %l_903 = alloca i64*, align 8
  %l_932 = alloca i32*, align 8
  %l_968 = alloca i8, align 1
  %l_976 = alloca i8*, align 8
  %l_975 = alloca i8**, align 8
  %l_993 = alloca i8*, align 8
  %l_992 = alloca i8**, align 8
  %l_991 = alloca i8***, align 8
  %l_990 = alloca i8****, align 8
  %l_1029 = alloca i32, align 4
  %l_1072 = alloca i64**, align 8
  %l_1071 = alloca i64***, align 8
  %l_1082 = alloca i32**, align 8
  %l_1086 = alloca %union.U0, align 8
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %l_1136 = alloca i8, align 1
  %l_1137 = alloca i32, align 4
  %l_1138 = alloca [3 x [3 x [6 x i32]]], align 16
  %l_1148 = alloca i32**, align 8
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %k7 = alloca i32, align 4
  %4 = alloca i32
  %l_1134 = alloca i32*, align 8
  %l_1135 = alloca [8 x i32*], align 16
  %l_1139 = alloca i32, align 4
  %i8 = alloca i32, align 4
  store i32 %p_29, i32* %2, align 4, !tbaa !1
  store i32* %p_30, i32** %3, align 8, !tbaa !5
  %5 = bitcast [3 x i16]* %l_34 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %5) #1
  %6 = bitcast [7 x [2 x i8]]* %l_144 to i8*
  call void @llvm.lifetime.start(i64 14, i8* %6) #1
  %7 = bitcast [7 x [2 x i8]]* %l_144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* getelementptr inbounds ([7 x [2 x i8]], [7 x [2 x i8]]* @func_28.l_144, i32 0, i32 0, i32 0), i64 14, i32 1, i1 false)
  %8 = bitcast i16** %l_904 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i16* null, i16** %l_904, align 8, !tbaa !5
  %9 = bitcast i32*** %l_972 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @g_294, i32 0, i64 0), i32*** %l_972, align 8, !tbaa !5
  %10 = bitcast [1 x i32]* %l_998 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i64** %l_1019 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64* @g_109, i64** %l_1019, align 8, !tbaa !5
  %12 = bitcast i64** %l_1060 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64* @g_121, i64** %l_1060, align 8, !tbaa !5
  %13 = bitcast [6 x i32]* %l_1073 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %13) #1
  %14 = bitcast [6 x i32]* %l_1073 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast ([6 x i32]* @func_28.l_1073 to i8*), i64 24, i32 16, i1 false)
  %15 = bitcast [1 x i32***]* %l_1092 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i32***** %l_1091 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = getelementptr inbounds [1 x i32***], [1 x i32***]* %l_1092, i32 0, i64 0
  store i32**** %17, i32***** %l_1091, align 8, !tbaa !5
  %18 = bitcast [5 x i32]* %l_1122 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %18) #1
  %19 = bitcast [5 x i32]* %l_1122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast ([5 x i32]* @func_28.l_1122 to i8*), i64 20, i32 16, i1 false)
  %20 = bitcast i16**** %l_1127 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i16*** @g_218, i16**** %l_1127, align 8, !tbaa !5
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %23

; <label>:23                                      ; preds = %30, %0
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %33

; <label>:26                                      ; preds = %23
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x i16], [3 x i16]* %l_34, i32 0, i64 %28
  store i16 -27601, i16* %29, align 2, !tbaa !10
  br label %30

; <label>:30                                      ; preds = %26
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i, align 4, !tbaa !1
  br label %23

; <label>:33                                      ; preds = %23
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %34

; <label>:34                                      ; preds = %41, %33
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %44

; <label>:37                                      ; preds = %34
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1 x i32], [1 x i32]* %l_998, i32 0, i64 %39
  store i32 1964310437, i32* %40, align 4, !tbaa !1
  br label %41

; <label>:41                                      ; preds = %37
  %42 = load i32, i32* %i, align 4, !tbaa !1
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %i, align 4, !tbaa !1
  br label %34

; <label>:44                                      ; preds = %34
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %45

; <label>:45                                      ; preds = %52, %44
  %46 = load i32, i32* %i, align 4, !tbaa !1
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %55

; <label>:48                                      ; preds = %45
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1 x i32***], [1 x i32***]* %l_1092, i32 0, i64 %50
  store i32*** null, i32**** %51, align 8, !tbaa !5
  br label %52

; <label>:52                                      ; preds = %48
  %53 = load i32, i32* %i, align 4, !tbaa !1
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %i, align 4, !tbaa !1
  br label %45

; <label>:55                                      ; preds = %45
  store i32 0, i32* @g_24, align 4, !tbaa !1
  br label %56

; <label>:56                                      ; preds = %66, %55
  %57 = load i32, i32* @g_24, align 4, !tbaa !1
  %58 = icmp sge i32 %57, 26
  br i1 %58, label %59, label %69

; <label>:59                                      ; preds = %56
  %60 = load volatile i32, i32* @g_4, align 4, !tbaa !1
  %61 = getelementptr inbounds [3 x i16], [3 x i16]* %l_34, i32 0, i64 1
  %62 = load i16, i16* %61, align 2, !tbaa !10
  %63 = sext i16 %62 to i32
  %64 = and i32 %63, %60
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %61, align 2, !tbaa !10
  br label %66

; <label>:66                                      ; preds = %59
  %67 = load i32, i32* @g_24, align 4, !tbaa !1
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @g_24, align 4, !tbaa !1
  br label %56

; <label>:69                                      ; preds = %56
  store i32 13, i32* @g_24, align 4, !tbaa !1
  br label %70

; <label>:70                                      ; preds = %176, %69
  %71 = load i32, i32* @g_24, align 4, !tbaa !1
  %72 = icmp slt i32 %71, 21
  br i1 %72, label %73, label %179

; <label>:73                                      ; preds = %70
  %74 = bitcast [9 x [6 x [4 x i16*]]]* %l_80 to i8*
  call void @llvm.lifetime.start(i64 1728, i8* %74) #1
  %75 = bitcast [9 x [6 x [4 x i16*]]]* %l_80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* bitcast ([9 x [6 x [4 x i16*]]]* @func_28.l_80 to i8*), i64 1728, i32 16, i1 false)
  %76 = bitcast [2 x [8 x %union.U0]]* %l_145 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %76) #1
  %77 = bitcast [2 x [8 x %union.U0]]* %l_145 to i8*
  call void @llvm.memset.p0i8.i64(i8* %77, i8 0, i64 128, i32 16, i1 false)
  %78 = bitcast i32** %l_947 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  %79 = getelementptr inbounds [2 x [8 x %union.U0]], [2 x [8 x %union.U0]]* %l_145, i32 0, i64 0
  %80 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* %79, i32 0, i64 6
  %81 = bitcast %union.U0* %80 to i32*
  store i32* %81, i32** %l_947, align 8, !tbaa !5
  %82 = bitcast i8***** %l_994 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  store i8**** null, i8***** %l_994, align 8, !tbaa !5
  %83 = bitcast i32** %l_1081 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  %84 = getelementptr inbounds [1 x i32], [1 x i32]* %l_998, i32 0, i64 0
  store i32* %84, i32** %l_1081, align 8, !tbaa !5
  %85 = bitcast [10 x i32**]* %l_1080 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %85) #1
  %86 = getelementptr inbounds [10 x i32**], [10 x i32**]* %l_1080, i64 0, i64 0
  store i32** null, i32*** %86, !tbaa !5
  %87 = getelementptr inbounds i32**, i32*** %86, i64 1
  store i32** %l_1081, i32*** %87, !tbaa !5
  %88 = getelementptr inbounds i32**, i32*** %87, i64 1
  store i32** null, i32*** %88, !tbaa !5
  %89 = getelementptr inbounds i32**, i32*** %88, i64 1
  store i32** %l_1081, i32*** %89, !tbaa !5
  %90 = getelementptr inbounds i32**, i32*** %89, i64 1
  store i32** null, i32*** %90, !tbaa !5
  %91 = getelementptr inbounds i32**, i32*** %90, i64 1
  store i32** %l_1081, i32*** %91, !tbaa !5
  %92 = getelementptr inbounds i32**, i32*** %91, i64 1
  store i32** null, i32*** %92, !tbaa !5
  %93 = getelementptr inbounds i32**, i32*** %92, i64 1
  store i32** %l_1081, i32*** %93, !tbaa !5
  %94 = getelementptr inbounds i32**, i32*** %93, i64 1
  store i32** null, i32*** %94, !tbaa !5
  %95 = getelementptr inbounds i32**, i32*** %94, i64 1
  store i32** %l_1081, i32*** %95, !tbaa !5
  %96 = bitcast i32* %l_1118 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  store i32 -1050151472, i32* %l_1118, align 4, !tbaa !1
  %97 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  %98 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  %99 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #1
  store i32 0, i32* %2, align 4, !tbaa !1
  br label %100

; <label>:100                                     ; preds = %160, %73
  %101 = load i32, i32* %2, align 4, !tbaa !1
  %102 = icmp sgt i32 %101, -9
  br i1 %102, label %103, label %165

; <label>:103                                     ; preds = %100
  %104 = bitcast i32* %l_77 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  store i32 -267129764, i32* %l_77, align 4, !tbaa !1
  %105 = bitcast i16*** %l_81 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  %106 = getelementptr inbounds [9 x [6 x [4 x i16*]]], [9 x [6 x [4 x i16*]]]* %l_80, i32 0, i64 7
  %107 = getelementptr inbounds [6 x [4 x i16*]], [6 x [4 x i16*]]* %106, i32 0, i64 3
  %108 = getelementptr inbounds [4 x i16*], [4 x i16*]* %107, i32 0, i64 1
  store i16** %108, i16*** %l_81, align 8, !tbaa !5
  %109 = bitcast [3 x [3 x i32*]]* %l_138 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %109) #1
  %110 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %l_138, i64 0, i64 0
  %111 = getelementptr inbounds [3 x i32*], [3 x i32*]* %110, i64 0, i64 0
  store i32* %l_77, i32** %111, !tbaa !5
  %112 = getelementptr inbounds i32*, i32** %111, i64 1
  store i32* %l_77, i32** %112, !tbaa !5
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  store i32* %l_77, i32** %113, !tbaa !5
  %114 = getelementptr inbounds [3 x i32*], [3 x i32*]* %110, i64 1
  %115 = getelementptr inbounds [3 x i32*], [3 x i32*]* %114, i64 0, i64 0
  store i32* %l_77, i32** %115, !tbaa !5
  %116 = getelementptr inbounds i32*, i32** %115, i64 1
  store i32* %l_77, i32** %116, !tbaa !5
  %117 = getelementptr inbounds i32*, i32** %116, i64 1
  store i32* %l_77, i32** %117, !tbaa !5
  %118 = getelementptr inbounds [3 x i32*], [3 x i32*]* %114, i64 1
  %119 = getelementptr inbounds [3 x i32*], [3 x i32*]* %118, i64 0, i64 0
  store i32* %l_77, i32** %119, !tbaa !5
  %120 = getelementptr inbounds i32*, i32** %119, i64 1
  store i32* %l_77, i32** %120, !tbaa !5
  %121 = getelementptr inbounds i32*, i32** %120, i64 1
  store i32* %l_77, i32** %121, !tbaa !5
  %122 = bitcast i32* %l_619 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  store i32 472629399, i32* %l_619, align 4, !tbaa !1
  %123 = bitcast i64** %l_903 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #1
  store i64* @g_106, i64** %l_903, align 8, !tbaa !5
  %124 = bitcast i32** %l_932 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %124) #1
  store i32* @g_933, i32** %l_932, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_968) #1
  store i8 115, i8* %l_968, align 1, !tbaa !9
  %125 = bitcast i8** %l_976 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %125) #1
  store i8* null, i8** %l_976, align 8, !tbaa !5
  %126 = bitcast i8*** %l_975 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %126) #1
  store i8** %l_976, i8*** %l_975, align 8, !tbaa !5
  %127 = bitcast i8** %l_993 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %127) #1
  %128 = getelementptr inbounds [7 x [2 x i8]], [7 x [2 x i8]]* %l_144, i32 0, i64 0
  %129 = getelementptr inbounds [2 x i8], [2 x i8]* %128, i32 0, i64 1
  store i8* %129, i8** %l_993, align 8, !tbaa !5
  %130 = bitcast i8*** %l_992 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #1
  store i8** %l_993, i8*** %l_992, align 8, !tbaa !5
  %131 = bitcast i8**** %l_991 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  store i8*** %l_992, i8**** %l_991, align 8, !tbaa !5
  %132 = bitcast i8***** %l_990 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  store i8**** %l_991, i8***** %l_990, align 8, !tbaa !5
  %133 = bitcast i32* %l_1029 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #1
  store i32 239069559, i32* %l_1029, align 4, !tbaa !1
  %134 = bitcast i64*** %l_1072 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  store i64** @g_152, i64*** %l_1072, align 8, !tbaa !5
  %135 = bitcast i64**** %l_1071 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #1
  store i64*** %l_1072, i64**** %l_1071, align 8, !tbaa !5
  %136 = bitcast i32*** %l_1082 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %136) #1
  store i32** @g_852, i32*** %l_1082, align 8, !tbaa !5
  %137 = bitcast %union.U0* %l_1086 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %137) #1
  %138 = bitcast %union.U0* %l_1086 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* bitcast (%union.U0* @func_28.l_1086 to i8*), i64 8, i32 8, i1 false)
  %139 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #1
  %140 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  %141 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast %union.U0* %l_1086 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i32*** %l_1082 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast i64**** %l_1071 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast i64*** %l_1072 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast i32* %l_1029 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i8***** %l_990 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i8**** %l_991 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast i8*** %l_992 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast i8** %l_993 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast i8*** %l_975 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast i8** %l_976 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_968) #1
  %154 = bitcast i32** %l_932 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i64** %l_903 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i32* %l_619 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast [3 x [3 x i32*]]* %l_138 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %157) #1
  %158 = bitcast i16*** %l_81 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast i32* %l_77 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  br label %160

; <label>:160                                     ; preds = %103
  %161 = load i32, i32* %2, align 4, !tbaa !1
  %162 = trunc i32 %161 to i16
  %163 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %162, i16 zeroext 8)
  %164 = zext i16 %163 to i32
  store i32 %164, i32* %2, align 4, !tbaa !1
  br label %100

; <label>:165                                     ; preds = %100
  %166 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %l_1118 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast [10 x i32**]* %l_1080 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %170) #1
  %171 = bitcast i32** %l_1081 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i8***** %l_994 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast i32** %l_947 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast [2 x [8 x %union.U0]]* %l_145 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %174) #1
  %175 = bitcast [9 x [6 x [4 x i16*]]]* %l_80 to i8*
  call void @llvm.lifetime.end(i64 1728, i8* %175) #1
  br label %176

; <label>:176                                     ; preds = %165
  %177 = load i32, i32* @g_24, align 4, !tbaa !1
  %178 = call i32 @safe_add_func_uint32_t_u_u(i32 %177, i32 2)
  store i32 %178, i32* @g_24, align 4, !tbaa !1
  br label %70

; <label>:179                                     ; preds = %70
  store i16 -16, i16* @g_512, align 2, !tbaa !10
  br label %180

; <label>:180                                     ; preds = %301, %179
  %181 = load i16, i16* @g_512, align 2, !tbaa !10
  %182 = zext i16 %181 to i32
  %183 = icmp sgt i32 %182, 26
  br i1 %183, label %184, label %304

; <label>:184                                     ; preds = %180
  call void @llvm.lifetime.start(i64 1, i8* %l_1136) #1
  store i8 -7, i8* %l_1136, align 1, !tbaa !9
  %185 = bitcast i32* %l_1137 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %185) #1
  store i32 1112328208, i32* %l_1137, align 4, !tbaa !1
  %186 = bitcast [3 x [3 x [6 x i32]]]* %l_1138 to i8*
  call void @llvm.lifetime.start(i64 216, i8* %186) #1
  %187 = bitcast [3 x [3 x [6 x i32]]]* %l_1138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %187, i8* bitcast ([3 x [3 x [6 x i32]]]* @func_28.l_1138 to i8*), i64 216, i32 16, i1 false)
  %188 = bitcast i32*** %l_1148 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %188) #1
  store i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @g_294, i32 0, i64 0), i32*** %l_1148, align 8, !tbaa !5
  %189 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %189) #1
  %190 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #1
  %191 = bitcast i32* %k7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %191) #1
  store i64 0, i64* @g_120, align 8, !tbaa !7
  br label %192

; <label>:192                                     ; preds = %222, %184
  %193 = load i64, i64* @g_120, align 8, !tbaa !7
  %194 = icmp slt i64 %193, 21
  br i1 %194, label %195, label %225

; <label>:195                                     ; preds = %192
  store i32 28, i32* @g_260, align 4, !tbaa !1
  br label %196

; <label>:196                                     ; preds = %218, %195
  %197 = load i32, i32* @g_260, align 4, !tbaa !1
  %198 = icmp sge i32 %197, -10
  br i1 %198, label %199, label %221

; <label>:199                                     ; preds = %196
  store volatile i32 0, i32* @g_492, align 4, !tbaa !1
  br label %200

; <label>:200                                     ; preds = %207, %199
  %201 = load volatile i32, i32* @g_492, align 4, !tbaa !1
  %202 = icmp ult i32 %201, 2
  br i1 %202, label %203, label %210

; <label>:203                                     ; preds = %200
  %204 = load volatile i32, i32* @g_492, align 4, !tbaa !1
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds [2 x i32*], [2 x i32*]* @g_294, i32 0, i64 %205
  store i32* @g_24, i32** %206, align 8, !tbaa !5
  br label %207

; <label>:207                                     ; preds = %203
  %208 = load volatile i32, i32* @g_492, align 4, !tbaa !1
  %209 = add i32 %208, 1
  store volatile i32 %209, i32* @g_492, align 4, !tbaa !1
  br label %200

; <label>:210                                     ; preds = %200
  %211 = load i32*, i32** %3, align 8, !tbaa !5
  %212 = load i32, i32* %211, align 4, !tbaa !1
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

; <label>:214                                     ; preds = %210
  br label %221

; <label>:215                                     ; preds = %210
  %216 = load i32, i32* %2, align 4, !tbaa !1
  %217 = trunc i32 %216 to i16
  store i16 %217, i16* %1
  store i32 1, i32* %4
  br label %293
                                                  ; No predecessors!
  %219 = load i32, i32* @g_260, align 4, !tbaa !1
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* @g_260, align 4, !tbaa !1
  br label %196

; <label>:221                                     ; preds = %214, %196
  br label %222

; <label>:222                                     ; preds = %221
  %223 = load i64, i64* @g_120, align 8, !tbaa !7
  %224 = call i64 @safe_add_func_uint64_t_u_u(i64 %223, i64 5)
  store i64 %224, i64* @g_120, align 8, !tbaa !7
  br label %192

; <label>:225                                     ; preds = %192
  store i64 1, i64* @g_106, align 8, !tbaa !7
  br label %226

; <label>:226                                     ; preds = %289, %225
  %227 = load i64, i64* @g_106, align 8, !tbaa !7
  %228 = icmp ule i64 %227, 4
  br i1 %228, label %229, label %292

; <label>:229                                     ; preds = %226
  %230 = bitcast i32** %l_1134 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %230) #1
  %231 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1073, i32 0, i64 0
  store i32* %231, i32** %l_1134, align 8, !tbaa !5
  %232 = bitcast [8 x i32*]* %l_1135 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %232) #1
  %233 = getelementptr inbounds [8 x i32*], [8 x i32*]* %l_1135, i64 0, i64 0
  store i32* @g_933, i32** %233, !tbaa !5
  %234 = getelementptr inbounds i32*, i32** %233, i64 1
  %235 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1073, i32 0, i64 0
  store i32* %235, i32** %234, !tbaa !5
  %236 = getelementptr inbounds i32*, i32** %234, i64 1
  %237 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1073, i32 0, i64 0
  store i32* %237, i32** %236, !tbaa !5
  %238 = getelementptr inbounds i32*, i32** %236, i64 1
  store i32* @g_933, i32** %238, !tbaa !5
  %239 = getelementptr inbounds i32*, i32** %238, i64 1
  %240 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1073, i32 0, i64 0
  store i32* %240, i32** %239, !tbaa !5
  %241 = getelementptr inbounds i32*, i32** %239, i64 1
  %242 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1073, i32 0, i64 0
  store i32* %242, i32** %241, !tbaa !5
  %243 = getelementptr inbounds i32*, i32** %241, i64 1
  store i32* @g_933, i32** %243, !tbaa !5
  %244 = getelementptr inbounds i32*, i32** %243, i64 1
  %245 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1073, i32 0, i64 0
  store i32* %245, i32** %244, !tbaa !5
  %246 = bitcast i32* %l_1139 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %246) #1
  store i32 1047601284, i32* %l_1139, align 4, !tbaa !1
  %247 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %247) #1
  %248 = load i32, i32* %l_1139, align 4, !tbaa !1
  %249 = add i32 %248, -1
  store i32 %249, i32* %l_1139, align 4, !tbaa !1
  %250 = load i32**, i32*** %l_1148, align 8, !tbaa !5
  %251 = icmp ne i32** null, %250
  %252 = zext i1 %251 to i32
  %253 = load i64, i64* @g_106, align 8, !tbaa !7
  %254 = getelementptr inbounds [5 x i32], [5 x i32]* %l_1122, i32 0, i64 %253
  %255 = load i32, i32* %254, align 4, !tbaa !1
  %256 = and i32 %252, %255
  %257 = trunc i32 %256 to i8
  %258 = load i64, i64* @g_106, align 8, !tbaa !7
  %259 = getelementptr inbounds [5 x i32], [5 x i32]* %l_1122, i32 0, i64 %258
  %260 = load i32, i32* %259, align 4, !tbaa !1
  %261 = load i32, i32* %2, align 4, !tbaa !1
  %262 = trunc i32 %261 to i8
  %263 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %257, i8 signext %262)
  %264 = sext i8 %263 to i32
  %265 = load i32**, i32*** %l_972, align 8, !tbaa !5
  %266 = load i32*, i32** %265, align 8, !tbaa !5
  %267 = load i32, i32* %266, align 4, !tbaa !1
  %268 = or i32 %264, %267
  %269 = trunc i32 %268 to i16
  %270 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %269, i16 signext 0)
  %271 = sext i16 %270 to i32
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

; <label>:273                                     ; preds = %229
  %274 = load i32**, i32*** %l_972, align 8, !tbaa !5
  %275 = load i32*, i32** %274, align 8, !tbaa !5
  %276 = load i32, i32* %275, align 4, !tbaa !1
  %277 = icmp ne i32 %276, 0
  br label %278

; <label>:278                                     ; preds = %273, %229
  %279 = phi i1 [ false, %229 ], [ %277, %273 ]
  %280 = zext i1 %279 to i32
  %281 = trunc i32 %280 to i8
  store i8 0, i8* @g_125, align 1, !tbaa !9
  %282 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %281, i8 signext 0)
  %283 = load volatile i32**, i32*** @g_704, align 8, !tbaa !5
  %284 = load i32*, i32** %283, align 8, !tbaa !5
  store i32* %284, i32** %3, align 8, !tbaa !5
  %285 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #1
  %286 = bitcast i32* %l_1139 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #1
  %287 = bitcast [8 x i32*]* %l_1135 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %287) #1
  %288 = bitcast i32** %l_1134 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %288) #1
  br label %289

; <label>:289                                     ; preds = %278
  %290 = load i64, i64* @g_106, align 8, !tbaa !7
  %291 = add i64 %290, 1
  store i64 %291, i64* @g_106, align 8, !tbaa !7
  br label %226

; <label>:292                                     ; preds = %226
  store i32 0, i32* %4
  br label %293

; <label>:293                                     ; preds = %292, %215
  %294 = bitcast i32* %k7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32*** %l_1148 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #1
  %298 = bitcast [3 x [3 x [6 x i32]]]* %l_1138 to i8*
  call void @llvm.lifetime.end(i64 216, i8* %298) #1
  %299 = bitcast i32* %l_1137 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1136) #1
  %cleanup.dest = load i32, i32* %4
  switch i32 %cleanup.dest, label %308 [
    i32 0, label %300
  ]

; <label>:300                                     ; preds = %293
  br label %301

; <label>:301                                     ; preds = %300
  %302 = load i16, i16* @g_512, align 2, !tbaa !10
  %303 = add i16 %302, 1
  store i16 %303, i16* @g_512, align 2, !tbaa !10
  br label %180

; <label>:304                                     ; preds = %180
  %305 = load i16**, i16*** @g_218, align 8, !tbaa !5
  %306 = load i16*, i16** %305, align 8, !tbaa !5
  %307 = load i16, i16* %306, align 2, !tbaa !10
  store i16 %307, i16* %1
  store i32 1, i32* %4
  br label %308

; <label>:308                                     ; preds = %304, %293
  %309 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #1
  %311 = bitcast i16**** %l_1127 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = bitcast [5 x i32]* %l_1122 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %312) #1
  %313 = bitcast i32***** %l_1091 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %313) #1
  %314 = bitcast [1 x i32***]* %l_1092 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #1
  %315 = bitcast [6 x i32]* %l_1073 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %315) #1
  %316 = bitcast i64** %l_1060 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #1
  %317 = bitcast i64** %l_1019 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #1
  %318 = bitcast [1 x i32]* %l_998 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast i32*** %l_972 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %319) #1
  %320 = bitcast i16** %l_904 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %320) #1
  %321 = bitcast [7 x [2 x i8]]* %l_144 to i8*
  call void @llvm.lifetime.end(i64 14, i8* %321) #1
  %322 = bitcast [3 x i16]* %l_34 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %322) #1
  %323 = load i16, i16* %1
  ret i16 %323
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_add_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %2, align 8, !tbaa !7
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i64, i64* %1, align 8, !tbaa !7
  %10 = load i64, i64* %2, align 8, !tbaa !7
  %11 = sub nsw i64 9223372036854775807, %10
  %12 = icmp sgt i64 %9, %11
  br i1 %12, label %24, label %13

; <label>:13                                      ; preds = %8, %5, %0
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %26

; <label>:16                                      ; preds = %13
  %17 = load i64, i64* %2, align 8, !tbaa !7
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i64, i64* %1, align 8, !tbaa !7
  %21 = load i64, i64* %2, align 8, !tbaa !7
  %22 = sub nsw i64 -9223372036854775808, %21
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %19, %8
  %25 = load i64, i64* %1, align 8, !tbaa !7
  br label %30

; <label>:26                                      ; preds = %19, %16, %13
  %27 = load i64, i64* %1, align 8, !tbaa !7
  %28 = load i64, i64* %2, align 8, !tbaa !7
  %29 = add nsw i64 %27, %28
  br label %30

; <label>:30                                      ; preds = %26, %24
  %31 = phi i64 [ %25, %24 ], [ %29, %26 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_mod_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %2, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i16, i16* %1, align 2, !tbaa !10
  %8 = sext i16 %7 to i32
  %9 = icmp eq i32 %8, -32768
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i16, i16* %2, align 2, !tbaa !10
  %12 = sext i16 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i16, i16* %1, align 2, !tbaa !10
  %16 = sext i16 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i16, i16* %1, align 2, !tbaa !10
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* %2, align 2, !tbaa !10
  %21 = sext i16 %20 to i32
  %22 = srem i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_sub_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4, !tbaa !1
  store i32 %si2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = load i32, i32* %2, align 4, !tbaa !1
  %5 = xor i32 %3, %4
  %6 = load i32, i32* %1, align 4, !tbaa !1
  %7 = load i32, i32* %1, align 4, !tbaa !1
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = xor i32 %7, %8
  %10 = and i32 %9, -2147483648
  %11 = xor i32 %6, %10
  %12 = load i32, i32* %2, align 4, !tbaa !1
  %13 = sub nsw i32 %11, %12
  %14 = load i32, i32* %2, align 4, !tbaa !1
  %15 = xor i32 %13, %14
  %16 = and i32 %5, %15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %0
  %19 = load i32, i32* %1, align 4, !tbaa !1
  br label %24

; <label>:20                                      ; preds = %0
  %21 = load i32, i32* %1, align 4, !tbaa !1
  %22 = load i32, i32* %2, align 4, !tbaa !1
  %23 = sub nsw i32 %21, %22
  br label %24

; <label>:24                                      ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_add_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = load i32, i32* %2, align 4, !tbaa !1
  %5 = add i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %ui) #0 {
  %1 = alloca i8, align 1
  store i8 %ui, i8* %1, align 1, !tbaa !9
  %2 = load i8, i8* %1, align 1, !tbaa !9
  %3 = zext i8 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_sub_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = sext i8 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load i16, i16* %1, align 2, !tbaa !10
  %7 = zext i16 %6 to i32
  br label %13

; <label>:8                                       ; preds = %0
  %9 = load i16, i16* %1, align 2, !tbaa !10
  %10 = zext i16 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 %10, %11
  br label %13

; <label>:13                                      ; preds = %8, %5
  %14 = phi i32 [ %7, %5 ], [ %12, %8 ]
  %15 = trunc i32 %14 to i16
  ret i16 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_mod_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4, !tbaa !1
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %1, align 4, !tbaa !1
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = urem i32 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_div_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %1, align 8, !tbaa !7
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %1, align 8, !tbaa !7
  %9 = load i64, i64* %2, align 8, !tbaa !7
  %10 = udiv i64 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i64 [ %6, %5 ], [ %10, %7 ]
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_add_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = load i64, i64* %2, align 8, !tbaa !7
  %5 = add i64 %3, %4
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = zext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
