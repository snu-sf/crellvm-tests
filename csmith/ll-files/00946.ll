; ModuleID = '00946.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type { i32, i32, i16, i32, i64, i16, i16 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_52 = internal global %struct.S0 { i32 -1396077390, i32 1, i16 8, i32 -117568552, i64 977705864099840075, i16 -12394, i16 14167 }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"g_52.f0\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"g_52.f1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"g_52.f2\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"g_52.f3\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"g_52.f4\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"g_52.f5\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"g_52.f6\00", align 1
@g_113 = internal global [3 x i16] [i16 -3, i16 -3, i16 -3], align 2
@.str.9 = private unnamed_addr constant [9 x i8] c"g_113[i]\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_135 = internal global i32 -9, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_135\00", align 1
@g_143 = internal global %struct.S0 { i32 1, i32 -1, i16 0, i32 0, i64 -563911489208040815, i16 17532, i16 4 }, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"g_143.f0\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"g_143.f1\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"g_143.f2\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"g_143.f3\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"g_143.f4\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"g_143.f5\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"g_143.f6\00", align 1
@g_154 = internal global i8 5, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_154\00", align 1
@g_155 = internal constant i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_155\00", align 1
@g_168 = internal global i8 -1, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_168\00", align 1
@g_276 = internal global i8 3, align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_276\00", align 1
@g_279 = internal global i8 125, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_279\00", align 1
@g_346 = internal global i64 549549104429217060, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"g_346\00", align 1
@g_347 = internal global i32 -1, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_347\00", align 1
@g_352 = internal global i8 1, align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_352\00", align 1
@g_672 = internal global i32 -1, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_672\00", align 1
@g_697 = internal global i64 -2449395249718999232, align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"g_697\00", align 1
@g_711 = internal global i32 1712668320, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_711\00", align 1
@g_756 = internal global i8 -23, align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_756\00", align 1
@g_776 = internal global i64 5404717785113252341, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"g_776\00", align 1
@g_820 = internal global i64 -845577811880721896, align 8
@.str.32 = private unnamed_addr constant [6 x i8] c"g_820\00", align 1
@g_897 = internal global [3 x i64] [i64 -6, i64 -6, i64 -6], align 16
@.str.33 = private unnamed_addr constant [9 x i8] c"g_897[i]\00", align 1
@g_960 = internal global i8 -6, align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"g_960\00", align 1
@g_1053 = internal global i32 -4, align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1053\00", align 1
@g_1093 = internal global i32 -4, align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1093\00", align 1
@g_1208 = internal global i8 1, align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1208\00", align 1
@g_1371 = internal constant [3 x [9 x i64]] [[9 x i64] [i64 2734126896021289825, i64 -4, i64 -4, i64 2734126896021289825, i64 -4, i64 -4, i64 2734126896021289825, i64 -4, i64 -4], [9 x i64] [i64 2734126896021289825, i64 -4, i64 -4, i64 2734126896021289825, i64 -4, i64 -4, i64 2734126896021289825, i64 -4, i64 -4], [9 x i64] [i64 2734126896021289825, i64 -4, i64 -4, i64 2734126896021289825, i64 -4, i64 -4, i64 2734126896021289825, i64 -4, i64 -4]], align 16
@.str.38 = private unnamed_addr constant [13 x i8] c"g_1371[i][j]\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_1380 = internal global i32 -1136822900, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1380\00", align 1
@g_1483 = internal global [1 x i16] [i16 17304], align 2
@.str.41 = private unnamed_addr constant [10 x i8] c"g_1483[i]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_2 = internal global [10 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], align 16
@func_1.l_11 = internal constant [6 x [7 x i32*]] [[7 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], [7 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], [7 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], [7 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], [7 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], [7 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3]], align 16
@g_142 = internal global %struct.S0* @g_143, align 8
@g_1157 = internal global i64*** @g_1154, align 8
@g_1202 = internal global i16** @g_1203, align 8
@g_249 = internal global %struct.S0* @g_52, align 8
@func_6.l_1391 = private unnamed_addr constant [10 x i8*] [i8* @g_1208, i8* null, i8* @g_1208, i8* @g_1208, i8* null, i8* @g_1208, i8* @g_1208, i8* null, i8* @g_1208, i8* @g_1208], align 16
@func_6.l_1398 = private unnamed_addr constant [6 x i32] [i32 7, i32 7, i32 6, i32 7, i32 7, i32 6], align 16
@g_323 = internal global [9 x [9 x i32*]] [[9 x i32*] [i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0)], [9 x i32*] [i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0)]], align 16
@g_248 = internal global %struct.S0** @g_249, align 8
@g_275 = internal global i8* @g_276, align 8
@func_6.l_1401 = private unnamed_addr constant [6 x [6 x [7 x i8]]] [[6 x [7 x i8]] [[7 x i8] c"z\89\F6\FF\00\9A\F6", [7 x i8] c"\01\1A\E4\00\F2\03\01", [7 x i8] c"\F6\DC$B\F8\98\FC", [7 x i8] c"/\FF\84\02\00\98\00", [7 x i8] c"\A7\E7\E7\A7\FF\02\01", [7 x i8] c"B\F6$\E7\01\F2\13"], [6 x [7 x i8]] [[7 x i8] c"\DC\01\01\01\FF\09\01", [7 x i8] c"\A7\02\AA\F8\1A\F6\00", [7 x i8] c"\08\F8\D7\1A.\FF\FC", [7 x i8] c"\FCz\FF\01\F6\FF\01", [7 x i8] c"\BE\08\FC\FC\01\01\F6", [7 x i8] c"\E7\01\03\E4\01\1A#"], [6 x [7 x i8]] [[7 x i8] c".\01\98\02\01\F7\FF", [7 x i8] c"\A7g\08\07\01\01\00", [7 x i8] c"\08\8E\1A\02\F6\01B", [7 x i8] c"\07\01\FD\FF.\C5\02", [7 x i8] c"\A7\D7\1A\A7\1A\D7\A7", [7 x i8] c"\F5\01#\01\FF\01\E7"], [6 x [7 x i8]] [[7 x i8] c"\00.\FF\01\01\17\01", [7 x i8] c"\01\AA#\F6\FF\08\F8", [7 x i8] c"\AA\F8\1A\F6\00\1A\9A", [7 x i8] c"\06\AA\FF\02\98\F6\13", [7 x i8] c"\083\9A\E4\F8\F7\F6", [7 x i8] c"\9A\08\81\FF\AA\09W"], [6 x [7 x i8]] [[7 x i8] c"\01\F6/\FC\02\F6\F5", [7 x i8] c"\01\17\F7\08\FF\9A\E7", [7 x i8] c"\9A\D7~\84\08\F8\F6", [7 x i8] c"\08\06\A7$\16z\01", [7 x i8] c"\06\98\80\FC\FF\FF\FC", [7 x i8] c"\01\F2\01\17\AA\FF\98"], [6 x [7 x i8]] [[7 x i8] c"\03\06\01\AA\F5.\01", [7 x i8] c"\FC\C5\FF\E7\9A\FF\08", [7 x i8] c"s\01\01\F8\FC\FF\00", [7 x i8] c"\1A\F6\00\1A\1Az\02", [7 x i8] c"\E7\80\FF\F6\F7\F8\E4", [7 x i8] c"\C5\03W\FF\01\9A\FF"]], align 16
@g_675 = internal global [7 x [2 x i32*]] [[2 x i32*] [i32* @g_3, i32* @g_3], [2 x i32*] [i32* @g_3, i32* @g_3], [2 x i32*] [i32* @g_3, i32* @g_3], [2 x i32*] [i32* @g_3, i32* @g_3], [2 x i32*] [i32* @g_3, i32* @g_3], [2 x i32*] [i32* @g_3, i32* @g_3], [2 x i32*] [i32* @g_3, i32* @g_3]], align 16
@g_866 = internal global i64* @g_776, align 8
@g_1154 = internal global i64** @g_544, align 8
@g_639 = internal global i16** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i16*]* @g_640 to i8*), i64 8) to i16**), align 8
@func_6.l_1476 = private unnamed_addr constant [6 x [9 x [1 x i32]]] [[9 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 -2018362968], [1 x i32] [i32 1074282653], [1 x i32] [i32 -1645347034], [1 x i32] [i32 866423802], [1 x i32] [i32 1], [1 x i32] [i32 7], [1 x i32] [i32 1], [1 x i32] [i32 866423802]], [9 x [1 x i32]] [[1 x i32] [i32 -1645347034], [1 x i32] [i32 1074282653], [1 x i32] [i32 -2018362968], [1 x i32] [i32 -1], [1 x i32] [i32 2092494109], [1 x i32] [i32 -1], [1 x i32] [i32 -2018362968], [1 x i32] [i32 1074282653], [1 x i32] [i32 -1645347034]], [9 x [1 x i32]] [[1 x i32] [i32 866423802], [1 x i32] [i32 1], [1 x i32] [i32 7], [1 x i32] [i32 1], [1 x i32] [i32 866423802], [1 x i32] [i32 -1645347034], [1 x i32] [i32 1074282653], [1 x i32] [i32 -2018362968], [1 x i32] [i32 -1]], [9 x [1 x i32]] [[1 x i32] [i32 2092494109], [1 x i32] [i32 -1], [1 x i32] [i32 -2018362968], [1 x i32] [i32 1074282653], [1 x i32] [i32 -1645347034], [1 x i32] [i32 866423802], [1 x i32] [i32 1], [1 x i32] [i32 7], [1 x i32] [i32 1]], [9 x [1 x i32]] [[1 x i32] [i32 866423802], [1 x i32] [i32 -1645347034], [1 x i32] [i32 1074282653], [1 x i32] [i32 -2018362968], [1 x i32] [i32 -1], [1 x i32] [i32 2092494109], [1 x i32] [i32 -1], [1 x i32] [i32 -2018362968], [1 x i32] [i32 1074282653]], [9 x [1 x i32]] [[1 x i32] [i32 -1645347034], [1 x i32] [i32 866423802], [1 x i32] [i32 1], [1 x i32] [i32 7], [1 x i32] [i32 1], [1 x i32] [i32 866423802], [1 x i32] [i32 -1645347034], [1 x i32] [i32 1074282653], [1 x i32] [i32 2092494109]]], align 16
@g_1203 = internal global i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i16]* @g_113 to i8*), i64 4) to i16*), align 8
@g_1467 = internal global i32***** @g_1468, align 8
@func_6.l_1488 = private unnamed_addr constant [7 x [8 x [4 x i32]]] [[8 x [4 x i32]] [[4 x i32] [i32 -1486519460, i32 -431274813, i32 -5, i32 -8], [4 x i32] [i32 1421530295, i32 934282968, i32 -1, i32 -7], [4 x i32] [i32 1500105168, i32 -5, i32 -1643206071, i32 2124600877], [4 x i32] [i32 -1, i32 -1, i32 -431274813, i32 1249268414], [4 x i32] [i32 -2110784809, i32 1500105168, i32 0, i32 -1], [4 x i32] [i32 1108274879, i32 -1290361584, i32 -7, i32 131609404], [4 x i32] [i32 -1, i32 1, i32 -1258322706, i32 -1645071480], [4 x i32] [i32 -1838219034, i32 265242453, i32 -122309704, i32 2021298848]], [8 x [4 x i32]] [[4 x i32] [i32 -1648106620, i32 -6, i32 -8, i32 1], [4 x i32] [i32 -1, i32 -1980609507, i32 -1, i32 -739355909], [4 x i32] [i32 378159861, i32 2, i32 19967835, i32 1], [4 x i32] [i32 934282968, i32 0, i32 -1, i32 2], [4 x i32] [i32 -694958836, i32 1574699327, i32 -1, i32 5], [4 x i32] [i32 934282968, i32 -1643206071, i32 19967835, i32 0], [4 x i32] [i32 378159861, i32 -7, i32 -1, i32 1], [4 x i32] [i32 -1, i32 1, i32 -8, i32 1]], [8 x [4 x i32]] [[4 x i32] [i32 -1648106620, i32 -1738624967, i32 -122309704, i32 4], [4 x i32] [i32 -1838219034, i32 -1648106620, i32 -1258322706, i32 -1], [4 x i32] [i32 -1, i32 1501157480, i32 -7, i32 0], [4 x i32] [i32 1108274879, i32 -1486519460, i32 0, i32 -694958836], [4 x i32] [i32 -2110784809, i32 19967835, i32 -431274813, i32 6], [4 x i32] [i32 -1, i32 676323645, i32 -1643206071, i32 -49098775], [4 x i32] [i32 1500105168, i32 819819944, i32 -1, i32 378159861], [4 x i32] [i32 1421530295, i32 1, i32 -5, i32 1]], [8 x [4 x i32]] [[4 x i32] [i32 -1486519460, i32 834535846, i32 1614671177, i32 -1946895499], [4 x i32] [i32 2, i32 2021298848, i32 131609404, i32 -961743645], [4 x i32] [i32 -1643206071, i32 0, i32 -3, i32 -1], [4 x i32] [i32 -1645071480, i32 -8, i32 0, i32 -1], [4 x i32] [i32 -896522598, i32 0, i32 1682497460, i32 2], [4 x i32] [i32 0, i32 1, i32 -694958836, i32 1108274879], [4 x i32] [i32 -8, i32 -2110784809, i32 -1, i32 -1290361584], [4 x i32] [i32 6, i32 -896522598, i32 676323645, i32 1704899345]], [8 x [4 x i32]] [[4 x i32] [i32 -1971971483, i32 -2138827728, i32 265242453, i32 -1], [4 x i32] [i32 4, i32 1, i32 0, i32 934282968], [4 x i32] [i32 -1140930386, i32 -1, i32 -463977854, i32 -463977854], [4 x i32] [i32 4, i32 4, i32 1574699327, i32 0], [4 x i32] [i32 2021298848, i32 -1, i32 317931475, i32 1496472066], [4 x i32] [i32 -3, i32 1249268414, i32 -49098775, i32 317931475], [4 x i32] [i32 -1738624967, i32 1249268414, i32 -2138827728, i32 1574699327], [4 x i32] [i32 -2, i32 -2110784809, i32 0, i32 2]], [8 x [4 x i32]] [[4 x i32] [i32 4, i32 6, i32 -7, i32 -739355909], [4 x i32] [i32 -1, i32 676323645, i32 -694958836, i32 1], [4 x i32] [i32 1181960203, i32 131609404, i32 1, i32 -2110784809], [4 x i32] [i32 317931475, i32 0, i32 -1645071480, i32 -431274813], [4 x i32] [i32 -739355909, i32 934282968, i32 0, i32 317931475], [4 x i32] [i32 -1, i32 -8, i32 0, i32 -694958836], [4 x i32] [i32 2124600877, i32 -1, i32 265242453, i32 -4], [4 x i32] [i32 2, i32 1108274879, i32 -1, i32 -1]], [8 x [4 x i32]] [[4 x i32] [i32 265242453, i32 1682497460, i32 -896522598, i32 1], [4 x i32] [i32 -2, i32 -1971971483, i32 1704899345, i32 1], [4 x i32] [i32 1614671177, i32 1, i32 -463977854, i32 1], [4 x i32] [i32 -8, i32 -2138827728, i32 -1140930386, i32 4], [4 x i32] [i32 -1829022857, i32 2, i32 1108274879, i32 -1738624967], [4 x i32] [i32 834535846, i32 1, i32 1, i32 1496472066], [4 x i32] [i32 -1683172331, i32 -1838219034, i32 -1, i32 -1645071480], [4 x i32] [i32 1108274879, i32 0, i32 5, i32 -6]]], align 16
@g_1469 = internal global i32*** @g_1470, align 8
@g_544 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.S0* @g_52 to i8*), i64 16) to i64*), align 8
@g_640 = internal constant [5 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.S0* @g_52 to i8*), i64 26) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.S0* @g_52 to i8*), i64 26) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.S0* @g_52 to i8*), i64 26) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.S0* @g_52 to i8*), i64 26) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.S0* @g_52 to i8*), i64 26) to i16*)], align 16
@g_1468 = internal global i32**** @g_1469, align 8
@g_1470 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [2 x i32*]]* @g_675 to i8*), i64 8) to i32**), align 8
@func_13.l_1277 = private unnamed_addr constant [6 x [6 x [2 x i16]]] [[6 x [2 x i16]] [[2 x i16] [i16 4479, i16 0], [2 x i16] [i16 -7, i16 -29261], [2 x i16] [i16 -1, i16 16991], [2 x i16] [i16 -1, i16 16991], [2 x i16] [i16 -1, i16 -29261], [2 x i16] [i16 -7, i16 0]], [6 x [2 x i16]] [[2 x i16] [i16 4479, i16 -7], [2 x i16] [i16 -7, i16 21918], [2 x i16] [i16 0, i16 4432], [2 x i16] [i16 4479, i16 -14025], [2 x i16] [i16 4432, i16 -29261], [2 x i16] [i16 1, i16 1]], [6 x [2 x i16]] [[2 x i16] [i16 -1, i16 -1], [2 x i16] [i16 16991, i16 -29261], [2 x i16] [i16 -18595, i16 -7], [2 x i16] [i16 4479, i16 -18595], [2 x i16] [i16 -14025, i16 21918], [2 x i16] [i16 -14025, i16 -18595]], [6 x [2 x i16]] [[2 x i16] [i16 4479, i16 -7], [2 x i16] [i16 -18595, i16 -29261], [2 x i16] [i16 16991, i16 -1], [2 x i16] [i16 -1, i16 1], [2 x i16] [i16 1, i16 -29261], [2 x i16] [i16 4432, i16 -14025]], [6 x [2 x i16]] [[2 x i16] [i16 4479, i16 4432], [2 x i16] [i16 0, i16 21918], [2 x i16] [i16 -7, i16 -7], [2 x i16] [i16 4479, i16 0], [2 x i16] [i16 -7, i16 -29261], [2 x i16] [i16 -1, i16 16991]], [6 x [2 x i16]] [[2 x i16] [i16 -1, i16 -1], [2 x i16] [i16 4479, i16 4750], [2 x i16] [i16 21918, i16 -26149], [2 x i16] [i16 -23148, i16 21918], [2 x i16] [i16 10820, i16 -1], [2 x i16] [i16 -26149, i16 6482]]], align 16
@func_13.l_1270 = private unnamed_addr constant [6 x i32] [i32 -1723017084, i32 1876806842, i32 -1723017084, i32 -1723017084, i32 1876806842, i32 -1723017084], align 16
@g_28 = internal global i32*** getelementptr inbounds ([2 x i32**], [2 x i32**]* @g_29, i32 0, i32 0), align 8
@func_13.l_35 = internal constant [4 x [7 x [5 x i32]]] [[7 x [5 x i32]] [[5 x i32] [i32 5, i32 1, i32 311116122, i32 -1, i32 1588745091], [5 x i32] [i32 950670218, i32 -532178488, i32 1, i32 1, i32 0], [5 x i32] [i32 1, i32 -1, i32 -1907118639, i32 950670218, i32 184365669], [5 x i32] [i32 -2, i32 -2132651039, i32 -8304376, i32 1587486570, i32 1], [5 x i32] [i32 -2, i32 5, i32 -2, i32 -1098851783, i32 71082880], [5 x i32] [i32 1, i32 30976708, i32 -1, i32 627278916, i32 -7], [5 x i32] [i32 950670218, i32 1587486570, i32 2, i32 184365669, i32 5]], [7 x [5 x i32]] [[5 x i32] [i32 5, i32 0, i32 950670218, i32 1, i32 950670218], [5 x i32] [i32 -8, i32 -8, i32 184365669, i32 -1641084613, i32 -1171765078], [5 x i32] [i32 -532178488, i32 -8, i32 6, i32 -1171765078, i32 311116122], [5 x i32] [i32 1, i32 71082880, i32 0, i32 1, i32 -3], [5 x i32] [i32 767713332, i32 -8, i32 -1, i32 0, i32 -1895934163], [5 x i32] [i32 -2, i32 -8, i32 -971203446, i32 -2139944444, i32 -140167400], [5 x i32] [i32 627278916, i32 0, i32 7, i32 -2, i32 314710315]], [7 x [5 x i32]] [[5 x i32] [i32 -1895934163, i32 1587486570, i32 767713332, i32 -1, i32 -8], [5 x i32] [i32 -2132651039, i32 30976708, i32 5, i32 -8304376, i32 8], [5 x i32] [i32 1, i32 5, i32 -695189625, i32 71082880, i32 -8], [5 x i32] [i32 -1, i32 -2132651039, i32 -695189625, i32 -971203446, i32 -1641084613], [5 x i32] [i32 -2, i32 -1, i32 5, i32 -1907118639, i32 -1], [5 x i32] [i32 6, i32 -532178488, i32 767713332, i32 -695189625, i32 5], [5 x i32] [i32 -388942072, i32 1, i32 7, i32 -1895934163, i32 -1907118639]], [7 x [5 x i32]] [[5 x i32] [i32 -7, i32 -971203446, i32 -971203446, i32 -7, i32 30976708], [5 x i32] [i32 -140167400, i32 2, i32 -1, i32 1588745091, i32 0], [5 x i32] [i32 8, i32 0, i32 0, i32 -1, i32 1816742391], [5 x i32] [i32 -836077815, i32 1816742391, i32 6, i32 1588745091, i32 1], [5 x i32] [i32 -1098851783, i32 314710315, i32 184365669, i32 -7, i32 767713332], [5 x i32] [i32 1847696974, i32 -388942072, i32 950670218, i32 -1895934163, i32 -1], [5 x i32] [i32 71082880, i32 1847696974, i32 2, i32 -695189625, i32 1]]], align 16
@g_476 = internal global i32* @g_135, align 8
@g_964 = internal global i32*** @g_76, align 8
@g_29 = internal global [2 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_2 to i8*), i64 40) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_2 to i8*), i64 40) to i32**)], align 16
@g_76 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [10 x i32*]]* @g_77 to i8*), i64 120) to i32**), align 8
@g_77 = internal global [9 x [10 x i32*]] [[10 x i32*] [i32* @g_3, i32* null, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* @g_3, i32* @g_3], [10 x i32*] [i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* null, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], [10 x i32*] [i32* @g_3, i32* @g_3, i32* null, i32* null, i32* null, i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* @g_3], [10 x i32*] [i32* @g_3, i32* null, i32* @g_3, i32* null, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], [10 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], [10 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], [10 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* null, i32* @g_3, i32* @g_3, i32* @g_3], [10 x i32*] [i32* null, i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* @g_3, i32* null], [10 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3]], align 16
@.str.42 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call signext i16 @func_1()
  %91 = load i32, i32* @g_3, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 0), align 4, !tbaa !10
  %95 = zext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 1), align 4, !tbaa !13
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 2), align 2, !tbaa !14
  %101 = zext i16 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  %103 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 3), align 4, !tbaa !15
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %105)
  %106 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 4), align 8, !tbaa !16
  %107 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %107)
  %108 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 5), align 2, !tbaa !17
  %109 = zext i16 %108 to i64
  %110 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %110)
  %111 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 6), align 2, !tbaa !18
  %112 = zext i16 %111 to i64
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %113)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %114

