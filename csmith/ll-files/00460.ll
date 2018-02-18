; ModuleID = '00460.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_30 = internal global i16 -4, align 2
@.str.1 = private unnamed_addr constant [5 x i8] c"g_30\00", align 1
@g_47 = internal global [5 x [6 x [5 x i64]]] [[6 x [5 x i64]] [[5 x i64] [i64 -5, i64 -3948025948488612682, i64 -3948025948488612682, i64 -5, i64 0], [5 x i64] [i64 1, i64 7753438290575260572, i64 -1, i64 -1, i64 7753438290575260572], [5 x i64] [i64 0, i64 -3948025948488612682, i64 -1014578368981065735, i64 -4117785578371972036, i64 -4117785578371972036], [5 x i64] [i64 1, i64 -4, i64 1, i64 -1, i64 -5764566839987886933], [5 x i64] [i64 -5307821189206921914, i64 -5, i64 -4117785578371972036, i64 -5, i64 -5307821189206921914], [5 x i64] [i64 1, i64 1, i64 -4, i64 7753438290575260572, i64 -4]], [6 x [5 x i64]] [[5 x i64] [i64 0, i64 0, i64 -4117785578371972036, i64 -5307821189206921914, i64 7], [5 x i64] [i64 1, i64 1, i64 1, i64 1, i64 -4], [5 x i64] [i64 -5, i64 -5307821189206921914, i64 -1014578368981065735, i64 -1014578368981065735, i64 -5307821189206921914], [5 x i64] [i64 -4, i64 7753438290575260572, i64 -5764566839987886933, i64 -4, i64 -4], [5 x i64] [i64 -5307821189206921914, i64 7, i64 -5307821189206921914, i64 -4117785578371972036, i64 0], [5 x i64] [i64 -1, i64 1, i64 -4, i64 1, i64 -1]], [6 x [5 x i64]] [[5 x i64] [i64 -5307821189206921914, i64 -3948025948488612682, i64 7, i64 -1014578368981065735, i64 7], [5 x i64] [i64 -10, i64 -10, i64 -4, i64 -1, i64 1], [5 x i64] [i64 -3948025948488612682, i64 -5307821189206921914, i64 -5307821189206921914, i64 -3948025948488612682, i64 7], [5 x i64] [i64 1, i64 -1, i64 -5764566839987886933, i64 -5764566839987886933, i64 -1], [5 x i64] [i64 7, i64 -5307821189206921914, i64 -4117785578371972036, i64 0, i64 0], [5 x i64] [i64 7753438290575260572, i64 -10, i64 7753438290575260572, i64 -5764566839987886933, i64 -4]], [6 x [5 x i64]] [[5 x i64] [i64 -1014578368981065735, i64 -3948025948488612682, i64 0, i64 -3948025948488612682, i64 -1014578368981065735], [5 x i64] [i64 7753438290575260572, i64 1, i64 -10, i64 -1, i64 -10], [5 x i64] [i64 7, i64 7, i64 0, i64 -1014578368981065735, i64 -5], [5 x i64] [i64 1, i64 7753438290575260572, i64 7753438290575260572, i64 1, i64 -10], [5 x i64] [i64 -3948025948488612682, i64 -1014578368981065735, i64 -4117785578371972036, i64 -4117785578371972036, i64 -1014578368981065735], [5 x i64] [i64 -10, i64 7753438290575260572, i64 -5764566839987886933, i64 -4, i64 -4]], [6 x [5 x i64]] [[5 x i64] [i64 -5307821189206921914, i64 7, i64 -5307821189206921914, i64 -4117785578371972036, i64 0], [5 x i64] [i64 -1, i64 1, i64 -4, i64 1, i64 -1], [5 x i64] [i64 -5307821189206921914, i64 -3948025948488612682, i64 7, i64 -1014578368981065735, i64 7], [5 x i64] [i64 -10, i64 -10, i64 -4, i64 -1, i64 1], [5 x i64] [i64 -3948025948488612682, i64 -5307821189206921914, i64 -5307821189206921914, i64 -3948025948488612682, i64 7], [5 x i64] [i64 1, i64 -1, i64 -5764566839987886933, i64 -5764566839987886933, i64 -1]]], align 16
@.str.2 = private unnamed_addr constant [14 x i8] c"g_47[i][j][k]\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_52 = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_52\00", align 1
@g_96 = internal global [1 x i32] [i32 129196674], align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"g_96[i]\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_113 = internal global i32 1, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"g_113\00", align 1
@g_121 = internal global i32 -1, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"g_121\00", align 1
@g_123 = internal global i32 1, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"g_123\00", align 1
@g_154 = internal global [5 x [8 x i64]] [[8 x i64] [i64 -3, i64 0, i64 1, i64 1, i64 1, i64 0, i64 -3, i64 -3], [8 x i64] [i64 0, i64 1, i64 3332230077850831096, i64 3332230077850831096, i64 1, i64 0, i64 -5, i64 0], [8 x i64] [i64 1, i64 0, i64 -5, i64 0, i64 1, i64 3332230077850831096, i64 3332230077850831096, i64 1], [8 x i64] [i64 0, i64 -3, i64 -3, i64 0, i64 1, i64 1, i64 1, i64 0], [8 x i64] [i64 -3, i64 1, i64 -3, i64 3332230077850831096, i64 -5, i64 -5, i64 3332230077850831096, i64 -3]], align 16
@.str.10 = private unnamed_addr constant [12 x i8] c"g_154[i][j]\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_158 = internal global i16 0, align 2
@.str.12 = private unnamed_addr constant [6 x i8] c"g_158\00", align 1
@g_265 = internal global i16 -12107, align 2
@.str.13 = private unnamed_addr constant [6 x i8] c"g_265\00", align 1
@g_291 = internal global i8 -90, align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"g_291\00", align 1
@g_293 = internal global i16 4, align 2
@.str.15 = private unnamed_addr constant [6 x i8] c"g_293\00", align 1
@g_372 = internal global i32 4, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_372\00", align 1
@g_406 = internal global i32 -1, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"g_406\00", align 1
@g_425 = internal global i8 85, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"g_425\00", align 1
@g_426 = internal global i16 27154, align 2
@.str.19 = private unnamed_addr constant [6 x i8] c"g_426\00", align 1
@g_438 = internal global i64 -1, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"g_438\00", align 1
@g_494 = internal global i8 105, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_494\00", align 1
@g_605 = internal global i16 -18196, align 2
@.str.22 = private unnamed_addr constant [6 x i8] c"g_605\00", align 1
@g_612 = internal constant i16 0, align 2
@.str.23 = private unnamed_addr constant [6 x i8] c"g_612\00", align 1
@g_842 = internal global i64 -6, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"g_842\00", align 1
@g_851 = internal global i64 -9, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_851\00", align 1
@g_856 = internal global i32 -61402305, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_856\00", align 1
@g_857 = internal global [9 x [3 x [7 x i8]]] [[3 x [7 x i8]] [[7 x i8] c"\00\99\03\9D\05\9D\03", [7 x i8] c"\99\99\01\90\BC\96\B8", [7 x i8] c">\03\22>\01\01\90"], [3 x [7 x i8]] [[7 x i8] c"\FF\BC\01\9D\BC\00\22", [7 x i8] c"\B8\85\96\05\05\96\85", [7 x i8] c"\B8\96\FF\01\C1\9A\01"], [3 x [7 x i8]] [[7 x i8] c"\C2\03\EC\9A\22\96\FA", [7 x i8] c"\22\9D\01\01\03\05\01", [7 x i8] c"\01\FA\C1\00\C1\FA\01"], [3 x [7 x i8]] [[7 x i8] c"\FF\FF\01\C1\01+\FA", [7 x i8] c"\FF\00\05\22\9D\01\01", [7 x i8] c"\03\FA\01\03\9A\C2\94"], [3 x [7 x i8]] [[7 x i8] c"\C2\F8\C1\C1\F8\C2\96", [7 x i8] c"\01\22\01\01\FF\01\03", [7 x i8] c"\F8\96\EC\9D\C1+\9D"], [3 x [7 x i8]] [[7 x i8] c"\C2\22\FF\9A\94\FA\FA", [7 x i8] c"\94\F8\01\F8\94\05\FF", [7 x i8] c"\00\FA\9A\FF\C1\96\00"], [3 x [7 x i8]] [[7 x i8] c"\FF\00\96\C1\FF\9A\FA", [7 x i8] c"\00\FF\05\94\F8\01\F8", [7 x i8] c"\94\FA\FA\94\9A\FF\22"], [3 x [7 x i8]] [[7 x i8] c"\C2\9D+\C1\9D\EC\96", [7 x i8] c"\F8\03\01\FF\01\01\22", [7 x i8] c"\01\96\C2\F8\C1\C1\F8"], [3 x [7 x i8]] [[7 x i8] c"\C2\94\C2\9A\03\01\FA", [7 x i8] c"\03\01\01\9D\22\05\00", [7 x i8] c"\FF\FA+\01\C1\01\FF"]], align 16
@.str.27 = private unnamed_addr constant [15 x i8] c"g_857[i][j][k]\00", align 1
@g_885 = internal global i32 -10, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_885\00", align 1
@g_959 = internal global i8 -3, align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"g_959\00", align 1
@g_1283 = internal global i32 9, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"g_1283\00", align 1
@g_1407 = internal global i16 8572, align 2
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1407\00", align 1
@g_1516 = internal global i16 1, align 2
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1516\00", align 1
@g_1724 = internal global i32 2121027330, align 4
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1724\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1738\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1740\00", align 1
@g_1821 = internal global i8 -30, align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1821\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_17 = internal constant [4 x [6 x i8]] [[6 x i8] c"\83A\01\01A\83", [6 x i8] c"b\83qAq\83", [6 x i8] c"qb\01\FF\FF\01", [6 x i8] c"qq\FFAWA"], align 16
@func_1.l_39 = private unnamed_addr constant %union.U0 { i32 -1438740728 }, align 4
@func_1.l_655 = private unnamed_addr constant %union.U0 { i32 -1133421918 }, align 4
@func_1.l_1847 = private unnamed_addr constant [10 x [10 x [2 x i32*]]] [[10 x [2 x i32*]] [[2 x i32*] zeroinitializer, [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* @g_52, i32* @g_52], [2 x i32*] [i32* @g_52, i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* @g_52], [2 x i32*] [i32* @g_52, i32* @g_52], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] zeroinitializer, [2 x i32*] [i32* @g_52, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)]], [10 x [2 x i32*]] [[2 x i32*] [i32* @g_52, i32* null], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* @g_52], [2 x i32*] [i32* @g_52, i32* @g_52], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* @g_52, i32* @g_52], [2 x i32*] [i32* @g_52, i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* null, i32* @g_52]], [10 x [2 x i32*]] [[2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* @g_52], [2 x i32*] zeroinitializer, [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* @g_52, i32* @g_52], [2 x i32*] [i32* @g_52, i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* @g_52], [2 x i32*] [i32* @g_52, i32* @g_52], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] zeroinitializer], [10 x [2 x i32*]] [[2 x i32*] [i32* @g_52, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* @g_52, i32* null], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* @g_52], [2 x i32*] [i32* @g_52, i32* @g_52], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* @g_52, i32* @g_52], [2 x i32*] [i32* @g_52, i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null]], [10 x [2 x i32*]] [[2 x i32*] [i32* null, i32* @g_52], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* @g_52], [2 x i32*] zeroinitializer, [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* @g_52, i32* @g_52], [2 x i32*] [i32* @g_52, i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* @g_52], [2 x i32*] [i32* @g_52, i32* @g_52], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)]], [10 x [2 x i32*]] [[2 x i32*] zeroinitializer, [2 x i32*] [i32* @g_52, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* @g_52, i32* null], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* @g_52], [2 x i32*] [i32* @g_52, i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* @g_52], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)]], [10 x [2 x i32*]] [[2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* @g_52, i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* @g_52], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* @g_52, i32* null]], [10 x [2 x i32*]] [[2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* @g_52], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* @g_52, i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* @g_52]], [10 x [2 x i32*]] [[2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* @g_52, i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* @g_52], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null]], [10 x [2 x i32*]] [[2 x i32*] [i32* @g_52, i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* @g_52], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* null, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* null], [2 x i32*] [i32* @g_52, i32* null], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [2 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)]]], align 16
@g_341 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [8 x i64]]* @g_154 to i8*), i64 88) to i64*), align 8
@g_126 = internal global i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), align 8
@g_1279 = internal global i32**** @g_1280, align 8
@g_1739 = internal global i32* @g_1740, align 8
@func_8.l_1181 = private unnamed_addr constant %union.U0 { i32 -1 }, align 4
@func_8.l_1219 = private unnamed_addr constant [4 x [10 x i32]] [[10 x i32] [i32 -1868095648, i32 -1868095648, i32 -5, i32 -1868095648, i32 -1868095648, i32 -5, i32 -1868095648, i32 -1868095648, i32 -5, i32 -1868095648], [10 x i32] [i32 -1868095648, i32 5, i32 5, i32 -1868095648, i32 5, i32 5, i32 -1868095648, i32 5, i32 5, i32 -1868095648], [10 x i32] [i32 5, i32 -1868095648, i32 5, i32 5, i32 -1868095648, i32 5, i32 5, i32 -1868095648, i32 5, i32 5], [10 x i32] [i32 -1868095648, i32 -1868095648, i32 -5, i32 -1868095648, i32 -1868095648, i32 -5, i32 -1868095648, i32 -1868095648, i32 -5, i32 -1868095648]], align 16
@g_219 = internal global i64* null, align 8
@g_1089 = internal global i32** @g_1090, align 8
@g_824 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), align 8
@g_650 = internal global i32* @g_113, align 8
@func_8.l_1207 = private unnamed_addr constant [9 x i64] [i64 6908322139901062820, i64 3239638885698091357, i64 3239638885698091357, i64 6908322139901062820, i64 3239638885698091357, i64 3239638885698091357, i64 6908322139901062820, i64 3239638885698091357, i64 3239638885698091357], align 16
@func_8.l_1261 = private unnamed_addr constant [10 x i32] [i32 1811567205, i32 1811567205, i32 1811567205, i32 1811567205, i32 1811567205, i32 1811567205, i32 1811567205, i32 1811567205, i32 1811567205, i32 1811567205], align 16
@g_1088 = internal global i32*** @g_1089, align 8
@func_8.l_1425 = private unnamed_addr constant [5 x [4 x i16*]] [[4 x i16*] [i16* @g_30, i16* @g_426, i16* @g_426, i16* @g_426], [4 x i16*] [i16* @g_158, i16* @g_158, i16* @g_30, i16* @g_426], [4 x i16*] [i16* @g_426, i16* @g_426, i16* @g_426, i16* @g_30], [4 x i16*] [i16* @g_426, i16* @g_30, i16* @g_30, i16* @g_426], [4 x i16*] [i16* @g_158, i16* @g_30, i16* @g_426, i16* @g_30]], align 16
@func_8.l_1722 = private unnamed_addr constant [8 x i8] c"\FA\17\17\FA\17\17\FA\17", align 1
@g_333 = internal global i32** @g_334, align 8
@func_8.l_1244 = private unnamed_addr constant %union.U0 { i32 -1812637425 }, align 4
@g_1112 = internal global i16** @g_607, align 8
@g_334 = internal global i32* @g_121, align 8
@g_179 = internal global i32** @g_126, align 8
@g_442 = internal global i32** @g_126, align 8
@func_8.l_1288 = private unnamed_addr constant [4 x [2 x [6 x i64]]] [[2 x [6 x i64]] [[6 x i64] [i64 -2542116688116301626, i64 -6003997066606613841, i64 -1, i64 -2542116688116301626, i64 -2542116688116301626, i64 -1], [6 x i64] [i64 -2542116688116301626, i64 -2542116688116301626, i64 -1, i64 -6003997066606613841, i64 -2542116688116301626, i64 1]], [2 x [6 x i64]] [[6 x i64] [i64 -2542116688116301626, i64 -6003997066606613841, i64 -1, i64 -2542116688116301626, i64 -2542116688116301626, i64 -1], [6 x i64] [i64 -2542116688116301626, i64 -2542116688116301626, i64 -1, i64 -6003997066606613841, i64 -2542116688116301626, i64 1]], [2 x [6 x i64]] [[6 x i64] [i64 -2542116688116301626, i64 -6003997066606613841, i64 -1, i64 -2542116688116301626, i64 -2542116688116301626, i64 -1], [6 x i64] [i64 -2542116688116301626, i64 -2542116688116301626, i64 -1, i64 -6003997066606613841, i64 -2542116688116301626, i64 1]], [2 x [6 x i64]] [[6 x i64] [i64 -2542116688116301626, i64 -6003997066606613841, i64 -1, i64 -2542116688116301626, i64 -2542116688116301626, i64 -1], [6 x i64] [i64 -2542116688116301626, i64 -2542116688116301626, i64 -1, i64 -6003997066606613841, i64 -2542116688116301626, i64 1]]], align 16
@g_468 = internal global i64** @g_219, align 8
@g_1320 = internal global i32** null, align 8
@func_8.l_1335 = private unnamed_addr constant %union.U0 { i32 -1 }, align 4
@func_8.l_1401 = private unnamed_addr constant [7 x [8 x i32]] [[8 x i32] [i32 1, i32 1024827468, i32 -1, i32 1, i32 1, i32 -1, i32 1024827468, i32 1], [8 x i32] [i32 -845180225, i32 1024827468, i32 1162718963, i32 -845180225, i32 1, i32 1162718963, i32 1162718963, i32 1], [8 x i32] [i32 1, i32 1162718963, i32 1162718963, i32 1, i32 -845180225, i32 1162718963, i32 1024827468, i32 -845180225], [8 x i32] [i32 1, i32 1024827468, i32 -1, i32 1, i32 1, i32 -1, i32 1024827468, i32 1], [8 x i32] [i32 -845180225, i32 1024827468, i32 1162718963, i32 -845180225, i32 1, i32 1162718963, i32 1162718963, i32 1], [8 x i32] [i32 1, i32 1162718963, i32 1162718963, i32 1, i32 -845180225, i32 1162718963, i32 1024827468, i32 -845180225], [8 x i32] [i32 1, i32 1024827468, i32 -1, i32 1, i32 1, i32 -1, i32 1024827468, i32 1]], align 16
@func_8.l_1816 = private unnamed_addr constant [3 x [9 x [8 x i16]]] [[9 x [8 x i16]] [[8 x i16] [i16 -9107, i16 -17180, i16 -9107, i16 1, i16 -27524, i16 -5, i16 1, i16 13019], [8 x i16] [i16 -17180, i16 1, i16 -5, i16 -6151, i16 -1, i16 -23129, i16 -27524, i16 1], [8 x i16] [i16 -17180, i16 13019, i16 6264, i16 -27524, i16 -27524, i16 6264, i16 13019, i16 -17180], [8 x i16] [i16 -9107, i16 -5, i16 1, i16 -23129, i16 -17180, i16 -2, i16 -9107, i16 13019], [8 x i16] [i16 -5, i16 -23129, i16 1, i16 -1, i16 -23129, i16 -2, i16 -27524, i16 -2], [8 x i16] [i16 -6151, i16 -5, i16 -10, i16 -5, i16 -6151, i16 6264, i16 -1, i16 -6151], [8 x i16] [i16 -2, i16 13019, i16 -9107, i16 -2, i16 -17180, i16 -23129, i16 1, i16 -5], [8 x i16] [i16 13019, i16 1, i16 -9107, i16 -1, i16 -5, i16 -5, i16 -1, i16 -9107], [8 x i16] [i16 -17180, i16 -17180, i16 -10, i16 -6151, i16 -4, i16 -2671, i16 -27524, i16 -17180]], [9 x [8 x i16]] [[8 x i16] [i16 1, i16 13019, i16 1, i16 -5, i16 -27524, i16 1, i16 -9107, i16 -17180], [8 x i16] [i16 13019, i16 -2, i16 1, i16 -6151, i16 1, i16 14443, i16 -23129, i16 -2671], [8 x i16] [i16 -9107, i16 1, i16 -27524, i16 -5, i16 1, i16 13019, i16 1, i16 -9107], [8 x i16] [i16 6264, i16 -9107, i16 -1, i16 14443, i16 1, i16 -10, i16 -10, i16 1], [8 x i16] [i16 -9107, i16 -2671, i16 -2671, i16 -9107, i16 -7, i16 6264, i16 -1, i16 14443], [8 x i16] [i16 -23129, i16 -1, i16 -6151, i16 -5, i16 1, i16 -17180, i16 -5, i16 -23129], [8 x i16] [i16 -7, i16 -1, i16 -1, i16 6264, i16 -2, i16 6264, i16 -1, i16 -1], [8 x i16] [i16 -1, i16 -2671, i16 -10, i16 1, i16 -1, i16 -10, i16 -23129, i16 -7], [8 x i16] [i16 -23129, i16 -9107, i16 -4, i16 1, i16 -1, i16 13019, i16 -23129, i16 -23129]], [9 x [8 x i16]] [[8 x i16] [i16 14443, i16 1, i16 -10, i16 -10, i16 1, i16 14443, i16 -1, i16 -9107], [8 x i16] [i16 1, i16 14443, i16 -1, i16 -9107, i16 6264, i16 -10, i16 -5, i16 6264], [8 x i16] [i16 -9107, i16 -23129, i16 -6151, i16 -9107, i16 -1, i16 -1, i16 -1, i16 -9107], [8 x i16] [i16 -2671, i16 -1, i16 -2671, i16 -10, i16 1, i16 -1, i16 -10, i16 -23129], [8 x i16] [i16 -1, i16 -7, i16 -1, i16 1, i16 2, i16 6264, i16 1, i16 -7], [8 x i16] [i16 -1, i16 -23129, i16 -27524, i16 1, i16 1, i16 -27524, i16 -23129, i16 -1], [8 x i16] [i16 -2671, i16 -9107, i16 -7, i16 6264, i16 -1, i16 14443, i16 -2671, i16 -23129], [8 x i16] [i16 -9107, i16 6264, i16 -10, i16 -5, i16 6264, i16 14443, i16 1, i16 14443], [8 x i16] [i16 1, i16 -9107, i16 -17180, i16 -9107, i16 1, i16 -27524, i16 -5, i16 1]]], align 16
@g_1090 = internal global i32* @g_406, align 8
@g_500 = internal global [3 x %union.U0] [%union.U0 { i32 -1782849570 }, %union.U0 { i32 -1782849570 }, %union.U0 { i32 -1782849570 }], align 4
@g_607 = internal global i16* null, align 8
@func_11.l_1140 = private unnamed_addr constant [4 x [2 x [3 x i32***]]] [[2 x [3 x i32***]] [[3 x i32***] [i32*** @g_333, i32*** null, i32*** null], [3 x i32***] [i32*** null, i32*** @g_333, i32*** @g_333]], [2 x [3 x i32***]] [[3 x i32***] [i32*** @g_333, i32*** @g_333, i32*** @g_333], [3 x i32***] [i32*** @g_333, i32*** null, i32*** @g_333]], [2 x [3 x i32***]] [[3 x i32***] [i32*** @g_333, i32*** @g_333, i32*** null], [3 x i32***] [i32*** @g_333, i32*** null, i32*** null]], [2 x [3 x i32***]] [[3 x i32***] [i32*** null, i32*** @g_333, i32*** @g_333], [3 x i32***] [i32*** @g_333, i32*** @g_333, i32*** @g_333]]], align 16
@func_11.l_1159 = private unnamed_addr constant [7 x %union.U0] [%union.U0 { i32 -3 }, %union.U0 { i32 -3 }, %union.U0 { i32 -3 }, %union.U0 { i32 -3 }, %union.U0 { i32 -3 }, %union.U0 { i32 -3 }, %union.U0 { i32 -3 }], align 16
@func_20.l_659 = private unnamed_addr constant [6 x i8] c"\06\06\D7\06\06\D7", align 1
@func_20.l_734 = private unnamed_addr constant [7 x [9 x [4 x i32]]] [[9 x [4 x i32]] [[4 x i32] [i32 1571288435, i32 0, i32 1571288435, i32 -3], [4 x i32] [i32 623171859, i32 1734958962, i32 0, i32 1098389735], [4 x i32] [i32 693996413, i32 2, i32 -802310546, i32 1734958962], [4 x i32] [i32 1419211723, i32 -1, i32 -802310546, i32 693996413], [4 x i32] [i32 693996413, i32 -1814301748, i32 0, i32 1899489436], [4 x i32] [i32 623171859, i32 -1667058914, i32 1571288435, i32 1419211723], [4 x i32] [i32 693996413, i32 1419211723, i32 147605809, i32 -528045291], [4 x i32] [i32 -6, i32 1178958547, i32 -1, i32 -1], [4 x i32] [i32 1600456900, i32 1600456900, i32 1896030627, i32 0]], [9 x [4 x i32]] [[4 x i32] [i32 776318314, i32 -1, i32 -1506478049, i32 147605809], [4 x i32] [i32 0, i32 -2, i32 1114026437, i32 -1506478049], [4 x i32] [i32 1896030627, i32 -2, i32 0, i32 147605809], [4 x i32] [i32 -2, i32 -1, i32 1178958547, i32 0], [4 x i32] [i32 -1814301748, i32 1600456900, i32 1633927939, i32 -1], [4 x i32] [i32 1114026437, i32 1178958547, i32 -802310546, i32 -528045291], [4 x i32] [i32 1633927939, i32 1419211723, i32 2116894316, i32 1419211723], [4 x i32] [i32 -1506478049, i32 0, i32 -528045291, i32 -2], [4 x i32] [i32 1098389735, i32 -528045291, i32 1899489436, i32 3]], [9 x [4 x i32]] [[4 x i32] [i32 1419211723, i32 0, i32 -1667058914, i32 -6], [4 x i32] [i32 1419211723, i32 -3, i32 1899489436, i32 1896030627], [4 x i32] [i32 1098389735, i32 -6, i32 -528045291, i32 -1], [4 x i32] [i32 -1506478049, i32 776318314, i32 2116894316, i32 -802310546], [4 x i32] [i32 1633927939, i32 1899489436, i32 -802310546, i32 -1], [4 x i32] [i32 1114026437, i32 1633927939, i32 1633927939, i32 1114026437], [4 x i32] [i32 -1814301748, i32 147605809, i32 1178958547, i32 1734958962], [4 x i32] [i32 -2, i32 623171859, i32 0, i32 -5], [4 x i32] [i32 1896030627, i32 -802310546, i32 1114026437, i32 -5]], [9 x [4 x i32]] [[4 x i32] [i32 0, i32 623171859, i32 -1506478049, i32 1734958962], [4 x i32] [i32 776318314, i32 147605809, i32 1896030627, i32 1114026437], [4 x i32] [i32 1600456900, i32 1633927939, i32 -1, i32 -1], [4 x i32] [i32 -6, i32 1899489436, i32 147605809, i32 -802310546], [4 x i32] [i32 693996413, i32 776318314, i32 693996413, i32 -1], [4 x i32] [i32 2116894316, i32 -6, i32 776318314, i32 1896030627], [4 x i32] [i32 3, i32 -3, i32 -1, i32 -6], [4 x i32] [i32 1178958547, i32 0, i32 -1, i32 3], [4 x i32] [i32 3, i32 -528045291, i32 776318314, i32 -2]], [9 x [4 x i32]] [[4 x i32] [i32 2116894316, i32 0, i32 693996413, i32 1419211723], [4 x i32] [i32 693996413, i32 1419211723, i32 147605809, i32 -528045291], [4 x i32] [i32 -6, i32 1178958547, i32 -1, i32 -1], [4 x i32] [i32 1600456900, i32 1600456900, i32 1896030627, i32 0], [4 x i32] [i32 776318314, i32 -1, i32 -1506478049, i32 147605809], [4 x i32] [i32 0, i32 -2, i32 1114026437, i32 -1506478049], [4 x i32] [i32 1896030627, i32 -2, i32 0, i32 147605809], [4 x i32] [i32 -2, i32 -1, i32 1178958547, i32 0], [4 x i32] [i32 -1814301748, i32 1600456900, i32 1633927939, i32 -1]], [9 x [4 x i32]] [[4 x i32] [i32 1114026437, i32 1178958547, i32 -802310546, i32 -528045291], [4 x i32] [i32 1633927939, i32 1419211723, i32 2116894316, i32 1419211723], [4 x i32] [i32 -1506478049, i32 0, i32 -528045291, i32 -2], [4 x i32] [i32 1098389735, i32 -528045291, i32 1899489436, i32 3], [4 x i32] [i32 1419211723, i32 0, i32 -1667058914, i32 -6], [4 x i32] [i32 1419211723, i32 -3, i32 1899489436, i32 1896030627], [4 x i32] [i32 1098389735, i32 -6, i32 -528045291, i32 -1], [4 x i32] [i32 -1506478049, i32 776318314, i32 2116894316, i32 -802310546], [4 x i32] [i32 1633927939, i32 -2, i32 -1, i32 -1667058914]], [9 x [4 x i32]] [[4 x i32] [i32 1633927939, i32 623171859, i32 623171859, i32 1633927939], [4 x i32] [i32 -528045291, i32 -1814301748, i32 -1, i32 -6], [4 x i32] [i32 -802310546, i32 2116894316, i32 776318314, i32 -1506478049], [4 x i32] [i32 1600456900, i32 -1, i32 1633927939, i32 -1506478049], [4 x i32] [i32 1098389735, i32 2116894316, i32 2, i32 -6], [4 x i32] [i32 1114026437, i32 -1814301748, i32 1600456900, i32 1633927939], [4 x i32] [i32 1571288435, i32 623171859, i32 147605809, i32 -1667058914], [4 x i32] [i32 1419211723, i32 -2, i32 -1814301748, i32 -1], [4 x i32] [i32 3, i32 1114026437, i32 3, i32 0]]], align 16
@func_20.l_913 = internal constant [1 x [9 x [2 x i32]]] [[9 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 1796782726, i32 938778727], [2 x i32] [i32 -2145470795, i32 938778727], [2 x i32] [i32 1796782726, i32 0], [2 x i32] [i32 0, i32 1796782726], [2 x i32] [i32 938778727, i32 -2145470795], [2 x i32] [i32 938778727, i32 1796782726], [2 x i32] zeroinitializer, [2 x i32] [i32 1796782726, i32 938778727]]], align 16
@func_20.l_940 = private unnamed_addr constant [3 x %union.U0] [%union.U0 { i32 109903952 }, %union.U0 { i32 109903952 }, %union.U0 { i32 109903952 }], align 4
@func_20.l_1053 = private unnamed_addr constant [10 x [3 x [6 x i32]]] [[3 x [6 x i32]] [[6 x i32] [i32 -1, i32 1, i32 0, i32 -1045379547, i32 24435049, i32 -1045379547], [6 x i32] [i32 -56149349, i32 9, i32 -56149349, i32 1475759457, i32 0, i32 2010529448], [6 x i32] [i32 1, i32 -4, i32 -1662700329, i32 -9, i32 1, i32 1466454037]], [3 x [6 x i32]] [[6 x i32] [i32 1, i32 3, i32 7, i32 -9, i32 1217304078, i32 1475759457], [6 x i32] [i32 1, i32 1, i32 404479722, i32 1475759457, i32 1466454037, i32 1], [6 x i32] [i32 -56149349, i32 0, i32 1, i32 -1045379547, i32 9, i32 432737959]], [3 x [6 x i32]] [[6 x i32] [i32 -1, i32 1, i32 1226919380, i32 0, i32 0, i32 1226919380], [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1338938780, i32 1466454037], [6 x i32] [i32 -1662700329, i32 9, i32 196453685, i32 404479722, i32 732219888, i32 0]], [3 x [6 x i32]] [[6 x i32] [i32 1, i32 -1662700329, i32 196453685, i32 0, i32 0, i32 1466454037], [6 x i32] [i32 -1045379547, i32 0, i32 0, i32 432737959, i32 1217304078, i32 1226919380], [6 x i32] [i32 432737959, i32 1217304078, i32 1226919380, i32 1475759457, i32 1, i32 432737959]], [3 x [6 x i32]] [[6 x i32] [i32 -4, i32 1, i32 1, i32 0, i32 1, i32 1], [6 x i32] [i32 1, i32 1, i32 404479722, i32 7, i32 732219888, i32 1475759457], [6 x i32] [i32 0, i32 1, i32 7, i32 1, i32 -2, i32 1466454037]], [3 x [6 x i32]] [[6 x i32] [i32 -56149349, i32 1, i32 -1662700329, i32 1226919380, i32 732219888, i32 2010529448], [6 x i32] [i32 432737959, i32 1, i32 -56149349, i32 0, i32 1, i32 -1045379547], [6 x i32] [i32 1466454037, i32 1, i32 0, i32 -9, i32 1, i32 784376483]], [3 x [6 x i32]] [[6 x i32] [i32 0, i32 1217304078, i32 404479722, i32 404479722, i32 1217304078, i32 0], [6 x i32] [i32 -4, i32 0, i32 -844986591, i32 1, i32 0, i32 1], [6 x i32] [i32 -1, i32 -1662700329, i32 1475759457, i32 2010529448, i32 732219888, i32 1226919380]], [3 x [6 x i32]] [[6 x i32] [i32 -1, i32 9, i32 2010529448, i32 1, i32 1338938780, i32 404479722], [6 x i32] [i32 1, i32 1338938780, i32 -1045379547, i32 732219888, i32 -1, i32 1], [6 x i32] [i32 -56149349, i32 1466454037, i32 1217304078, i32 1, i32 -2, i32 1226919380]], [3 x [6 x i32]] [[6 x i32] [i32 1475759457, i32 -56149349, i32 9, i32 -56149349, i32 1475759457, i32 0], [6 x i32] [i32 196453685, i32 1226919380, i32 2010529448, i32 7, i32 784376483, i32 196453685], [6 x i32] [i32 0, i32 -4, i32 -1961831351, i32 1226919380, i32 -687078596, i32 196453685]], [3 x [6 x i32]] [[6 x i32] [i32 1338938780, i32 1, i32 2010529448, i32 9, i32 -1, i32 0], [6 x i32] [i32 -687078596, i32 -2, i32 9, i32 1922736292, i32 1, i32 1226919380], [6 x i32] [i32 1, i32 -687078596, i32 1217304078, i32 2010529448, i32 1, i32 1]]], align 16
@func_20.l_697 = private unnamed_addr constant [5 x [4 x [7 x i32*]]] [[4 x [7 x i32*]] [[7 x i32*] [i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* @g_372, i32* @g_372, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null], [7 x i32*] [i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null, i32* @g_372, i32* @g_372, i32* null], [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* @g_372, i32* null, i32* null, i32* null], [7 x i32*] [i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* @g_372]], [4 x [7 x i32*]] [[7 x i32*] [i32* @g_372, i32* null, i32* @g_372, i32* @g_372, i32* @g_372, i32* null, i32* @g_372], [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* @g_372, i32* null, i32* @g_372, i32* @g_372, i32* @g_372, i32* null], [7 x i32*] [i32* @g_372, i32* @g_372, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null], [7 x i32*] [i32* null, i32* null, i32* null, i32* null, i32* @g_372, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null]], [4 x [7 x i32*]] [[7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null, i32* @g_372, i32* @g_372, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null], [7 x i32*] [i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* @g_372, i32* @g_372, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null], [7 x i32*] [i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null, i32* @g_372, i32* @g_372, i32* null], [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* @g_372, i32* null, i32* null, i32* null]], [4 x [7 x i32*]] [[7 x i32*] [i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* @g_372], [7 x i32*] [i32* @g_372, i32* null, i32* @g_372, i32* @g_372, i32* @g_372, i32* null, i32* @g_372], [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* @g_372, i32* null, i32* @g_372, i32* @g_372, i32* @g_372, i32* null], [7 x i32*] [i32* @g_372, i32* @g_372, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null]], [4 x [7 x i32*]] [[7 x i32*] [i32* null, i32* null, i32* null, i32* null, i32* @g_372, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null], [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null, i32* @g_372, i32* @g_372, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null], [7 x i32*] [i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* @g_372, i32* @g_372, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null], [7 x i32*] [i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to i32*), i32* null, i32* @g_372, i32* @g_372, i32* null]]], align 16
@func_20.l_698 = private unnamed_addr constant [10 x i32] [i32 858728855, i32 1279389215, i32 858728855, i32 -2, i32 0, i32 -2, i32 858728855, i32 858728855, i32 -2, i32 0], align 16
@func_20.l_741 = private unnamed_addr constant [6 x i32] [i32 1578002589, i32 1578002589, i32 -1107222356, i32 1578002589, i32 1578002589, i32 -1107222356], align 16
@func_20.l_880 = private unnamed_addr constant [7 x i32***] [i32*** @g_333, i32*** @g_333, i32*** @g_333, i32*** @g_333, i32*** @g_333, i32*** @g_333, i32*** @g_333], align 16
@g_565 = internal global %union.U0** @g_566, align 8
@g_939 = internal global i64*** null, align 8
@func_20.l_974 = private unnamed_addr constant [8 x i16**] [i16** @g_607, i16** @g_607, i16** @g_607, i16** @g_607, i16** @g_607, i16** @g_607, i16** @g_607, i16** @g_607], align 16
@g_251 = internal global i8* null, align 8
@g_627 = internal constant i32* @g_52, align 8
@func_20.l_1000 = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1953948715, i32 1485196471, i32 1953948715], [3 x i32] [i32 8, i32 8, i32 8], [3 x i32] [i32 1953948715, i32 1485196471, i32 1953948715]], align 16
@func_20.l_1052 = private unnamed_addr constant [6 x i32] [i32 1, i32 -1984744143, i32 -1984744143, i32 1, i32 -1984744143, i32 -1984744143], align 16
@g_1087 = internal global i32**** @g_1088, align 8
@func_20.l_1042 = private unnamed_addr constant [8 x i16*] [i16* @g_426, i16* @g_426, i16* @g_426, i16* @g_426, i16* @g_426, i16* @g_426, i16* @g_426, i16* @g_426], align 16
@func_20.l_1055 = private unnamed_addr constant [2 x [9 x i32]] [[9 x i32] [i32 -1, i32 370041872, i32 0, i32 5, i32 5, i32 0, i32 370041872, i32 -1, i32 0], [9 x i32] [i32 -1, i32 370041872, i32 0, i32 5, i32 5, i32 0, i32 370041872, i32 -1, i32 0]], align 16
@g_1044 = internal global %union.U0** @g_566, align 8
@func_20.l_1049 = private unnamed_addr constant [10 x i32] [i32 -1544492474, i32 -1544492474, i32 -1544492474, i32 -1544492474, i32 -1544492474, i32 -1544492474, i32 -1544492474, i32 -1544492474, i32 -1544492474, i32 -1544492474], align 16
@g_1083 = internal global [8 x i32****] [i32**** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [9 x [3 x i32***]]]* @g_1084 to i8*), i64 320) to i32****), i32**** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [9 x [3 x i32***]]]* @g_1084 to i8*), i64 320) to i32****), i32**** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [9 x [3 x i32***]]]* @g_1084 to i8*), i64 320) to i32****), i32**** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [9 x [3 x i32***]]]* @g_1084 to i8*), i64 320) to i32****), i32**** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [9 x [3 x i32***]]]* @g_1084 to i8*), i64 320) to i32****), i32**** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [9 x [3 x i32***]]]* @g_1084 to i8*), i64 320) to i32****), i32**** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [9 x [3 x i32***]]]* @g_1084 to i8*), i64 320) to i32****), i32**** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [9 x [3 x i32***]]]* @g_1084 to i8*), i64 320) to i32****)], align 16
@g_1110 = internal global i16**** @g_1111, align 8
@func_20.l_1139 = private unnamed_addr constant [9 x i32] [i32 -945469396, i32 -1, i32 -1, i32 -945469396, i32 -1, i32 -1, i32 -945469396, i32 -1, i32 -1], align 16
@g_566 = internal global %union.U0* getelementptr inbounds ([3 x %union.U0], [3 x %union.U0]* @g_500, i32 0, i32 0), align 8
@g_1084 = internal global [8 x [9 x [3 x i32***]]] [[9 x [3 x i32***]] [[3 x i32***] [i32*** @g_1085, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** null, i32*** null], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** null, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085]], [9 x [3 x i32***]] [[3 x i32***] [i32*** @g_1085, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** null, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** null, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** null]], [9 x [3 x i32***]] [[3 x i32***] [i32*** @g_1085, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** null, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** null, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085]], [9 x [3 x i32***]] [[3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** null, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** null, i32*** @g_1085, i32*** @g_1085]], [9 x [3 x i32***]] [[3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** null], [3 x i32***] [i32*** @g_1085, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** null, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** null, i32*** @g_1085, i32*** @g_1085]], [9 x [3 x i32***]] [[3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** null, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085]], [9 x [3 x i32***]] [[3 x i32***] [i32*** null, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** null], [3 x i32***] [i32*** @g_1085, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** null, i32*** null, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085]], [9 x [3 x i32***]] [[3 x i32***] [i32*** null, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** null, i32*** @g_1085, i32*** @g_1085], [3 x i32***] [i32*** @g_1085, i32*** @g_1085, i32*** @g_1085]]], align 16
@g_1085 = internal global i32** @g_1086, align 8
@g_1086 = internal global i32* @g_856, align 8
@g_1111 = internal global i16*** @g_1112, align 8
@func_31.l_581 = internal constant [8 x [3 x i64**]] [[3 x i64**] [i64** @g_219, i64** @g_219, i64** @g_219], [3 x i64**] [i64** @g_219, i64** @g_219, i64** @g_219], [3 x i64**] [i64** @g_219, i64** @g_219, i64** @g_219], [3 x i64**] [i64** @g_219, i64** @g_219, i64** @g_219], [3 x i64**] [i64** @g_219, i64** @g_219, i64** @g_219], [3 x i64**] [i64** @g_219, i64** @g_219, i64** @g_219], [3 x i64**] [i64** @g_219, i64** @g_219, i64** @g_219], [3 x i64**] [i64** @g_219, i64** @g_219, i64** @g_219]], align 16
@func_31.l_585 = private unnamed_addr constant [3 x [3 x [6 x i16*]]] [[3 x [6 x i16*]] [[6 x i16*] [i16* null, i16* @g_158, i16* null, i16* @g_265, i16* @g_30, i16* @g_30], [6 x i16*] [i16* null, i16* null, i16* null, i16* null, i16* @g_158, i16* @g_265], [6 x i16*] [i16* @g_265, i16* null, i16* @g_30, i16* null, i16* @g_265, i16* @g_265]], [3 x [6 x i16*]] [[6 x i16*] [i16* null, i16* @g_265, i16* @g_265, i16* @g_265, i16* @g_265, i16* null], [6 x i16*] [i16* null, i16* null, i16* @g_158, i16* @g_265, i16* @g_158, i16* null], [6 x i16*] [i16* @g_158, i16* null, i16* @g_265, i16* @g_30, i16* @g_30, i16* @g_265]], [3 x [6 x i16*]] [[6 x i16*] [i16* @g_158, i16* @g_158, i16* @g_30, i16* @g_265, i16* @g_158, i16* @g_265], [6 x i16*] [i16* null, i16* @g_158, i16* null, i16* @g_265, i16* @g_30, i16* @g_30], [6 x i16*] [i16* null, i16* null, i16* null, i16* null, i16* @g_158, i16* @g_265]]], align 16
@func_31.l_631 = private unnamed_addr constant %union.U0 { i32 -1 }, align 4
@func_31.l_634 = internal constant [10 x i32***] [i32*** @g_333, i32*** null, i32*** null, i32*** @g_333, i32*** null, i32*** null, i32*** @g_333, i32*** null, i32*** null, i32*** @g_333], align 16
@func_31.l_636 = private unnamed_addr constant [6 x [7 x i32***]] [[7 x i32***] [i32*** @g_333, i32*** null, i32*** null, i32*** @g_333, i32*** @g_333, i32*** @g_333, i32*** null], [7 x i32***] [i32*** @g_333, i32*** @g_333, i32*** @g_333, i32*** null, i32*** @g_333, i32*** @g_333, i32*** @g_333], [7 x i32***] [i32*** @g_333, i32*** null, i32*** null, i32*** null, i32*** @g_333, i32*** @g_333, i32*** null], [7 x i32***] [i32*** @g_333, i32*** null, i32*** @g_333, i32*** @g_333, i32*** @g_333, i32*** @g_333, i32*** null], [7 x i32***] [i32*** null, i32*** @g_333, i32*** null, i32*** null, i32*** @g_333, i32*** null, i32*** @g_333], [7 x i32***] [i32*** @g_333, i32*** @g_333, i32*** @g_333, i32*** null, i32*** @g_333, i32*** null, i32*** @g_333]], align 16
@func_31.l_582 = private unnamed_addr constant %union.U0 { i32 -1 }, align 4
@func_31.l_586 = private unnamed_addr constant [4 x [5 x [2 x i32]]] [[5 x [2 x i32]] [[2 x i32] [i32 2, i32 2], [2 x i32] [i32 1, i32 -85612061], [2 x i32] [i32 1003897777, i32 -85612061], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 1]], [5 x [2 x i32]] [[2 x i32] [i32 -85612061, i32 1003897777], [2 x i32] [i32 -85612061, i32 1], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 1, i32 -85612061], [2 x i32] [i32 1003897777, i32 -85612061]], [5 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 -85612061, i32 1003897777], [2 x i32] [i32 -85612061, i32 1], [2 x i32] [i32 2, i32 2]], [5 x [2 x i32]] [[2 x i32] [i32 1, i32 -85612061], [2 x i32] [i32 1003897777, i32 -85612061], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 -85612061, i32 1003897777]]], align 16
@func_31.l_622 = private unnamed_addr constant %union.U0 { i32 -1259794563 }, align 4
@func_31.l_624 = private unnamed_addr constant [7 x i32] [i32 2054351588, i32 2054351588, i32 2054351588, i32 2054351588, i32 2054351588, i32 2054351588, i32 2054351588], align 16
@func_35.l_571 = private unnamed_addr constant [9 x [3 x [8 x %union.U0]]] [[3 x [8 x %union.U0]] [[8 x %union.U0] [%union.U0 { i32 -9 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -9 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -9 }, %union.U0 { i32 -1637048629 }], [8 x %union.U0] [%union.U0 { i32 -5 }, %union.U0 { i32 -5 }, %union.U0 { i32 1 }, %union.U0 { i32 98178431 }, %union.U0 { i32 -9 }, %union.U0 { i32 1 }, %union.U0 { i32 -9 }, %union.U0 { i32 98178431 }], [8 x %union.U0] [%union.U0 { i32 -1637048629 }, %union.U0 { i32 98178431 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -1 }, %union.U0 { i32 98178431 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 98178431 }]], [3 x [8 x %union.U0]] [[8 x %union.U0] [%union.U0 { i32 98178431 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 98178431 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 98178431 }, %union.U0 { i32 -1637048629 }], [8 x %union.U0] [%union.U0 { i32 98178431 }, %union.U0 { i32 -9 }, %union.U0 { i32 1 }, %union.U0 { i32 -9 }, %union.U0 { i32 98178431 }, %union.U0 { i32 1 }, %union.U0 { i32 -5 }, %union.U0 { i32 -5 }], [8 x %union.U0] [%union.U0 { i32 -1637048629 }, %union.U0 { i32 -9 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -9 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -9 }]], [3 x [8 x %union.U0]] [[8 x %union.U0] [%union.U0 { i32 -5 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -1 }, %union.U0 { i32 -5 }, %union.U0 { i32 -1 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -5 }, %union.U0 { i32 -1637048629 }], [8 x %union.U0] [%union.U0 { i32 -9 }, %union.U0 { i32 98178431 }, %union.U0 { i32 1 }, %union.U0 { i32 -5 }, %union.U0 { i32 -5 }, %union.U0 { i32 1 }, %union.U0 { i32 98178431 }, %union.U0 { i32 -9 }], [8 x %union.U0] [%union.U0 { i32 -1637048629 }, %union.U0 { i32 -5 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -1 }, %union.U0 { i32 1 }, %union.U0 { i32 -1637048629 }]], [3 x [8 x %union.U0]] [[8 x %union.U0] [%union.U0 { i32 -1 }, %union.U0 { i32 1 }, %union.U0 { i32 1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 1 }], [8 x %union.U0] [%union.U0 { i32 -1637048629 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -5 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -1 }, %union.U0 { i32 -5 }, %union.U0 { i32 -1 }, %union.U0 { i32 1464196351 }], [8 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 1 }, %union.U0 { i32 -1 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 1 }, %union.U0 { i32 1 }, %union.U0 { i32 1464196351 }]], [3 x [8 x %union.U0]] [[8 x %union.U0] [%union.U0 { i32 1464196351 }, %union.U0 { i32 1 }, %union.U0 { i32 1 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -1 }, %union.U0 { i32 1 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 1 }], [8 x %union.U0] [%union.U0 { i32 1464196351 }, %union.U0 { i32 -1 }, %union.U0 { i32 -5 }, %union.U0 { i32 -1 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -5 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -1637048629 }], [8 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 1 }, %union.U0 { i32 1 }, %union.U0 { i32 -1 }]], [3 x [8 x %union.U0]] [[8 x %union.U0] [%union.U0 { i32 -1637048629 }, %union.U0 { i32 1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -1 }, %union.U0 { i32 1 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 1 }], [8 x %union.U0] [%union.U0 { i32 -1 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -5 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -5 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -1 }], [8 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -1 }, %union.U0 { i32 1 }, %union.U0 { i32 -1637048629 }]], [3 x [8 x %union.U0]] [[8 x %union.U0] [%union.U0 { i32 -1 }, %union.U0 { i32 1 }, %union.U0 { i32 1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 1 }], [8 x %union.U0] [%union.U0 { i32 -1637048629 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -5 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -1 }, %union.U0 { i32 -5 }, %union.U0 { i32 -1 }, %union.U0 { i32 1464196351 }], [8 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 1 }, %union.U0 { i32 -1 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 1 }, %union.U0 { i32 1 }, %union.U0 { i32 1464196351 }]], [3 x [8 x %union.U0]] [[8 x %union.U0] [%union.U0 { i32 1464196351 }, %union.U0 { i32 1 }, %union.U0 { i32 1 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -1 }, %union.U0 { i32 1 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 1 }], [8 x %union.U0] [%union.U0 { i32 1464196351 }, %union.U0 { i32 -1 }, %union.U0 { i32 -5 }, %union.U0 { i32 -1 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -5 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -1637048629 }], [8 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 1 }, %union.U0 { i32 1 }, %union.U0 { i32 -1 }]], [3 x [8 x %union.U0]] [[8 x %union.U0] [%union.U0 { i32 -1637048629 }, %union.U0 { i32 1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -1 }, %union.U0 { i32 1 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 1 }], [8 x %union.U0] [%union.U0 { i32 -1 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -5 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -5 }, %union.U0 { i32 1464196351 }, %union.U0 { i32 -1 }], [8 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 1 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1637048629 }, %union.U0 { i32 -1 }, %union.U0 { i32 1 }, %union.U0 { i32 -1637048629 }]]], align 16
@func_35.l_556 = private unnamed_addr constant [5 x i32] [i32 1024327455, i32 1024327455, i32 1024327455, i32 1024327455, i32 1024327455], align 16
@func_35.l_564 = private unnamed_addr constant [10 x %union.U0*] [%union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 4) to %union.U0*), %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 4) to %union.U0*), %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to %union.U0*), %union.U0* null, %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to %union.U0*), %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 4) to %union.U0*), %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 4) to %union.U0*), %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to %union.U0*), %union.U0* null, %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x %union.U0]* @g_500 to i8*), i64 8) to %union.U0*)], align 16
@func_35.l_535 = private unnamed_addr constant [10 x i8] c"\01\01\01\01\01\01\01\01\01\01", align 1
@func_35.l_570 = private unnamed_addr constant %union.U0 { i32 1 }, align 4
@func_40.l_456 = private unnamed_addr constant [8 x %union.U0] [%union.U0 { i32 -241000788 }, %union.U0 { i32 -241000788 }, %union.U0 { i32 -241000788 }, %union.U0 { i32 -241000788 }, %union.U0 { i32 -241000788 }, %union.U0 { i32 -241000788 }, %union.U0 { i32 -241000788 }, %union.U0 { i32 -241000788 }], align 16
@func_40.l_435 = private unnamed_addr constant [7 x i64] [i64 -1, i64 1, i64 1, i64 -1, i64 1, i64 1, i64 -1], align 16
@func_40.l_440 = internal constant [3 x [7 x [9 x i32*]]] [[7 x [9 x i32*]] [[9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)]], [7 x [9 x i32*]] [[9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)]], [7 x [9 x i32*]] [[9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i32 0)]]], align 16
@g_467 = internal global i64*** @g_468, align 8
@g_473 = internal constant i32** @g_84, align 8
@g_428 = internal global [7 x i32**] zeroinitializer, align 16
@g_84 = internal global i32* @g_52, align 8
@g_1280 = internal global i32*** @g_1281, align 8
@g_1281 = internal global i32** @g_1282, align 8
@g_1282 = internal global i32* @g_1283, align 8
@g_1740 = internal constant i32 1, align 4
@.str.37 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i16, i16* @g_30, align 2, !tbaa !10
  %92 = sext i16 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %133, %89
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 5
  br i1 %96, label %97, label %136

; <label>:97                                      ; preds = %94
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %129, %97
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 6
  br i1 %100, label %101, label %132

; <label>:101                                     ; preds = %98
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %102

; <label>:102                                     ; preds = %125, %101
  %103 = load i32, i32* %k, align 4, !tbaa !1
  %104 = icmp slt i32 %103, 5
  br i1 %104, label %105, label %128

; <label>:105                                     ; preds = %102
  %106 = load i32, i32* %k, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %j, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [5 x [6 x [5 x i64]]], [5 x [6 x [5 x i64]]]* @g_47, i32 0, i64 %111
  %113 = getelementptr inbounds [6 x [5 x i64]], [6 x [5 x i64]]* %112, i32 0, i64 %109
  %114 = getelementptr inbounds [5 x i64], [5 x i64]* %113, i32 0, i64 %107
  %115 = load i64, i64* %114, align 8, !tbaa !7
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %116)
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

; <label>:119                                     ; preds = %105
  %120 = load i32, i32* %i, align 4, !tbaa !1
  %121 = load i32, i32* %j, align 4, !tbaa !1
  %122 = load i32, i32* %k, align 4, !tbaa !1
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %120, i32 %121, i32 %122)
  br label %124

; <label>:124                                     ; preds = %119, %105
  br label %125

; <label>:125                                     ; preds = %124
  %126 = load i32, i32* %k, align 4, !tbaa !1
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %k, align 4, !tbaa !1
  br label %102

; <label>:128                                     ; preds = %102
  br label %129

; <label>:129                                     ; preds = %128
  %130 = load i32, i32* %j, align 4, !tbaa !1
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:132                                     ; preds = %98
  br label %133

; <label>:133                                     ; preds = %132
  %134 = load i32, i32* %i, align 4, !tbaa !1
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:136                                     ; preds = %94
  %137 = load i32, i32* @g_52, align 4, !tbaa !1
  %138 = sext i32 %137 to i64
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %139)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %140

; <label>:140                                     ; preds = %156, %136
  %141 = load i32, i32* %i, align 4, !tbaa !1
  %142 = icmp slt i32 %141, 1
  br i1 %142, label %143, label %159

; <label>:143                                     ; preds = %140
  %144 = load i32, i32* %i, align 4, !tbaa !1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [1 x i32], [1 x i32]* @g_96, i32 0, i64 %145
  %147 = load i32, i32* %146, align 4, !tbaa !1
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %149)
  %150 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

; <label>:152                                     ; preds = %143
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %153)
  br label %155

; <label>:155                                     ; preds = %152, %143
  br label %156

; <label>:156                                     ; preds = %155
  %157 = load i32, i32* %i, align 4, !tbaa !1
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %i, align 4, !tbaa !1
  br label %140

; <label>:159                                     ; preds = %140
  %160 = load i32, i32* @g_113, align 4, !tbaa !1
  %161 = zext i32 %160 to i64
  %162 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %162)
  %163 = load i32, i32* @g_121, align 4, !tbaa !1
  %164 = zext i32 %163 to i64
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %165)
  %166 = load i32, i32* @g_123, align 4, !tbaa !1
  %167 = zext i32 %166 to i64
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %168)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %169

; <label>:169                                     ; preds = %196, %159
  %170 = load i32, i32* %i, align 4, !tbaa !1
  %171 = icmp slt i32 %170, 5
  br i1 %171, label %172, label %199

; <label>:172                                     ; preds = %169
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %173

; <label>:173                                     ; preds = %192, %172
  %174 = load i32, i32* %j, align 4, !tbaa !1
  %175 = icmp slt i32 %174, 8
  br i1 %175, label %176, label %195

; <label>:176                                     ; preds = %173
  %177 = load i32, i32* %j, align 4, !tbaa !1
  %178 = sext i32 %177 to i64
  %179 = load i32, i32* %i, align 4, !tbaa !1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [5 x [8 x i64]], [5 x [8 x i64]]* @g_154, i32 0, i64 %180
  %182 = getelementptr inbounds [8 x i64], [8 x i64]* %181, i32 0, i64 %178
  %183 = load i64, i64* %182, align 8, !tbaa !7
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %183, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 %184)
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

; <label>:187                                     ; preds = %176
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = load i32, i32* %j, align 4, !tbaa !1
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %188, i32 %189)
  br label %191

; <label>:191                                     ; preds = %187, %176
  br label %192

; <label>:192                                     ; preds = %191
  %193 = load i32, i32* %j, align 4, !tbaa !1
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %j, align 4, !tbaa !1
  br label %173

; <label>:195                                     ; preds = %173
  br label %196

; <label>:196                                     ; preds = %195
  %197 = load i32, i32* %i, align 4, !tbaa !1
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %i, align 4, !tbaa !1
  br label %169

; <label>:199                                     ; preds = %169
  %200 = load i16, i16* @g_158, align 2, !tbaa !10
  %201 = sext i16 %200 to i64
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %202)
  %203 = load i16, i16* @g_265, align 2, !tbaa !10
  %204 = sext i16 %203 to i64
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %205)
  %206 = load i8, i8* @g_291, align 1, !tbaa !9
  %207 = sext i8 %206 to i64
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %208)
  %209 = load i16, i16* @g_293, align 2, !tbaa !10
  %210 = zext i16 %209 to i64
  %211 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %211)
  %212 = load i32, i32* @g_372, align 4, !tbaa !1
  %213 = zext i32 %212 to i64
  %214 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %214)
  %215 = load i32, i32* @g_406, align 4, !tbaa !1
  %216 = sext i32 %215 to i64
  %217 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %217)
  %218 = load i8, i8* @g_425, align 1, !tbaa !9
  %219 = sext i8 %218 to i64
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %220)
  %221 = load i16, i16* @g_426, align 2, !tbaa !10
  %222 = sext i16 %221 to i64
  %223 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %222, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %223)
  %224 = load i64, i64* @g_438, align 8, !tbaa !7
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %225)
  %226 = load i8, i8* @g_494, align 1, !tbaa !9
  %227 = zext i8 %226 to i64
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %228)
  %229 = load i16, i16* @g_605, align 2, !tbaa !10
  %230 = zext i16 %229 to i64
  %231 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %231)
  %232 = load volatile i16, i16* @g_612, align 2, !tbaa !10
  %233 = sext i16 %232 to i64
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %234)
  %235 = load i64, i64* @g_842, align 8, !tbaa !7
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %236)
  %237 = load volatile i64, i64* @g_851, align 8, !tbaa !7
  %238 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %238)
  %239 = load volatile i32, i32* @g_856, align 4, !tbaa !1
  %240 = sext i32 %239 to i64
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %241)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %242

; <label>:242                                     ; preds = %282, %199
  %243 = load i32, i32* %i, align 4, !tbaa !1
  %244 = icmp slt i32 %243, 9
  br i1 %244, label %245, label %285

; <label>:245                                     ; preds = %242
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %246

; <label>:246                                     ; preds = %278, %245
  %247 = load i32, i32* %j, align 4, !tbaa !1
  %248 = icmp slt i32 %247, 3
  br i1 %248, label %249, label %281

; <label>:249                                     ; preds = %246
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %250

; <label>:250                                     ; preds = %274, %249
  %251 = load i32, i32* %k, align 4, !tbaa !1
  %252 = icmp slt i32 %251, 7
  br i1 %252, label %253, label %277

; <label>:253                                     ; preds = %250
  %254 = load i32, i32* %k, align 4, !tbaa !1
  %255 = sext i32 %254 to i64
  %256 = load i32, i32* %j, align 4, !tbaa !1
  %257 = sext i32 %256 to i64
  %258 = load i32, i32* %i, align 4, !tbaa !1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [9 x [3 x [7 x i8]]], [9 x [3 x [7 x i8]]]* @g_857, i32 0, i64 %259
  %261 = getelementptr inbounds [3 x [7 x i8]], [3 x [7 x i8]]* %260, i32 0, i64 %257
  %262 = getelementptr inbounds [7 x i8], [7 x i8]* %261, i32 0, i64 %255
  %263 = load i8, i8* %262, align 1, !tbaa !9
  %264 = sext i8 %263 to i64
  %265 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %264, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 %265)
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %273

; <label>:268                                     ; preds = %253
  %269 = load i32, i32* %i, align 4, !tbaa !1
  %270 = load i32, i32* %j, align 4, !tbaa !1
  %271 = load i32, i32* %k, align 4, !tbaa !1
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %269, i32 %270, i32 %271)
  br label %273

; <label>:273                                     ; preds = %268, %253
  br label %274

; <label>:274                                     ; preds = %273
  %275 = load i32, i32* %k, align 4, !tbaa !1
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %k, align 4, !tbaa !1
  br label %250

; <label>:277                                     ; preds = %250
  br label %278

; <label>:278                                     ; preds = %277
  %279 = load i32, i32* %j, align 4, !tbaa !1
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %j, align 4, !tbaa !1
  br label %246

; <label>:281                                     ; preds = %246
  br label %282

; <label>:282                                     ; preds = %281
  %283 = load i32, i32* %i, align 4, !tbaa !1
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %i, align 4, !tbaa !1
  br label %242

; <label>:285                                     ; preds = %242
  %286 = load i32, i32* @g_885, align 4, !tbaa !1
  %287 = zext i32 %286 to i64
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %287, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %288)
  %289 = load i8, i8* @g_959, align 1, !tbaa !9
  %290 = zext i8 %289 to i64
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %290, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %291)
  %292 = load volatile i32, i32* @g_1283, align 4, !tbaa !1
  %293 = zext i32 %292 to i64
  %294 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %293, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 %294)
  %295 = load volatile i16, i16* @g_1407, align 2, !tbaa !10
  %296 = zext i16 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %297)
  %298 = load volatile i16, i16* @g_1516, align 2, !tbaa !10
  %299 = zext i16 %298 to i64
  %300 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %299, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %300)
  %301 = load i32, i32* @g_1724, align 4, !tbaa !1
  %302 = zext i32 %301 to i64
  %303 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %302, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %303)
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -57068592, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %304)
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %305)
  %306 = load i8, i8* @g_1821, align 1, !tbaa !9
  %307 = zext i8 %306 to i64
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %308)
  %309 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %310 = zext i32 %309 to i64
  %311 = xor i64 %310, 4294967295
  %312 = trunc i64 %311 to i32
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %312, i32 %313)
  %314 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #1
  %315 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  %316 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #1
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
  %l_39 = alloca %union.U0, align 4
  %l_46 = alloca i64*, align 8
  %l_655 = alloca %union.U0, align 4
  %l_1160 = alloca %union.U0*, align 8
  %l_1161 = alloca %union.U0*, align 8
  %l_1162 = alloca %union.U0*, align 8
  %l_1847 = alloca [10 x [10 x [2 x i32*]]], align 16
  %l_1848 = alloca [3 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = alloca %union.U0, align 4
  %2 = alloca %union.U0, align 4
  %3 = bitcast %union.U0* %l_39 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %union.U0* %l_39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast (%union.U0* @func_1.l_39 to i8*), i64 4, i32 4, i1 false)
  %5 = bitcast i64** %l_46 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64* getelementptr inbounds ([5 x [6 x [5 x i64]]], [5 x [6 x [5 x i64]]]* @g_47, i32 0, i64 0, i64 3, i64 1), i64** %l_46, align 8, !tbaa !5
  %6 = bitcast %union.U0* %l_655 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %union.U0* %l_655 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%union.U0* @func_1.l_655 to i8*), i64 4, i32 4, i1 false)
  %8 = bitcast %union.U0** %l_1160 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %union.U0* %l_655, %union.U0** %l_1160, align 8, !tbaa !5
  %9 = bitcast %union.U0** %l_1161 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %union.U0* null, %union.U0** %l_1161, align 8, !tbaa !5
  %10 = bitcast %union.U0** %l_1162 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %union.U0* %l_39, %union.U0** %l_1162, align 8, !tbaa !5
  %11 = bitcast [10 x [10 x [2 x i32*]]]* %l_1847 to i8*
  call void @llvm.lifetime.start(i64 1600, i8* %11) #1
  %12 = bitcast [10 x [10 x [2 x i32*]]]* %l_1847 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast ([10 x [10 x [2 x i32*]]]* @func_1.l_1847 to i8*), i64 1600, i32 16, i1 false)
  %13 = bitcast [3 x i8]* %l_1848 to i8*
  call void @llvm.lifetime.start(i64 3, i8* %13) #1
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:17                                      ; preds = %24, %0
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %27

; <label>:20                                      ; preds = %17
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %l_1848, i32 0, i64 %22
  store i8 49, i8* %23, align 1, !tbaa !9
  br label %24

; <label>:24                                      ; preds = %20
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:27                                      ; preds = %17
  %28 = load %union.U0*, %union.U0** %l_1162, align 8, !tbaa !5
  %29 = load %union.U0*, %union.U0** %l_1160, align 8, !tbaa !5
  %30 = load i8, i8* getelementptr inbounds ([4 x [6 x i8]], [4 x [6 x i8]]* @func_1.l_17, i32 0, i64 2, i64 3), align 1, !tbaa !9
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* getelementptr inbounds ([4 x [6 x i8]], [4 x [6 x i8]]* @func_1.l_17, i32 0, i64 2, i64 3), align 1, !tbaa !9
  %33 = zext i8 %32 to i64
  %34 = icmp sle i64 8127, %33
  %35 = zext i1 %34 to i32
  %36 = trunc i32 %35 to i8
  %37 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %36, i32 7)
  %38 = load i16, i16* @g_30, align 2, !tbaa !10
  %39 = trunc i16 %38 to i8
  %40 = load i8, i8* getelementptr inbounds ([4 x [6 x i8]], [4 x [6 x i8]]* @func_1.l_17, i32 0, i64 3, i64 2), align 1, !tbaa !9
  %41 = zext i8 %40 to i64
  %42 = load i64*, i64** %l_46, align 8, !tbaa !5
  %43 = load i64, i64* %42, align 8, !tbaa !7
  %44 = xor i64 %43, %41
  store i64 %44, i64* %42, align 8, !tbaa !7
  %45 = load i8, i8* getelementptr inbounds ([4 x [6 x i8]], [4 x [6 x i8]]* @func_1.l_17, i32 0, i64 1, i64 0), align 1, !tbaa !9
  %46 = zext i8 %45 to i32
  %47 = load i16, i16* @g_30, align 2, !tbaa !10
  %48 = sext i16 %47 to i64
  %49 = load i16, i16* @g_30, align 2, !tbaa !10
  %50 = load i16, i16* @g_30, align 2, !tbaa !10
  %51 = call i32 @func_40(i64 %44, i32 %46, i64 %48, i16 zeroext %49, i16 zeroext %50)
  %52 = load i8, i8* getelementptr inbounds ([4 x [6 x i8]], [4 x [6 x i8]]* @func_1.l_17, i32 0, i64 2, i64 3), align 1, !tbaa !9
  %53 = getelementptr %union.U0, %union.U0* %l_39, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @func_35(i32 %54, i32 %51, i8 signext %52)
  %56 = getelementptr %union.U0, %union.U0* %1, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load i64*, i64** @g_341, align 8, !tbaa !5
  %58 = load i64, i64* %57, align 8, !tbaa !7
  %59 = load i8, i8* getelementptr inbounds ([4 x [6 x i8]], [4 x [6 x i8]]* @func_1.l_17, i32 0, i64 0, i64 1), align 1, !tbaa !9
  %60 = zext i8 %59 to i64
  %61 = or i64 %58, %60
  %62 = load i64*, i64** @g_341, align 8, !tbaa !5
  %63 = load i64, i64* %62, align 8, !tbaa !7
  %64 = icmp ugt i64 %61, %63
  %65 = zext i1 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = load i8, i8* getelementptr inbounds ([4 x [6 x i8]], [4 x [6 x i8]]* @func_1.l_17, i32 0, i64 2, i64 3), align 1, !tbaa !9
  %68 = zext i8 %67 to i64
  %69 = call i64 @safe_add_func_int64_t_s_s(i64 %66, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

; <label>:71                                      ; preds = %27
  %72 = bitcast %union.U0* %l_39 to i32*
  %73 = load i32, i32* %72, align 4, !tbaa !1
  %74 = icmp ne i32 %73, 0
  br label %75

; <label>:75                                      ; preds = %71, %27
  %76 = phi i1 [ true, %27 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = trunc i32 %77 to i16
  %79 = call zeroext i8 @func_31(i16 signext %78)
  %80 = zext i8 %79 to i64
  %81 = icmp sge i64 %80, -1
  %82 = zext i1 %81 to i32
  %83 = trunc i32 %82 to i16
  %84 = bitcast %union.U0* %l_39 to i32*
  %85 = load i32, i32* %84, align 4, !tbaa !1
  %86 = zext i32 %85 to i64
  %87 = load i16, i16* @g_426, align 2, !tbaa !10
  %88 = sext i16 %87 to i32
  %89 = getelementptr %union.U0, %union.U0* %l_655, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @func_24(i8 zeroext %39, i16 signext %83, i32 %90, i64 %86, i32 %88)
  %92 = call signext i16 @func_20(i32 %91)
  %93 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %92, i16 signext 15322)
  %94 = sext i16 %93 to i32
  %95 = or i32 %31, %94
  %96 = load i8, i8* getelementptr inbounds ([4 x [6 x i8]], [4 x [6 x i8]]* @func_1.l_17, i32 0, i64 2, i64 3), align 1, !tbaa !9
  %97 = zext i8 %96 to i32
  %98 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext -6, i32 %97)
  %99 = zext i16 %98 to i32
  %100 = bitcast %union.U0* %l_655 to i32*
  %101 = load i32, i32* %100, align 4, !tbaa !1
  %102 = icmp uge i32 %99, %101
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* @g_406, align 4, !tbaa !1
  %105 = icmp sge i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = trunc i32 %106 to i8
  %108 = load i8, i8* getelementptr inbounds ([4 x [6 x i8]], [4 x [6 x i8]]* @func_1.l_17, i32 0, i64 0, i64 0), align 1, !tbaa !9
  %109 = zext i8 %108 to i32
  %110 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %107, i32 %109)
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

; <label>:113                                     ; preds = %75
  br label %114

; <label>:114                                     ; preds = %113, %75
  %115 = phi i1 [ true, %75 ], [ true, %113 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @func_11(i32 %116)
  %118 = getelementptr %union.U0, %union.U0* %2, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  %119 = bitcast %union.U0* %29 to i8*
  %120 = bitcast %union.U0* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %120, i64 4, i32 4, i1 false), !tbaa.struct !12
  %121 = bitcast %union.U0* %28 to i8*
  %122 = bitcast %union.U0* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %122, i64 4, i32 4, i1 false), !tbaa.struct !12
  %123 = load i32, i32* @g_885, align 4, !tbaa !1
  %124 = trunc i32 %123 to i8
  %125 = call signext i16 @func_8(i16 signext 7, i8 zeroext %124)
  %126 = load i8, i8* getelementptr inbounds ([4 x [6 x i8]], [4 x [6 x i8]]* @func_1.l_17, i32 0, i64 3, i64 3), align 1, !tbaa !9
  %127 = zext i8 %126 to i16
  %128 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %125, i16 signext %127)
  %129 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %128, i16 signext -2423)
  %130 = sext i16 %129 to i32
  %131 = load i8, i8* @g_1821, align 1, !tbaa !9
  %132 = zext i8 %131 to i32
  %133 = icmp ne i32 %130, %132
  %134 = zext i1 %133 to i32
  %135 = sext i32 %134 to i64
  %136 = load i32, i32* @g_1724, align 4, !tbaa !1
  %137 = zext i32 %136 to i64
  %138 = call i64 @safe_div_func_int64_t_s_s(i64 %135, i64 %137)
  %139 = trunc i64 %138 to i32
  %140 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 %139, i32* %140, align 4, !tbaa !1
  %141 = getelementptr inbounds [3 x i8], [3 x i8]* %l_1848, i32 0, i64 2
  %142 = load i8, i8* %141, align 1, !tbaa !9
  %143 = add i8 %142, -1
  store i8 %143, i8* %141, align 1, !tbaa !9
  %144 = load i32****, i32***** @g_1279, align 8, !tbaa !5
  %145 = load i32***, i32**** %144, align 8, !tbaa !5
  %146 = load i32****, i32***** @g_1279, align 8, !tbaa !5
  store i32*** %145, i32**** %146, align 8, !tbaa !5
  %147 = load i32*, i32** @g_126, align 8, !tbaa !5
  %148 = load i32, i32* %147, align 4, !tbaa !1
  %149 = sext i32 %148 to i64
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %147, align 4, !tbaa !1
  %151 = load i32*, i32** @g_1739, align 8, !tbaa !5
  %152 = load i32, i32* %151, align 4, !tbaa !1
  %153 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast [3 x i8]* %l_1848 to i8*
  call void @llvm.lifetime.end(i64 3, i8* %156) #1
  %157 = bitcast [10 x [10 x [2 x i32*]]]* %l_1847 to i8*
  call void @llvm.lifetime.end(i64 1600, i8* %157) #1
  %158 = bitcast %union.U0** %l_1162 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast %union.U0** %l_1161 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast %union.U0** %l_1160 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast %union.U0* %l_655 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i64** %l_46 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast %union.U0* %l_39 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  ret i32 %152
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i64 @safe_div_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = icmp eq i64 %6, -9223372036854775808
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i64, i64* %2, align 8, !tbaa !7
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i64, i64* %1, align 8, !tbaa !7
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = load i64, i64* %2, align 8, !tbaa !7
  %16 = sdiv i64 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i64 [ %12, %11 ], [ %16, %13 ]
  ret i64 %18
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
define internal signext i16 @func_8(i16 signext %p_9, i8 zeroext %p_10) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  %l_1168 = alloca i32*, align 8
  %l_1174 = alloca i32, align 4
  %l_1181 = alloca %union.U0, align 4
  %l_1212 = alloca i32, align 4
  %l_1213 = alloca i32, align 4
  %l_1214 = alloca i32, align 4
  %l_1217 = alloca i32, align 4
  %l_1218 = alloca i32, align 4
  %l_1219 = alloca [4 x [10 x i32]], align 16
  %l_1246 = alloca i64, align 8
  %l_1273 = alloca i64**, align 8
  %l_1336 = alloca i32***, align 8
  %l_1348 = alloca i32, align 4
  %l_1361 = alloca i8, align 1
  %l_1459 = alloca %union.U0**, align 8
  %l_1483 = alloca i64, align 8
  %l_1591 = alloca i16, align 2
  %l_1621 = alloca i16, align 2
  %l_1673 = alloca %union.U0*, align 8
  %l_1688 = alloca i32**, align 8
  %l_1708 = alloca i16, align 2
  %l_1776 = alloca i16*, align 8
  %l_1775 = alloca i16**, align 8
  %l_1793 = alloca i32**, align 8
  %l_1796 = alloca i32, align 4
  %l_1815 = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_1165 = alloca i32, align 4
  %4 = alloca i32
  %l_1173 = alloca i64*, align 8
  %l_1188 = alloca i32, align 4
  %l_1203 = alloca i16, align 2
  %l_1204 = alloca i8*, align 8
  %l_1205 = alloca i64*, align 8
  %l_1206 = alloca [6 x i64], align 16
  %l_1207 = alloca [9 x i64], align 16
  %l_1209 = alloca i32*, align 8
  %l_1220 = alloca i8, align 1
  %l_1258 = alloca i32, align 4
  %l_1261 = alloca [10 x i32], align 16
  %l_1302 = alloca i16, align 2
  %l_1343 = alloca i8, align 1
  %l_1349 = alloca i32****, align 8
  %l_1378 = alloca i16, align 2
  %l_1425 = alloca [5 x [4 x i16*]], align 16
  %l_1424 = alloca i16**, align 8
  %l_1476 = alloca %union.U0, align 4
  %l_1478 = alloca i32, align 4
  %l_1489 = alloca i16, align 2
  %l_1553 = alloca i16, align 2
  %l_1569 = alloca i32**, align 8
  %l_1616 = alloca i8, align 1
  %l_1641 = alloca i16, align 2
  %l_1690 = alloca i32**, align 8
  %l_1719 = alloca i32, align 4
  %l_1722 = alloca [8 x i8], align 1
  %l_1723 = alloca i16, align 2
  %l_1732 = alloca i32, align 4
  %l_1784 = alloca i8, align 1
  %l_1820 = alloca i16, align 2
  %l_1825 = alloca i16, align 2
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %l_1215 = alloca [4 x i8], align 1
  %l_1216 = alloca i32, align 4
  %l_1244 = alloca %union.U0, align 4
  %l_1256 = alloca i32, align 4
  %l_1257 = alloca i32, align 4
  %l_1259 = alloca i32, align 4
  %l_1260 = alloca i32, align 4
  %l_1274 = alloca i64**, align 8
  %l_1319 = alloca [1 x [9 x i32**]], align 16
  %l_1321 = alloca i16***, align 8
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %l_1210 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %k = alloca i32, align 4
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %k9 = alloca i32, align 4
  %l_1211 = alloca [1 x i32**], align 8
  %l_1254 = alloca i16*, align 8
  %l_1255 = alloca [2 x [3 x [5 x i64]]], align 16
  %l_1278 = alloca i8*, align 8
  %l_1301 = alloca i32, align 4
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %k12 = alloca i32, align 4
  %l_1262 = alloca i16, align 2
  %l_1289 = alloca i32, align 4
  %l_1288 = alloca [4 x [2 x [6 x i64]]], align 16
  %l_1298 = alloca i32**, align 8
  %i13 = alloca i32, align 4
  %j14 = alloca i32, align 4
  %k15 = alloca i32, align 4
  %l_1310 = alloca [3 x i32], align 4
  %l_1322 = alloca i32, align 4
  %i16 = alloca i32, align 4
  %l_1335 = alloca %union.U0, align 4
  %l_1356 = alloca i64, align 8
  %l_1387 = alloca i16*, align 8
  %l_1386 = alloca i16**, align 8
  %l_1401 = alloca [7 x [8 x i32]], align 16
  %l_1445 = alloca i16*****, align 8
  %l_1453 = alloca [10 x i8*], align 16
  %l_1454 = alloca i32, align 4
  %l_1464 = alloca i64, align 8
  %l_1498 = alloca i32*, align 8
  %l_1521 = alloca i32, align 4
  %l_1522 = alloca i16, align 2
  %l_1557 = alloca i32***, align 8
  %l_1562 = alloca i32, align 4
  %l_1702 = alloca i16, align 2
  %l_1720 = alloca i32, align 4
  %l_1767 = alloca i64*, align 8
  %l_1808 = alloca i32, align 4
  %l_1816 = alloca [3 x [9 x [8 x i16]]], align 16
  %i20 = alloca i32, align 4
  %j21 = alloca i32, align 4
  %k22 = alloca i32, align 4
  store i16 %p_9, i16* %2, align 2, !tbaa !10
  store i8 %p_10, i8* %3, align 1, !tbaa !9
  %5 = bitcast i32** %l_1168 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i64 0), i32** %l_1168, align 8, !tbaa !5
  %6 = bitcast i32* %l_1174 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 1, i32* %l_1174, align 4, !tbaa !1
  %7 = bitcast %union.U0* %l_1181 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %union.U0* %l_1181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%union.U0* @func_8.l_1181 to i8*), i64 4, i32 4, i1 false)
  %9 = bitcast i32* %l_1212 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 8, i32* %l_1212, align 4, !tbaa !1
  %10 = bitcast i32* %l_1213 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 835067577, i32* %l_1213, align 4, !tbaa !1
  %11 = bitcast i32* %l_1214 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 7, i32* %l_1214, align 4, !tbaa !1
  %12 = bitcast i32* %l_1217 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %l_1217, align 4, !tbaa !1
  %13 = bitcast i32* %l_1218 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 -1, i32* %l_1218, align 4, !tbaa !1
  %14 = bitcast [4 x [10 x i32]]* %l_1219 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %14) #1
  %15 = bitcast [4 x [10 x i32]]* %l_1219 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast ([4 x [10 x i32]]* @func_8.l_1219 to i8*), i64 160, i32 16, i1 false)
  %16 = bitcast i64* %l_1246 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64 1, i64* %l_1246, align 8, !tbaa !7
  %17 = bitcast i64*** %l_1273 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i64** @g_219, i64*** %l_1273, align 8, !tbaa !5
  %18 = bitcast i32**** %l_1336 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32*** @g_1089, i32**** %l_1336, align 8, !tbaa !5
  %19 = bitcast i32* %l_1348 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 1746670949, i32* %l_1348, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1361) #1
  store i8 -1, i8* %l_1361, align 1, !tbaa !9
  %20 = bitcast %union.U0*** %l_1459 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store %union.U0** null, %union.U0*** %l_1459, align 8, !tbaa !5
  %21 = bitcast i64* %l_1483 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i64 3, i64* %l_1483, align 8, !tbaa !7
  %22 = bitcast i16* %l_1591 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %22) #1
  store i16 2, i16* %l_1591, align 2, !tbaa !10
  %23 = bitcast i16* %l_1621 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %23) #1
  store i16 0, i16* %l_1621, align 2, !tbaa !10
  %24 = bitcast %union.U0** %l_1673 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store %union.U0* %l_1181, %union.U0** %l_1673, align 8, !tbaa !5
  %25 = bitcast i32*** %l_1688 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i32** @g_824, i32*** %l_1688, align 8, !tbaa !5
  %26 = bitcast i16* %l_1708 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %26) #1
  store i16 30864, i16* %l_1708, align 2, !tbaa !10
  %27 = bitcast i16** %l_1776 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i16* null, i16** %l_1776, align 8, !tbaa !5
  %28 = bitcast i16*** %l_1775 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i16** %l_1776, i16*** %l_1775, align 8, !tbaa !5
  %29 = bitcast i32*** %l_1793 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i32** @g_650, i32*** %l_1793, align 8, !tbaa !5
  %30 = bitcast i32* %l_1796 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  store i32 2, i32* %l_1796, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1815) #1
  store i8 0, i8* %l_1815, align 1, !tbaa !9
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 -10, i32* @g_372, align 4, !tbaa !1
  br label %33

; <label>:33                                      ; preds = %41, %0
  %34 = load i32, i32* @g_372, align 4, !tbaa !1
  %35 = icmp ule i32 %34, 53
  br i1 %35, label %36, label %44

; <label>:36                                      ; preds = %33
  %37 = bitcast i32* %l_1165 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  store i32 208355664, i32* %l_1165, align 4, !tbaa !1
  %38 = load i32, i32* %l_1165, align 4, !tbaa !1
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %1
  store i32 1, i32* %4
  %40 = bitcast i32* %l_1165 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  br label %1010
                                                  ; No predecessors!
  %42 = load i32, i32* @g_372, align 4, !tbaa !1
  %43 = add i32 %42, 1
  store i32 %43, i32* @g_372, align 4, !tbaa !1
  br label %33

; <label>:44                                      ; preds = %33
  br label %45

; <label>:45                                      ; preds = %971, %44
  store i16 -6, i16* @g_158, align 2, !tbaa !10
  br label %46

; <label>:46                                      ; preds = %52, %45
  %47 = load i16, i16* @g_158, align 2, !tbaa !10
  %48 = sext i16 %47 to i32
  %49 = icmp sgt i32 %48, 5
  br i1 %49, label %50, label %55

; <label>:50                                      ; preds = %46
  %51 = load i32*, i32** %l_1168, align 8, !tbaa !5
  store i32* %51, i32** %l_1168, align 8, !tbaa !5
  br label %52

; <label>:52                                      ; preds = %50
  %53 = load i16, i16* @g_158, align 2, !tbaa !10
  %54 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %53, i16 signext 1)
  store i16 %54, i16* @g_158, align 2, !tbaa !10
  br label %46

; <label>:55                                      ; preds = %46
  store i8 2, i8* @g_425, align 1, !tbaa !9
  br label %56

; <label>:56                                      ; preds = %1003, %55
  %57 = load i8, i8* @g_425, align 1, !tbaa !9
  %58 = sext i8 %57 to i32
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %1008

; <label>:60                                      ; preds = %56
  %61 = bitcast i64** %l_1173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  store i64* @g_842, i64** %l_1173, align 8, !tbaa !5
  %62 = bitcast i32* %l_1188 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  store i32 -1591154651, i32* %l_1188, align 4, !tbaa !1
  %63 = bitcast i16* %l_1203 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %63) #1
  store i16 19306, i16* %l_1203, align 2, !tbaa !10
  %64 = bitcast i8** %l_1204 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  store i8* @g_494, i8** %l_1204, align 8, !tbaa !5
  %65 = bitcast i64** %l_1205 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  store i64* @g_438, i64** %l_1205, align 8, !tbaa !5
  %66 = bitcast [6 x i64]* %l_1206 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %66) #1
  %67 = bitcast [6 x i64]* %l_1206 to i8*
  call void @llvm.memset.p0i8.i64(i8* %67, i8 0, i64 48, i32 16, i1 false)
  %68 = bitcast i8* %67 to [6 x i64]*
  %69 = getelementptr [6 x i64], [6 x i64]* %68, i32 0, i32 0
  store i64 6, i64* %69
  %70 = getelementptr [6 x i64], [6 x i64]* %68, i32 0, i32 1
  store i64 -1, i64* %70
  %71 = getelementptr [6 x i64], [6 x i64]* %68, i32 0, i32 2
  store i64 -1, i64* %71
  %72 = getelementptr [6 x i64], [6 x i64]* %68, i32 0, i32 3
  store i64 6, i64* %72
  %73 = getelementptr [6 x i64], [6 x i64]* %68, i32 0, i32 4
  store i64 -1, i64* %73
  %74 = getelementptr [6 x i64], [6 x i64]* %68, i32 0, i32 5
  store i64 -1, i64* %74
  %75 = bitcast [9 x i64]* %l_1207 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %75) #1
  %76 = bitcast [9 x i64]* %l_1207 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* bitcast ([9 x i64]* @func_8.l_1207 to i8*), i64 72, i32 16, i1 false)
  %77 = bitcast i32** %l_1209 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  store i32* null, i32** %l_1209, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1220) #1
  store i8 7, i8* %l_1220, align 1, !tbaa !9
  %78 = bitcast i32* %l_1258 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  store i32 1, i32* %l_1258, align 4, !tbaa !1
  %79 = bitcast [10 x i32]* %l_1261 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %79) #1
  %80 = bitcast [10 x i32]* %l_1261 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* bitcast ([10 x i32]* @func_8.l_1261 to i8*), i64 40, i32 16, i1 false)
  %81 = bitcast i16* %l_1302 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %81) #1
  store i16 -17232, i16* %l_1302, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_1343) #1
  store i8 -3, i8* %l_1343, align 1, !tbaa !9
  %82 = bitcast i32***** %l_1349 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  store i32**** @g_1088, i32***** %l_1349, align 8, !tbaa !5
  %83 = bitcast i16* %l_1378 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %83) #1
  store i16 -1, i16* %l_1378, align 2, !tbaa !10
  %84 = bitcast [5 x [4 x i16*]]* %l_1425 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %84) #1
  %85 = bitcast [5 x [4 x i16*]]* %l_1425 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* bitcast ([5 x [4 x i16*]]* @func_8.l_1425 to i8*), i64 160, i32 16, i1 false)
  %86 = bitcast i16*** %l_1424 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  %87 = getelementptr inbounds [5 x [4 x i16*]], [5 x [4 x i16*]]* %l_1425, i32 0, i64 4
  %88 = getelementptr inbounds [4 x i16*], [4 x i16*]* %87, i32 0, i64 3
  store i16** %88, i16*** %l_1424, align 8, !tbaa !5
  %89 = bitcast %union.U0* %l_1476 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  %90 = bitcast %union.U0* %l_1476 to i8*
  call void @llvm.memset.p0i8.i64(i8* %90, i8 0, i64 4, i32 4, i1 false)
  %91 = bitcast i32* %l_1478 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  store i32 1, i32* %l_1478, align 4, !tbaa !1
  %92 = bitcast i16* %l_1489 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %92) #1
  store i16 4173, i16* %l_1489, align 2, !tbaa !10
  %93 = bitcast i16* %l_1553 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %93) #1
  store i16 1, i16* %l_1553, align 2, !tbaa !10
  %94 = bitcast i32*** %l_1569 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  store i32** @g_650, i32*** %l_1569, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1616) #1
  store i8 -1, i8* %l_1616, align 1, !tbaa !9
  %95 = bitcast i16* %l_1641 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %95) #1
  store i16 0, i16* %l_1641, align 2, !tbaa !10
  %96 = bitcast i32*** %l_1690 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  store i32** null, i32*** %l_1690, align 8, !tbaa !5
  %97 = bitcast i32* %l_1719 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  store i32 -506896968, i32* %l_1719, align 4, !tbaa !1
  %98 = bitcast [8 x i8]* %l_1722 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  %99 = bitcast [8 x i8]* %l_1722 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @func_8.l_1722, i32 0, i32 0), i64 8, i32 1, i1 false)
  %100 = bitcast i16* %l_1723 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %100) #1
  store i16 -1, i16* %l_1723, align 2, !tbaa !10
  %101 = bitcast i32* %l_1732 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  store i32 -2079836088, i32* %l_1732, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1784) #1
  store i8 -81, i8* %l_1784, align 1, !tbaa !9
  %102 = bitcast i16* %l_1820 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %102) #1
  store i16 -2, i16* %l_1820, align 2, !tbaa !10
  %103 = bitcast i16* %l_1825 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %103) #1
  store i16 13652, i16* %l_1825, align 2, !tbaa !10
  %104 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  %105 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  %106 = load i8, i8* %3, align 1, !tbaa !9
  %107 = zext i8 %106 to i32
  %108 = load i32*, i32** %l_1168, align 8, !tbaa !5
  store i32 %107, i32* %108, align 4, !tbaa !1
  %109 = sext i32 %107 to i64
  %110 = load i64*, i64** %l_1173, align 8, !tbaa !5
  %111 = load i64, i64* %110, align 8, !tbaa !7
  %112 = or i64 %111, %109
  store i64 %112, i64* %110, align 8, !tbaa !7
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %l_1174, align 4, !tbaa !1
  %114 = xor i32 1, %113
  %115 = load i64*, i64** @g_341, align 8, !tbaa !5
  %116 = load i64, i64* %115, align 8, !tbaa !7
  %117 = load i32, i32* %l_1188, align 4, !tbaa !1
  %118 = sext i32 %117 to i64
  %119 = call i64 @safe_sub_func_uint64_t_u_u(i64 %116, i64 %118)
  %120 = trunc i64 %119 to i8
  %121 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %120, i32 2)
  %122 = zext i8 %121 to i64
  %123 = load i64*, i64** @g_341, align 8, !tbaa !5
  %124 = load i64, i64* %123, align 8, !tbaa !7
  %125 = load i32, i32* %l_1188, align 4, !tbaa !1
  %126 = sext i32 %125 to i64
  %127 = icmp ult i64 %124, %126
  %128 = zext i1 %127 to i32
  %129 = load i16, i16* %2, align 2, !tbaa !10
  %130 = sext i16 %129 to i32
  %131 = icmp sgt i32 %128, %130
  %132 = zext i1 %131 to i32
  %133 = load i16, i16* %l_1203, align 2, !tbaa !10
  %134 = zext i16 %133 to i32
  %135 = or i32 %134, %132
  %136 = trunc i32 %135 to i16
  store i16 %136, i16* %l_1203, align 2, !tbaa !10
  %137 = zext i16 %136 to i64
  %138 = icmp sgt i64 %137, 43060
  %139 = zext i1 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = icmp sge i64 %140, 2878697968
  %142 = zext i1 %141 to i32
  %143 = load i8*, i8** %l_1204, align 8, !tbaa !5
  %144 = load i8, i8* %143, align 1, !tbaa !9
  %145 = zext i8 %144 to i32
  %146 = and i32 %145, %142
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %143, align 1, !tbaa !9
  %148 = load i64, i64* @g_438, align 8, !tbaa !7
  %149 = trunc i64 %148 to i32
  %150 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %147, i32 %149)
  %151 = load i16, i16* %2, align 2, !tbaa !10
  %152 = load i32, i32* %l_1188, align 4, !tbaa !1
  %153 = trunc i32 %152 to i16
  %154 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %151, i16 zeroext %153)
  %155 = zext i16 %154 to i32
  %156 = load i32, i32* %l_1188, align 4, !tbaa !1
  %157 = and i32 %155, %156
  %158 = load i32**, i32*** @g_333, align 8, !tbaa !5
  %159 = load i32*, i32** %158, align 8, !tbaa !5
  %160 = load i32, i32* %159, align 4, !tbaa !1
  %161 = and i32 %157, %160
  %162 = trunc i32 %161 to i8
  %163 = load i64, i64* @g_438, align 8, !tbaa !7
  %164 = trunc i64 %163 to i8
  %165 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %162, i8 signext %164)
  %166 = load i16, i16* %l_1203, align 2, !tbaa !10
  %167 = load i32, i32* @g_885, align 4, !tbaa !1
  %168 = trunc i32 %167 to i8
  %169 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext -51, i8 zeroext %168)
  %170 = zext i8 %169 to i16
  %171 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext 5, i16 signext %170)
  %172 = sext i16 %171 to i32
  %173 = load i8, i8* %3, align 1, !tbaa !9
  %174 = zext i8 %173 to i32
  %175 = and i32 %172, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

; <label>:177                                     ; preds = %60
  %178 = load i32, i32* @g_372, align 4, !tbaa !1
  %179 = icmp ne i32 %178, 0
  br label %180

; <label>:180                                     ; preds = %177, %60
  %181 = phi i1 [ true, %60 ], [ %179, %177 ]
  %182 = zext i1 %181 to i32
  %183 = load i8, i8* %3, align 1, !tbaa !9
  %184 = load i8, i8* %3, align 1, !tbaa !9
  %185 = zext i8 %184 to i64
  %186 = load i64*, i64** %l_1205, align 8, !tbaa !5
  store i64 %185, i64* %186, align 8, !tbaa !7
  %187 = load i64*, i64** @g_341, align 8, !tbaa !5
  %188 = load i64, i64* %187, align 8, !tbaa !7
  %189 = call i64 @safe_add_func_int64_t_s_s(i64 %185, i64 %188)
  %190 = icmp slt i64 %189, -3
  %191 = zext i1 %190 to i32
  %192 = sext i32 %191 to i64
  %193 = load i16, i16* %2, align 2, !tbaa !10
  %194 = sext i16 %193 to i64
  %195 = call i64 @safe_mod_func_uint64_t_u_u(i64 %192, i64 %194)
  %196 = xor i64 %122, %195
  %197 = load i16, i16* %2, align 2, !tbaa !10
  %198 = sext i16 %197 to i32
  %199 = load i32, i32* %l_1188, align 4, !tbaa !1
  %200 = xor i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [6 x i64], [6 x i64]* %l_1206, i32 0, i64 4
  %203 = load i64, i64* %202, align 8, !tbaa !7
  %204 = or i64 %201, %203
  %205 = load i64*, i64** @g_341, align 8, !tbaa !5
  %206 = load i64, i64* %205, align 8, !tbaa !7
  %207 = call i64 @safe_mod_func_int64_t_s_s(i64 %204, i64 %206)
  %208 = trunc i64 %207 to i16
  %209 = load i8, i8* %3, align 1, !tbaa !9
  %210 = zext i8 %209 to i16
  %211 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %208, i16 signext %210)
  %212 = load i64, i64* getelementptr inbounds ([5 x [8 x i64]], [5 x [8 x i64]]* @g_154, i32 0, i64 1, i64 0), align 8, !tbaa !7
  %213 = trunc i64 %212 to i16
  %214 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %211, i16 zeroext %213)
  %215 = zext i16 %214 to i64
  %216 = getelementptr inbounds [9 x i64], [9 x i64]* %l_1207, i32 0, i64 5
  %217 = load i64, i64* %216, align 8, !tbaa !7
  %218 = call i64 @safe_add_func_int64_t_s_s(i64 %215, i64 %217)
  %219 = getelementptr inbounds [6 x i64], [6 x i64]* %l_1206, i32 0, i64 4
  %220 = load i64, i64* %219, align 8, !tbaa !7
  %221 = load i32*, i32** @g_650, align 8, !tbaa !5
  %222 = load i32, i32* %221, align 4, !tbaa !1
  %223 = icmp ult i32 %114, %222
  br i1 %223, label %229, label %224

; <label>:224                                     ; preds = %180
  %225 = load i32**, i32*** @g_333, align 8, !tbaa !5
  %226 = load i32*, i32** %225, align 8, !tbaa !5
  %227 = load i32, i32* %226, align 4, !tbaa !1
  %228 = icmp ne i32 %227, 0
  br label %229

; <label>:229                                     ; preds = %224, %180
  %230 = phi i1 [ true, %180 ], [ %228, %224 ]
  %231 = zext i1 %230 to i32
  %232 = load i8, i8* %3, align 1, !tbaa !9
  %233 = zext i8 %232 to i32
  %234 = xor i32 %231, %233
  %235 = load i8, i8* %3, align 1, !tbaa !9
  %236 = zext i8 %235 to i32
  %237 = icmp sgt i32 %234, %236
  %238 = zext i1 %237 to i32
  %239 = load i16, i16* @g_605, align 2, !tbaa !10
  %240 = trunc i16 %239 to i8
  %241 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext -6, i8 zeroext %240)
  %242 = zext i8 %241 to i16
  %243 = getelementptr inbounds [6 x i64], [6 x i64]* %l_1206, i32 0, i64 4
  %244 = load i64, i64* %243, align 8, !tbaa !7
  %245 = trunc i64 %244 to i32
  %246 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %242, i32 %245)
  store i32* %l_1174, i32** %l_1209, align 8, !tbaa !5
  store i32 0, i32* @g_372, align 4, !tbaa !1
  br label %247

; <label>:247                                     ; preds = %901, %229
  %248 = load i32, i32* @g_372, align 4, !tbaa !1
  %249 = icmp ule i32 %248, 4
  br i1 %249, label %250, label %904

; <label>:250                                     ; preds = %247
  %251 = bitcast [4 x i8]* %l_1215 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %251) #1
  %252 = bitcast i32* %l_1216 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %252) #1
  store i32 -1967094208, i32* %l_1216, align 4, !tbaa !1
  %253 = bitcast %union.U0* %l_1244 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %253) #1
  %254 = bitcast %union.U0* %l_1244 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %254, i8* bitcast (%union.U0* @func_8.l_1244 to i8*), i64 4, i32 4, i1 false)
  %255 = bitcast i32* %l_1256 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %255) #1
  store i32 0, i32* %l_1256, align 4, !tbaa !1
  %256 = bitcast i32* %l_1257 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %256) #1
  store i32 1, i32* %l_1257, align 4, !tbaa !1
  %257 = bitcast i32* %l_1259 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %257) #1
  store i32 1, i32* %l_1259, align 4, !tbaa !1
  %258 = bitcast i32* %l_1260 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %258) #1
  store i32 118617428, i32* %l_1260, align 4, !tbaa !1
  %259 = bitcast i64*** %l_1274 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %259) #1
  store i64** %l_1205, i64*** %l_1274, align 8, !tbaa !5
  %260 = bitcast [1 x [9 x i32**]]* %l_1319 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %260) #1
  %261 = getelementptr inbounds [1 x [9 x i32**]], [1 x [9 x i32**]]* %l_1319, i64 0, i64 0
  %262 = getelementptr inbounds [9 x i32**], [9 x i32**]* %261, i64 0, i64 0
  store i32** %l_1168, i32*** %262, !tbaa !5
  %263 = getelementptr inbounds i32**, i32*** %262, i64 1
  store i32** @g_126, i32*** %263, !tbaa !5
  %264 = getelementptr inbounds i32**, i32*** %263, i64 1
  store i32** %l_1168, i32*** %264, !tbaa !5
  %265 = getelementptr inbounds i32**, i32*** %264, i64 1
  store i32** @g_126, i32*** %265, !tbaa !5
  %266 = getelementptr inbounds i32**, i32*** %265, i64 1
  store i32** %l_1168, i32*** %266, !tbaa !5
  %267 = getelementptr inbounds i32**, i32*** %266, i64 1
  store i32** @g_126, i32*** %267, !tbaa !5
  %268 = getelementptr inbounds i32**, i32*** %267, i64 1
  store i32** %l_1168, i32*** %268, !tbaa !5
  %269 = getelementptr inbounds i32**, i32*** %268, i64 1
  store i32** @g_126, i32*** %269, !tbaa !5
  %270 = getelementptr inbounds i32**, i32*** %269, i64 1
  store i32** %l_1168, i32*** %270, !tbaa !5
  %271 = bitcast i16**** %l_1321 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %271) #1
  store i16*** @g_1112, i16**** %l_1321, align 8, !tbaa !5
  %272 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %272) #1
  %273 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %273) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %274

; <label>:274                                     ; preds = %281, %250
  %275 = load i32, i32* %i3, align 4, !tbaa !1
  %276 = icmp slt i32 %275, 4
  br i1 %276, label %277, label %284

; <label>:277                                     ; preds = %274
  %278 = load i32, i32* %i3, align 4, !tbaa !1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [4 x i8], [4 x i8]* %l_1215, i32 0, i64 %279
  store i8 1, i8* %280, align 1, !tbaa !9
  br label %281

; <label>:281                                     ; preds = %277
  %282 = load i32, i32* %i3, align 4, !tbaa !1
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %i3, align 4, !tbaa !1
  br label %274

; <label>:284                                     ; preds = %274
  store i64 4, i64* @g_842, align 8, !tbaa !7
  br label %285

; <label>:285                                     ; preds = %341, %284
  %286 = load i64, i64* @g_842, align 8, !tbaa !7
  %287 = icmp sge i64 %286, 0
  br i1 %287, label %288, label %344

; <label>:288                                     ; preds = %285
  %289 = bitcast i32* %l_1210 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %289) #1
  store i32 778930684, i32* %l_1210, align 4, !tbaa !1
  %290 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %290) #1
  %291 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %291) #1
  %292 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %292) #1
  %293 = load i64, i64* @g_842, align 8, !tbaa !7
  %294 = load i8, i8* @g_425, align 1, !tbaa !9
  %295 = sext i8 %294 to i64
  %296 = load i64, i64* @g_842, align 8, !tbaa !7
  %297 = add nsw i64 %296, 1
  %298 = getelementptr inbounds [9 x [3 x [7 x i8]]], [9 x [3 x [7 x i8]]]* @g_857, i32 0, i64 %297
  %299 = getelementptr inbounds [3 x [7 x i8]], [3 x [7 x i8]]* %298, i32 0, i64 %295
  %300 = getelementptr inbounds [7 x i8], [7 x i8]* %299, i32 0, i64 %293
  %301 = load i8, i8* %300, align 1, !tbaa !9
  %302 = sext i8 %301 to i32
  store i32 %302, i32* %l_1210, align 4, !tbaa !1
  store i16 2, i16* @g_426, align 2, !tbaa !10
  br label %303

; <label>:303                                     ; preds = %329, %288
  %304 = load i16, i16* @g_426, align 2, !tbaa !10
  %305 = sext i16 %304 to i32
  %306 = icmp sge i32 %305, 0
  br i1 %306, label %307, label %334

; <label>:307                                     ; preds = %303
  %308 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %308) #1
  %309 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %309) #1
  %310 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %310) #1
  %311 = load i8, i8* @g_425, align 1, !tbaa !9
  %312 = sext i8 %311 to i32
  %313 = add nsw i32 %312, 2
  %314 = sext i32 %313 to i64
  %315 = load i8, i8* @g_425, align 1, !tbaa !9
  %316 = sext i8 %315 to i64
  %317 = load i16, i16* @g_426, align 2, !tbaa !10
  %318 = sext i16 %317 to i32
  %319 = add nsw i32 %318, 6
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [9 x [3 x [7 x i8]]], [9 x [3 x [7 x i8]]]* @g_857, i32 0, i64 %320
  %322 = getelementptr inbounds [3 x [7 x i8]], [3 x [7 x i8]]* %321, i32 0, i64 %316
  %323 = getelementptr inbounds [7 x i8], [7 x i8]* %322, i32 0, i64 %314
  %324 = load i8, i8* %323, align 1, !tbaa !9
  %325 = sext i8 %324 to i16
  store i16 %325, i16* %1
  store i32 1, i32* %4
  %326 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %326) #1
  %327 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #1
  %328 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %328) #1
  br label %335
                                                  ; No predecessors!
  %330 = load i16, i16* @g_426, align 2, !tbaa !10
  %331 = sext i16 %330 to i32
  %332 = sub nsw i32 %331, 1
  %333 = trunc i32 %332 to i16
  store i16 %333, i16* @g_426, align 2, !tbaa !10
  br label %303

; <label>:334                                     ; preds = %303
  store i32 0, i32* %4
  br label %335

; <label>:335                                     ; preds = %334, %307
  %336 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %336) #1
  %337 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %337) #1
  %338 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %338) #1
  %339 = bitcast i32* %l_1210 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %339) #1
  %cleanup.dest = load i32, i32* %4
  switch i32 %cleanup.dest, label %887 [
    i32 0, label %340
  ]

; <label>:340                                     ; preds = %335
  br label %341

; <label>:341                                     ; preds = %340
  %342 = load i64, i64* @g_842, align 8, !tbaa !7
  %343 = sub nsw i64 %342, 1
  store i64 %343, i64* @g_842, align 8, !tbaa !7
  br label %285

; <label>:344                                     ; preds = %285
  store i16 0, i16* @g_30, align 2, !tbaa !10
  br label %345

; <label>:345                                     ; preds = %881, %344
  %346 = load i16, i16* @g_30, align 2, !tbaa !10
  %347 = sext i16 %346 to i32
  %348 = icmp sle i32 %347, 2
  br i1 %348, label %349, label %886

; <label>:349                                     ; preds = %345
  %350 = bitcast [1 x i32**]* %l_1211 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %350) #1
  %351 = bitcast i16** %l_1254 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %351) #1
  store i16* @g_265, i16** %l_1254, align 8, !tbaa !5
  %352 = bitcast [2 x [3 x [5 x i64]]]* %l_1255 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %352) #1
  %353 = bitcast i8** %l_1278 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %353) #1
  store i8* @g_291, i8** %l_1278, align 8, !tbaa !5
  %354 = bitcast i32* %l_1301 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %354) #1
  store i32 -1713671819, i32* %l_1301, align 4, !tbaa !1
  %355 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %355) #1
  %356 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %356) #1
  %357 = bitcast i32* %k12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %357) #1
  store i32 0, i32* %i10, align 4, !tbaa !1
  br label %358

; <label>:358                                     ; preds = %365, %349
  %359 = load i32, i32* %i10, align 4, !tbaa !1
  %360 = icmp slt i32 %359, 1
  br i1 %360, label %361, label %368

; <label>:361                                     ; preds = %358
  %362 = load i32, i32* %i10, align 4, !tbaa !1
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [1 x i32**], [1 x i32**]* %l_1211, i32 0, i64 %363
  store i32** null, i32*** %364, align 8, !tbaa !5
  br label %365

; <label>:365                                     ; preds = %361
  %366 = load i32, i32* %i10, align 4, !tbaa !1
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %i10, align 4, !tbaa !1
  br label %358

; <label>:368                                     ; preds = %358
  store i32 0, i32* %i10, align 4, !tbaa !1
  br label %369

; <label>:369                                     ; preds = %398, %368
  %370 = load i32, i32* %i10, align 4, !tbaa !1
  %371 = icmp slt i32 %370, 2
  br i1 %371, label %372, label %401

; <label>:372                                     ; preds = %369
  store i32 0, i32* %j11, align 4, !tbaa !1
  br label %373

; <label>:373                                     ; preds = %394, %372
  %374 = load i32, i32* %j11, align 4, !tbaa !1
  %375 = icmp slt i32 %374, 3
  br i1 %375, label %376, label %397

; <label>:376                                     ; preds = %373
  store i32 0, i32* %k12, align 4, !tbaa !1
  br label %377

; <label>:377                                     ; preds = %390, %376
  %378 = load i32, i32* %k12, align 4, !tbaa !1
  %379 = icmp slt i32 %378, 5
  br i1 %379, label %380, label %393

; <label>:380                                     ; preds = %377
  %381 = load i32, i32* %k12, align 4, !tbaa !1
  %382 = sext i32 %381 to i64
  %383 = load i32, i32* %j11, align 4, !tbaa !1
  %384 = sext i32 %383 to i64
  %385 = load i32, i32* %i10, align 4, !tbaa !1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [2 x [3 x [5 x i64]]], [2 x [3 x [5 x i64]]]* %l_1255, i32 0, i64 %386
  %388 = getelementptr inbounds [3 x [5 x i64]], [3 x [5 x i64]]* %387, i32 0, i64 %384
  %389 = getelementptr inbounds [5 x i64], [5 x i64]* %388, i32 0, i64 %382
  store i64 -8, i64* %389, align 8, !tbaa !7
  br label %390

; <label>:390                                     ; preds = %380
  %391 = load i32, i32* %k12, align 4, !tbaa !1
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %k12, align 4, !tbaa !1
  br label %377

; <label>:393                                     ; preds = %377
  br label %394

; <label>:394                                     ; preds = %393
  %395 = load i32, i32* %j11, align 4, !tbaa !1
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %j11, align 4, !tbaa !1
  br label %373

; <label>:397                                     ; preds = %373
  br label %398

; <label>:398                                     ; preds = %397
  %399 = load i32, i32* %i10, align 4, !tbaa !1
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %i10, align 4, !tbaa !1
  br label %369

; <label>:401                                     ; preds = %369
  store i32* %l_1188, i32** %l_1209, align 8, !tbaa !5
  %402 = load i8, i8* %l_1220, align 1, !tbaa !9
  %403 = add i8 %402, 1
  store i8 %403, i8* %l_1220, align 1, !tbaa !9
  %404 = load i32, i32* @g_372, align 4, !tbaa !1
  %405 = zext i32 %404 to i64
  %406 = load i32, i32* @g_372, align 4, !tbaa !1
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds [5 x [8 x i64]], [5 x [8 x i64]]* @g_154, i32 0, i64 %407
  %409 = getelementptr inbounds [8 x i64], [8 x i64]* %408, i32 0, i64 %405
  %410 = load i64, i64* %409, align 8, !tbaa !7
  %411 = load i16, i16* @g_30, align 2, !tbaa !10
  %412 = sext i16 %411 to i32
  %413 = add nsw i32 %412, 1
  %414 = sext i32 %413 to i64
  %415 = load i32, i32* @g_372, align 4, !tbaa !1
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds [5 x [8 x i64]], [5 x [8 x i64]]* @g_154, i32 0, i64 %416
  %418 = getelementptr inbounds [8 x i64], [8 x i64]* %417, i32 0, i64 %414
  %419 = load i64, i64* %418, align 8, !tbaa !7
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %424

; <label>:421                                     ; preds = %401
  %422 = load i64, i64* %l_1246, align 8, !tbaa !7
  %423 = icmp slt i64 %422, 165
  br label %424

; <label>:424                                     ; preds = %421, %401
  %425 = phi i1 [ false, %401 ], [ %423, %421 ]
  %426 = zext i1 %425 to i32
  %427 = load i8, i8* %3, align 1, !tbaa !9
  %428 = zext i8 %427 to i32
  %429 = trunc i32 %428 to i16
  %430 = load i8, i8* @g_291, align 1, !tbaa !9
  %431 = sext i8 %430 to i64
  %432 = load i16, i16* %2, align 2, !tbaa !10
  %433 = sext i16 %432 to i32
  %434 = load i32*, i32** %l_1168, align 8, !tbaa !5
  %435 = load i32, i32* %434, align 4, !tbaa !1
  %436 = and i32 %435, %433
  store i32 %436, i32* %434, align 4, !tbaa !1
  %437 = sext i32 %436 to i64
  %438 = xor i64 %437, -1
  %439 = icmp sge i64 %431, %438
  %440 = zext i1 %439 to i32
  %441 = load i32*, i32** @g_334, align 8, !tbaa !5
  %442 = load i32, i32* %441, align 4, !tbaa !1
  %443 = icmp eq i32 %440, %442
  %444 = zext i1 %443 to i32
  %445 = trunc i32 %444 to i16
  %446 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %429, i16 signext %445)
  %447 = sext i16 %446 to i32
  %448 = load i8, i8* %3, align 1, !tbaa !9
  %449 = zext i8 %448 to i32
  %450 = icmp sgt i32 %447, %449
  %451 = zext i1 %450 to i32
  %452 = call i32 @safe_unary_minus_func_uint32_t_u(i32 %451)
  %453 = load i32*, i32** %l_1168, align 8, !tbaa !5
  %454 = load i32, i32* %453, align 4, !tbaa !1
  %455 = getelementptr inbounds [4 x i8], [4 x i8]* %l_1215, i32 0, i64 2
  %456 = load i8, i8* %455, align 1, !tbaa !9
  %457 = sext i8 %456 to i32
  %458 = icmp sle i32 %454, %457
  %459 = zext i1 %458 to i32
  %460 = sext i32 %459 to i64
  %461 = call i64 @safe_unary_minus_func_int64_t_s(i64 %460)
  %462 = trunc i64 %461 to i16
  %463 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %462, i32 14)
  %464 = zext i16 %463 to i32
  %465 = and i32 %426, %464
  %466 = load i8, i8* %3, align 1, !tbaa !9
  %467 = zext i8 %466 to i64
  %468 = icmp ule i64 %410, %467
  %469 = zext i1 %468 to i32
  %470 = trunc i32 %469 to i16
  %471 = load i16*, i16** %l_1254, align 8, !tbaa !5
  store i16 %470, i16* %471, align 2, !tbaa !10
  %472 = sext i16 %470 to i64
  %473 = icmp slt i64 %472, 0
  %474 = zext i1 %473 to i32
  %475 = call i32 @safe_unary_minus_func_uint32_t_u(i32 %474)
  %476 = zext i32 %475 to i64
  %477 = icmp sge i64 %476, 1
  %478 = zext i1 %477 to i32
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [2 x [3 x [5 x i64]]], [2 x [3 x [5 x i64]]]* %l_1255, i32 0, i64 1
  %481 = getelementptr inbounds [3 x [5 x i64]], [3 x [5 x i64]]* %480, i32 0, i64 1
  %482 = getelementptr inbounds [5 x i64], [5 x i64]* %481, i32 0, i64 1
  %483 = load i64, i64* %482, align 8, !tbaa !7
  %484 = icmp ule i64 %479, %483
  %485 = zext i1 %484 to i32
  %486 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext 0, i8 zeroext -27)
  %487 = zext i8 %486 to i16
  %488 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %487, i32 4)
  %489 = sext i16 %488 to i64
  %490 = or i64 %489, -4491689454512818201
  %491 = trunc i64 %490 to i16
  %492 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %491, i16 zeroext 8087)
  %493 = zext i16 %492 to i32
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %498, label %495

; <label>:495                                     ; preds = %424
  %496 = load i32, i32* %l_1216, align 4, !tbaa !1
  %497 = icmp ne i32 %496, 0
  br label %498

; <label>:498                                     ; preds = %495, %424
  %499 = phi i1 [ true, %424 ], [ %497, %495 ]
  %500 = zext i1 %499 to i32
  %501 = trunc i32 %500 to i16
  %502 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %501, i16 signext 23598)
  %503 = sext i16 %502 to i32
  %504 = load i8, i8* %3, align 1, !tbaa !9
  %505 = zext i8 %504 to i32
  %506 = icmp sgt i32 %503, %505
  %507 = zext i1 %506 to i32
  %508 = sext i32 %507 to i64
  %509 = icmp sge i64 %508, 5195810730931710930
  %510 = zext i1 %509 to i32
  %511 = sext i32 %510 to i64
  %512 = load i64*, i64** %l_1205, align 8, !tbaa !5
  %513 = load i64, i64* %512, align 8, !tbaa !7
  %514 = xor i64 %513, %511
  store i64 %514, i64* %512, align 8, !tbaa !7
  %515 = call i64 @safe_div_func_int64_t_s_s(i64 %514, i64 -7)
  %516 = trunc i64 %515 to i8
  %517 = load i16, i16* %2, align 2, !tbaa !10
  %518 = trunc i16 %517 to i8
  %519 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %516, i8 zeroext %518)
  %520 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %519, i8 signext -57)
  %521 = sext i8 %520 to i64
  %522 = load i64*, i64** @g_341, align 8, !tbaa !5
  %523 = load i64, i64* %522, align 8, !tbaa !7
  %524 = call i64 @safe_div_func_uint64_t_u_u(i64 %521, i64 %523)
  %525 = trunc i64 %524 to i8
  %526 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %525, i32 1)
  %527 = load i32, i32* %l_1216, align 4, !tbaa !1
  %528 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %526, i32 %527)
  %529 = icmp ne i8 %528, 0
  br i1 %529, label %530, label %551

; <label>:530                                     ; preds = %498
  %531 = bitcast i16* %l_1262 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %531) #1
  store i16 -2319, i16* %l_1262, align 2, !tbaa !10
  %532 = load i16, i16* %l_1262, align 2, !tbaa !10
  %533 = add i16 %532, 1
  store i16 %533, i16* %l_1262, align 2, !tbaa !10
  store i32 2, i32* %l_1216, align 4, !tbaa !1
  br label %534

; <label>:534                                     ; preds = %546, %530
  %535 = load i32, i32* %l_1216, align 4, !tbaa !1
  %536 = icmp sge i32 %535, 0
  br i1 %536, label %537, label %549

; <label>:537                                     ; preds = %534
  %538 = load i8, i8* %3, align 1, !tbaa !9
  %539 = icmp ne i8 %538, 0
  br i1 %539, label %540, label %541

; <label>:540                                     ; preds = %537
  br label %549

; <label>:541                                     ; preds = %537
  %542 = load i8*, i8** %l_1204, align 8, !tbaa !5
  store i8 3, i8* %542, align 1, !tbaa !9
  %543 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext 3, i32 8)
  %544 = zext i16 %543 to i32
  %545 = load i32*, i32** %l_1209, align 8, !tbaa !5
  store i32 %544, i32* %545, align 4, !tbaa !1
  br label %546

; <label>:546                                     ; preds = %541
  %547 = load i32, i32* %l_1216, align 4, !tbaa !1
  %548 = sub nsw i32 %547, 1
  store i32 %548, i32* %l_1216, align 4, !tbaa !1
  br label %534

; <label>:549                                     ; preds = %540, %534
  %550 = bitcast i16* %l_1262 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %550) #1
  br label %556

; <label>:551                                     ; preds = %498
  %552 = load volatile i32**, i32*** @g_179, align 8, !tbaa !5
  %553 = load i32*, i32** %552, align 8, !tbaa !5
  %554 = load i32, i32* %553, align 4, !tbaa !1
  %555 = load i32*, i32** %l_1168, align 8, !tbaa !5
  store i32 %554, i32* %555, align 4, !tbaa !1
  br label %556

; <label>:556                                     ; preds = %551, %549
  %557 = load i64*, i64** @g_341, align 8, !tbaa !5
  %558 = load i64, i64* %557, align 8, !tbaa !7
  %559 = add i64 %558, 1
  store i64 %559, i64* %557, align 8, !tbaa !7
  %560 = load i64**, i64*** %l_1273, align 8, !tbaa !5
  %561 = load i64**, i64*** %l_1274, align 8, !tbaa !5
  %562 = icmp eq i64** %560, %561
  %563 = zext i1 %562 to i32
  %564 = load i16*, i16** %l_1254, align 8, !tbaa !5
  %565 = load i16, i16* %564, align 2, !tbaa !10
  %566 = sext i16 %565 to i32
  %567 = or i32 %566, %563
  %568 = trunc i32 %567 to i16
  store i16 %568, i16* %564, align 2, !tbaa !10
  %569 = sext i16 %568 to i32
  %570 = load i16, i16* %2, align 2, !tbaa !10
  %571 = sext i16 %570 to i32
  %572 = and i32 %569, %571
  %573 = load i8, i8* %3, align 1, !tbaa !9
  %574 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %573, i32 6)
  %575 = zext i8 %574 to i64
  %576 = icmp slt i64 217, %575
  %577 = zext i1 %576 to i32
  %578 = sext i32 %577 to i64
  %579 = call i64 @safe_unary_minus_func_uint64_t_u(i64 1)
  %580 = icmp eq i64 %578, %579
  %581 = zext i1 %580 to i32
  %582 = load i16, i16* %2, align 2, !tbaa !10
  %583 = sext i16 %582 to i32
  %584 = icmp slt i32 %581, %583
  br i1 %584, label %585, label %586

; <label>:585                                     ; preds = %556
  br label %586

; <label>:586                                     ; preds = %585, %556
  %587 = phi i1 [ false, %556 ], [ true, %585 ]
  %588 = zext i1 %587 to i32
  %589 = load i32*, i32** @g_824, align 8, !tbaa !5
  store i32 %588, i32* %589, align 4, !tbaa !1
  %590 = load i32**, i32*** @g_333, align 8, !tbaa !5
  %591 = load i32*, i32** %590, align 8, !tbaa !5
  %592 = load i32, i32* %591, align 4, !tbaa !1
  %593 = load i32*, i32** @g_334, align 8, !tbaa !5
  %594 = load i32, i32* %593, align 4, !tbaa !1
  %595 = xor i32 %592, %594
  %596 = load i32*, i32** %l_1168, align 8, !tbaa !5
  %597 = load i32, i32* %596, align 4, !tbaa !1
  %598 = sext i32 %597 to i64
  %599 = and i64 %598, 625160398475626030
  %600 = load i16, i16* %2, align 2, !tbaa !10
  %601 = sext i16 %600 to i64
  %602 = or i64 %599, %601
  %603 = load i32****, i32***** @g_1279, align 8, !tbaa !5
  %604 = icmp eq i32**** %603, null
  %605 = zext i1 %604 to i32
  %606 = xor i32 %572, %605
  %607 = sext i32 %606 to i64
  %608 = xor i64 %558, %607
  %609 = load i8, i8* %3, align 1, !tbaa !9
  %610 = zext i8 %609 to i32
  %611 = load i8, i8* %3, align 1, !tbaa !9
  %612 = zext i8 %611 to i32
  %613 = or i32 %610, %612
  %614 = trunc i32 %613 to i16
  %615 = load i8, i8* %3, align 1, !tbaa !9
  %616 = zext i8 %615 to i32
  %617 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %614, i32 %616)
  %618 = sext i16 %617 to i64
  %619 = icmp sge i64 -8, %618
  br i1 %619, label %620, label %853

; <label>:620                                     ; preds = %586
  %621 = bitcast i32* %l_1289 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %621) #1
  store i32 1, i32* %l_1289, align 4, !tbaa !1
  %622 = load i32, i32* %l_1260, align 4, !tbaa !1
  %623 = trunc i32 %622 to i8
  %624 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %623, i32 6)
  %625 = sext i8 %624 to i32
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %641

; <label>:627                                     ; preds = %620
  %628 = load i8, i8* %3, align 1, !tbaa !9
  %629 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %628, i32 4)
  %630 = sext i8 %629 to i32
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %641

; <label>:632                                     ; preds = %627
  %633 = load volatile i32**, i32*** @g_442, align 8, !tbaa !5
  %634 = load i32*, i32** %633, align 8, !tbaa !5
  %635 = load i32, i32* %634, align 4, !tbaa !1
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %638

; <label>:637                                     ; preds = %632
  store i32 24, i32* %4
  br label %850

; <label>:638                                     ; preds = %632
  %639 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i64 0), align 4, !tbaa !1
  %640 = trunc i32 %639 to i16
  store i16 %640, i16* %1
  store i32 1, i32* %4
  br label %850

; <label>:641                                     ; preds = %627, %620
  %642 = bitcast [4 x [2 x [6 x i64]]]* %l_1288 to i8*
  call void @llvm.lifetime.start(i64 384, i8* %642) #1
  %643 = bitcast [4 x [2 x [6 x i64]]]* %l_1288 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %643, i8* bitcast ([4 x [2 x [6 x i64]]]* @func_8.l_1288 to i8*), i64 384, i32 16, i1 false)
  %644 = bitcast i32*** %l_1298 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %644) #1
  store i32** @g_824, i32*** %l_1298, align 8, !tbaa !5
  %645 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %645) #1
  %646 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %646) #1
  %647 = bitcast i32* %k15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %647) #1
  %648 = load i32, i32* %l_1289, align 4, !tbaa !1
  %649 = add i32 %648, -1
  store i32 %649, i32* %l_1289, align 4, !tbaa !1
  %650 = load i32, i32* %l_1216, align 4, !tbaa !1
  %651 = load i64*, i64** @g_341, align 8, !tbaa !5
  %652 = load i64, i64* %651, align 8, !tbaa !7
  %653 = add i64 %652, -1
  store i64 %653, i64* %651, align 8, !tbaa !7
  %654 = load i32*, i32** %l_1209, align 8, !tbaa !5
  %655 = load i32*, i32** %l_1168, align 8, !tbaa !5
  %656 = load i32**, i32*** %l_1298, align 8, !tbaa !5
  store i32* %655, i32** %656, align 8, !tbaa !5
  %657 = icmp ne i32* %654, %655
  br i1 %657, label %662, label %658

; <label>:658                                     ; preds = %641
  %659 = load i16, i16* %2, align 2, !tbaa !10
  %660 = sext i16 %659 to i32
  %661 = icmp ne i32 %660, 0
  br label %662

; <label>:662                                     ; preds = %658, %641
  %663 = phi i1 [ true, %641 ], [ %661, %658 ]
  %664 = zext i1 %663 to i32
  %665 = trunc i32 %664 to i16
  %666 = load i16*, i16** %l_1254, align 8, !tbaa !5
  store i16 %665, i16* %666, align 2, !tbaa !10
  %667 = load i32, i32* %l_1301, align 4, !tbaa !1
  %668 = load i64**, i64*** @g_468, align 8, !tbaa !5
  %669 = load i64*, i64** %668, align 8, !tbaa !5
  %670 = icmp ne i64* null, %669
  %671 = zext i1 %670 to i32
  %672 = xor i32 %667, %671
  %673 = sext i32 %672 to i64
  %674 = icmp sgt i64 0, %673
  %675 = zext i1 %674 to i32
  %676 = sext i32 %675 to i64
  %677 = icmp slt i64 %676, 89
  br i1 %677, label %682, label %678

; <label>:678                                     ; preds = %662
  %679 = load i8, i8* %3, align 1, !tbaa !9
  %680 = zext i8 %679 to i32
  %681 = icmp ne i32 %680, 0
  br label %682

; <label>:682                                     ; preds = %678, %662
  %683 = phi i1 [ true, %662 ], [ %681, %678 ]
  %684 = zext i1 %683 to i32
  %685 = trunc i32 %684 to i16
  %686 = load i16, i16* @g_293, align 2, !tbaa !10
  %687 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %685, i16 zeroext %686)
  %688 = zext i16 %687 to i64
  %689 = xor i64 %653, %688
  %690 = load i32, i32* %l_1216, align 4, !tbaa !1
  %691 = call i32 @safe_sub_func_uint32_t_u_u(i32 0, i32 %690)
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %697

; <label>:693                                     ; preds = %682
  %694 = load i64*, i64** @g_341, align 8, !tbaa !5
  %695 = load i64, i64* %694, align 8, !tbaa !7
  %696 = icmp ne i64 %695, 0
  br label %697

; <label>:697                                     ; preds = %693, %682
  %698 = phi i1 [ false, %682 ], [ %696, %693 ]
  %699 = zext i1 %698 to i32
  %700 = call i32 @safe_sub_func_uint32_t_u_u(i32 1, i32 %699)
  %701 = load i16, i16* %l_1302, align 2, !tbaa !10
  %702 = sext i16 %701 to i32
  %703 = icmp uge i32 %700, %702
  %704 = zext i1 %703 to i32
  %705 = sext i32 %704 to i64
  %706 = icmp eq i64 %705, 2253231901
  br i1 %706, label %707, label %708

; <label>:707                                     ; preds = %697
  br label %708

; <label>:708                                     ; preds = %707, %697
  %709 = phi i1 [ false, %697 ], [ true, %707 ]
  %710 = zext i1 %709 to i32
  %711 = load volatile i16, i16* @g_612, align 2, !tbaa !10
  %712 = sext i16 %711 to i32
  %713 = and i32 %710, %712
  %714 = load i32*, i32** %l_1209, align 8, !tbaa !5
  store i32 %713, i32* %714, align 4, !tbaa !1
  %715 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 %713, i32* %715, align 4, !tbaa !1
  %716 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext -104)
  %717 = zext i8 %716 to i32
  %718 = load i32*, i32** @g_126, align 8, !tbaa !5
  %719 = load i32, i32* %718, align 4, !tbaa !1
  %720 = xor i32 %719, %717
  store i32 %720, i32* %718, align 4, !tbaa !1
  %721 = load i32*, i32** %l_1209, align 8, !tbaa !5
  store i32 %720, i32* %721, align 4, !tbaa !1
  %722 = bitcast i32* %k15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %722) #1
  %723 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %723) #1
  %724 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %724) #1
  %725 = bitcast i32*** %l_1298 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %725) #1
  %726 = bitcast [4 x [2 x [6 x i64]]]* %l_1288 to i8*
  call void @llvm.lifetime.end(i64 384, i8* %726) #1
  br label %727

; <label>:727                                     ; preds = %708
  store i32 2, i32* %l_1212, align 4, !tbaa !1
  br label %728

; <label>:728                                     ; preds = %739, %727
  %729 = load i32, i32* %l_1212, align 4, !tbaa !1
  %730 = icmp sge i32 %729, 0
  br i1 %730, label %731, label %742

; <label>:731                                     ; preds = %728
  %732 = load i16, i16* @g_605, align 2, !tbaa !10
  %733 = zext i16 %732 to i32
  %734 = load i8, i8* %3, align 1, !tbaa !9
  %735 = zext i8 %734 to i32
  %736 = icmp eq i32 %733, %735
  %737 = zext i1 %736 to i32
  %738 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 %737, i32* %738, align 4, !tbaa !1
  br label %739

; <label>:739                                     ; preds = %731
  %740 = load i32, i32* %l_1212, align 4, !tbaa !1
  %741 = sub nsw i32 %740, 1
  store i32 %741, i32* %l_1212, align 4, !tbaa !1
  br label %728

; <label>:742                                     ; preds = %728
  store i16 0, i16* %l_1302, align 2, !tbaa !10
  br label %743

; <label>:743                                     ; preds = %844, %742
  %744 = load i16, i16* %l_1302, align 2, !tbaa !10
  %745 = sext i16 %744 to i32
  %746 = icmp sle i32 %745, 2
  br i1 %746, label %747, label %849

; <label>:747                                     ; preds = %743
  %748 = bitcast [3 x i32]* %l_1310 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %748) #1
  %749 = bitcast i32* %l_1322 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %749) #1
  store i32 1, i32* %l_1322, align 4, !tbaa !1
  %750 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %750) #1
  store i32 0, i32* %i16, align 4, !tbaa !1
  br label %751

; <label>:751                                     ; preds = %758, %747
  %752 = load i32, i32* %i16, align 4, !tbaa !1
  %753 = icmp slt i32 %752, 3
  br i1 %753, label %754, label %761

; <label>:754                                     ; preds = %751
  %755 = load i32, i32* %i16, align 4, !tbaa !1
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds [3 x i32], [3 x i32]* %l_1310, i32 0, i64 %756
  store i32 0, i32* %757, align 4, !tbaa !1
  br label %758

; <label>:758                                     ; preds = %754
  %759 = load i32, i32* %i16, align 4, !tbaa !1
  %760 = add nsw i32 %759, 1
  store i32 %760, i32* %i16, align 4, !tbaa !1
  br label %751

; <label>:761                                     ; preds = %751
  %762 = getelementptr inbounds [4 x i8], [4 x i8]* %l_1215, i32 0, i64 3
  %763 = load i8, i8* %762, align 1, !tbaa !9
  %764 = load i16, i16* %2, align 2, !tbaa !10
  %765 = sext i16 %764 to i32
  %766 = getelementptr inbounds [3 x i32], [3 x i32]* %l_1310, i32 0, i64 0
  %767 = load i32, i32* %766, align 4, !tbaa !1
  %768 = load i8, i8* %3, align 1, !tbaa !9
  %769 = zext i8 %768 to i32
  %770 = load i16, i16* %2, align 2, !tbaa !10
  %771 = getelementptr inbounds [1 x [9 x i32**]], [1 x [9 x i32**]]* %l_1319, i32 0, i64 0
  %772 = getelementptr inbounds [9 x i32**], [9 x i32**]* %771, i32 0, i64 5
  %773 = load i32**, i32*** %772, align 8, !tbaa !5
  %774 = load i32**, i32*** @g_1320, align 8, !tbaa !5
  %775 = icmp eq i32** %773, %774
  %776 = zext i1 %775 to i32
  %777 = trunc i32 %776 to i8
  %778 = load i16***, i16**** %l_1321, align 8, !tbaa !5
  %779 = icmp ne i16*** null, %778
  %780 = zext i1 %779 to i32
  %781 = trunc i32 %780 to i8
  %782 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %777, i8 zeroext %781)
  %783 = zext i8 %782 to i32
  %784 = icmp eq i32 %769, %783
  %785 = zext i1 %784 to i32
  %786 = trunc i32 %785 to i16
  %787 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %786, i16 signext 1)
  %788 = load i8, i8* %3, align 1, !tbaa !9
  %789 = zext i8 %788 to i16
  %790 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %787, i16 signext %789)
  %791 = sext i16 %790 to i32
  %792 = load i16*, i16** %l_1254, align 8, !tbaa !5
  %793 = load i16, i16* %792, align 2, !tbaa !10
  %794 = sext i16 %793 to i32
  %795 = xor i32 %794, %791
  %796 = trunc i32 %795 to i16
  store i16 %796, i16* %792, align 2, !tbaa !10
  %797 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %796, i32 0)
  %798 = load i8, i8* %3, align 1, !tbaa !9
  %799 = zext i8 %798 to i32
  %800 = load i8, i8* %3, align 1, !tbaa !9
  %801 = zext i8 %800 to i32
  %802 = icmp sle i32 %799, %801
  %803 = zext i1 %802 to i32
  %804 = or i32 %765, %803
  %805 = trunc i32 %804 to i8
  %806 = load i32*, i32** %l_1209, align 8, !tbaa !5
  %807 = load i32, i32* %806, align 4, !tbaa !1
  %808 = trunc i32 %807 to i8
  %809 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %805, i8 signext %808)
  %810 = sext i8 %809 to i32
  %811 = load i32*, i32** %l_1168, align 8, !tbaa !5
  %812 = load i32, i32* %811, align 4, !tbaa !1
  %813 = call i32 @safe_add_func_int32_t_s_s(i32 %810, i32 %812)
  %814 = load i16, i16* %2, align 2, !tbaa !10
  %815 = sext i16 %814 to i32
  %816 = or i32 %813, %815
  %817 = icmp ne i32 %816, 0
  br i1 %817, label %822, label %818

; <label>:818                                     ; preds = %761
  %819 = load i8, i8* %3, align 1, !tbaa !9
  %820 = zext i8 %819 to i32
  %821 = icmp ne i32 %820, 0
  br label %822

; <label>:822                                     ; preds = %818, %761
  %823 = phi i1 [ true, %761 ], [ %821, %818 ]
  br i1 %823, label %825, label %824

; <label>:824                                     ; preds = %822
  br label %825

; <label>:825                                     ; preds = %824, %822
  %826 = phi i1 [ true, %822 ], [ true, %824 ]
  %827 = zext i1 %826 to i32
  %828 = trunc i32 %827 to i16
  %829 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %828, i16 signext -24353)
  %830 = load i16, i16* %2, align 2, !tbaa !10
  %831 = sext i16 %830 to i64
  %832 = icmp sge i64 %831, 85
  %833 = zext i1 %832 to i32
  %834 = load i32, i32* %l_1322, align 4, !tbaa !1
  %835 = or i32 %834, %833
  store i32 %835, i32* %l_1322, align 4, !tbaa !1
  %836 = load i8, i8* %3, align 1, !tbaa !9
  %837 = zext i8 %836 to i32
  %838 = load i32*, i32** %l_1168, align 8, !tbaa !5
  store i32 %837, i32* %838, align 4, !tbaa !1
  %839 = load i8, i8* %3, align 1, !tbaa !9
  %840 = zext i8 %839 to i16
  store i16 %840, i16* %1
  store i32 1, i32* %4
  %841 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %841) #1
  %842 = bitcast i32* %l_1322 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %842) #1
  %843 = bitcast [3 x i32]* %l_1310 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %843) #1
  br label %850
                                                  ; No predecessors!
  %845 = load i16, i16* %l_1302, align 2, !tbaa !10
  %846 = sext i16 %845 to i32
  %847 = add nsw i32 %846, 1
  %848 = trunc i32 %847 to i16
  store i16 %848, i16* %l_1302, align 2, !tbaa !10
  br label %743

; <label>:849                                     ; preds = %743
  store i32 0, i32* %4
  br label %850

; <label>:850                                     ; preds = %849, %825, %638, %637
  %851 = bitcast i32* %l_1289 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %851) #1
  %cleanup.dest.17 = load i32, i32* %4
  switch i32 %cleanup.dest.17, label %871 [
    i32 0, label %852
  ]

; <label>:852                                     ; preds = %850
  br label %870

; <label>:853                                     ; preds = %586
  store i32 2, i32* %l_1301, align 4, !tbaa !1
  br label %854

; <label>:854                                     ; preds = %866, %853
  %855 = load i32, i32* %l_1301, align 4, !tbaa !1
  %856 = icmp sge i32 %855, 0
  br i1 %856, label %857, label %869

; <label>:857                                     ; preds = %854
  %858 = load i16, i16* %2, align 2, !tbaa !10
  %859 = icmp ne i16 %858, 0
  br i1 %859, label %860, label %861

; <label>:860                                     ; preds = %857
  br label %869

; <label>:861                                     ; preds = %857
  %862 = load i16, i16* @g_293, align 2, !tbaa !10
  %863 = icmp ne i16 %862, 0
  br i1 %863, label %864, label %865

; <label>:864                                     ; preds = %861
  store i32 5, i32* %4
  br label %871

; <label>:865                                     ; preds = %861
  br label %866

; <label>:866                                     ; preds = %865
  %867 = load i32, i32* %l_1301, align 4, !tbaa !1
  %868 = sub nsw i32 %867, 1
  store i32 %868, i32* %l_1301, align 4, !tbaa !1
  br label %854

; <label>:869                                     ; preds = %860, %854
  br label %870

; <label>:870                                     ; preds = %869, %852
  store i32 0, i32* %4
  br label %871

; <label>:871                                     ; preds = %870, %864, %850
  %872 = bitcast i32* %k12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %872) #1
  %873 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %873) #1
  %874 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %874) #1
  %875 = bitcast i32* %l_1301 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %875) #1
  %876 = bitcast i8** %l_1278 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %876) #1
  %877 = bitcast [2 x [3 x [5 x i64]]]* %l_1255 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %877) #1
  %878 = bitcast i16** %l_1254 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %878) #1
  %879 = bitcast [1 x i32**]* %l_1211 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %879) #1
  %cleanup.dest.18 = load i32, i32* %4
  switch i32 %cleanup.dest.18, label %887 [
    i32 0, label %880
    i32 24, label %886
  ]

; <label>:880                                     ; preds = %871
  br label %881

; <label>:881                                     ; preds = %880
  %882 = load i16, i16* @g_30, align 2, !tbaa !10
  %883 = sext i16 %882 to i32
  %884 = add nsw i32 %883, 1
  %885 = trunc i32 %884 to i16
  store i16 %885, i16* @g_30, align 2, !tbaa !10
  br label %345

; <label>:886                                     ; preds = %871, %345
  store i32 0, i32* %4
  br label %887

; <label>:887                                     ; preds = %886, %871, %335
  %888 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %888) #1
  %889 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %889) #1
  %890 = bitcast i16**** %l_1321 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %890) #1
  %891 = bitcast [1 x [9 x i32**]]* %l_1319 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %891) #1
  %892 = bitcast i64*** %l_1274 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %892) #1
  %893 = bitcast i32* %l_1260 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %893) #1
  %894 = bitcast i32* %l_1259 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %894) #1
  %895 = bitcast i32* %l_1257 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %895) #1
  %896 = bitcast i32* %l_1256 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %896) #1
  %897 = bitcast %union.U0* %l_1244 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %897) #1
  %898 = bitcast i32* %l_1216 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %898) #1
  %899 = bitcast [4 x i8]* %l_1215 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %899) #1
  %cleanup.dest.19 = load i32, i32* %4
  switch i32 %cleanup.dest.19, label %971 [
    i32 0, label %900
  ]

; <label>:900                                     ; preds = %887
  br label %901

; <label>:901                                     ; preds = %900
  %902 = load i32, i32* @g_372, align 4, !tbaa !1
  %903 = add i32 %902, 1
  store i32 %903, i32* @g_372, align 4, !tbaa !1
  br label %247

; <label>:904                                     ; preds = %247
  store i32 0, i32* @g_123, align 4, !tbaa !1
  br label %905

; <label>:905                                     ; preds = %967, %904
  %906 = load i32, i32* @g_123, align 4, !tbaa !1
  %907 = icmp ule i32 %906, 2
  br i1 %907, label %908, label %970

; <label>:908                                     ; preds = %905
  %909 = bitcast %union.U0* %l_1335 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %909) #1
  %910 = bitcast %union.U0* %l_1335 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %910, i8* bitcast (%union.U0* @func_8.l_1335 to i8*), i64 4, i32 4, i1 false)
  %911 = bitcast i64* %l_1356 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %911) #1
  store i64 -9046701365371909401, i64* %l_1356, align 8, !tbaa !7
  %912 = bitcast i16** %l_1387 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %912) #1
  store i16* null, i16** %l_1387, align 8, !tbaa !5
  %913 = bitcast i16*** %l_1386 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %913) #1
  store i16** %l_1387, i16*** %l_1386, align 8, !tbaa !5
  %914 = bitcast [7 x [8 x i32]]* %l_1401 to i8*
  call void @llvm.lifetime.start(i64 224, i8* %914) #1
  %915 = bitcast [7 x [8 x i32]]* %l_1401 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %915, i8* bitcast ([7 x [8 x i32]]* @func_8.l_1401 to i8*), i64 224, i32 16, i1 false)
  %916 = bitcast i16****** %l_1445 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %916) #1
  store i16***** null, i16****** %l_1445, align 8, !tbaa !5
  %917 = bitcast [10 x i8*]* %l_1453 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %917) #1
  %918 = bitcast i32* %l_1454 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %918) #1
  store i32 1, i32* %l_1454, align 4, !tbaa !1
  %919 = bitcast i64* %l_1464 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %919) #1
  store i64 -1, i64* %l_1464, align 8, !tbaa !7
  %920 = bitcast i32** %l_1498 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %920) #1
  store i32* null, i32** %l_1498, align 8, !tbaa !5
  %921 = bitcast i32* %l_1521 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %921) #1
  store i32 709641725, i32* %l_1521, align 4, !tbaa !1
  %922 = bitcast i16* %l_1522 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %922) #1
  store i16 14227, i16* %l_1522, align 2, !tbaa !10
  %923 = bitcast i32**** %l_1557 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %923) #1
  store i32*** @g_333, i32**** %l_1557, align 8, !tbaa !5
  %924 = bitcast i32* %l_1562 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %924) #1
  store i32 -787768756, i32* %l_1562, align 4, !tbaa !1
  %925 = bitcast i16* %l_1702 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %925) #1
  store i16 -1, i16* %l_1702, align 2, !tbaa !10
  %926 = bitcast i32* %l_1720 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %926) #1
  store i32 -9, i32* %l_1720, align 4, !tbaa !1
  %927 = bitcast i64** %l_1767 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %927) #1
  store i64* @g_438, i64** %l_1767, align 8, !tbaa !5
  %928 = bitcast i32* %l_1808 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %928) #1
  store i32 -534531958, i32* %l_1808, align 4, !tbaa !1
  %929 = bitcast [3 x [9 x [8 x i16]]]* %l_1816 to i8*
  call void @llvm.lifetime.start(i64 432, i8* %929) #1
  %930 = bitcast [3 x [9 x [8 x i16]]]* %l_1816 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %930, i8* bitcast ([3 x [9 x [8 x i16]]]* @func_8.l_1816 to i8*), i64 432, i32 16, i1 false)
  %931 = bitcast i32* %i20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %931) #1
  %932 = bitcast i32* %j21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %932) #1
  %933 = bitcast i32* %k22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %933) #1
  store i32 0, i32* %i20, align 4, !tbaa !1
  br label %934

; <label>:934                                     ; preds = %941, %908
  %935 = load i32, i32* %i20, align 4, !tbaa !1
  %936 = icmp slt i32 %935, 10
  br i1 %936, label %937, label %944

; <label>:937                                     ; preds = %934
  %938 = load i32, i32* %i20, align 4, !tbaa !1
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds [10 x i8*], [10 x i8*]* %l_1453, i32 0, i64 %939
  store i8* @g_959, i8** %940, align 8, !tbaa !5
  br label %941

; <label>:941                                     ; preds = %937
  %942 = load i32, i32* %i20, align 4, !tbaa !1
  %943 = add nsw i32 %942, 1
  store i32 %943, i32* %i20, align 4, !tbaa !1
  br label %934

; <label>:944                                     ; preds = %934
  %945 = bitcast i32* %k22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %945) #1
  %946 = bitcast i32* %j21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %946) #1
  %947 = bitcast i32* %i20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %947) #1
  %948 = bitcast [3 x [9 x [8 x i16]]]* %l_1816 to i8*
  call void @llvm.lifetime.end(i64 432, i8* %948) #1
  %949 = bitcast i32* %l_1808 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %949) #1
  %950 = bitcast i64** %l_1767 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %950) #1
  %951 = bitcast i32* %l_1720 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %951) #1
  %952 = bitcast i16* %l_1702 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %952) #1
  %953 = bitcast i32* %l_1562 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %953) #1
  %954 = bitcast i32**** %l_1557 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %954) #1
  %955 = bitcast i16* %l_1522 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %955) #1
  %956 = bitcast i32* %l_1521 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %956) #1
  %957 = bitcast i32** %l_1498 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %957) #1
  %958 = bitcast i64* %l_1464 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %958) #1
  %959 = bitcast i32* %l_1454 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %959) #1
  %960 = bitcast [10 x i8*]* %l_1453 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %960) #1
  %961 = bitcast i16****** %l_1445 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %961) #1
  %962 = bitcast [7 x [8 x i32]]* %l_1401 to i8*
  call void @llvm.lifetime.end(i64 224, i8* %962) #1
  %963 = bitcast i16*** %l_1386 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %963) #1
  %964 = bitcast i16** %l_1387 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %964) #1
  %965 = bitcast i64* %l_1356 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %965) #1
  %966 = bitcast %union.U0* %l_1335 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %966) #1
  br label %967

; <label>:967                                     ; preds = %944
  %968 = load i32, i32* @g_123, align 4, !tbaa !1
  %969 = add i32 %968, 1
  store i32 %969, i32* @g_123, align 4, !tbaa !1
  br label %905

; <label>:970                                     ; preds = %905
  store i32 0, i32* %4
  br label %971

; <label>:971                                     ; preds = %970, %887
  %972 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %972) #1
  %973 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %973) #1
  %974 = bitcast i16* %l_1825 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %974) #1
  %975 = bitcast i16* %l_1820 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %975) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1784) #1
  %976 = bitcast i32* %l_1732 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %976) #1
  %977 = bitcast i16* %l_1723 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %977) #1
  %978 = bitcast [8 x i8]* %l_1722 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %978) #1
  %979 = bitcast i32* %l_1719 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %979) #1
  %980 = bitcast i32*** %l_1690 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %980) #1
  %981 = bitcast i16* %l_1641 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %981) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1616) #1
  %982 = bitcast i32*** %l_1569 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %982) #1
  %983 = bitcast i16* %l_1553 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %983) #1
  %984 = bitcast i16* %l_1489 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %984) #1
  %985 = bitcast i32* %l_1478 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %985) #1
  %986 = bitcast %union.U0* %l_1476 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %986) #1
  %987 = bitcast i16*** %l_1424 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %987) #1
  %988 = bitcast [5 x [4 x i16*]]* %l_1425 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %988) #1
  %989 = bitcast i16* %l_1378 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %989) #1
  %990 = bitcast i32***** %l_1349 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %990) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1343) #1
  %991 = bitcast i16* %l_1302 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %991) #1
  %992 = bitcast [10 x i32]* %l_1261 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %992) #1
  %993 = bitcast i32* %l_1258 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %993) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1220) #1
  %994 = bitcast i32** %l_1209 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %994) #1
  %995 = bitcast [9 x i64]* %l_1207 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %995) #1
  %996 = bitcast [6 x i64]* %l_1206 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %996) #1
  %997 = bitcast i64** %l_1205 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %997) #1
  %998 = bitcast i8** %l_1204 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %998) #1
  %999 = bitcast i16* %l_1203 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %999) #1
  %1000 = bitcast i32* %l_1188 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1000) #1
  %1001 = bitcast i64** %l_1173 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1001) #1
  %cleanup.dest.23 = load i32, i32* %4
  switch i32 %cleanup.dest.23, label %1010 [
    i32 0, label %1002
    i32 5, label %45
  ]

; <label>:1002                                    ; preds = %971
  br label %1003

; <label>:1003                                    ; preds = %1002
  %1004 = load i8, i8* @g_425, align 1, !tbaa !9
  %1005 = sext i8 %1004 to i32
  %1006 = sub nsw i32 %1005, 1
  %1007 = trunc i32 %1006 to i8
  store i8 %1007, i8* @g_425, align 1, !tbaa !9
  br label %56

; <label>:1008                                    ; preds = %56
  %1009 = load i16, i16* %2, align 2, !tbaa !10
  store i16 %1009, i16* %1
  store i32 1, i32* %4
  br label %1010

; <label>:1010                                    ; preds = %1008, %971, %36
  %1011 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1011) #1
  %1012 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1012) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1815) #1
  %1013 = bitcast i32* %l_1796 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1013) #1
  %1014 = bitcast i32*** %l_1793 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1014) #1
  %1015 = bitcast i16*** %l_1775 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1015) #1
  %1016 = bitcast i16** %l_1776 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1016) #1
  %1017 = bitcast i16* %l_1708 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1017) #1
  %1018 = bitcast i32*** %l_1688 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1018) #1
  %1019 = bitcast %union.U0** %l_1673 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1019) #1
  %1020 = bitcast i16* %l_1621 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1020) #1
  %1021 = bitcast i16* %l_1591 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1021) #1
  %1022 = bitcast i64* %l_1483 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1022) #1
  %1023 = bitcast %union.U0*** %l_1459 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1023) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1361) #1
  %1024 = bitcast i32* %l_1348 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1024) #1
  %1025 = bitcast i32**** %l_1336 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1025) #1
  %1026 = bitcast i64*** %l_1273 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1026) #1
  %1027 = bitcast i64* %l_1246 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1027) #1
  %1028 = bitcast [4 x [10 x i32]]* %l_1219 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %1028) #1
  %1029 = bitcast i32* %l_1218 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1029) #1
  %1030 = bitcast i32* %l_1217 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1030) #1
  %1031 = bitcast i32* %l_1214 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1031) #1
  %1032 = bitcast i32* %l_1213 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1032) #1
  %1033 = bitcast i32* %l_1212 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1033) #1
  %1034 = bitcast %union.U0* %l_1181 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1034) #1
  %1035 = bitcast i32* %l_1174 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1035) #1
  %1036 = bitcast i32** %l_1168 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1036) #1
  %1037 = load i16, i16* %1
  ret i16 %1037
}

; Function Attrs: nounwind uwtable
define internal i32 @func_11(i32 %p_12) #0 {
  %1 = alloca %union.U0, align 4
  %2 = alloca i32, align 4
  %l_1140 = alloca [4 x [2 x [3 x i32***]]], align 16
  %l_1143 = alloca [2 x i32*], align 16
  %l_1150 = alloca i32, align 4
  %l_1155 = alloca i64, align 8
  %l_1156 = alloca i8*, align 8
  %l_1157 = alloca i8, align 1
  %l_1158 = alloca [7 x i64*], align 16
  %l_1159 = alloca [7 x %union.U0], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %p_12, i32* %2, align 4, !tbaa !1
  %3 = bitcast [4 x [2 x [3 x i32***]]]* %l_1140 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %3) #1
  %4 = bitcast [4 x [2 x [3 x i32***]]]* %l_1140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([4 x [2 x [3 x i32***]]]* @func_11.l_1140 to i8*), i64 192, i32 16, i1 false)
  %5 = bitcast [2 x i32*]* %l_1143 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast i32* %l_1150 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 -1989437666, i32* %l_1150, align 4, !tbaa !1
  %7 = bitcast i64* %l_1155 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64 3843444722069023719, i64* %l_1155, align 8, !tbaa !7
  %8 = bitcast i8** %l_1156 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8* @g_494, i8** %l_1156, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1157) #1
  store i8 -14, i8* %l_1157, align 1, !tbaa !9
  %9 = bitcast [7 x i64*]* %l_1158 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %9) #1
  %10 = bitcast [7 x %union.U0]* %l_1159 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %10) #1
  %11 = bitcast [7 x %union.U0]* %l_1159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([7 x %union.U0]* @func_11.l_1159 to i8*), i64 28, i32 16, i1 false)
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:15                                      ; preds = %22, %0
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %25

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_1143, i32 0, i64 %20
  store i32* null, i32** %21, align 8, !tbaa !5
  br label %22

; <label>:22                                      ; preds = %18
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:25                                      ; preds = %15
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %26

; <label>:26                                      ; preds = %33, %25
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = icmp slt i32 %27, 7
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %26
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [7 x i64*], [7 x i64*]* %l_1158, i32 0, i64 %31
  store i64* @g_842, i64** %32, align 8, !tbaa !5
  br label %33

; <label>:33                                      ; preds = %29
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4, !tbaa !1
  br label %26

; <label>:36                                      ; preds = %26
  %37 = getelementptr inbounds [4 x [2 x [3 x i32***]]], [4 x [2 x [3 x i32***]]]* %l_1140, i32 0, i64 0
  %38 = getelementptr inbounds [2 x [3 x i32***]], [2 x [3 x i32***]]* %37, i32 0, i64 0
  %39 = getelementptr inbounds [3 x i32***], [3 x i32***]* %38, i32 0, i64 2
  %40 = load i32***, i32**** %39, align 8, !tbaa !5
  %41 = icmp eq i32*** @g_333, %40
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = load i32***, i32**** @g_1088, align 8, !tbaa !5
  %45 = load i32**, i32*** %44, align 8, !tbaa !5
  %46 = load i32*, i32** %45, align 8, !tbaa !5
  %47 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_1143, i32 0, i64 1
  %48 = load i32*, i32** %47, align 8, !tbaa !5
  %49 = icmp eq i32* %46, %48
  %50 = zext i1 %49 to i32
  %51 = trunc i32 %50 to i16
  %52 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %51, i16 signext 13370)
  %53 = sext i16 %52 to i64
  %54 = load i64*, i64** @g_341, align 8, !tbaa !5
  store i64 %53, i64* %54, align 8, !tbaa !7
  %55 = load i16, i16* @g_30, align 2, !tbaa !10
  %56 = trunc i16 %55 to i8
  %57 = load i32, i32* %l_1150, align 4, !tbaa !1
  %58 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext 108, i32 0)
  %59 = zext i8 %58 to i64
  %60 = load i32, i32* %2, align 4, !tbaa !1
  %61 = sext i32 %60 to i64
  %62 = call i64 @safe_div_func_uint64_t_u_u(i64 %59, i64 %61)
  %63 = trunc i64 %62 to i8
  %64 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %56, i8 signext %63)
  %65 = sext i8 %64 to i64
  %66 = load i64, i64* %l_1155, align 8, !tbaa !7
  %67 = icmp ugt i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = icmp uge i64 %69, 9
  %71 = zext i1 %70 to i32
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %l_1156, align 8, !tbaa !5
  store i8 %72, i8* %73, align 1, !tbaa !9
  %74 = load i32, i32* %2, align 4, !tbaa !1
  %75 = trunc i32 %74 to i16
  %76 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext 18113, i16 signext %75)
  %77 = sext i16 %76 to i64
  %78 = icmp ult i64 %77, -7352716878542055799
  %79 = zext i1 %78 to i32
  %80 = trunc i32 %79 to i8
  %81 = load i8, i8* %l_1157, align 1, !tbaa !9
  %82 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %80, i8 zeroext %81)
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* %l_1157, align 1, !tbaa !9
  %85 = zext i8 %84 to i32
  %86 = icmp slt i32 %83, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %2, align 4, !tbaa !1
  store i32 %88, i32* %l_1150, align 4, !tbaa !1
  %89 = sext i32 %88 to i64
  %90 = and i64 %89, 6859772351769365078
  %91 = icmp slt i64 %43, %90
  br i1 %91, label %96, label %92

; <label>:92                                      ; preds = %36
  %93 = load i8, i8* %l_1157, align 1, !tbaa !9
  %94 = zext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br label %96

; <label>:96                                      ; preds = %92, %36
  %97 = phi i1 [ true, %36 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  %99 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 %98, i32* %99, align 4, !tbaa !1
  %100 = getelementptr inbounds [7 x %union.U0], [7 x %union.U0]* %l_1159, i32 0, i64 4
  %101 = bitcast %union.U0* %1 to i8*
  %102 = bitcast %union.U0* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %102, i64 4, i32 4, i1 false), !tbaa.struct !12
  %103 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast [7 x %union.U0]* %l_1159 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %106) #1
  %107 = bitcast [7 x i64*]* %l_1158 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %107) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1157) #1
  %108 = bitcast i8** %l_1156 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i64* %l_1155 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast i32* %l_1150 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast [2 x i32*]* %l_1143 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %111) #1
  %112 = bitcast [4 x [2 x [3 x i32***]]]* %l_1140 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %112) #1
  %113 = getelementptr %union.U0, %union.U0* %1, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  ret i32 %114
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6, %0
  %10 = load i8, i8* %1, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  br label %17

; <label>:12                                      ; preds = %6
  %13 = load i8, i8* %1, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %12, %9
  %18 = phi i32 [ %11, %9 ], [ %16, %12 ]
  %19 = trunc i32 %18 to i8
  ret i8 %19
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i16, i16* %1, align 2, !tbaa !10
  %7 = zext i16 %6 to i32
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = ashr i32 65535, %8
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %5, %0
  %12 = load i16, i16* %1, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  br label %19

; <label>:14                                      ; preds = %5
  %15 = load i16, i16* %1, align 2, !tbaa !10
  %16 = zext i16 %15 to i32
  %17 = load i32, i32* %2, align 4, !tbaa !1
  %18 = shl i32 %16, %17
  br label %19

; <label>:19                                      ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %18, %14 ]
  %21 = trunc i32 %20 to i16
  ret i16 %21
}

; Function Attrs: nounwind uwtable
define internal signext i16 @func_20(i32 %p_21) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %l_659 = alloca [6 x i8], align 1
  %l_661 = alloca i16**, align 8
  %l_670 = alloca [1 x i32**], align 8
  %l_671 = alloca i16*, align 8
  %l_672 = alloca i16**, align 8
  %l_673 = alloca i16*, align 8
  %l_674 = alloca i64*, align 8
  %l_675 = alloca [4 x [2 x i64*]], align 16
  %l_676 = alloca i16*, align 8
  %l_823 = alloca [1 x [3 x i16***]], align 16
  %l_854 = alloca [3 x i32**], align 16
  %l_930 = alloca i32, align 4
  %l_934 = alloca %union.U0, align 4
  %l_937 = alloca [3 x i64**], align 16
  %l_936 = alloca i64***, align 8
  %l_997 = alloca i32*, align 8
  %l_996 = alloca i32**, align 8
  %l_995 = alloca i32***, align 8
  %l_994 = alloca i32****, align 8
  %l_1004 = alloca i32, align 4
  %l_1059 = alloca i32***, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_680 = alloca i16, align 2
  %l_681 = alloca i32, align 4
  %l_682 = alloca i8*, align 8
  %l_694 = alloca i32*, align 8
  %l_729 = alloca i32, align 4
  %l_732 = alloca i32, align 4
  %l_734 = alloca [7 x [9 x [4 x i32]]], align 16
  %l_798 = alloca i8, align 1
  %l_799 = alloca i8, align 1
  %l_822 = alloca i16***, align 8
  %l_855 = alloca i32*, align 8
  %l_861 = alloca i64, align 8
  %l_940 = alloca [3 x %union.U0], align 4
  %l_941 = alloca i32, align 4
  %l_1010 = alloca i32, align 4
  %l_1053 = alloca [10 x [3 x [6 x i32]]], align 16
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_693 = alloca i64*, align 8
  %l_695 = alloca i32**, align 8
  %l_696 = alloca i32, align 4
  %l_697 = alloca [5 x [4 x [7 x i32*]]], align 16
  %l_698 = alloca [10 x i32], align 16
  %l_708 = alloca i32, align 4
  %l_714 = alloca i64**, align 8
  %l_720 = alloca i64, align 8
  %l_724 = alloca i64, align 8
  %l_740 = alloca i32, align 4
  %l_741 = alloca [6 x i32], align 16
  %l_792 = alloca i32*, align 8
  %l_841 = alloca i8**, align 8
  %l_866 = alloca i16*, align 8
  %l_867 = alloca i8*, align 8
  %l_872 = alloca i16*, align 8
  %l_880 = alloca [7 x i32***], align 16
  %l_904 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k5 = alloca i32, align 4
  %l_931 = alloca i8, align 1
  %l_935 = alloca i32*, align 8
  %l_938 = alloca [6 x [2 x [4 x i64****]]], align 16
  %l_955 = alloca [6 x [8 x i8*]], align 16
  %l_961 = alloca [5 x i16***], align 16
  %l_1002 = alloca i32, align 4
  %l_1003 = alloca i32, align 4
  %l_1005 = alloca i32, align 4
  %l_1006 = alloca i32, align 4
  %l_1007 = alloca i32, align 4
  %l_1008 = alloca i32, align 4
  %l_1009 = alloca i32, align 4
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %k8 = alloca i32, align 4
  %3 = alloca %union.U0, align 4
  %l_956 = alloca [10 x [1 x [6 x i32*]]], align 16
  %l_970 = alloca i8*, align 8
  %l_972 = alloca [4 x i32**], align 16
  %l_971 = alloca i32***, align 8
  %l_974 = alloca [8 x i16**], align 16
  %l_973 = alloca [7 x i16***], align 16
  %i9 = alloca i32, align 4
  %j10 = alloca i32, align 4
  %k11 = alloca i32, align 4
  %l_962 = alloca i16****, align 8
  %l_967 = alloca i8*, align 8
  %l_968 = alloca i8**, align 8
  %l_969 = alloca i8**, align 8
  %l_998 = alloca i32****, align 8
  %l_1001 = alloca i32, align 4
  %l_979 = alloca i64, align 8
  %l_992 = alloca i32*****, align 8
  %l_993 = alloca i32*****, align 8
  %l_999 = alloca [6 x i16*], align 16
  %l_1000 = alloca [3 x [3 x i32]], align 16
  %i12 = alloca i32, align 4
  %j13 = alloca i32, align 4
  %4 = alloca i32
  %l_1025 = alloca i32, align 4
  %l_1031 = alloca i32*, align 8
  %l_1043 = alloca [6 x [1 x %union.U0*]], align 16
  %l_1050 = alloca i32, align 4
  %l_1052 = alloca [6 x i32], align 16
  %l_1056 = alloca i16, align 2
  %l_1075 = alloca i8*, align 8
  %l_1082 = alloca i64, align 8
  %l_1091 = alloca i32*****, align 8
  %i14 = alloca i32, align 4
  %j15 = alloca i32, align 4
  %l_1026 = alloca [4 x i16], align 2
  %l_1027 = alloca i16, align 2
  %i16 = alloca i32, align 4
  %l_1038 = alloca i8*, align 8
  %l_1039 = alloca i8*, align 8
  %i17 = alloca i32, align 4
  %l_1042 = alloca [8 x i16*], align 16
  %l_1048 = alloca i32, align 4
  %l_1051 = alloca i32, align 4
  %l_1054 = alloca i32, align 4
  %l_1055 = alloca [2 x [9 x i32]], align 16
  %i20 = alloca i32, align 4
  %j21 = alloca i32, align 4
  %l_1045 = alloca i8, align 1
  %l_1049 = alloca [10 x i32], align 16
  %l_1060 = alloca i32****, align 8
  %i22 = alloca i32, align 4
  %j23 = alloca i32, align 4
  %l_1092 = alloca i32, align 4
  %l_1093 = alloca i8, align 1
  %l_1101 = alloca [6 x i8*], align 16
  %l_1104 = alloca %union.U0*, align 8
  %l_1109 = alloca i64, align 8
  %l_1113 = alloca i16*****, align 8
  %l_1114 = alloca i8*, align 8
  %i28 = alloca i32, align 4
  %l_1135 = alloca i8, align 1
  %l_1136 = alloca i32, align 4
  %l_1138 = alloca i32*, align 8
  %l_1122 = alloca i16*, align 8
  %l_1121 = alloca i16**, align 8
  %l_1134 = alloca i32, align 4
  %l_1139 = alloca [9 x i32], align 16
  %i29 = alloca i32, align 4
  store i32 %p_21, i32* %2, align 4, !tbaa !1
  %5 = bitcast [6 x i8]* %l_659 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %5) #1
  %6 = bitcast [6 x i8]* %l_659 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @func_20.l_659, i32 0, i32 0), i64 6, i32 1, i1 false)
  %7 = bitcast i16*** %l_661 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16** null, i16*** %l_661, align 8, !tbaa !5
  %8 = bitcast [1 x i32**]* %l_670 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i16** %l_671 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i16* @g_265, i16** %l_671, align 8, !tbaa !5
  %10 = bitcast i16*** %l_672 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i16** %l_671, i16*** %l_672, align 8, !tbaa !5
  %11 = bitcast i16** %l_673 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i16* null, i16** %l_673, align 8, !tbaa !5
  %12 = bitcast i64** %l_674 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64* null, i64** %l_674, align 8, !tbaa !5
  %13 = bitcast [4 x [2 x i64*]]* %l_675 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %13) #1
  %14 = bitcast i16** %l_676 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i16* @g_605, i16** %l_676, align 8, !tbaa !5
  %15 = bitcast [1 x [3 x i16***]]* %l_823 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %15) #1
  %16 = bitcast [3 x i32**]* %l_854 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %16) #1
  %17 = bitcast i32* %l_930 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %l_930, align 4, !tbaa !1
  %18 = bitcast %union.U0* %l_934 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast %union.U0* %l_934 to i8*
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 4, i32 4, i1 false)
  %20 = bitcast [3 x i64**]* %l_937 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %20) #1
  %21 = bitcast i64**** %l_936 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = getelementptr inbounds [3 x i64**], [3 x i64**]* %l_937, i32 0, i64 2
  store i64*** %22, i64**** %l_936, align 8, !tbaa !5
  %23 = bitcast i32** %l_997 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i32* null, i32** %l_997, align 8, !tbaa !5
  %24 = bitcast i32*** %l_996 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i32** %l_997, i32*** %l_996, align 8, !tbaa !5
  %25 = bitcast i32**** %l_995 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i32*** %l_996, i32**** %l_995, align 8, !tbaa !5
  %26 = bitcast i32***** %l_994 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i32**** %l_995, i32***** %l_994, align 8, !tbaa !5
  %27 = bitcast i32* %l_1004 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 9, i32* %l_1004, align 4, !tbaa !1
  %28 = bitcast i32**** %l_1059 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i32*** null, i32**** %l_1059, align 8, !tbaa !5
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %31

; <label>:31                                      ; preds = %38, %0
  %32 = load i32, i32* %i, align 4, !tbaa !1
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %41

; <label>:34                                      ; preds = %31
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [1 x i32**], [1 x i32**]* %l_670, i32 0, i64 %36
  store i32** null, i32*** %37, align 8, !tbaa !5
  br label %38

; <label>:38                                      ; preds = %34
  %39 = load i32, i32* %i, align 4, !tbaa !1
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %i, align 4, !tbaa !1
  br label %31

; <label>:41                                      ; preds = %31
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %42

; <label>:42                                      ; preds = %60, %41
  %43 = load i32, i32* %i, align 4, !tbaa !1
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %63

; <label>:45                                      ; preds = %42
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %46

; <label>:46                                      ; preds = %56, %45
  %47 = load i32, i32* %j, align 4, !tbaa !1
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %59

; <label>:49                                      ; preds = %46
  %50 = load i32, i32* %j, align 4, !tbaa !1
  %51 = sext i32 %50 to i64
  %52 = load i32, i32* %i, align 4, !tbaa !1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x [2 x i64*]], [4 x [2 x i64*]]* %l_675, i32 0, i64 %53
  %55 = getelementptr inbounds [2 x i64*], [2 x i64*]* %54, i32 0, i64 %51
  store i64* getelementptr inbounds ([5 x [6 x [5 x i64]]], [5 x [6 x [5 x i64]]]* @g_47, i32 0, i64 0, i64 3, i64 1), i64** %55, align 8, !tbaa !5
  br label %56

; <label>:56                                      ; preds = %49
  %57 = load i32, i32* %j, align 4, !tbaa !1
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %j, align 4, !tbaa !1
  br label %46

; <label>:59                                      ; preds = %46
  br label %60

; <label>:60                                      ; preds = %59
  %61 = load i32, i32* %i, align 4, !tbaa !1
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %i, align 4, !tbaa !1
  br label %42

; <label>:63                                      ; preds = %42
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %64

; <label>:64                                      ; preds = %82, %63
  %65 = load i32, i32* %i, align 4, !tbaa !1
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %85

; <label>:67                                      ; preds = %64
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %68

; <label>:68                                      ; preds = %78, %67
  %69 = load i32, i32* %j, align 4, !tbaa !1
  %70 = icmp slt i32 %69, 3
  br i1 %70, label %71, label %81

; <label>:71                                      ; preds = %68
  %72 = load i32, i32* %j, align 4, !tbaa !1
  %73 = sext i32 %72 to i64
  %74 = load i32, i32* %i, align 4, !tbaa !1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [1 x [3 x i16***]], [1 x [3 x i16***]]* %l_823, i32 0, i64 %75
  %77 = getelementptr inbounds [3 x i16***], [3 x i16***]* %76, i32 0, i64 %73
  store i16*** %l_661, i16**** %77, align 8, !tbaa !5
  br label %78

; <label>:78                                      ; preds = %71
  %79 = load i32, i32* %j, align 4, !tbaa !1
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %j, align 4, !tbaa !1
  br label %68

; <label>:81                                      ; preds = %68
  br label %82

; <label>:82                                      ; preds = %81
  %83 = load i32, i32* %i, align 4, !tbaa !1
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %i, align 4, !tbaa !1
  br label %64

; <label>:85                                      ; preds = %64
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %86

; <label>:86                                      ; preds = %93, %85
  %87 = load i32, i32* %i, align 4, !tbaa !1
  %88 = icmp slt i32 %87, 3
  br i1 %88, label %89, label %96

; <label>:89                                      ; preds = %86
  %90 = load i32, i32* %i, align 4, !tbaa !1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [3 x i32**], [3 x i32**]* %l_854, i32 0, i64 %91
  store i32** @g_824, i32*** %92, align 8, !tbaa !5
  br label %93

; <label>:93                                      ; preds = %89
  %94 = load i32, i32* %i, align 4, !tbaa !1
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %i, align 4, !tbaa !1
  br label %86

; <label>:96                                      ; preds = %86
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:97                                      ; preds = %104, %96
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = icmp slt i32 %98, 3
  br i1 %99, label %100, label %107

; <label>:100                                     ; preds = %97
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x i64**], [3 x i64**]* %l_937, i32 0, i64 %102
  store i64** @g_219, i64*** %103, align 8, !tbaa !5
  br label %104

; <label>:104                                     ; preds = %100
  %105 = load i32, i32* %i, align 4, !tbaa !1
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:107                                     ; preds = %97
  %108 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 4
  %109 = load i8, i8* %108, align 1, !tbaa !9
  %110 = load i32, i32* %2, align 4, !tbaa !1
  %111 = load i32*, i32** @g_650, align 8, !tbaa !5
  %112 = load i32, i32* %111, align 4, !tbaa !1
  %113 = xor i32 %112, %110
  store i32 %113, i32* %111, align 4, !tbaa !1
  %114 = load i32*, i32** @g_334, align 8, !tbaa !5
  %115 = load i32, i32* %114, align 4, !tbaa !1
  %116 = and i32 %115, %113
  store i32 %116, i32* %114, align 4, !tbaa !1
  %117 = load i16**, i16*** %l_661, align 8, !tbaa !5
  %118 = icmp eq i16** %117, @g_607
  %119 = zext i1 %118 to i32
  %120 = icmp eq i32 %116, %119
  %121 = zext i1 %120 to i32
  %122 = trunc i32 %121 to i8
  %123 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %109, i8 signext %122)
  %124 = sext i8 %123 to i32
  %125 = getelementptr inbounds [1 x i32**], [1 x i32**]* %l_670, i32 0, i64 0
  %126 = load i32**, i32*** %125, align 8, !tbaa !5
  %127 = icmp eq i32** null, %126
  %128 = zext i1 %127 to i32
  %129 = trunc i32 %128 to i8
  %130 = load i16*, i16** %l_671, align 8, !tbaa !5
  %131 = load i16**, i16*** %l_672, align 8, !tbaa !5
  store i16* %130, i16** %131, align 8, !tbaa !5
  %132 = load i16*, i16** %l_673, align 8, !tbaa !5
  %133 = icmp ne i16* %130, %132
  %134 = zext i1 %133 to i32
  %135 = sext i32 %134 to i64
  %136 = load i64*, i64** @g_341, align 8, !tbaa !5
  %137 = load i64, i64* %136, align 8, !tbaa !7
  %138 = load i64, i64* getelementptr inbounds ([5 x [6 x [5 x i64]]], [5 x [6 x [5 x i64]]]* @g_47, i32 0, i64 0, i64 3, i64 1), align 8, !tbaa !7
  %139 = xor i64 %138, %137
  store i64 %139, i64* getelementptr inbounds ([5 x [6 x [5 x i64]]], [5 x [6 x [5 x i64]]]* @g_47, i32 0, i64 0, i64 3, i64 1), align 8, !tbaa !7
  %140 = load i64*, i64** @g_341, align 8, !tbaa !5
  store i64 %139, i64* %140, align 8, !tbaa !7
  %141 = icmp ult i64 %135, %139
  %142 = zext i1 %141 to i32
  %143 = trunc i32 %142 to i8
  %144 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %129, i8 zeroext %143)
  %145 = zext i8 %144 to i32
  %146 = load i32, i32* %2, align 4, !tbaa !1
  %147 = call i32 @safe_add_func_uint32_t_u_u(i32 %145, i32 %146)
  %148 = trunc i32 %147 to i16
  %149 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %148, i16 zeroext 9849)
  %150 = zext i16 %149 to i32
  %151 = load i32, i32* @g_406, align 4, !tbaa !1
  %152 = icmp slt i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i16*, i16** %l_676, align 8, !tbaa !5
  %155 = load i16, i16* %154, align 2, !tbaa !10
  %156 = zext i16 %155 to i32
  %157 = xor i32 %156, %153
  %158 = trunc i32 %157 to i16
  store i16 %158, i16* %154, align 2, !tbaa !10
  %159 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %158, i16 zeroext -32288)
  %160 = zext i16 %159 to i32
  %161 = xor i32 %124, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %1275

; <label>:163                                     ; preds = %107
  %164 = bitcast i16* %l_680 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %164) #1
  store i16 -1, i16* %l_680, align 2, !tbaa !10
  %165 = bitcast i32* %l_681 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %165) #1
  store i32 2106808587, i32* %l_681, align 4, !tbaa !1
  %166 = bitcast i8** %l_682 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %166) #1
  store i8* @g_494, i8** %l_682, align 8, !tbaa !5
  %167 = bitcast i32** %l_694 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %167) #1
  store i32* @g_406, i32** %l_694, align 8, !tbaa !5
  %168 = bitcast i32* %l_729 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %168) #1
  store i32 -1, i32* %l_729, align 4, !tbaa !1
  %169 = bitcast i32* %l_732 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %169) #1
  store i32 -1433803288, i32* %l_732, align 4, !tbaa !1
  %170 = bitcast [7 x [9 x [4 x i32]]]* %l_734 to i8*
  call void @llvm.lifetime.start(i64 1008, i8* %170) #1
  %171 = bitcast [7 x [9 x [4 x i32]]]* %l_734 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %171, i8* bitcast ([7 x [9 x [4 x i32]]]* @func_20.l_734 to i8*), i64 1008, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_798) #1
  store i8 -118, i8* %l_798, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %l_799) #1
  store i8 -4, i8* %l_799, align 1, !tbaa !9
  %172 = bitcast i16**** %l_822 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %172) #1
  store i16*** %l_661, i16**** %l_822, align 8, !tbaa !5
  %173 = bitcast i32** %l_855 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %173) #1
  %174 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 5
  %175 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %174, i32 0, i64 1
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %175, i32 0, i64 0
  store i32* %176, i32** %l_855, align 8, !tbaa !5
  %177 = bitcast i64* %l_861 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %177) #1
  store i64 -10, i64* %l_861, align 8, !tbaa !7
  %178 = bitcast [3 x %union.U0]* %l_940 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %178) #1
  %179 = bitcast [3 x %union.U0]* %l_940 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %179, i8* bitcast ([3 x %union.U0]* @func_20.l_940 to i8*), i64 12, i32 4, i1 false)
  %180 = bitcast i32* %l_941 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %180) #1
  store i32 -6, i32* %l_941, align 4, !tbaa !1
  %181 = bitcast i32* %l_1010 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #1
  store i32 2, i32* %l_1010, align 4, !tbaa !1
  %182 = bitcast [10 x [3 x [6 x i32]]]* %l_1053 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %182) #1
  %183 = bitcast [10 x [3 x [6 x i32]]]* %l_1053 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %183, i8* bitcast ([10 x [3 x [6 x i32]]]* @func_20.l_1053 to i8*), i64 720, i32 16, i1 false)
  %184 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #1
  %185 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %185) #1
  %186 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  %187 = load i32**, i32*** @g_333, align 8, !tbaa !5
  %188 = load i32*, i32** %187, align 8, !tbaa !5
  %189 = load i32, i32* %188, align 4, !tbaa !1
  %190 = load i16, i16* %l_680, align 2, !tbaa !10
  %191 = sext i16 %190 to i32
  %192 = xor i32 %191, -1
  %193 = trunc i32 %192 to i8
  %194 = load i8*, i8** %l_682, align 8, !tbaa !5
  %195 = load i8, i8* %194, align 1, !tbaa !9
  %196 = add i8 %195, -1
  store i8 %196, i8* %194, align 1, !tbaa !9
  %197 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %193, i8 zeroext %196)
  %198 = zext i8 %197 to i32
  %199 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 %198, i32* %199, align 4, !tbaa !1
  %200 = icmp ne i32 %198, 0
  br i1 %200, label %201, label %259

; <label>:201                                     ; preds = %163
  %202 = bitcast i64** %l_693 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %202) #1
  store i64* @g_438, i64** %l_693, align 8, !tbaa !5
  %203 = bitcast i32*** %l_695 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %203) #1
  store i32** %l_694, i32*** %l_695, align 8, !tbaa !5
  %204 = bitcast i32* %l_696 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %204) #1
  store i32 -152200384, i32* %l_696, align 4, !tbaa !1
  %205 = bitcast [5 x [4 x [7 x i32*]]]* %l_697 to i8*
  call void @llvm.lifetime.start(i64 1120, i8* %205) #1
  %206 = bitcast [5 x [4 x [7 x i32*]]]* %l_697 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %206, i8* bitcast ([5 x [4 x [7 x i32*]]]* @func_20.l_697 to i8*), i64 1120, i32 16, i1 false)
  %207 = bitcast [10 x i32]* %l_698 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %207) #1
  %208 = bitcast [10 x i32]* %l_698 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %208, i8* bitcast ([10 x i32]* @func_20.l_698 to i8*), i64 40, i32 16, i1 false)
  %209 = bitcast i32* %l_708 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %209) #1
  store i32 -1, i32* %l_708, align 4, !tbaa !1
  %210 = bitcast i64*** %l_714 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %210) #1
  store i64** %l_674, i64*** %l_714, align 8, !tbaa !5
  %211 = bitcast i64* %l_720 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %211) #1
  store i64 6, i64* %l_720, align 8, !tbaa !7
  %212 = bitcast i64* %l_724 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %212) #1
  store i64 6937861960848159778, i64* %l_724, align 8, !tbaa !7
  %213 = bitcast i32* %l_740 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %213) #1
  store i32 -2, i32* %l_740, align 4, !tbaa !1
  %214 = bitcast [6 x i32]* %l_741 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %214) #1
  %215 = bitcast [6 x i32]* %l_741 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %215, i8* bitcast ([6 x i32]* @func_20.l_741 to i8*), i64 24, i32 16, i1 false)
  %216 = bitcast i32** %l_792 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %216) #1
  store i32* @g_52, i32** %l_792, align 8, !tbaa !5
  %217 = bitcast i8*** %l_841 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %217) #1
  store i8** %l_682, i8*** %l_841, align 8, !tbaa !5
  %218 = bitcast i16** %l_866 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %218) #1
  store i16* @g_265, i16** %l_866, align 8, !tbaa !5
  %219 = bitcast i8** %l_867 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %219) #1
  store i8* %l_798, i8** %l_867, align 8, !tbaa !5
  %220 = bitcast i16** %l_872 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %220) #1
  store i16* %l_680, i16** %l_872, align 8, !tbaa !5
  %221 = bitcast [7 x i32***]* %l_880 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %221) #1
  %222 = bitcast [7 x i32***]* %l_880 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %222, i8* bitcast ([7 x i32***]* @func_20.l_880 to i8*), i64 56, i32 16, i1 false)
  %223 = bitcast i32* %l_904 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %223) #1
  store i32 -1293764573, i32* %l_904, align 4, !tbaa !1
  %224 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %224) #1
  %225 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %225) #1
  %226 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %226) #1
  %227 = load volatile %union.U0**, %union.U0*** @g_565, align 8, !tbaa !5
  %228 = load %union.U0*, %union.U0** %227, align 8, !tbaa !5
  %229 = icmp eq %union.U0* %228, null
  %230 = zext i1 %229 to i32
  %231 = load i32, i32* %l_681, align 4, !tbaa !1
  %232 = icmp eq i32 %230, %231
  %233 = zext i1 %232 to i32
  %234 = trunc i32 %233 to i16
  %235 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %234, i32 10)
  %236 = zext i16 %235 to i32
  %237 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 %236, i32* %237, align 4, !tbaa !1
  %238 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %240 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i32* %l_904 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  %242 = bitcast [7 x i32***]* %l_880 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %242) #1
  %243 = bitcast i16** %l_872 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %243) #1
  %244 = bitcast i8** %l_867 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %244) #1
  %245 = bitcast i16** %l_866 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %245) #1
  %246 = bitcast i8*** %l_841 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #1
  %247 = bitcast i32** %l_792 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %248 = bitcast [6 x i32]* %l_741 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %248) #1
  %249 = bitcast i32* %l_740 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  %250 = bitcast i64* %l_724 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #1
  %251 = bitcast i64* %l_720 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #1
  %252 = bitcast i64*** %l_714 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %252) #1
  %253 = bitcast i32* %l_708 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #1
  %254 = bitcast [10 x i32]* %l_698 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %254) #1
  %255 = bitcast [5 x [4 x [7 x i32*]]]* %l_697 to i8*
  call void @llvm.lifetime.end(i64 1120, i8* %255) #1
  %256 = bitcast i32* %l_696 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  %257 = bitcast i32*** %l_695 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #1
  %258 = bitcast i64** %l_693 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  br label %1255

; <label>:259                                     ; preds = %163
  call void @llvm.lifetime.start(i64 1, i8* %l_931) #1
  store i8 40, i8* %l_931, align 1, !tbaa !9
  %260 = bitcast i32** %l_935 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %260) #1
  store i32* %l_681, i32** %l_935, align 8, !tbaa !5
  %261 = bitcast [6 x [2 x [4 x i64****]]]* %l_938 to i8*
  call void @llvm.lifetime.start(i64 384, i8* %261) #1
  %262 = getelementptr inbounds [6 x [2 x [4 x i64****]]], [6 x [2 x [4 x i64****]]]* %l_938, i64 0, i64 0
  %263 = getelementptr inbounds [2 x [4 x i64****]], [2 x [4 x i64****]]* %262, i64 0, i64 0
  %264 = getelementptr inbounds [4 x i64****], [4 x i64****]* %263, i64 0, i64 0
  store i64**** null, i64***** %264, !tbaa !5
  %265 = getelementptr inbounds i64****, i64***** %264, i64 1
  store i64**** %l_936, i64***** %265, !tbaa !5
  %266 = getelementptr inbounds i64****, i64***** %265, i64 1
  store i64**** null, i64***** %266, !tbaa !5
  %267 = getelementptr inbounds i64****, i64***** %266, i64 1
  store i64**** %l_936, i64***** %267, !tbaa !5
  %268 = getelementptr inbounds [4 x i64****], [4 x i64****]* %263, i64 1
  %269 = getelementptr inbounds [4 x i64****], [4 x i64****]* %268, i64 0, i64 0
  store i64**** %l_936, i64***** %269, !tbaa !5
  %270 = getelementptr inbounds i64****, i64***** %269, i64 1
  store i64**** %l_936, i64***** %270, !tbaa !5
  %271 = getelementptr inbounds i64****, i64***** %270, i64 1
  store i64**** %l_936, i64***** %271, !tbaa !5
  %272 = getelementptr inbounds i64****, i64***** %271, i64 1
  store i64**** null, i64***** %272, !tbaa !5
  %273 = getelementptr inbounds [2 x [4 x i64****]], [2 x [4 x i64****]]* %262, i64 1
  %274 = getelementptr inbounds [2 x [4 x i64****]], [2 x [4 x i64****]]* %273, i64 0, i64 0
  %275 = getelementptr inbounds [4 x i64****], [4 x i64****]* %274, i64 0, i64 0
  store i64**** %l_936, i64***** %275, !tbaa !5
  %276 = getelementptr inbounds i64****, i64***** %275, i64 1
  store i64**** null, i64***** %276, !tbaa !5
  %277 = getelementptr inbounds i64****, i64***** %276, i64 1
  store i64**** %l_936, i64***** %277, !tbaa !5
  %278 = getelementptr inbounds i64****, i64***** %277, i64 1
  store i64**** null, i64***** %278, !tbaa !5
  %279 = getelementptr inbounds [4 x i64****], [4 x i64****]* %274, i64 1
  %280 = getelementptr inbounds [4 x i64****], [4 x i64****]* %279, i64 0, i64 0
  store i64**** %l_936, i64***** %280, !tbaa !5
  %281 = getelementptr inbounds i64****, i64***** %280, i64 1
  store i64**** %l_936, i64***** %281, !tbaa !5
  %282 = getelementptr inbounds i64****, i64***** %281, i64 1
  store i64**** %l_936, i64***** %282, !tbaa !5
  %283 = getelementptr inbounds i64****, i64***** %282, i64 1
  store i64**** %l_936, i64***** %283, !tbaa !5
  %284 = getelementptr inbounds [2 x [4 x i64****]], [2 x [4 x i64****]]* %273, i64 1
  %285 = getelementptr inbounds [2 x [4 x i64****]], [2 x [4 x i64****]]* %284, i64 0, i64 0
  %286 = getelementptr inbounds [4 x i64****], [4 x i64****]* %285, i64 0, i64 0
  store i64**** %l_936, i64***** %286, !tbaa !5
  %287 = getelementptr inbounds i64****, i64***** %286, i64 1
  store i64**** null, i64***** %287, !tbaa !5
  %288 = getelementptr inbounds i64****, i64***** %287, i64 1
  store i64**** null, i64***** %288, !tbaa !5
  %289 = getelementptr inbounds i64****, i64***** %288, i64 1
  store i64**** %l_936, i64***** %289, !tbaa !5
  %290 = getelementptr inbounds [4 x i64****], [4 x i64****]* %285, i64 1
  %291 = getelementptr inbounds [4 x i64****], [4 x i64****]* %290, i64 0, i64 0
  store i64**** null, i64***** %291, !tbaa !5
  %292 = getelementptr inbounds i64****, i64***** %291, i64 1
  store i64**** null, i64***** %292, !tbaa !5
  %293 = getelementptr inbounds i64****, i64***** %292, i64 1
  store i64**** %l_936, i64***** %293, !tbaa !5
  %294 = getelementptr inbounds i64****, i64***** %293, i64 1
  store i64**** %l_936, i64***** %294, !tbaa !5
  %295 = getelementptr inbounds [2 x [4 x i64****]], [2 x [4 x i64****]]* %284, i64 1
  %296 = getelementptr inbounds [2 x [4 x i64****]], [2 x [4 x i64****]]* %295, i64 0, i64 0
  %297 = getelementptr inbounds [4 x i64****], [4 x i64****]* %296, i64 0, i64 0
  store i64**** %l_936, i64***** %297, !tbaa !5
  %298 = getelementptr inbounds i64****, i64***** %297, i64 1
  store i64**** %l_936, i64***** %298, !tbaa !5
  %299 = getelementptr inbounds i64****, i64***** %298, i64 1
  store i64**** %l_936, i64***** %299, !tbaa !5
  %300 = getelementptr inbounds i64****, i64***** %299, i64 1
  store i64**** %l_936, i64***** %300, !tbaa !5
  %301 = getelementptr inbounds [4 x i64****], [4 x i64****]* %296, i64 1
  %302 = getelementptr inbounds [4 x i64****], [4 x i64****]* %301, i64 0, i64 0
  store i64**** %l_936, i64***** %302, !tbaa !5
  %303 = getelementptr inbounds i64****, i64***** %302, i64 1
  store i64**** null, i64***** %303, !tbaa !5
  %304 = getelementptr inbounds i64****, i64***** %303, i64 1
  store i64**** %l_936, i64***** %304, !tbaa !5
  %305 = getelementptr inbounds i64****, i64***** %304, i64 1
  store i64**** %l_936, i64***** %305, !tbaa !5
  %306 = getelementptr inbounds [2 x [4 x i64****]], [2 x [4 x i64****]]* %295, i64 1
  %307 = getelementptr inbounds [2 x [4 x i64****]], [2 x [4 x i64****]]* %306, i64 0, i64 0
  %308 = getelementptr inbounds [4 x i64****], [4 x i64****]* %307, i64 0, i64 0
  store i64**** %l_936, i64***** %308, !tbaa !5
  %309 = getelementptr inbounds i64****, i64***** %308, i64 1
  store i64**** null, i64***** %309, !tbaa !5
  %310 = getelementptr inbounds i64****, i64***** %309, i64 1
  store i64**** null, i64***** %310, !tbaa !5
  %311 = getelementptr inbounds i64****, i64***** %310, i64 1
  store i64**** %l_936, i64***** %311, !tbaa !5
  %312 = getelementptr inbounds [4 x i64****], [4 x i64****]* %307, i64 1
  %313 = getelementptr inbounds [4 x i64****], [4 x i64****]* %312, i64 0, i64 0
  store i64**** %l_936, i64***** %313, !tbaa !5
  %314 = getelementptr inbounds i64****, i64***** %313, i64 1
  store i64**** %l_936, i64***** %314, !tbaa !5
  %315 = getelementptr inbounds i64****, i64***** %314, i64 1
  store i64**** null, i64***** %315, !tbaa !5
  %316 = getelementptr inbounds i64****, i64***** %315, i64 1
  store i64**** null, i64***** %316, !tbaa !5
  %317 = getelementptr inbounds [2 x [4 x i64****]], [2 x [4 x i64****]]* %306, i64 1
  %318 = getelementptr inbounds [2 x [4 x i64****]], [2 x [4 x i64****]]* %317, i64 0, i64 0
  %319 = bitcast [4 x i64****]* %318 to i8*
  call void @llvm.memset.p0i8.i64(i8* %319, i8 0, i64 32, i32 8, i1 false)
  %320 = getelementptr inbounds [4 x i64****], [4 x i64****]* %318, i64 0, i64 0
  store i64**** %l_936, i64***** %320, !tbaa !5
  %321 = getelementptr inbounds i64****, i64***** %320, i64 1
  %322 = getelementptr inbounds i64****, i64***** %321, i64 1
  %323 = getelementptr inbounds i64****, i64***** %322, i64 1
  %324 = getelementptr inbounds [4 x i64****], [4 x i64****]* %318, i64 1
  %325 = getelementptr inbounds [4 x i64****], [4 x i64****]* %324, i64 0, i64 0
  store i64**** %l_936, i64***** %325, !tbaa !5
  %326 = getelementptr inbounds i64****, i64***** %325, i64 1
  store i64**** %l_936, i64***** %326, !tbaa !5
  %327 = getelementptr inbounds i64****, i64***** %326, i64 1
  store i64**** null, i64***** %327, !tbaa !5
  %328 = getelementptr inbounds i64****, i64***** %327, i64 1
  store i64**** %l_936, i64***** %328, !tbaa !5
  %329 = bitcast [6 x [8 x i8*]]* %l_955 to i8*
  call void @llvm.lifetime.start(i64 384, i8* %329) #1
  %330 = getelementptr inbounds [6 x [8 x i8*]], [6 x [8 x i8*]]* %l_955, i64 0, i64 0
  %331 = getelementptr inbounds [8 x i8*], [8 x i8*]* %330, i64 0, i64 0
  %332 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %332, i8** %331, !tbaa !5
  %333 = getelementptr inbounds i8*, i8** %331, i64 1
  store i8* %l_798, i8** %333, !tbaa !5
  %334 = getelementptr inbounds i8*, i8** %333, i64 1
  %335 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %335, i8** %334, !tbaa !5
  %336 = getelementptr inbounds i8*, i8** %334, i64 1
  store i8* %l_798, i8** %336, !tbaa !5
  %337 = getelementptr inbounds i8*, i8** %336, i64 1
  %338 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %338, i8** %337, !tbaa !5
  %339 = getelementptr inbounds i8*, i8** %337, i64 1
  store i8* %l_798, i8** %339, !tbaa !5
  %340 = getelementptr inbounds i8*, i8** %339, i64 1
  %341 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %341, i8** %340, !tbaa !5
  %342 = getelementptr inbounds i8*, i8** %340, i64 1
  store i8* %l_798, i8** %342, !tbaa !5
  %343 = getelementptr inbounds [8 x i8*], [8 x i8*]* %330, i64 1
  %344 = getelementptr inbounds [8 x i8*], [8 x i8*]* %343, i64 0, i64 0
  %345 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %345, i8** %344, !tbaa !5
  %346 = getelementptr inbounds i8*, i8** %344, i64 1
  store i8* %l_798, i8** %346, !tbaa !5
  %347 = getelementptr inbounds i8*, i8** %346, i64 1
  %348 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %348, i8** %347, !tbaa !5
  %349 = getelementptr inbounds i8*, i8** %347, i64 1
  store i8* %l_798, i8** %349, !tbaa !5
  %350 = getelementptr inbounds i8*, i8** %349, i64 1
  %351 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %351, i8** %350, !tbaa !5
  %352 = getelementptr inbounds i8*, i8** %350, i64 1
  store i8* %l_798, i8** %352, !tbaa !5
  %353 = getelementptr inbounds i8*, i8** %352, i64 1
  %354 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %354, i8** %353, !tbaa !5
  %355 = getelementptr inbounds i8*, i8** %353, i64 1
  store i8* %l_798, i8** %355, !tbaa !5
  %356 = getelementptr inbounds [8 x i8*], [8 x i8*]* %343, i64 1
  %357 = getelementptr inbounds [8 x i8*], [8 x i8*]* %356, i64 0, i64 0
  %358 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %358, i8** %357, !tbaa !5
  %359 = getelementptr inbounds i8*, i8** %357, i64 1
  store i8* %l_798, i8** %359, !tbaa !5
  %360 = getelementptr inbounds i8*, i8** %359, i64 1
  %361 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %361, i8** %360, !tbaa !5
  %362 = getelementptr inbounds i8*, i8** %360, i64 1
  store i8* %l_798, i8** %362, !tbaa !5
  %363 = getelementptr inbounds i8*, i8** %362, i64 1
  %364 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %364, i8** %363, !tbaa !5
  %365 = getelementptr inbounds i8*, i8** %363, i64 1
  store i8* %l_798, i8** %365, !tbaa !5
  %366 = getelementptr inbounds i8*, i8** %365, i64 1
  %367 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %367, i8** %366, !tbaa !5
  %368 = getelementptr inbounds i8*, i8** %366, i64 1
  store i8* %l_798, i8** %368, !tbaa !5
  %369 = getelementptr inbounds [8 x i8*], [8 x i8*]* %356, i64 1
  %370 = getelementptr inbounds [8 x i8*], [8 x i8*]* %369, i64 0, i64 0
  %371 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %371, i8** %370, !tbaa !5
  %372 = getelementptr inbounds i8*, i8** %370, i64 1
  store i8* %l_798, i8** %372, !tbaa !5
  %373 = getelementptr inbounds i8*, i8** %372, i64 1
  %374 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %374, i8** %373, !tbaa !5
  %375 = getelementptr inbounds i8*, i8** %373, i64 1
  store i8* %l_798, i8** %375, !tbaa !5
  %376 = getelementptr inbounds i8*, i8** %375, i64 1
  %377 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %377, i8** %376, !tbaa !5
  %378 = getelementptr inbounds i8*, i8** %376, i64 1
  store i8* %l_798, i8** %378, !tbaa !5
  %379 = getelementptr inbounds i8*, i8** %378, i64 1
  %380 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %380, i8** %379, !tbaa !5
  %381 = getelementptr inbounds i8*, i8** %379, i64 1
  store i8* %l_798, i8** %381, !tbaa !5
  %382 = getelementptr inbounds [8 x i8*], [8 x i8*]* %369, i64 1
  %383 = getelementptr inbounds [8 x i8*], [8 x i8*]* %382, i64 0, i64 0
  %384 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %384, i8** %383, !tbaa !5
  %385 = getelementptr inbounds i8*, i8** %383, i64 1
  store i8* %l_798, i8** %385, !tbaa !5
  %386 = getelementptr inbounds i8*, i8** %385, i64 1
  %387 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %387, i8** %386, !tbaa !5
  %388 = getelementptr inbounds i8*, i8** %386, i64 1
  store i8* %l_798, i8** %388, !tbaa !5
  %389 = getelementptr inbounds i8*, i8** %388, i64 1
  %390 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %390, i8** %389, !tbaa !5
  %391 = getelementptr inbounds i8*, i8** %389, i64 1
  store i8* %l_798, i8** %391, !tbaa !5
  %392 = getelementptr inbounds i8*, i8** %391, i64 1
  %393 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %393, i8** %392, !tbaa !5
  %394 = getelementptr inbounds i8*, i8** %392, i64 1
  store i8* %l_798, i8** %394, !tbaa !5
  %395 = getelementptr inbounds [8 x i8*], [8 x i8*]* %382, i64 1
  %396 = getelementptr inbounds [8 x i8*], [8 x i8*]* %395, i64 0, i64 0
  %397 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %397, i8** %396, !tbaa !5
  %398 = getelementptr inbounds i8*, i8** %396, i64 1
  store i8* %l_798, i8** %398, !tbaa !5
  %399 = getelementptr inbounds i8*, i8** %398, i64 1
  %400 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %400, i8** %399, !tbaa !5
  %401 = getelementptr inbounds i8*, i8** %399, i64 1
  store i8* %l_798, i8** %401, !tbaa !5
  %402 = getelementptr inbounds i8*, i8** %401, i64 1
  %403 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %403, i8** %402, !tbaa !5
  %404 = getelementptr inbounds i8*, i8** %402, i64 1
  store i8* %l_798, i8** %404, !tbaa !5
  %405 = getelementptr inbounds i8*, i8** %404, i64 1
  %406 = getelementptr inbounds [6 x i8], [6 x i8]* %l_659, i32 0, i64 0
  store i8* %406, i8** %405, !tbaa !5
  %407 = getelementptr inbounds i8*, i8** %405, i64 1
  store i8* %l_798, i8** %407, !tbaa !5
  %408 = bitcast [5 x i16***]* %l_961 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %408) #1
  %409 = bitcast i32* %l_1002 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %409) #1
  store i32 -1, i32* %l_1002, align 4, !tbaa !1
  %410 = bitcast i32* %l_1003 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %410) #1
  store i32 -6, i32* %l_1003, align 4, !tbaa !1
  %411 = bitcast i32* %l_1005 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %411) #1
  store i32 4, i32* %l_1005, align 4, !tbaa !1
  %412 = bitcast i32* %l_1006 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %412) #1
  store i32 -3, i32* %l_1006, align 4, !tbaa !1
  %413 = bitcast i32* %l_1007 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %413) #1
  store i32 -1660221011, i32* %l_1007, align 4, !tbaa !1
  %414 = bitcast i32* %l_1008 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %414) #1
  store i32 -4, i32* %l_1008, align 4, !tbaa !1
  %415 = bitcast i32* %l_1009 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %415) #1
  store i32 -1436645757, i32* %l_1009, align 4, !tbaa !1
  %416 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %416) #1
  %417 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %417) #1
  %418 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %418) #1
  store i32 0, i32* %i6, align 4, !tbaa !1
  br label %419

; <label>:419                                     ; preds = %426, %259
  %420 = load i32, i32* %i6, align 4, !tbaa !1
  %421 = icmp slt i32 %420, 5
  br i1 %421, label %422, label %429

; <label>:422                                     ; preds = %419
  %423 = load i32, i32* %i6, align 4, !tbaa !1
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [5 x i16***], [5 x i16***]* %l_961, i32 0, i64 %424
  store i16*** %l_661, i16**** %425, align 8, !tbaa !5
  br label %426

; <label>:426                                     ; preds = %422
  %427 = load i32, i32* %i6, align 4, !tbaa !1
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %i6, align 4, !tbaa !1
  br label %419

; <label>:429                                     ; preds = %419
  br label %430

; <label>:430                                     ; preds = %1221, %429
  %431 = load i8, i8* %l_931, align 1, !tbaa !9
  %432 = add i8 %431, 1
  store i8 %432, i8* %l_931, align 1, !tbaa !9
  %433 = load i32*, i32** %l_935, align 8, !tbaa !5
  store i32* %433, i32** %l_935, align 8, !tbaa !5
  %434 = load i32*, i32** @g_334, align 8, !tbaa !5
  %435 = load i32, i32* %434, align 4, !tbaa !1
  %436 = load i32, i32* %2, align 4, !tbaa !1
  %437 = load i64***, i64**** %l_936, align 8, !tbaa !5
  store i64*** %437, i64**** @g_939, align 8, !tbaa !5
  %438 = icmp eq i64*** @g_468, %437
  %439 = zext i1 %438 to i32
  %440 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* %l_940, i32 0, i64 0
  %441 = load i32, i32* %l_941, align 4, !tbaa !1
  %442 = add i32 %441, -1
  store i32 %442, i32* %l_941, align 4, !tbaa !1
  %443 = load i64*, i64** @g_341, align 8, !tbaa !5
  %444 = load i64, i64* %443, align 8, !tbaa !7
  %445 = add i64 %444, 1
  store i64 %445, i64* %443, align 8, !tbaa !7
  %446 = call i32 @safe_unary_minus_func_uint32_t_u(i32 7)
  %447 = trunc i32 %446 to i16
  %448 = load i32, i32* %2, align 4, !tbaa !1
  %449 = trunc i32 %448 to i8
  %450 = load i32, i32* %2, align 4, !tbaa !1
  %451 = load i32*, i32** %l_855, align 8, !tbaa !5
  %452 = load i32, i32* %451, align 4, !tbaa !1
  %453 = sext i32 %452 to i64
  %454 = and i64 66, %453
  %455 = trunc i64 %454 to i32
  %456 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %449, i32 %455)
  %457 = zext i8 %456 to i32
  %458 = load i32, i32* %2, align 4, !tbaa !1
  %459 = icmp ule i32 %457, %458
  %460 = zext i1 %459 to i32
  %461 = load i32, i32* %2, align 4, !tbaa !1
  %462 = or i32 %460, %461
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %468, label %464

; <label>:464                                     ; preds = %430
  %465 = load i32*, i32** %l_935, align 8, !tbaa !5
  %466 = load i32, i32* %465, align 4, !tbaa !1
  %467 = icmp ne i32 %466, 0
  br label %468

; <label>:468                                     ; preds = %464, %430
  %469 = phi i1 [ true, %430 ], [ %467, %464 ]
  %470 = zext i1 %469 to i32
  %471 = sext i32 %470 to i64
  %472 = load i64*, i64** @g_341, align 8, !tbaa !5
  %473 = load i64, i64* %472, align 8, !tbaa !7
  %474 = xor i64 %471, %473
  %475 = trunc i64 %474 to i16
  %476 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %447, i16 signext %475)
  %477 = trunc i16 %476 to i8
  %478 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %477, i8 zeroext -1)
  %479 = zext i8 %478 to i32
  %480 = load i32*, i32** %l_855, align 8, !tbaa !5
  store i32 %479, i32* %480, align 4, !tbaa !1
  %481 = icmp ne i32 %479, 0
  br i1 %481, label %483, label %482

; <label>:482                                     ; preds = %468
  br label %483

; <label>:483                                     ; preds = %482, %468
  %484 = phi i1 [ true, %468 ], [ true, %482 ]
  %485 = zext i1 %484 to i32
  %486 = load i32*, i32** %l_935, align 8, !tbaa !5
  store i32 %485, i32* %486, align 4, !tbaa !1
  %487 = sext i32 %485 to i64
  %488 = xor i64 %487, 45
  %489 = trunc i64 %488 to i32
  %490 = load i32, i32* %2, align 4, !tbaa !1
  %491 = call i32 @safe_sub_func_int32_t_s_s(i32 %489, i32 %490)
  %492 = trunc i32 %491 to i8
  %493 = getelementptr %union.U0, %union.U0* %440, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = call i32 @func_35(i32 %494, i32 %442, i8 signext %492)
  %496 = getelementptr %union.U0, %union.U0* %3, i32 0, i32 0
  store i32 %495, i32* %496, align 4
  %497 = getelementptr inbounds [4 x [2 x i64*]], [4 x [2 x i64*]]* %l_675, i32 0, i64 2
  %498 = getelementptr inbounds [2 x i64*], [2 x i64*]* %497, i32 0, i64 0
  %499 = load i64*, i64** %498, align 8, !tbaa !5
  %500 = icmp eq i64* %499, %l_861
  br i1 %500, label %501, label %946

; <label>:501                                     ; preds = %483
  %502 = bitcast [10 x [1 x [6 x i32*]]]* %l_956 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %502) #1
  %503 = getelementptr inbounds [10 x [1 x [6 x i32*]]], [10 x [1 x [6 x i32*]]]* %l_956, i64 0, i64 0
  %504 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %503, i64 0, i64 0
  %505 = getelementptr inbounds [6 x i32*], [6 x i32*]* %504, i64 0, i64 0
  store i32* %l_729, i32** %505, !tbaa !5
  %506 = getelementptr inbounds i32*, i32** %505, i64 1
  %507 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 0
  %508 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %507, i32 0, i64 1
  %509 = getelementptr inbounds [4 x i32], [4 x i32]* %508, i32 0, i64 1
  store i32* %509, i32** %506, !tbaa !5
  %510 = getelementptr inbounds i32*, i32** %506, i64 1
  %511 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 0
  %512 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %511, i32 0, i64 1
  %513 = getelementptr inbounds [4 x i32], [4 x i32]* %512, i32 0, i64 1
  store i32* %513, i32** %510, !tbaa !5
  %514 = getelementptr inbounds i32*, i32** %510, i64 1
  store i32* %l_729, i32** %514, !tbaa !5
  %515 = getelementptr inbounds i32*, i32** %514, i64 1
  %516 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 2
  %517 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %516, i32 0, i64 7
  %518 = getelementptr inbounds [4 x i32], [4 x i32]* %517, i32 0, i64 2
  store i32* %518, i32** %515, !tbaa !5
  %519 = getelementptr inbounds i32*, i32** %515, i64 1
  %520 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 1
  %521 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %520, i32 0, i64 8
  %522 = getelementptr inbounds [4 x i32], [4 x i32]* %521, i32 0, i64 3
  store i32* %522, i32** %519, !tbaa !5
  %523 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %503, i64 1
  %524 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %523, i64 0, i64 0
  %525 = getelementptr inbounds [6 x i32*], [6 x i32*]* %524, i64 0, i64 0
  %526 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 1
  %527 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %526, i32 0, i64 8
  %528 = getelementptr inbounds [4 x i32], [4 x i32]* %527, i32 0, i64 3
  store i32* %528, i32** %525, !tbaa !5
  %529 = getelementptr inbounds i32*, i32** %525, i64 1
  store i32* %l_729, i32** %529, !tbaa !5
  %530 = getelementptr inbounds i32*, i32** %529, i64 1
  store i32* %l_681, i32** %530, !tbaa !5
  %531 = getelementptr inbounds i32*, i32** %530, i64 1
  store i32* %l_729, i32** %531, !tbaa !5
  %532 = getelementptr inbounds i32*, i32** %531, i64 1
  %533 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 1
  %534 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %533, i32 0, i64 8
  %535 = getelementptr inbounds [4 x i32], [4 x i32]* %534, i32 0, i64 3
  store i32* %535, i32** %532, !tbaa !5
  %536 = getelementptr inbounds i32*, i32** %532, i64 1
  store i32* %l_681, i32** %536, !tbaa !5
  %537 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %523, i64 1
  %538 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %537, i64 0, i64 0
  %539 = getelementptr inbounds [6 x i32*], [6 x i32*]* %538, i64 0, i64 0
  store i32* %l_729, i32** %539, !tbaa !5
  %540 = getelementptr inbounds i32*, i32** %539, i64 1
  %541 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 1
  %542 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %541, i32 0, i64 8
  %543 = getelementptr inbounds [4 x i32], [4 x i32]* %542, i32 0, i64 3
  store i32* %543, i32** %540, !tbaa !5
  %544 = getelementptr inbounds i32*, i32** %540, i64 1
  store i32* %l_681, i32** %544, !tbaa !5
  %545 = getelementptr inbounds i32*, i32** %544, i64 1
  store i32* %l_681, i32** %545, !tbaa !5
  %546 = getelementptr inbounds i32*, i32** %545, i64 1
  %547 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 1
  %548 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %547, i32 0, i64 8
  %549 = getelementptr inbounds [4 x i32], [4 x i32]* %548, i32 0, i64 3
  store i32* %549, i32** %546, !tbaa !5
  %550 = getelementptr inbounds i32*, i32** %546, i64 1
  store i32* %l_729, i32** %550, !tbaa !5
  %551 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %537, i64 1
  %552 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %551, i64 0, i64 0
  %553 = getelementptr inbounds [6 x i32*], [6 x i32*]* %552, i64 0, i64 0
  %554 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 0
  %555 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %554, i32 0, i64 1
  %556 = getelementptr inbounds [4 x i32], [4 x i32]* %555, i32 0, i64 1
  store i32* %556, i32** %553, !tbaa !5
  %557 = getelementptr inbounds i32*, i32** %553, i64 1
  store i32* %l_729, i32** %557, !tbaa !5
  %558 = getelementptr inbounds i32*, i32** %557, i64 1
  %559 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 2
  %560 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %559, i32 0, i64 7
  %561 = getelementptr inbounds [4 x i32], [4 x i32]* %560, i32 0, i64 2
  store i32* %561, i32** %558, !tbaa !5
  %562 = getelementptr inbounds i32*, i32** %558, i64 1
  %563 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 1
  %564 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %563, i32 0, i64 8
  %565 = getelementptr inbounds [4 x i32], [4 x i32]* %564, i32 0, i64 3
  store i32* %565, i32** %562, !tbaa !5
  %566 = getelementptr inbounds i32*, i32** %562, i64 1
  %567 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 2
  %568 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %567, i32 0, i64 7
  %569 = getelementptr inbounds [4 x i32], [4 x i32]* %568, i32 0, i64 2
  store i32* %569, i32** %566, !tbaa !5
  %570 = getelementptr inbounds i32*, i32** %566, i64 1
  store i32* %l_729, i32** %570, !tbaa !5
  %571 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %551, i64 1
  %572 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %571, i64 0, i64 0
  %573 = getelementptr inbounds [6 x i32*], [6 x i32*]* %572, i64 0, i64 0
  %574 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 2
  %575 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %574, i32 0, i64 7
  %576 = getelementptr inbounds [4 x i32], [4 x i32]* %575, i32 0, i64 2
  store i32* %576, i32** %573, !tbaa !5
  %577 = getelementptr inbounds i32*, i32** %573, i64 1
  %578 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 0
  %579 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %578, i32 0, i64 1
  %580 = getelementptr inbounds [4 x i32], [4 x i32]* %579, i32 0, i64 1
  store i32* %580, i32** %577, !tbaa !5
  %581 = getelementptr inbounds i32*, i32** %577, i64 1
  store i32* %l_681, i32** %581, !tbaa !5
  %582 = getelementptr inbounds i32*, i32** %581, i64 1
  store i32* %l_681, i32** %582, !tbaa !5
  %583 = getelementptr inbounds i32*, i32** %582, i64 1
  store i32* %l_681, i32** %583, !tbaa !5
  %584 = getelementptr inbounds i32*, i32** %583, i64 1
  store i32* %l_681, i32** %584, !tbaa !5
  %585 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %571, i64 1
  %586 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %585, i64 0, i64 0
  %587 = getelementptr inbounds [6 x i32*], [6 x i32*]* %586, i64 0, i64 0
  %588 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 2
  %589 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %588, i32 0, i64 7
  %590 = getelementptr inbounds [4 x i32], [4 x i32]* %589, i32 0, i64 2
  store i32* %590, i32** %587, !tbaa !5
  %591 = getelementptr inbounds i32*, i32** %587, i64 1
  %592 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 2
  %593 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %592, i32 0, i64 7
  %594 = getelementptr inbounds [4 x i32], [4 x i32]* %593, i32 0, i64 2
  store i32* %594, i32** %591, !tbaa !5
  %595 = getelementptr inbounds i32*, i32** %591, i64 1
  store i32* %l_681, i32** %595, !tbaa !5
  %596 = getelementptr inbounds i32*, i32** %595, i64 1
  %597 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 1
  %598 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %597, i32 0, i64 8
  %599 = getelementptr inbounds [4 x i32], [4 x i32]* %598, i32 0, i64 3
  store i32* %599, i32** %596, !tbaa !5
  %600 = getelementptr inbounds i32*, i32** %596, i64 1
  %601 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 0
  %602 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %601, i32 0, i64 1
  %603 = getelementptr inbounds [4 x i32], [4 x i32]* %602, i32 0, i64 1
  store i32* %603, i32** %600, !tbaa !5
  %604 = getelementptr inbounds i32*, i32** %600, i64 1
  %605 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 1
  %606 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %605, i32 0, i64 8
  %607 = getelementptr inbounds [4 x i32], [4 x i32]* %606, i32 0, i64 3
  store i32* %607, i32** %604, !tbaa !5
  %608 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %585, i64 1
  %609 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %608, i64 0, i64 0
  %610 = getelementptr inbounds [6 x i32*], [6 x i32*]* %609, i64 0, i64 0
  %611 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 0
  %612 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %611, i32 0, i64 1
  %613 = getelementptr inbounds [4 x i32], [4 x i32]* %612, i32 0, i64 1
  store i32* %613, i32** %610, !tbaa !5
  %614 = getelementptr inbounds i32*, i32** %610, i64 1
  %615 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 2
  %616 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %615, i32 0, i64 7
  %617 = getelementptr inbounds [4 x i32], [4 x i32]* %616, i32 0, i64 2
  store i32* %617, i32** %614, !tbaa !5
  %618 = getelementptr inbounds i32*, i32** %614, i64 1
  %619 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 0
  %620 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %619, i32 0, i64 1
  %621 = getelementptr inbounds [4 x i32], [4 x i32]* %620, i32 0, i64 1
  store i32* %621, i32** %618, !tbaa !5
  %622 = getelementptr inbounds i32*, i32** %618, i64 1
  store i32* %l_681, i32** %622, !tbaa !5
  %623 = getelementptr inbounds i32*, i32** %622, i64 1
  store i32* %l_681, i32** %623, !tbaa !5
  %624 = getelementptr inbounds i32*, i32** %623, i64 1
  store i32* %l_681, i32** %624, !tbaa !5
  %625 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %608, i64 1
  %626 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %625, i64 0, i64 0
  %627 = getelementptr inbounds [6 x i32*], [6 x i32*]* %626, i64 0, i64 0
  store i32* %l_729, i32** %627, !tbaa !5
  %628 = getelementptr inbounds i32*, i32** %627, i64 1
  %629 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 0
  %630 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %629, i32 0, i64 1
  %631 = getelementptr inbounds [4 x i32], [4 x i32]* %630, i32 0, i64 1
  store i32* %631, i32** %628, !tbaa !5
  %632 = getelementptr inbounds i32*, i32** %628, i64 1
  %633 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 0
  %634 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %633, i32 0, i64 1
  %635 = getelementptr inbounds [4 x i32], [4 x i32]* %634, i32 0, i64 1
  store i32* %635, i32** %632, !tbaa !5
  %636 = getelementptr inbounds i32*, i32** %632, i64 1
  store i32* %l_729, i32** %636, !tbaa !5
  %637 = getelementptr inbounds i32*, i32** %636, i64 1
  %638 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 2
  %639 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %638, i32 0, i64 7
  %640 = getelementptr inbounds [4 x i32], [4 x i32]* %639, i32 0, i64 2
  store i32* %640, i32** %637, !tbaa !5
  %641 = getelementptr inbounds i32*, i32** %637, i64 1
  %642 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 1
  %643 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %642, i32 0, i64 8
  %644 = getelementptr inbounds [4 x i32], [4 x i32]* %643, i32 0, i64 3
  store i32* %644, i32** %641, !tbaa !5
  %645 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %625, i64 1
  %646 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %645, i64 0, i64 0
  %647 = getelementptr inbounds [6 x i32*], [6 x i32*]* %646, i64 0, i64 0
  %648 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 1
  %649 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %648, i32 0, i64 8
  %650 = getelementptr inbounds [4 x i32], [4 x i32]* %649, i32 0, i64 3
  store i32* %650, i32** %647, !tbaa !5
  %651 = getelementptr inbounds i32*, i32** %647, i64 1
  store i32* %l_729, i32** %651, !tbaa !5
  %652 = getelementptr inbounds i32*, i32** %651, i64 1
  store i32* %l_681, i32** %652, !tbaa !5
  %653 = getelementptr inbounds i32*, i32** %652, i64 1
  store i32* %l_729, i32** %653, !tbaa !5
  %654 = getelementptr inbounds i32*, i32** %653, i64 1
  %655 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 1
  %656 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %655, i32 0, i64 8
  %657 = getelementptr inbounds [4 x i32], [4 x i32]* %656, i32 0, i64 3
  store i32* %657, i32** %654, !tbaa !5
  %658 = getelementptr inbounds i32*, i32** %654, i64 1
  store i32* %l_681, i32** %658, !tbaa !5
  %659 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %645, i64 1
  %660 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %659, i64 0, i64 0
  %661 = getelementptr inbounds [6 x i32*], [6 x i32*]* %660, i64 0, i64 0
  store i32* %l_729, i32** %661, !tbaa !5
  %662 = getelementptr inbounds i32*, i32** %661, i64 1
  %663 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 1
  %664 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %663, i32 0, i64 8
  %665 = getelementptr inbounds [4 x i32], [4 x i32]* %664, i32 0, i64 3
  store i32* %665, i32** %662, !tbaa !5
  %666 = getelementptr inbounds i32*, i32** %662, i64 1
  store i32* %l_681, i32** %666, !tbaa !5
  %667 = getelementptr inbounds i32*, i32** %666, i64 1
  store i32* %l_681, i32** %667, !tbaa !5
  %668 = getelementptr inbounds i32*, i32** %667, i64 1
  %669 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 1
  %670 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %669, i32 0, i64 8
  %671 = getelementptr inbounds [4 x i32], [4 x i32]* %670, i32 0, i64 3
  store i32* %671, i32** %668, !tbaa !5
  %672 = getelementptr inbounds i32*, i32** %668, i64 1
  store i32* %l_729, i32** %672, !tbaa !5
  %673 = bitcast i8** %l_970 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %673) #1
  store i8* @g_494, i8** %l_970, align 8, !tbaa !5
  %674 = bitcast [4 x i32**]* %l_972 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %674) #1
  %675 = bitcast [4 x i32**]* %l_972 to i8*
  call void @llvm.memset.p0i8.i64(i8* %675, i8 0, i64 32, i32 16, i1 false)
  %676 = bitcast i32**** %l_971 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %676) #1
  %677 = getelementptr inbounds [4 x i32**], [4 x i32**]* %l_972, i32 0, i64 3
  store i32*** %677, i32**** %l_971, align 8, !tbaa !5
  %678 = bitcast [8 x i16**]* %l_974 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %678) #1
  %679 = bitcast [8 x i16**]* %l_974 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %679, i8* bitcast ([8 x i16**]* @func_20.l_974 to i8*), i64 64, i32 16, i1 false)
  %680 = bitcast [7 x i16***]* %l_973 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %680) #1
  %681 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %681) #1
  %682 = bitcast i32* %j10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %682) #1
  %683 = bitcast i32* %k11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %683) #1
  store i32 0, i32* %i9, align 4, !tbaa !1
  br label %684

; <label>:684                                     ; preds = %692, %501
  %685 = load i32, i32* %i9, align 4, !tbaa !1
  %686 = icmp slt i32 %685, 7
  br i1 %686, label %687, label %695

; <label>:687                                     ; preds = %684
  %688 = getelementptr inbounds [8 x i16**], [8 x i16**]* %l_974, i32 0, i64 5
  %689 = load i32, i32* %i9, align 4, !tbaa !1
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds [7 x i16***], [7 x i16***]* %l_973, i32 0, i64 %690
  store i16*** %688, i16**** %691, align 8, !tbaa !5
  br label %692

; <label>:692                                     ; preds = %687
  %693 = load i32, i32* %i9, align 4, !tbaa !1
  %694 = add nsw i32 %693, 1
  store i32 %694, i32* %i9, align 4, !tbaa !1
  br label %684

; <label>:695                                     ; preds = %684
  %696 = getelementptr inbounds [10 x [1 x [6 x i32*]]], [10 x [1 x [6 x i32*]]]* %l_956, i32 0, i64 0
  %697 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %696, i32 0, i64 0
  %698 = getelementptr inbounds [6 x i32*], [6 x i32*]* %697, i32 0, i64 2
  store i32* null, i32** %698, align 8, !tbaa !5
  store i16 0, i16* @g_426, align 2, !tbaa !10
  br label %699

; <label>:699                                     ; preds = %885, %695
  %700 = load i16, i16* @g_426, align 2, !tbaa !10
  %701 = sext i16 %700 to i32
  %702 = icmp sgt i32 %701, -27
  br i1 %702, label %703, label %890

; <label>:703                                     ; preds = %699
  %704 = bitcast i16***** %l_962 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %704) #1
  %705 = getelementptr inbounds [5 x i16***], [5 x i16***]* %l_961, i32 0, i64 4
  store i16**** %705, i16***** %l_962, align 8, !tbaa !5
  %706 = bitcast i8** %l_967 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %706) #1
  store i8* @g_959, i8** %l_967, align 8, !tbaa !5
  %707 = bitcast i8*** %l_968 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %707) #1
  store i8** null, i8*** %l_968, align 8, !tbaa !5
  %708 = bitcast i8*** %l_969 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %708) #1
  store i8** @g_251, i8*** %l_969, align 8, !tbaa !5
  %709 = bitcast i32***** %l_998 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %709) #1
  store i32**** %l_971, i32***** %l_998, align 8, !tbaa !5
  %710 = bitcast i32* %l_1001 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %710) #1
  store i32 0, i32* %l_1001, align 4, !tbaa !1
  %711 = load i32, i32* %2, align 4, !tbaa !1
  %712 = load i32*, i32** %l_855, align 8, !tbaa !5
  %713 = load i32, i32* %712, align 4, !tbaa !1
  %714 = icmp ne i32 %713, 0
  br i1 %714, label %715, label %719

; <label>:715                                     ; preds = %703
  %716 = load i8, i8* @g_959, align 1, !tbaa !9
  %717 = zext i8 %716 to i32
  %718 = icmp ne i32 %717, 0
  br label %719

; <label>:719                                     ; preds = %715, %703
  %720 = phi i1 [ false, %703 ], [ %718, %715 ]
  %721 = zext i1 %720 to i32
  %722 = load i32, i32* %2, align 4, !tbaa !1
  %723 = call i32 @safe_unary_minus_func_int32_t_s(i32 %722)
  %724 = xor i32 %721, %723
  %725 = load volatile i32*, i32** @g_627, align 8, !tbaa !5
  store i32 %724, i32* %725, align 4, !tbaa !1
  %726 = getelementptr inbounds [5 x i16***], [5 x i16***]* %l_961, i32 0, i64 1
  %727 = load i16***, i16**** %726, align 8, !tbaa !5
  %728 = load i16****, i16***** %l_962, align 8, !tbaa !5
  store i16*** %727, i16**** %728, align 8, !tbaa !5
  %729 = load i8*, i8** %l_967, align 8, !tbaa !5
  %730 = load i8**, i8*** %l_969, align 8, !tbaa !5
  store i8* %729, i8** %730, align 8, !tbaa !5
  %731 = load i8*, i8** %l_970, align 8, !tbaa !5
  store i8* %731, i8** %l_682, align 8, !tbaa !5
  %732 = icmp eq i8* %729, %731
  %733 = zext i1 %732 to i32
  %734 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext -1, i32 %733)
  %735 = sext i16 %734 to i32
  %736 = load i32*, i32** %l_855, align 8, !tbaa !5
  store i32 %735, i32* %736, align 4, !tbaa !1
  %737 = trunc i32 %735 to i8
  %738 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext 105, i8 signext %737)
  %739 = load i32***, i32**** %l_971, align 8, !tbaa !5
  %740 = icmp eq i32*** %739, null
  %741 = zext i1 %740 to i32
  %742 = load i32, i32* @g_121, align 4, !tbaa !1
  %743 = trunc i32 %742 to i16
  %744 = load i16*, i16** %l_676, align 8, !tbaa !5
  store i16 %743, i16* %744, align 2, !tbaa !10
  %745 = getelementptr inbounds [7 x i16***], [7 x i16***]* %l_973, i32 0, i64 5
  %746 = load i16***, i16**** %745, align 8, !tbaa !5
  %747 = icmp ne i16*** %727, %746
  %748 = zext i1 %747 to i32
  %749 = load volatile i32**, i32*** @g_179, align 8, !tbaa !5
  %750 = load i32*, i32** %749, align 8, !tbaa !5
  %751 = load i32, i32* %750, align 4, !tbaa !1
  %752 = or i32 %751, %748
  store i32 %752, i32* %750, align 4, !tbaa !1
  store i8 0, i8* %l_931, align 1, !tbaa !9
  br label %753

; <label>:753                                     ; preds = %870, %719
  %754 = load i8, i8* %l_931, align 1, !tbaa !9
  %755 = zext i8 %754 to i32
  %756 = icmp sgt i32 %755, 1
  br i1 %756, label %757, label %873

; <label>:757                                     ; preds = %753
  %758 = bitcast i64* %l_979 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %758) #1
  store i64 1668832856429998372, i64* %l_979, align 8, !tbaa !7
  %759 = bitcast i32****** %l_992 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %759) #1
  store i32***** null, i32****** %l_992, align 8, !tbaa !5
  %760 = bitcast i32****** %l_993 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %760) #1
  store i32***** null, i32****** %l_993, align 8, !tbaa !5
  %761 = bitcast [6 x i16*]* %l_999 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %761) #1
  %762 = bitcast [3 x [3 x i32]]* %l_1000 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %762) #1
  %763 = bitcast [3 x [3 x i32]]* %l_1000 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %763, i8* bitcast ([3 x [3 x i32]]* @func_20.l_1000 to i8*), i64 36, i32 16, i1 false)
  %764 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %764) #1
  %765 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %765) #1
  store i32 0, i32* %i12, align 4, !tbaa !1
  br label %766

; <label>:766                                     ; preds = %773, %757
  %767 = load i32, i32* %i12, align 4, !tbaa !1
  %768 = icmp slt i32 %767, 6
  br i1 %768, label %769, label %776

; <label>:769                                     ; preds = %766
  %770 = load i32, i32* %i12, align 4, !tbaa !1
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds [6 x i16*], [6 x i16*]* %l_999, i32 0, i64 %771
  store i16* @g_158, i16** %772, align 8, !tbaa !5
  br label %773

; <label>:773                                     ; preds = %769
  %774 = load i32, i32* %i12, align 4, !tbaa !1
  %775 = add nsw i32 %774, 1
  store i32 %775, i32* %i12, align 4, !tbaa !1
  br label %766

; <label>:776                                     ; preds = %766
  %777 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i64 0), align 4, !tbaa !1
  %778 = load i16*, i16** %l_676, align 8, !tbaa !5
  %779 = load i16, i16* %778, align 2, !tbaa !10
  %780 = zext i16 %779 to i64
  %781 = xor i64 %780, 11958
  %782 = trunc i64 %781 to i16
  store i16 %782, i16* %778, align 2, !tbaa !10
  %783 = zext i16 %782 to i32
  %784 = load i64, i64* %l_979, align 8, !tbaa !7
  %785 = trunc i64 %784 to i16
  %786 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext -107, i32 0)
  %787 = sext i8 %786 to i32
  %788 = load i32, i32* %2, align 4, !tbaa !1
  %789 = zext i32 %788 to i64
  %790 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext 0, i32 6)
  %791 = zext i8 %790 to i32
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %823, label %793

; <label>:793                                     ; preds = %776
  %794 = load i32, i32* %2, align 4, !tbaa !1
  %795 = load i16, i16* @g_265, align 2, !tbaa !10
  %796 = sext i16 %795 to i32
  %797 = or i32 %796, %794
  %798 = trunc i32 %797 to i16
  store i16 %798, i16* @g_265, align 2, !tbaa !10
  %799 = sext i16 %798 to i32
  store i32**** null, i32***** %l_994, align 8, !tbaa !5
  %800 = load i32****, i32***** %l_998, align 8, !tbaa !5
  %801 = icmp eq i32**** null, %800
  %802 = zext i1 %801 to i32
  %803 = sext i32 %802 to i64
  %804 = or i64 %803, 4235
  %805 = or i64 %804, 7
  %806 = trunc i64 %805 to i8
  %807 = load i32, i32* %2, align 4, !tbaa !1
  %808 = trunc i32 %807 to i8
  %809 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %806, i8 signext %808)
  %810 = sext i8 %809 to i32
  %811 = icmp ne i32 %810, 0
  br i1 %811, label %812, label %816

; <label>:812                                     ; preds = %793
  %813 = load i32*, i32** %l_935, align 8, !tbaa !5
  %814 = load i32, i32* %813, align 4, !tbaa !1
  %815 = icmp ne i32 %814, 0
  br label %816

; <label>:816                                     ; preds = %812, %793
  %817 = phi i1 [ false, %793 ], [ %815, %812 ]
  %818 = zext i1 %817 to i32
  %819 = icmp slt i32 %799, %818
  br i1 %819, label %823, label %820

; <label>:820                                     ; preds = %816
  %821 = load i64, i64* %l_979, align 8, !tbaa !7
  %822 = icmp ne i64 %821, 0
  br label %823

; <label>:823                                     ; preds = %820, %816, %776
  %824 = phi i1 [ true, %816 ], [ true, %776 ], [ %822, %820 ]
  %825 = zext i1 %824 to i32
  %826 = sext i32 %825 to i64
  %827 = icmp ule i64 %826, 0
  %828 = zext i1 %827 to i32
  %829 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i64 0), align 4, !tbaa !1
  %830 = trunc i32 %829 to i16
  %831 = load i32, i32* @g_121, align 4, !tbaa !1
  %832 = trunc i32 %831 to i16
  %833 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %830, i16 signext %832)
  %834 = sext i16 %833 to i64
  store i64 %834, i64* @g_842, align 8, !tbaa !7
  %835 = xor i64 %789, %834
  %836 = icmp ne i64 %835, 0
  br i1 %836, label %841, label %837

; <label>:837                                     ; preds = %823
  %838 = load i32*, i32** @g_334, align 8, !tbaa !5
  %839 = load i32, i32* %838, align 4, !tbaa !1
  %840 = icmp ne i32 %839, 0
  br label %841

; <label>:841                                     ; preds = %837, %823
  %842 = phi i1 [ true, %823 ], [ %840, %837 ]
  %843 = zext i1 %842 to i32
  %844 = load i32, i32* %2, align 4, !tbaa !1
  %845 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %l_1000, i32 0, i64 0
  %846 = getelementptr inbounds [3 x i32], [3 x i32]* %845, i32 0, i64 1
  store i32 %844, i32* %846, align 4, !tbaa !1
  %847 = trunc i32 %844 to i16
  %848 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext -4026, i16 signext %847)
  %849 = sext i16 %848 to i32
  %850 = icmp sgt i32 %787, %849
  %851 = zext i1 %850 to i32
  %852 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %785, i32 %851)
  %853 = zext i16 %852 to i32
  %854 = icmp eq i32 %783, %853
  %855 = zext i1 %854 to i32
  %856 = load i32*, i32** %l_935, align 8, !tbaa !5
  store i32 %855, i32* %856, align 4, !tbaa !1
  %857 = load i32, i32* %l_1001, align 4, !tbaa !1
  %858 = icmp ne i32 %857, 0
  br i1 %858, label %859, label %860

; <label>:859                                     ; preds = %841
  store i32 33, i32* %4
  br label %861

; <label>:860                                     ; preds = %841
  store i32 0, i32* %4
  br label %861

; <label>:861                                     ; preds = %860, %859
  %862 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %862) #1
  %863 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %863) #1
  %864 = bitcast [3 x [3 x i32]]* %l_1000 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %864) #1
  %865 = bitcast [6 x i16*]* %l_999 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %865) #1
  %866 = bitcast i32****** %l_993 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %866) #1
  %867 = bitcast i32****** %l_992 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %867) #1
  %868 = bitcast i64* %l_979 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %868) #1
  %cleanup.dest = load i32, i32* %4
  switch i32 %cleanup.dest, label %1496 [
    i32 0, label %869
    i32 33, label %873
  ]

; <label>:869                                     ; preds = %861
  br label %870

; <label>:870                                     ; preds = %869
  %871 = load i8, i8* %l_931, align 1, !tbaa !9
  %872 = add i8 %871, 1
  store i8 %872, i8* %l_931, align 1, !tbaa !9
  br label %753

; <label>:873                                     ; preds = %861, %753
  %874 = load i32*, i32** %l_935, align 8, !tbaa !5
  %875 = load i32, i32* %874, align 4, !tbaa !1
  %876 = load i32*, i32** %l_855, align 8, !tbaa !5
  %877 = load i32, i32* %876, align 4, !tbaa !1
  %878 = or i32 %877, %875
  store i32 %878, i32* %876, align 4, !tbaa !1
  %879 = bitcast i32* %l_1001 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %879) #1
  %880 = bitcast i32***** %l_998 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %880) #1
  %881 = bitcast i8*** %l_969 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %881) #1
  %882 = bitcast i8*** %l_968 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %882) #1
  %883 = bitcast i8** %l_967 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %883) #1
  %884 = bitcast i16***** %l_962 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %884) #1
  br label %885

; <label>:885                                     ; preds = %873
  %886 = load i16, i16* @g_426, align 2, !tbaa !10
  %887 = trunc i16 %886 to i8
  %888 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %887, i8 zeroext 3)
  %889 = zext i8 %888 to i16
  store i16 %889, i16* @g_426, align 2, !tbaa !10
  br label %699

; <label>:890                                     ; preds = %699
  %891 = load i32, i32* %l_1010, align 4, !tbaa !1
  %892 = add i32 %891, -1
  store i32 %892, i32* %l_1010, align 4, !tbaa !1
  %893 = load i32*, i32** %l_935, align 8, !tbaa !5
  %894 = load i32, i32* %893, align 4, !tbaa !1
  %895 = xor i32 %894, -1
  %896 = load i32, i32* @g_121, align 4, !tbaa !1
  %897 = load i32, i32* %2, align 4, !tbaa !1
  %898 = icmp eq i32 %896, %897
  %899 = zext i1 %898 to i32
  %900 = icmp slt i32 %895, %899
  %901 = zext i1 %900 to i32
  %902 = load i32, i32* %2, align 4, !tbaa !1
  %903 = icmp ne i32 %902, 0
  br i1 %903, label %904, label %918

; <label>:904                                     ; preds = %890
  %905 = load i32, i32* %2, align 4, !tbaa !1
  %906 = zext i32 %905 to i64
  %907 = load i64*, i64** @g_341, align 8, !tbaa !5
  %908 = load i64, i64* %907, align 8, !tbaa !7
  %909 = call i64 @safe_div_func_uint64_t_u_u(i64 %908, i64 1)
  %910 = icmp ne i64 %906, %909
  %911 = zext i1 %910 to i32
  %912 = load i32, i32* %2, align 4, !tbaa !1
  %913 = trunc i32 %912 to i16
  %914 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext 1, i16 signext %913)
  %915 = sext i16 %914 to i32
  %916 = load i32, i32* getelementptr inbounds ([3 x %union.U0], [3 x %union.U0]* @g_500, i32 0, i64 2, i32 0), align 4, !tbaa !1
  %917 = or i32 %915, %916
  br label %918

; <label>:918                                     ; preds = %904, %890
  %919 = phi i1 [ false, %890 ], [ true, %904 ]
  %920 = zext i1 %919 to i32
  %921 = trunc i32 %920 to i16
  %922 = load i32, i32* %2, align 4, !tbaa !1
  %923 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %921, i32 %922)
  %924 = zext i16 %923 to i64
  %925 = load i64*, i64** @g_341, align 8, !tbaa !5
  %926 = load i64, i64* %925, align 8, !tbaa !7
  %927 = icmp ult i64 %924, %926
  %928 = zext i1 %927 to i32
  %929 = sext i32 %928 to i64
  %930 = icmp uge i64 -2676835121991853104, %929
  %931 = zext i1 %930 to i32
  %932 = load i8, i8* getelementptr inbounds ([9 x [3 x [7 x i8]]], [9 x [3 x [7 x i8]]]* @g_857, i32 0, i64 1, i64 2, i64 6), align 1, !tbaa !9
  %933 = sext i8 %932 to i32
  %934 = icmp ne i32 %931, %933
  %935 = zext i1 %934 to i32
  %936 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 %935, i32* %936, align 4, !tbaa !1
  %937 = bitcast i32* %k11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %937) #1
  %938 = bitcast i32* %j10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %938) #1
  %939 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %939) #1
  %940 = bitcast [7 x i16***]* %l_973 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %940) #1
  %941 = bitcast [8 x i16**]* %l_974 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %941) #1
  %942 = bitcast i32**** %l_971 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %942) #1
  %943 = bitcast [4 x i32**]* %l_972 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %943) #1
  %944 = bitcast i8** %l_970 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %944) #1
  %945 = bitcast [10 x [1 x [6 x i32*]]]* %l_956 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %945) #1
  br label %1234

; <label>:946                                     ; preds = %483
  %947 = bitcast i32* %l_1025 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %947) #1
  store i32 1, i32* %l_1025, align 4, !tbaa !1
  %948 = bitcast i32** %l_1031 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %948) #1
  store i32* %l_930, i32** %l_1031, align 8, !tbaa !5
  %949 = bitcast [6 x [1 x %union.U0*]]* %l_1043 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %949) #1
  %950 = getelementptr inbounds [6 x [1 x %union.U0*]], [6 x [1 x %union.U0*]]* %l_1043, i64 0, i64 0
  %951 = getelementptr inbounds [1 x %union.U0*], [1 x %union.U0*]* %950, i64 0, i64 0
  store %union.U0* %l_934, %union.U0** %951, !tbaa !5
  %952 = getelementptr inbounds [1 x %union.U0*], [1 x %union.U0*]* %950, i64 1
  %953 = getelementptr inbounds [1 x %union.U0*], [1 x %union.U0*]* %952, i64 0, i64 0
  %954 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* %l_940, i32 0, i64 0
  store %union.U0* %954, %union.U0** %953, !tbaa !5
  %955 = getelementptr inbounds [1 x %union.U0*], [1 x %union.U0*]* %952, i64 1
  %956 = getelementptr inbounds [1 x %union.U0*], [1 x %union.U0*]* %955, i64 0, i64 0
  store %union.U0* %l_934, %union.U0** %956, !tbaa !5
  %957 = getelementptr inbounds [1 x %union.U0*], [1 x %union.U0*]* %955, i64 1
  %958 = getelementptr inbounds [1 x %union.U0*], [1 x %union.U0*]* %957, i64 0, i64 0
  %959 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* %l_940, i32 0, i64 0
  store %union.U0* %959, %union.U0** %958, !tbaa !5
  %960 = getelementptr inbounds [1 x %union.U0*], [1 x %union.U0*]* %957, i64 1
  %961 = getelementptr inbounds [1 x %union.U0*], [1 x %union.U0*]* %960, i64 0, i64 0
  store %union.U0* %l_934, %union.U0** %961, !tbaa !5
  %962 = getelementptr inbounds [1 x %union.U0*], [1 x %union.U0*]* %960, i64 1
  %963 = getelementptr inbounds [1 x %union.U0*], [1 x %union.U0*]* %962, i64 0, i64 0
  %964 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* %l_940, i32 0, i64 0
  store %union.U0* %964, %union.U0** %963, !tbaa !5
  %965 = bitcast i32* %l_1050 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %965) #1
  store i32 -1, i32* %l_1050, align 4, !tbaa !1
  %966 = bitcast [6 x i32]* %l_1052 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %966) #1
  %967 = bitcast [6 x i32]* %l_1052 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %967, i8* bitcast ([6 x i32]* @func_20.l_1052 to i8*), i64 24, i32 16, i1 false)
  %968 = bitcast i16* %l_1056 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %968) #1
  store i16 5085, i16* %l_1056, align 2, !tbaa !10
  %969 = bitcast i8** %l_1075 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %969) #1
  store i8* %l_931, i8** %l_1075, align 8, !tbaa !5
  %970 = bitcast i64* %l_1082 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %970) #1
  store i64 7234927925570377767, i64* %l_1082, align 8, !tbaa !7
  %971 = bitcast i32****** %l_1091 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %971) #1
  store i32***** @g_1087, i32****** %l_1091, align 8, !tbaa !5
  %972 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %972) #1
  %973 = bitcast i32* %j15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %973) #1
  store i64 0, i64* %l_861, align 8, !tbaa !7
  br label %974

; <label>:974                                     ; preds = %1086, %946
  %975 = load i64, i64* %l_861, align 8, !tbaa !7
  %976 = icmp ule i64 %975, 2
  br i1 %976, label %977, label %1089

; <label>:977                                     ; preds = %974
  %978 = bitcast [4 x i16]* %l_1026 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %978) #1
  %979 = bitcast i16* %l_1027 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %979) #1
  store i16 7604, i16* %l_1027, align 2, !tbaa !10
  %980 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %980) #1
  store i32 0, i32* %i16, align 4, !tbaa !1
  br label %981

; <label>:981                                     ; preds = %988, %977
  %982 = load i32, i32* %i16, align 4, !tbaa !1
  %983 = icmp slt i32 %982, 4
  br i1 %983, label %984, label %991

; <label>:984                                     ; preds = %981
  %985 = load i32, i32* %i16, align 4, !tbaa !1
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds [4 x i16], [4 x i16]* %l_1026, i32 0, i64 %986
  store i16 -1813, i16* %987, align 2, !tbaa !10
  br label %988

; <label>:988                                     ; preds = %984
  %989 = load i32, i32* %i16, align 4, !tbaa !1
  %990 = add nsw i32 %989, 1
  store i32 %990, i32* %i16, align 4, !tbaa !1
  br label %981

; <label>:991                                     ; preds = %981
  %992 = load i16, i16* %l_1027, align 2, !tbaa !10
  %993 = add i16 %992, -1
  store i16 %993, i16* %l_1027, align 2, !tbaa !10
  %994 = bitcast %union.U0* %l_934 to i32*
  %995 = load i32, i32* %994, align 4, !tbaa !1
  %996 = icmp ne i32 %995, 0
  br i1 %996, label %997, label %998

; <label>:997                                     ; preds = %991
  store i32 26, i32* %4
  br label %1081

; <label>:998                                     ; preds = %991
  store i32 0, i32* @g_372, align 4, !tbaa !1
  br label %999

; <label>:999                                     ; preds = %1077, %998
  %1000 = load i32, i32* @g_372, align 4, !tbaa !1
  %1001 = icmp ule i32 %1000, 0
  br i1 %1001, label %1002, label %1080

; <label>:1002                                    ; preds = %999
  %1003 = bitcast i8** %l_1038 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1003) #1
  store i8* null, i8** %l_1038, align 8, !tbaa !5
  %1004 = bitcast i8** %l_1039 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1004) #1
  store i8* @g_959, i8** %l_1039, align 8, !tbaa !5
  %1005 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1005) #1
  %1006 = load i8, i8* @g_291, align 1, !tbaa !9
  %1007 = icmp ne i8 %1006, 0
  br i1 %1007, label %1008, label %1009

; <label>:1008                                    ; preds = %1002
  store i32 26, i32* %4
  br label %1072

; <label>:1009                                    ; preds = %1002
  %1010 = load i32*, i32** %l_1031, align 8, !tbaa !5
  %1011 = icmp eq i32* null, %1010
  %1012 = zext i1 %1011 to i32
  %1013 = trunc i32 %1012 to i8
  %1014 = load i8*, i8** %l_682, align 8, !tbaa !5
  store i8 %1013, i8* %1014, align 1, !tbaa !9
  %1015 = zext i8 %1013 to i32
  %1016 = icmp ne i32 %1015, 0
  br i1 %1016, label %1023, label %1017

; <label>:1017                                    ; preds = %1009
  %1018 = load i32, i32* @g_372, align 4, !tbaa !1
  %1019 = zext i32 %1018 to i64
  %1020 = getelementptr inbounds [1 x i32], [1 x i32]* @g_96, i32 0, i64 %1019
  %1021 = load i32, i32* %1020, align 4, !tbaa !1
  %1022 = icmp ne i32 %1021, 0
  br label %1023

; <label>:1023                                    ; preds = %1017, %1009
  %1024 = phi i1 [ true, %1009 ], [ %1022, %1017 ]
  %1025 = zext i1 %1024 to i32
  %1026 = load i32, i32* @g_372, align 4, !tbaa !1
  %1027 = zext i32 %1026 to i64
  %1028 = getelementptr inbounds [1 x i32], [1 x i32]* @g_96, i32 0, i64 %1027
  %1029 = load i32, i32* %1028, align 4, !tbaa !1
  %1030 = sext i32 %1029 to i64
  %1031 = call i64 @safe_add_func_uint64_t_u_u(i64 %1030, i64 1)
  %1032 = load i8*, i8** %l_1039, align 8, !tbaa !5
  %1033 = load i8, i8* %1032, align 1, !tbaa !9
  %1034 = zext i8 %1033 to i64
  %1035 = or i64 %1034, %1031
  %1036 = trunc i64 %1035 to i8
  store i8 %1036, i8* %1032, align 1, !tbaa !9
  %1037 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %1036, i8 zeroext 0)
  %1038 = zext i8 %1037 to i32
  %1039 = icmp ne i32 %1038, 0
  br i1 %1039, label %1041, label %1040

; <label>:1040                                    ; preds = %1023
  br label %1041

; <label>:1041                                    ; preds = %1040, %1023
  %1042 = phi i1 [ true, %1023 ], [ true, %1040 ]
  %1043 = zext i1 %1042 to i32
  %1044 = load i32, i32* @g_372, align 4, !tbaa !1
  %1045 = zext i32 %1044 to i64
  %1046 = getelementptr inbounds [1 x i32], [1 x i32]* @g_96, i32 0, i64 %1045
  %1047 = load i32, i32* %1046, align 4, !tbaa !1
  %1048 = and i32 %1043, %1047
  br i1 false, label %1052, label %1049

; <label>:1049                                    ; preds = %1041
  %1050 = load i32, i32* %2, align 4, !tbaa !1
  %1051 = icmp ne i32 %1050, 0
  br label %1052

; <label>:1052                                    ; preds = %1049, %1041
  %1053 = phi i1 [ true, %1041 ], [ %1051, %1049 ]
  %1054 = zext i1 %1053 to i32
  %1055 = sext i32 %1054 to i64
  %1056 = call i64 @safe_unary_minus_func_uint64_t_u(i64 %1055)
  %1057 = icmp ne i64 %1056, 1
  %1058 = zext i1 %1057 to i32
  %1059 = icmp sle i32 %1025, %1058
  %1060 = zext i1 %1059 to i32
  %1061 = load i32, i32* @g_113, align 4, !tbaa !1
  %1062 = or i32 %1060, %1061
  %1063 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 %1062, i32* %1063, align 4, !tbaa !1
  %1064 = load i32, i32* %2, align 4, !tbaa !1
  %1065 = icmp ne i32 %1064, 0
  br i1 %1065, label %1066, label %1067

; <label>:1066                                    ; preds = %1052
  store i32 47, i32* %4
  br label %1072

; <label>:1067                                    ; preds = %1052
  %1068 = load i32, i32* %l_1025, align 4, !tbaa !1
  %1069 = icmp ne i32 %1068, 0
  br i1 %1069, label %1070, label %1071

; <label>:1070                                    ; preds = %1067
  store i32 47, i32* %4
  br label %1072

; <label>:1071                                    ; preds = %1067
  store i32 0, i32* %4
  br label %1072

; <label>:1072                                    ; preds = %1071, %1070, %1066, %1008
  %1073 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1073) #1
  %1074 = bitcast i8** %l_1039 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1074) #1
  %1075 = bitcast i8** %l_1038 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1075) #1
  %cleanup.dest.18 = load i32, i32* %4
  switch i32 %cleanup.dest.18, label %1081 [
    i32 0, label %1076
    i32 47, label %1077
  ]

; <label>:1076                                    ; preds = %1072
  br label %1077

; <label>:1077                                    ; preds = %1076, %1072
  %1078 = load i32, i32* @g_372, align 4, !tbaa !1
  %1079 = add i32 %1078, 1
  store i32 %1079, i32* @g_372, align 4, !tbaa !1
  br label %999

; <label>:1080                                    ; preds = %999
  store i32 0, i32* %4
  br label %1081

; <label>:1081                                    ; preds = %1080, %1072, %997
  %1082 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1082) #1
  %1083 = bitcast i16* %l_1027 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1083) #1
  %1084 = bitcast [4 x i16]* %l_1026 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1084) #1
  %cleanup.dest.19 = load i32, i32* %4
  switch i32 %cleanup.dest.19, label %1221 [
    i32 0, label %1085
  ]

; <label>:1085                                    ; preds = %1081
  br label %1086

; <label>:1086                                    ; preds = %1085
  %1087 = load i64, i64* %l_861, align 8, !tbaa !7
  %1088 = add i64 %1087, 1
  store i64 %1088, i64* %l_861, align 8, !tbaa !7
  br label %974

; <label>:1089                                    ; preds = %974
  %1090 = getelementptr inbounds [7 x [9 x [4 x i32]]], [7 x [9 x [4 x i32]]]* %l_734, i32 0, i64 0
  %1091 = getelementptr inbounds [9 x [4 x i32]], [9 x [4 x i32]]* %1090, i32 0, i64 1
  %1092 = getelementptr inbounds [4 x i32], [4 x i32]* %1091, i32 0, i64 1
  store i32* %1092, i32** %l_855, align 8, !tbaa !5
  store i32 4, i32* %l_1005, align 4, !tbaa !1
  br label %1093

; <label>:1093                                    ; preds = %1158, %1089
  %1094 = load i32, i32* %l_1005, align 4, !tbaa !1
  %1095 = icmp sge i32 %1094, 0
  br i1 %1095, label %1096, label %1161

; <label>:1096                                    ; preds = %1093
  %1097 = bitcast [8 x i16*]* %l_1042 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1097) #1
  %1098 = bitcast [8 x i16*]* %l_1042 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1098, i8* bitcast ([8 x i16*]* @func_20.l_1042 to i8*), i64 64, i32 16, i1 false)
  %1099 = bitcast i32* %l_1048 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1099) #1
  store i32 740376939, i32* %l_1048, align 4, !tbaa !1
  %1100 = bitcast i32* %l_1051 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1100) #1
  store i32 9, i32* %l_1051, align 4, !tbaa !1
  %1101 = bitcast i32* %l_1054 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1101) #1
  store i32 1, i32* %l_1054, align 4, !tbaa !1
  %1102 = bitcast [2 x [9 x i32]]* %l_1055 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1102) #1
  %1103 = bitcast [2 x [9 x i32]]* %l_1055 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1103, i8* bitcast ([2 x [9 x i32]]* @func_20.l_1055 to i8*), i64 72, i32 16, i1 false)
  %1104 = bitcast i32* %i20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1104) #1
  %1105 = bitcast i32* %j21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1105) #1
  %1106 = load i32, i32* %l_1025, align 4, !tbaa !1
  %1107 = trunc i32 %1106 to i16
  store i16 %1107, i16* @g_265, align 2, !tbaa !10
  %1108 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %1107, i32 8)
  %1109 = sext i16 %1108 to i32
  %1110 = load i32*, i32** @g_126, align 8, !tbaa !5
  %1111 = load i32, i32* %1110, align 4, !tbaa !1
  %1112 = or i32 %1111, %1109
  store i32 %1112, i32* %1110, align 4, !tbaa !1
  %1113 = getelementptr inbounds [6 x [1 x %union.U0*]], [6 x [1 x %union.U0*]]* %l_1043, i32 0, i64 5
  %1114 = getelementptr inbounds [1 x %union.U0*], [1 x %union.U0*]* %1113, i32 0, i64 0
  %1115 = load %union.U0*, %union.U0** %1114, align 8, !tbaa !5
  %1116 = load volatile %union.U0**, %union.U0*** @g_1044, align 8, !tbaa !5
  store %union.U0* %1115, %union.U0** %1116, align 8, !tbaa !5
  store i32 0, i32* %l_1007, align 4, !tbaa !1
  br label %1117

; <label>:1117                                    ; preds = %1145, %1096
  %1118 = load i32, i32* %l_1007, align 4, !tbaa !1
  %1119 = icmp sle i32 %1118, 0
  br i1 %1119, label %1120, label %1148

; <label>:1120                                    ; preds = %1117
  call void @llvm.lifetime.start(i64 1, i8* %l_1045) #1
  store i8 3, i8* %l_1045, align 1, !tbaa !9
  %1121 = bitcast [10 x i32]* %l_1049 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1121) #1
  %1122 = bitcast [10 x i32]* %l_1049 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1122, i8* bitcast ([10 x i32]* @func_20.l_1049 to i8*), i64 40, i32 16, i1 false)
  %1123 = bitcast i32***** %l_1060 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1123) #1
  store i32**** %l_1059, i32***** %l_1060, align 8, !tbaa !5
  %1124 = bitcast i32* %i22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1124) #1
  %1125 = bitcast i32* %j23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1125) #1
  %1126 = load i8, i8* %l_1045, align 1, !tbaa !9
  %1127 = add i8 %1126, 1
  store i8 %1127, i8* %l_1045, align 1, !tbaa !9
  %1128 = load i16, i16* %l_1056, align 2, !tbaa !10
  %1129 = add i16 %1128, 1
  store i16 %1129, i16* %l_1056, align 2, !tbaa !10
  %1130 = load i32***, i32**** %l_1059, align 8, !tbaa !5
  %1131 = load i32****, i32***** %l_1060, align 8, !tbaa !5
  store i32*** %1130, i32**** %1131, align 8, !tbaa !5
  %1132 = load i32, i32* %l_1007, align 4, !tbaa !1
  %1133 = add nsw i32 %1132, 4
  %1134 = sext i32 %1133 to i64
  %1135 = load i32, i32* %l_1005, align 4, !tbaa !1
  %1136 = sext i32 %1135 to i64
  %1137 = getelementptr inbounds [5 x [8 x i64]], [5 x [8 x i64]]* @g_154, i32 0, i64 %1136
  %1138 = getelementptr inbounds [8 x i64], [8 x i64]* %1137, i32 0, i64 %1134
  %1139 = load i64, i64* %1138, align 8, !tbaa !7
  %1140 = trunc i64 %1139 to i16
  store i16 %1140, i16* %1
  store i32 1, i32* %4
  %1141 = bitcast i32* %j23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1141) #1
  %1142 = bitcast i32* %i22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1142) #1
  %1143 = bitcast i32***** %l_1060 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1143) #1
  %1144 = bitcast [10 x i32]* %l_1049 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1144) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1045) #1
  br label %1149
                                                  ; No predecessors!
  %1146 = load i32, i32* %l_1007, align 4, !tbaa !1
  %1147 = add nsw i32 %1146, 1
  store i32 %1147, i32* %l_1007, align 4, !tbaa !1
  br label %1117

; <label>:1148                                    ; preds = %1117
  store i32 0, i32* %4
  br label %1149

; <label>:1149                                    ; preds = %1148, %1120
  %1150 = bitcast i32* %j21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1150) #1
  %1151 = bitcast i32* %i20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1151) #1
  %1152 = bitcast [2 x [9 x i32]]* %l_1055 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %1152) #1
  %1153 = bitcast i32* %l_1054 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1153) #1
  %1154 = bitcast i32* %l_1051 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1154) #1
  %1155 = bitcast i32* %l_1048 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1155) #1
  %1156 = bitcast [8 x i16*]* %l_1042 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1156) #1
  %cleanup.dest.24 = load i32, i32* %4
  switch i32 %cleanup.dest.24, label %1221 [
    i32 0, label %1157
  ]

; <label>:1157                                    ; preds = %1149
  br label %1158

; <label>:1158                                    ; preds = %1157
  %1159 = load i32, i32* %l_1005, align 4, !tbaa !1
  %1160 = sub nsw i32 %1159, 1
  store i32 %1160, i32* %l_1005, align 4, !tbaa !1
  br label %1093

; <label>:1161                                    ; preds = %1093
  %1162 = load i32, i32* %2, align 4, !tbaa !1
  %1163 = load i32*, i32** %l_855, align 8, !tbaa !5
  %1164 = load i32, i32* %1163, align 4, !tbaa !1
  %1165 = trunc i32 %1164 to i8
  %1166 = load i8*, i8** %l_1075, align 8, !tbaa !5
  %1167 = icmp ne i8* %1166, @g_494
  %1168 = zext i1 %1167 to i32
  %1169 = load i16, i16* @g_426, align 2, !tbaa !10
  %1170 = load i32, i32* %2, align 4, !tbaa !1
  %1171 = call i32 @safe_div_func_int32_t_s_s(i32 8, i32 %1170)
  %1172 = trunc i32 %1171 to i16
  %1173 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %1169, i16 signext %1172)
  %1174 = sext i16 %1173 to i64
  store i64 %1174, i64* %l_1082, align 8, !tbaa !7
  %1175 = trunc i64 %1174 to i32
  %1176 = load i32****, i32***** getelementptr inbounds ([8 x i32****], [8 x i32****]* @g_1083, i32 0, i64 6), align 8, !tbaa !5
  %1177 = load i32****, i32***** @g_1087, align 8, !tbaa !5
  %1178 = load i32*****, i32****** %l_1091, align 8, !tbaa !5
  store i32**** %1177, i32***** %1178, align 8, !tbaa !5
  %1179 = icmp eq i32**** %1176, %1177
  %1180 = zext i1 %1179 to i32
  %1181 = load i16, i16* %l_1056, align 2, !tbaa !10
  %1182 = zext i16 %1181 to i32
  %1183 = icmp sle i32 %1180, %1182
  br i1 %1183, label %1184, label %1188

; <label>:1184                                    ; preds = %1161
  %1185 = load i8, i8* @g_291, align 1, !tbaa !9
  %1186 = sext i8 %1185 to i32
  %1187 = icmp ne i32 %1186, 0
  br label %1188

; <label>:1188                                    ; preds = %1184, %1161
  %1189 = phi i1 [ false, %1161 ], [ %1187, %1184 ]
  %1190 = zext i1 %1189 to i32
  %1191 = call i32 @safe_div_func_int32_t_s_s(i32 %1175, i32 %1190)
  %1192 = trunc i32 %1191 to i16
  %1193 = load i32*, i32** %l_855, align 8, !tbaa !5
  %1194 = load i32, i32* %1193, align 4, !tbaa !1
  %1195 = trunc i32 %1194 to i16
  %1196 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %1192, i16 signext %1195)
  %1197 = sext i16 %1196 to i32
  %1198 = load volatile i32*, i32** @g_627, align 8, !tbaa !5
  %1199 = load i32, i32* %1198, align 4, !tbaa !1
  %1200 = call i32 @safe_sub_func_int32_t_s_s(i32 %1197, i32 %1199)
  %1201 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %1165, i32 %1200)
  %1202 = zext i8 %1201 to i32
  %1203 = load i32*, i32** @g_126, align 8, !tbaa !5
  %1204 = load i32, i32* %1203, align 4, !tbaa !1
  %1205 = call i32 @safe_div_func_int32_t_s_s(i32 548709340, i32 %1204)
  %1206 = sext i32 %1205 to i64
  %1207 = load i32*, i32** %l_855, align 8, !tbaa !5
  %1208 = load i32, i32* %1207, align 4, !tbaa !1
  %1209 = sext i32 %1208 to i64
  %1210 = call i64 @safe_mod_func_int64_t_s_s(i64 %1206, i64 %1209)
  %1211 = load i32, i32* %2, align 4, !tbaa !1
  %1212 = zext i32 %1211 to i64
  %1213 = icmp ne i64 %1210, %1212
  %1214 = zext i1 %1213 to i32
  %1215 = load i32*, i32** %l_935, align 8, !tbaa !5
  %1216 = load i32, i32* %1215, align 4, !tbaa !1
  %1217 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext 104, i32 %1216)
  %1218 = zext i8 %1217 to i32
  %1219 = load i32, i32* %l_1006, align 4, !tbaa !1
  %1220 = and i32 %1219, %1218
  store i32 %1220, i32* %l_1006, align 4, !tbaa !1
  store i32 0, i32* %4
  br label %1221

; <label>:1221                                    ; preds = %1188, %1149, %1081
  %1222 = bitcast i32* %j15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1222) #1
  %1223 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1223) #1
  %1224 = bitcast i32****** %l_1091 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1224) #1
  %1225 = bitcast i64* %l_1082 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1225) #1
  %1226 = bitcast i8** %l_1075 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1226) #1
  %1227 = bitcast i16* %l_1056 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1227) #1
  %1228 = bitcast [6 x i32]* %l_1052 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1228) #1
  %1229 = bitcast i32* %l_1050 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1229) #1
  %1230 = bitcast [6 x [1 x %union.U0*]]* %l_1043 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %1230) #1
  %1231 = bitcast i32** %l_1031 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1231) #1
  %1232 = bitcast i32* %l_1025 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1232) #1
  %cleanup.dest.25 = load i32, i32* %4
  switch i32 %cleanup.dest.25, label %1239 [
    i32 0, label %1233
    i32 26, label %430
  ]

; <label>:1233                                    ; preds = %1221
  br label %1234

; <label>:1234                                    ; preds = %1233, %918
  %1235 = load i32, i32* %2, align 4, !tbaa !1
  %1236 = load i32*, i32** @g_126, align 8, !tbaa !5
  %1237 = load i32, i32* %1236, align 4, !tbaa !1
  %1238 = xor i32 %1237, %1235
  store i32 %1238, i32* %1236, align 4, !tbaa !1
  store i32 0, i32* %4
  br label %1239

; <label>:1239                                    ; preds = %1234, %1221
  %1240 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1240) #1
  %1241 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1241) #1
  %1242 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1242) #1
  %1243 = bitcast i32* %l_1009 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1243) #1
  %1244 = bitcast i32* %l_1008 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1244) #1
  %1245 = bitcast i32* %l_1007 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1245) #1
  %1246 = bitcast i32* %l_1006 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1246) #1
  %1247 = bitcast i32* %l_1005 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1247) #1
  %1248 = bitcast i32* %l_1003 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1248) #1
  %1249 = bitcast i32* %l_1002 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1249) #1
  %1250 = bitcast [5 x i16***]* %l_961 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1250) #1
  %1251 = bitcast [6 x [8 x i8*]]* %l_955 to i8*
  call void @llvm.lifetime.end(i64 384, i8* %1251) #1
  %1252 = bitcast [6 x [2 x [4 x i64****]]]* %l_938 to i8*
  call void @llvm.lifetime.end(i64 384, i8* %1252) #1
  %1253 = bitcast i32** %l_935 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1253) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_931) #1
  %cleanup.dest.26 = load i32, i32* %4
  switch i32 %cleanup.dest.26, label %1256 [
    i32 0, label %1254
  ]

; <label>:1254                                    ; preds = %1239
  br label %1255

; <label>:1255                                    ; preds = %1254, %201
  store i32 0, i32* %4
  br label %1256

; <label>:1256                                    ; preds = %1255, %1239
  %1257 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1257) #1
  %1258 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1258) #1
  %1259 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1259) #1
  %1260 = bitcast [10 x [3 x [6 x i32]]]* %l_1053 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %1260) #1
  %1261 = bitcast i32* %l_1010 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1261) #1
  %1262 = bitcast i32* %l_941 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1262) #1
  %1263 = bitcast [3 x %union.U0]* %l_940 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1263) #1
  %1264 = bitcast i64* %l_861 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1264) #1
  %1265 = bitcast i32** %l_855 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1265) #1
  %1266 = bitcast i16**** %l_822 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1266) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_799) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_798) #1
  %1267 = bitcast [7 x [9 x [4 x i32]]]* %l_734 to i8*
  call void @llvm.lifetime.end(i64 1008, i8* %1267) #1
  %1268 = bitcast i32* %l_732 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1268) #1
  %1269 = bitcast i32* %l_729 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1269) #1
  %1270 = bitcast i32** %l_694 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1270) #1
  %1271 = bitcast i8** %l_682 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1271) #1
  %1272 = bitcast i32* %l_681 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1272) #1
  %1273 = bitcast i16* %l_680 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1273) #1
  %cleanup.dest.27 = load i32, i32* %4
  switch i32 %cleanup.dest.27, label %1471 [
    i32 0, label %1274
  ]

; <label>:1274                                    ; preds = %1256
  br label %1468

; <label>:1275                                    ; preds = %107
  %1276 = bitcast i32* %l_1092 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1276) #1
  store i32 1308154422, i32* %l_1092, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1093) #1
  store i8 -1, i8* %l_1093, align 1, !tbaa !9
  %1277 = bitcast [6 x i8*]* %l_1101 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1277) #1
  %1278 = bitcast %union.U0** %l_1104 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1278) #1
  store %union.U0* %l_934, %union.U0** %l_1104, align 8, !tbaa !5
  %1279 = bitcast i64* %l_1109 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1279) #1
  store i64 -1241072887837980986, i64* %l_1109, align 8, !tbaa !7
  %1280 = bitcast i16****** %l_1113 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1280) #1
  store i16***** @g_1110, i16****** %l_1113, align 8, !tbaa !5
  %1281 = bitcast i8** %l_1114 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1281) #1
  store i8* getelementptr inbounds ([9 x [3 x [7 x i8]]], [9 x [3 x [7 x i8]]]* @g_857, i32 0, i64 8, i64 1, i64 1), i8** %l_1114, align 8, !tbaa !5
  %1282 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1282) #1
  store i32 0, i32* %i28, align 4, !tbaa !1
  br label %1283

; <label>:1283                                    ; preds = %1290, %1275
  %1284 = load i32, i32* %i28, align 4, !tbaa !1
  %1285 = icmp slt i32 %1284, 6
  br i1 %1285, label %1286, label %1293

; <label>:1286                                    ; preds = %1283
  %1287 = load i32, i32* %i28, align 4, !tbaa !1
  %1288 = sext i32 %1287 to i64
  %1289 = getelementptr inbounds [6 x i8*], [6 x i8*]* %l_1101, i32 0, i64 %1288
  store i8* @g_494, i8** %1289, align 8, !tbaa !5
  br label %1290

; <label>:1290                                    ; preds = %1286
  %1291 = load i32, i32* %i28, align 4, !tbaa !1
  %1292 = add nsw i32 %1291, 1
  store i32 %1292, i32* %i28, align 4, !tbaa !1
  br label %1283

; <label>:1293                                    ; preds = %1283
  %1294 = load i8, i8* %l_1093, align 1, !tbaa !9
  %1295 = add i8 %1294, -1
  store i8 %1295, i8* %l_1093, align 1, !tbaa !9
  %1296 = bitcast %union.U0* %l_934 to i32*
  store i32 0, i32* %1296, align 4, !tbaa !1
  br label %1297

; <label>:1297                                    ; preds = %1306, %1293
  %1298 = bitcast %union.U0* %l_934 to i32*
  %1299 = load i32, i32* %1298, align 4, !tbaa !1
  %1300 = icmp ule i32 %1299, 31
  br i1 %1300, label %1301, label %1311

; <label>:1301                                    ; preds = %1297
  %1302 = load i32, i32* %2, align 4, !tbaa !1
  %1303 = icmp ne i32 %1302, 0
  br i1 %1303, label %1304, label %1305

; <label>:1304                                    ; preds = %1301
  br label %1311

; <label>:1305                                    ; preds = %1301
  br label %1306

; <label>:1306                                    ; preds = %1305
  %1307 = bitcast %union.U0* %l_934 to i32*
  %1308 = load i32, i32* %1307, align 4, !tbaa !1
  %1309 = call i32 @safe_add_func_uint32_t_u_u(i32 %1308, i32 3)
  %1310 = bitcast %union.U0* %l_934 to i32*
  store i32 %1309, i32* %1310, align 4, !tbaa !1
  br label %1297

; <label>:1311                                    ; preds = %1304, %1297
  %1312 = load i16, i16* @g_605, align 2, !tbaa !10
  %1313 = trunc i16 %1312 to i8
  %1314 = load i8, i8* @g_494, align 1, !tbaa !9
  %1315 = add i8 %1314, 1
  store i8 %1315, i8* @g_494, align 1, !tbaa !9
  %1316 = zext i8 %1315 to i32
  %1317 = load %union.U0*, %union.U0** %l_1104, align 8, !tbaa !5
  %1318 = bitcast %union.U0* %1317 to i8*
  %1319 = bitcast %union.U0* %l_934 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1318, i8* %1319, i64 4, i32 4, i1 false), !tbaa.struct !12
  %1320 = load i32***, i32**** %l_995, align 8, !tbaa !5
  %1321 = load i32**, i32*** %1320, align 8, !tbaa !5
  %1322 = load i32***, i32**** %l_995, align 8, !tbaa !5
  store i32** %1321, i32*** %1322, align 8, !tbaa !5
  %1323 = icmp eq i32** %1321, null
  %1324 = zext i1 %1323 to i32
  %1325 = icmp sge i32 %1324, 1
  %1326 = zext i1 %1325 to i32
  %1327 = sext i32 %1326 to i64
  %1328 = xor i64 -4, %1327
  %1329 = trunc i64 %1328 to i32
  %1330 = load i32, i32* %l_1092, align 4, !tbaa !1
  %1331 = call i32 @safe_add_func_int32_t_s_s(i32 %1329, i32 %1330)
  %1332 = load i32*, i32** @g_334, align 8, !tbaa !5
  store i32 %1331, i32* %1332, align 4, !tbaa !1
  %1333 = call i32 @safe_div_func_uint32_t_u_u(i32 %1331, i32 -1816549566)
  %1334 = zext i32 %1333 to i64
  %1335 = load i64, i64* %l_1109, align 8, !tbaa !7
  %1336 = icmp ult i64 %1334, %1335
  %1337 = zext i1 %1336 to i32
  %1338 = sext i32 %1337 to i64
  %1339 = and i64 %1338, 4294967295
  %1340 = load i16****, i16***** @g_1110, align 8, !tbaa !5
  %1341 = load i16*****, i16****** %l_1113, align 8, !tbaa !5
  store i16**** %1340, i16***** %1341, align 8, !tbaa !5
  %1342 = icmp ne i16**** %1340, null
  %1343 = zext i1 %1342 to i32
  %1344 = load volatile i16, i16* @g_612, align 2, !tbaa !10
  %1345 = sext i16 %1344 to i32
  %1346 = and i32 %1343, %1345
  %1347 = load i32, i32* %2, align 4, !tbaa !1
  %1348 = trunc i32 %1347 to i8
  %1349 = load i8*, i8** %l_1114, align 8, !tbaa !5
  store i8 %1348, i8* %1349, align 1, !tbaa !9
  %1350 = sext i8 %1348 to i32
  %1351 = icmp sle i32 %1316, %1350
  %1352 = zext i1 %1351 to i32
  %1353 = trunc i32 %1352 to i8
  %1354 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1313, i8 zeroext %1353)
  %1355 = zext i8 %1354 to i32
  %1356 = load i32*, i32** @g_650, align 8, !tbaa !5
  %1357 = load i32, i32* %1356, align 4, !tbaa !1
  %1358 = or i32 %1355, %1357
  %1359 = xor i32 %1358, -1
  %1360 = icmp ne i32 %1359, 0
  br i1 %1360, label %1361, label %1449

; <label>:1361                                    ; preds = %1311
  call void @llvm.lifetime.start(i64 1, i8* %l_1135) #1
  store i8 -1, i8* %l_1135, align 1, !tbaa !9
  %1362 = bitcast i32* %l_1136 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1362) #1
  store i32 -4, i32* %l_1136, align 4, !tbaa !1
  %1363 = bitcast i32** %l_1138 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1363) #1
  store i32* %l_1004, i32** %l_1138, align 8, !tbaa !5
  store i16 0, i16* @g_426, align 2, !tbaa !10
  br label %1364

; <label>:1364                                    ; preds = %1435, %1361
  %1365 = load i16, i16* @g_426, align 2, !tbaa !10
  %1366 = sext i16 %1365 to i32
  %1367 = icmp eq i32 %1366, 10
  br i1 %1367, label %1368, label %1438

; <label>:1368                                    ; preds = %1364
  %1369 = bitcast i16** %l_1122 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1369) #1
  store i16* null, i16** %l_1122, align 8, !tbaa !5
  %1370 = bitcast i16*** %l_1121 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1370) #1
  store i16** %l_1122, i16*** %l_1121, align 8, !tbaa !5
  %1371 = bitcast i32* %l_1134 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1371) #1
  store i32 -5, i32* %l_1134, align 4, !tbaa !1
  %1372 = load i32, i32* %2, align 4, !tbaa !1
  %1373 = zext i32 %1372 to i64
  %1374 = icmp ne i64 %1373, 57197
  %1375 = zext i1 %1374 to i32
  %1376 = trunc i32 %1375 to i8
  %1377 = load i16*, i16** %l_676, align 8, !tbaa !5
  %1378 = load i16**, i16*** %l_1121, align 8, !tbaa !5
  store i16* %1377, i16** %1378, align 8, !tbaa !5
  %1379 = icmp eq i16* %1377, null
  %1380 = zext i1 %1379 to i32
  %1381 = sext i32 %1380 to i64
  %1382 = icmp sgt i64 %1381, 2667932441
  %1383 = zext i1 %1382 to i32
  %1384 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 %1383, i32* %1384, align 4, !tbaa !1
  %1385 = sext i32 %1383 to i64
  %1386 = icmp ule i64 %1385, 4294967286
  %1387 = zext i1 %1386 to i32
  %1388 = load i8*, i8** %l_1114, align 8, !tbaa !5
  store i8 1, i8* %1388, align 1, !tbaa !9
  %1389 = load i32, i32* %2, align 4, !tbaa !1
  %1390 = trunc i32 %1389 to i8
  %1391 = load i32, i32* %l_1134, align 4, !tbaa !1
  %1392 = trunc i32 %1391 to i8
  %1393 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1390, i8 zeroext %1392)
  %1394 = zext i8 %1393 to i32
  %1395 = load i8, i8* %l_1093, align 1, !tbaa !9
  %1396 = zext i8 %1395 to i32
  %1397 = icmp eq i32 %1394, %1396
  %1398 = zext i1 %1397 to i32
  %1399 = trunc i32 %1398 to i8
  %1400 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %1399, i32 6)
  %1401 = zext i8 %1400 to i32
  %1402 = icmp eq i32 1, %1401
  %1403 = zext i1 %1402 to i32
  %1404 = trunc i32 %1403 to i16
  %1405 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %1404, i32 10)
  %1406 = zext i16 %1405 to i32
  %1407 = load i8, i8* %l_1135, align 1, !tbaa !9
  %1408 = zext i8 %1407 to i32
  %1409 = icmp eq i32 %1406, %1408
  %1410 = zext i1 %1409 to i32
  %1411 = load i8, i8* %l_1135, align 1, !tbaa !9
  %1412 = zext i8 %1411 to i32
  %1413 = xor i32 %1410, %1412
  store i32 %1413, i32* %l_1136, align 4, !tbaa !1
  %1414 = load i32, i32* %2, align 4, !tbaa !1
  %1415 = trunc i32 %1414 to i16
  %1416 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext 3, i16 zeroext %1415)
  %1417 = load i32, i32* %2, align 4, !tbaa !1
  %1418 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %1416, i32 %1417)
  %1419 = zext i16 %1418 to i32
  %1420 = and i32 %1387, %1419
  %1421 = trunc i32 %1420 to i16
  %1422 = load i32, i32* %2, align 4, !tbaa !1
  %1423 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %1421, i32 %1422)
  %1424 = sext i16 %1423 to i32
  %1425 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %1376, i32 %1424)
  %1426 = sext i8 %1425 to i32
  %1427 = icmp ne i32 %1426, 0
  br i1 %1427, label %1428, label %1429

; <label>:1428                                    ; preds = %1368
  br label %1429

; <label>:1429                                    ; preds = %1428, %1368
  %1430 = phi i1 [ false, %1368 ], [ true, %1428 ]
  %1431 = zext i1 %1430 to i32
  store i32 %1431, i32* %l_1134, align 4, !tbaa !1
  store i32 %1431, i32* %l_1092, align 4, !tbaa !1
  %1432 = bitcast i32* %l_1134 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1432) #1
  %1433 = bitcast i16*** %l_1121 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1433) #1
  %1434 = bitcast i16** %l_1122 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1434) #1
  br label %1435

; <label>:1435                                    ; preds = %1429
  %1436 = load i16, i16* @g_426, align 2, !tbaa !10
  %1437 = add i16 %1436, 1
  store i16 %1437, i16* @g_426, align 2, !tbaa !10
  br label %1364

; <label>:1438                                    ; preds = %1364
  %1439 = load i8, i8* @g_291, align 1, !tbaa !9
  %1440 = icmp ne i8 %1439, 0
  br i1 %1440, label %1441, label %1442

; <label>:1441                                    ; preds = %1438
  br label %1443

; <label>:1442                                    ; preds = %1438
  br label %1443

; <label>:1443                                    ; preds = %1442, %1441
  %1444 = load volatile i32**, i32*** @g_179, align 8, !tbaa !5
  %1445 = load i32*, i32** %1444, align 8, !tbaa !5
  %1446 = load i32, i32* %1445, align 4, !tbaa !1
  store i32 %1446, i32* %l_1136, align 4, !tbaa !1
  store i32* %l_1136, i32** %l_1138, align 8, !tbaa !5
  %1447 = bitcast i32** %l_1138 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1447) #1
  %1448 = bitcast i32* %l_1136 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1448) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1135) #1
  br label %1460

; <label>:1449                                    ; preds = %1311
  %1450 = bitcast [9 x i32]* %l_1139 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1450) #1
  %1451 = bitcast [9 x i32]* %l_1139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1451, i8* bitcast ([9 x i32]* @func_20.l_1139 to i8*), i64 36, i32 16, i1 false)
  %1452 = bitcast i32* %i29 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1452) #1
  %1453 = getelementptr inbounds [9 x i32], [9 x i32]* %l_1139, i32 0, i64 6
  %1454 = load i32, i32* %1453, align 4, !tbaa !1
  %1455 = load i32*, i32** @g_126, align 8, !tbaa !5
  %1456 = load i32, i32* %1455, align 4, !tbaa !1
  %1457 = and i32 %1456, %1454
  store i32 %1457, i32* %1455, align 4, !tbaa !1
  %1458 = bitcast i32* %i29 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1458) #1
  %1459 = bitcast [9 x i32]* %l_1139 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %1459) #1
  br label %1460

; <label>:1460                                    ; preds = %1449, %1443
  %1461 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1461) #1
  %1462 = bitcast i8** %l_1114 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1462) #1
  %1463 = bitcast i16****** %l_1113 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1463) #1
  %1464 = bitcast i64* %l_1109 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1464) #1
  %1465 = bitcast %union.U0** %l_1104 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1465) #1
  %1466 = bitcast [6 x i8*]* %l_1101 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %1466) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1093) #1
  %1467 = bitcast i32* %l_1092 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1467) #1
  br label %1468

; <label>:1468                                    ; preds = %1460, %1274
  %1469 = load i32, i32* %2, align 4, !tbaa !1
  %1470 = trunc i32 %1469 to i16
  store i16 %1470, i16* %1
  store i32 1, i32* %4
  br label %1471

; <label>:1471                                    ; preds = %1468, %1256
  %1472 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1472) #1
  %1473 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1473) #1
  %1474 = bitcast i32**** %l_1059 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1474) #1
  %1475 = bitcast i32* %l_1004 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1475) #1
  %1476 = bitcast i32***** %l_994 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1476) #1
  %1477 = bitcast i32**** %l_995 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1477) #1
  %1478 = bitcast i32*** %l_996 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1478) #1
  %1479 = bitcast i32** %l_997 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1479) #1
  %1480 = bitcast i64**** %l_936 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1480) #1
  %1481 = bitcast [3 x i64**]* %l_937 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1481) #1
  %1482 = bitcast %union.U0* %l_934 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1482) #1
  %1483 = bitcast i32* %l_930 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1483) #1
  %1484 = bitcast [3 x i32**]* %l_854 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1484) #1
  %1485 = bitcast [1 x [3 x i16***]]* %l_823 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1485) #1
  %1486 = bitcast i16** %l_676 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1486) #1
  %1487 = bitcast [4 x [2 x i64*]]* %l_675 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1487) #1
  %1488 = bitcast i64** %l_674 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1488) #1
  %1489 = bitcast i16** %l_673 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1489) #1
  %1490 = bitcast i16*** %l_672 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1490) #1
  %1491 = bitcast i16** %l_671 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1491) #1
  %1492 = bitcast [1 x i32**]* %l_670 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1492) #1
  %1493 = bitcast i16*** %l_661 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1493) #1
  %1494 = bitcast [6 x i8]* %l_659 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %1494) #1
  %1495 = load i16, i16* %1
  ret i16 %1495

; <label>:1496                                    ; preds = %861
  unreachable
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5, %0
  %9 = load i8, i8* %1, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  br label %16

; <label>:11                                      ; preds = %5
  %12 = load i8, i8* %1, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  %14 = load i32, i32* %2, align 4, !tbaa !1
  %15 = ashr i32 %13, %14
  br label %16

; <label>:16                                      ; preds = %11, %8
  %17 = phi i32 [ %10, %8 ], [ %15, %11 ]
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @func_24(i8 zeroext %p_25, i16 signext %p_26, i32 %p_27.coerce, i64 %p_28, i32 %p_29) #0 {
  %p_27 = alloca %union.U0, align 4
  %1 = alloca i8, align 1
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %l_656 = alloca i8, align 1
  %5 = getelementptr %union.U0, %union.U0* %p_27, i32 0, i32 0
  store i32 %p_27.coerce, i32* %5, align 4
  store i8 %p_25, i8* %1, align 1, !tbaa !9
  store i16 %p_26, i16* %2, align 2, !tbaa !10
  store i64 %p_28, i64* %3, align 8, !tbaa !7
  store i32 %p_29, i32* %4, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_656) #1
  store i8 44, i8* %l_656, align 1, !tbaa !9
  %6 = load i8, i8* %l_656, align 1, !tbaa !9
  %7 = sext i8 %6 to i32
  call void @llvm.lifetime.end(i64 1, i8* %l_656) #1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @func_31(i16 signext %p_32) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i16, align 2
  %l_585 = alloca [3 x [3 x [6 x i16*]]], align 16
  %l_621 = alloca i32, align 4
  %l_631 = alloca %union.U0, align 4
  %l_636 = alloca [6 x [7 x i32***]], align 16
  %l_635 = alloca i32****, align 8
  %l_643 = alloca i16*, align 8
  %l_654 = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_580 = alloca [1 x i64**], align 8
  %l_582 = alloca %union.U0, align 4
  %l_586 = alloca [4 x [5 x [2 x i32]]], align 16
  %l_604 = alloca i16*, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %l_614 = alloca i16, align 2
  %l_619 = alloca i64**, align 8
  %l_622 = alloca %union.U0, align 4
  %l_629 = alloca i32*, align 8
  %l_599 = alloca i16*, align 8
  %l_606 = alloca i16**, align 8
  %l_613 = alloca i32, align 4
  %l_620 = alloca i64**, align 8
  %l_617 = alloca i64**, align 8
  %l_618 = alloca [7 x [9 x i64***]], align 16
  %l_623 = alloca %union.U0*, align 8
  %l_624 = alloca [7 x i32], align 16
  %l_625 = alloca i64*, align 8
  %l_626 = alloca i64*, align 8
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %l_628 = alloca i16, align 2
  %l_630 = alloca i32*, align 8
  %3 = alloca i32
  store i16 %p_32, i16* %2, align 2, !tbaa !10
  %4 = bitcast [3 x [3 x [6 x i16*]]]* %l_585 to i8*
  call void @llvm.lifetime.start(i64 432, i8* %4) #1
  %5 = bitcast [3 x [3 x [6 x i16*]]]* %l_585 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([3 x [3 x [6 x i16*]]]* @func_31.l_585 to i8*), i64 432, i32 16, i1 false)
  %6 = bitcast i32* %l_621 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 1, i32* %l_621, align 4, !tbaa !1
  %7 = bitcast %union.U0* %l_631 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %union.U0* %l_631 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%union.U0* @func_31.l_631 to i8*), i64 4, i32 4, i1 false)
  %9 = bitcast [6 x [7 x i32***]]* %l_636 to i8*
  call void @llvm.lifetime.start(i64 336, i8* %9) #1
  %10 = bitcast [6 x [7 x i32***]]* %l_636 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([6 x [7 x i32***]]* @func_31.l_636 to i8*), i64 336, i32 16, i1 false)
  %11 = bitcast i32***** %l_635 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = getelementptr inbounds [6 x [7 x i32***]], [6 x [7 x i32***]]* %l_636, i32 0, i64 2
  %13 = getelementptr inbounds [7 x i32***], [7 x i32***]* %12, i32 0, i64 0
  store i32**** %13, i32***** %l_635, align 8, !tbaa !5
  %14 = bitcast i16** %l_643 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i16* @g_293, i16** %l_643, align 8, !tbaa !5
  %15 = bitcast i8** %l_654 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i8* @g_425, i8** %l_654, align 8, !tbaa !5
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* @g_121, align 4, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %378, %0
  %20 = load i32, i32* @g_121, align 4, !tbaa !1
  %21 = icmp uge i32 %20, 45
  br i1 %21, label %22, label %383

; <label>:22                                      ; preds = %19
  %23 = bitcast [1 x i64**]* %l_580 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = bitcast %union.U0* %l_582 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast %union.U0* %l_582 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%union.U0* @func_31.l_582 to i8*), i64 4, i32 4, i1 false)
  %26 = bitcast [4 x [5 x [2 x i32]]]* %l_586 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %26) #1
  %27 = bitcast [4 x [5 x [2 x i32]]]* %l_586 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast ([4 x [5 x [2 x i32]]]* @func_31.l_586 to i8*), i64 160, i32 16, i1 false)
  %28 = bitcast i16** %l_604 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i16* @g_605, i16** %l_604, align 8, !tbaa !5
  %29 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %32

; <label>:32                                      ; preds = %39, %22
  %33 = load i32, i32* %i1, align 4, !tbaa !1
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %42

; <label>:35                                      ; preds = %32
  %36 = load i32, i32* %i1, align 4, !tbaa !1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [1 x i64**], [1 x i64**]* %l_580, i32 0, i64 %37
  store i64** @g_219, i64*** %38, align 8, !tbaa !5
  br label %39

; <label>:39                                      ; preds = %35
  %40 = load i32, i32* %i1, align 4, !tbaa !1
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %i1, align 4, !tbaa !1
  br label %32

; <label>:42                                      ; preds = %32
  %43 = load i64*, i64** @g_341, align 8, !tbaa !5
  %44 = load i64, i64* %43, align 8, !tbaa !7
  %45 = getelementptr inbounds [1 x i64**], [1 x i64**]* %l_580, i32 0, i64 0
  %46 = load i64**, i64*** %45, align 8, !tbaa !5
  %47 = load i64**, i64*** getelementptr inbounds ([8 x [3 x i64**]], [8 x [3 x i64**]]* @func_31.l_581, i32 0, i64 7, i64 1), align 8, !tbaa !5
  %48 = icmp eq i64** %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i16, i16* %2, align 2, !tbaa !10
  %51 = sext i16 %50 to i64
  %52 = call i64 @safe_sub_func_uint64_t_u_u(i64 %44, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %89

; <label>:54                                      ; preds = %42
  %55 = load i16, i16* @g_426, align 2, !tbaa !10
  %56 = load i16, i16* %2, align 2, !tbaa !10
  %57 = sext i16 %56 to i32
  %58 = getelementptr inbounds [3 x [3 x [6 x i16*]]], [3 x [3 x [6 x i16*]]]* %l_585, i32 0, i64 1
  %59 = getelementptr inbounds [3 x [6 x i16*]], [3 x [6 x i16*]]* %58, i32 0, i64 1
  %60 = getelementptr inbounds [6 x i16*], [6 x i16*]* %59, i32 0, i64 2
  %61 = load i16*, i16** %60, align 8, !tbaa !5
  %62 = icmp eq i16* null, %61
  br i1 %62, label %67, label %63

; <label>:63                                      ; preds = %54
  %64 = load i16, i16* %2, align 2, !tbaa !10
  %65 = sext i16 %64 to i32
  %66 = icmp ne i32 %65, 0
  br label %67

; <label>:67                                      ; preds = %63, %54
  %68 = phi i1 [ true, %54 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* getelementptr inbounds ([3 x %union.U0], [3 x %union.U0]* @g_500, i32 0, i64 2, i32 0), align 4, !tbaa !1
  %71 = icmp eq i32 0, %70
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = icmp ne i64 %73, 3406692007
  %75 = zext i1 %74 to i32
  %76 = icmp slt i32 %57, %75
  %77 = zext i1 %76 to i32
  %78 = load i32*, i32** @g_334, align 8, !tbaa !5
  %79 = load i32, i32* %78, align 4, !tbaa !1
  %80 = load i16, i16* %2, align 2, !tbaa !10
  %81 = sext i16 %80 to i32
  %82 = call i32 @safe_sub_func_uint32_t_u_u(i32 %79, i32 %81)
  %83 = getelementptr inbounds [4 x [5 x [2 x i32]]], [4 x [5 x [2 x i32]]]* %l_586, i32 0, i64 2
  %84 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %83, i32 0, i64 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %84, i32 0, i64 1
  %86 = load i32, i32* %85, align 4, !tbaa !1
  %87 = and i32 %86, %82
  store i32 %87, i32* %85, align 4, !tbaa !1
  %88 = icmp ne i32 %87, 0
  br label %89

; <label>:89                                      ; preds = %67, %42
  %90 = phi i1 [ false, %42 ], [ %88, %67 ]
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* @g_121, align 4, !tbaa !1
  %93 = icmp uge i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = trunc i32 %94 to i8
  %96 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %95, i32 6)
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

; <label>:99                                      ; preds = %89
  %100 = load i16, i16* %2, align 2, !tbaa !10
  %101 = sext i16 %100 to i32
  %102 = icmp ne i32 %101, 0
  br label %103

; <label>:103                                     ; preds = %99, %89
  %104 = phi i1 [ true, %89 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  %106 = sext i32 %105 to i64
  %107 = bitcast %union.U0* %l_582 to i32*
  %108 = load i32, i32* %107, align 4, !tbaa !1
  %109 = zext i32 %108 to i64
  %110 = call i64 @safe_sub_func_int64_t_s_s(i64 %106, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %347

; <label>:112                                     ; preds = %103
  %113 = bitcast i16* %l_614 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %113) #1
  store i16 -8, i16* %l_614, align 2, !tbaa !10
  %114 = bitcast i64*** %l_619 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %114) #1
  store i64** @g_341, i64*** %l_619, align 8, !tbaa !5
  %115 = bitcast %union.U0* %l_622 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  %116 = bitcast %union.U0* %l_622 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* bitcast (%union.U0* @func_31.l_622 to i8*), i64 4, i32 4, i1 false)
  %117 = bitcast i32** %l_629 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  store i32* null, i32** %l_629, align 8, !tbaa !5
  store i16 -14, i16* @g_158, align 2, !tbaa !10
  br label %118

; <label>:118                                     ; preds = %319, %112
  %119 = load i16, i16* @g_158, align 2, !tbaa !10
  %120 = sext i16 %119 to i32
  %121 = icmp slt i32 %120, 9
  br i1 %121, label %122, label %322

; <label>:122                                     ; preds = %118
  %123 = bitcast i16** %l_599 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #1
  store i16* @g_293, i16** %l_599, align 8, !tbaa !5
  %124 = bitcast i16*** %l_606 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %124) #1
  store i16** %l_604, i16*** %l_606, align 8, !tbaa !5
  %125 = bitcast i32* %l_613 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #1
  store i32 -1, i32* %l_613, align 4, !tbaa !1
  %126 = bitcast i64*** %l_620 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %126) #1
  store i64** @g_341, i64*** %l_620, align 8, !tbaa !5
  %127 = load i16*, i16** %l_599, align 8, !tbaa !5
  %128 = load i16, i16* %127, align 2, !tbaa !10
  %129 = add i16 %128, -1
  store i16 %129, i16* %127, align 2, !tbaa !10
  %130 = zext i16 %128 to i32
  %131 = or i32 0, %130
  %132 = trunc i32 %131 to i16
  %133 = load i16*, i16** %l_604, align 8, !tbaa !5
  %134 = load i16**, i16*** %l_606, align 8, !tbaa !5
  store i16* %133, i16** %134, align 8, !tbaa !5
  store i16* @g_605, i16** @g_607, align 8, !tbaa !5
  %135 = icmp eq i16* %133, @g_605
  %136 = zext i1 %135 to i32
  %137 = sext i32 %136 to i64
  %138 = icmp eq i64 0, %137
  %139 = zext i1 %138 to i32
  %140 = trunc i32 %139 to i16
  %141 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %132, i16 signext %140)
  %142 = load volatile i16, i16* @g_612, align 2, !tbaa !10
  %143 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %142, i16 signext 1)
  %144 = load i16, i16* @g_265, align 2, !tbaa !10
  %145 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %143, i16 zeroext %144)
  %146 = trunc i16 %145 to i8
  %147 = load i16, i16* %2, align 2, !tbaa !10
  %148 = trunc i16 %147 to i8
  %149 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %146, i8 signext %148)
  %150 = sext i8 %149 to i32
  %151 = load i8, i8* @g_425, align 1, !tbaa !9
  %152 = sext i8 %151 to i32
  %153 = xor i32 %150, %152
  %154 = call i32 @safe_add_func_int32_t_s_s(i32 1298825399, i32 %153)
  %155 = trunc i32 %154 to i16
  %156 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %155, i16 signext -13078)
  %157 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %156, i32 6)
  %158 = sext i16 %157 to i32
  %159 = load i16, i16* %l_614, align 2, !tbaa !10
  %160 = zext i16 %159 to i32
  %161 = icmp ne i32 %158, %160
  br i1 %161, label %162, label %292

; <label>:162                                     ; preds = %122
  %163 = bitcast i64*** %l_617 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %163) #1
  store i64** @g_341, i64*** %l_617, align 8, !tbaa !5
  %164 = bitcast [7 x [9 x i64***]]* %l_618 to i8*
  call void @llvm.lifetime.start(i64 504, i8* %164) #1
  %165 = getelementptr inbounds [7 x [9 x i64***]], [7 x [9 x i64***]]* %l_618, i64 0, i64 0
  %166 = getelementptr inbounds [9 x i64***], [9 x i64***]* %165, i64 0, i64 0
  store i64*** %l_617, i64**** %166, !tbaa !5
  %167 = getelementptr inbounds i64***, i64**** %166, i64 1
  store i64*** %l_617, i64**** %167, !tbaa !5
  %168 = getelementptr inbounds i64***, i64**** %167, i64 1
  store i64*** %l_617, i64**** %168, !tbaa !5
  %169 = getelementptr inbounds i64***, i64**** %168, i64 1
  store i64*** %l_617, i64**** %169, !tbaa !5
  %170 = getelementptr inbounds i64***, i64**** %169, i64 1
  store i64*** %l_617, i64**** %170, !tbaa !5
  %171 = getelementptr inbounds i64***, i64**** %170, i64 1
  store i64*** %l_617, i64**** %171, !tbaa !5
  %172 = getelementptr inbounds i64***, i64**** %171, i64 1
  store i64*** %l_617, i64**** %172, !tbaa !5
  %173 = getelementptr inbounds i64***, i64**** %172, i64 1
  store i64*** %l_617, i64**** %173, !tbaa !5
  %174 = getelementptr inbounds i64***, i64**** %173, i64 1
  store i64*** %l_617, i64**** %174, !tbaa !5
  %175 = getelementptr inbounds [9 x i64***], [9 x i64***]* %165, i64 1
  %176 = getelementptr inbounds [9 x i64***], [9 x i64***]* %175, i64 0, i64 0
  store i64*** %l_617, i64**** %176, !tbaa !5
  %177 = getelementptr inbounds i64***, i64**** %176, i64 1
  store i64*** %l_617, i64**** %177, !tbaa !5
  %178 = getelementptr inbounds i64***, i64**** %177, i64 1
  store i64*** %l_617, i64**** %178, !tbaa !5
  %179 = getelementptr inbounds i64***, i64**** %178, i64 1
  store i64*** %l_617, i64**** %179, !tbaa !5
  %180 = getelementptr inbounds i64***, i64**** %179, i64 1
  store i64*** null, i64**** %180, !tbaa !5
  %181 = getelementptr inbounds i64***, i64**** %180, i64 1
  store i64*** %l_617, i64**** %181, !tbaa !5
  %182 = getelementptr inbounds i64***, i64**** %181, i64 1
  store i64*** %l_617, i64**** %182, !tbaa !5
  %183 = getelementptr inbounds i64***, i64**** %182, i64 1
  store i64*** %l_617, i64**** %183, !tbaa !5
  %184 = getelementptr inbounds i64***, i64**** %183, i64 1
  store i64*** %l_617, i64**** %184, !tbaa !5
  %185 = getelementptr inbounds [9 x i64***], [9 x i64***]* %175, i64 1
  %186 = getelementptr inbounds [9 x i64***], [9 x i64***]* %185, i64 0, i64 0
  store i64*** %l_617, i64**** %186, !tbaa !5
  %187 = getelementptr inbounds i64***, i64**** %186, i64 1
  store i64*** %l_617, i64**** %187, !tbaa !5
  %188 = getelementptr inbounds i64***, i64**** %187, i64 1
  store i64*** %l_617, i64**** %188, !tbaa !5
  %189 = getelementptr inbounds i64***, i64**** %188, i64 1
  store i64*** %l_617, i64**** %189, !tbaa !5
  %190 = getelementptr inbounds i64***, i64**** %189, i64 1
  store i64*** %l_617, i64**** %190, !tbaa !5
  %191 = getelementptr inbounds i64***, i64**** %190, i64 1
  store i64*** %l_617, i64**** %191, !tbaa !5
  %192 = getelementptr inbounds i64***, i64**** %191, i64 1
  store i64*** %l_617, i64**** %192, !tbaa !5
  %193 = getelementptr inbounds i64***, i64**** %192, i64 1
  store i64*** %l_617, i64**** %193, !tbaa !5
  %194 = getelementptr inbounds i64***, i64**** %193, i64 1
  store i64*** %l_617, i64**** %194, !tbaa !5
  %195 = getelementptr inbounds [9 x i64***], [9 x i64***]* %185, i64 1
  %196 = getelementptr inbounds [9 x i64***], [9 x i64***]* %195, i64 0, i64 0
  store i64*** %l_617, i64**** %196, !tbaa !5
  %197 = getelementptr inbounds i64***, i64**** %196, i64 1
  store i64*** %l_617, i64**** %197, !tbaa !5
  %198 = getelementptr inbounds i64***, i64**** %197, i64 1
  store i64*** %l_617, i64**** %198, !tbaa !5
  %199 = getelementptr inbounds i64***, i64**** %198, i64 1
  store i64*** %l_617, i64**** %199, !tbaa !5
  %200 = getelementptr inbounds i64***, i64**** %199, i64 1
  store i64*** %l_617, i64**** %200, !tbaa !5
  %201 = getelementptr inbounds i64***, i64**** %200, i64 1
  store i64*** null, i64**** %201, !tbaa !5
  %202 = getelementptr inbounds i64***, i64**** %201, i64 1
  store i64*** null, i64**** %202, !tbaa !5
  %203 = getelementptr inbounds i64***, i64**** %202, i64 1
  store i64*** %l_617, i64**** %203, !tbaa !5
  %204 = getelementptr inbounds i64***, i64**** %203, i64 1
  store i64*** %l_617, i64**** %204, !tbaa !5
  %205 = getelementptr inbounds [9 x i64***], [9 x i64***]* %195, i64 1
  %206 = getelementptr inbounds [9 x i64***], [9 x i64***]* %205, i64 0, i64 0
  store i64*** %l_617, i64**** %206, !tbaa !5
  %207 = getelementptr inbounds i64***, i64**** %206, i64 1
  store i64*** %l_617, i64**** %207, !tbaa !5
  %208 = getelementptr inbounds i64***, i64**** %207, i64 1
  store i64*** %l_617, i64**** %208, !tbaa !5
  %209 = getelementptr inbounds i64***, i64**** %208, i64 1
  store i64*** null, i64**** %209, !tbaa !5
  %210 = getelementptr inbounds i64***, i64**** %209, i64 1
  store i64*** %l_617, i64**** %210, !tbaa !5
  %211 = getelementptr inbounds i64***, i64**** %210, i64 1
  store i64*** %l_617, i64**** %211, !tbaa !5
  %212 = getelementptr inbounds i64***, i64**** %211, i64 1
  store i64*** null, i64**** %212, !tbaa !5
  %213 = getelementptr inbounds i64***, i64**** %212, i64 1
  store i64*** %l_617, i64**** %213, !tbaa !5
  %214 = getelementptr inbounds i64***, i64**** %213, i64 1
  store i64*** %l_617, i64**** %214, !tbaa !5
  %215 = getelementptr inbounds [9 x i64***], [9 x i64***]* %205, i64 1
  %216 = getelementptr inbounds [9 x i64***], [9 x i64***]* %215, i64 0, i64 0
  store i64*** %l_617, i64**** %216, !tbaa !5
  %217 = getelementptr inbounds i64***, i64**** %216, i64 1
  store i64*** %l_617, i64**** %217, !tbaa !5
  %218 = getelementptr inbounds i64***, i64**** %217, i64 1
  store i64*** null, i64**** %218, !tbaa !5
  %219 = getelementptr inbounds i64***, i64**** %218, i64 1
  store i64*** %l_617, i64**** %219, !tbaa !5
  %220 = getelementptr inbounds i64***, i64**** %219, i64 1
  store i64*** %l_617, i64**** %220, !tbaa !5
  %221 = getelementptr inbounds i64***, i64**** %220, i64 1
  store i64*** null, i64**** %221, !tbaa !5
  %222 = getelementptr inbounds i64***, i64**** %221, i64 1
  store i64*** %l_617, i64**** %222, !tbaa !5
  %223 = getelementptr inbounds i64***, i64**** %222, i64 1
  store i64*** %l_617, i64**** %223, !tbaa !5
  %224 = getelementptr inbounds i64***, i64**** %223, i64 1
  store i64*** %l_617, i64**** %224, !tbaa !5
  %225 = getelementptr inbounds [9 x i64***], [9 x i64***]* %215, i64 1
  %226 = getelementptr inbounds [9 x i64***], [9 x i64***]* %225, i64 0, i64 0
  store i64*** %l_617, i64**** %226, !tbaa !5
  %227 = getelementptr inbounds i64***, i64**** %226, i64 1
  store i64*** %l_617, i64**** %227, !tbaa !5
  %228 = getelementptr inbounds i64***, i64**** %227, i64 1
  store i64*** null, i64**** %228, !tbaa !5
  %229 = getelementptr inbounds i64***, i64**** %228, i64 1
  store i64*** null, i64**** %229, !tbaa !5
  %230 = getelementptr inbounds i64***, i64**** %229, i64 1
  store i64*** %l_617, i64**** %230, !tbaa !5
  %231 = getelementptr inbounds i64***, i64**** %230, i64 1
  store i64*** %l_617, i64**** %231, !tbaa !5
  %232 = getelementptr inbounds i64***, i64**** %231, i64 1
  store i64*** %l_617, i64**** %232, !tbaa !5
  %233 = getelementptr inbounds i64***, i64**** %232, i64 1
  store i64*** %l_617, i64**** %233, !tbaa !5
  %234 = getelementptr inbounds i64***, i64**** %233, i64 1
  store i64*** %l_617, i64**** %234, !tbaa !5
  %235 = bitcast %union.U0** %l_623 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %235) #1
  store %union.U0* getelementptr inbounds ([3 x %union.U0], [3 x %union.U0]* @g_500, i32 0, i64 2), %union.U0** %l_623, align 8, !tbaa !5
  %236 = bitcast [7 x i32]* %l_624 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %236) #1
  %237 = bitcast [7 x i32]* %l_624 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %237, i8* bitcast ([7 x i32]* @func_31.l_624 to i8*), i64 28, i32 16, i1 false)
  %238 = bitcast i64** %l_625 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %238) #1
  store i64* getelementptr inbounds ([5 x [6 x [5 x i64]]], [5 x [6 x [5 x i64]]]* @g_47, i32 0, i64 0, i64 3, i64 1), i64** %l_625, align 8, !tbaa !5
  %239 = bitcast i64** %l_626 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %239) #1
  store i64* getelementptr inbounds ([5 x [6 x [5 x i64]]], [5 x [6 x [5 x i64]]]* @g_47, i32 0, i64 4, i64 4, i64 3), i64** %l_626, align 8, !tbaa !5
  %240 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %240) #1
  %241 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %241) #1
  %242 = load i64**, i64*** %l_617, align 8, !tbaa !5
  store i64** %242, i64*** %l_619, align 8, !tbaa !5
  %243 = load i64**, i64*** %l_620, align 8, !tbaa !5
  %244 = icmp eq i64** %242, %243
  br i1 %244, label %245, label %268

; <label>:245                                     ; preds = %162
  %246 = load i16, i16* %2, align 2, !tbaa !10
  %247 = sext i16 %246 to i32
  %248 = load i32, i32* %l_621, align 4, !tbaa !1
  %249 = load i16, i16* %2, align 2, !tbaa !10
  %250 = sext i16 %249 to i32
  %251 = load %union.U0*, %union.U0** %l_623, align 8, !tbaa !5
  %252 = bitcast %union.U0* %251 to i8*
  %253 = bitcast %union.U0* %l_622 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %252, i8* %253, i64 4, i32 4, i1 false), !tbaa.struct !12
  %254 = load volatile i16, i16* @g_612, align 2, !tbaa !10
  %255 = sext i16 %254 to i32
  %256 = getelementptr inbounds [7 x i32], [7 x i32]* %l_624, i32 0, i64 2
  %257 = load i32, i32* %256, align 4, !tbaa !1
  %258 = or i32 %255, %257
  %259 = load i64*, i64** %l_625, align 8, !tbaa !5
  store i64* %259, i64** %l_626, align 8, !tbaa !5
  %260 = load i64**, i64*** %l_619, align 8, !tbaa !5
  %261 = load i64*, i64** %260, align 8, !tbaa !5
  %262 = icmp ne i64* %259, %261
  %263 = zext i1 %262 to i32
  %264 = icmp sge i32 %258, %263
  %265 = zext i1 %264 to i32
  %266 = and i32 %250, %265
  %267 = icmp eq i32 %247, %266
  br label %268

; <label>:268                                     ; preds = %245, %162
  %269 = phi i1 [ false, %162 ], [ %267, %245 ]
  %270 = zext i1 %269 to i32
  %271 = call i32 @safe_sub_func_uint32_t_u_u(i32 %270, i32 -992314963)
  %272 = getelementptr inbounds [7 x i32], [7 x i32]* %l_624, i32 0, i64 0
  %273 = load i32, i32* %272, align 4, !tbaa !1
  %274 = xor i32 %271, %273
  %275 = load i16, i16* %2, align 2, !tbaa !10
  %276 = sext i16 %275 to i32
  %277 = or i32 %274, %276
  %278 = getelementptr inbounds [7 x i32], [7 x i32]* %l_624, i32 0, i64 2
  %279 = load i32, i32* %278, align 4, !tbaa !1
  %280 = load i32*, i32** @g_126, align 8, !tbaa !5
  %281 = load i32, i32* %280, align 4, !tbaa !1
  %282 = or i32 %281, %279
  store i32 %282, i32* %280, align 4, !tbaa !1
  %283 = load volatile i32*, i32** @g_627, align 8, !tbaa !5
  store i32 %282, i32* %283, align 4, !tbaa !1
  %284 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %285 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #1
  %286 = bitcast i64** %l_626 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %286) #1
  %287 = bitcast i64** %l_625 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #1
  %288 = bitcast [7 x i32]* %l_624 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %288) #1
  %289 = bitcast %union.U0** %l_623 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #1
  %290 = bitcast [7 x [9 x i64***]]* %l_618 to i8*
  call void @llvm.lifetime.end(i64 504, i8* %290) #1
  %291 = bitcast i64*** %l_617 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #1
  br label %314

; <label>:292                                     ; preds = %122
  %293 = bitcast i16* %l_628 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %293) #1
  store i16 1, i16* %l_628, align 2, !tbaa !10
  store i16 0, i16* @g_293, align 2, !tbaa !10
  br label %294

; <label>:294                                     ; preds = %301, %292
  %295 = load i16, i16* @g_293, align 2, !tbaa !10
  %296 = zext i16 %295 to i32
  %297 = icmp sle i32 %296, 1
  br i1 %297, label %298, label %306

; <label>:298                                     ; preds = %294
  %299 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 -705944638, i32* %299, align 4, !tbaa !1
  %300 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 -1, i32* %300, align 4, !tbaa !1
  br label %301

; <label>:301                                     ; preds = %298
  %302 = load i16, i16* @g_293, align 2, !tbaa !10
  %303 = zext i16 %302 to i32
  %304 = add nsw i32 %303, 1
  %305 = trunc i32 %304 to i16
  store i16 %305, i16* @g_293, align 2, !tbaa !10
  br label %294

; <label>:306                                     ; preds = %294
  %307 = getelementptr inbounds [4 x [5 x [2 x i32]]], [4 x [5 x [2 x i32]]]* %l_586, i32 0, i64 3
  %308 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %307, i32 0, i64 0
  %309 = getelementptr inbounds [2 x i32], [2 x i32]* %308, i32 0, i64 0
  store i32 -1426457443, i32* %309, align 4, !tbaa !1
  %310 = load i16, i16* %l_628, align 2, !tbaa !10
  %311 = sext i16 %310 to i32
  %312 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 %311, i32* %312, align 4, !tbaa !1
  %313 = bitcast i16* %l_628 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %313) #1
  br label %314

; <label>:314                                     ; preds = %306, %268
  %315 = bitcast i64*** %l_620 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #1
  %316 = bitcast i32* %l_613 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i16*** %l_606 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #1
  %318 = bitcast i16** %l_599 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %318) #1
  br label %319

; <label>:319                                     ; preds = %314
  %320 = load i16, i16* @g_158, align 2, !tbaa !10
  %321 = add i16 %320, 1
  store i16 %321, i16* @g_158, align 2, !tbaa !10
  br label %118

; <label>:322                                     ; preds = %118
  %323 = getelementptr inbounds [4 x [5 x [2 x i32]]], [4 x [5 x [2 x i32]]]* %l_586, i32 0, i64 2
  %324 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %323, i32 0, i64 4
  %325 = getelementptr inbounds [2 x i32], [2 x i32]* %324, i32 0, i64 1
  %326 = load i32, i32* %325, align 4, !tbaa !1
  %327 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 %326, i32* %327, align 4, !tbaa !1
  store i64 4, i64* @g_438, align 8, !tbaa !7
  br label %328

; <label>:328                                     ; preds = %335, %322
  %329 = load i64, i64* @g_438, align 8, !tbaa !7
  %330 = icmp sge i64 %329, 1
  br i1 %330, label %331, label %338

; <label>:331                                     ; preds = %328
  %332 = bitcast i32** %l_630 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %332) #1
  store i32* null, i32** %l_630, align 8, !tbaa !5
  %333 = load i32*, i32** %l_629, align 8, !tbaa !5
  store i32* %333, i32** %l_630, align 8, !tbaa !5
  %334 = bitcast i32** %l_630 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %334) #1
  br label %335

; <label>:335                                     ; preds = %331
  %336 = load i64, i64* @g_438, align 8, !tbaa !7
  %337 = sub nsw i64 %336, 1
  store i64 %337, i64* @g_438, align 8, !tbaa !7
  br label %328

; <label>:338                                     ; preds = %328
  %339 = load i64, i64* getelementptr inbounds ([5 x [6 x [5 x i64]]], [5 x [6 x [5 x i64]]]* @g_47, i32 0, i64 4, i64 3, i64 1), align 8, !tbaa !7
  %340 = bitcast %union.U0* %l_631 to i32*
  %341 = load i32, i32* %340, align 4, !tbaa !1
  %342 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 %341, i32* %342, align 4, !tbaa !1
  %343 = bitcast i32** %l_629 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %343) #1
  %344 = bitcast %union.U0* %l_622 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %344) #1
  %345 = bitcast i64*** %l_619 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #1
  %346 = bitcast i16* %l_614 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %346) #1
  br label %351

; <label>:347                                     ; preds = %103
  %348 = bitcast %union.U0* %l_631 to i32*
  %349 = load i32, i32* %348, align 4, !tbaa !1
  %350 = trunc i32 %349 to i8
  store i8 %350, i8* %1
  store i32 1, i32* %3
  br label %369

; <label>:351                                     ; preds = %338
  store i32 -19, i32* @g_52, align 4, !tbaa !1
  br label %352

; <label>:352                                     ; preds = %361, %351
  %353 = load i32, i32* @g_52, align 4, !tbaa !1
  %354 = icmp slt i32 %353, 12
  br i1 %354, label %355, label %364

; <label>:355                                     ; preds = %352
  %356 = getelementptr inbounds [4 x [5 x [2 x i32]]], [4 x [5 x [2 x i32]]]* %l_586, i32 0, i64 2
  %357 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %356, i32 0, i64 4
  %358 = getelementptr inbounds [2 x i32], [2 x i32]* %357, i32 0, i64 1
  %359 = load i32, i32* %358, align 4, !tbaa !1
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %1
  store i32 1, i32* %3
  br label %369
                                                  ; No predecessors!
  %362 = load i32, i32* @g_52, align 4, !tbaa !1
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* @g_52, align 4, !tbaa !1
  br label %352

; <label>:364                                     ; preds = %352
  %365 = load i16, i16* %2, align 2, !tbaa !10
  %366 = icmp ne i16 %365, 0
  br i1 %366, label %367, label %368

; <label>:367                                     ; preds = %364
  store i32 2, i32* %3
  br label %369

; <label>:368                                     ; preds = %364
  store i32 0, i32* %3
  br label %369

; <label>:369                                     ; preds = %368, %367, %355, %347
  %370 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %370) #1
  %371 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %371) #1
  %372 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %372) #1
  %373 = bitcast i16** %l_604 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %373) #1
  %374 = bitcast [4 x [5 x [2 x i32]]]* %l_586 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %374) #1
  %375 = bitcast %union.U0* %l_582 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %375) #1
  %376 = bitcast [1 x i64**]* %l_580 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %376) #1
  %cleanup.dest = load i32, i32* %3
  switch i32 %cleanup.dest, label %474 [
    i32 0, label %377
    i32 2, label %383
  ]

; <label>:377                                     ; preds = %369
  br label %378

; <label>:378                                     ; preds = %377
  %379 = load i32, i32* @g_121, align 4, !tbaa !1
  %380 = zext i32 %379 to i64
  %381 = call i64 @safe_add_func_uint64_t_u_u(i64 %380, i64 9)
  %382 = trunc i64 %381 to i32
  store i32 %382, i32* @g_121, align 4, !tbaa !1
  br label %19

; <label>:383                                     ; preds = %369, %19
  %384 = load i32***, i32**** getelementptr inbounds ([10 x i32***], [10 x i32***]* @func_31.l_634, i32 0, i64 6), align 8, !tbaa !5
  %385 = load i32****, i32***** %l_635, align 8, !tbaa !5
  store i32*** @g_333, i32**** %385, align 8, !tbaa !5
  %386 = icmp ne i32*** %384, @g_333
  %387 = zext i1 %386 to i32
  %388 = load i16, i16* %2, align 2, !tbaa !10
  %389 = load i16, i16* %2, align 2, !tbaa !10
  %390 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %389, i32 2)
  %391 = sext i16 %390 to i32
  %392 = bitcast %union.U0* %l_631 to i32*
  %393 = load i32, i32* %392, align 4, !tbaa !1
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %425

; <label>:395                                     ; preds = %383
  %396 = load i16*, i16** %l_643, align 8, !tbaa !5
  %397 = load i16, i16* %396, align 2, !tbaa !10
  %398 = add i16 %397, -1
  store i16 %398, i16* %396, align 2, !tbaa !10
  %399 = zext i16 %398 to i32
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %423

; <label>:401                                     ; preds = %395
  %402 = load i32**, i32*** @g_333, align 8, !tbaa !5
  %403 = load i32*, i32** %402, align 8, !tbaa !5
  %404 = load i32**, i32*** @g_333, align 8, !tbaa !5
  store i32* %403, i32** %404, align 8, !tbaa !5
  store i32* @g_123, i32** @g_650, align 8, !tbaa !5
  %405 = icmp eq i32* %403, @g_123
  %406 = zext i1 %405 to i32
  %407 = trunc i32 %406 to i8
  %408 = load i8*, i8** %l_654, align 8, !tbaa !5
  %409 = load i8, i8* %408, align 1, !tbaa !9
  %410 = sext i8 %409 to i32
  %411 = and i32 %410, 0
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %408, align 1, !tbaa !9
  %413 = bitcast %union.U0* %l_631 to i32*
  %414 = load i32, i32* %413, align 4, !tbaa !1
  %415 = trunc i32 %414 to i8
  %416 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %412, i8 signext %415)
  %417 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %407, i8 zeroext %416)
  %418 = load i16, i16* %2, align 2, !tbaa !10
  %419 = sext i16 %418 to i32
  %420 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %417, i32 %419)
  %421 = zext i8 %420 to i32
  %422 = icmp ne i32 %421, 0
  br label %423

; <label>:423                                     ; preds = %401, %395
  %424 = phi i1 [ false, %395 ], [ %422, %401 ]
  br label %425

; <label>:425                                     ; preds = %423, %383
  %426 = phi i1 [ false, %383 ], [ %424, %423 ]
  %427 = zext i1 %426 to i32
  %428 = bitcast %union.U0* %l_631 to i32*
  %429 = load i32, i32* %428, align 4, !tbaa !1
  %430 = icmp uge i32 %427, %429
  %431 = zext i1 %430 to i32
  %432 = load i16, i16* %2, align 2, !tbaa !10
  %433 = sext i16 %432 to i32
  %434 = or i32 %431, %433
  %435 = load i32, i32* %l_621, align 4, !tbaa !1
  %436 = icmp sle i32 %434, %435
  %437 = zext i1 %436 to i32
  %438 = sext i32 %437 to i64
  %439 = icmp ule i64 -1, %438
  %440 = zext i1 %439 to i32
  %441 = sext i32 %440 to i64
  %442 = and i64 %441, 1
  %443 = trunc i64 %442 to i16
  %444 = load i16, i16* %2, align 2, !tbaa !10
  %445 = sext i16 %444 to i32
  %446 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %443, i32 %445)
  %447 = zext i16 %446 to i32
  %448 = icmp sle i32 %391, %447
  %449 = zext i1 %448 to i32
  %450 = load i32, i32* %l_621, align 4, !tbaa !1
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %456, label %453

; <label>:453                                     ; preds = %425
  %454 = load i32, i32* %l_621, align 4, !tbaa !1
  %455 = icmp ne i32 %454, 0
  br label %456

; <label>:456                                     ; preds = %453, %425
  %457 = phi i1 [ true, %425 ], [ %455, %453 ]
  %458 = zext i1 %457 to i32
  %459 = sext i32 %458 to i64
  %460 = xor i64 %459, -1500925821360471860
  %461 = xor i64 %460, 1
  %462 = trunc i64 %461 to i16
  %463 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %388, i16 zeroext %462)
  %464 = zext i16 %463 to i32
  %465 = icmp eq i32 %387, %464
  %466 = zext i1 %465 to i32
  %467 = load i32*, i32** @g_126, align 8, !tbaa !5
  store i32 %466, i32* %467, align 4, !tbaa !1
  %468 = load i16, i16* %2, align 2, !tbaa !10
  %469 = sext i16 %468 to i32
  %470 = load i32, i32* %l_621, align 4, !tbaa !1
  %471 = or i32 %470, %469
  store i32 %471, i32* %l_621, align 4, !tbaa !1
  %472 = load i16, i16* %2, align 2, !tbaa !10
  %473 = trunc i16 %472 to i8
  store i8 %473, i8* %1
  store i32 1, i32* %3
  br label %474

; <label>:474                                     ; preds = %456, %369
  %475 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %475) #1
  %476 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %476) #1
  %477 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %477) #1
  %478 = bitcast i8** %l_654 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %478) #1
  %479 = bitcast i16** %l_643 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %479) #1
  %480 = bitcast i32***** %l_635 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %480) #1
  %481 = bitcast [6 x [7 x i32***]]* %l_636 to i8*
  call void @llvm.lifetime.end(i64 336, i8* %481) #1
  %482 = bitcast %union.U0* %l_631 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %482) #1
  %483 = bitcast i32* %l_621 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %483) #1
  %484 = bitcast [3 x [3 x [6 x i16*]]]* %l_585 to i8*
  call void @llvm.lifetime.end(i64 432, i8* %484) #1
  %485 = load i8, i8* %1
  ret i8 %485
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
define internal i32 @func_35(i32 %p_36.coerce, i32 %p_37, i8 signext %p_38) #0 {
  %1 = alloca %union.U0, align 4
  %p_36 = alloca %union.U0, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %l_479 = alloca i64***, align 8
  %l_478 = alloca i64****, align 8
  %l_484 = alloca i16*, align 8
  %l_493 = alloca i8*, align 8
  %l_497 = alloca i32, align 4
  %l_498 = alloca i8*, align 8
  %l_499 = alloca i32*, align 8
  %l_537 = alloca i32, align 4
  %l_538 = alloca i32, align 4
  %l_539 = alloca i32, align 4
  %l_540 = alloca i32, align 4
  %l_541 = alloca i32, align 4
  %l_542 = alloca i32, align 4
  %l_544 = alloca i32, align 4
  %l_545 = alloca i8, align 1
  %l_546 = alloca i32, align 4
  %l_548 = alloca i32, align 4
  %l_551 = alloca i32, align 4
  %l_552 = alloca i32, align 4
  %l_553 = alloca i16, align 2
  %l_557 = alloca [9 x i32], align 16
  %l_558 = alloca i16, align 2
  %l_571 = alloca [9 x [3 x [8 x %union.U0]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %4 = alloca i32
  %l_518 = alloca i64, align 8
  %l_529 = alloca i8, align 1
  %l_530 = alloca i16*, align 8
  %l_531 = alloca i16*, align 8
  %l_536 = alloca i32, align 4
  %l_543 = alloca i32, align 4
  %l_547 = alloca i32, align 4
  %l_549 = alloca i32, align 4
  %l_550 = alloca i32, align 4
  %l_556 = alloca [5 x i32], align 16
  %l_564 = alloca [10 x %union.U0*], align 16
  %i1 = alloca i32, align 4
  %l_532 = alloca i32*, align 8
  %l_533 = alloca i32*, align 8
  %l_534 = alloca [1 x i32*], align 8
  %l_535 = alloca [10 x i8], align 1
  %i2 = alloca i32, align 4
  %l_563 = alloca i64, align 8
  %l_569 = alloca i16, align 2
  %l_570 = alloca %union.U0, align 4
  %5 = getelementptr %union.U0, %union.U0* %p_36, i32 0, i32 0
  store i32 %p_36.coerce, i32* %5, align 4
  store i32 %p_37, i32* %2, align 4, !tbaa !1
  store i8 %p_38, i8* %3, align 1, !tbaa !9
  %6 = bitcast i64**** %l_479 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64*** @g_468, i64**** %l_479, align 8, !tbaa !5
  %7 = bitcast i64***** %l_478 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64**** %l_479, i64***** %l_478, align 8, !tbaa !5
  %8 = bitcast i16** %l_484 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i16* @g_293, i16** %l_484, align 8, !tbaa !5
  %9 = bitcast i8** %l_493 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i8* @g_494, i8** %l_493, align 8, !tbaa !5
  %10 = bitcast i32* %l_497 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 -1, i32* %l_497, align 4, !tbaa !1
  %11 = bitcast i8** %l_498 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8* @g_291, i8** %l_498, align 8, !tbaa !5
  %12 = bitcast i32** %l_499 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32* null, i32** %l_499, align 8, !tbaa !5
  %13 = bitcast i32* %l_537 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 1, i32* %l_537, align 4, !tbaa !1
  %14 = bitcast i32* %l_538 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 -3, i32* %l_538, align 4, !tbaa !1
  %15 = bitcast i32* %l_539 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 -2, i32* %l_539, align 4, !tbaa !1
  %16 = bitcast i32* %l_540 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 -8, i32* %l_540, align 4, !tbaa !1
  %17 = bitcast i32* %l_541 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 -1469871219, i32* %l_541, align 4, !tbaa !1
  %18 = bitcast i32* %l_542 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 -1582810913, i32* %l_542, align 4, !tbaa !1
  %19 = bitcast i32* %l_544 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 -901480945, i32* %l_544, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_545) #1
  store i8 9, i8* %l_545, align 1, !tbaa !9
  %20 = bitcast i32* %l_546 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 1, i32* %l_546, align 4, !tbaa !1
  %21 = bitcast i32* %l_548 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 8, i32* %l_548, align 4, !tbaa !1
  %22 = bitcast i32* %l_551 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 -1, i32* %l_551, align 4, !tbaa !1
  %23 = bitcast i32* %l_552 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 0, i32* %l_552, align 4, !tbaa !1
  %24 = bitcast i16* %l_553 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %24) #1
  store i16 17339, i16* %l_553, align 2, !tbaa !10
  %25 = bitcast [9 x i32]* %l_557 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %25) #1
  %26 = bitcast [9 x i32]* %l_557 to i8*
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 36, i32 16, i1 false)
  %27 = bitcast i8* %26 to [9 x i32]*
  %28 = getelementptr [9 x i32], [9 x i32]* %27, i32 0, i32 1
  store i32 63229400, i32* %28
  %29 = getelementptr [9 x i32], [9 x i32]* %27, i32 0, i32 2
  store i32 63229400, i32* %29
  %30 = getelementptr [9 x i32], [9 x i32]* %27, i32 0, i32 4
  store i32 63229400, i32* %30
  %31 = getelementptr [9 x i32], [9 x i32]* %27, i32 0, i32 5
  store i32 63229400, i32* %31
  %32 = getelementptr [9 x i32], [9 x i32]* %27, i32 0, i32 7
  store i32 63229400, i32* %32
  %33 = getelementptr [9 x i32], [9 x i32]* %27, i32 0, i32 8
  store i32 63229400, i32* %33
  %34 = bitcast i16* %l_558 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %34) #1
  store i16 -5, i16* %l_558, align 2, !tbaa !10
  %35 = bitcast [9 x [3 x [8 x %union.U0]]]* %l_571 to i8*
  call void @llvm.lifetime.start(i64 864, i8* %35) #1
  %36 = bitcast [9 x [3 x [8 x %union.U0]]]* %l_571 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* bitcast ([9 x [3 x [8 x %union.U0]]]* @func_35.l_571 to i8*), i64 864, i32 16, i1 false)
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i64****, i64***** %l_478, align 8, !tbaa !5
  %41 = icmp ne i64**** null, %40
  %42 = zext i1 %41 to i32
  %43 = trunc i32 %42 to i16
  %44 = load i16*, i16** %l_484, align 8, !tbaa !5
  %45 = load i16, i16* %44, align 2, !tbaa !10
  %46 = add i16 %45, -1
  store i16 %46, i16* %44, align 2, !tbaa !10
  %47 = zext i16 %45 to i32
  %48 = load i32**, i32*** @g_333, align 8, !tbaa !5
  %49 = load i32*, i32** %48, align 8, !tbaa !5
  %50 = load i32, i32* %49, align 4, !tbaa !1
  %51 = zext i32 %50 to i64
  %52 = icmp eq i64 %51, 170201158
  %53 = zext i1 %52 to i32
  %54 = bitcast %union.U0* %p_36 to i32*
  %55 = load i32, i32* %54, align 4, !tbaa !1
  %56 = trunc i32 %55 to i8
  %57 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %56, i32 1)
  %58 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext 6, i8 zeroext %57)
  %59 = zext i8 %58 to i32
  %60 = load i8*, i8** %l_493, align 8, !tbaa !5
  %61 = load i8, i8* %60, align 1, !tbaa !9
  %62 = zext i8 %61 to i64
  %63 = or i64 %62, 172
  %64 = trunc i64 %63 to i8
  store i8 %64, i8* %60, align 1, !tbaa !9
  %65 = zext i8 %64 to i32
  %66 = icmp ne i64**** null, %l_479
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 946347985
  %70 = zext i1 %69 to i32
  %71 = trunc i32 %70 to i8
  %72 = load i32, i32* %l_497, align 4, !tbaa !1
  %73 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %71, i32 %72)
  %74 = sext i8 %73 to i32
  %75 = bitcast %union.U0* %p_36 to i32*
  %76 = load i32, i32* %75, align 4, !tbaa !1
  %77 = xor i32 %74, %76
  %78 = zext i32 %77 to i64
  %79 = icmp sge i64 %78, 29732
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %l_497, align 4, !tbaa !1
  %82 = icmp sgt i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = bitcast %union.U0* %p_36 to i32*
  %85 = load i32, i32* %84, align 4, !tbaa !1
  %86 = or i32 %83, %85
  %87 = icmp eq i32 %65, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %l_497, align 4, !tbaa !1
  %90 = icmp slt i32 %59, %89
  %91 = zext i1 %90 to i32
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %l_498, align 8, !tbaa !5
  store i8 %92, i8* %93, align 1, !tbaa !9
  %94 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %92, i32 2)
  %95 = load i32, i32* %l_497, align 4, !tbaa !1
  %96 = xor i32 %53, %95
  %97 = load i32*, i32** @g_126, align 8, !tbaa !5
  %98 = load i32, i32* %97, align 4, !tbaa !1
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4, !tbaa !1
  %100 = load i32, i32* %l_497, align 4, !tbaa !1
  %101 = icmp slt i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32**, i32*** @g_333, align 8, !tbaa !5
  %104 = load i32*, i32** %103, align 8, !tbaa !5
  store i32 %102, i32* %104, align 4, !tbaa !1
  %105 = load i32*, i32** %l_499, align 8, !tbaa !5
  %106 = icmp eq i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %l_497, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = icmp eq i64 4, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* @g_121, align 4, !tbaa !1
  %113 = xor i32 %47, %112
  %114 = zext i32 %113 to i64
  %115 = icmp sgt i64 %114, 6695275601099116565
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %l_497, align 4, !tbaa !1
  %118 = and i32 %116, %117
  %119 = load i32, i32* %l_497, align 4, !tbaa !1
  %120 = icmp slt i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = trunc i32 %121 to i8
  %123 = load i16, i16* @g_426, align 2, !tbaa !10
  %124 = trunc i16 %123 to i8
  %125 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %122, i8 signext %124)
  %126 = sext i8 %125 to i32
  %127 = load i32, i32* %l_497, align 4, !tbaa !1
  %128 = xor i32 %126, %127
  %129 = load i32, i32* @g_372, align 4, !tbaa !1
  %130 = icmp ne i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = sext i32 %131 to i64
  %133 = load i64*, i64** @g_341, align 8, !tbaa !5
  %134 = load i64, i64* %133, align 8, !tbaa !7
  %135 = call i64 @safe_add_func_int64_t_s_s(i64 %132, i64 %134)
  %136 = trunc i64 %135 to i16
  %137 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %43, i16 signext %136)
  %138 = trunc i16 %137 to i8
  %139 = bitcast %union.U0* %p_36 to i32*
  %140 = load i32, i32* %139, align 4, !tbaa !1
  %141 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %138, i32 %140)
  %142 = sext i8 %141 to i64
  %143 = icmp ule i64 %142, 0
  br i1 %143, label %144, label %146

; <label>:144                                     ; preds = %0
  %145 = bitcast %union.U0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* bitcast (%union.U0* getelementptr inbounds ([3 x %union.U0], [3 x %union.U0]* @g_500, i32 0, i64 2) to i8*), i64 4, i32 4, i1 false), !tbaa.struct !12
  store i32 1, i32* %4
  br label %333

; <label>:146                                     ; preds = %0
  %147 = bitcast i64* %l_518 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %147) #1
  store i64 6, i64* %l_518, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_529) #1
  store i8 -10, i8* %l_529, align 1, !tbaa !9
  %148 = bitcast i16** %l_530 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %148) #1
  store i16* null, i16** %l_530, align 8, !tbaa !5
  %149 = bitcast i16** %l_531 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %149) #1
  store i16* @g_158, i16** %l_531, align 8, !tbaa !5
  %150 = bitcast i32* %l_536 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %150) #1
  store i32 -1, i32* %l_536, align 4, !tbaa !1
  %151 = bitcast i32* %l_543 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #1
  store i32 4, i32* %l_543, align 4, !tbaa !1
  %152 = bitcast i32* %l_547 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #1
  store i32 -1733794376, i32* %l_547, align 4, !tbaa !1
  %153 = bitcast i32* %l_549 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %153) #1
  store i32 205296483, i32* %l_549, align 4, !tbaa !1
  %154 = bitcast i32* %l_550 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %154) #1
  store i32 4, i32* %l_550, align 4, !tbaa !1
  %155 = bitcast [5 x i32]* %l_556 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %155) #1
  %156 = bitcast [5 x i32]* %l_556 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %156, i8* bitcast ([5 x i32]* @func_35.l_556 to i8*), i64 20, i32 16, i1 false)
  %157 = bitcast [10 x %union.U0*]* %l_564 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %157) #1
  %158 = bitcast [10 x %union.U0*]* %l_564 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %158, i8* bitcast ([10 x %union.U0*]* @func_35.l_564 to i8*), i64 80, i32 16, i1 false)
  %159 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  %160 = bitcast %union.U0* %p_36 to i32*
  %161 = load i32, i32* %160, align 4, !tbaa !1
  %162 = trunc i32 %161 to i16
  %163 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %162, i32 12)
  %164 = sext i16 %163 to i32
  %165 = load i32*, i32** @g_334, align 8, !tbaa !5
  %166 = load i32, i32* %165, align 4, !tbaa !1
  %167 = add i32 %166, 1
  store i32 %167, i32* %165, align 4, !tbaa !1
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %205, label %169

; <label>:169                                     ; preds = %146
  %170 = load i64, i64* %l_518, align 8, !tbaa !7
  %171 = load i32, i32* %l_497, align 4, !tbaa !1
  %172 = load i32*, i32** @g_334, align 8, !tbaa !5
  %173 = load i32, i32* %172, align 4, !tbaa !1
  %174 = load i8, i8* %3, align 1, !tbaa !9
  %175 = sext i8 %174 to i32
  %176 = load i64, i64* getelementptr inbounds ([5 x [8 x i64]], [5 x [8 x i64]]* @g_154, i32 0, i64 0, i64 1), align 8, !tbaa !7
  %177 = trunc i64 %176 to i16
  %178 = load i16, i16* @g_293, align 2, !tbaa !10
  %179 = call i64 @safe_unary_minus_func_uint64_t_u(i64 -7401556487523967387)
  %180 = trunc i64 %179 to i16
  %181 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %178, i16 signext %180)
  %182 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %177, i16 signext %181)
  %183 = sext i16 %182 to i32
  %184 = load i8, i8* %l_529, align 1, !tbaa !9
  %185 = sext i8 %184 to i32
  %186 = icmp sge i32 %183, %185
  %187 = zext i1 %186 to i32
  %188 = xor i32 %175, %187
  %189 = icmp ule i32 %173, %188
  %190 = zext i1 %189 to i32
  %191 = trunc i32 %190 to i16
  %192 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %191, i16 zeroext -9630)
  %193 = zext i16 %192 to i32
  %194 = load i8*, i8** %l_498, align 8, !tbaa !5
  %195 = load i8, i8* %194, align 1, !tbaa !9
  %196 = sext i8 %195 to i32
  %197 = and i32 %196, %193
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %194, align 1, !tbaa !9
  %199 = load i16, i16* @g_265, align 2, !tbaa !10
  %200 = trunc i16 %199 to i8
  %201 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %198, i8 signext %200)
  %202 = sext i8 %201 to i64
  %203 = or i64 %170, %202
  %204 = icmp ne i64 %203, 0
  br label %205

; <label>:205                                     ; preds = %169, %146
  %206 = phi i1 [ false, %146 ], [ %204, %169 ]
  %207 = zext i1 %206 to i32
  %208 = sext i32 %207 to i64
  %209 = icmp sgt i64 %208, 1
  %210 = zext i1 %209 to i32
  %211 = icmp eq i32 %164, %210
  %212 = zext i1 %211 to i32
  %213 = load i32, i32* %2, align 4, !tbaa !1
  %214 = icmp ult i32 %212, %213
  %215 = zext i1 %214 to i32
  %216 = load i64, i64* %l_518, align 8, !tbaa !7
  %217 = trunc i64 %216 to i32
  %218 = call i32 @safe_sub_func_int32_t_s_s(i32 %215, i32 %217)
  %219 = load i8*, i8** %l_493, align 8, !tbaa !5
  %220 = load i8, i8* %219, align 1, !tbaa !9
  %221 = zext i8 %220 to i32
  %222 = xor i32 %221, %218
  %223 = trunc i32 %222 to i8
  store i8 %223, i8* %219, align 1, !tbaa !9
  %224 = load i8, i8* %3, align 1, !tbaa !9
  %225 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %223, i8 zeroext %224)
  %226 = load i8, i8* %l_529, align 1, !tbaa !9
  %227 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %225, i8 signext %226)
  %228 = sext i8 %227 to i64
  %229 = xor i64 1, %228
  %230 = icmp ne i64 %229, 101
  %231 = zext i1 %230 to i32
  %232 = load i16*, i16** %l_531, align 8, !tbaa !5
  %233 = load i16, i16* %232, align 2, !tbaa !10
  %234 = sext i16 %233 to i32
  %235 = xor i32 %234, %231
  %236 = trunc i32 %235 to i16
  store i16 %236, i16* %232, align 2, !tbaa !10
  %237 = load i8, i8* %3, align 1, !tbaa !9
  %238 = sext i8 %237 to i32
  %239 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %236, i32 %238)
  %240 = trunc i16 %239 to i8
  %241 = load i8, i8* %3, align 1, !tbaa !9
  %242 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %240, i8 signext %241)
  %243 = sext i8 %242 to i32
  %244 = load i8, i8* %l_529, align 1, !tbaa !9
  %245 = sext i8 %244 to i32
  %246 = icmp sgt i32 %243, %245
  %247 = zext i1 %246 to i32
  %248 = trunc i32 %247 to i8
  %249 = load i64, i64* %l_518, align 8, !tbaa !7
  %250 = trunc i64 %249 to i8
  %251 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %248, i8 signext %250)
  %252 = icmp ne i8 %251, 0
  br i1 %252, label %253, label %280

; <label>:253                                     ; preds = %205
  %254 = bitcast i32** %l_532 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %254) #1
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i64 0), i32** %l_532, align 8, !tbaa !5
  %255 = bitcast i32** %l_533 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %255) #1
  store i32* null, i32** %l_533, align 8, !tbaa !5
  %256 = bitcast [1 x i32*]* %l_534 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %256) #1
  %257 = bitcast [10 x i8]* %l_535 to i8*
  call void @llvm.lifetime.start(i64 10, i8* %257) #1
  %258 = bitcast [10 x i8]* %l_535 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %258, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @func_35.l_535, i32 0, i32 0), i64 10, i32 1, i1 false)
  %259 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %259) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %260

; <label>:260                                     ; preds = %267, %253
  %261 = load i32, i32* %i2, align 4, !tbaa !1
  %262 = icmp slt i32 %261, 1
  br i1 %262, label %263, label %270

; <label>:263                                     ; preds = %260
  %264 = load i32, i32* %i2, align 4, !tbaa !1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_534, i32 0, i64 %265
  store i32* null, i32** %266, align 8, !tbaa !5
  br label %267

; <label>:267                                     ; preds = %263
  %268 = load i32, i32* %i2, align 4, !tbaa !1
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %i2, align 4, !tbaa !1
  br label %260

; <label>:270                                     ; preds = %260
  %271 = load i16, i16* %l_553, align 2, !tbaa !10
  %272 = add i16 %271, -1
  store i16 %272, i16* %l_553, align 2, !tbaa !10
  %273 = load i16, i16* %l_558, align 2, !tbaa !10
  %274 = add i16 %273, -1
  store i16 %274, i16* %l_558, align 2, !tbaa !10
  %275 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast [10 x i8]* %l_535 to i8*
  call void @llvm.lifetime.end(i64 10, i8* %276) #1
  %277 = bitcast [1 x i32*]* %l_534 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = bitcast i32** %l_533 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #1
  %279 = bitcast i32** %l_532 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  br label %313

; <label>:280                                     ; preds = %205
  %281 = bitcast i64* %l_563 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %281) #1
  store i64 -5121824780702974495, i64* %l_563, align 8, !tbaa !7
  %282 = getelementptr inbounds [5 x i32], [5 x i32]* %l_556, i32 0, i64 4
  %283 = load i32, i32* %282, align 4, !tbaa !1
  %284 = trunc i32 %283 to i16
  %285 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %284, i32 5)
  %286 = sext i16 %285 to i64
  store i64 %286, i64* %l_563, align 8, !tbaa !7
  %287 = getelementptr inbounds [10 x %union.U0*], [10 x %union.U0*]* %l_564, i32 0, i64 2
  %288 = load %union.U0*, %union.U0** %287, align 8, !tbaa !5
  %289 = load volatile %union.U0**, %union.U0*** @g_565, align 8, !tbaa !5
  store %union.U0* %288, %union.U0** %289, align 8, !tbaa !5
  store i32 24, i32* %l_551, align 4, !tbaa !1
  br label %290

; <label>:290                                     ; preds = %306, %280
  %291 = load i32, i32* %l_551, align 4, !tbaa !1
  %292 = icmp sgt i32 %291, -2
  br i1 %292, label %293, label %309

; <label>:293                                     ; preds = %290
  %294 = bitcast i16* %l_569 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %294) #1
  store i16 1, i16* %l_569, align 2, !tbaa !10
  %295 = bitcast %union.U0* %l_570 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %295) #1
  %296 = bitcast %union.U0* %l_570 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %296, i8* bitcast (%union.U0* @func_35.l_570 to i8*), i64 4, i32 4, i1 false)
  %297 = load i16, i16* %l_569, align 2, !tbaa !10
  %298 = icmp ne i16 %297, 0
  br i1 %298, label %299, label %300

; <label>:299                                     ; preds = %293
  store i32 5, i32* %4
  br label %303

; <label>:300                                     ; preds = %293
  %301 = bitcast %union.U0* %1 to i8*
  %302 = bitcast %union.U0* %l_570 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %301, i8* %302, i64 4, i32 4, i1 false), !tbaa.struct !12
  store i32 1, i32* %4
  br label %303

; <label>:303                                     ; preds = %300, %299
  %304 = bitcast %union.U0* %l_570 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #1
  %305 = bitcast i16* %l_569 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %305) #1
  %cleanup.dest = load i32, i32* %4
  switch i32 %cleanup.dest, label %310 [
    i32 5, label %309
  ]
                                                  ; No predecessors!
  %307 = load i32, i32* %l_551, align 4, !tbaa !1
  %308 = add nsw i32 %307, -1
  store i32 %308, i32* %l_551, align 4, !tbaa !1
  br label %290

; <label>:309                                     ; preds = %303, %290
  store i32 0, i32* %4
  br label %310

; <label>:310                                     ; preds = %309, %303
  %311 = bitcast i64* %l_563 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %cleanup.dest.3 = load i32, i32* %4
  switch i32 %cleanup.dest.3, label %314 [
    i32 0, label %312
  ]

; <label>:312                                     ; preds = %310
  br label %313

; <label>:313                                     ; preds = %312, %270
  store i32 0, i32* %4
  br label %314

; <label>:314                                     ; preds = %313, %310
  %315 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  %316 = bitcast [10 x %union.U0*]* %l_564 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %316) #1
  %317 = bitcast [5 x i32]* %l_556 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %317) #1
  %318 = bitcast i32* %l_550 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast i32* %l_549 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast i32* %l_547 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast i32* %l_543 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #1
  %322 = bitcast i32* %l_536 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast i16** %l_531 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #1
  %324 = bitcast i16** %l_530 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %324) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_529) #1
  %325 = bitcast i64* %l_518 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %325) #1
  %cleanup.dest.4 = load i32, i32* %4
  switch i32 %cleanup.dest.4, label %333 [
    i32 0, label %326
  ]

; <label>:326                                     ; preds = %314
  br label %327

; <label>:327                                     ; preds = %326
  %328 = getelementptr inbounds [9 x [3 x [8 x %union.U0]]], [9 x [3 x [8 x %union.U0]]]* %l_571, i32 0, i64 3
  %329 = getelementptr inbounds [3 x [8 x %union.U0]], [3 x [8 x %union.U0]]* %328, i32 0, i64 1
  %330 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* %329, i32 0, i64 5
  %331 = bitcast %union.U0* %1 to i8*
  %332 = bitcast %union.U0* %330 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %331, i8* %332, i64 4, i32 4, i1 false), !tbaa.struct !12
  store i32 1, i32* %4
  br label %333

; <label>:333                                     ; preds = %327, %314, %144
  %334 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #1
  %335 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %335) #1
  %336 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %336) #1
  %337 = bitcast [9 x [3 x [8 x %union.U0]]]* %l_571 to i8*
  call void @llvm.lifetime.end(i64 864, i8* %337) #1
  %338 = bitcast i16* %l_558 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %338) #1
  %339 = bitcast [9 x i32]* %l_557 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %339) #1
  %340 = bitcast i16* %l_553 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %340) #1
  %341 = bitcast i32* %l_552 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %341) #1
  %342 = bitcast i32* %l_551 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %342) #1
  %343 = bitcast i32* %l_548 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %343) #1
  %344 = bitcast i32* %l_546 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %344) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_545) #1
  %345 = bitcast i32* %l_544 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %345) #1
  %346 = bitcast i32* %l_542 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %346) #1
  %347 = bitcast i32* %l_541 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %347) #1
  %348 = bitcast i32* %l_540 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %348) #1
  %349 = bitcast i32* %l_539 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %349) #1
  %350 = bitcast i32* %l_538 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %350) #1
  %351 = bitcast i32* %l_537 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %351) #1
  %352 = bitcast i32** %l_499 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %352) #1
  %353 = bitcast i8** %l_498 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %353) #1
  %354 = bitcast i32* %l_497 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %354) #1
  %355 = bitcast i8** %l_493 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %355) #1
  %356 = bitcast i16** %l_484 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %356) #1
  %357 = bitcast i64***** %l_478 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %357) #1
  %358 = bitcast i64**** %l_479 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #1
  %359 = getelementptr %union.U0, %union.U0* %1, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  ret i32 %360
}

; Function Attrs: nounwind uwtable
define internal i32 @func_40(i64 %p_41, i32 %p_42, i64 %p_43, i16 zeroext %p_44, i16 zeroext %p_45) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %l_58 = alloca i8, align 1
  %l_430 = alloca i32*, align 8
  %l_452 = alloca i32, align 4
  %l_48 = alloca i16, align 2
  %l_61 = alloca i32, align 4
  %l_449 = alloca i32, align 4
  %l_451 = alloca i32, align 4
  %l_457 = alloca i32***, align 8
  %l_51 = alloca i32*, align 8
  %l_53 = alloca i32*, align 8
  %l_54 = alloca i32*, align 8
  %l_55 = alloca i32*, align 8
  %l_56 = alloca i32*, align 8
  %l_57 = alloca i32*, align 8
  %l_456 = alloca [8 x %union.U0], align 16
  %l_465 = alloca i64**, align 8
  %l_464 = alloca i64***, align 8
  %i = alloca i32, align 4
  %l_64 = alloca [7 x i8], align 1
  %l_439 = alloca i32, align 4
  %l_444 = alloca i64*, align 8
  %l_443 = alloca [7 x i64**], align 16
  %l_448 = alloca i32, align 4
  %l_450 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %l_435 = alloca [7 x i64], align 16
  %l_436 = alloca i32, align 4
  %l_446 = alloca i32*, align 8
  %i2 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_459 = alloca i32*, align 8
  %l_460 = alloca [4 x [9 x i32*]], align 16
  %l_461 = alloca [2 x [1 x i32]], align 4
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %l_466 = alloca [6 x i64****], align 16
  %i5 = alloca i32, align 4
  %7 = alloca i32
  store i64 %p_41, i64* %2, align 8, !tbaa !7
  store i32 %p_42, i32* %3, align 4, !tbaa !1
  store i64 %p_43, i64* %4, align 8, !tbaa !7
  store i16 %p_44, i16* %5, align 2, !tbaa !10
  store i16 %p_45, i16* %6, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_58) #1
  store i8 -56, i8* %l_58, align 1, !tbaa !9
  %8 = bitcast i32** %l_430 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_52, i32** %l_430, align 8, !tbaa !5
  %9 = bitcast i32* %l_452 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -7, i32* %l_452, align 4, !tbaa !1
  %10 = load i64, i64* getelementptr inbounds ([5 x [6 x [5 x i64]]], [5 x [6 x [5 x i64]]]* @g_47, i32 0, i64 3, i64 5, i64 2), align 8, !tbaa !7
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

; <label>:12                                      ; preds = %0
  %13 = bitcast i16* %l_48 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  store i16 1, i16* %l_48, align 2, !tbaa !10
  %14 = load i16, i16* %l_48, align 2, !tbaa !10
  %15 = add i16 %14, 1
  store i16 %15, i16* %l_48, align 2, !tbaa !10
  %16 = bitcast i16* %l_48 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %16) #1
  br label %245

; <label>:17                                      ; preds = %0
  %18 = bitcast i32* %l_61 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %l_61, align 4, !tbaa !1
  %19 = bitcast i32* %l_449 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 -1870835867, i32* %l_449, align 4, !tbaa !1
  %20 = bitcast i32* %l_451 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 -977846206, i32* %l_451, align 4, !tbaa !1
  %21 = bitcast i32**** %l_457 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i32*** @g_333, i32**** %l_457, align 8, !tbaa !5
  store i64 0, i64* %2, align 8, !tbaa !7
  br label %22

; <label>:22                                      ; preds = %235, %17
  %23 = load i64, i64* %2, align 8, !tbaa !7
  %24 = icmp ule i64 %23, 4
  br i1 %24, label %25, label %238

; <label>:25                                      ; preds = %22
  %26 = bitcast i32** %l_51 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i32* @g_52, i32** %l_51, align 8, !tbaa !5
  %27 = bitcast i32** %l_53 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i32* @g_52, i32** %l_53, align 8, !tbaa !5
  %28 = bitcast i32** %l_54 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i32* @g_52, i32** %l_54, align 8, !tbaa !5
  %29 = bitcast i32** %l_55 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i32* @g_52, i32** %l_55, align 8, !tbaa !5
  %30 = bitcast i32** %l_56 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i32* @g_52, i32** %l_56, align 8, !tbaa !5
  %31 = bitcast i32** %l_57 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i32* null, i32** %l_57, align 8, !tbaa !5
  %32 = bitcast [8 x %union.U0]* %l_456 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %32) #1
  %33 = bitcast [8 x %union.U0]* %l_456 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* bitcast ([8 x %union.U0]* @func_40.l_456 to i8*), i64 32, i32 16, i1 false)
  %34 = bitcast i64*** %l_465 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  store i64** @g_219, i64*** %l_465, align 8, !tbaa !5
  %35 = bitcast i64**** %l_464 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store i64*** %l_465, i64**** %l_464, align 8, !tbaa !5
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i8, i8* %l_58, align 1, !tbaa !9
  %38 = add i8 %37, -1
  store i8 %38, i8* %l_58, align 1, !tbaa !9
  store i32 4, i32* %3, align 4, !tbaa !1
  br label %39

; <label>:39                                      ; preds = %221, %25
  %40 = load i32, i32* %3, align 4, !tbaa !1
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %224

; <label>:42                                      ; preds = %39
  %43 = bitcast [7 x i8]* %l_64 to i8*
  call void @llvm.lifetime.start(i64 7, i8* %43) #1
  %44 = bitcast i32* %l_439 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 5, i32* %l_439, align 4, !tbaa !1
  %45 = bitcast i64** %l_444 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  store i64* @g_438, i64** %l_444, align 8, !tbaa !5
  %46 = bitcast [7 x i64**]* %l_443 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %46) #1
  %47 = bitcast i32* %l_448 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  store i32 1, i32* %l_448, align 4, !tbaa !1
  %48 = bitcast i32* %l_450 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  store i32 258571095, i32* %l_450, align 4, !tbaa !1
  %49 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %50

; <label>:50                                      ; preds = %57, %42
  %51 = load i32, i32* %i1, align 4, !tbaa !1
  %52 = icmp slt i32 %51, 7
  br i1 %52, label %53, label %60

; <label>:53                                      ; preds = %50
  %54 = load i32, i32* %i1, align 4, !tbaa !1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [7 x i8], [7 x i8]* %l_64, i32 0, i64 %55
  store i8 -3, i8* %56, align 1, !tbaa !9
  br label %57

; <label>:57                                      ; preds = %53
  %58 = load i32, i32* %i1, align 4, !tbaa !1
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %i1, align 4, !tbaa !1
  br label %50

; <label>:60                                      ; preds = %50
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %61

; <label>:61                                      ; preds = %68, %60
  %62 = load i32, i32* %i1, align 4, !tbaa !1
  %63 = icmp slt i32 %62, 7
  br i1 %63, label %64, label %71

; <label>:64                                      ; preds = %61
  %65 = load i32, i32* %i1, align 4, !tbaa !1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [7 x i64**], [7 x i64**]* %l_443, i32 0, i64 %66
  store i64** %l_444, i64*** %67, align 8, !tbaa !5
  br label %68

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* %i1, align 4, !tbaa !1
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %i1, align 4, !tbaa !1
  br label %61

; <label>:71                                      ; preds = %61
  store i16 0, i16* %6, align 2, !tbaa !10
  br label %72

; <label>:72                                      ; preds = %90, %71
  %73 = load i16, i16* %6, align 2, !tbaa !10
  %74 = zext i16 %73 to i32
  %75 = icmp sle i32 %74, 4
  br i1 %75, label %76, label %95

; <label>:76                                      ; preds = %72
  %77 = bitcast [7 x i64]* %l_435 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %77) #1
  %78 = bitcast [7 x i64]* %l_435 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* bitcast ([7 x i64]* @func_40.l_435 to i8*), i64 56, i32 16, i1 false)
  %79 = bitcast i32* %l_436 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  store i32 -2037996081, i32* %l_436, align 4, !tbaa !1
  %80 = bitcast i32** %l_446 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  store i32* null, i32** %l_446, align 8, !tbaa !5
  %81 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  %83 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32** %l_446 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32* %l_436 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast [7 x i64]* %l_435 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %89) #1
  br label %90

; <label>:90                                      ; preds = %76
  %91 = load i16, i16* %6, align 2, !tbaa !10
  %92 = zext i16 %91 to i32
  %93 = add nsw i32 %92, 1
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %6, align 2, !tbaa !10
  br label %72

; <label>:95                                      ; preds = %72
  store i32 0, i32* @g_113, align 4, !tbaa !1
  br label %96

; <label>:96                                      ; preds = %210, %95
  %97 = load i32, i32* @g_113, align 4, !tbaa !1
  %98 = icmp ule i32 %97, 4
  br i1 %98, label %99, label %213

; <label>:99                                      ; preds = %96
  %100 = bitcast i32** %l_459 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #1
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i64 0), i32** %l_459, align 8, !tbaa !5
  %101 = bitcast [4 x [9 x i32*]]* %l_460 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %101) #1
  %102 = getelementptr inbounds [4 x [9 x i32*]], [4 x [9 x i32*]]* %l_460, i64 0, i64 0
  %103 = getelementptr inbounds [9 x i32*], [9 x i32*]* %102, i64 0, i64 0
  store i32* null, i32** %103, !tbaa !5
  %104 = getelementptr inbounds i32*, i32** %103, i64 1
  store i32* %l_449, i32** %104, !tbaa !5
  %105 = getelementptr inbounds i32*, i32** %104, i64 1
  store i32* null, i32** %105, !tbaa !5
  %106 = getelementptr inbounds i32*, i32** %105, i64 1
  store i32* %l_449, i32** %106, !tbaa !5
  %107 = getelementptr inbounds i32*, i32** %106, i64 1
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i64 0), i32** %107, !tbaa !5
  %108 = getelementptr inbounds i32*, i32** %107, i64 1
  store i32* null, i32** %108, !tbaa !5
  %109 = getelementptr inbounds i32*, i32** %108, i64 1
  store i32* null, i32** %109, !tbaa !5
  %110 = getelementptr inbounds i32*, i32** %109, i64 1
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i64 0), i32** %110, !tbaa !5
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  store i32* %l_450, i32** %111, !tbaa !5
  %112 = getelementptr inbounds [9 x i32*], [9 x i32*]* %102, i64 1
  %113 = bitcast [9 x i32*]* %112 to i8*
  call void @llvm.memset.p0i8.i64(i8* %113, i8 0, i64 72, i32 8, i1 false)
  %114 = getelementptr inbounds [9 x i32*], [9 x i32*]* %112, i64 0, i64 0
  %115 = getelementptr inbounds i32*, i32** %114, i64 1
  %116 = getelementptr inbounds i32*, i32** %115, i64 1
  %117 = getelementptr inbounds i32*, i32** %116, i64 1
  %118 = getelementptr inbounds i32*, i32** %117, i64 1
  store i32* %l_61, i32** %118, !tbaa !5
  %119 = getelementptr inbounds i32*, i32** %118, i64 1
  store i32* %l_61, i32** %119, !tbaa !5
  %120 = getelementptr inbounds i32*, i32** %119, i64 1
  %121 = getelementptr inbounds i32*, i32** %120, i64 1
  %122 = getelementptr inbounds i32*, i32** %121, i64 1
  %123 = getelementptr inbounds [9 x i32*], [9 x i32*]* %112, i64 1
  %124 = bitcast [9 x i32*]* %123 to i8*
  call void @llvm.memset.p0i8.i64(i8* %124, i8 0, i64 72, i32 8, i1 false)
  %125 = getelementptr inbounds [9 x i32*], [9 x i32*]* %123, i64 0, i64 0
  %126 = getelementptr inbounds i32*, i32** %125, i64 1
  %127 = getelementptr inbounds i32*, i32** %126, i64 1
  %128 = getelementptr inbounds i32*, i32** %127, i64 1
  store i32* %l_61, i32** %128, !tbaa !5
  %129 = getelementptr inbounds i32*, i32** %128, i64 1
  store i32* %l_61, i32** %129, !tbaa !5
  %130 = getelementptr inbounds i32*, i32** %129, i64 1
  %131 = getelementptr inbounds i32*, i32** %130, i64 1
  %132 = getelementptr inbounds i32*, i32** %131, i64 1
  %133 = getelementptr inbounds i32*, i32** %132, i64 1
  %134 = getelementptr inbounds [9 x i32*], [9 x i32*]* %123, i64 1
  %135 = getelementptr inbounds [9 x i32*], [9 x i32*]* %134, i64 0, i64 0
  store i32* %l_450, i32** %135, !tbaa !5
  %136 = getelementptr inbounds i32*, i32** %135, i64 1
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i64 0), i32** %136, !tbaa !5
  %137 = getelementptr inbounds i32*, i32** %136, i64 1
  store i32* null, i32** %137, !tbaa !5
  %138 = getelementptr inbounds i32*, i32** %137, i64 1
  store i32* null, i32** %138, !tbaa !5
  %139 = getelementptr inbounds i32*, i32** %138, i64 1
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i64 0), i32** %139, !tbaa !5
  %140 = getelementptr inbounds i32*, i32** %139, i64 1
  store i32* %l_450, i32** %140, !tbaa !5
  %141 = getelementptr inbounds i32*, i32** %140, i64 1
  store i32* %l_61, i32** %141, !tbaa !5
  %142 = getelementptr inbounds i32*, i32** %141, i64 1
  store i32* %l_450, i32** %142, !tbaa !5
  %143 = getelementptr inbounds i32*, i32** %142, i64 1
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_96, i32 0, i64 0), i32** %143, !tbaa !5
  %144 = bitcast [2 x [1 x i32]]* %l_461 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %144) #1
  %145 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  %146 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %147

; <label>:147                                     ; preds = %165, %99
  %148 = load i32, i32* %i3, align 4, !tbaa !1
  %149 = icmp slt i32 %148, 2
  br i1 %149, label %150, label %168

; <label>:150                                     ; preds = %147
  store i32 0, i32* %j4, align 4, !tbaa !1
  br label %151

; <label>:151                                     ; preds = %161, %150
  %152 = load i32, i32* %j4, align 4, !tbaa !1
  %153 = icmp slt i32 %152, 1
  br i1 %153, label %154, label %164

; <label>:154                                     ; preds = %151
  %155 = load i32, i32* %j4, align 4, !tbaa !1
  %156 = sext i32 %155 to i64
  %157 = load i32, i32* %i3, align 4, !tbaa !1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %l_461, i32 0, i64 %158
  %160 = getelementptr inbounds [1 x i32], [1 x i32]* %159, i32 0, i64 %156
  store i32 1, i32* %160, align 4, !tbaa !1
  br label %161

; <label>:161                                     ; preds = %154
  %162 = load i32, i32* %j4, align 4, !tbaa !1
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %j4, align 4, !tbaa !1
  br label %151

; <label>:164                                     ; preds = %151
  br label %165

; <label>:165                                     ; preds = %164
  %166 = load i32, i32* %i3, align 4, !tbaa !1
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %i3, align 4, !tbaa !1
  br label %147

; <label>:168                                     ; preds = %147
  %169 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %l_461, i32 0, i64 0
  %170 = getelementptr inbounds [1 x i32], [1 x i32]* %169, i32 0, i64 0
  %171 = load i32, i32* %170, align 4, !tbaa !1
  %172 = add i32 %171, 1
  store i32 %172, i32* %170, align 4, !tbaa !1
  store i32 0, i32* %l_61, align 4, !tbaa !1
  br label %173

; <label>:173                                     ; preds = %201, %168
  %174 = load i32, i32* %l_61, align 4, !tbaa !1
  %175 = icmp sle i32 %174, 4
  br i1 %175, label %176, label %204

; <label>:176                                     ; preds = %173
  %177 = bitcast [6 x i64****]* %l_466 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %177) #1
  %178 = getelementptr inbounds [6 x i64****], [6 x i64****]* %l_466, i64 0, i64 0
  store i64**** %l_464, i64***** %178, !tbaa !5
  %179 = getelementptr inbounds i64****, i64***** %178, i64 1
  store i64**** %l_464, i64***** %179, !tbaa !5
  %180 = getelementptr inbounds i64****, i64***** %179, i64 1
  store i64**** %l_464, i64***** %180, !tbaa !5
  %181 = getelementptr inbounds i64****, i64***** %180, i64 1
  store i64**** %l_464, i64***** %181, !tbaa !5
  %182 = getelementptr inbounds i64****, i64***** %181, i64 1
  store i64**** %l_464, i64***** %182, !tbaa !5
  %183 = getelementptr inbounds i64****, i64***** %182, i64 1
  store i64**** %l_464, i64***** %183, !tbaa !5
  %184 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #1
  %185 = load i64***, i64**** %l_464, align 8, !tbaa !5
  store i64*** %185, i64**** @g_467, align 8, !tbaa !5
  %186 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext 114, i8 zeroext 0)
  %187 = zext i8 %186 to i32
  %188 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext -30973, i32 %187)
  %189 = sext i16 %188 to i32
  store i32 %189, i32* %l_450, align 4, !tbaa !1
  %190 = load volatile i32**, i32*** @g_179, align 8, !tbaa !5
  %191 = load i32*, i32** %190, align 8, !tbaa !5
  %192 = load i32, i32* %191, align 4, !tbaa !1
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

; <label>:194                                     ; preds = %176
  store i32 26, i32* %7
  br label %197

; <label>:195                                     ; preds = %176
  %196 = load volatile i32**, i32*** @g_473, align 8, !tbaa !5
  store i32* %l_448, i32** %196, align 8, !tbaa !5
  store i32 0, i32* %7
  br label %197

; <label>:197                                     ; preds = %195, %194
  %198 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast [6 x i64****]* %l_466 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %199) #1
  %cleanup.dest = load i32, i32* %7
  switch i32 %cleanup.dest, label %262 [
    i32 0, label %200
    i32 26, label %204
  ]

; <label>:200                                     ; preds = %197
  br label %201

; <label>:201                                     ; preds = %200
  %202 = load i32, i32* %l_61, align 4, !tbaa !1
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %l_61, align 4, !tbaa !1
  br label %173

; <label>:204                                     ; preds = %197, %173
  %205 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast [2 x [1 x i32]]* %l_461 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast [4 x [9 x i32*]]* %l_460 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %208) #1
  %209 = bitcast i32** %l_459 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  br label %210

; <label>:210                                     ; preds = %204
  %211 = load i32, i32* @g_113, align 4, !tbaa !1
  %212 = add i32 %211, 1
  store i32 %212, i32* @g_113, align 4, !tbaa !1
  br label %96

; <label>:213                                     ; preds = %96
  %214 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %l_450 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %l_448 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast [7 x i64**]* %l_443 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %217) #1
  %218 = bitcast i64** %l_444 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i32* %l_439 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast [7 x i8]* %l_64 to i8*
  call void @llvm.lifetime.end(i64 7, i8* %220) #1
  br label %221

; <label>:221                                     ; preds = %213
  %222 = load i32, i32* %3, align 4, !tbaa !1
  %223 = sub nsw i32 %222, 1
  store i32 %223, i32* %3, align 4, !tbaa !1
  br label %39

; <label>:224                                     ; preds = %39
  %225 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast i64**** %l_464 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %227 = bitcast i64*** %l_465 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #1
  %228 = bitcast [8 x %union.U0]* %l_456 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %228) #1
  %229 = bitcast i32** %l_57 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #1
  %230 = bitcast i32** %l_56 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = bitcast i32** %l_55 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  %232 = bitcast i32** %l_54 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #1
  %233 = bitcast i32** %l_53 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #1
  %234 = bitcast i32** %l_51 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  br label %235

; <label>:235                                     ; preds = %224
  %236 = load i64, i64* %2, align 8, !tbaa !7
  %237 = add i64 %236, 1
  store i64 %237, i64* %2, align 8, !tbaa !7
  br label %22

; <label>:238                                     ; preds = %22
  %239 = load i64, i64* %4, align 8, !tbaa !7
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %1
  store i32 1, i32* %7
  %241 = bitcast i32**** %l_457 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #1
  %242 = bitcast i32* %l_451 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast i32* %l_449 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32* %l_61 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  br label %258

; <label>:245                                     ; preds = %12
  store i32 0, i32* @g_372, align 4, !tbaa !1
  br label %246

; <label>:246                                     ; preds = %253, %245
  %247 = load i32, i32* @g_372, align 4, !tbaa !1
  %248 = icmp ult i32 %247, 7
  br i1 %248, label %249, label %256

; <label>:249                                     ; preds = %246
  %250 = load i32, i32* @g_372, align 4, !tbaa !1
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds [7 x i32**], [7 x i32**]* @g_428, i32 0, i64 %251
  store volatile i32** null, i32*** %252, align 8, !tbaa !5
  br label %253

; <label>:253                                     ; preds = %249
  %254 = load i32, i32* @g_372, align 4, !tbaa !1
  %255 = add i32 %254, 1
  store i32 %255, i32* @g_372, align 4, !tbaa !1
  br label %246

; <label>:256                                     ; preds = %246
  %257 = load i32, i32* %3, align 4, !tbaa !1
  store i32 %257, i32* %1
  store i32 1, i32* %7
  br label %258

; <label>:258                                     ; preds = %256, %238
  %259 = bitcast i32* %l_452 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast i32** %l_430 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_58) #1
  %261 = load i32, i32* %1
  ret i32 %261

; <label>:262                                     ; preds = %197
  unreachable
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i8, i8* %1, align 1, !tbaa !9
  %8 = zext i8 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i8, i8* %1, align 1, !tbaa !9
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* %2, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  %14 = srem i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i8
  ret i8 %17
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = zext i16 %5 to i32
  %7 = mul i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_mod_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = icmp eq i64 %6, -9223372036854775808
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i64, i64* %2, align 8, !tbaa !7
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i64, i64* %1, align 8, !tbaa !7
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = load i64, i64* %2, align 8, !tbaa !7
  %16 = srem i64 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i64 [ %12, %11 ], [ %16, %13 ]
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = ashr i32 255, %8
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %5, %0
  %12 = load i8, i8* %1, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  br label %19

; <label>:14                                      ; preds = %5
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  %17 = load i32, i32* %2, align 4, !tbaa !1
  %18 = shl i32 %16, %17
  br label %19

; <label>:19                                      ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %18, %14 ]
  %21 = trunc i32 %20 to i8
  ret i8 %21
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_sub_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = load i64, i64* %2, align 8, !tbaa !7
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_mod_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
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
  %10 = urem i64 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i64 [ %6, %5 ], [ %10, %7 ]
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_sub_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

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
define internal zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %14, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %5
  %9 = load i8, i8* %1, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 255, %11
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %8, %5, %0
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  br label %22

; <label>:17                                      ; preds = %8
  %18 = load i8, i8* %1, align 1, !tbaa !9
  %19 = zext i8 %18 to i32
  %20 = load i32, i32* %2, align 4, !tbaa !1
  %21 = shl i32 %19, %20
  br label %22

; <label>:22                                      ; preds = %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %24 = trunc i32 %23 to i8
  ret i8 %24
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  br label %13

; <label>:8                                       ; preds = %0
  %9 = load i8, i8* %1, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 %10, %11
  br label %13

; <label>:13                                      ; preds = %8, %5
  %14 = phi i32 [ %7, %5 ], [ %12, %8 ]
  %15 = trunc i32 %14 to i8
  ret i8 %15
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
define internal signext i8 @safe_mod_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8, i8* %1, align 1, !tbaa !9
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, -128
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i8, i8* %2, align 1, !tbaa !9
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = sext i8 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i8, i8* %1, align 1, !tbaa !9
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* %2, align 1, !tbaa !9
  %21 = sext i8 %20 to i32
  %22 = srem i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = mul i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %2, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i16, i16* %1, align 2, !tbaa !10
  %8 = zext i16 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* %2, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  %14 = srem i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i16
  ret i16 %17
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6, %0
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = sext i16 %10 to i32
  br label %17

; <label>:12                                      ; preds = %6
  %13 = load i16, i16* %1, align 2, !tbaa !10
  %14 = sext i16 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %12, %9
  %18 = phi i32 [ %11, %9 ], [ %16, %12 ]
  %19 = trunc i32 %18 to i16
  ret i16 %19
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
define internal i32 @safe_unary_minus_func_uint32_t_u(i32 %ui) #0 {
  %1 = alloca i32, align 4
  store i32 %ui, i32* %1, align 4, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !1
  %3 = sub i32 0, %2
  ret i32 %3
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
define internal i64 @safe_unary_minus_func_int64_t_s(i64 %si) #0 {
  %1 = alloca i64, align 8
  store i64 %si, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = icmp eq i64 %2, -9223372036854775808
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = load i64, i64* %1, align 8, !tbaa !7
  br label %9

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %1, align 8, !tbaa !7
  %8 = sub nsw i64 0, %7
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi i64 [ %5, %4 ], [ %8, %6 ]
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_unary_minus_func_uint64_t_u(i64 %ui) #0 {
  %1 = alloca i64, align 8
  store i64 %ui, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = sub i64 0, %2
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %6
  %10 = load i8, i8* %1, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  %12 = load i32, i32* %2, align 4, !tbaa !1
  %13 = ashr i32 127, %12
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %9, %6, %0
  %16 = load i8, i8* %1, align 1, !tbaa !9
  %17 = sext i8 %16 to i32
  br label %23

; <label>:18                                      ; preds = %9
  %19 = load i8, i8* %1, align 1, !tbaa !9
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %2, align 4, !tbaa !1
  %22 = shl i32 %20, %21
  br label %23

; <label>:23                                      ; preds = %18, %15
  %24 = phi i32 [ %17, %15 ], [ %22, %18 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %18, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %18, label %12

; <label>:12                                      ; preds = %9
  %13 = load i8, i8* %1, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 127, %15
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %12, %9, %6, %0
  %19 = load i8, i8* %1, align 1, !tbaa !9
  %20 = sext i8 %19 to i32
  br label %26

; <label>:21                                      ; preds = %12
  %22 = load i8, i8* %1, align 1, !tbaa !9
  %23 = sext i8 %22 to i32
  %24 = load i32, i32* %2, align 4, !tbaa !1
  %25 = shl i32 %23, %24
  br label %26

; <label>:26                                      ; preds = %21, %18
  %27 = phi i32 [ %20, %18 ], [ %25, %21 ]
  %28 = trunc i32 %27 to i8
  ret i8 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_sub_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = load i32, i32* %2, align 4, !tbaa !1
  %5 = sub i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %2, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i16, i16* %1, align 2, !tbaa !10
  %8 = zext i16 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* %2, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  %14 = sdiv i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i16
  ret i16 %17
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
define internal i32 @safe_add_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4, !tbaa !1
  store i32 %si2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %1, align 4, !tbaa !1
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = sub nsw i32 2147483647, %10
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %24, label %13

; <label>:13                                      ; preds = %8, %5, %0
  %14 = load i32, i32* %1, align 4, !tbaa !1
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %26

; <label>:16                                      ; preds = %13
  %17 = load i32, i32* %2, align 4, !tbaa !1
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %1, align 4, !tbaa !1
  %21 = load i32, i32* %2, align 4, !tbaa !1
  %22 = sub nsw i32 -2147483648, %21
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %19, %8
  %25 = load i32, i32* %1, align 4, !tbaa !1
  br label %30

; <label>:26                                      ; preds = %19, %16, %13
  %27 = load i32, i32* %1, align 4, !tbaa !1
  %28 = load i32, i32* %2, align 4, !tbaa !1
  %29 = add nsw i32 %27, %28
  br label %30

; <label>:30                                      ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_add_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = sext i8 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
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
define internal signext i16 @safe_div_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
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
  %22 = sdiv i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
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
define internal i32 @safe_unary_minus_func_int32_t_s(i32 %si) #0 {
  %1 = alloca i32, align 4
  store i32 %si, i32* %1, align 4, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !1
  %3 = icmp eq i32 %2, -2147483648
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* %1, align 4, !tbaa !1
  br label %9

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %1, align 4, !tbaa !1
  %8 = sub nsw i32 0, %7
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5, %0
  %9 = load i16, i16* %1, align 2, !tbaa !10
  %10 = zext i16 %9 to i32
  br label %16

; <label>:11                                      ; preds = %5
  %12 = load i16, i16* %1, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  %14 = load i32, i32* %2, align 4, !tbaa !1
  %15 = ashr i32 %13, %14
  br label %16

; <label>:16                                      ; preds = %11, %8
  %17 = phi i32 [ %10, %8 ], [ %15, %11 ]
  %18 = trunc i32 %17 to i16
  ret i16 %18
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
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
  %13 = load i8, i8* %1, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  br label %20

; <label>:15                                      ; preds = %9
  %16 = load i8, i8* %1, align 1, !tbaa !9
  %17 = sext i8 %16 to i32
  %18 = load i32, i32* %2, align 4, !tbaa !1
  %19 = ashr i32 %17, %18
  br label %20

; <label>:20                                      ; preds = %15, %12
  %21 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %22 = trunc i32 %21 to i8
  ret i8 %22
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
define internal i32 @safe_div_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4, !tbaa !1
  store i32 %si2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4, !tbaa !1
  %7 = icmp eq i32 %6, -2147483648
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i32, i32* %1, align 4, !tbaa !1
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i32, i32* %1, align 4, !tbaa !1
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = sdiv i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_div_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
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
  %10 = udiv i32 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %14, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %5
  %9 = load i16, i16* %1, align 2, !tbaa !10
  %10 = zext i16 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 65535, %11
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %8, %5, %0
  %15 = load i16, i16* %1, align 2, !tbaa !10
  %16 = zext i16 %15 to i32
  br label %22

; <label>:17                                      ; preds = %8
  %18 = load i16, i16* %1, align 2, !tbaa !10
  %19 = zext i16 %18 to i32
  %20 = load i32, i32* %2, align 4, !tbaa !1
  %21 = shl i32 %19, %20
  br label %22

; <label>:22                                      ; preds = %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %24 = trunc i32 %23 to i16
  ret i16 %24
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_sub_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = load i64, i64* %2, align 8, !tbaa !7
  %5 = xor i64 %3, %4
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = load i64, i64* %1, align 8, !tbaa !7
  %8 = load i64, i64* %2, align 8, !tbaa !7
  %9 = xor i64 %7, %8
  %10 = and i64 %9, -9223372036854775808
  %11 = xor i64 %6, %10
  %12 = load i64, i64* %2, align 8, !tbaa !7
  %13 = sub nsw i64 %11, %12
  %14 = load i64, i64* %2, align 8, !tbaa !7
  %15 = xor i64 %13, %14
  %16 = and i64 %5, %15
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %0
  %19 = load i64, i64* %1, align 8, !tbaa !7
  br label %24

; <label>:20                                      ; preds = %0
  %21 = load i64, i64* %1, align 8, !tbaa !7
  %22 = load i64, i64* %2, align 8, !tbaa !7
  %23 = sub nsw i64 %21, %22
  br label %24

; <label>:24                                      ; preds = %20, %18
  %25 = phi i64 [ %19, %18 ], [ %23, %20 ]
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %18, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %18, label %12

; <label>:12                                      ; preds = %9
  %13 = load i16, i16* %1, align 2, !tbaa !10
  %14 = sext i16 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 32767, %15
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %12, %9, %6, %0
  %19 = load i16, i16* %1, align 2, !tbaa !10
  %20 = sext i16 %19 to i32
  br label %26

; <label>:21                                      ; preds = %12
  %22 = load i16, i16* %1, align 2, !tbaa !10
  %23 = sext i16 %22 to i32
  %24 = load i32, i32* %2, align 4, !tbaa !1
  %25 = shl i32 %23, %24
  br label %26

; <label>:26                                      ; preds = %21, %18
  %27 = phi i32 [ %20, %18 ], [ %25, %21 ]
  %28 = trunc i32 %27 to i16
  ret i16 %28
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
!12 = !{i64 0, i64 4, !1}