; <label>:114                                     ; preds = %130, %89
  %115 = load i32, i32* %i, align 4, !tbaa !1
  %116 = icmp slt i32 %115, 3
  br i1 %116, label %117, label %133

; <label>:117                                     ; preds = %114
  %118 = load i32, i32* %i, align 4, !tbaa !1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [3 x i16], [3 x i16]* @g_113, i32 0, i64 %119
  %121 = load i16, i16* %120, align 2, !tbaa !19
  %122 = sext i16 %121 to i64
  %123 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %123)
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

; <label>:126                                     ; preds = %117
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %127)
  br label %129

; <label>:129                                     ; preds = %126, %117
  br label %130

; <label>:130                                     ; preds = %129
  %131 = load i32, i32* %i, align 4, !tbaa !1
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %i, align 4, !tbaa !1
  br label %114

; <label>:133                                     ; preds = %114
  %134 = load i32, i32* @g_135, align 4, !tbaa !1
  %135 = sext i32 %134 to i64
  %136 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %136)
  %137 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 0), align 4, !tbaa !10
  %138 = zext i32 %137 to i64
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %139)
  %140 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 1), align 4, !tbaa !13
  %141 = sext i32 %140 to i64
  %142 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %142)
  %143 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 2), align 2, !tbaa !14
  %144 = zext i16 %143 to i64
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %145)
  %146 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 3), align 4, !tbaa !15
  %147 = sext i32 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %148)
  %149 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 4), align 8, !tbaa !16
  %150 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %150)
  %151 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 5), align 2, !tbaa !17
  %152 = zext i16 %151 to i64
  %153 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %153)
  %154 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 6), align 2, !tbaa !18
  %155 = zext i16 %154 to i64
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %156)
  %157 = load i8, i8* @g_154, align 1, !tbaa !9
  %158 = zext i8 %157 to i64
  %159 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %159)
  %160 = load volatile i32, i32* @g_155, align 4, !tbaa !1
  %161 = zext i32 %160 to i64
  %162 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %162)
  %163 = load i8, i8* @g_168, align 1, !tbaa !9
  %164 = sext i8 %163 to i64
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %165)
  %166 = load volatile i8, i8* @g_276, align 1, !tbaa !9
  %167 = zext i8 %166 to i64
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %168)
  %169 = load i8, i8* @g_279, align 1, !tbaa !9
  %170 = zext i8 %169 to i64
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %171)
  %172 = load i64, i64* @g_346, align 8, !tbaa !7
  %173 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %173)
  %174 = load i32, i32* @g_347, align 4, !tbaa !1
  %175 = zext i32 %174 to i64
  %176 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %176)
  %177 = load i8, i8* @g_352, align 1, !tbaa !9
  %178 = sext i8 %177 to i64
  %179 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %179)
  %180 = load i32, i32* @g_672, align 4, !tbaa !1
  %181 = zext i32 %180 to i64
  %182 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %182)
  %183 = load i64, i64* @g_697, align 8, !tbaa !7
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %184)
  %185 = load i32, i32* @g_711, align 4, !tbaa !1
  %186 = zext i32 %185 to i64
  %187 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %187)
  %188 = load i8, i8* @g_756, align 1, !tbaa !9
  %189 = sext i8 %188 to i64
  %190 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %190)
  %191 = load i64, i64* @g_776, align 8, !tbaa !7
  %192 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %192)
  %193 = load i64, i64* @g_820, align 8, !tbaa !7
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %194)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %195

; <label>:195                                     ; preds = %210, %133
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = icmp slt i32 %196, 3
  br i1 %197, label %198, label %213

; <label>:198                                     ; preds = %195
  %199 = load i32, i32* %i, align 4, !tbaa !1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [3 x i64], [3 x i64]* @g_897, i32 0, i64 %200
  %202 = load i64, i64* %201, align 8, !tbaa !7
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %203)
  %204 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

; <label>:206                                     ; preds = %198
  %207 = load i32, i32* %i, align 4, !tbaa !1
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %207)
  br label %209

; <label>:209                                     ; preds = %206, %198
  br label %210

; <label>:210                                     ; preds = %209
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %i, align 4, !tbaa !1
  br label %195

; <label>:213                                     ; preds = %195
  %214 = load i8, i8* @g_960, align 1, !tbaa !9
  %215 = sext i8 %214 to i64
  %216 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %216)
  %217 = load i32, i32* @g_1053, align 4, !tbaa !1
  %218 = sext i32 %217 to i64
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %219)
  %220 = load volatile i32, i32* @g_1093, align 4, !tbaa !1
  %221 = zext i32 %220 to i64
  %222 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %222)
  %223 = load i8, i8* @g_1208, align 1, !tbaa !9
  %224 = zext i8 %223 to i64
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %225)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %226

; <label>:226                                     ; preds = %253, %213
  %227 = load i32, i32* %i, align 4, !tbaa !1
  %228 = icmp slt i32 %227, 3
  br i1 %228, label %229, label %256

; <label>:229                                     ; preds = %226
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %230

; <label>:230                                     ; preds = %249, %229
  %231 = load i32, i32* %j, align 4, !tbaa !1
  %232 = icmp slt i32 %231, 9
  br i1 %232, label %233, label %252

; <label>:233                                     ; preds = %230
  %234 = load i32, i32* %j, align 4, !tbaa !1
  %235 = sext i32 %234 to i64
  %236 = load i32, i32* %i, align 4, !tbaa !1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* @g_1371, i32 0, i64 %237
  %239 = getelementptr inbounds [9 x i64], [9 x i64]* %238, i32 0, i64 %235
  %240 = load i64, i64* %239, align 8, !tbaa !7
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i32 %241)
  %242 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

; <label>:244                                     ; preds = %233
  %245 = load i32, i32* %i, align 4, !tbaa !1
  %246 = load i32, i32* %j, align 4, !tbaa !1
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i32 %245, i32 %246)
  br label %248

; <label>:248                                     ; preds = %244, %233
  br label %249

; <label>:249                                     ; preds = %248
  %250 = load i32, i32* %j, align 4, !tbaa !1
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %j, align 4, !tbaa !1
  br label %230

; <label>:252                                     ; preds = %230
  br label %253

; <label>:253                                     ; preds = %252
  %254 = load i32, i32* %i, align 4, !tbaa !1
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %i, align 4, !tbaa !1
  br label %226

; <label>:256                                     ; preds = %226
  %257 = load i32, i32* @g_1380, align 4, !tbaa !1
  %258 = sext i32 %257 to i64
  %259 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %258, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %259)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %260

; <label>:260                                     ; preds = %276, %256
  %261 = load i32, i32* %i, align 4, !tbaa !1
  %262 = icmp slt i32 %261, 1
  br i1 %262, label %263, label %279

; <label>:263                                     ; preds = %260
  %264 = load i32, i32* %i, align 4, !tbaa !1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [1 x i16], [1 x i16]* @g_1483, i32 0, i64 %265
  %267 = load i16, i16* %266, align 2, !tbaa !19
  %268 = zext i16 %267 to i64
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %268, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 %269)
  %270 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

; <label>:272                                     ; preds = %263
  %273 = load i32, i32* %i, align 4, !tbaa !1
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %273)
  br label %275

; <label>:275                                     ; preds = %272, %263
  br label %276

; <label>:276                                     ; preds = %275
  %277 = load i32, i32* %i, align 4, !tbaa !1
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %i, align 4, !tbaa !1
  br label %260

; <label>:279                                     ; preds = %260
  %280 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %281 = zext i32 %280 to i64
  %282 = xor i64 %281, 4294967295
  %283 = trunc i64 %282 to i32
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %283, i32 %284)
  %285 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #1
  %286 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #1
  %287 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #1
  %288 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
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
define internal signext i16 @func_1() #0 {
  %l_5 = alloca i32**, align 8
  %l_10 = alloca i32**, align 8
  %l_12 = alloca i32*, align 8
  %l_15 = alloca i8, align 1
  %l_1372 = alloca i8*, align 8
  %l_1377 = alloca i64*, align 8
  %l_1378 = alloca i64**, align 8
  %l_1379 = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = alloca %struct.S0, align 8
  %2 = bitcast i32*** %l_5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32** getelementptr inbounds ([10 x i32*], [10 x i32*]* @g_2, i32 0, i64 2), i32*** %l_5, align 8, !tbaa !5
  %3 = bitcast i32*** %l_10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32** getelementptr inbounds ([6 x [7 x i32*]], [6 x [7 x i32*]]* @func_1.l_11, i32 0, i64 5, i64 5), i32*** %l_10, align 8, !tbaa !5
  %4 = bitcast i32** %l_12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* null, i32** %l_12, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_15) #1
  store i8 49, i8* %l_15, align 1, !tbaa !9
  %5 = bitcast i8** %l_1372 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i8* @g_168, i8** %l_1372, align 8, !tbaa !5
  %6 = bitcast i64** %l_1377 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 4), i64** %l_1377, align 8, !tbaa !5
  %7 = bitcast i64*** %l_1378 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64** %l_1377, i64*** %l_1378, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1379) #1
  store i8 -5, i8* %l_1379, align 1, !tbaa !9
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  br label %10

; <label>:10                                      ; preds = %47, %0
  %11 = load volatile i32*, i32** getelementptr inbounds ([10 x i32*], [10 x i32*]* @g_2, i32 0, i64 2), align 8, !tbaa !5
  %12 = load i32**, i32*** %l_5, align 8, !tbaa !5
  store volatile i32* %11, i32** %12, align 8, !tbaa !5
  %13 = load volatile %struct.S0*, %struct.S0** @g_142, align 8, !tbaa !5
  %14 = load i32**, i32*** %l_10, align 8, !tbaa !5
  %15 = load i32*, i32** %l_12, align 8, !tbaa !5
  %16 = load i32, i32* @g_3, align 4, !tbaa !1
  %17 = load i8, i8* %l_15, align 1, !tbaa !9
  %18 = sext i8 %17 to i16
  %19 = call i32 @func_13(i16 signext %18)
  %20 = load i8*, i8** %l_1372, align 8, !tbaa !5
  store i8 1, i8* %20, align 1, !tbaa !9
  %21 = load i32**, i32*** %l_10, align 8, !tbaa !5
  %22 = load i32*, i32** %21, align 8, !tbaa !5
  %23 = load i64*, i64** %l_1377, align 8, !tbaa !5
  %24 = load i64***, i64**** @g_1157, align 8, !tbaa !5
  %25 = load i64**, i64*** %24, align 8, !tbaa !5
  store i64* %23, i64** %25, align 8, !tbaa !5
  %26 = load i64**, i64*** %l_1378, align 8, !tbaa !5
  store i64* %23, i64** %26, align 8, !tbaa !5
  %27 = icmp ne i64* %23, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @safe_sub_func_uint32_t_u_u(i32 %28, i32 -5)
  %30 = load i64***, i64**** @g_1157, align 8, !tbaa !5
  %31 = load i64**, i64*** %30, align 8, !tbaa !5
  %32 = load i64*, i64** %31, align 8, !tbaa !5
  %33 = load i64, i64* %32, align 8, !tbaa !7
  %34 = load i32, i32* @g_1380, align 4, !tbaa !1
  %35 = sext i32 %34 to i64
  %36 = call i64 @safe_add_func_uint64_t_u_u(i64 %33, i64 %35)
  %37 = and i64 -1, %36
  %38 = load i32**, i32*** %l_10, align 8, !tbaa !5
  %39 = load i32*, i32** %38, align 8, !tbaa !5
  %40 = icmp ne i32* %22, %39
  %41 = zext i1 %40 to i32
  %42 = trunc i32 %41 to i8
  call void @func_6(%struct.S0* sret %1, i32** %14, i32* %15, i8 signext %42)
  %43 = bitcast %struct.S0* %13 to i8*
  %44 = bitcast %struct.S0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false), !tbaa.struct !20
  %45 = load i64, i64* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 4), align 8, !tbaa !16
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %10
  br label %10

; <label>:48                                      ; preds = %10
  %49 = load i16**, i16*** @g_1202, align 8, !tbaa !5
  %50 = load i16*, i16** %49, align 8, !tbaa !5
  %51 = load i16, i16* %50, align 2, !tbaa !19
  %52 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1379) #1
  %54 = bitcast i64*** %l_1378 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i64** %l_1377 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i8** %l_1372 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_15) #1
  %57 = bitcast i32** %l_12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32*** %l_10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast i32*** %l_5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  ret i16 %51
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @func_6(%struct.S0* noalias sret %agg.result, i32** %p_7, i32* %p_8, i8 signext %p_9) #0 {
  %1 = alloca i32**, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %l_1387 = alloca i32, align 4
  %l_1388 = alloca %struct.S0**, align 8
  %l_1391 = alloca [10 x i8*], align 16
  %l_1397 = alloca %struct.S0*, align 8
  %l_1398 = alloca [6 x i32], align 16
  %l_1399 = alloca i32, align 4
  %l_1400 = alloca i16, align 2
  %l_1432 = alloca i32**, align 8
  %l_1431 = alloca i32***, align 8
  %l_1461 = alloca i64, align 8
  %l_1482 = alloca i64, align 8
  %l_1498 = alloca i64, align 8
  %l_1501 = alloca i32*, align 8
  %i = alloca i32, align 4
  %l_1401 = alloca [6 x [6 x [7 x i8]]], align 16
  %l_1402 = alloca i32***, align 8
  %l_1430 = alloca [7 x i32], align 16
  %l_1466 = alloca i32**, align 8
  %l_1465 = alloca [4 x i32***], align 16
  %l_1464 = alloca i32****, align 8
  %l_1463 = alloca i32*****, align 8
  %l_1471 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1403 = alloca [7 x [4 x i32****]], align 16
  %l_1404 = alloca i32***, align 8
  %l_1407 = alloca [1 x [4 x i32]], align 16
  %l_1427 = alloca i8*, align 8
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %l_1435 = alloca [1 x i32], align 4
  %i4 = alloca i32, align 4
  %l_1442 = alloca i32*, align 8
  %l_1447 = alloca i32, align 4
  %l_1473 = alloca i32, align 4
  %l_1474 = alloca i32, align 4
  %l_1476 = alloca [6 x [9 x [1 x i32]]], align 16
  %l_1477 = alloca i32, align 4
  %l_1478 = alloca i32, align 4
  %l_1479 = alloca i32, align 4
  %l_1480 = alloca i32, align 4
  %l_1481 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %k7 = alloca i32, align 4
  %l_1472 = alloca [4 x [9 x i32*]], align 16
  %l_1475 = alloca i16, align 2
  %i8 = alloca i32, align 4
  %j9 = alloca i32, align 4
  %4 = alloca i32
  %l_1460 = alloca i16*, align 8
  %l_1462 = alloca i32*, align 8
  %i10 = alloca i32, align 4
  %l_1486 = alloca i32, align 4
  %l_1487 = alloca i32, align 4
  %l_1488 = alloca [7 x [8 x [4 x i32]]], align 16
  %l_1489 = alloca i32*, align 8
  %l_1490 = alloca i32*, align 8
  %l_1491 = alloca i32*, align 8
  %l_1492 = alloca i32*, align 8
  %l_1493 = alloca i32*, align 8
  %l_1494 = alloca i32*, align 8
  %l_1495 = alloca i32*, align 8
  %l_1496 = alloca i32*, align 8
  %l_1497 = alloca [9 x [9 x [3 x i32*]]], align 16
  %i12 = alloca i32, align 4
  %j13 = alloca i32, align 4
  %k14 = alloca i32, align 4
  store i32** %p_7, i32*** %1, align 8, !tbaa !5
  store i32* %p_8, i32** %2, align 8, !tbaa !5
  store i8 %p_9, i8* %3, align 1, !tbaa !9
  %5 = bitcast i32* %l_1387 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -1, i32* %l_1387, align 4, !tbaa !1
  %6 = bitcast %struct.S0*** %l_1388 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.S0** @g_249, %struct.S0*** %l_1388, align 8, !tbaa !5
  %7 = bitcast [10 x i8*]* %l_1391 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %7) #1
  %8 = bitcast [10 x i8*]* %l_1391 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([10 x i8*]* @func_6.l_1391 to i8*), i64 80, i32 16, i1 false)
  %9 = bitcast %struct.S0** %l_1397 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct.S0* @g_52, %struct.S0** %l_1397, align 8, !tbaa !5
  %10 = bitcast [6 x i32]* %l_1398 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %10) #1
  %11 = bitcast [6 x i32]* %l_1398 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([6 x i32]* @func_6.l_1398 to i8*), i64 24, i32 16, i1 false)
  %12 = bitcast i32* %l_1399 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -907587781, i32* %l_1399, align 4, !tbaa !1
  %13 = bitcast i16* %l_1400 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  store i16 -28210, i16* %l_1400, align 2, !tbaa !19
  %14 = bitcast i32*** %l_1432 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32** getelementptr inbounds ([9 x [9 x i32*]], [9 x [9 x i32*]]* @g_323, i32 0, i64 6, i64 4), i32*** %l_1432, align 8, !tbaa !5
  %15 = bitcast i32**** %l_1431 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i32*** %l_1432, i32**** %l_1431, align 8, !tbaa !5
  %16 = bitcast i64* %l_1461 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64 9138772394278596845, i64* %l_1461, align 8, !tbaa !7
  %17 = bitcast i64* %l_1482 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i64 -1, i64* %l_1482, align 8, !tbaa !7
  %18 = bitcast i64* %l_1498 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i64 -1, i64* %l_1498, align 8, !tbaa !7
  %19 = bitcast i32** %l_1501 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i32* @g_1053, i32** %l_1501, align 8, !tbaa !5
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32, i32* %l_1387, align 4, !tbaa !1
  %22 = load %struct.S0**, %struct.S0*** %l_1388, align 8, !tbaa !5
  %23 = load %struct.S0**, %struct.S0*** %l_1388, align 8, !tbaa !5
  %24 = icmp ne %struct.S0** %22, %23
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %l_1391, i32 0, i64 6
  %27 = load i8*, i8** %26, align 8, !tbaa !5
  %28 = getelementptr inbounds [10 x i8*], [10 x i8*]* %l_1391, i32 0, i64 6
  store i8* %27, i8** %28, align 8, !tbaa !5
  %29 = icmp ne i8* %27, null
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %l_1387, align 4, !tbaa !1
  %32 = load i32, i32* %l_1387, align 4, !tbaa !1
  %33 = icmp uge i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = load i16**, i16*** @g_1202, align 8, !tbaa !5
  %37 = load i16*, i16** %36, align 8, !tbaa !5
  %38 = load i16, i16* %37, align 2, !tbaa !19
  %39 = load i32, i32* %l_1387, align 4, !tbaa !1
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %l_1387, align 4, !tbaa !1
  %42 = icmp ult i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load %struct.S0**, %struct.S0*** @g_248, align 8, !tbaa !5
  %45 = load %struct.S0*, %struct.S0** %44, align 8, !tbaa !5
  %46 = load %struct.S0*, %struct.S0** %l_1397, align 8, !tbaa !5
  %47 = icmp eq %struct.S0* %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i8, i8* %3, align 1, !tbaa !9
  %50 = sext i8 %49 to i32
  %51 = or i32 %48, %50
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  %53 = load i32, i32* %52, align 4, !tbaa !1
  %54 = and i32 %53, %51
  store i32 %54, i32* %52, align 4, !tbaa !1
  %55 = trunc i32 %54 to i16
  %56 = load i32, i32* %l_1387, align 4, !tbaa !1
  %57 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %55, i32 %56)
  %58 = sext i16 %57 to i32
  %59 = load i32, i32* %l_1399, align 4, !tbaa !1
  %60 = icmp sgt i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = trunc i32 %61 to i16
  %63 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %38, i16 signext %62)
  %64 = sext i16 %63 to i64
  %65 = or i64 %64, -1
  %66 = icmp sge i64 %35, %65
  %67 = zext i1 %66 to i32
  %68 = icmp sle i32 %30, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @safe_div_func_uint32_t_u_u(i32 %69, i32 1784489816)
  %71 = icmp ult i32 %25, %70
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = icmp sge i64 %73, 65
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %l_1387, align 4, !tbaa !1
  %77 = xor i32 %75, %76
  %78 = load i16, i16* %l_1400, align 2, !tbaa !19
  %79 = zext i16 %78 to i32
  %80 = icmp ult i32 %77, %79
  %81 = zext i1 %80 to i32
  %82 = trunc i32 %81 to i16
  %83 = load i32, i32* %l_1387, align 4, !tbaa !1
  %84 = trunc i32 %83 to i16
  %85 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %82, i16 signext %84)
  %86 = sext i16 %85 to i32
  %87 = load i32, i32* %l_1387, align 4, !tbaa !1
  %88 = icmp uge i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = trunc i32 %89 to i16
  %91 = load i16**, i16*** @g_1202, align 8, !tbaa !5
  %92 = load i16*, i16** %91, align 8, !tbaa !5
  %93 = load i16, i16* %92, align 2, !tbaa !19
  %94 = sext i16 %93 to i32
  %95 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %90, i32 %94)
  %96 = trunc i16 %95 to i8
  %97 = load volatile i8*, i8** @g_275, align 8, !tbaa !5
  %98 = load volatile i8, i8* %97, align 1, !tbaa !9
  %99 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %96, i8 signext %98)
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %101, label %595

; <label>:101                                     ; preds = %0
  %102 = bitcast [6 x [6 x [7 x i8]]]* %l_1401 to i8*
  call void @llvm.lifetime.start(i64 252, i8* %102) #1
  %103 = bitcast [6 x [6 x [7 x i8]]]* %l_1401 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* getelementptr inbounds ([6 x [6 x [7 x i8]]], [6 x [6 x [7 x i8]]]* @func_6.l_1401, i32 0, i32 0, i32 0, i32 0), i64 252, i32 16, i1 false)
  %104 = bitcast i32**** %l_1402 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #1
  store i32*** null, i32**** %l_1402, align 8, !tbaa !5
  %105 = bitcast [7 x i32]* %l_1430 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %105) #1
  %106 = bitcast i32*** %l_1466 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  store i32** getelementptr inbounds ([7 x [2 x i32*]], [7 x [2 x i32*]]* @g_675, i32 0, i64 6, i64 1), i32*** %l_1466, align 8, !tbaa !5
  %107 = bitcast [4 x i32***]* %l_1465 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %107) #1
  %108 = getelementptr inbounds [4 x i32***], [4 x i32***]* %l_1465, i64 0, i64 0
  store i32*** %l_1466, i32**** %108, !tbaa !5
  %109 = getelementptr inbounds i32***, i32**** %108, i64 1
  store i32*** %l_1466, i32**** %109, !tbaa !5
  %110 = getelementptr inbounds i32***, i32**** %109, i64 1
  store i32*** %l_1466, i32**** %110, !tbaa !5
  %111 = getelementptr inbounds i32***, i32**** %110, i64 1
  store i32*** %l_1466, i32**** %111, !tbaa !5
  %112 = bitcast i32***** %l_1464 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  %113 = getelementptr inbounds [4 x i32***], [4 x i32***]* %l_1465, i32 0, i64 2
  store i32**** %113, i32***** %l_1464, align 8, !tbaa !5
  %114 = bitcast i32****** %l_1463 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %114) #1
  store i32***** %l_1464, i32****** %l_1463, align 8, !tbaa !5
  %115 = bitcast i32* %l_1471 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  store i32 -718234953, i32* %l_1471, align 4, !tbaa !1
  %116 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #1
  %117 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #1
  %118 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %119

; <label>:119                                     ; preds = %126, %101
  %120 = load i32, i32* %i1, align 4, !tbaa !1
  %121 = icmp slt i32 %120, 7
  br i1 %121, label %122, label %129

; <label>:122                                     ; preds = %119
  %123 = load i32, i32* %i1, align 4, !tbaa !1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1430, i32 0, i64 %124
  store i32 1, i32* %125, align 4, !tbaa !1
  br label %126

; <label>:126                                     ; preds = %122
  %127 = load i32, i32* %i1, align 4, !tbaa !1
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %i1, align 4, !tbaa !1
  br label %119

; <label>:129                                     ; preds = %119
  %130 = getelementptr inbounds [6 x [6 x [7 x i8]]], [6 x [6 x [7 x i8]]]* %l_1401, i32 0, i64 5
  %131 = getelementptr inbounds [6 x [7 x i8]], [6 x [7 x i8]]* %130, i32 0, i64 5
  %132 = getelementptr inbounds [7 x i8], [7 x i8]* %131, i32 0, i64 6
  %133 = load i8, i8* %132, align 1, !tbaa !9
  %134 = icmp ne i8 %133, 0
  br i1 %134, label %135, label %295

; <label>:135                                     ; preds = %129
  %136 = bitcast [7 x [4 x i32****]]* %l_1403 to i8*
  call void @llvm.lifetime.start(i64 224, i8* %136) #1
  %137 = getelementptr inbounds [7 x [4 x i32****]], [7 x [4 x i32****]]* %l_1403, i64 0, i64 0
  %138 = getelementptr inbounds [4 x i32****], [4 x i32****]* %137, i64 0, i64 0
  store i32**** %l_1402, i32***** %138, !tbaa !5
  %139 = getelementptr inbounds i32****, i32***** %138, i64 1
  store i32**** %l_1402, i32***** %139, !tbaa !5
  %140 = getelementptr inbounds i32****, i32***** %139, i64 1
  store i32**** %l_1402, i32***** %140, !tbaa !5
  %141 = getelementptr inbounds i32****, i32***** %140, i64 1
  store i32**** %l_1402, i32***** %141, !tbaa !5
  %142 = getelementptr inbounds [4 x i32****], [4 x i32****]* %137, i64 1
  %143 = getelementptr inbounds [4 x i32****], [4 x i32****]* %142, i64 0, i64 0
  store i32**** %l_1402, i32***** %143, !tbaa !5
  %144 = getelementptr inbounds i32****, i32***** %143, i64 1
  store i32**** %l_1402, i32***** %144, !tbaa !5
  %145 = getelementptr inbounds i32****, i32***** %144, i64 1
  store i32**** %l_1402, i32***** %145, !tbaa !5
  %146 = getelementptr inbounds i32****, i32***** %145, i64 1
  store i32**** null, i32***** %146, !tbaa !5
  %147 = getelementptr inbounds [4 x i32****], [4 x i32****]* %142, i64 1
  %148 = getelementptr inbounds [4 x i32****], [4 x i32****]* %147, i64 0, i64 0
  store i32**** %l_1402, i32***** %148, !tbaa !5
  %149 = getelementptr inbounds i32****, i32***** %148, i64 1
  store i32**** %l_1402, i32***** %149, !tbaa !5
  %150 = getelementptr inbounds i32****, i32***** %149, i64 1
  store i32**** %l_1402, i32***** %150, !tbaa !5
  %151 = getelementptr inbounds i32****, i32***** %150, i64 1
  store i32**** %l_1402, i32***** %151, !tbaa !5
  %152 = getelementptr inbounds [4 x i32****], [4 x i32****]* %147, i64 1
  %153 = getelementptr inbounds [4 x i32****], [4 x i32****]* %152, i64 0, i64 0
  store i32**** %l_1402, i32***** %153, !tbaa !5
  %154 = getelementptr inbounds i32****, i32***** %153, i64 1
  store i32**** %l_1402, i32***** %154, !tbaa !5
  %155 = getelementptr inbounds i32****, i32***** %154, i64 1
  store i32**** %l_1402, i32***** %155, !tbaa !5
  %156 = getelementptr inbounds i32****, i32***** %155, i64 1
  store i32**** %l_1402, i32***** %156, !tbaa !5
  %157 = getelementptr inbounds [4 x i32****], [4 x i32****]* %152, i64 1
  %158 = getelementptr inbounds [4 x i32****], [4 x i32****]* %157, i64 0, i64 0
  store i32**** %l_1402, i32***** %158, !tbaa !5
  %159 = getelementptr inbounds i32****, i32***** %158, i64 1
  store i32**** %l_1402, i32***** %159, !tbaa !5
  %160 = getelementptr inbounds i32****, i32***** %159, i64 1
  store i32**** null, i32***** %160, !tbaa !5
  %161 = getelementptr inbounds i32****, i32***** %160, i64 1
  store i32**** null, i32***** %161, !tbaa !5
  %162 = getelementptr inbounds [4 x i32****], [4 x i32****]* %157, i64 1
  %163 = getelementptr inbounds [4 x i32****], [4 x i32****]* %162, i64 0, i64 0
  store i32**** %l_1402, i32***** %163, !tbaa !5
  %164 = getelementptr inbounds i32****, i32***** %163, i64 1
  store i32**** %l_1402, i32***** %164, !tbaa !5
  %165 = getelementptr inbounds i32****, i32***** %164, i64 1
  store i32**** %l_1402, i32***** %165, !tbaa !5
  %166 = getelementptr inbounds i32****, i32***** %165, i64 1
  store i32**** %l_1402, i32***** %166, !tbaa !5
  %167 = getelementptr inbounds [4 x i32****], [4 x i32****]* %162, i64 1
  %168 = getelementptr inbounds [4 x i32****], [4 x i32****]* %167, i64 0, i64 0
  store i32**** %l_1402, i32***** %168, !tbaa !5
  %169 = getelementptr inbounds i32****, i32***** %168, i64 1
  store i32**** %l_1402, i32***** %169, !tbaa !5
  %170 = getelementptr inbounds i32****, i32***** %169, i64 1
  store i32**** null, i32***** %170, !tbaa !5
  %171 = getelementptr inbounds i32****, i32***** %170, i64 1
  store i32**** %l_1402, i32***** %171, !tbaa !5
  %172 = bitcast i32**** %l_1404 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %172) #1
  store i32*** null, i32**** %l_1404, align 8, !tbaa !5
  %173 = bitcast [1 x [4 x i32]]* %l_1407 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %173) #1
  %174 = bitcast i8** %l_1427 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %174) #1
  %175 = getelementptr inbounds [6 x [6 x [7 x i8]]], [6 x [6 x [7 x i8]]]* %l_1401, i32 0, i64 5
  %176 = getelementptr inbounds [6 x [7 x i8]], [6 x [7 x i8]]* %175, i32 0, i64 5
  %177 = getelementptr inbounds [7 x i8], [7 x i8]* %176, i32 0, i64 6
  store i8* %177, i8** %l_1427, align 8, !tbaa !5
  %178 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %178) #1
  %179 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %179) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %180

; <label>:180                                     ; preds = %198, %135
  %181 = load i32, i32* %i2, align 4, !tbaa !1
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %183, label %201

; <label>:183                                     ; preds = %180
  store i32 0, i32* %j3, align 4, !tbaa !1
  br label %184

; <label>:184                                     ; preds = %194, %183
  %185 = load i32, i32* %j3, align 4, !tbaa !1
  %186 = icmp slt i32 %185, 4
  br i1 %186, label %187, label %197

; <label>:187                                     ; preds = %184
  %188 = load i32, i32* %j3, align 4, !tbaa !1
  %189 = sext i32 %188 to i64
  %190 = load i32, i32* %i2, align 4, !tbaa !1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* %l_1407, i32 0, i64 %191
  %193 = getelementptr inbounds [4 x i32], [4 x i32]* %192, i32 0, i64 %189
  store i32 7, i32* %193, align 4, !tbaa !1
  br label %194

; <label>:194                                     ; preds = %187
  %195 = load i32, i32* %j3, align 4, !tbaa !1
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %j3, align 4, !tbaa !1
  br label %184

; <label>:197                                     ; preds = %184
  br label %198

; <label>:198                                     ; preds = %197
  %199 = load i32, i32* %i2, align 4, !tbaa !1
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %i2, align 4, !tbaa !1
  br label %180

; <label>:201                                     ; preds = %180
  %202 = load i32***, i32**** %l_1402, align 8, !tbaa !5
  store i32*** %202, i32**** %l_1404, align 8, !tbaa !5
  %203 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* %l_1407, i32 0, i64 0
  %204 = getelementptr inbounds [4 x i32], [4 x i32]* %203, i32 0, i64 3
  %205 = load i32, i32* %204, align 4, !tbaa !1
  %206 = sext i32 %205 to i64
  %207 = load i8, i8* %3, align 1, !tbaa !9
  %208 = sext i8 %207 to i64
  %209 = call i64 @safe_div_func_uint64_t_u_u(i64 %206, i64 %208)
  %210 = load volatile i64*, i64** @g_866, align 8, !tbaa !5
  %211 = load i64, i64* %210, align 8, !tbaa !7
  %212 = load i8, i8* %3, align 1, !tbaa !9
  %213 = load i64***, i64**** @g_1157, align 8, !tbaa !5
  %214 = load i64**, i64*** %213, align 8, !tbaa !5
  %215 = load i64*, i64** %214, align 8, !tbaa !5
  %216 = load i64, i64* %215, align 8, !tbaa !7
  %217 = load i8*, i8** %l_1427, align 8, !tbaa !5
  store i8 -51, i8* %217, align 1, !tbaa !9
  %218 = load i64**, i64*** @g_1154, align 8, !tbaa !5
  %219 = load i64*, i64** %218, align 8, !tbaa !5
  %220 = load i64, i64* %219, align 8, !tbaa !7
  %221 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* %l_1407, i32 0, i64 0
  %222 = getelementptr inbounds [4 x i32], [4 x i32]* %221, i32 0, i64 3
  %223 = load i32, i32* %222, align 4, !tbaa !1
  %224 = sext i32 %223 to i64
  %225 = call i64 @safe_add_func_uint64_t_u_u(i64 %220, i64 %224)
  %226 = trunc i64 %225 to i32
  %227 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext -51, i32 %226)
  %228 = sext i8 %227 to i32
  %229 = call i32 @safe_div_func_uint32_t_u_u(i32 %228, i32 -1)
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1430, i32 0, i64 6
  %232 = load i32, i32* %231, align 4, !tbaa !1
  %233 = sext i32 %232 to i64
  %234 = call i64 @safe_div_func_uint64_t_u_u(i64 %230, i64 %233)
  %235 = xor i64 %234, 6361644317323988639
  %236 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  %237 = load i32, i32* %236, align 4, !tbaa !1
  %238 = sext i32 %237 to i64
  %239 = icmp eq i64 %235, %238
  %240 = zext i1 %239 to i32
  %241 = sext i32 %240 to i64
  %242 = or i64 %216, %241
  %243 = load i32, i32* @g_672, align 4, !tbaa !1
  %244 = trunc i32 %243 to i8
  %245 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext 5, i8 signext %244)
  %246 = sext i8 %245 to i64
  %247 = or i64 %246, 1899557316
  %248 = trunc i64 %247 to i8
  %249 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %248, i8 zeroext 51)
  %250 = zext i8 %249 to i16
  %251 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %250, i32 3)
  %252 = sext i16 %251 to i32
  %253 = load i32, i32* @g_347, align 4, !tbaa !1
  %254 = xor i32 %252, %253
  %255 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* %l_1407, i32 0, i64 0
  %256 = getelementptr inbounds [4 x i32], [4 x i32]* %255, i32 0, i64 3
  %257 = load i32, i32* %256, align 4, !tbaa !1
  %258 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1430, i32 0, i64 6
  %259 = load i32, i32* %258, align 4, !tbaa !1
  %260 = sext i32 %259 to i64
  %261 = load i64**, i64*** @g_1154, align 8, !tbaa !5
  %262 = load i64*, i64** %261, align 8, !tbaa !5
  store i64 %260, i64* %262, align 8, !tbaa !7
  %263 = icmp ult i64 %211, %260
  %264 = zext i1 %263 to i32
  %265 = trunc i32 %264 to i8
  %266 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %265, i32 5)
  %267 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext -1, i8 zeroext %266)
  %268 = zext i8 %267 to i32
  %269 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1430, i32 0, i64 6
  %270 = load i32, i32* %269, align 4, !tbaa !1
  %271 = icmp eq i32 %268, %270
  %272 = zext i1 %271 to i32
  %273 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 4
  store i32 %272, i32* %273, align 4, !tbaa !1
  %274 = trunc i32 %272 to i16
  %275 = load i16**, i16*** @g_639, align 8, !tbaa !5
  %276 = load i16*, i16** %275, align 8, !tbaa !5
  %277 = load i16, i16* %276, align 2, !tbaa !19
  %278 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %274, i16 zeroext %277)
  %279 = load i32***, i32**** %l_1431, align 8, !tbaa !5
  %280 = icmp ne i32*** %202, %279
  %281 = zext i1 %280 to i32
  %282 = load i32, i32* @g_1380, align 4, !tbaa !1
  %283 = icmp sge i32 %281, %282
  %284 = zext i1 %283 to i32
  %285 = load i32**, i32*** %1, align 8, !tbaa !5
  %286 = load i32*, i32** %285, align 8, !tbaa !5
  %287 = load i32, i32* %286, align 4, !tbaa !1
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 4, !tbaa !1
  %289 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i8** %l_1427 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #1
  %292 = bitcast [1 x [4 x i32]]* %l_1407 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %292) #1
  %293 = bitcast i32**** %l_1404 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %293) #1
  %294 = bitcast [7 x [4 x i32****]]* %l_1403 to i8*
  call void @llvm.lifetime.end(i64 224, i8* %294) #1
  br label %323

; <label>:295                                     ; preds = %129
  %296 = bitcast [1 x i32]* %l_1435 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %296) #1
  %297 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %297) #1
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %298

; <label>:298                                     ; preds = %305, %295
  %299 = load i32, i32* %i4, align 4, !tbaa !1
  %300 = icmp slt i32 %299, 1
  br i1 %300, label %301, label %308

; <label>:301                                     ; preds = %298
  %302 = load i32, i32* %i4, align 4, !tbaa !1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1435, i32 0, i64 %303
  store i32 -1, i32* %304, align 4, !tbaa !1
  br label %305

; <label>:305                                     ; preds = %301
  %306 = load i32, i32* %i4, align 4, !tbaa !1
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %i4, align 4, !tbaa !1
  br label %298

; <label>:308                                     ; preds = %298
  %309 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1435, i32 0, i64 0
  %310 = load i32, i32* %309, align 4, !tbaa !1
  %311 = trunc i32 %310 to i8
  %312 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 3
  %313 = load i32, i32* %312, align 4, !tbaa !1
  %314 = trunc i32 %313 to i8
  %315 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %311, i8 zeroext %314)
  %316 = zext i8 %315 to i32
  %317 = load i32**, i32*** %1, align 8, !tbaa !5
  %318 = load i32*, i32** %317, align 8, !tbaa !5
  %319 = load i32, i32* %318, align 4, !tbaa !1
  %320 = or i32 %319, %316
  store i32 %320, i32* %318, align 4, !tbaa !1
  %321 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #1
  %322 = bitcast [1 x i32]* %l_1435 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  br label %323

; <label>:323                                     ; preds = %308, %201
  store i32 0, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 1), align 4, !tbaa !13
  br label %324

; <label>:324                                     ; preds = %356, %323
  %325 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 1), align 4, !tbaa !13
  %326 = icmp slt i32 %325, 6
  br i1 %326, label %327, label %359

; <label>:327                                     ; preds = %324
  store i8 0, i8* @g_756, align 1, !tbaa !9
  br label %328

; <label>:328                                     ; preds = %350, %327
  %329 = load i8, i8* @g_756, align 1, !tbaa !9
  %330 = sext i8 %329 to i32
  %331 = icmp slt i32 %330, 6
  br i1 %331, label %332, label %355

; <label>:332                                     ; preds = %328
  store i32 0, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 3), align 4, !tbaa !15
  br label %333

; <label>:333                                     ; preds = %346, %332
  %334 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 3), align 4, !tbaa !15
  %335 = icmp slt i32 %334, 7
  br i1 %335, label %336, label %349

; <label>:336                                     ; preds = %333
  %337 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 3), align 4, !tbaa !15
  %338 = sext i32 %337 to i64
  %339 = load i8, i8* @g_756, align 1, !tbaa !9
  %340 = sext i8 %339 to i64
  %341 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 1), align 4, !tbaa !13
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [6 x [6 x [7 x i8]]], [6 x [6 x [7 x i8]]]* %l_1401, i32 0, i64 %342
  %344 = getelementptr inbounds [6 x [7 x i8]], [6 x [7 x i8]]* %343, i32 0, i64 %340
  %345 = getelementptr inbounds [7 x i8], [7 x i8]* %344, i32 0, i64 %338
  store i8 -1, i8* %345, align 1, !tbaa !9
  br label %346

; <label>:346                                     ; preds = %336
  %347 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 3), align 4, !tbaa !15
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 3), align 4, !tbaa !15
  br label %333

; <label>:349                                     ; preds = %333
  br label %350

; <label>:350                                     ; preds = %349
  %351 = load i8, i8* @g_756, align 1, !tbaa !9
  %352 = sext i8 %351 to i32
  %353 = add nsw i32 %352, 1
  %354 = trunc i32 %353 to i8
  store i8 %354, i8* @g_756, align 1, !tbaa !9
  br label %328

; <label>:355                                     ; preds = %328
  br label %356

; <label>:356                                     ; preds = %355
  %357 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 1), align 4, !tbaa !13
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 1), align 4, !tbaa !13
  br label %324

; <label>:359                                     ; preds = %324
  store i32 0, i32* %l_1387, align 4, !tbaa !1
  br label %360

; <label>:360                                     ; preds = %578, %359
  %361 = load i32, i32* %l_1387, align 4, !tbaa !1
  %362 = icmp ule i32 %361, 33
  br i1 %362, label %363, label %583

; <label>:363                                     ; preds = %360
  %364 = bitcast i32** %l_1442 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %364) #1
  store i32* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 3), i32** %l_1442, align 8, !tbaa !5
  %365 = bitcast i32* %l_1447 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %365) #1
  store i32 -1765482757, i32* %l_1447, align 4, !tbaa !1
  %366 = bitcast i32* %l_1473 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %366) #1
  store i32 -1, i32* %l_1473, align 4, !tbaa !1
  %367 = bitcast i32* %l_1474 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %367) #1
  store i32 -1, i32* %l_1474, align 4, !tbaa !1
  %368 = bitcast [6 x [9 x [1 x i32]]]* %l_1476 to i8*
  call void @llvm.lifetime.start(i64 216, i8* %368) #1
  %369 = bitcast [6 x [9 x [1 x i32]]]* %l_1476 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %369, i8* bitcast ([6 x [9 x [1 x i32]]]* @func_6.l_1476 to i8*), i64 216, i32 16, i1 false)
  %370 = bitcast i32* %l_1477 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %370) #1
  store i32 1852668421, i32* %l_1477, align 4, !tbaa !1
  %371 = bitcast i32* %l_1478 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %371) #1
  store i32 -830636070, i32* %l_1478, align 4, !tbaa !1
  %372 = bitcast i32* %l_1479 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %372) #1
  store i32 -804628776, i32* %l_1479, align 4, !tbaa !1
  %373 = bitcast i32* %l_1480 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %373) #1
  store i32 3, i32* %l_1480, align 4, !tbaa !1
  %374 = bitcast i32* %l_1481 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %374) #1
  store i32 3, i32* %l_1481, align 4, !tbaa !1
  %375 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %375) #1
  %376 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %376) #1
  %377 = bitcast i32* %k7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %377) #1
  store i16 20, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 6), align 2, !tbaa !18
  br label %378

; <label>:378                                     ; preds = %561, %363
  %379 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 6), align 2, !tbaa !18
  %380 = zext i16 %379 to i32
  %381 = icmp ne i32 %380, 8
  br i1 %381, label %382, label %564

; <label>:382                                     ; preds = %378
  %383 = bitcast [4 x [9 x i32*]]* %l_1472 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %383) #1
  %384 = getelementptr inbounds [4 x [9 x i32*]], [4 x [9 x i32*]]* %l_1472, i64 0, i64 0
  %385 = getelementptr inbounds [9 x i32*], [9 x i32*]* %384, i64 0, i64 0
  %386 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1430, i32 0, i64 6
  store i32* %386, i32** %385, !tbaa !5
  %387 = getelementptr inbounds i32*, i32** %385, i64 1
  store i32* null, i32** %387, !tbaa !5
  %388 = getelementptr inbounds i32*, i32** %387, i64 1
  store i32* @g_3, i32** %388, !tbaa !5
  %389 = getelementptr inbounds i32*, i32** %388, i64 1
  store i32* @g_3, i32** %389, !tbaa !5
  %390 = getelementptr inbounds i32*, i32** %389, i64 1
  store i32* null, i32** %390, !tbaa !5
  %391 = getelementptr inbounds i32*, i32** %390, i64 1
  %392 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1430, i32 0, i64 6
  store i32* %392, i32** %391, !tbaa !5
  %393 = getelementptr inbounds i32*, i32** %391, i64 1
  store i32* null, i32** %393, !tbaa !5
  %394 = getelementptr inbounds i32*, i32** %393, i64 1
  store i32* @g_3, i32** %394, !tbaa !5
  %395 = getelementptr inbounds i32*, i32** %394, i64 1
  store i32* @g_3, i32** %395, !tbaa !5
  %396 = getelementptr inbounds [9 x i32*], [9 x i32*]* %384, i64 1
  %397 = getelementptr inbounds [9 x i32*], [9 x i32*]* %396, i64 0, i64 0
  store i32* null, i32** %397, !tbaa !5
  %398 = getelementptr inbounds i32*, i32** %397, i64 1
  store i32* null, i32** %398, !tbaa !5
  %399 = getelementptr inbounds i32*, i32** %398, i64 1
  store i32* @g_1380, i32** %399, !tbaa !5
  %400 = getelementptr inbounds i32*, i32** %399, i64 1
  %401 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %401, i32** %400, !tbaa !5
  %402 = getelementptr inbounds i32*, i32** %400, i64 1
  store i32* @g_1380, i32** %402, !tbaa !5
  %403 = getelementptr inbounds i32*, i32** %402, i64 1
  store i32* null, i32** %403, !tbaa !5
  %404 = getelementptr inbounds i32*, i32** %403, i64 1
  store i32* null, i32** %404, !tbaa !5
  %405 = getelementptr inbounds i32*, i32** %404, i64 1
  store i32* @g_1380, i32** %405, !tbaa !5
  %406 = getelementptr inbounds i32*, i32** %405, i64 1
  %407 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %407, i32** %406, !tbaa !5
  %408 = getelementptr inbounds [9 x i32*], [9 x i32*]* %396, i64 1
  %409 = getelementptr inbounds [9 x i32*], [9 x i32*]* %408, i64 0, i64 0
  %410 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %410, i32** %409, !tbaa !5
  %411 = getelementptr inbounds i32*, i32** %409, i64 1
  store i32* null, i32** %411, !tbaa !5
  %412 = getelementptr inbounds i32*, i32** %411, i64 1
  %413 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %413, i32** %412, !tbaa !5
  %414 = getelementptr inbounds i32*, i32** %412, i64 1
  %415 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1430, i32 0, i64 6
  store i32* %415, i32** %414, !tbaa !5
  %416 = getelementptr inbounds i32*, i32** %414, i64 1
  %417 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1430, i32 0, i64 6
  store i32* %417, i32** %416, !tbaa !5
  %418 = getelementptr inbounds i32*, i32** %416, i64 1
  %419 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %419, i32** %418, !tbaa !5
  %420 = getelementptr inbounds i32*, i32** %418, i64 1
  store i32* null, i32** %420, !tbaa !5
  %421 = getelementptr inbounds i32*, i32** %420, i64 1
  %422 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %422, i32** %421, !tbaa !5
  %423 = getelementptr inbounds i32*, i32** %421, i64 1
  %424 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1430, i32 0, i64 6
  store i32* %424, i32** %423, !tbaa !5
  %425 = getelementptr inbounds [9 x i32*], [9 x i32*]* %408, i64 1
  %426 = getelementptr inbounds [9 x i32*], [9 x i32*]* %425, i64 0, i64 0
  store i32* @g_135, i32** %426, !tbaa !5
  %427 = getelementptr inbounds i32*, i32** %426, i64 1
  store i32* @g_1380, i32** %427, !tbaa !5
  %428 = getelementptr inbounds i32*, i32** %427, i64 1
  store i32* @g_1380, i32** %428, !tbaa !5
  %429 = getelementptr inbounds i32*, i32** %428, i64 1
  store i32* @g_135, i32** %429, !tbaa !5
  %430 = getelementptr inbounds i32*, i32** %429, i64 1
  %431 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1430, i32 0, i64 6
  store i32* %431, i32** %430, !tbaa !5
  %432 = getelementptr inbounds i32*, i32** %430, i64 1
  store i32* @g_135, i32** %432, !tbaa !5
  %433 = getelementptr inbounds i32*, i32** %432, i64 1
  store i32* @g_1380, i32** %433, !tbaa !5
  %434 = getelementptr inbounds i32*, i32** %433, i64 1
  store i32* @g_1380, i32** %434, !tbaa !5
  %435 = getelementptr inbounds i32*, i32** %434, i64 1
  store i32* @g_135, i32** %435, !tbaa !5
  %436 = bitcast i16* %l_1475 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %436) #1
  store i16 24200, i16* %l_1475, align 2, !tbaa !19
  %437 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %437) #1
  %438 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %438) #1
  %439 = load i32**, i32*** %1, align 8, !tbaa !5
  %440 = load i32*, i32** %439, align 8, !tbaa !5
  %441 = load i32, i32* %440, align 4, !tbaa !1
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %444

; <label>:443                                     ; preds = %382
  store i32 26, i32* %4
  br label %555

; <label>:444                                     ; preds = %382
  store i64 9, i64* @g_346, align 8, !tbaa !7
  br label %445

; <label>:445                                     ; preds = %545, %444
  %446 = load i64, i64* @g_346, align 8, !tbaa !7
  %447 = icmp sge i64 %446, 0
  br i1 %447, label %448, label %548

; <label>:448                                     ; preds = %445
  %449 = bitcast i16** %l_1460 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %449) #1
  store i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 2), i16** %l_1460, align 8, !tbaa !5
  %450 = bitcast i32** %l_1462 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %450) #1
  store i32* @g_1380, i32** %l_1462, align 8, !tbaa !5
  %451 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %451) #1
  %452 = load i32, i32* %l_1387, align 4, !tbaa !1
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %455

; <label>:454                                     ; preds = %448
  store i32 29, i32* %4
  br label %540

; <label>:455                                     ; preds = %448
  %456 = load i32*, i32** %l_1442, align 8, !tbaa !5
  %457 = icmp eq i32* null, %456
  br i1 %457, label %512, label %458

; <label>:458                                     ; preds = %455
  %459 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1430, i32 0, i64 1
  %460 = load i32, i32* %459, align 4, !tbaa !1
  %461 = load i32, i32* %l_1447, align 4, !tbaa !1
  %462 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext 0, i32 %461)
  %463 = sext i16 %462 to i32
  %464 = icmp slt i32 %460, %463
  %465 = zext i1 %464 to i32
  %466 = sext i32 %465 to i64
  %467 = load i8, i8* %3, align 1, !tbaa !9
  %468 = sext i8 %467 to i32
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %474, label %470

; <label>:470                                     ; preds = %458
  %471 = load i8, i8* %3, align 1, !tbaa !9
  %472 = sext i8 %471 to i32
  %473 = icmp ne i32 %472, 0
  br label %474

; <label>:474                                     ; preds = %470, %458
  %475 = phi i1 [ true, %458 ], [ %473, %470 ]
  %476 = zext i1 %475 to i32
  %477 = trunc i32 %476 to i16
  %478 = load i8, i8* %3, align 1, !tbaa !9
  %479 = load volatile i8, i8* @g_276, align 1, !tbaa !9
  %480 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext 0, i8 signext %479)
  %481 = sext i8 %480 to i64
  %482 = icmp sgt i64 %481, 196
  %483 = zext i1 %482 to i32
  %484 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %478, i32 %483)
  %485 = sext i8 %484 to i16
  %486 = load i16*, i16** @g_1203, align 8, !tbaa !5
  %487 = load i16, i16* %486, align 2, !tbaa !19
  %488 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %485, i16 signext %487)
  %489 = load i16*, i16** %l_1460, align 8, !tbaa !5
  store i16 %488, i16* %489, align 2, !tbaa !19
  %490 = zext i16 %488 to i32
  %491 = load i8, i8* %3, align 1, !tbaa !9
  %492 = sext i8 %491 to i32
  %493 = icmp sgt i32 %490, %492
  %494 = xor i1 %493, true
  %495 = zext i1 %494 to i32
  %496 = sext i32 %495 to i64
  %497 = xor i64 %496, 5437260370465571821
  %498 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  %499 = load i32, i32* %498, align 4, !tbaa !1
  %500 = trunc i32 %499 to i16
  %501 = load i64, i64* %l_1461, align 8, !tbaa !7
  %502 = trunc i64 %501 to i32
  %503 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %500, i32 %502)
  %504 = zext i16 %503 to i32
  %505 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %477, i32 %504)
  %506 = call i64 @safe_sub_func_uint64_t_u_u(i64 %466, i64 1239855157325644966)
  %507 = icmp eq i64 %506, -1520433224029987756
  %508 = zext i1 %507 to i32
  %509 = load i8, i8* %3, align 1, !tbaa !9
  %510 = sext i8 %509 to i32
  %511 = icmp sge i32 %508, %510
  br label %512

; <label>:512                                     ; preds = %474, %455
  %513 = phi i1 [ true, %455 ], [ %511, %474 ]
  %514 = zext i1 %513 to i32
  %515 = trunc i32 %514 to i8
  %516 = load i8, i8* %3, align 1, !tbaa !9
  %517 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %515, i8 zeroext %516)
  %518 = zext i8 %517 to i32
  %519 = load i32**, i32*** %1, align 8, !tbaa !5
  %520 = load i32*, i32** %519, align 8, !tbaa !5
  store i32 %518, i32* %520, align 4, !tbaa !1
  %521 = icmp ne i32 %518, 0
  br i1 %521, label %522, label %523

; <label>:522                                     ; preds = %512
  br label %523

; <label>:523                                     ; preds = %522, %512
  %524 = phi i1 [ false, %512 ], [ true, %522 ]
  %525 = zext i1 %524 to i32
  %526 = load i32*, i32** %l_1462, align 8, !tbaa !5
  %527 = load i32, i32* %526, align 4, !tbaa !1
  %528 = and i32 %527, %525
  store i32 %528, i32* %526, align 4, !tbaa !1
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %532

; <label>:530                                     ; preds = %523
  %531 = load i32*****, i32****** %l_1463, align 8, !tbaa !5
  store i32***** %531, i32****** @g_1467, align 8, !tbaa !5
  store i32 29, i32* %4
  br label %540

; <label>:532                                     ; preds = %523
  %533 = load i32**, i32*** %1, align 8, !tbaa !5
  %534 = load i32*, i32** %533, align 8, !tbaa !5
  %535 = load i32, i32* %534, align 4, !tbaa !1
  %536 = sext i32 %535 to i64
  %537 = or i64 %536, 2344700591
  %538 = trunc i64 %537 to i32
  store i32 %538, i32* %534, align 4, !tbaa !1
  br label %539

; <label>:539                                     ; preds = %532
  store i32 0, i32* %4
  br label %540

; <label>:540                                     ; preds = %539, %530, %454
  %541 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %541) #1
  %542 = bitcast i32** %l_1462 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %542) #1
  %543 = bitcast i16** %l_1460 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %543) #1
  %cleanup.dest = load i32, i32* %4
  switch i32 %cleanup.dest, label %1157 [
    i32 0, label %544
    i32 29, label %548
  ]

; <label>:544                                     ; preds = %540
  br label %545

; <label>:545                                     ; preds = %544
  %546 = load i64, i64* @g_346, align 8, !tbaa !7
  %547 = sub nsw i64 %546, 1
  store i64 %547, i64* @g_346, align 8, !tbaa !7
  br label %445

; <label>:548                                     ; preds = %540, %445
  %549 = load i16, i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1483, i32 0, i64 0), align 2, !tbaa !19
  %550 = add i16 %549, 1
  store i16 %550, i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_1483, i32 0, i64 0), align 2, !tbaa !19
  %551 = load i64, i64* %l_1461, align 8, !tbaa !7
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %554

; <label>:553                                     ; preds = %548
  store i32 26, i32* %4
  br label %555

; <label>:554                                     ; preds = %548
  store i32 0, i32* %4
  br label %555

; <label>:555                                     ; preds = %554, %553, %443
  %556 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %556) #1
  %557 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %557) #1
  %558 = bitcast i16* %l_1475 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %558) #1
  %559 = bitcast [4 x [9 x i32*]]* %l_1472 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %559) #1
  %cleanup.dest.11 = load i32, i32* %4
  switch i32 %cleanup.dest.11, label %1157 [
    i32 0, label %560
    i32 26, label %564
  ]

; <label>:560                                     ; preds = %555
  br label %561

; <label>:561                                     ; preds = %560
  %562 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 6), align 2, !tbaa !18
  %563 = add i16 %562, -1
  store i16 %563, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 6), align 2, !tbaa !18
  br label %378

; <label>:564                                     ; preds = %555, %378
  %565 = bitcast i32* %k7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %565) #1
  %566 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %566) #1
  %567 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %567) #1
  %568 = bitcast i32* %l_1481 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %568) #1
  %569 = bitcast i32* %l_1480 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %569) #1
  %570 = bitcast i32* %l_1479 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %570) #1
  %571 = bitcast i32* %l_1478 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %571) #1
  %572 = bitcast i32* %l_1477 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %572) #1
  %573 = bitcast [6 x [9 x [1 x i32]]]* %l_1476 to i8*
  call void @llvm.lifetime.end(i64 216, i8* %573) #1
  %574 = bitcast i32* %l_1474 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %574) #1
  %575 = bitcast i32* %l_1473 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %575) #1
  %576 = bitcast i32* %l_1447 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %576) #1
  %577 = bitcast i32** %l_1442 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %577) #1
  br label %578

; <label>:578                                     ; preds = %564
  %579 = load i32, i32* %l_1387, align 4, !tbaa !1
  %580 = zext i32 %579 to i64
  %581 = call i64 @safe_add_func_int64_t_s_s(i64 %580, i64 3)
  %582 = trunc i64 %581 to i32
  store i32 %582, i32* %l_1387, align 4, !tbaa !1
  br label %360

; <label>:583                                     ; preds = %360
  %584 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %584) #1
  %585 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %585) #1
  %586 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %586) #1
  %587 = bitcast i32* %l_1471 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %587) #1
  %588 = bitcast i32****** %l_1463 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %588) #1
  %589 = bitcast i32***** %l_1464 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %589) #1
  %590 = bitcast [4 x i32***]* %l_1465 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %590) #1
  %591 = bitcast i32*** %l_1466 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %591) #1
  %592 = bitcast [7 x i32]* %l_1430 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %592) #1
  %593 = bitcast i32**** %l_1402 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %593) #1
  %594 = bitcast [6 x [6 x [7 x i8]]]* %l_1401 to i8*
  call void @llvm.lifetime.end(i64 252, i8* %594) #1
  br label %1132

; <label>:595                                     ; preds = %0
  %596 = bitcast i32* %l_1486 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %596) #1
  store i32 9, i32* %l_1486, align 4, !tbaa !1
  %597 = bitcast i32* %l_1487 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %597) #1
  store i32 0, i32* %l_1487, align 4, !tbaa !1
  %598 = bitcast [7 x [8 x [4 x i32]]]* %l_1488 to i8*
  call void @llvm.lifetime.start(i64 896, i8* %598) #1
  %599 = bitcast [7 x [8 x [4 x i32]]]* %l_1488 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %599, i8* bitcast ([7 x [8 x [4 x i32]]]* @func_6.l_1488 to i8*), i64 896, i32 16, i1 false)
  %600 = bitcast i32** %l_1489 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %600) #1
  store i32* %l_1487, i32** %l_1489, align 8, !tbaa !5
  %601 = bitcast i32** %l_1490 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %601) #1
  store i32* %l_1399, i32** %l_1490, align 8, !tbaa !5
  %602 = bitcast i32** %l_1491 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %602) #1
  store i32* @g_1053, i32** %l_1491, align 8, !tbaa !5
  %603 = bitcast i32** %l_1492 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %603) #1
  %604 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %605 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %604, i32 0, i64 7
  %606 = getelementptr inbounds [4 x i32], [4 x i32]* %605, i32 0, i64 3
  store i32* %606, i32** %l_1492, align 8, !tbaa !5
  %607 = bitcast i32** %l_1493 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %607) #1
  store i32* @g_1053, i32** %l_1493, align 8, !tbaa !5
  %608 = bitcast i32** %l_1494 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %608) #1
  store i32* @g_135, i32** %l_1494, align 8, !tbaa !5
  %609 = bitcast i32** %l_1495 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %609) #1
  store i32* @g_3, i32** %l_1495, align 8, !tbaa !5
  %610 = bitcast i32** %l_1496 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %610) #1
  store i32* @g_1380, i32** %l_1496, align 8, !tbaa !5
  %611 = bitcast [9 x [9 x [3 x i32*]]]* %l_1497 to i8*
  call void @llvm.lifetime.start(i64 1944, i8* %611) #1
  %612 = getelementptr inbounds [9 x [9 x [3 x i32*]]], [9 x [9 x [3 x i32*]]]* %l_1497, i64 0, i64 0
  %613 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %612, i64 0, i64 0
  %614 = getelementptr inbounds [3 x i32*], [3 x i32*]* %613, i64 0, i64 0
  %615 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 0
  store i32* %615, i32** %614, !tbaa !5
  %616 = getelementptr inbounds i32*, i32** %614, i64 1
  store i32* @g_135, i32** %616, !tbaa !5
  %617 = getelementptr inbounds i32*, i32** %616, i64 1
  store i32* @g_1053, i32** %617, !tbaa !5
  %618 = getelementptr inbounds [3 x i32*], [3 x i32*]* %613, i64 1
  %619 = getelementptr inbounds [3 x i32*], [3 x i32*]* %618, i64 0, i64 0
  %620 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 5
  store i32* %620, i32** %619, !tbaa !5
  %621 = getelementptr inbounds i32*, i32** %619, i64 1
  store i32* null, i32** %621, !tbaa !5
  %622 = getelementptr inbounds i32*, i32** %621, i64 1
  %623 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 4
  store i32* %623, i32** %622, !tbaa !5
  %624 = getelementptr inbounds [3 x i32*], [3 x i32*]* %618, i64 1
  %625 = getelementptr inbounds [3 x i32*], [3 x i32*]* %624, i64 0, i64 0
  store i32* null, i32** %625, !tbaa !5
  %626 = getelementptr inbounds i32*, i32** %625, i64 1
  store i32* null, i32** %626, !tbaa !5
  %627 = getelementptr inbounds i32*, i32** %626, i64 1
  %628 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %629 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %628, i32 0, i64 7
  %630 = getelementptr inbounds [4 x i32], [4 x i32]* %629, i32 0, i64 3
  store i32* %630, i32** %627, !tbaa !5
  %631 = getelementptr inbounds [3 x i32*], [3 x i32*]* %624, i64 1
  %632 = getelementptr inbounds [3 x i32*], [3 x i32*]* %631, i64 0, i64 0
  store i32* @g_1380, i32** %632, !tbaa !5
  %633 = getelementptr inbounds i32*, i32** %632, i64 1
  store i32* @g_135, i32** %633, !tbaa !5
  %634 = getelementptr inbounds i32*, i32** %633, i64 1
  store i32* @g_3, i32** %634, !tbaa !5
  %635 = getelementptr inbounds [3 x i32*], [3 x i32*]* %631, i64 1
  %636 = getelementptr inbounds [3 x i32*], [3 x i32*]* %635, i64 0, i64 0
  %637 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %637, i32** %636, !tbaa !5
  %638 = getelementptr inbounds i32*, i32** %636, i64 1
  store i32* %l_1487, i32** %638, !tbaa !5
  %639 = getelementptr inbounds i32*, i32** %638, i64 1
  %640 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 4
  store i32* %640, i32** %639, !tbaa !5
  %641 = getelementptr inbounds [3 x i32*], [3 x i32*]* %635, i64 1
  %642 = getelementptr inbounds [3 x i32*], [3 x i32*]* %641, i64 0, i64 0
  %643 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %643, i32** %642, !tbaa !5
  %644 = getelementptr inbounds i32*, i32** %642, i64 1
  store i32* @g_1380, i32** %644, !tbaa !5
  %645 = getelementptr inbounds i32*, i32** %644, i64 1
  store i32* null, i32** %645, !tbaa !5
  %646 = getelementptr inbounds [3 x i32*], [3 x i32*]* %641, i64 1
  %647 = getelementptr inbounds [3 x i32*], [3 x i32*]* %646, i64 0, i64 0
  store i32* %l_1487, i32** %647, !tbaa !5
  %648 = getelementptr inbounds i32*, i32** %647, i64 1
  store i32* @g_3, i32** %648, !tbaa !5
  %649 = getelementptr inbounds i32*, i32** %648, i64 1
  store i32* null, i32** %649, !tbaa !5
  %650 = getelementptr inbounds [3 x i32*], [3 x i32*]* %646, i64 1
  %651 = getelementptr inbounds [3 x i32*], [3 x i32*]* %650, i64 0, i64 0
  %652 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 5
  store i32* %652, i32** %651, !tbaa !5
  %653 = getelementptr inbounds i32*, i32** %651, i64 1
  store i32* %l_1399, i32** %653, !tbaa !5
  %654 = getelementptr inbounds i32*, i32** %653, i64 1
  %655 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 1
  %656 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %655, i32 0, i64 6
  %657 = getelementptr inbounds [4 x i32], [4 x i32]* %656, i32 0, i64 2
  store i32* %657, i32** %654, !tbaa !5
  %658 = getelementptr inbounds [3 x i32*], [3 x i32*]* %650, i64 1
  %659 = getelementptr inbounds [3 x i32*], [3 x i32*]* %658, i64 0, i64 0
  %660 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 0
  %661 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %660, i32 0, i64 1
  %662 = getelementptr inbounds [4 x i32], [4 x i32]* %661, i32 0, i64 2
  store i32* %662, i32** %659, !tbaa !5
  %663 = getelementptr inbounds i32*, i32** %659, i64 1
  store i32* %l_1399, i32** %663, !tbaa !5
  %664 = getelementptr inbounds i32*, i32** %663, i64 1
  store i32* @g_1380, i32** %664, !tbaa !5
  %665 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %612, i64 1
  %666 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %665, i64 0, i64 0
  %667 = getelementptr inbounds [3 x i32*], [3 x i32*]* %666, i64 0, i64 0
  %668 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 5
  store i32* %668, i32** %667, !tbaa !5
  %669 = getelementptr inbounds i32*, i32** %667, i64 1
  store i32* null, i32** %669, !tbaa !5
  %670 = getelementptr inbounds i32*, i32** %669, i64 1
  store i32* @g_135, i32** %670, !tbaa !5
  %671 = getelementptr inbounds [3 x i32*], [3 x i32*]* %666, i64 1
  %672 = getelementptr inbounds [3 x i32*], [3 x i32*]* %671, i64 0, i64 0
  store i32* %l_1487, i32** %672, !tbaa !5
  %673 = getelementptr inbounds i32*, i32** %672, i64 1
  %674 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 4
  store i32* %674, i32** %673, !tbaa !5
  %675 = getelementptr inbounds i32*, i32** %673, i64 1
  %676 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 2
  %677 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %676, i32 0, i64 0
  %678 = getelementptr inbounds [4 x i32], [4 x i32]* %677, i32 0, i64 2
  store i32* %678, i32** %675, !tbaa !5
  %679 = getelementptr inbounds [3 x i32*], [3 x i32*]* %671, i64 1
  %680 = getelementptr inbounds [3 x i32*], [3 x i32*]* %679, i64 0, i64 0
  %681 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %681, i32** %680, !tbaa !5
  %682 = getelementptr inbounds i32*, i32** %680, i64 1
  store i32* @g_1053, i32** %682, !tbaa !5
  %683 = getelementptr inbounds i32*, i32** %682, i64 1
  store i32* null, i32** %683, !tbaa !5
  %684 = getelementptr inbounds [3 x i32*], [3 x i32*]* %679, i64 1
  %685 = getelementptr inbounds [3 x i32*], [3 x i32*]* %684, i64 0, i64 0
  %686 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %686, i32** %685, !tbaa !5
  %687 = getelementptr inbounds i32*, i32** %685, i64 1
  store i32* %l_1487, i32** %687, !tbaa !5
  %688 = getelementptr inbounds i32*, i32** %687, i64 1
  %689 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 0
  store i32* %689, i32** %688, !tbaa !5
  %690 = getelementptr inbounds [3 x i32*], [3 x i32*]* %684, i64 1
  %691 = getelementptr inbounds [3 x i32*], [3 x i32*]* %690, i64 0, i64 0
  store i32* @g_1380, i32** %691, !tbaa !5
  %692 = getelementptr inbounds i32*, i32** %691, i64 1
  %693 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 0
  store i32* %693, i32** %692, !tbaa !5
  %694 = getelementptr inbounds i32*, i32** %692, i64 1
  store i32* null, i32** %694, !tbaa !5
  %695 = getelementptr inbounds [3 x i32*], [3 x i32*]* %690, i64 1
  %696 = getelementptr inbounds [3 x i32*], [3 x i32*]* %695, i64 0, i64 0
  store i32* null, i32** %696, !tbaa !5
  %697 = getelementptr inbounds i32*, i32** %696, i64 1
  store i32* @g_1380, i32** %697, !tbaa !5
  %698 = getelementptr inbounds i32*, i32** %697, i64 1
  store i32* null, i32** %698, !tbaa !5
  %699 = getelementptr inbounds [3 x i32*], [3 x i32*]* %695, i64 1
  %700 = getelementptr inbounds [3 x i32*], [3 x i32*]* %699, i64 0, i64 0
  %701 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 5
  store i32* %701, i32** %700, !tbaa !5
  %702 = getelementptr inbounds i32*, i32** %700, i64 1
  %703 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 2
  %704 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %703, i32 0, i64 7
  %705 = getelementptr inbounds [4 x i32], [4 x i32]* %704, i32 0, i64 3
  store i32* %705, i32** %702, !tbaa !5
  %706 = getelementptr inbounds i32*, i32** %702, i64 1
  %707 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 0
  store i32* %707, i32** %706, !tbaa !5
  %708 = getelementptr inbounds [3 x i32*], [3 x i32*]* %699, i64 1
  %709 = getelementptr inbounds [3 x i32*], [3 x i32*]* %708, i64 0, i64 0
  %710 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 0
  store i32* %710, i32** %709, !tbaa !5
  %711 = getelementptr inbounds i32*, i32** %709, i64 1
  store i32* null, i32** %711, !tbaa !5
  %712 = getelementptr inbounds i32*, i32** %711, i64 1
  store i32* null, i32** %712, !tbaa !5
  %713 = getelementptr inbounds [3 x i32*], [3 x i32*]* %708, i64 1
  %714 = getelementptr inbounds [3 x i32*], [3 x i32*]* %713, i64 0, i64 0
  store i32* null, i32** %714, !tbaa !5
  %715 = getelementptr inbounds i32*, i32** %714, i64 1
  store i32* @g_3, i32** %715, !tbaa !5
  %716 = getelementptr inbounds i32*, i32** %715, i64 1
  %717 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 2
  %718 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %717, i32 0, i64 0
  %719 = getelementptr inbounds [4 x i32], [4 x i32]* %718, i32 0, i64 2
  store i32* %719, i32** %716, !tbaa !5
  %720 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %665, i64 1
  %721 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %720, i64 0, i64 0
  %722 = getelementptr inbounds [3 x i32*], [3 x i32*]* %721, i64 0, i64 0
  %723 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 0
  %724 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %723, i32 0, i64 2
  %725 = getelementptr inbounds [4 x i32], [4 x i32]* %724, i32 0, i64 2
  store i32* %725, i32** %722, !tbaa !5
  %726 = getelementptr inbounds i32*, i32** %722, i64 1
  store i32* @g_1380, i32** %726, !tbaa !5
  %727 = getelementptr inbounds i32*, i32** %726, i64 1
  store i32* @g_135, i32** %727, !tbaa !5
  %728 = getelementptr inbounds [3 x i32*], [3 x i32*]* %721, i64 1
  %729 = getelementptr inbounds [3 x i32*], [3 x i32*]* %728, i64 0, i64 0
  store i32* @g_1380, i32** %729, !tbaa !5
  %730 = getelementptr inbounds i32*, i32** %729, i64 1
  %731 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 2
  %732 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %731, i32 0, i64 4
  %733 = getelementptr inbounds [4 x i32], [4 x i32]* %732, i32 0, i64 1
  store i32* %733, i32** %730, !tbaa !5
  %734 = getelementptr inbounds i32*, i32** %730, i64 1
  store i32* @g_1380, i32** %734, !tbaa !5
  %735 = getelementptr inbounds [3 x i32*], [3 x i32*]* %728, i64 1
  %736 = getelementptr inbounds [3 x i32*], [3 x i32*]* %735, i64 0, i64 0
  %737 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %738 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %737, i32 0, i64 7
  %739 = getelementptr inbounds [4 x i32], [4 x i32]* %738, i32 0, i64 3
  store i32* %739, i32** %736, !tbaa !5
  %740 = getelementptr inbounds i32*, i32** %736, i64 1
  store i32* @g_1380, i32** %740, !tbaa !5
  %741 = getelementptr inbounds i32*, i32** %740, i64 1
  %742 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 1
  %743 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %742, i32 0, i64 6
  %744 = getelementptr inbounds [4 x i32], [4 x i32]* %743, i32 0, i64 2
  store i32* %744, i32** %741, !tbaa !5
  %745 = getelementptr inbounds [3 x i32*], [3 x i32*]* %735, i64 1
  %746 = getelementptr inbounds [3 x i32*], [3 x i32*]* %745, i64 0, i64 0
  store i32* @g_135, i32** %746, !tbaa !5
  %747 = getelementptr inbounds i32*, i32** %746, i64 1
  %748 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 2
  %749 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %748, i32 0, i64 4
  %750 = getelementptr inbounds [4 x i32], [4 x i32]* %749, i32 0, i64 1
  store i32* %750, i32** %747, !tbaa !5
  %751 = getelementptr inbounds i32*, i32** %747, i64 1
  store i32* null, i32** %751, !tbaa !5
  %752 = getelementptr inbounds [3 x i32*], [3 x i32*]* %745, i64 1
  %753 = getelementptr inbounds [3 x i32*], [3 x i32*]* %752, i64 0, i64 0
  store i32* @g_1053, i32** %753, !tbaa !5
  %754 = getelementptr inbounds i32*, i32** %753, i64 1
  store i32* @g_1380, i32** %754, !tbaa !5
  %755 = getelementptr inbounds i32*, i32** %754, i64 1
  store i32* null, i32** %755, !tbaa !5
  %756 = getelementptr inbounds [3 x i32*], [3 x i32*]* %752, i64 1
  %757 = getelementptr inbounds [3 x i32*], [3 x i32*]* %756, i64 0, i64 0
  %758 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 5
  %759 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %758, i32 0, i64 7
  %760 = getelementptr inbounds [4 x i32], [4 x i32]* %759, i32 0, i64 3
  store i32* %760, i32** %757, !tbaa !5
  %761 = getelementptr inbounds i32*, i32** %757, i64 1
  store i32* @g_3, i32** %761, !tbaa !5
  %762 = getelementptr inbounds i32*, i32** %761, i64 1
  %763 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 4
  store i32* %763, i32** %762, !tbaa !5
  %764 = getelementptr inbounds [3 x i32*], [3 x i32*]* %756, i64 1
  %765 = getelementptr inbounds [3 x i32*], [3 x i32*]* %764, i64 0, i64 0
  store i32* null, i32** %765, !tbaa !5
  %766 = getelementptr inbounds i32*, i32** %765, i64 1
  store i32* null, i32** %766, !tbaa !5
  %767 = getelementptr inbounds i32*, i32** %766, i64 1
  store i32* @g_3, i32** %767, !tbaa !5
  %768 = getelementptr inbounds [3 x i32*], [3 x i32*]* %764, i64 1
  %769 = getelementptr inbounds [3 x i32*], [3 x i32*]* %768, i64 0, i64 0
  %770 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %770, i32** %769, !tbaa !5
  %771 = getelementptr inbounds i32*, i32** %769, i64 1
  %772 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 2
  %773 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %772, i32 0, i64 7
  %774 = getelementptr inbounds [4 x i32], [4 x i32]* %773, i32 0, i64 3
  store i32* %774, i32** %771, !tbaa !5
  %775 = getelementptr inbounds i32*, i32** %771, i64 1
  %776 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %777 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %776, i32 0, i64 7
  %778 = getelementptr inbounds [4 x i32], [4 x i32]* %777, i32 0, i64 3
  store i32* %778, i32** %775, !tbaa !5
  %779 = getelementptr inbounds [3 x i32*], [3 x i32*]* %768, i64 1
  %780 = getelementptr inbounds [3 x i32*], [3 x i32*]* %779, i64 0, i64 0
  store i32* null, i32** %780, !tbaa !5
  %781 = getelementptr inbounds i32*, i32** %780, i64 1
  store i32* @g_1380, i32** %781, !tbaa !5
  %782 = getelementptr inbounds i32*, i32** %781, i64 1
  %783 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 4
  store i32* %783, i32** %782, !tbaa !5
  %784 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %720, i64 1
  %785 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %784, i64 0, i64 0
  %786 = getelementptr inbounds [3 x i32*], [3 x i32*]* %785, i64 0, i64 0
  store i32* null, i32** %786, !tbaa !5
  %787 = getelementptr inbounds i32*, i32** %786, i64 1
  %788 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 0
  store i32* %788, i32** %787, !tbaa !5
  %789 = getelementptr inbounds i32*, i32** %787, i64 1
  store i32* @g_1053, i32** %789, !tbaa !5
  %790 = getelementptr inbounds [3 x i32*], [3 x i32*]* %785, i64 1
  %791 = getelementptr inbounds [3 x i32*], [3 x i32*]* %790, i64 0, i64 0
  %792 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %792, i32** %791, !tbaa !5
  %793 = getelementptr inbounds i32*, i32** %791, i64 1
  store i32* %l_1487, i32** %793, !tbaa !5
  %794 = getelementptr inbounds i32*, i32** %793, i64 1
  store i32* @g_1053, i32** %794, !tbaa !5
  %795 = getelementptr inbounds [3 x i32*], [3 x i32*]* %790, i64 1
  %796 = getelementptr inbounds [3 x i32*], [3 x i32*]* %795, i64 0, i64 0
  store i32* null, i32** %796, !tbaa !5
  %797 = getelementptr inbounds i32*, i32** %796, i64 1
  store i32* @g_1053, i32** %797, !tbaa !5
  %798 = getelementptr inbounds i32*, i32** %797, i64 1
  store i32* null, i32** %798, !tbaa !5
  %799 = getelementptr inbounds [3 x i32*], [3 x i32*]* %795, i64 1
  %800 = getelementptr inbounds [3 x i32*], [3 x i32*]* %799, i64 0, i64 0
  %801 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 5
  %802 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %801, i32 0, i64 7
  %803 = getelementptr inbounds [4 x i32], [4 x i32]* %802, i32 0, i64 3
  store i32* %803, i32** %800, !tbaa !5
  %804 = getelementptr inbounds i32*, i32** %800, i64 1
  %805 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 4
  store i32* %805, i32** %804, !tbaa !5
  %806 = getelementptr inbounds i32*, i32** %804, i64 1
  %807 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %807, i32** %806, !tbaa !5
  %808 = getelementptr inbounds [3 x i32*], [3 x i32*]* %799, i64 1
  %809 = getelementptr inbounds [3 x i32*], [3 x i32*]* %808, i64 0, i64 0
  store i32* @g_1053, i32** %809, !tbaa !5
  %810 = getelementptr inbounds i32*, i32** %809, i64 1
  store i32* null, i32** %810, !tbaa !5
  %811 = getelementptr inbounds i32*, i32** %810, i64 1
  store i32* null, i32** %811, !tbaa !5
  %812 = getelementptr inbounds [3 x i32*], [3 x i32*]* %808, i64 1
  %813 = getelementptr inbounds [3 x i32*], [3 x i32*]* %812, i64 0, i64 0
  store i32* @g_135, i32** %813, !tbaa !5
  %814 = getelementptr inbounds i32*, i32** %813, i64 1
  store i32* %l_1399, i32** %814, !tbaa !5
  %815 = getelementptr inbounds i32*, i32** %814, i64 1
  store i32* @g_1380, i32** %815, !tbaa !5
  %816 = getelementptr inbounds [3 x i32*], [3 x i32*]* %812, i64 1
  %817 = getelementptr inbounds [3 x i32*], [3 x i32*]* %816, i64 0, i64 0
  %818 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %819 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %818, i32 0, i64 7
  %820 = getelementptr inbounds [4 x i32], [4 x i32]* %819, i32 0, i64 3
  store i32* %820, i32** %817, !tbaa !5
  %821 = getelementptr inbounds i32*, i32** %817, i64 1
  store i32* %l_1399, i32** %821, !tbaa !5
  %822 = getelementptr inbounds i32*, i32** %821, i64 1
  store i32* null, i32** %822, !tbaa !5
  %823 = getelementptr inbounds [3 x i32*], [3 x i32*]* %816, i64 1
  %824 = getelementptr inbounds [3 x i32*], [3 x i32*]* %823, i64 0, i64 0
  store i32* @g_1380, i32** %824, !tbaa !5
  %825 = getelementptr inbounds i32*, i32** %824, i64 1
  store i32* @g_3, i32** %825, !tbaa !5
  %826 = getelementptr inbounds i32*, i32** %825, i64 1
  %827 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %827, i32** %826, !tbaa !5
  %828 = getelementptr inbounds [3 x i32*], [3 x i32*]* %823, i64 1
  %829 = getelementptr inbounds [3 x i32*], [3 x i32*]* %828, i64 0, i64 0
  %830 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 0
  %831 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %830, i32 0, i64 2
  %832 = getelementptr inbounds [4 x i32], [4 x i32]* %831, i32 0, i64 2
  store i32* %832, i32** %829, !tbaa !5
  %833 = getelementptr inbounds i32*, i32** %829, i64 1
  store i32* @g_1380, i32** %833, !tbaa !5
  %834 = getelementptr inbounds i32*, i32** %833, i64 1
  store i32* null, i32** %834, !tbaa !5
  %835 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %784, i64 1
  %836 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %835, i64 0, i64 0
  %837 = getelementptr inbounds [3 x i32*], [3 x i32*]* %836, i64 0, i64 0
  store i32* null, i32** %837, !tbaa !5
  %838 = getelementptr inbounds i32*, i32** %837, i64 1
  store i32* %l_1487, i32** %838, !tbaa !5
  %839 = getelementptr inbounds i32*, i32** %838, i64 1
  store i32* @g_1053, i32** %839, !tbaa !5
  %840 = getelementptr inbounds [3 x i32*], [3 x i32*]* %836, i64 1
  %841 = getelementptr inbounds [3 x i32*], [3 x i32*]* %840, i64 0, i64 0
  %842 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 0
  store i32* %842, i32** %841, !tbaa !5
  %843 = getelementptr inbounds i32*, i32** %841, i64 1
  store i32* @g_135, i32** %843, !tbaa !5
  %844 = getelementptr inbounds i32*, i32** %843, i64 1
  store i32* @g_1053, i32** %844, !tbaa !5
  %845 = getelementptr inbounds [3 x i32*], [3 x i32*]* %840, i64 1
  %846 = getelementptr inbounds [3 x i32*], [3 x i32*]* %845, i64 0, i64 0
  %847 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 5
  store i32* %847, i32** %846, !tbaa !5
  %848 = getelementptr inbounds i32*, i32** %846, i64 1
  store i32* null, i32** %848, !tbaa !5
  %849 = getelementptr inbounds i32*, i32** %848, i64 1
  %850 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 4
  store i32* %850, i32** %849, !tbaa !5
  %851 = getelementptr inbounds [3 x i32*], [3 x i32*]* %845, i64 1
  %852 = getelementptr inbounds [3 x i32*], [3 x i32*]* %851, i64 0, i64 0
  store i32* null, i32** %852, !tbaa !5
  %853 = getelementptr inbounds i32*, i32** %852, i64 1
  store i32* null, i32** %853, !tbaa !5
  %854 = getelementptr inbounds i32*, i32** %853, i64 1
  %855 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %856 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %855, i32 0, i64 7
  %857 = getelementptr inbounds [4 x i32], [4 x i32]* %856, i32 0, i64 3
  store i32* %857, i32** %854, !tbaa !5
  %858 = getelementptr inbounds [3 x i32*], [3 x i32*]* %851, i64 1
  %859 = getelementptr inbounds [3 x i32*], [3 x i32*]* %858, i64 0, i64 0
  %860 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 4
  store i32* %860, i32** %859, !tbaa !5
  %861 = getelementptr inbounds i32*, i32** %859, i64 1
  %862 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %863 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %862, i32 0, i64 7
  %864 = getelementptr inbounds [4 x i32], [4 x i32]* %863, i32 0, i64 1
  store i32* %864, i32** %861, !tbaa !5
  %865 = getelementptr inbounds i32*, i32** %861, i64 1
  store i32* @g_1053, i32** %865, !tbaa !5
  %866 = getelementptr inbounds [3 x i32*], [3 x i32*]* %858, i64 1
  %867 = getelementptr inbounds [3 x i32*], [3 x i32*]* %866, i64 0, i64 0
  store i32* @g_1053, i32** %867, !tbaa !5
  %868 = getelementptr inbounds i32*, i32** %867, i64 1
  store i32* @g_3, i32** %868, !tbaa !5
  %869 = getelementptr inbounds i32*, i32** %868, i64 1
  store i32* %l_1399, i32** %869, !tbaa !5
  %870 = getelementptr inbounds [3 x i32*], [3 x i32*]* %866, i64 1
  %871 = getelementptr inbounds [3 x i32*], [3 x i32*]* %870, i64 0, i64 0
  store i32* null, i32** %871, !tbaa !5
  %872 = getelementptr inbounds i32*, i32** %871, i64 1
  %873 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 6
  %874 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %873, i32 0, i64 4
  %875 = getelementptr inbounds [4 x i32], [4 x i32]* %874, i32 0, i64 2
  store i32* %875, i32** %872, !tbaa !5
  %876 = getelementptr inbounds i32*, i32** %872, i64 1
  %877 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %878 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %877, i32 0, i64 6
  %879 = getelementptr inbounds [4 x i32], [4 x i32]* %878, i32 0, i64 0
  store i32* %879, i32** %876, !tbaa !5
  %880 = getelementptr inbounds [3 x i32*], [3 x i32*]* %870, i64 1
  %881 = getelementptr inbounds [3 x i32*], [3 x i32*]* %880, i64 0, i64 0
  store i32* %l_1399, i32** %881, !tbaa !5
  %882 = getelementptr inbounds i32*, i32** %881, i64 1
  store i32* @g_1380, i32** %882, !tbaa !5
  %883 = getelementptr inbounds i32*, i32** %882, i64 1
  store i32* @g_1380, i32** %883, !tbaa !5
  %884 = getelementptr inbounds [3 x i32*], [3 x i32*]* %880, i64 1
  %885 = getelementptr inbounds [3 x i32*], [3 x i32*]* %884, i64 0, i64 0
  store i32* @g_135, i32** %885, !tbaa !5
  %886 = getelementptr inbounds i32*, i32** %885, i64 1
  store i32* @g_3, i32** %886, !tbaa !5
  %887 = getelementptr inbounds i32*, i32** %886, i64 1
  store i32* @g_3, i32** %887, !tbaa !5
  %888 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %835, i64 1
  %889 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %888, i64 0, i64 0
  %890 = getelementptr inbounds [3 x i32*], [3 x i32*]* %889, i64 0, i64 0
  %891 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 2
  %892 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %891, i32 0, i64 4
  %893 = getelementptr inbounds [4 x i32], [4 x i32]* %892, i32 0, i64 1
  store i32* %893, i32** %890, !tbaa !5
  %894 = getelementptr inbounds i32*, i32** %890, i64 1
  %895 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 5
  %896 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %895, i32 0, i64 3
  %897 = getelementptr inbounds [4 x i32], [4 x i32]* %896, i32 0, i64 2
  store i32* %897, i32** %894, !tbaa !5
  %898 = getelementptr inbounds i32*, i32** %894, i64 1
  %899 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 6
  %900 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %899, i32 0, i64 4
  %901 = getelementptr inbounds [4 x i32], [4 x i32]* %900, i32 0, i64 2
  store i32* %901, i32** %898, !tbaa !5
  %902 = getelementptr inbounds [3 x i32*], [3 x i32*]* %889, i64 1
  %903 = getelementptr inbounds [3 x i32*], [3 x i32*]* %902, i64 0, i64 0
  store i32* @g_135, i32** %903, !tbaa !5
  %904 = getelementptr inbounds i32*, i32** %903, i64 1
  store i32* %l_1487, i32** %904, !tbaa !5
  %905 = getelementptr inbounds i32*, i32** %904, i64 1
  %906 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %907 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %906, i32 0, i64 7
  %908 = getelementptr inbounds [4 x i32], [4 x i32]* %907, i32 0, i64 1
  store i32* %908, i32** %905, !tbaa !5
  %909 = getelementptr inbounds [3 x i32*], [3 x i32*]* %902, i64 1
  %910 = getelementptr inbounds [3 x i32*], [3 x i32*]* %909, i64 0, i64 0
  store i32* %l_1399, i32** %910, !tbaa !5
  %911 = getelementptr inbounds i32*, i32** %910, i64 1
  store i32* %l_1399, i32** %911, !tbaa !5
  %912 = getelementptr inbounds i32*, i32** %911, i64 1
  %913 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 0
  %914 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %913, i32 0, i64 3
  %915 = getelementptr inbounds [4 x i32], [4 x i32]* %914, i32 0, i64 2
  store i32* %915, i32** %912, !tbaa !5
  %916 = getelementptr inbounds [3 x i32*], [3 x i32*]* %909, i64 1
  %917 = getelementptr inbounds [3 x i32*], [3 x i32*]* %916, i64 0, i64 0
  store i32* null, i32** %917, !tbaa !5
  %918 = getelementptr inbounds i32*, i32** %917, i64 1
  store i32* null, i32** %918, !tbaa !5
  %919 = getelementptr inbounds i32*, i32** %918, i64 1
  store i32* @g_1380, i32** %919, !tbaa !5
  %920 = getelementptr inbounds [3 x i32*], [3 x i32*]* %916, i64 1
  %921 = getelementptr inbounds [3 x i32*], [3 x i32*]* %920, i64 0, i64 0
  store i32* @g_1053, i32** %921, !tbaa !5
  %922 = getelementptr inbounds i32*, i32** %921, i64 1
  %923 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 2
  %924 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %923, i32 0, i64 5
  %925 = getelementptr inbounds [4 x i32], [4 x i32]* %924, i32 0, i64 2
  store i32* %925, i32** %922, !tbaa !5
  %926 = getelementptr inbounds i32*, i32** %922, i64 1
  store i32* null, i32** %926, !tbaa !5
  %927 = getelementptr inbounds [3 x i32*], [3 x i32*]* %920, i64 1
  %928 = getelementptr inbounds [3 x i32*], [3 x i32*]* %927, i64 0, i64 0
  %929 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 4
  store i32* %929, i32** %928, !tbaa !5
  %930 = getelementptr inbounds i32*, i32** %928, i64 1
  store i32* null, i32** %930, !tbaa !5
  %931 = getelementptr inbounds i32*, i32** %930, i64 1
  store i32* %l_1487, i32** %931, !tbaa !5
  %932 = getelementptr inbounds [3 x i32*], [3 x i32*]* %927, i64 1
  %933 = getelementptr inbounds [3 x i32*], [3 x i32*]* %932, i64 0, i64 0
  store i32* @g_1380, i32** %933, !tbaa !5
  %934 = getelementptr inbounds i32*, i32** %933, i64 1
  store i32* %l_1487, i32** %934, !tbaa !5
  %935 = getelementptr inbounds i32*, i32** %934, i64 1
  store i32* %l_1487, i32** %935, !tbaa !5
  %936 = getelementptr inbounds [3 x i32*], [3 x i32*]* %932, i64 1
  %937 = getelementptr inbounds [3 x i32*], [3 x i32*]* %936, i64 0, i64 0
  %938 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %938, i32** %937, !tbaa !5
  %939 = getelementptr inbounds i32*, i32** %937, i64 1
  store i32* null, i32** %939, !tbaa !5
  %940 = getelementptr inbounds i32*, i32** %939, i64 1
  store i32* null, i32** %940, !tbaa !5
  %941 = getelementptr inbounds [3 x i32*], [3 x i32*]* %936, i64 1
  %942 = getelementptr inbounds [3 x i32*], [3 x i32*]* %941, i64 0, i64 0
  store i32* null, i32** %942, !tbaa !5
  %943 = getelementptr inbounds i32*, i32** %942, i64 1
  store i32* @g_1380, i32** %943, !tbaa !5
  %944 = getelementptr inbounds i32*, i32** %943, i64 1
  store i32* @g_1380, i32** %944, !tbaa !5
  %945 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %888, i64 1
  %946 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %945, i64 0, i64 0
  %947 = getelementptr inbounds [3 x i32*], [3 x i32*]* %946, i64 0, i64 0
  store i32* null, i32** %947, !tbaa !5
  %948 = getelementptr inbounds i32*, i32** %947, i64 1
  store i32* @g_1053, i32** %948, !tbaa !5
  %949 = getelementptr inbounds i32*, i32** %948, i64 1
  %950 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 0
  %951 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %950, i32 0, i64 3
  %952 = getelementptr inbounds [4 x i32], [4 x i32]* %951, i32 0, i64 2
  store i32* %952, i32** %949, !tbaa !5
  %953 = getelementptr inbounds [3 x i32*], [3 x i32*]* %946, i64 1
  %954 = getelementptr inbounds [3 x i32*], [3 x i32*]* %953, i64 0, i64 0
  store i32* %l_1487, i32** %954, !tbaa !5
  %955 = getelementptr inbounds i32*, i32** %954, i64 1
  store i32* null, i32** %955, !tbaa !5
  %956 = getelementptr inbounds i32*, i32** %955, i64 1
  %957 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %958 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %957, i32 0, i64 7
  %959 = getelementptr inbounds [4 x i32], [4 x i32]* %958, i32 0, i64 1
  store i32* %959, i32** %956, !tbaa !5
  %960 = getelementptr inbounds [3 x i32*], [3 x i32*]* %953, i64 1
  %961 = getelementptr inbounds [3 x i32*], [3 x i32*]* %960, i64 0, i64 0
  store i32* @g_3, i32** %961, !tbaa !5
  %962 = getelementptr inbounds i32*, i32** %961, i64 1
  store i32* @g_1053, i32** %962, !tbaa !5
  %963 = getelementptr inbounds i32*, i32** %962, i64 1
  %964 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 6
  %965 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %964, i32 0, i64 4
  %966 = getelementptr inbounds [4 x i32], [4 x i32]* %965, i32 0, i64 2
  store i32* %966, i32** %963, !tbaa !5
  %967 = getelementptr inbounds [3 x i32*], [3 x i32*]* %960, i64 1
  %968 = getelementptr inbounds [3 x i32*], [3 x i32*]* %967, i64 0, i64 0
  store i32* %l_1487, i32** %968, !tbaa !5
  %969 = getelementptr inbounds i32*, i32** %968, i64 1
  store i32* %l_1487, i32** %969, !tbaa !5
  %970 = getelementptr inbounds i32*, i32** %969, i64 1
  store i32* @g_3, i32** %970, !tbaa !5
  %971 = getelementptr inbounds [3 x i32*], [3 x i32*]* %967, i64 1
  %972 = getelementptr inbounds [3 x i32*], [3 x i32*]* %971, i64 0, i64 0
  %973 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 2
  %974 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %973, i32 0, i64 0
  %975 = getelementptr inbounds [4 x i32], [4 x i32]* %974, i32 0, i64 2
  store i32* %975, i32** %972, !tbaa !5
  %976 = getelementptr inbounds i32*, i32** %972, i64 1
  store i32* @g_1053, i32** %976, !tbaa !5
  %977 = getelementptr inbounds i32*, i32** %976, i64 1
  store i32* @g_1380, i32** %977, !tbaa !5
  %978 = getelementptr inbounds [3 x i32*], [3 x i32*]* %971, i64 1
  %979 = getelementptr inbounds [3 x i32*], [3 x i32*]* %978, i64 0, i64 0
  %980 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 0
  store i32* %980, i32** %979, !tbaa !5
  %981 = getelementptr inbounds i32*, i32** %979, i64 1
  store i32* null, i32** %981, !tbaa !5
  %982 = getelementptr inbounds i32*, i32** %981, i64 1
  %983 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %984 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %983, i32 0, i64 6
  %985 = getelementptr inbounds [4 x i32], [4 x i32]* %984, i32 0, i64 0
  store i32* %985, i32** %982, !tbaa !5
  %986 = getelementptr inbounds [3 x i32*], [3 x i32*]* %978, i64 1
  %987 = getelementptr inbounds [3 x i32*], [3 x i32*]* %986, i64 0, i64 0
  store i32* @g_1380, i32** %987, !tbaa !5
  %988 = getelementptr inbounds i32*, i32** %987, i64 1
  store i32* @g_1053, i32** %988, !tbaa !5
  %989 = getelementptr inbounds i32*, i32** %988, i64 1
  store i32* %l_1399, i32** %989, !tbaa !5
  %990 = getelementptr inbounds [3 x i32*], [3 x i32*]* %986, i64 1
  %991 = getelementptr inbounds [3 x i32*], [3 x i32*]* %990, i64 0, i64 0
  store i32* @g_1053, i32** %991, !tbaa !5
  %992 = getelementptr inbounds i32*, i32** %991, i64 1
  store i32* @g_1380, i32** %992, !tbaa !5
  %993 = getelementptr inbounds i32*, i32** %992, i64 1
  store i32* @g_1053, i32** %993, !tbaa !5
  %994 = getelementptr inbounds [3 x i32*], [3 x i32*]* %990, i64 1
  %995 = getelementptr inbounds [3 x i32*], [3 x i32*]* %994, i64 0, i64 0
  %996 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %997 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %996, i32 0, i64 7
  %998 = getelementptr inbounds [4 x i32], [4 x i32]* %997, i32 0, i64 3
  store i32* %998, i32** %995, !tbaa !5
  %999 = getelementptr inbounds i32*, i32** %995, i64 1
  store i32* null, i32** %999, !tbaa !5
  %1000 = getelementptr inbounds i32*, i32** %999, i64 1
  store i32* null, i32** %1000, !tbaa !5
  %1001 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %945, i64 1
  %1002 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %1001, i64 0, i64 0
  %1003 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1002, i64 0, i64 0
  store i32* null, i32** %1003, !tbaa !5
  %1004 = getelementptr inbounds i32*, i32** %1003, i64 1
  store i32* %l_1487, i32** %1004, !tbaa !5
  %1005 = getelementptr inbounds i32*, i32** %1004, i64 1
  %1006 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %1007 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %1006, i32 0, i64 7
  %1008 = getelementptr inbounds [4 x i32], [4 x i32]* %1007, i32 0, i64 3
  store i32* %1008, i32** %1005, !tbaa !5
  %1009 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1002, i64 1
  %1010 = bitcast [3 x i32*]* %1009 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1010, i8 0, i64 24, i32 8, i1 false)
  %1011 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1009, i64 0, i64 0
  %1012 = getelementptr inbounds i32*, i32** %1011, i64 1
  %1013 = getelementptr inbounds i32*, i32** %1012, i64 1
  %1014 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1009, i64 1
  %1015 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1014, i64 0, i64 0
  %1016 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %1017 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %1016, i32 0, i64 7
  %1018 = getelementptr inbounds [4 x i32], [4 x i32]* %1017, i32 0, i64 3
  store i32* %1018, i32** %1015, !tbaa !5
  %1019 = getelementptr inbounds i32*, i32** %1015, i64 1
  %1020 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 2
  %1021 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %1020, i32 0, i64 5
  %1022 = getelementptr inbounds [4 x i32], [4 x i32]* %1021, i32 0, i64 2
  store i32* %1022, i32** %1019, !tbaa !5
  %1023 = getelementptr inbounds i32*, i32** %1019, i64 1
  store i32* null, i32** %1023, !tbaa !5
  %1024 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1014, i64 1
  %1025 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1024, i64 0, i64 0
  store i32* @g_1053, i32** %1025, !tbaa !5
  %1026 = getelementptr inbounds i32*, i32** %1025, i64 1
  store i32* null, i32** %1026, !tbaa !5
  %1027 = getelementptr inbounds i32*, i32** %1026, i64 1
  store i32* null, i32** %1027, !tbaa !5
  %1028 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1024, i64 1
  %1029 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1028, i64 0, i64 0
  store i32* @g_1380, i32** %1029, !tbaa !5
  %1030 = getelementptr inbounds i32*, i32** %1029, i64 1
  store i32* %l_1399, i32** %1030, !tbaa !5
  %1031 = getelementptr inbounds i32*, i32** %1030, i64 1
  store i32* null, i32** %1031, !tbaa !5
  %1032 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1028, i64 1
  %1033 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1032, i64 0, i64 0
  %1034 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 0
  store i32* %1034, i32** %1033, !tbaa !5
  %1035 = getelementptr inbounds i32*, i32** %1033, i64 1
  store i32* %l_1487, i32** %1035, !tbaa !5
  %1036 = getelementptr inbounds i32*, i32** %1035, i64 1
  store i32* %l_1487, i32** %1036, !tbaa !5
  %1037 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1032, i64 1
  %1038 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1037, i64 0, i64 0
  %1039 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 2
  %1040 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %1039, i32 0, i64 0
  %1041 = getelementptr inbounds [4 x i32], [4 x i32]* %1040, i32 0, i64 2
  store i32* %1041, i32** %1038, !tbaa !5
  %1042 = getelementptr inbounds i32*, i32** %1038, i64 1
  %1043 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 5
  %1044 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %1043, i32 0, i64 3
  %1045 = getelementptr inbounds [4 x i32], [4 x i32]* %1044, i32 0, i64 2
  store i32* %1045, i32** %1042, !tbaa !5
  %1046 = getelementptr inbounds i32*, i32** %1042, i64 1
  store i32* null, i32** %1046, !tbaa !5
  %1047 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1037, i64 1
  %1048 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1047, i64 0, i64 0
  store i32* %l_1487, i32** %1048, !tbaa !5
  %1049 = getelementptr inbounds i32*, i32** %1048, i64 1
  store i32* @g_3, i32** %1049, !tbaa !5
  %1050 = getelementptr inbounds i32*, i32** %1049, i64 1
  store i32* %l_1487, i32** %1050, !tbaa !5
  %1051 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1047, i64 1
  %1052 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1051, i64 0, i64 0
  store i32* @g_3, i32** %1052, !tbaa !5
  %1053 = getelementptr inbounds i32*, i32** %1052, i64 1
  store i32* @g_1380, i32** %1053, !tbaa !5
  %1054 = getelementptr inbounds i32*, i32** %1053, i64 1
  store i32* null, i32** %1054, !tbaa !5
  %1055 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %1001, i64 1
  %1056 = getelementptr inbounds [9 x [3 x i32*]], [9 x [3 x i32*]]* %1055, i64 0, i64 0
  %1057 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1056, i64 0, i64 0
  store i32* %l_1487, i32** %1057, !tbaa !5
  %1058 = getelementptr inbounds i32*, i32** %1057, i64 1
  %1059 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 6
  %1060 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %1059, i32 0, i64 4
  %1061 = getelementptr inbounds [4 x i32], [4 x i32]* %1060, i32 0, i64 2
  store i32* %1061, i32** %1058, !tbaa !5
  %1062 = getelementptr inbounds i32*, i32** %1058, i64 1
  store i32* null, i32** %1062, !tbaa !5
  %1063 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1056, i64 1
  %1064 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1063, i64 0, i64 0
  store i32* null, i32** %1064, !tbaa !5
  %1065 = getelementptr inbounds i32*, i32** %1064, i64 1
  store i32* @g_3, i32** %1065, !tbaa !5
  %1066 = getelementptr inbounds i32*, i32** %1065, i64 1
  store i32* null, i32** %1066, !tbaa !5
  %1067 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1063, i64 1
  %1068 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1067, i64 0, i64 0
  store i32* null, i32** %1068, !tbaa !5
  %1069 = getelementptr inbounds i32*, i32** %1068, i64 1
  %1070 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %1071 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %1070, i32 0, i64 7
  %1072 = getelementptr inbounds [4 x i32], [4 x i32]* %1071, i32 0, i64 1
  store i32* %1072, i32** %1069, !tbaa !5
  %1073 = getelementptr inbounds i32*, i32** %1069, i64 1
  store i32* null, i32** %1073, !tbaa !5
  %1074 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1067, i64 1
  %1075 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1074, i64 0, i64 0
  %1076 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 2
  store i32* %1076, i32** %1075, !tbaa !5
  %1077 = getelementptr inbounds i32*, i32** %1075, i64 1
  store i32* null, i32** %1077, !tbaa !5
  %1078 = getelementptr inbounds i32*, i32** %1077, i64 1
  %1079 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %1080 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %1079, i32 0, i64 7
  %1081 = getelementptr inbounds [4 x i32], [4 x i32]* %1080, i32 0, i64 3
  store i32* %1081, i32** %1078, !tbaa !5
  %1082 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1074, i64 1
  %1083 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1082, i64 0, i64 0
  store i32* @g_1380, i32** %1083, !tbaa !5
  %1084 = getelementptr inbounds i32*, i32** %1083, i64 1
  store i32* null, i32** %1084, !tbaa !5
  %1085 = getelementptr inbounds i32*, i32** %1084, i64 1
  store i32* null, i32** %1085, !tbaa !5
  %1086 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1082, i64 1
  %1087 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1086, i64 0, i64 0
  %1088 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1398, i32 0, i64 4
  store i32* %1088, i32** %1087, !tbaa !5
  %1089 = getelementptr inbounds i32*, i32** %1087, i64 1
  %1090 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %1091 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %1090, i32 0, i64 7
  %1092 = getelementptr inbounds [4 x i32], [4 x i32]* %1091, i32 0, i64 1
  store i32* %1092, i32** %1089, !tbaa !5
  %1093 = getelementptr inbounds i32*, i32** %1089, i64 1
  store i32* @g_1053, i32** %1093, !tbaa !5
  %1094 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1086, i64 1
  %1095 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1094, i64 0, i64 0
  store i32* @g_1053, i32** %1095, !tbaa !5
  %1096 = getelementptr inbounds i32*, i32** %1095, i64 1
  store i32* @g_3, i32** %1096, !tbaa !5
  %1097 = getelementptr inbounds i32*, i32** %1096, i64 1
  store i32* %l_1399, i32** %1097, !tbaa !5
  %1098 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1094, i64 1
  %1099 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1098, i64 0, i64 0
  store i32* null, i32** %1099, !tbaa !5
  %1100 = getelementptr inbounds i32*, i32** %1099, i64 1
  %1101 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 6
  %1102 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %1101, i32 0, i64 4
  %1103 = getelementptr inbounds [4 x i32], [4 x i32]* %1102, i32 0, i64 2
  store i32* %1103, i32** %1100, !tbaa !5
  %1104 = getelementptr inbounds i32*, i32** %1100, i64 1
  %1105 = getelementptr inbounds [7 x [8 x [4 x i32]]], [7 x [8 x [4 x i32]]]* %l_1488, i32 0, i64 4
  %1106 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %1105, i32 0, i64 6
  %1107 = getelementptr inbounds [4 x i32], [4 x i32]* %1106, i32 0, i64 0
  store i32* %1107, i32** %1104, !tbaa !5
  %1108 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1098, i64 1
  %1109 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1108, i64 0, i64 0
  store i32* %l_1399, i32** %1109, !tbaa !5
  %1110 = getelementptr inbounds i32*, i32** %1109, i64 1
  store i32* @g_1380, i32** %1110, !tbaa !5
  %1111 = getelementptr inbounds i32*, i32** %1110, i64 1
  store i32* @g_1380, i32** %1111, !tbaa !5
  %1112 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1112) #1
  %1113 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1113) #1
  %1114 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1114) #1
  %1115 = load i64, i64* %l_1498, align 8, !tbaa !7
  %1116 = add i64 %1115, -1
  store i64 %1116, i64* %l_1498, align 8, !tbaa !7
  %1117 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1117) #1
  %1118 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1118) #1
  %1119 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1119) #1
  %1120 = bitcast [9 x [9 x [3 x i32*]]]* %l_1497 to i8*
  call void @llvm.lifetime.end(i64 1944, i8* %1120) #1
  %1121 = bitcast i32** %l_1496 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1121) #1
  %1122 = bitcast i32** %l_1495 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1122) #1
  %1123 = bitcast i32** %l_1494 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1123) #1
  %1124 = bitcast i32** %l_1493 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1124) #1
  %1125 = bitcast i32** %l_1492 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1125) #1
  %1126 = bitcast i32** %l_1491 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1126) #1
  %1127 = bitcast i32** %l_1490 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1127) #1
  %1128 = bitcast i32** %l_1489 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1128) #1
  %1129 = bitcast [7 x [8 x [4 x i32]]]* %l_1488 to i8*
  call void @llvm.lifetime.end(i64 896, i8* %1129) #1
  %1130 = bitcast i32* %l_1487 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1130) #1
  %1131 = bitcast i32* %l_1486 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1131) #1
  br label %1132

; <label>:1132                                    ; preds = %595, %583
  %1133 = load i32*, i32** %l_1501, align 8, !tbaa !5
  %1134 = load i32***, i32**** @g_1469, align 8, !tbaa !5
  %1135 = load i32**, i32*** %1134, align 8, !tbaa !5
  store i32* %1133, i32** %1135, align 8, !tbaa !5
  %1136 = load i32*, i32** %l_1501, align 8, !tbaa !5
  %1137 = load i32, i32* %1136, align 4, !tbaa !1
  %1138 = load i32**, i32*** %1, align 8, !tbaa !5
  %1139 = load i32*, i32** %1138, align 8, !tbaa !5
  store i32 %1137, i32* %1139, align 4, !tbaa !1
  %1140 = load %struct.S0*, %struct.S0** @g_249, align 8, !tbaa !5
  %1141 = bitcast %struct.S0* %agg.result to i8*
  %1142 = bitcast %struct.S0* %1140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1141, i8* %1142, i64 32, i32 8, i1 false), !tbaa.struct !20
  store i32 1, i32* %4
  %1143 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1143) #1
  %1144 = bitcast i32** %l_1501 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1144) #1
  %1145 = bitcast i64* %l_1498 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1145) #1
  %1146 = bitcast i64* %l_1482 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1146) #1
  %1147 = bitcast i64* %l_1461 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1147) #1
  %1148 = bitcast i32**** %l_1431 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1148) #1
  %1149 = bitcast i32*** %l_1432 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1149) #1
  %1150 = bitcast i16* %l_1400 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1150) #1
  %1151 = bitcast i32* %l_1399 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1151) #1
  %1152 = bitcast [6 x i32]* %l_1398 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1152) #1
  %1153 = bitcast %struct.S0** %l_1397 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1153) #1
  %1154 = bitcast [10 x i8*]* %l_1391 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1154) #1
  %1155 = bitcast %struct.S0*** %l_1388 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1155) #1
  %1156 = bitcast i32* %l_1387 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1156) #1
  ret void

; <label>:1157                                    ; preds = %555, %540
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @func_13(i16 signext %p_14) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %l_16 = alloca [7 x i32*], align 16
  %l_1277 = alloca [6 x [6 x [2 x i16]]], align 16
  %l_1299 = alloca i64***, align 8
  %l_1319 = alloca i8, align 1
  %l_1326 = alloca i16, align 2
  %l_1342 = alloca [2 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_17 = alloca i8, align 1
  %l_20 = alloca i32, align 4
  %l_44 = alloca i32, align 4
  %l_1247 = alloca i32, align 4
  %l_1251 = alloca [1 x %struct.S0*], align 8
  %l_1270 = alloca [6 x i32], align 16
  %l_1272 = alloca i64, align 8
  %l_1285 = alloca i32, align 4
  %l_1323 = alloca i8*, align 8
  %l_1327 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %3 = alloca i32
  %l_18 = alloca i64, align 8
  %l_23 = alloca i32, align 4
  %l_19 = alloca [9 x i8], align 1
  %l_24 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %l_25 = alloca i64, align 8
  %l_22 = alloca i32, align 4
  %l_32 = alloca i32*, align 8
  %i3 = alloca i32, align 4
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %k8 = alloca i32, align 4
  %l_1347 = alloca i64, align 8
  %l_1348 = alloca i32, align 4
  %l_1370 = alloca i16, align 2
  %l_1364 = alloca i32**, align 8
  %l_1365 = alloca i32*****, align 8
  store i16 %p_14, i16* %2, align 2, !tbaa !19
  %4 = bitcast [7 x i32*]* %l_16 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %4) #1
  %5 = bitcast [7 x i32*]* %l_16 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 56, i32 16, i1 false)
  %6 = bitcast [6 x [6 x [2 x i16]]]* %l_1277 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %6) #1
  %7 = bitcast [6 x [6 x [2 x i16]]]* %l_1277 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([6 x [6 x [2 x i16]]]* @func_13.l_1277 to i8*), i64 144, i32 16, i1 false)
  %8 = bitcast i64**** %l_1299 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64*** @g_1154, i64**** %l_1299, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1319) #1
  store i8 -1, i8* %l_1319, align 1, !tbaa !9
  %9 = bitcast i16* %l_1326 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  store i16 -10979, i16* %l_1326, align 2, !tbaa !19
  %10 = bitcast [2 x i32]* %l_1342 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %14

; <label>:14                                      ; preds = %21, %0
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %24

; <label>:17                                      ; preds = %14
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %l_1342, i32 0, i64 %19
  store i32 3, i32* %20, align 4, !tbaa !1
  br label %21

; <label>:21                                      ; preds = %17
  %22 = load i32, i32* %i, align 4, !tbaa !1
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4, !tbaa !1
  br label %14

; <label>:24                                      ; preds = %14
  store i16 3, i16* %2, align 2, !tbaa !19
  br label %25

; <label>:25                                      ; preds = %177, %24
  %26 = load i16, i16* %2, align 2, !tbaa !19
  %27 = sext i16 %26 to i32
  %28 = icmp sle i32 %27, 9
  br i1 %28, label %29, label %182

; <label>:29                                      ; preds = %25
  call void @llvm.lifetime.start(i64 1, i8* %l_17) #1
  store i8 0, i8* %l_17, align 1, !tbaa !9
  %30 = bitcast i32* %l_20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  store i32 -691843299, i32* %l_20, align 4, !tbaa !1
  %31 = bitcast i32* %l_44 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 803273164, i32* %l_44, align 4, !tbaa !1
  %32 = bitcast i32* %l_1247 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 4, i32* %l_1247, align 4, !tbaa !1
  %33 = bitcast [1 x %struct.S0*]* %l_1251 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = bitcast [6 x i32]* %l_1270 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %34) #1
  %35 = bitcast [6 x i32]* %l_1270 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* bitcast ([6 x i32]* @func_13.l_1270 to i8*), i64 24, i32 16, i1 false)
  %36 = bitcast i64* %l_1272 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i64 1, i64* %l_1272, align 8, !tbaa !7
  %37 = bitcast i32* %l_1285 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  store i32 7, i32* %l_1285, align 4, !tbaa !1
  %38 = bitcast i8** %l_1323 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store i8* @g_154, i8** %l_1323, align 8, !tbaa !5
  %39 = bitcast i32* %l_1327 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 -124635806, i32* %l_1327, align 4, !tbaa !1
  %40 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %41

; <label>:41                                      ; preds = %48, %29
  %42 = load i32, i32* %i1, align 4, !tbaa !1
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %51

; <label>:44                                      ; preds = %41
  %45 = load i32, i32* %i1, align 4, !tbaa !1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1 x %struct.S0*], [1 x %struct.S0*]* %l_1251, i32 0, i64 %46
  store %struct.S0* @g_143, %struct.S0** %47, align 8, !tbaa !5
  br label %48

; <label>:48                                      ; preds = %44
  %49 = load i32, i32* %i1, align 4, !tbaa !1
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %i1, align 4, !tbaa !1
  br label %41

; <label>:51                                      ; preds = %41
  %52 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_16, i32 0, i64 0
  %53 = load i32*, i32** %52, align 8, !tbaa !5
  %54 = load i16, i16* %2, align 2, !tbaa !19
  %55 = sext i16 %54 to i64
  %56 = getelementptr inbounds [10 x i32*], [10 x i32*]* @g_2, i32 0, i64 %55
  store volatile i32* %53, i32** %56, align 8, !tbaa !5
  %57 = load i8, i8* %l_17, align 1, !tbaa !9
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %51
  store i32 7, i32* %3
  br label %165

; <label>:60                                      ; preds = %51
  store i32 0, i32* @g_3, align 4, !tbaa !1
  br label %61

; <label>:61                                      ; preds = %161, %60
  %62 = load i32, i32* @g_3, align 4, !tbaa !1
  %63 = icmp sle i32 %62, 9
  br i1 %63, label %64, label %164

; <label>:64                                      ; preds = %61
  %65 = bitcast i64* %l_18 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  store i64 6, i64* %l_18, align 8, !tbaa !7
  %66 = bitcast i32* %l_23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  store i32 789535623, i32* %l_23, align 4, !tbaa !1
  %67 = load i64, i64* %l_18, align 8, !tbaa !7
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %140

; <label>:69                                      ; preds = %64
  %70 = bitcast [9 x i8]* %l_19 to i8*
  call void @llvm.lifetime.start(i64 9, i8* %70) #1
  %71 = bitcast i32* %l_24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  store i32 -1, i32* %l_24, align 4, !tbaa !1
  %72 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %73

; <label>:73                                      ; preds = %80, %69
  %74 = load i32, i32* %i2, align 4, !tbaa !1
  %75 = icmp slt i32 %74, 9
  br i1 %75, label %76, label %83

; <label>:76                                      ; preds = %73
  %77 = load i32, i32* %i2, align 4, !tbaa !1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [9 x i8], [9 x i8]* %l_19, i32 0, i64 %78
  store i8 -86, i8* %79, align 1, !tbaa !9
  br label %80

; <label>:80                                      ; preds = %76
  %81 = load i32, i32* %i2, align 4, !tbaa !1
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %i2, align 4, !tbaa !1
  br label %73

; <label>:83                                      ; preds = %73
  %84 = getelementptr inbounds [9 x i8], [9 x i8]* %l_19, i32 0, i64 3
  %85 = load i8, i8* %84, align 1, !tbaa !9
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %87, label %90

; <label>:87                                      ; preds = %83
  %88 = load i16, i16* %2, align 2, !tbaa !19
  %89 = sext i16 %88 to i32
  store i32 %89, i32* %l_20, align 4, !tbaa !1
  br label %134

; <label>:90                                      ; preds = %83
  %91 = bitcast i64* %l_25 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #1
  store i64 -1, i64* %l_25, align 8, !tbaa !7
  %92 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_16, i32 0, i64 2
  %93 = load i32*, i32** %92, align 8, !tbaa !5
  %94 = icmp eq i32* %93, null
  br i1 %94, label %99, label %95

; <label>:95                                      ; preds = %90
  %96 = load i16, i16* %2, align 2, !tbaa !19
  %97 = sext i16 %96 to i32
  %98 = icmp ne i32 %97, 0
  br label %99

; <label>:99                                      ; preds = %95, %90
  %100 = phi i1 [ true, %90 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32
  %102 = xor i32 %101, -1
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

; <label>:104                                     ; preds = %99
  %105 = load i32, i32* @g_3, align 4, !tbaa !1
  store i32 %105, i32* %1
  store i32 1, i32* %3
  br label %131

; <label>:106                                     ; preds = %99
  %107 = bitcast i32* %l_22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #1
  store i32 -3, i32* %l_22, align 4, !tbaa !1
  %108 = bitcast i32** %l_32 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  store i32* null, i32** %l_32, align 8, !tbaa !5
  %109 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #1
  %110 = load i64, i64* %l_25, align 8, !tbaa !7
  %111 = add i64 %110, -1
  store i64 %111, i64* %l_25, align 8, !tbaa !7
  %112 = load i32, i32* %l_23, align 4, !tbaa !1
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

; <label>:114                                     ; preds = %106
  store i32 13, i32* %3
  br label %125

; <label>:115                                     ; preds = %106
  %116 = load volatile i32***, i32**** @g_28, align 8, !tbaa !5
  store i32** getelementptr inbounds ([10 x i32*], [10 x i32*]* @g_2, i32 0, i64 2), i32*** %116, align 8, !tbaa !5
  store i32* @g_3, i32** %l_32, align 8, !tbaa !5
  %117 = icmp eq i32* @g_3, %l_24
  %118 = zext i1 %117 to i32
  %119 = sext i32 %118 to i64
  %120 = call i64 @safe_mod_func_int64_t_s_s(i64 %119, i64 7766019222226164289)
  %121 = load i32, i32* %l_23, align 4, !tbaa !1
  %122 = sext i32 %121 to i64
  %123 = or i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %l_23, align 4, !tbaa !1
  store i32 0, i32* %3
  br label %125

; <label>:125                                     ; preds = %115, %114
  %126 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32** %l_32 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i32* %l_22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %cleanup.dest = load i32, i32* %3
  switch i32 %cleanup.dest, label %131 [
    i32 0, label %129
  ]

; <label>:129                                     ; preds = %125
  br label %130

; <label>:130                                     ; preds = %129
  store i32 0, i32* %3
  br label %131

; <label>:131                                     ; preds = %130, %125, %104
  %132 = bitcast i64* %l_25 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %cleanup.dest.4 = load i32, i32* %3
  switch i32 %cleanup.dest.4, label %135 [
    i32 0, label %133
  ]

; <label>:133                                     ; preds = %131
  br label %134

; <label>:134                                     ; preds = %133, %87
  store i32 0, i32* %3
  br label %135

; <label>:135                                     ; preds = %134, %131
  %136 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %l_24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast [9 x i8]* %l_19 to i8*
  call void @llvm.lifetime.end(i64 9, i8* %138) #1
  %cleanup.dest.5 = load i32, i32* %3
  switch i32 %cleanup.dest.5, label %157 [
    i32 0, label %139
  ]

; <label>:139                                     ; preds = %135
  br label %156

; <label>:140                                     ; preds = %64
  store i32 0, i32* %l_20, align 4, !tbaa !1
  br label %141

; <label>:141                                     ; preds = %152, %140
  %142 = load i32, i32* %l_20, align 4, !tbaa !1
  %143 = icmp eq i32 %142, 27
  br i1 %143, label %144, label %155

; <label>:144                                     ; preds = %141
  %145 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  %146 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #1
  %147 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %147) #1
  %148 = load i32, i32* getelementptr inbounds ([4 x [7 x [5 x i32]]], [4 x [7 x [5 x i32]]]* @func_13.l_35, i32 0, i64 2, i64 5, i64 2), align 4, !tbaa !1
  store i32 %148, i32* %1
  store i32 1, i32* %3
  %149 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  br label %157
                                                  ; No predecessors!
  %153 = load i32, i32* %l_20, align 4, !tbaa !1
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %l_20, align 4, !tbaa !1
  br label %141

; <label>:155                                     ; preds = %141
  br label %156

; <label>:156                                     ; preds = %155, %139
  store i32 0, i32* %3
  br label %157

; <label>:157                                     ; preds = %156, %144, %135
  %158 = bitcast i32* %l_23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i64* %l_18 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %cleanup.dest.9 = load i32, i32* %3
  switch i32 %cleanup.dest.9, label %165 [
    i32 0, label %160
    i32 13, label %161
  ]

; <label>:160                                     ; preds = %157
  br label %161

; <label>:161                                     ; preds = %160, %157
  %162 = load i32, i32* @g_3, align 4, !tbaa !1
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* @g_3, align 4, !tbaa !1
  br label %61

; <label>:164                                     ; preds = %61
  store i32 0, i32* %3
  br label %165

; <label>:165                                     ; preds = %164, %157, %59
  %166 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %l_1327 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i8** %l_1323 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i32* %l_1285 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i64* %l_1272 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast [6 x i32]* %l_1270 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %171) #1
  %172 = bitcast [1 x %struct.S0*]* %l_1251 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast i32* %l_1247 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %l_44 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %l_20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_17) #1
  %cleanup.dest.10 = load i32, i32* %3
  switch i32 %cleanup.dest.10, label %281 [
    i32 0, label %176
    i32 7, label %177
  ]

; <label>:176                                     ; preds = %165
  br label %177

; <label>:177                                     ; preds = %176, %165
  %178 = load i16, i16* %2, align 2, !tbaa !19
  %179 = sext i16 %178 to i32
  %180 = add nsw i32 %179, 1
  %181 = trunc i32 %180 to i16
  store i16 %181, i16* %2, align 2, !tbaa !19
  br label %25

; <label>:182                                     ; preds = %25
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %l_1342, i32 0, i64 0
  %184 = load i32, i32* %183, align 4, !tbaa !1
  %185 = add i32 %184, 1
  store i32 %185, i32* %183, align 4, !tbaa !1
  store i8 7, i8* @g_352, align 1, !tbaa !9
  br label %186

; <label>:186                                     ; preds = %202, %182
  %187 = load i8, i8* @g_352, align 1, !tbaa !9
  %188 = sext i8 %187 to i32
  %189 = icmp sgt i32 %188, 14
  br i1 %189, label %190, label %207

; <label>:190                                     ; preds = %186
  %191 = bitcast i64* %l_1347 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %191) #1
  store i64 -8740013102729562989, i64* %l_1347, align 8, !tbaa !7
  %192 = bitcast i32* %l_1348 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %192) #1
  store i32 1670973021, i32* %l_1348, align 4, !tbaa !1
  %193 = load i16, i16* %2, align 2, !tbaa !19
  %194 = sext i16 %193 to i64
  %195 = load i64, i64* %l_1347, align 8, !tbaa !7
  %196 = xor i64 %195, %194
  store i64 %196, i64* %l_1347, align 8, !tbaa !7
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %l_1348, align 4, !tbaa !1
  %198 = load i16, i16* %2, align 2, !tbaa !19
  %199 = sext i16 %198 to i32
  store i32 %199, i32* %1
  store i32 1, i32* %3
  %200 = bitcast i32* %l_1348 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i64* %l_1347 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  br label %281
                                                  ; No predecessors!
  %203 = load i8, i8* @g_352, align 1, !tbaa !9
  %204 = sext i8 %203 to i16
  %205 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %204, i16 signext 8)
  %206 = trunc i16 %205 to i8
  store i8 %206, i8* @g_352, align 1, !tbaa !9
  br label %186

; <label>:207                                     ; preds = %186
  store i16 0, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 2), align 2, !tbaa !14
  br label %208

; <label>:208                                     ; preds = %273, %207
  %209 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 2), align 2, !tbaa !14
  %210 = zext i16 %209 to i32
  %211 = icmp eq i32 %210, 20
  br i1 %211, label %212, label %278

; <label>:212                                     ; preds = %208
  %213 = bitcast i16* %l_1370 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %213) #1
  store i16 -4, i16* %l_1370, align 2, !tbaa !19
  %214 = load i16, i16* %2, align 2, !tbaa !19
  %215 = sext i16 %214 to i32
  %216 = load volatile i32*, i32** @g_476, align 8, !tbaa !5
  store i32 %215, i32* %216, align 4, !tbaa !1
  store i32 0, i32* @g_3, align 4, !tbaa !1
  br label %217

; <label>:217                                     ; preds = %268, %212
  %218 = load i32, i32* @g_3, align 4, !tbaa !1
  %219 = icmp ne i32 %218, 22
  br i1 %219, label %220, label %271

; <label>:220                                     ; preds = %217
  %221 = bitcast i32*** %l_1364 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %221) #1
  store i32** getelementptr inbounds ([9 x [9 x i32*]], [9 x [9 x i32*]]* @g_323, i32 0, i64 3, i64 1), i32*** %l_1364, align 8, !tbaa !5
  store i16 7, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 6), align 2, !tbaa !18
  br label %222

; <label>:222                                     ; preds = %259, %220
  %223 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 6), align 2, !tbaa !18
  %224 = zext i16 %223 to i32
  %225 = icmp sge i32 %224, 42
  br i1 %225, label %226, label %262

; <label>:226                                     ; preds = %222
  %227 = bitcast i32****** %l_1365 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %227) #1
  store i32***** null, i32****** %l_1365, align 8, !tbaa !5
  %228 = load i16, i16* %2, align 2, !tbaa !19
  %229 = sext i16 %228 to i32
  %230 = load i32**, i32*** %l_1364, align 8, !tbaa !5
  %231 = icmp ne i32** null, %230
  %232 = zext i1 %231 to i32
  %233 = sext i32 %232 to i64
  %234 = load i32*****, i32****** %l_1365, align 8, !tbaa !5
  %235 = icmp eq i32***** null, %234
  %236 = zext i1 %235 to i32
  %237 = sext i32 %236 to i64
  %238 = call i64 @safe_sub_func_int64_t_s_s(i64 %233, i64 %237)
  %239 = load i16, i16* %2, align 2, !tbaa !19
  %240 = sext i16 %239 to i32
  %241 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext -28, i32 7)
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %240, %242
  %244 = zext i1 %243 to i32
  %245 = trunc i32 %244 to i8
  %246 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext -46, i8 signext %245)
  %247 = sext i8 %246 to i64
  %248 = or i64 %238, %247
  %249 = load volatile i8*, i8** @g_275, align 8, !tbaa !5
  %250 = load volatile i8, i8* %249, align 1, !tbaa !9
  %251 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext 0, i8 zeroext %250)
  %252 = zext i8 %251 to i16
  %253 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %252, i16 signext -8762)
  %254 = sext i16 %253 to i32
  %255 = call i32 @safe_div_func_uint32_t_u_u(i32 %229, i32 %254)
  %256 = trunc i32 %255 to i16
  %257 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %256)
  store i16 %257, i16* %l_1370, align 2, !tbaa !19
  %258 = bitcast i32****** %l_1365 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  br label %259

; <label>:259                                     ; preds = %226
  %260 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 6), align 2, !tbaa !18
  %261 = add i16 %260, 1
  store i16 %261, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_143, i32 0, i32 6), align 2, !tbaa !18
  br label %222

; <label>:262                                     ; preds = %222
  %263 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_16, i32 0, i64 2
  %264 = load i32*, i32** %263, align 8, !tbaa !5
  %265 = load i32***, i32**** @g_964, align 8, !tbaa !5
  %266 = load i32**, i32*** %265, align 8, !tbaa !5
  store i32* %264, i32** %266, align 8, !tbaa !5
  %267 = bitcast i32*** %l_1364 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %267) #1
  br label %268

; <label>:268                                     ; preds = %262
  %269 = load i32, i32* @g_3, align 4, !tbaa !1
  %270 = call i32 @safe_add_func_uint32_t_u_u(i32 %269, i32 1)
  store i32 %270, i32* @g_3, align 4, !tbaa !1
  br label %217

; <label>:271                                     ; preds = %217
  %272 = bitcast i16* %l_1370 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %272) #1
  br label %273

; <label>:273                                     ; preds = %271
  %274 = load i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 2), align 2, !tbaa !14
  %275 = trunc i16 %274 to i8
  %276 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %275, i8 zeroext 6)
  %277 = zext i8 %276 to i16
  store i16 %277, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_52, i32 0, i32 2), align 2, !tbaa !14
  br label %208

; <label>:278                                     ; preds = %208
  %279 = load i64, i64* getelementptr inbounds ([3 x [9 x i64]], [3 x [9 x i64]]* @g_1371, i32 0, i64 0, i64 2), align 8, !tbaa !7
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %1
  store i32 1, i32* %3
  br label %281

; <label>:281                                     ; preds = %278, %190, %165
  %282 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %283 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #1
  %284 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %285 = bitcast [2 x i32]* %l_1342 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %285) #1
  %286 = bitcast i16* %l_1326 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %286) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1319) #1
  %287 = bitcast i64**** %l_1299 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #1
  %288 = bitcast [6 x [6 x [2 x i16]]]* %l_1277 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %288) #1
  %289 = bitcast [7 x i32*]* %l_16 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %289) #1
  %290 = load i32, i32* %1
  ret i32 %290
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
define internal zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !19
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5, %0
  %9 = load i16, i16* %1, align 2, !tbaa !19
  %10 = zext i16 %9 to i32
  br label %16

; <label>:11                                      ; preds = %5
  %12 = load i16, i16* %1, align 2, !tbaa !19
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
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !19
  store i16 %si2, i16* %2, align 2, !tbaa !19
  %3 = load i16, i16* %1, align 2, !tbaa !19
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !19
  %6 = sext i16 %5 to i32
  %7 = mul nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
define internal signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !19
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !19
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6, %0
  %10 = load i16, i16* %1, align 2, !tbaa !19
  %11 = sext i16 %10 to i32
  br label %17

; <label>:12                                      ; preds = %6
  %13 = load i16, i16* %1, align 2, !tbaa !19
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
define internal zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !19
  store i16 %ui2, i16* %2, align 2, !tbaa !19
  %3 = load i16, i16* %1, align 2, !tbaa !19
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !19
  %6 = zext i16 %5 to i32
  %7 = mul i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
define internal signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !19
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !19
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
  %13 = load i16, i16* %1, align 2, !tbaa !19
  %14 = sext i16 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 32767, %15
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %12, %9, %6, %0
  %19 = load i16, i16* %1, align 2, !tbaa !19
  %20 = sext i16 %19 to i32
  br label %26

; <label>:21                                      ; preds = %12
  %22 = load i16, i16* %1, align 2, !tbaa !19
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
define internal signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !19
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !19
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
  %13 = load i16, i16* %1, align 2, !tbaa !19
  %14 = sext i16 %13 to i32
  br label %20

; <label>:15                                      ; preds = %9
  %16 = load i16, i16* %1, align 2, !tbaa !19
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
define internal zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !19
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %14, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %5
  %9 = load i16, i16* %1, align 2, !tbaa !19
  %10 = zext i16 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 65535, %11
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %8, %5, %0
  %15 = load i16, i16* %1, align 2, !tbaa !19
  %16 = zext i16 %15 to i32
  br label %22

; <label>:17                                      ; preds = %8
  %18 = load i16, i16* %1, align 2, !tbaa !19
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
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !19
  store i16 %si2, i16* %2, align 2, !tbaa !19
  %3 = load i16, i16* %1, align 2, !tbaa !19
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !19
  %6 = sext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %si) #0 {
  %1 = alloca i16, align 2
  store i16 %si, i16* %1, align 2, !tbaa !19
  %2 = load i16, i16* %1, align 2, !tbaa !19
  %3 = sext i16 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i16
  ret i16 %5
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
!10 = !{!11, !2, i64 0}
!11 = !{!"S0", !2, i64 0, !2, i64 4, !12, i64 8, !2, i64 12, !8, i64 16, !12, i64 24, !12, i64 26}
!12 = !{!"short", !3, i64 0}
!13 = !{!11, !2, i64 4}
!14 = !{!11, !12, i64 8}
!15 = !{!11, !2, i64 12}
!16 = !{!11, !8, i64 16}
!17 = !{!11, !12, i64 24}
!18 = !{!11, !12, i64 26}
!19 = !{!12, !12, i64 0}
!20 = !{i64 0, i64 4, !1, i64 4, i64 4, !1, i64 8, i64 2, !19, i64 12, i64 4, !1, i64 16, i64 8, !7, i64 24, i64 2, !19, i64 26, i64 2, !19}
