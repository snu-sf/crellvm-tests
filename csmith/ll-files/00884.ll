; ModuleID = '00884.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i32 }
%union.U2 = type { i8* }
%union.U1 = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_7 = internal global [3 x [6 x i16]] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"g_7[i][j]\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_32 = internal global i32 3, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_32\00", align 1
@g_35 = internal global i8 -105, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"g_35\00", align 1
@g_39 = internal global i32 -4, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_39\00", align 1
@g_44 = internal global i32 -958746667, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_44\00", align 1
@g_46 = internal global %union.U0 { i32 -768473626 }, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"g_46.f0\00", align 1
@g_52 = internal global i32 1, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_52\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"g_94.f2\00", align 1
@g_121 = internal global i8 -102, align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"g_121\00", align 1
@g_130 = internal global i64 5894397841202863173, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"g_130\00", align 1
@g_146 = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"g_146\00", align 1
@g_152 = internal global i64 5, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"g_152\00", align 1
@g_169 = internal global i64 -6465878231924735319, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"g_169\00", align 1
@g_204 = internal global i8 -1, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"g_204\00", align 1
@g_255 = internal global i32 -1, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_255\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"g_271.f0\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"g_271.f1\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"g_271.f3\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"g_271.f4\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"g_272.f0\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"g_272.f1\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"g_272.f3\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"g_272.f4\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"g_276[i].f0\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"g_276[i].f1\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"g_276[i].f3\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"g_276[i].f4\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_278 = internal global [3 x [10 x [4 x i32]]] [[10 x [4 x i32]] [[4 x i32] [i32 -3, i32 1, i32 -9, i32 -2096418720], [4 x i32] [i32 3, i32 -517574494, i32 1, i32 1], [4 x i32] [i32 -1611344329, i32 -1611344329, i32 1, i32 2], [4 x i32] [i32 3, i32 -3, i32 -9, i32 -517574494], [4 x i32] [i32 3, i32 -1861385855, i32 -517574494, i32 -1861385855], [4 x i32] [i32 -517574494, i32 -1861385855, i32 3, i32 1], [4 x i32] [i32 -1861385855, i32 -3, i32 2, i32 -517574494], [4 x i32] [i32 -1611344329, i32 7, i32 7, i32 -1611344329], [4 x i32] [i32 -1611344329, i32 1, i32 2, i32 -3], [4 x i32] [i32 -1861385855, i32 -1611344329, i32 3, i32 -9]], [10 x [4 x i32]] [[4 x i32] [i32 -517574494, i32 -2096418720, i32 -517574494, i32 -9], [4 x i32] [i32 3, i32 -1611344329, i32 -1861385855, i32 -3], [4 x i32] [i32 2, i32 1, i32 -1611344329, i32 -1611344329], [4 x i32] [i32 7, i32 7, i32 -1611344329, i32 -517574494], [4 x i32] [i32 2, i32 -3, i32 -1861385855, i32 1], [4 x i32] [i32 3, i32 -1861385855, i32 -517574494, i32 -1861385855], [4 x i32] [i32 -517574494, i32 -1861385855, i32 3, i32 1], [4 x i32] [i32 -1861385855, i32 -3, i32 2, i32 -517574494], [4 x i32] [i32 -1611344329, i32 7, i32 7, i32 -1611344329], [4 x i32] [i32 -1611344329, i32 1, i32 2, i32 -3]], [10 x [4 x i32]] [[4 x i32] [i32 -1861385855, i32 -1611344329, i32 3, i32 -9], [4 x i32] [i32 -517574494, i32 -2096418720, i32 -517574494, i32 -9], [4 x i32] [i32 3, i32 -1611344329, i32 -1861385855, i32 -3], [4 x i32] [i32 2, i32 1, i32 -1611344329, i32 -1611344329], [4 x i32] [i32 7, i32 7, i32 -1611344329, i32 -517574494], [4 x i32] [i32 2, i32 -3, i32 -1861385855, i32 1], [4 x i32] [i32 3, i32 -1861385855, i32 -517574494, i32 -1861385855], [4 x i32] [i32 -517574494, i32 -1861385855, i32 3, i32 1], [4 x i32] [i32 -1861385855, i32 -3, i32 2, i32 -517574494], [4 x i32] [i32 -1611344329, i32 7, i32 7, i32 -1611344329]]], align 16
@.str.30 = private unnamed_addr constant [15 x i8] c"g_278[i][j][k]\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_286 = internal global i8 67, align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"g_286\00", align 1
@g_318 = internal global i8 -1, align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"g_318\00", align 1
@g_321 = internal global i64 -1, align 8
@.str.34 = private unnamed_addr constant [6 x i8] c"g_321\00", align 1
@g_427 = internal global i32 0, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"g_427\00", align 1
@g_430 = internal global i16 -28824, align 2
@.str.36 = private unnamed_addr constant [6 x i8] c"g_430\00", align 1
@g_433 = internal global i32 1235143768, align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"g_433\00", align 1
@g_435 = internal global i64 -3, align 8
@.str.38 = private unnamed_addr constant [6 x i8] c"g_435\00", align 1
@g_437 = internal global i16 5, align 2
@.str.39 = private unnamed_addr constant [6 x i8] c"g_437\00", align 1
@g_438 = internal global i32 0, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"g_438\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"g_445.f0\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"g_445.f1\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"g_445.f3\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"g_445.f4\00", align 1
@g_459 = internal global i32 6, align 4
@.str.45 = private unnamed_addr constant [6 x i8] c"g_459\00", align 1
@g_462 = internal global i32 -1, align 4
@.str.46 = private unnamed_addr constant [6 x i8] c"g_462\00", align 1
@g_463 = internal global i16 5, align 2
@.str.47 = private unnamed_addr constant [6 x i8] c"g_463\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"g_471.f0\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"g_471.f1\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"g_471.f3\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"g_471.f4\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"g_627\00", align 1
@g_670 = internal global i16 9, align 2
@.str.53 = private unnamed_addr constant [6 x i8] c"g_670\00", align 1
@g_694 = internal global i16 29191, align 2
@.str.54 = private unnamed_addr constant [6 x i8] c"g_694\00", align 1
@g_764 = internal global i32 -9, align 4
@.str.55 = private unnamed_addr constant [6 x i8] c"g_764\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"g_870[i].f0\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"g_870[i].f1\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"g_870[i].f3\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"g_870[i].f4\00", align 1
@g_969 = internal global i64 2482247859695796976, align 8
@.str.60 = private unnamed_addr constant [6 x i8] c"g_969\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"g_991.f0\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"g_991.f1\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"g_991.f3\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"g_991.f4\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"g_1001.f0\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"g_1001.f1\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"g_1001.f3\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"g_1001.f4\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"g_1202.f0\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"g_1202.f2\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_51 = private unnamed_addr constant [10 x i32*] [i32* @g_52, i32* @g_52, i32* @g_52, i32* @g_52, i32* @g_52, i32* @g_52, i32* @g_52, i32* @g_52, i32* @g_52, i32* @g_52], align 16
@g_34 = internal global i8* @g_35, align 8
@g_31 = internal global i32* @g_32, align 8
@g_479 = internal global i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [6 x i16]]* @g_7 to i8*), i64 32) to i16*), align 8
@g_912 = internal global i64** @g_913, align 8
@g_242 = internal global i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [6 x i16]]* @g_7 to i8*), i64 32) to i16*), align 8
@g_1125 = internal global i32*** @g_1126, align 8
@g_913 = internal global i64* @g_152, align 8
@func_10.l_50 = private unnamed_addr constant { i32, [4 x i8] } { i32 9, [4 x i8] undef }, align 8
@func_53.l_1206 = private unnamed_addr constant %union.U0 { i32 1428923607 }, align 4
@func_53.l_1223 = private unnamed_addr constant [6 x [5 x [8 x i32]]] [[5 x [8 x i32]] [[8 x i32] [i32 -8, i32 -8, i32 -8, i32 -8, i32 -1609635305, i32 -8, i32 -8, i32 -8], [8 x i32] [i32 -8, i32 -1609635305, i32 -1249540928, i32 -1249540928, i32 -1609635305, i32 -8, i32 -1609635305, i32 -1249540928], [8 x i32] [i32 -8, i32 -1609635305, i32 -8, i32 -8, i32 -8, i32 -8, i32 -1609635305, i32 -8], [8 x i32] [i32 1202464422, i32 -8, i32 -1249540928, i32 -8, i32 1202464422, i32 1202464422, i32 -8, i32 -1249540928], [8 x i32] [i32 1202464422, i32 1202464422, i32 -8, i32 -1249540928, i32 -8, i32 1202464422, i32 1202464422, i32 -8]], [5 x [8 x i32]] [[8 x i32] [i32 -8, i32 -8, i32 -8, i32 -8, i32 -1609635305, i32 -8, i32 -8, i32 -8], [8 x i32] [i32 -8, i32 -1609635305, i32 -1249540928, i32 -1249540928, i32 -1609635305, i32 -8, i32 -1609635305, i32 -1249540928], [8 x i32] [i32 -8, i32 -1609635305, i32 -8, i32 -8, i32 -8, i32 -8, i32 -1609635305, i32 -8], [8 x i32] [i32 1202464422, i32 -8, i32 -1249540928, i32 -8, i32 1202464422, i32 1202464422, i32 -8, i32 -1249540928], [8 x i32] [i32 1202464422, i32 1202464422, i32 -8, i32 -1249540928, i32 -8, i32 1202464422, i32 1202464422, i32 -8]], [5 x [8 x i32]] [[8 x i32] [i32 -8, i32 -8, i32 -8, i32 -8, i32 -1609635305, i32 -8, i32 -8, i32 -8], [8 x i32] [i32 -8, i32 -1609635305, i32 -1249540928, i32 -1249540928, i32 -1609635305, i32 -8, i32 -1609635305, i32 -1249540928], [8 x i32] [i32 -8, i32 -1609635305, i32 -8, i32 -8, i32 -8, i32 -8, i32 -1609635305, i32 -8], [8 x i32] [i32 1202464422, i32 -8, i32 -1249540928, i32 -8, i32 1202464422, i32 1202464422, i32 -8, i32 -1249540928], [8 x i32] [i32 1202464422, i32 1202464422, i32 -8, i32 -1249540928, i32 -8, i32 1202464422, i32 1202464422, i32 -8]], [5 x [8 x i32]] [[8 x i32] [i32 -8, i32 -8, i32 -8, i32 -8, i32 -1609635305, i32 -8, i32 -8, i32 -8], [8 x i32] [i32 -8, i32 -1609635305, i32 -1249540928, i32 -1249540928, i32 -1609635305, i32 -8, i32 -1609635305, i32 -1249540928], [8 x i32] [i32 -8, i32 -1609635305, i32 -8, i32 -8, i32 -8, i32 -8, i32 -1609635305, i32 -8], [8 x i32] [i32 1202464422, i32 -8, i32 -1249540928, i32 -8, i32 1202464422, i32 1202464422, i32 -8, i32 -1249540928], [8 x i32] [i32 1202464422, i32 1202464422, i32 -8, i32 -1249540928, i32 -8, i32 1202464422, i32 1202464422, i32 -8]], [5 x [8 x i32]] [[8 x i32] [i32 -8, i32 -8, i32 -8, i32 -8, i32 -1609635305, i32 -1249540928, i32 -8, i32 -8], [8 x i32] [i32 -8, i32 1202464422, i32 -1609635305, i32 -1609635305, i32 1202464422, i32 -8, i32 1202464422, i32 -1609635305], [8 x i32] [i32 -1249540928, i32 1202464422, i32 -1249540928, i32 -8, i32 -8, i32 -1249540928, i32 1202464422, i32 -1249540928], [8 x i32] [i32 -8, i32 -8, i32 -1609635305, i32 -8, i32 -8, i32 -8, i32 -8, i32 -1609635305], [8 x i32] [i32 -8, i32 -8, i32 -8, i32 -1609635305, i32 -8, i32 -8, i32 -8, i32 -8]], [5 x [8 x i32]] [[8 x i32] [i32 -1249540928, i32 -8, i32 -8, i32 -1249540928, i32 1202464422, i32 -1249540928, i32 -8, i32 -8], [8 x i32] [i32 -8, i32 1202464422, i32 -1609635305, i32 -1609635305, i32 1202464422, i32 -8, i32 1202464422, i32 -1609635305], [8 x i32] [i32 -1249540928, i32 1202464422, i32 -1249540928, i32 -8, i32 -8, i32 -1249540928, i32 1202464422, i32 -1249540928], [8 x i32] [i32 -8, i32 -8, i32 -1609635305, i32 -8, i32 -8, i32 -8, i32 -8, i32 -1609635305], [8 x i32] [i32 -8, i32 -8, i32 -8, i32 -1609635305, i32 -8, i32 -8, i32 -8, i32 -8]]], align 16
@g_473 = internal global [9 x [8 x i32*]] [[8 x i32*] [i32* null, i32* @g_44, i32* @g_427, i32* @g_427, i32* @g_44, i32* null, i32* @g_44, i32* @g_427], [8 x i32*] [i32* null, i32* @g_44, i32* null, i32* null, i32* null, i32* null, i32* @g_44, i32* null], [8 x i32*] [i32* @g_462, i32* null, i32* @g_427, i32* null, i32* @g_462, i32* @g_462, i32* null, i32* @g_427], [8 x i32*] [i32* @g_462, i32* @g_462, i32* null, i32* @g_427, i32* null, i32* @g_462, i32* @g_462, i32* null], [8 x i32*] [i32* null, i32* null, i32* null, i32* null, i32* @g_44, i32* null, i32* null, i32* null], [8 x i32*] [i32* null, i32* @g_44, i32* @g_427, i32* @g_427, i32* @g_44, i32* null, i32* @g_44, i32* @g_427], [8 x i32*] [i32* null, i32* @g_44, i32* null, i32* null, i32* null, i32* null, i32* @g_44, i32* null], [8 x i32*] [i32* @g_462, i32* null, i32* @g_427, i32* null, i32* @g_462, i32* @g_462, i32* null, i32* @g_427], [8 x i32*] [i32* @g_462, i32* @g_462, i32* null, i32* @g_427, i32* null, i32* @g_462, i32* @g_462, i32* null]], align 16
@g_168 = internal global i64* @g_169, align 8
@g_454 = internal global i8* @g_121, align 8
@g_699 = internal global i32* @g_52, align 8
@g_270 = internal global [9 x %union.U2*] [%union.U2* bitcast ({ i32, [4 x i8] }* @g_272 to %union.U2*), %union.U2* null, %union.U2* bitcast ({ i32, [4 x i8] }* @g_272 to %union.U2*), %union.U2* bitcast ({ i32, [4 x i8] }* @g_272 to %union.U2*), %union.U2* null, %union.U2* bitcast ({ i32, [4 x i8] }* @g_272 to %union.U2*), %union.U2* bitcast ({ i32, [4 x i8] }* @g_272 to %union.U2*), %union.U2* null, %union.U2* bitcast ({ i32, [4 x i8] }* @g_272 to %union.U2*)], align 16
@func_65.l_777 = private unnamed_addr constant { i32, [4 x i8] } { i32 730661395, [4 x i8] undef }, align 8
@func_65.l_813 = private unnamed_addr constant [10 x [4 x i32]] [[4 x i32] [i32 -32708155, i32 4, i32 4, i32 -32708155], [4 x i32] [i32 1, i32 1463385656, i32 0, i32 4], [4 x i32] [i32 1463385656, i32 1, i32 -1, i32 -170919453], [4 x i32] [i32 -1846787378, i32 1, i32 4, i32 -170919453], [4 x i32] [i32 -1525819311, i32 1, i32 -1525819311, i32 4], [4 x i32] [i32 -32708155, i32 1463385656, i32 -1238714211, i32 -32708155], [4 x i32] [i32 -1846787378, i32 4, i32 0, i32 1463385656], [4 x i32] [i32 4, i32 1, i32 0, i32 0], [4 x i32] [i32 -1846787378, i32 -1846787378, i32 -1238714211, i32 -170919453], [4 x i32] [i32 -32708155, i32 2, i32 -1525819311, i32 1463385656]], align 16
@func_65.l_850 = private unnamed_addr constant [7 x [4 x i8]] [[4 x i8] c"\00\FF\F6\FF", [4 x i8] c"\AC\03\00\F6", [4 x i8] c"\FF\03\03\FF", [4 x i8] c"\03\FF\AC\00", [4 x i8] c"\03\AC\03\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\AC\AC\F6\00"], align 16
@func_65.l_1012 = private unnamed_addr constant [8 x [4 x i64***]] [[4 x i64***] [i64*** @g_912, i64*** @g_912, i64*** @g_912, i64*** @g_912], [4 x i64***] [i64*** @g_912, i64*** null, i64*** null, i64*** @g_912], [4 x i64***] [i64*** null, i64*** @g_912, i64*** null, i64*** null], [4 x i64***] [i64*** @g_912, i64*** @g_912, i64*** @g_912, i64*** @g_912], [4 x i64***] [i64*** @g_912, i64*** null, i64*** null, i64*** @g_912], [4 x i64***] [i64*** null, i64*** @g_912, i64*** null, i64*** null], [4 x i64***] [i64*** @g_912, i64*** @g_912, i64*** @g_912, i64*** @g_912], [4 x i64***] [i64*** @g_912, i64*** null, i64*** null, i64*** @g_912]], align 16
@func_65.l_1122 = private unnamed_addr constant %union.U0 { i32 9 }, align 4
@g_781 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [8 x i32*]]* @g_473 to i8*), i64 192) to i32**), align 8
@func_65.l_807 = private unnamed_addr constant [7 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@func_65.l_851 = private unnamed_addr constant %union.U0 { i32 483650866 }, align 4
@g_310 = internal global %union.U0* @g_46, align 8
@func_65.l_812 = private unnamed_addr constant [10 x [1 x [1 x i32]]] [[1 x [1 x i32]] [[1 x i32] [i32 1]], [1 x [1 x i32]] [[1 x i32] [i32 1]], [1 x [1 x i32]] [[1 x i32] [i32 3]], [1 x [1 x i32]] [[1 x i32] [i32 1]], [1 x [1 x i32]] [[1 x i32] [i32 1]], [1 x [1 x i32]] [[1 x i32] [i32 3]], [1 x [1 x i32]] [[1 x i32] [i32 1]], [1 x [1 x i32]] [[1 x i32] [i32 1]], [1 x [1 x i32]] [[1 x i32] [i32 3]], [1 x [1 x i32]] [[1 x i32] [i32 1]]], align 16
@func_65.l_974 = private unnamed_addr constant [5 x i32] [i32 -522286842, i32 -522286842, i32 -522286842, i32 -522286842, i32 -522286842], align 16
@func_65.l_996 = private unnamed_addr constant { i32, [4 x i8] } { i32 1, [4 x i8] undef }, align 8
@g_869 = internal global %union.U2* bitcast (i8* getelementptr (i8, i8* bitcast (<{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }>* @g_870 to i8*), i64 24) to %union.U2*), align 8
@g_482 = internal global i16** @g_479, align 8
@g_1004 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [8 x i32*]]* @g_473 to i8*), i64 192) to i32**), align 8
@func_65.l_1044 = private unnamed_addr constant %union.U0 { i32 -945125073 }, align 4
@func_65.l_1091 = private unnamed_addr constant [7 x [5 x [6 x %union.U0]]] [[5 x [6 x %union.U0]] [[6 x %union.U0] [%union.U0 { i32 -2 }, %union.U0 { i32 -1 }, %union.U0 { i32 -489254243 }, %union.U0 { i32 3 }, %union.U0 zeroinitializer, %union.U0 { i32 1 }], [6 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 4 }, %union.U0 { i32 -977393541 }, %union.U0 { i32 -6 }, %union.U0 { i32 798802917 }, %union.U0 { i32 3 }], [6 x %union.U0] [%union.U0 { i32 9 }, %union.U0 { i32 1 }, %union.U0 { i32 -403729152 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 421297891 }], [6 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 -167456245 }, %union.U0 { i32 518003715 }, %union.U0 { i32 -1951898057 }, %union.U0 { i32 3 }, %union.U0 { i32 -6 }], [6 x %union.U0] [%union.U0 { i32 -167456245 }, %union.U0 { i32 421297891 }, %union.U0 { i32 -5 }, %union.U0 { i32 -5 }, %union.U0 { i32 421297891 }, %union.U0 { i32 -167456245 }]], [5 x [6 x %union.U0]] [[6 x %union.U0] [%union.U0 { i32 -403729152 }, %union.U0 { i32 -2 }, %union.U0 { i32 -1 }, %union.U0 { i32 1 }, %union.U0 zeroinitializer, %union.U0 { i32 9 }], [6 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 -977393541 }, %union.U0 { i32 1709741847 }, %union.U0 { i32 2118550795 }, %union.U0 { i32 -9 }, %union.U0 { i32 412298684 }], [6 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 -1 }, %union.U0 { i32 2118550795 }, %union.U0 { i32 1 }, %union.U0 zeroinitializer, %union.U0 { i32 3 }], [6 x %union.U0] [%union.U0 { i32 -403729152 }, %union.U0 zeroinitializer, %union.U0 { i32 1810094313 }, %union.U0 { i32 -5 }, %union.U0 { i32 2118550795 }, %union.U0 { i32 3 }], [6 x %union.U0] [%union.U0 { i32 -167456245 }, %union.U0 { i32 -403729152 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1951898057 }, %union.U0 { i32 4 }, %union.U0 { i32 1324878623 }]], [5 x [6 x %union.U0]] [[6 x %union.U0] [%union.U0 { i32 1 }, %union.U0 zeroinitializer, %union.U0 { i32 -3 }, %union.U0 { i32 -1 }, %union.U0 { i32 1324878623 }, %union.U0 { i32 -5 }], [6 x %union.U0] [%union.U0 { i32 9 }, %union.U0 { i32 421297891 }, %union.U0 { i32 -222766283 }, %union.U0 { i32 -6 }, %union.U0 zeroinitializer, %union.U0 { i32 -212547696 }], [6 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 -1951898057 }, %union.U0 { i32 -1 }, %union.U0 { i32 3 }, %union.U0 { i32 -1 }, %union.U0 { i32 -1951898057 }], [6 x %union.U0] [%union.U0 { i32 -2 }, %union.U0 { i32 -1605483455 }, %union.U0 { i32 2 }, %union.U0 { i32 2118550795 }, %union.U0 { i32 -3 }, %union.U0 { i32 -222766283 }], [6 x %union.U0] [%union.U0 { i32 4 }, %union.U0 { i32 -248217570 }, %union.U0 { i32 -9 }, %union.U0 { i32 421297891 }, %union.U0 zeroinitializer, %union.U0 zeroinitializer]], [5 x [6 x %union.U0]] [[6 x %union.U0] [%union.U0 { i32 -1605483455 }, %union.U0 { i32 -248217570 }, %union.U0 { i32 1 }, %union.U0 { i32 1709741847 }, %union.U0 { i32 -3 }, %union.U0 { i32 3 }], [6 x %union.U0] [%union.U0 zeroinitializer, %union.U0 { i32 -1605483455 }, %union.U0 { i32 9 }, %union.U0 { i32 9 }, %union.U0 { i32 -1 }, %union.U0 { i32 1 }], [6 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 -1951898057 }, %union.U0 { i32 798802917 }, %union.U0 zeroinitializer, %union.U0 zeroinitializer, %union.U0 { i32 1709741847 }], [6 x %union.U0] [%union.U0 { i32 -1 }, %union.U0 { i32 421297891 }, %union.U0 { i32 -6 }, %union.U0 { i32 2 }, %union.U0 { i32 1324878623 }, %union.U0 zeroinitializer], [6 x %union.U0] [%union.U0 { i32 -1 }, %union.U0 zeroinitializer, %union.U0 { i32 -1 }, %union.U0 { i32 -6 }, %union.U0 zeroinitializer, %union.U0 { i32 1810094313 }]], [5 x [6 x %union.U0]] [[6 x %union.U0] [%union.U0 { i32 -1 }, %union.U0 { i32 3 }, %union.U0 { i32 -3 }, %union.U0 { i32 -248217570 }, %union.U0 { i32 -248217570 }, %union.U0 { i32 -3 }], [6 x %union.U0] [%union.U0 { i32 1564456506 }, %union.U0 { i32 1564456506 }, %union.U0 { i32 -1 }, %union.U0 { i32 1709741847 }, %union.U0 { i32 -1 }, %union.U0 { i32 1178755960 }], [6 x %union.U0] [%union.U0 { i32 1324878623 }, %union.U0 zeroinitializer, %union.U0 { i32 -1 }, %union.U0 { i32 -3 }, %union.U0 { i32 1 }, %union.U0 { i32 -1 }], [6 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 1324878623 }, %union.U0 { i32 -1 }, %union.U0 { i32 9 }, %union.U0 { i32 1564456506 }, %union.U0 { i32 1178755960 }], [6 x %union.U0] [%union.U0 { i32 2 }, %union.U0 { i32 9 }, %union.U0 { i32 -1 }, %union.U0 { i32 -403729152 }, %union.U0 { i32 412298684 }, %union.U0 { i32 -3 }]], [5 x [6 x %union.U0]] [[6 x %union.U0] [%union.U0 { i32 -403729152 }, %union.U0 { i32 412298684 }, %union.U0 { i32 -3 }, %union.U0 { i32 -489254243 }, %union.U0 { i32 -222766283 }, %union.U0 { i32 1810094313 }], [6 x %union.U0] [%union.U0 zeroinitializer, %union.U0 { i32 -1 }, %union.U0 { i32 -1 }, %union.U0 { i32 1178755960 }, %union.U0 zeroinitializer, %union.U0 { i32 -977393541 }], [6 x %union.U0] [%union.U0 zeroinitializer, %union.U0 { i32 421297891 }, %union.U0 { i32 -9 }, %union.U0 { i32 -248217570 }, %union.U0 { i32 4 }, %union.U0 { i32 798802917 }], [6 x %union.U0] [%union.U0 { i32 154282028 }, %union.U0 zeroinitializer, %union.U0 { i32 4 }, %union.U0 { i32 2 }, %union.U0 { i32 -1 }, %union.U0 { i32 2 }], [6 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 -1 }, %union.U0 { i32 1 }, %union.U0 { i32 518003715 }, %union.U0 zeroinitializer, %union.U0 { i32 -1 }]], [5 x [6 x %union.U0]] [[6 x %union.U0] [%union.U0 { i32 9 }, %union.U0 { i32 1 }, %union.U0 { i32 421297891 }, %union.U0 { i32 -1 }, %union.U0 { i32 -5 }, %union.U0 { i32 -6 }], [6 x %union.U0] [%union.U0 { i32 2 }, %union.U0 { i32 -403729152 }, %union.U0 { i32 1 }, %union.U0 { i32 -1 }, %union.U0 { i32 1178755960 }, %union.U0 { i32 518003715 }], [6 x %union.U0] [%union.U0 { i32 9 }, %union.U0 { i32 412298684 }, %union.U0 { i32 2118550795 }, %union.U0 { i32 518003715 }, %union.U0 { i32 2 }, %union.U0 { i32 1 }], [6 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 -1605483455 }, %union.U0 { i32 -1 }, %union.U0 { i32 2 }, %union.U0 { i32 -9 }, %union.U0 { i32 -403729152 }], [6 x %union.U0] [%union.U0 { i32 154282028 }, %union.U0 { i32 1 }, %union.U0 { i32 518003715 }, %union.U0 { i32 -248217570 }, %union.U0 { i32 -2 }, %union.U0 { i32 3 }]]], align 16
@g_1050 = internal global %union.U1** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x %union.U1*]* @g_1051 to i8*), i64 32) to %union.U1**), align 8
@func_65.l_1087 = private unnamed_addr constant %union.U0 { i32 1170171109 }, align 4
@func_65.l_1118 = private unnamed_addr constant [4 x [10 x i32]] [[10 x i32] [i32 944879497, i32 894347794, i32 -1525307034, i32 -1, i32 -1525307034, i32 894347794, i32 944879497, i32 -1525307034, i32 -8, i32 -4], [10 x i32] [i32 894347794, i32 944879497, i32 -1525307034, i32 -8, i32 -4, i32 894347794, i32 894347794, i32 -4, i32 -8, i32 -1525307034], [10 x i32] [i32 944879497, i32 944879497, i32 1200547360, i32 -1, i32 -4, i32 -5, i32 944879497, i32 -4, i32 234799305, i32 -4], [10 x i32] [i32 944879497, i32 894347794, i32 -1525307034, i32 -1, i32 -1525307034, i32 894347794, i32 944879497, i32 -1525307034, i32 -8, i32 -4]], align 16
@g_241 = internal global i16** @g_242, align 8
@func_65.l_1161 = private unnamed_addr constant [2 x [7 x i32]] [[7 x i32] [i32 -94726884, i32 -94726884, i32 -94726884, i32 -94726884, i32 -94726884, i32 -94726884, i32 -94726884], [7 x i32] [i32 -99673355, i32 0, i32 -99673355, i32 0, i32 -99673355, i32 0, i32 -99673355]], align 16
@func_65.l_1137 = private unnamed_addr constant [5 x [5 x i64*]] [[5 x i64*] [i64* @g_130, i64* null, i64* @g_130, i64* @g_130, i64* @g_130], [5 x i64*] [i64* @g_130, i64* @g_130, i64* @g_130, i64* @g_130, i64* @g_130], [5 x i64*] [i64* @g_130, i64* null, i64* @g_130, i64* @g_130, i64* @g_130], [5 x i64*] [i64* @g_130, i64* @g_130, i64* @g_130, i64* @g_130, i64* @g_130], [5 x i64*] [i64* @g_130, i64* null, i64* @g_130, i64* @g_130, i64* @g_130]], align 16
@g_1123 = internal global i32**** null, align 8
@g_1124 = internal global i32**** @g_1125, align 8
@g_1126 = internal global i32** @g_699, align 8
@g_478 = internal global i16** @g_479, align 8
@func_65.l_1184 = private unnamed_addr constant { i32, [4 x i8] } { i32 1, [4 x i8] undef }, align 8
@g_1051 = internal global [6 x %union.U1*] [%union.U1* bitcast ({ i32, [4 x i8] }* @g_94 to %union.U1*), %union.U1* bitcast ({ i32, [4 x i8] }* @g_94 to %union.U1*), %union.U1* bitcast ({ i32, [4 x i8] }* @g_94 to %union.U1*), %union.U1* bitcast ({ i32, [4 x i8] }* @g_94 to %union.U1*), %union.U1* bitcast ({ i32, [4 x i8] }* @g_94 to %union.U1*), %union.U1* bitcast ({ i32, [4 x i8] }* @g_94 to %union.U1*)], align 16
@func_74.l_93 = internal constant [8 x [5 x i32*]] [[5 x i32*] [i32* @g_44, i32* @g_39, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0)], [5 x i32*] [i32* @g_32, i32* @g_32, i32* null, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), i32* @g_39], [5 x i32*] [i32* @g_39, i32* @g_44, i32* @g_44, i32* @g_39, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0)], [5 x i32*] [i32* @g_32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), i32* null, i32* null, i32* @g_32], [5 x i32*] [i32* @g_44, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), i32* @g_44, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0)], [5 x i32*] [i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), i32* @g_39, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), i32* null, i32* @g_32], [5 x i32*] [i32* @g_44, i32* @g_44, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), i32* @g_44, i32* @g_44], [5 x i32*] [i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), i32* @g_32, i32* @g_39, i32* @g_32, i32* @g_39]], align 16
@func_74.l_95 = private unnamed_addr constant [8 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [6 x i16]]* @g_7 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [6 x i16]]* @g_7 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [6 x i16]]* @g_7 to i8*), i64 32) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [6 x i16]]* @g_7 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [6 x i16]]* @g_7 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [6 x i16]]* @g_7 to i8*), i64 32) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [6 x i16]]* @g_7 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [6 x i16]]* @g_7 to i8*), i64 10) to i16*)], align 16
@func_74.l_197 = internal constant [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], align 16
@func_74.l_556 = private unnamed_addr constant [8 x i8] c"rrrrrrrr", align 1
@func_74.l_681 = internal constant [2 x i8] c"\FF\FF", align 1
@g_87 = internal constant i32** null, align 8
@g_222 = internal global i64* @g_130, align 8
@g_238 = internal global %union.U2* null, align 8
@func_74.l_337 = internal constant %union.U0 { i32 892277115 }, align 4
@func_74.l_408 = internal constant [4 x [3 x [1 x i64]]] [[3 x [1 x i64]] [[1 x i64] [i64 3], [1 x i64] [i64 -752158179544142901], [1 x i64] [i64 -8395644133215562726]], [3 x [1 x i64]] [[1 x i64] [i64 -8395644133215562726], [1 x i64] [i64 -752158179544142901], [1 x i64] [i64 3]], [3 x [1 x i64]] [[1 x i64] [i64 -752158179544142901], [1 x i64] [i64 -8395644133215562726], [1 x i64] [i64 -8395644133215562726]], [3 x [1 x i64]] [[1 x i64] [i64 -752158179544142901], [1 x i64] [i64 3], [1 x i64] [i64 -752158179544142901]]], align 16
@func_74.l_416 = private unnamed_addr constant %union.U0 { i32 1934406630 }, align 4
@func_74.l_417 = private unnamed_addr constant [8 x i8*] [i8* @g_204, i8* @g_286, i8* @g_204, i8* @g_204, i8* @g_286, i8* @g_204, i8* @g_204, i8* @g_286], align 16
@g_339 = internal global %union.U0** @g_340, align 8
@func_74.l_557 = private unnamed_addr constant [4 x [10 x i8]] [[10 x i8] c"\ED\A4\FF\F9\01\01\F9\FF\A4\ED", [10 x i8] c"\01\F9\FF\A4\ED\01\A42\A4\01", [10 x i8] c"\ED\F9\06\F9\ED\FE\F92\FF\ED", [10 x i8] c"\ED\A4\FF\F9\01\01\F9\FF\A4\ED"], align 16
@func_74.l_744 = private unnamed_addr constant [9 x i32] [i32 -2038997086, i32 -731931259, i32 -2038997086, i32 -2038997086, i32 -731931259, i32 -2038997086, i32 -2038997086, i32 -731931259, i32 -2038997086], align 16
@func_81.l_117 = internal constant %union.U0 { i32 -6 }, align 4
@g_340 = internal global %union.U0* null, align 8
@.str.71 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_94 = internal global { i32, [4 x i8] } { i32 881679496, [4 x i8] undef }, align 8
@g_271 = internal constant { i32, [4 x i8] } { i32 5, [4 x i8] undef }, align 8
@g_272 = internal global { i32, [4 x i8] } { i32 -1, [4 x i8] undef }, align 8
@g_276 = internal constant <{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }> <{ { i32, [4 x i8] } { i32 -1211114379, [4 x i8] undef }, { i32, [4 x i8] } { i32 -1211114379, [4 x i8] undef }, { i32, [4 x i8] } { i32 -1211114379, [4 x i8] undef } }>, align 16
@g_445 = internal global { i32, [4 x i8] } { i32 -301572061, [4 x i8] undef }, align 8
@g_471 = internal global { i32, [4 x i8] } { i32 681028311, [4 x i8] undef }, align 8
@g_870 = internal global <{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }> <{ { i32, [4 x i8] } { i32 -359785423, [4 x i8] undef }, { i32, [4 x i8] } { i32 -359785423, [4 x i8] undef }, { i32, [4 x i8] } { i32 -359785423, [4 x i8] undef }, { i32, [4 x i8] } { i32 -359785423, [4 x i8] undef } }>, align 16
@g_991 = internal global { i32, [4 x i8] } { i32 1, [4 x i8] undef }, align 8
@g_1001 = internal global { i32, [4 x i8] } { i32 -1, [4 x i8] undef }, align 8
@g_1202 = internal global { i32, [4 x i8] } { i32 44790295, [4 x i8] undef }, align 8
@.str.72 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call i64 @func_1()
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %119, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 3
  br i1 %93, label %94, label %122

; <label>:94                                      ; preds = %91
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:95                                      ; preds = %115, %94
  %96 = load i32, i32* %j, align 4, !tbaa !1
  %97 = icmp slt i32 %96, 6
  br i1 %97, label %98, label %118

; <label>:98                                      ; preds = %95
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 %102
  %104 = getelementptr inbounds [6 x i16], [6 x i16]* %103, i32 0, i64 %100
  %105 = load i16, i16* %104, align 2, !tbaa !10
  %106 = zext i16 %105 to i64
  %107 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 %107)
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

; <label>:110                                     ; preds = %98
  %111 = load i32, i32* %i, align 4, !tbaa !1
  %112 = load i32, i32* %j, align 4, !tbaa !1
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %111, i32 %112)
  br label %114

; <label>:114                                     ; preds = %110, %98
  br label %115

; <label>:115                                     ; preds = %114
  %116 = load i32, i32* %j, align 4, !tbaa !1
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:118                                     ; preds = %95
  br label %119

; <label>:119                                     ; preds = %118
  %120 = load i32, i32* %i, align 4, !tbaa !1
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:122                                     ; preds = %91
  %123 = load i32, i32* @g_32, align 4, !tbaa !1
  %124 = sext i32 %123 to i64
  %125 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %125)
  %126 = load i8, i8* @g_35, align 1, !tbaa !9
  %127 = sext i8 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %128)
  %129 = load i32, i32* @g_39, align 4, !tbaa !1
  %130 = sext i32 %129 to i64
  %131 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %131)
  %132 = load i32, i32* @g_44, align 4, !tbaa !1
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %134)
  %135 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), align 4, !tbaa !1
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %137)
  %138 = load i32, i32* @g_52, align 4, !tbaa !1
  %139 = sext i32 %138 to i64
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %140)
  %141 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_94 to i16*), align 2, !tbaa !10
  %142 = sext i16 %141 to i64
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %143)
  %144 = load i8, i8* @g_121, align 1, !tbaa !9
  %145 = zext i8 %144 to i64
  %146 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %146)
  %147 = load i64, i64* @g_130, align 8, !tbaa !7
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %148)
  %149 = load i32, i32* @g_146, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %151)
  %152 = load i64, i64* @g_152, align 8, !tbaa !7
  %153 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %153)
  %154 = load volatile i64, i64* @g_169, align 8, !tbaa !7
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %155)
  %156 = load i8, i8* @g_204, align 1, !tbaa !9
  %157 = sext i8 %156 to i64
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %158)
  %159 = load i32, i32* @g_255, align 4, !tbaa !1
  %160 = zext i32 %159 to i64
  %161 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %161)
  %162 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_271, i32 0, i32 0), align 4, !tbaa !1
  %163 = zext i32 %162 to i64
  %164 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %164)
  %165 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_271, i32 0, i32 0), align 4, !tbaa !1
  %166 = sext i32 %165 to i64
  %167 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %167)
  %168 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_271, i32 0, i32 0), align 4, !tbaa !1
  %169 = sext i32 %168 to i64
  %170 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %170)
  %171 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_271, i32 0, i32 0), align 8
  %172 = and i32 %171, 67108863
  %173 = zext i32 %172 to i64
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %174)
  %175 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_272, i32 0, i32 0), align 4, !tbaa !1
  %176 = zext i32 %175 to i64
  %177 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %177)
  %178 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_272, i32 0, i32 0), align 4, !tbaa !1
  %179 = sext i32 %178 to i64
  %180 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %179, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %180)
  %181 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_272, i32 0, i32 0), align 4, !tbaa !1
  %182 = sext i32 %181 to i64
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %183)
  %184 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_272, i32 0, i32 0), align 8
  %185 = and i32 %184, 67108863
  %186 = zext i32 %185 to i64
  %187 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %187)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %188

; <label>:188                                     ; preds = %227, %122
  %189 = load i32, i32* %i, align 4, !tbaa !1
  %190 = icmp slt i32 %189, 3
  br i1 %190, label %191, label %230

; <label>:191                                     ; preds = %188
  %192 = load i32, i32* %i, align 4, !tbaa !1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [3 x %union.U2], [3 x %union.U2]* bitcast (<{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }>* @g_276 to [3 x %union.U2]*), i32 0, i64 %193
  %195 = bitcast %union.U2* %194 to i32*
  %196 = load volatile i32, i32* %195, align 4, !tbaa !1
  %197 = zext i32 %196 to i64
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %197, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 %198)
  %199 = load i32, i32* %i, align 4, !tbaa !1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [3 x %union.U2], [3 x %union.U2]* bitcast (<{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }>* @g_276 to [3 x %union.U2]*), i32 0, i64 %200
  %202 = bitcast %union.U2* %201 to i32*
  %203 = load volatile i32, i32* %202, align 4, !tbaa !1
  %204 = sext i32 %203 to i64
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i32 %205)
  %206 = load i32, i32* %i, align 4, !tbaa !1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [3 x %union.U2], [3 x %union.U2]* bitcast (<{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }>* @g_276 to [3 x %union.U2]*), i32 0, i64 %207
  %209 = bitcast %union.U2* %208 to i32*
  %210 = load volatile i32, i32* %209, align 4, !tbaa !1
  %211 = sext i32 %210 to i64
  %212 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %211, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 %212)
  %213 = load i32, i32* %i, align 4, !tbaa !1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [3 x %union.U2], [3 x %union.U2]* bitcast (<{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }>* @g_276 to [3 x %union.U2]*), i32 0, i64 %214
  %216 = bitcast %union.U2* %215 to i32*
  %217 = load i32, i32* %216, align 8
  %218 = and i32 %217, 67108863
  %219 = zext i32 %218 to i64
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %219, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 %220)
  %221 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

; <label>:223                                     ; preds = %191
  %224 = load i32, i32* %i, align 4, !tbaa !1
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 %224)
  br label %226

; <label>:226                                     ; preds = %223, %191
  br label %227

; <label>:227                                     ; preds = %226
  %228 = load i32, i32* %i, align 4, !tbaa !1
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %i, align 4, !tbaa !1
  br label %188

; <label>:230                                     ; preds = %188
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %231

; <label>:231                                     ; preds = %271, %230
  %232 = load i32, i32* %i, align 4, !tbaa !1
  %233 = icmp slt i32 %232, 3
  br i1 %233, label %234, label %274

; <label>:234                                     ; preds = %231
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %235

; <label>:235                                     ; preds = %267, %234
  %236 = load i32, i32* %j, align 4, !tbaa !1
  %237 = icmp slt i32 %236, 10
  br i1 %237, label %238, label %270

; <label>:238                                     ; preds = %235
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %239

; <label>:239                                     ; preds = %263, %238
  %240 = load i32, i32* %k, align 4, !tbaa !1
  %241 = icmp slt i32 %240, 4
  br i1 %241, label %242, label %266

; <label>:242                                     ; preds = %239
  %243 = load i32, i32* %k, align 4, !tbaa !1
  %244 = sext i32 %243 to i64
  %245 = load i32, i32* %j, align 4, !tbaa !1
  %246 = sext i32 %245 to i64
  %247 = load i32, i32* %i, align 4, !tbaa !1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [3 x [10 x [4 x i32]]], [3 x [10 x [4 x i32]]]* @g_278, i32 0, i64 %248
  %250 = getelementptr inbounds [10 x [4 x i32]], [10 x [4 x i32]]* %249, i32 0, i64 %246
  %251 = getelementptr inbounds [4 x i32], [4 x i32]* %250, i32 0, i64 %244
  %252 = load i32, i32* %251, align 4, !tbaa !1
  %253 = sext i32 %252 to i64
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i32 %254)
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

; <label>:257                                     ; preds = %242
  %258 = load i32, i32* %i, align 4, !tbaa !1
  %259 = load i32, i32* %j, align 4, !tbaa !1
  %260 = load i32, i32* %k, align 4, !tbaa !1
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), i32 %258, i32 %259, i32 %260)
  br label %262

; <label>:262                                     ; preds = %257, %242
  br label %263

; <label>:263                                     ; preds = %262
  %264 = load i32, i32* %k, align 4, !tbaa !1
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %k, align 4, !tbaa !1
  br label %239

; <label>:266                                     ; preds = %239
  br label %267

; <label>:267                                     ; preds = %266
  %268 = load i32, i32* %j, align 4, !tbaa !1
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %j, align 4, !tbaa !1
  br label %235

; <label>:270                                     ; preds = %235
  br label %271

; <label>:271                                     ; preds = %270
  %272 = load i32, i32* %i, align 4, !tbaa !1
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %i, align 4, !tbaa !1
  br label %231

; <label>:274                                     ; preds = %231
  %275 = load i8, i8* @g_286, align 1, !tbaa !9
  %276 = sext i8 %275 to i64
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %277)
  %278 = load i8, i8* @g_318, align 1, !tbaa !9
  %279 = zext i8 %278 to i64
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %280)
  %281 = load i64, i64* @g_321, align 8, !tbaa !7
  %282 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %281, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %282)
  %283 = load i32, i32* @g_427, align 4, !tbaa !1
  %284 = sext i32 %283 to i64
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %284, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %285)
  %286 = load i16, i16* @g_430, align 2, !tbaa !10
  %287 = sext i16 %286 to i64
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %287, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %288)
  %289 = load i32, i32* @g_433, align 4, !tbaa !1
  %290 = sext i32 %289 to i64
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %290, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %291)
  %292 = load i64, i64* @g_435, align 8, !tbaa !7
  %293 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %293)
  %294 = load i16, i16* @g_437, align 2, !tbaa !10
  %295 = sext i16 %294 to i64
  %296 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %295, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %296)
  %297 = load i32, i32* @g_438, align 4, !tbaa !1
  %298 = zext i32 %297 to i64
  %299 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %298, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %299)
  %300 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_445, i32 0, i32 0), align 4, !tbaa !1
  %301 = zext i32 %300 to i64
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %301, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %302)
  %303 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_445, i32 0, i32 0), align 4, !tbaa !1
  %304 = sext i32 %303 to i64
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %304, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 %305)
  %306 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_445, i32 0, i32 0), align 4, !tbaa !1
  %307 = sext i32 %306 to i64
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %308)
  %309 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_445, i32 0, i32 0), align 8
  %310 = and i32 %309, 67108863
  %311 = zext i32 %310 to i64
  %312 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %311, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %312)
  %313 = load i32, i32* @g_459, align 4, !tbaa !1
  %314 = sext i32 %313 to i64
  %315 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %314, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %315)
  %316 = load i32, i32* @g_462, align 4, !tbaa !1
  %317 = sext i32 %316 to i64
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %317, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %318)
  %319 = load i16, i16* @g_463, align 2, !tbaa !10
  %320 = zext i16 %319 to i64
  %321 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %320, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 %321)
  %322 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_471, i32 0, i32 0), align 4, !tbaa !1
  %323 = zext i32 %322 to i64
  %324 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %323, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 %324)
  %325 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_471, i32 0, i32 0), align 4, !tbaa !1
  %326 = sext i32 %325 to i64
  %327 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %326, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 %327)
  %328 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_471, i32 0, i32 0), align 4, !tbaa !1
  %329 = sext i32 %328 to i64
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 %330)
  %331 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_471, i32 0, i32 0), align 8
  %332 = and i32 %331, 67108863
  %333 = zext i32 %332 to i64
  %334 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %333, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %334)
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1546199391, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 %335)
  %336 = load i16, i16* @g_670, align 2, !tbaa !10
  %337 = sext i16 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 %338)
  %339 = load i16, i16* @g_694, align 2, !tbaa !10
  %340 = sext i16 %339 to i64
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32 %341)
  %342 = load i32, i32* @g_764, align 4, !tbaa !1
  %343 = sext i32 %342 to i64
  %344 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %343, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 %344)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %345

; <label>:345                                     ; preds = %384, %274
  %346 = load i32, i32* %i, align 4, !tbaa !1
  %347 = icmp slt i32 %346, 4
  br i1 %347, label %348, label %387

; <label>:348                                     ; preds = %345
  %349 = load i32, i32* %i, align 4, !tbaa !1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [4 x %union.U2], [4 x %union.U2]* bitcast (<{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }>* @g_870 to [4 x %union.U2]*), i32 0, i64 %350
  %352 = bitcast %union.U2* %351 to i32*
  %353 = load volatile i32, i32* %352, align 4, !tbaa !1
  %354 = zext i32 %353 to i64
  %355 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %354, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i32 %355)
  %356 = load i32, i32* %i, align 4, !tbaa !1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [4 x %union.U2], [4 x %union.U2]* bitcast (<{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }>* @g_870 to [4 x %union.U2]*), i32 0, i64 %357
  %359 = bitcast %union.U2* %358 to i32*
  %360 = load volatile i32, i32* %359, align 4, !tbaa !1
  %361 = sext i32 %360 to i64
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %361, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 %362)
  %363 = load i32, i32* %i, align 4, !tbaa !1
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [4 x %union.U2], [4 x %union.U2]* bitcast (<{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }>* @g_870 to [4 x %union.U2]*), i32 0, i64 %364
  %366 = bitcast %union.U2* %365 to i32*
  %367 = load volatile i32, i32* %366, align 4, !tbaa !1
  %368 = sext i32 %367 to i64
  %369 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %368, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 %369)
  %370 = load i32, i32* %i, align 4, !tbaa !1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [4 x %union.U2], [4 x %union.U2]* bitcast (<{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }>* @g_870 to [4 x %union.U2]*), i32 0, i64 %371
  %373 = bitcast %union.U2* %372 to i32*
  %374 = load i32, i32* %373, align 8
  %375 = and i32 %374, 67108863
  %376 = zext i32 %375 to i64
  %377 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %376, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0), i32 %377)
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

; <label>:380                                     ; preds = %348
  %381 = load i32, i32* %i, align 4, !tbaa !1
  %382 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 %381)
  br label %383

; <label>:383                                     ; preds = %380, %348
  br label %384

; <label>:384                                     ; preds = %383
  %385 = load i32, i32* %i, align 4, !tbaa !1
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %i, align 4, !tbaa !1
  br label %345

; <label>:387                                     ; preds = %345
  %388 = load i64, i64* @g_969, align 8, !tbaa !7
  %389 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %388, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 %389)
  %390 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_991, i32 0, i32 0), align 4, !tbaa !1
  %391 = zext i32 %390 to i64
  %392 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %391, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i32 %392)
  %393 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_991, i32 0, i32 0), align 4, !tbaa !1
  %394 = sext i32 %393 to i64
  %395 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %394, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i32 %395)
  %396 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_991, i32 0, i32 0), align 4, !tbaa !1
  %397 = sext i32 %396 to i64
  %398 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %397, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 %398)
  %399 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_991, i32 0, i32 0), align 8
  %400 = and i32 %399, 67108863
  %401 = zext i32 %400 to i64
  %402 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %401, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i32 %402)
  %403 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1001, i32 0, i32 0), align 4, !tbaa !1
  %404 = zext i32 %403 to i64
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %404, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 %405)
  %406 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1001, i32 0, i32 0), align 4, !tbaa !1
  %407 = sext i32 %406 to i64
  %408 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %407, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 %408)
  %409 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1001, i32 0, i32 0), align 4, !tbaa !1
  %410 = sext i32 %409 to i64
  %411 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %410, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 %411)
  %412 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1001, i32 0, i32 0), align 8
  %413 = and i32 %412, 67108863
  %414 = zext i32 %413 to i64
  %415 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %414, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i32 %415)
  %416 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1202, i32 0, i32 0), align 4, !tbaa !1
  %417 = zext i32 %416 to i64
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %417, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 %418)
  %419 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_1202 to i16*), align 2, !tbaa !10
  %420 = sext i16 %419 to i64
  %421 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %420, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 %421)
  %422 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %423 = zext i32 %422 to i64
  %424 = xor i64 %423, 4294967295
  %425 = trunc i64 %424 to i32
  %426 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %425, i32 %426)
  %427 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %427) #1
  %428 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %428) #1
  %429 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %429) #1
  %430 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %430) #1
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
define internal i64 @func_1() #0 {
  %l_6 = alloca i16*, align 8
  %l_21 = alloca [2 x [6 x i32]], align 16
  %l_22 = alloca i16, align 2
  %l_47 = alloca [8 x i16*], align 16
  %l_51 = alloca [10 x i32*], align 16
  %l_763 = alloca i32, align 4
  %l_765 = alloca i32, align 4
  %l_766 = alloca i32, align 4
  %l_767 = alloca i32, align 4
  %l_1203 = alloca i16, align 2
  %l_1228 = alloca i32**, align 8
  %l_1227 = alloca i32***, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = alloca %union.U1, align 8
  %2 = alloca %union.U1, align 8
  %3 = bitcast i16** %l_6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 2, i64 4), i16** %l_6, align 8, !tbaa !5
  %4 = bitcast [2 x [6 x i32]]* %l_21 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %4) #1
  %5 = bitcast [2 x [6 x i32]]* %l_21 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 48, i32 16, i1 false)
  %6 = bitcast i16* %l_22 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  store i16 1, i16* %l_22, align 2, !tbaa !10
  %7 = bitcast [8 x i16*]* %l_47 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %7) #1
  %8 = bitcast [8 x i16*]* %l_47 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 64, i32 16, i1 false)
  %9 = bitcast [10 x i32*]* %l_51 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %9) #1
  %10 = bitcast [10 x i32*]* %l_51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([10 x i32*]* @func_1.l_51 to i8*), i64 80, i32 16, i1 false)
  %11 = bitcast i32* %l_763 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -763765488, i32* %l_763, align 4, !tbaa !1
  %12 = bitcast i32* %l_765 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -1, i32* %l_765, align 4, !tbaa !1
  %13 = bitcast i32* %l_766 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 1, i32* %l_766, align 4, !tbaa !1
  %14 = bitcast i32* %l_767 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 1737943070, i32* %l_767, align 4, !tbaa !1
  %15 = bitcast i16* %l_1203 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #1
  store i16 2422, i16* %l_1203, align 2, !tbaa !10
  %16 = bitcast i32*** %l_1228 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = getelementptr inbounds [10 x i32*], [10 x i32*]* %l_51, i32 0, i64 0
  store i32** %17, i32*** %l_1228, align 8, !tbaa !5
  %18 = bitcast i32**** %l_1227 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32*** %l_1228, i32**** %l_1227, align 8, !tbaa !5
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext 1, i16 zeroext -4166)
  %22 = zext i16 %21 to i32
  %23 = load i16*, i16** %l_6, align 8, !tbaa !5
  %24 = load i16, i16* %23, align 2, !tbaa !10
  %25 = add i16 %24, 1
  store i16 %25, i16* %23, align 2, !tbaa !10
  %26 = zext i16 %25 to i32
  %27 = xor i32 %22, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %73, label %29

; <label>:29                                      ; preds = %0
  %30 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %l_21, i32 0, i64 1
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %30, i32 0, i64 3
  %32 = load i32, i32* %31, align 4, !tbaa !1
  %33 = sext i32 %32 to i64
  %34 = load i16, i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 0, i64 2), align 2, !tbaa !10
  %35 = zext i16 %34 to i32
  %36 = icmp slt i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %l_21, i32 0, i64 1
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %38, i32 0, i64 5
  %40 = load i32, i32* %39, align 4, !tbaa !1
  %41 = sext i32 %40 to i64
  %42 = call i64 @func_16(i64 %33, i32 %37, i64 %41, i8 signext 1)
  %43 = load i16, i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 1, i64 3), align 2, !tbaa !10
  %44 = zext i16 %43 to i64
  %45 = icmp sgt i64 %44, -1
  %46 = zext i1 %45 to i32
  %47 = trunc i32 %46 to i8
  %48 = load i16, i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 2, i64 4), align 2, !tbaa !10
  %49 = load i16, i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 2, i64 4), align 2, !tbaa !10
  %50 = zext i16 %49 to i32
  %51 = call i8* @func_27(i8 signext %47, i16 zeroext %48, i32 %50)
  %52 = load i8*, i8** @g_34, align 8, !tbaa !5
  %53 = load i8*, i8** @g_34, align 8, !tbaa !5
  %54 = load i8, i8* %53, align 1, !tbaa !9
  %55 = call i8* @func_23(i8* %51, i8* %52, i8 signext %54)
  %56 = icmp eq i8* %55, @g_35
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = icmp ne i64 %58, 5
  %60 = zext i1 %59 to i32
  %61 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %l_21, i32 0, i64 1
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %61, i32 0, i64 3
  %63 = load i32, i32* %62, align 4, !tbaa !1
  %64 = icmp eq i32 %60, %63
  %65 = zext i1 %64 to i32
  %66 = load i16, i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 2, i64 2), align 2, !tbaa !10
  %67 = zext i16 %66 to i64
  %68 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_47, i32 0, i64 0
  %69 = load i16*, i16** %68, align 8, !tbaa !5
  %70 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), align 4
  %71 = call i8* @func_10(i32 %65, i32 %70, i64 %67, i64 1, i16* %69)
  %72 = getelementptr %union.U1, %union.U1* %1, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  br label %73

; <label>:73                                      ; preds = %29, %0
  %74 = phi i1 [ true, %0 ], [ true, %29 ]
  %75 = zext i1 %74 to i32
  %76 = load i8, i8* @g_35, align 1, !tbaa !9
  %77 = sext i8 %76 to i32
  %78 = call i32 @safe_sub_func_uint32_t_u_u(i32 %75, i32 %77)
  %79 = load i32, i32* @g_52, align 4, !tbaa !1
  %80 = and i32 %79, %78
  store i32 %80, i32* @g_52, align 4, !tbaa !1
  %81 = load i32, i32* @g_32, align 4, !tbaa !1
  %82 = sext i32 %81 to i64
  %83 = load i16, i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 2, i64 4), align 2, !tbaa !10
  %84 = zext i16 %83 to i64
  %85 = load i8*, i8** @g_34, align 8, !tbaa !5
  %86 = load i8, i8* %85, align 1, !tbaa !9
  %87 = load volatile i32*, i32** @g_31, align 8, !tbaa !5
  %88 = load i32, i32* %87, align 4, !tbaa !1
  %89 = load i16, i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 0, i64 1), align 2, !tbaa !10
  %90 = trunc i16 %89 to i8
  %91 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), align 4
  %92 = call i32 @func_74(i8* @g_35, i32 %91, i8 zeroext %90)
  %93 = load i32, i32* %l_763, align 4, !tbaa !1
  %94 = icmp uge i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* @g_764, align 4, !tbaa !1
  %97 = icmp ne i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* getelementptr inbounds (<{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }>, <{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }>* @g_276, i32 0, i32 0, i32 0), align 8
  %100 = and i32 %99, 67108863
  %101 = icmp sgt i32 %98, %100
  br i1 %101, label %102, label %105

; <label>:102                                     ; preds = %73
  %103 = load i32, i32* @g_39, align 4, !tbaa !1
  %104 = icmp ne i32 %103, 0
  br label %105

; <label>:105                                     ; preds = %102, %73
  %106 = phi i1 [ false, %73 ], [ %104, %102 ]
  %107 = zext i1 %106 to i32
  %108 = icmp slt i32 0, %107
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %l_765, align 4, !tbaa !1
  %111 = icmp sgt i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i8*, i8** @g_34, align 8, !tbaa !5
  %114 = load i8, i8* %113, align 1, !tbaa !9
  %115 = sext i8 %114 to i32
  %116 = icmp sle i32 %112, %115
  %117 = zext i1 %116 to i32
  %118 = or i32 %88, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

; <label>:120                                     ; preds = %105
  %121 = load i64, i64* @g_321, align 8, !tbaa !7
  %122 = icmp ne i64 %121, 0
  br label %123

; <label>:123                                     ; preds = %120, %105
  %124 = phi i1 [ true, %105 ], [ %122, %120 ]
  %125 = zext i1 %124 to i32
  %126 = trunc i32 %125 to i8
  %127 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %86, i8 signext %126)
  %128 = sext i8 %127 to i32
  %129 = load i16, i16* @g_430, align 2, !tbaa !10
  %130 = sext i16 %129 to i32
  %131 = icmp sle i32 %128, %130
  br i1 %131, label %137, label %132

; <label>:132                                     ; preds = %123
  %133 = load i16*, i16** @g_479, align 8, !tbaa !5
  %134 = load i16, i16* %133, align 2, !tbaa !10
  %135 = zext i16 %134 to i32
  %136 = icmp ne i32 %135, 0
  br label %137

; <label>:137                                     ; preds = %132, %123
  %138 = phi i1 [ true, %123 ], [ %136, %132 ]
  %139 = zext i1 %138 to i32
  %140 = load i16, i16* @g_437, align 2, !tbaa !10
  %141 = sext i16 %140 to i64
  %142 = load i32, i32* %l_766, align 4, !tbaa !1
  %143 = trunc i32 %142 to i8
  %144 = call i64 @func_16(i64 %84, i32 %139, i64 %141, i8 signext %143)
  %145 = load i32, i32* @g_32, align 4, !tbaa !1
  %146 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_445, i32 0, i32 0), align 8
  %147 = and i32 %146, 67108863
  %148 = zext i32 %147 to i64
  %149 = load i8*, i8** @g_34, align 8, !tbaa !5
  %150 = load i8, i8* %149, align 1, !tbaa !9
  %151 = call i64 @func_16(i64 %144, i32 %145, i64 %148, i8 signext %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %156, label %153

; <label>:153                                     ; preds = %137
  %154 = load i32, i32* %l_767, align 4, !tbaa !1
  %155 = icmp ne i32 %154, 0
  br label %156

; <label>:156                                     ; preds = %153, %137
  %157 = phi i1 [ true, %137 ], [ %155, %153 ]
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* @g_764, align 4, !tbaa !1
  %160 = call i32 @safe_div_func_int32_t_s_s(i32 368700374, i32 %159)
  %161 = trunc i32 %160 to i8
  %162 = load i32, i32* @g_462, align 4, !tbaa !1
  %163 = sext i32 %162 to i64
  %164 = call i8* @func_65(i8 zeroext %161, i64 %163, i8* @g_35)
  %165 = getelementptr %union.U1, %union.U1* %2, i32 0, i32 0
  store i8* %164, i8** %165, align 8
  %166 = icmp sge i64 %82, 2070595564226850207
  %167 = zext i1 %166 to i32
  %168 = sext i32 %167 to i64
  %169 = call i64 @safe_sub_func_int64_t_s_s(i64 %168, i64 -1)
  %170 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_471, i32 0, i32 0), align 8
  %171 = and i32 %170, 67108863
  %172 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_272, i32 0, i32 0), align 8
  %173 = and i32 %172, 67108863
  %174 = zext i32 %173 to i64
  %175 = load i16, i16* @g_463, align 2, !tbaa !10
  %176 = trunc i16 %175 to i8
  %177 = call i64 @func_16(i64 %169, i32 %171, i64 %174, i8 signext %176)
  %178 = load i8, i8* @g_35, align 1, !tbaa !9
  %179 = sext i8 %178 to i16
  %180 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext -9, i16 zeroext %179)
  %181 = zext i16 %180 to i64
  %182 = call i64 @safe_sub_func_int64_t_s_s(i64 %181, i64 5336454102952157187)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

; <label>:184                                     ; preds = %156
  br label %185

; <label>:185                                     ; preds = %184, %156
  %186 = phi i1 [ false, %156 ], [ true, %184 ]
  %187 = zext i1 %186 to i32
  %188 = trunc i32 %187 to i16
  %189 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %188, i32 7)
  %190 = load i16, i16* %l_1203, align 2, !tbaa !10
  %191 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %189, i16 signext %190)
  %192 = sext i16 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

; <label>:194                                     ; preds = %185
  %195 = load i64**, i64*** @g_912, align 8, !tbaa !5
  %196 = load i64*, i64** %195, align 8, !tbaa !5
  %197 = load i64, i64* %196, align 8, !tbaa !7
  %198 = icmp ne i64 %197, 0
  br label %199

; <label>:199                                     ; preds = %194, %185
  %200 = phi i1 [ false, %185 ], [ %198, %194 ]
  %201 = zext i1 %200 to i32
  %202 = trunc i32 %201 to i16
  %203 = load i16*, i16** @g_242, align 8, !tbaa !5
  store i16 %202, i16* %203, align 2, !tbaa !10
  store i16 %202, i16* @g_463, align 2, !tbaa !10
  %204 = call i32** @func_53(i16* null)
  %205 = load i32***, i32**** @g_1125, align 8, !tbaa !5
  store i32** %204, i32*** %205, align 8, !tbaa !5
  %206 = load i32***, i32**** %l_1227, align 8, !tbaa !5
  store i32** %204, i32*** %206, align 8, !tbaa !5
  %207 = load i64*, i64** @g_913, align 8, !tbaa !5
  %208 = load i64, i64* %207, align 8, !tbaa !7
  %209 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32**** %l_1227 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = bitcast i32*** %l_1228 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  %213 = bitcast i16* %l_1203 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %213) #1
  %214 = bitcast i32* %l_767 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %l_766 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %l_765 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %l_763 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast [10 x i32*]* %l_51 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %218) #1
  %219 = bitcast [8 x i16*]* %l_47 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %219) #1
  %220 = bitcast i16* %l_22 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %220) #1
  %221 = bitcast [2 x [6 x i32]]* %l_21 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %221) #1
  %222 = bitcast i16** %l_6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  ret i64 %208
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.71, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
define internal i8* @func_10(i32 %p_11, i32 %p_12.coerce, i64 %p_13, i64 %p_14, i16* %p_15) #0 {
  %1 = alloca %union.U1, align 8
  %p_12 = alloca %union.U0, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i16*, align 8
  %l_49 = alloca i32*, align 8
  %l_48 = alloca i32**, align 8
  %l_50 = alloca %union.U1, align 8
  %6 = getelementptr %union.U0, %union.U0* %p_12, i32 0, i32 0
  store i32 %p_12.coerce, i32* %6, align 4
  store i32 %p_11, i32* %2, align 4, !tbaa !1
  store i64 %p_13, i64* %3, align 8, !tbaa !7
  store i64 %p_14, i64* %4, align 8, !tbaa !7
  store i16* %p_15, i16** %5, align 8, !tbaa !5
  %7 = bitcast i32** %l_49 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* null, i32** %l_49, align 8, !tbaa !5
  %8 = bitcast i32*** %l_48 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32** %l_49, i32*** %l_48, align 8, !tbaa !5
  %9 = bitcast %union.U1* %l_50 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %union.U1* %l_50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ({ i32, [4 x i8] }* @func_10.l_50 to i8*), i64 8, i32 8, i1 false)
  %11 = load i32**, i32*** %l_48, align 8, !tbaa !5
  store i32* null, i32** %11, align 8, !tbaa !5
  %12 = bitcast %union.U1* %1 to i8*
  %13 = bitcast %union.U1* %l_50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 8, i1 false), !tbaa.struct !12
  %14 = bitcast %union.U1* %l_50 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i32*** %l_48 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast i32** %l_49 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = getelementptr %union.U1, %union.U1* %1, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  ret i8* %18
}

; Function Attrs: nounwind uwtable
define internal i64 @func_16(i64 %p_17, i32 %p_18, i64 %p_19, i8 signext %p_20) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store i64 %p_17, i64* %1, align 8, !tbaa !7
  store i32 %p_18, i32* %2, align 4, !tbaa !1
  store i64 %p_19, i64* %3, align 8, !tbaa !7
  store i8 %p_20, i8* %4, align 1, !tbaa !9
  %5 = load i16, i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 2, i64 4), align 2, !tbaa !10
  %6 = zext i16 %5 to i64
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal i8* @func_23(i8* %p_24, i8* %p_25, i8 signext %p_26) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %l_45 = alloca i8*, align 8
  %l_38 = alloca i32*, align 8
  %l_43 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %p_24, i8** %1, align 8, !tbaa !5
  store i8* %p_25, i8** %2, align 8, !tbaa !5
  store i8 %p_26, i8* %3, align 1, !tbaa !9
  %4 = bitcast i8** %l_45 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* @g_35, i8** %l_45, align 8, !tbaa !5
  store i32 19, i32* @g_32, align 4, !tbaa !1
  br label %5

; <label>:5                                       ; preds = %43, %0
  %6 = load i32, i32* @g_32, align 4, !tbaa !1
  %7 = icmp sgt i32 %6, 12
  br i1 %7, label %8, label %46

; <label>:8                                       ; preds = %5
  %9 = bitcast i32** %l_38 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* @g_39, i32** %l_38, align 8, !tbaa !5
  %10 = load i8, i8* %3, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  %12 = load i32*, i32** %l_38, align 8, !tbaa !5
  store i32 %11, i32* %12, align 4, !tbaa !1
  %13 = load volatile i32*, i32** @g_31, align 8, !tbaa !5
  %14 = load i32, i32* %13, align 4, !tbaa !1
  %15 = call i32* @func_40(i32 %14)
  store volatile i32* %15, i32** @g_31, align 8, !tbaa !5
  store i32 0, i32* @g_39, align 4, !tbaa !1
  br label %16

; <label>:16                                      ; preds = %38, %8
  %17 = load i32, i32* @g_39, align 4, !tbaa !1
  %18 = icmp sle i32 %17, 2
  br i1 %18, label %19, label %41

; <label>:19                                      ; preds = %16
  %20 = bitcast i32** %l_43 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i32* @g_44, i32** %l_43, align 8, !tbaa !5
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32, i32* @g_39, align 4, !tbaa !1
  %24 = add nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* @g_39, align 4, !tbaa !1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 %27
  %29 = getelementptr inbounds [6 x i16], [6 x i16]* %28, i32 0, i64 %25
  %30 = load i16, i16* %29, align 2, !tbaa !10
  %31 = zext i16 %30 to i32
  %32 = load i32*, i32** %l_43, align 8, !tbaa !5
  %33 = load i32, i32* %32, align 4, !tbaa !1
  %34 = xor i32 %33, %31
  store i32 %34, i32* %32, align 4, !tbaa !1
  %35 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32** %l_43 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %38

; <label>:38                                      ; preds = %19
  %39 = load i32, i32* @g_39, align 4, !tbaa !1
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @g_39, align 4, !tbaa !1
  br label %16

; <label>:41                                      ; preds = %16
  %42 = bitcast i32** %l_38 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  br label %43

; <label>:43                                      ; preds = %41
  %44 = load i32, i32* @g_32, align 4, !tbaa !1
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* @g_32, align 4, !tbaa !1
  br label %5

; <label>:46                                      ; preds = %5
  %47 = load i8*, i8** %l_45, align 8, !tbaa !5
  %48 = bitcast i8** %l_45 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  ret i8* %47
}

; Function Attrs: nounwind uwtable
define internal i8* @func_27(i8 signext %p_28, i16 zeroext %p_29, i32 %p_30) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %l_33 = alloca i8*, align 8
  store i8 %p_28, i8* %1, align 1, !tbaa !9
  store i16 %p_29, i16* %2, align 2, !tbaa !10
  store i32 %p_30, i32* %3, align 4, !tbaa !1
  %4 = bitcast i8** %l_33 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* null, i8** %l_33, align 8, !tbaa !5
  %5 = load i32, i32* %3, align 4, !tbaa !1
  %6 = load volatile i32*, i32** @g_31, align 8, !tbaa !5
  %7 = load i32, i32* %6, align 4, !tbaa !1
  %8 = xor i32 %7, %5
  store i32 %8, i32* %6, align 4, !tbaa !1
  %9 = load i8*, i8** %l_33, align 8, !tbaa !5
  %10 = bitcast i8** %l_33 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i32** @func_53(i16* %p_54) #0 {
  %1 = alloca i32**, align 8
  %2 = alloca i16*, align 8
  %l_1206 = alloca %union.U0, align 4
  %l_1215 = alloca i64***, align 8
  %l_1224 = alloca i32, align 4
  %l_1226 = alloca i32**, align 8
  %l_1207 = alloca i32*, align 8
  %l_1210 = alloca i16*, align 8
  %l_1223 = alloca [6 x [5 x [8 x i32]]], align 16
  %l_1225 = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %3 = alloca i32
  store i16* %p_54, i16** %2, align 8, !tbaa !5
  %4 = bitcast %union.U0* %l_1206 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %union.U0* %l_1206 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%union.U0* @func_53.l_1206 to i8*), i64 4, i32 4, i1 false)
  %6 = bitcast i64**** %l_1215 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64*** @g_912, i64**** %l_1215, align 8, !tbaa !5
  %7 = bitcast i32* %l_1224 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 57381102, i32* %l_1224, align 4, !tbaa !1
  %8 = bitcast i32*** %l_1226 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32** null, i32*** %l_1226, align 8, !tbaa !5
  store i8 0, i8* @g_121, align 1, !tbaa !9
  br label %9

; <label>:9                                       ; preds = %109, %0
  %10 = load i8, i8* @g_121, align 1, !tbaa !9
  %11 = zext i8 %10 to i32
  %12 = icmp sle i32 %11, 7
  br i1 %12, label %13, label %114

; <label>:13                                      ; preds = %9
  %14 = bitcast i32** %l_1207 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32* @g_146, i32** %l_1207, align 8, !tbaa !5
  %15 = bitcast i16** %l_1210 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i16* bitcast ({ i32, [4 x i8] }* @g_1202 to i16*), i16** %l_1210, align 8, !tbaa !5
  %16 = bitcast [6 x [5 x [8 x i32]]]* %l_1223 to i8*
  call void @llvm.lifetime.start(i64 960, i8* %16) #1
  %17 = bitcast [6 x [5 x [8 x i32]]]* %l_1223 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast ([6 x [5 x [8 x i32]]]* @func_53.l_1223 to i8*), i64 960, i32 16, i1 false)
  %18 = bitcast i32*** %l_1225 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32** getelementptr inbounds ([9 x [8 x i32*]], [9 x [8 x i32*]]* @g_473, i32 0, i64 2, i64 5), i32*** %l_1225, align 8, !tbaa !5
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i64*, i64** @g_168, align 8, !tbaa !5
  %23 = load volatile i64, i64* %22, align 8, !tbaa !7
  %24 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_272, i32 0, i32 0), align 4, !tbaa !1
  %25 = load i32*, i32** %l_1207, align 8, !tbaa !5
  %26 = load i16*, i16** %l_1210, align 8, !tbaa !5
  %27 = load i16*, i16** %2, align 8, !tbaa !5
  %28 = icmp ne i16* %26, %27
  %29 = zext i1 %28 to i32
  %30 = trunc i32 %29 to i8
  %31 = load i64***, i64**** %l_1215, align 8, !tbaa !5
  %32 = icmp eq i64*** null, %31
  br i1 %32, label %64, label %33

; <label>:33                                      ; preds = %13
  %34 = bitcast %union.U0* %l_1206 to i32*
  %35 = load i32, i32* %34, align 4, !tbaa !1
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [6 x [5 x [8 x i32]]], [6 x [5 x [8 x i32]]]* %l_1223, i32 0, i64 5
  %38 = getelementptr inbounds [5 x [8 x i32]], [5 x [8 x i32]]* %37, i32 0, i64 3
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %38, i32 0, i64 7
  %40 = load i32, i32* %39, align 4, !tbaa !1
  %41 = trunc i32 %40 to i8
  %42 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %36, i8 signext %41)
  %43 = load i8*, i8** @g_454, align 8, !tbaa !5
  %44 = load i8, i8* %43, align 1, !tbaa !9
  %45 = zext i8 %44 to i32
  %46 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %42, i32 %45)
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

; <label>:49                                      ; preds = %33
  %50 = bitcast %union.U0* %l_1206 to i32*
  %51 = load i32, i32* %50, align 4, !tbaa !1
  %52 = icmp ne i32 %51, 0
  br label %53

; <label>:53                                      ; preds = %49, %33
  %54 = phi i1 [ false, %33 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds [6 x [5 x [8 x i32]]], [6 x [5 x [8 x i32]]]* %l_1223, i32 0, i64 5
  %58 = getelementptr inbounds [5 x [8 x i32]], [5 x [8 x i32]]* %57, i32 0, i64 3
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %58, i32 0, i64 7
  %60 = load i32, i32* %59, align 4, !tbaa !1
  %61 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %56, i32 %60)
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br label %64

; <label>:64                                      ; preds = %53, %13
  %65 = phi i1 [ true, %13 ], [ %63, %53 ]
  %66 = zext i1 %65 to i32
  %67 = load i16*, i16** @g_242, align 8, !tbaa !5
  %68 = load i16, i16* %67, align 2, !tbaa !10
  %69 = zext i16 %68 to i32
  %70 = or i32 %69, %66
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %67, align 2, !tbaa !10
  %72 = zext i16 %71 to i64
  %73 = xor i64 %72, 22507
  %74 = trunc i64 %73 to i32
  %75 = load i32*, i32** @g_699, align 8, !tbaa !5
  %76 = load i32, i32* %75, align 4, !tbaa !1
  %77 = call i32 @safe_div_func_uint32_t_u_u(i32 %74, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

; <label>:79                                      ; preds = %64
  br label %80

; <label>:80                                      ; preds = %79, %64
  %81 = phi i1 [ true, %64 ], [ true, %79 ]
  %82 = zext i1 %81 to i32
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** @g_454, align 8, !tbaa !5
  %85 = load i8, i8* %84, align 1, !tbaa !9
  %86 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %83, i8 zeroext %85)
  %87 = zext i8 %86 to i32
  %88 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %30, i32 %87)
  %89 = load i32*, i32** %l_1207, align 8, !tbaa !5
  %90 = icmp eq i32* %25, %89
  %91 = zext i1 %90 to i32
  %92 = trunc i32 %91 to i16
  %93 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %92, i16 zeroext 2869)
  %94 = zext i16 %93 to i32
  %95 = bitcast %union.U0* %l_1206 to i32*
  %96 = load i32, i32* %95, align 4, !tbaa !1
  %97 = icmp sge i32 %94, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %l_1224, align 4, !tbaa !1
  %100 = and i32 %99, %98
  store i32 %100, i32* %l_1224, align 4, !tbaa !1
  %101 = load i32**, i32*** %l_1225, align 8, !tbaa !5
  store i32** %101, i32*** %1
  store i32 1, i32* %3
  %102 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32*** %l_1225 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast [6 x [5 x [8 x i32]]]* %l_1223 to i8*
  call void @llvm.lifetime.end(i64 960, i8* %106) #1
  %107 = bitcast i16** %l_1210 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i32** %l_1207 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  br label %116
                                                  ; No predecessors!
  %110 = load i8, i8* @g_121, align 1, !tbaa !9
  %111 = zext i8 %110 to i32
  %112 = add nsw i32 %111, 1
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* @g_121, align 1, !tbaa !9
  br label %9

; <label>:114                                     ; preds = %9
  %115 = load i32**, i32*** %l_1226, align 8, !tbaa !5
  store i32** %115, i32*** %1
  store i32 1, i32* %3
  br label %116

; <label>:116                                     ; preds = %114, %80
  %117 = bitcast i32*** %l_1226 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32* %l_1224 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i64**** %l_1215 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast %union.U0* %l_1206 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = load i32**, i32*** %1
  ret i32** %121
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
define internal i8* @func_65(i8 zeroext %p_66, i64 %p_67, i8* %p_68) #0 {
  %1 = alloca %union.U1, align 8
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %l_770 = alloca i32, align 4
  %l_774 = alloca [10 x %union.U2**], align 16
  %l_773 = alloca %union.U2***, align 8
  %l_777 = alloca %union.U1, align 8
  %l_778 = alloca [2 x i32*], align 16
  %l_779 = alloca i32*, align 8
  %l_806 = alloca i32, align 4
  %l_808 = alloca i32, align 4
  %l_811 = alloca i32, align 4
  %l_813 = alloca [10 x [4 x i32]], align 16
  %l_849 = alloca i32, align 4
  %l_850 = alloca [7 x [4 x i8]], align 16
  %l_910 = alloca i32, align 4
  %l_971 = alloca i16, align 2
  %l_1012 = alloca [8 x [4 x i64***]], align 16
  %l_1014 = alloca i64***, align 8
  %l_1064 = alloca i32**, align 8
  %l_1063 = alloca i32***, align 8
  %l_1122 = alloca %union.U0, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_780 = alloca i32*, align 8
  %5 = alloca i32
  %l_782 = alloca i32**, align 8
  %l_807 = alloca [7 x i32], align 16
  %l_851 = alloca %union.U0, align 4
  %l_852 = alloca i16*, align 8
  %l_966 = alloca i16, align 2
  %l_967 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %l_788 = alloca i64, align 8
  %l_809 = alloca i32, align 4
  %l_810 = alloca i32, align 4
  %l_812 = alloca [10 x [1 x [1 x i32]]], align 16
  %l_814 = alloca i32, align 4
  %l_932 = alloca i32, align 4
  %l_970 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_973 = alloca i64, align 8
  %l_974 = alloca [5 x i32], align 16
  %l_1028 = alloca i8, align 1
  %l_1042 = alloca [7 x i16*], align 16
  %l_1048 = alloca i16*, align 8
  %l_1047 = alloca [5 x [10 x [5 x i16**]]], align 16
  %l_1065 = alloca i8, align 1
  %l_1101 = alloca i32, align 4
  %l_1163 = alloca i32***, align 8
  %l_1165 = alloca i32*, align 8
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %k6 = alloca i32, align 4
  %l_979 = alloca i32, align 4
  %l_980 = alloca i32, align 4
  %l_981 = alloca i32, align 4
  %l_982 = alloca i32, align 4
  %l_983 = alloca i32, align 4
  %l_984 = alloca i32, align 4
  %l_985 = alloca i32, align 4
  %l_986 = alloca i8, align 1
  %l_996 = alloca %union.U1, align 8
  %l_1003 = alloca i8, align 1
  %l_1027 = alloca i32, align 4
  %l_1059 = alloca i64****, align 8
  %l_1068 = alloca i32, align 4
  %l_1072 = alloca i32, align 4
  %l_1073 = alloca i32, align 4
  %l_1077 = alloca i32, align 4
  %l_1078 = alloca i32, align 4
  %l_1079 = alloca i8, align 1
  %l_1102 = alloca i64, align 8
  %l_975 = alloca i32*, align 8
  %l_976 = alloca i32*, align 8
  %l_977 = alloca i32*, align 8
  %l_978 = alloca [5 x i32*], align 16
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %k9 = alloca i32, align 4
  %l_1002 = alloca i32*, align 8
  %l_1007 = alloca i32, align 4
  %l_1013 = alloca i64****, align 8
  %l_1015 = alloca [7 x i32*], align 16
  %l_1016 = alloca i32*, align 8
  %l_1018 = alloca i32*, align 8
  %l_1017 = alloca i32**, align 8
  %l_1020 = alloca i32*, align 8
  %l_1019 = alloca i32**, align 8
  %l_1029 = alloca i32*, align 8
  %i10 = alloca i32, align 4
  %6 = alloca %union.U2, align 8
  %7 = alloca %union.U2, align 8
  %l_1030 = alloca i64, align 8
  %l_1038 = alloca i32, align 4
  %l_1044 = alloca %union.U0, align 4
  %l_1049 = alloca i32, align 4
  %l_1061 = alloca i64***, align 8
  %l_1060 = alloca i64****, align 8
  %l_1067 = alloca i32, align 4
  %l_1069 = alloca i32, align 4
  %l_1070 = alloca i32, align 4
  %l_1071 = alloca i32, align 4
  %l_1074 = alloca i32, align 4
  %l_1075 = alloca i32, align 4
  %l_1076 = alloca i32, align 4
  %l_1080 = alloca i32, align 4
  %i11 = alloca i32, align 4
  %l_1031 = alloca i8*, align 8
  %l_1032 = alloca [2 x i32], align 4
  %l_1035 = alloca i8*, align 8
  %l_1041 = alloca i16*, align 8
  %l_1091 = alloca [7 x [5 x [6 x %union.U0]]], align 16
  %i12 = alloca i32, align 4
  %j13 = alloca i32, align 4
  %k14 = alloca i32, align 4
  %l_1043 = alloca i16**, align 8
  %l_1056 = alloca i64, align 8
  %l_1062 = alloca i64****, align 8
  %l_1066 = alloca [2 x [1 x i32*]], align 16
  %i15 = alloca i32, align 4
  %j16 = alloca i32, align 4
  %l_1087 = alloca %union.U0, align 4
  %l_1098 = alloca i8*, align 8
  %l_1099 = alloca [3 x i8*], align 16
  %l_1100 = alloca [3 x i32], align 4
  %i17 = alloca i32, align 4
  %l_1106 = alloca %union.U2*, align 8
  %l_1117 = alloca i32, align 4
  %l_1133 = alloca %union.U1*, align 8
  %l_1164 = alloca i32*, align 8
  %l_1183 = alloca i32*, align 8
  %l_1192 = alloca i16**, align 8
  %l_1197 = alloca i8, align 1
  %l_1118 = alloca [4 x [10 x i32]], align 16
  %l_1146 = alloca i16***, align 8
  %i21 = alloca i32, align 4
  %j22 = alloca i32, align 4
  %l_1138 = alloca i16, align 2
  %l_1139 = alloca i32, align 4
  %l_1161 = alloca [2 x [7 x i32]], align 16
  %i23 = alloca i32, align 4
  %j24 = alloca i32, align 4
  %l_1134 = alloca i64, align 8
  %l_1135 = alloca i64*, align 8
  %l_1136 = alloca i64*, align 8
  %l_1137 = alloca [5 x [5 x i64*]], align 16
  %l_1162 = alloca i64*, align 8
  %i25 = alloca i32, align 4
  %j26 = alloca i32, align 4
  %i30 = alloca i32, align 4
  %j31 = alloca i32, align 4
  %l_1184 = alloca %union.U1, align 8
  %l_1201 = alloca i32, align 4
  %i32 = alloca i32, align 4
  %j33 = alloca i32, align 4
  %i34 = alloca i32, align 4
  %l_1185 = alloca %union.U1**, align 8
  %l_1191 = alloca [2 x i32*], align 16
  %l_1198 = alloca i16*, align 8
  %l_1199 = alloca [5 x i16*], align 16
  %l_1200 = alloca i32, align 4
  %i35 = alloca i32, align 4
  %j36 = alloca i32, align 4
  %k37 = alloca i32, align 4
  store i8 %p_66, i8* %2, align 1, !tbaa !9
  store i64 %p_67, i64* %3, align 8, !tbaa !7
  store i8* %p_68, i8** %4, align 8, !tbaa !5
  %8 = bitcast i32* %l_770 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 1, i32* %l_770, align 4, !tbaa !1
  %9 = bitcast [10 x %union.U2**]* %l_774 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %9) #1
  %10 = bitcast [10 x %union.U2**]* %l_774 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 80, i32 16, i1 false)
  %11 = bitcast i8* %10 to [10 x %union.U2**]*
  %12 = getelementptr [10 x %union.U2**], [10 x %union.U2**]* %11, i32 0, i32 1
  store %union.U2** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x %union.U2*]* @g_270 to i8*), i64 64) to %union.U2**), %union.U2*** %12
  %13 = getelementptr [10 x %union.U2**], [10 x %union.U2**]* %11, i32 0, i32 2
  store %union.U2** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x %union.U2*]* @g_270 to i8*), i64 64) to %union.U2**), %union.U2*** %13
  %14 = getelementptr [10 x %union.U2**], [10 x %union.U2**]* %11, i32 0, i32 4
  store %union.U2** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x %union.U2*]* @g_270 to i8*), i64 16) to %union.U2**), %union.U2*** %14
  %15 = getelementptr [10 x %union.U2**], [10 x %union.U2**]* %11, i32 0, i32 6
  store %union.U2** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x %union.U2*]* @g_270 to i8*), i64 64) to %union.U2**), %union.U2*** %15
  %16 = getelementptr [10 x %union.U2**], [10 x %union.U2**]* %11, i32 0, i32 7
  store %union.U2** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x %union.U2*]* @g_270 to i8*), i64 64) to %union.U2**), %union.U2*** %16
  %17 = getelementptr [10 x %union.U2**], [10 x %union.U2**]* %11, i32 0, i32 9
  store %union.U2** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x %union.U2*]* @g_270 to i8*), i64 16) to %union.U2**), %union.U2*** %17
  %18 = bitcast %union.U2**** %l_773 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = getelementptr inbounds [10 x %union.U2**], [10 x %union.U2**]* %l_774, i32 0, i64 7
  store %union.U2*** %19, %union.U2**** %l_773, align 8, !tbaa !5
  %20 = bitcast %union.U1* %l_777 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast %union.U1* %l_777 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast ({ i32, [4 x i8] }* @func_65.l_777 to i8*), i64 8, i32 8, i1 false)
  %22 = bitcast [2 x i32*]* %l_778 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  %23 = bitcast i32** %l_779 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i32* @g_438, i32** %l_779, align 8, !tbaa !5
  %24 = bitcast i32* %l_806 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 9, i32* %l_806, align 4, !tbaa !1
  %25 = bitcast i32* %l_808 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 1577239657, i32* %l_808, align 4, !tbaa !1
  %26 = bitcast i32* %l_811 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 -6, i32* %l_811, align 4, !tbaa !1
  %27 = bitcast [10 x [4 x i32]]* %l_813 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %27) #1
  %28 = bitcast [10 x [4 x i32]]* %l_813 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* bitcast ([10 x [4 x i32]]* @func_65.l_813 to i8*), i64 160, i32 16, i1 false)
  %29 = bitcast i32* %l_849 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  store i32 0, i32* %l_849, align 4, !tbaa !1
  %30 = bitcast [7 x [4 x i8]]* %l_850 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %30) #1
  %31 = bitcast [7 x [4 x i8]]* %l_850 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* getelementptr inbounds ([7 x [4 x i8]], [7 x [4 x i8]]* @func_65.l_850, i32 0, i32 0, i32 0), i64 28, i32 16, i1 false)
  %32 = bitcast i32* %l_910 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 887220679, i32* %l_910, align 4, !tbaa !1
  %33 = bitcast i16* %l_971 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %33) #1
  store i16 -30841, i16* %l_971, align 2, !tbaa !10
  %34 = bitcast [8 x [4 x i64***]]* %l_1012 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %34) #1
  %35 = bitcast [8 x [4 x i64***]]* %l_1012 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* bitcast ([8 x [4 x i64***]]* @func_65.l_1012 to i8*), i64 256, i32 16, i1 false)
  %36 = bitcast i64**** %l_1014 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i64*** @g_912, i64**** %l_1014, align 8, !tbaa !5
  %37 = bitcast i32*** %l_1064 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store i32** getelementptr inbounds ([9 x [8 x i32*]], [9 x [8 x i32*]]* @g_473, i32 0, i64 3, i64 0), i32*** %l_1064, align 8, !tbaa !5
  %38 = bitcast i32**** %l_1063 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store i32*** %l_1064, i32**** %l_1063, align 8, !tbaa !5
  %39 = bitcast %union.U0* %l_1122 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = bitcast %union.U0* %l_1122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* bitcast (%union.U0* @func_65.l_1122 to i8*), i64 4, i32 4, i1 false)
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %43

; <label>:43                                      ; preds = %50, %0
  %44 = load i32, i32* %i, align 4, !tbaa !1
  %45 = icmp slt i32 %44, 2
  br i1 %45, label %46, label %53

; <label>:46                                      ; preds = %43
  %47 = load i32, i32* %i, align 4, !tbaa !1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_778, i32 0, i64 %48
  store i32* @g_438, i32** %49, align 8, !tbaa !5
  br label %50

; <label>:50                                      ; preds = %46
  %51 = load i32, i32* %i, align 4, !tbaa !1
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %i, align 4, !tbaa !1
  br label %43

; <label>:53                                      ; preds = %43
  br label %54

; <label>:54                                      ; preds = %1800, %53
  %55 = load i32, i32* %l_770, align 4, !tbaa !1
  %56 = trunc i32 %55 to i8
  %57 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %56, i8 signext -1)
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %97, label %60

; <label>:60                                      ; preds = %54
  %61 = load i8, i8* %2, align 1, !tbaa !9
  %62 = zext i8 %61 to i32
  %63 = load %union.U2***, %union.U2**** %l_773, align 8, !tbaa !5
  store %union.U2** null, %union.U2*** %63, align 8, !tbaa !5
  %64 = load i8*, i8** @g_34, align 8, !tbaa !5
  %65 = load i8, i8* %64, align 1, !tbaa !9
  %66 = load i8*, i8** %4, align 8, !tbaa !5
  store i8 %65, i8* %66, align 1, !tbaa !9
  %67 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_778, i32 0, i64 1
  %68 = load i32*, i32** %67, align 8, !tbaa !5
  %69 = load i32*, i32** %l_779, align 8, !tbaa !5
  %70 = icmp ne i32* %68, %69
  %71 = zext i1 %70 to i32
  %72 = bitcast %union.U1* %l_777 to i16*
  %73 = load i16, i16* %72, align 2, !tbaa !10
  %74 = sext i16 %73 to i32
  %75 = or i32 %71, %74
  %76 = trunc i32 %75 to i16
  %77 = load i8, i8* %2, align 1, !tbaa !9
  %78 = zext i8 %77 to i16
  %79 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %76, i16 signext %78)
  %80 = load i32, i32* %l_770, align 4, !tbaa !1
  %81 = bitcast %union.U1* %l_777 to i16*
  %82 = load i16, i16* %81, align 2, !tbaa !10
  %83 = sext i16 %82 to i32
  %84 = icmp slt i32 %80, %83
  %85 = zext i1 %84 to i32
  %86 = icmp slt i32 1, %85
  %87 = zext i1 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = load i64*, i64** @g_168, align 8, !tbaa !5
  %90 = load volatile i64, i64* %89, align 8, !tbaa !7
  %91 = call i64 @safe_add_func_int64_t_s_s(i64 %88, i64 %90)
  %92 = trunc i64 %91 to i16
  %93 = load i16*, i16** @g_242, align 8, !tbaa !5
  store i16 %92, i16* %93, align 2, !tbaa !10
  %94 = zext i16 %92 to i32
  %95 = or i32 %62, %94
  %96 = icmp ne i32 %95, 0
  br label %97

; <label>:97                                      ; preds = %60, %54
  %98 = phi i1 [ true, %54 ], [ %96, %60 ]
  %99 = zext i1 %98 to i32
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** @g_454, align 8, !tbaa !5
  store i8 %100, i8* %101, align 1, !tbaa !9
  %102 = zext i8 %100 to i32
  %103 = load i32, i32* %l_770, align 4, !tbaa !1
  %104 = icmp sge i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = sext i32 %105 to i64
  %107 = and i64 %106, -4
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

; <label>:109                                     ; preds = %97
  %110 = bitcast i32** %l_780 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  store i32* @g_52, i32** %l_780, align 8, !tbaa !5
  %111 = load i32*, i32** %l_780, align 8, !tbaa !5
  %112 = load volatile i32**, i32*** @g_781, align 8, !tbaa !5
  store i32* %111, i32** %112, align 8, !tbaa !5
  %113 = bitcast %union.U1* %1 to i8*
  %114 = bitcast %union.U1* %l_777 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* %114, i64 8, i32 8, i1 false), !tbaa.struct !12
  store i32 1, i32* %5
  %115 = bitcast i32** %l_780 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  br label %1818

; <label>:116                                     ; preds = %97
  %117 = bitcast i32*** %l_782 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  store i32** getelementptr inbounds ([9 x [8 x i32*]], [9 x [8 x i32*]]* @g_473, i32 0, i64 8, i64 3), i32*** %l_782, align 8, !tbaa !5
  %118 = bitcast [7 x i32]* %l_807 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %118) #1
  %119 = bitcast [7 x i32]* %l_807 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* bitcast ([7 x i32]* @func_65.l_807 to i8*), i64 28, i32 16, i1 false)
  %120 = bitcast %union.U0* %l_851 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %120) #1
  %121 = bitcast %union.U0* %l_851 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* bitcast (%union.U0* @func_65.l_851 to i8*), i64 4, i32 4, i1 false)
  %122 = bitcast i16** %l_852 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %122) #1
  store i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 2, i64 4), i16** %l_852, align 8, !tbaa !5
  %123 = bitcast i16* %l_966 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %123) #1
  store i16 -6, i16* %l_966, align 2, !tbaa !10
  %124 = bitcast i32* %l_967 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  store i32 -1866237195, i32* %l_967, align 4, !tbaa !1
  %125 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #1
  %126 = load %union.U0*, %union.U0** @g_310, align 8, !tbaa !5
  %127 = load i32*, i32** %l_779, align 8, !tbaa !5
  %128 = load i32**, i32*** %l_782, align 8, !tbaa !5
  store i32* %127, i32** %128, align 8, !tbaa !5
  store i8 0, i8* @g_318, align 1, !tbaa !9
  br label %129

; <label>:129                                     ; preds = %155, %116
  %130 = load i8, i8* @g_318, align 1, !tbaa !9
  %131 = zext i8 %130 to i32
  %132 = icmp sle i32 %131, 24
  br i1 %132, label %133, label %160

; <label>:133                                     ; preds = %129
  %134 = bitcast i64* %l_788 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  store i64 6996618331332301501, i64* %l_788, align 8, !tbaa !7
  %135 = bitcast i32* %l_809 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #1
  store i32 -659039396, i32* %l_809, align 4, !tbaa !1
  %136 = bitcast i32* %l_810 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #1
  store i32 1, i32* %l_810, align 4, !tbaa !1
  %137 = bitcast [10 x [1 x [1 x i32]]]* %l_812 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %137) #1
  %138 = bitcast [10 x [1 x [1 x i32]]]* %l_812 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* bitcast ([10 x [1 x [1 x i32]]]* @func_65.l_812 to i8*), i64 40, i32 16, i1 false)
  %139 = bitcast i32* %l_814 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #1
  store i32 -1280883690, i32* %l_814, align 4, !tbaa !1
  %140 = bitcast i32* %l_932 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  store i32 -1, i32* %l_932, align 4, !tbaa !1
  %141 = bitcast i32* %l_970 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #1
  store i32 522393032, i32* %l_970, align 4, !tbaa !1
  %142 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #1
  %143 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #1
  %144 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %144) #1
  %145 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %l_970 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %l_932 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %l_814 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast [10 x [1 x [1 x i32]]]* %l_812 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %151) #1
  %152 = bitcast i32* %l_810 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32* %l_809 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i64* %l_788 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  br label %155

; <label>:155                                     ; preds = %133
  %156 = load i8, i8* @g_318, align 1, !tbaa !9
  %157 = zext i8 %156 to i64
  %158 = call i64 @safe_add_func_uint64_t_u_u(i64 %157, i64 3)
  %159 = trunc i64 %158 to i8
  store i8 %159, i8* @g_318, align 1, !tbaa !9
  br label %129

; <label>:160                                     ; preds = %129
  %161 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %l_967 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i16* %l_966 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %163) #1
  %164 = bitcast i16** %l_852 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast %union.U0* %l_851 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast [7 x i32]* %l_807 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %166) #1
  %167 = bitcast i32*** %l_782 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  br label %168

; <label>:168                                     ; preds = %160
  store i64 0, i64* @g_435, align 8, !tbaa !7
  br label %169

; <label>:169                                     ; preds = %1813, %168
  %170 = load i64, i64* @g_435, align 8, !tbaa !7
  %171 = icmp sle i64 %170, 1
  br i1 %171, label %172, label %1816

; <label>:172                                     ; preds = %169
  %173 = bitcast i64* %l_973 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %173) #1
  store i64 -8874844060062256108, i64* %l_973, align 8, !tbaa !7
  %174 = bitcast [5 x i32]* %l_974 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %174) #1
  %175 = bitcast [5 x i32]* %l_974 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %175, i8* bitcast ([5 x i32]* @func_65.l_974 to i8*), i64 20, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_1028) #1
  store i8 1, i8* %l_1028, align 1, !tbaa !9
  %176 = bitcast [7 x i16*]* %l_1042 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %176) #1
  %177 = bitcast i16** %l_1048 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %177) #1
  store i16* @g_670, i16** %l_1048, align 8, !tbaa !5
  %178 = bitcast [5 x [10 x [5 x i16**]]]* %l_1047 to i8*
  call void @llvm.lifetime.start(i64 2000, i8* %178) #1
  %179 = getelementptr inbounds [5 x [10 x [5 x i16**]]], [5 x [10 x [5 x i16**]]]* %l_1047, i64 0, i64 0
  %180 = getelementptr inbounds [10 x [5 x i16**]], [10 x [5 x i16**]]* %179, i64 0, i64 0
  %181 = getelementptr inbounds [5 x i16**], [5 x i16**]* %180, i64 0, i64 0
  store i16** %l_1048, i16*** %181, !tbaa !5
  %182 = getelementptr inbounds i16**, i16*** %181, i64 1
  store i16** %l_1048, i16*** %182, !tbaa !5
  %183 = getelementptr inbounds i16**, i16*** %182, i64 1
  store i16** null, i16*** %183, !tbaa !5
  %184 = getelementptr inbounds i16**, i16*** %183, i64 1
  store i16** %l_1048, i16*** %184, !tbaa !5
  %185 = getelementptr inbounds i16**, i16*** %184, i64 1
  store i16** %l_1048, i16*** %185, !tbaa !5
  %186 = getelementptr inbounds [5 x i16**], [5 x i16**]* %180, i64 1
  %187 = getelementptr inbounds [5 x i16**], [5 x i16**]* %186, i64 0, i64 0
  store i16** null, i16*** %187, !tbaa !5
  %188 = getelementptr inbounds i16**, i16*** %187, i64 1
  store i16** %l_1048, i16*** %188, !tbaa !5
  %189 = getelementptr inbounds i16**, i16*** %188, i64 1
  store i16** %l_1048, i16*** %189, !tbaa !5
  %190 = getelementptr inbounds i16**, i16*** %189, i64 1
  store i16** %l_1048, i16*** %190, !tbaa !5
  %191 = getelementptr inbounds i16**, i16*** %190, i64 1
  store i16** null, i16*** %191, !tbaa !5
  %192 = getelementptr inbounds [5 x i16**], [5 x i16**]* %186, i64 1
  %193 = getelementptr inbounds [5 x i16**], [5 x i16**]* %192, i64 0, i64 0
  store i16** %l_1048, i16*** %193, !tbaa !5
  %194 = getelementptr inbounds i16**, i16*** %193, i64 1
  store i16** %l_1048, i16*** %194, !tbaa !5
  %195 = getelementptr inbounds i16**, i16*** %194, i64 1
  store i16** %l_1048, i16*** %195, !tbaa !5
  %196 = getelementptr inbounds i16**, i16*** %195, i64 1
  store i16** %l_1048, i16*** %196, !tbaa !5
  %197 = getelementptr inbounds i16**, i16*** %196, i64 1
  store i16** null, i16*** %197, !tbaa !5
  %198 = getelementptr inbounds [5 x i16**], [5 x i16**]* %192, i64 1
  %199 = getelementptr inbounds [5 x i16**], [5 x i16**]* %198, i64 0, i64 0
  store i16** %l_1048, i16*** %199, !tbaa !5
  %200 = getelementptr inbounds i16**, i16*** %199, i64 1
  store i16** %l_1048, i16*** %200, !tbaa !5
  %201 = getelementptr inbounds i16**, i16*** %200, i64 1
  store i16** %l_1048, i16*** %201, !tbaa !5
  %202 = getelementptr inbounds i16**, i16*** %201, i64 1
  store i16** %l_1048, i16*** %202, !tbaa !5
  %203 = getelementptr inbounds i16**, i16*** %202, i64 1
  store i16** null, i16*** %203, !tbaa !5
  %204 = getelementptr inbounds [5 x i16**], [5 x i16**]* %198, i64 1
  %205 = getelementptr inbounds [5 x i16**], [5 x i16**]* %204, i64 0, i64 0
  store i16** null, i16*** %205, !tbaa !5
  %206 = getelementptr inbounds i16**, i16*** %205, i64 1
  store i16** %l_1048, i16*** %206, !tbaa !5
  %207 = getelementptr inbounds i16**, i16*** %206, i64 1
  store i16** %l_1048, i16*** %207, !tbaa !5
  %208 = getelementptr inbounds i16**, i16*** %207, i64 1
  store i16** %l_1048, i16*** %208, !tbaa !5
  %209 = getelementptr inbounds i16**, i16*** %208, i64 1
  store i16** %l_1048, i16*** %209, !tbaa !5
  %210 = getelementptr inbounds [5 x i16**], [5 x i16**]* %204, i64 1
  %211 = getelementptr inbounds [5 x i16**], [5 x i16**]* %210, i64 0, i64 0
  store i16** %l_1048, i16*** %211, !tbaa !5
  %212 = getelementptr inbounds i16**, i16*** %211, i64 1
  store i16** %l_1048, i16*** %212, !tbaa !5
  %213 = getelementptr inbounds i16**, i16*** %212, i64 1
  store i16** %l_1048, i16*** %213, !tbaa !5
  %214 = getelementptr inbounds i16**, i16*** %213, i64 1
  store i16** %l_1048, i16*** %214, !tbaa !5
  %215 = getelementptr inbounds i16**, i16*** %214, i64 1
  store i16** %l_1048, i16*** %215, !tbaa !5
  %216 = getelementptr inbounds [5 x i16**], [5 x i16**]* %210, i64 1
  %217 = getelementptr inbounds [5 x i16**], [5 x i16**]* %216, i64 0, i64 0
  store i16** %l_1048, i16*** %217, !tbaa !5
  %218 = getelementptr inbounds i16**, i16*** %217, i64 1
  store i16** %l_1048, i16*** %218, !tbaa !5
  %219 = getelementptr inbounds i16**, i16*** %218, i64 1
  store i16** %l_1048, i16*** %219, !tbaa !5
  %220 = getelementptr inbounds i16**, i16*** %219, i64 1
  store i16** %l_1048, i16*** %220, !tbaa !5
  %221 = getelementptr inbounds i16**, i16*** %220, i64 1
  store i16** null, i16*** %221, !tbaa !5
  %222 = getelementptr inbounds [5 x i16**], [5 x i16**]* %216, i64 1
  %223 = getelementptr inbounds [5 x i16**], [5 x i16**]* %222, i64 0, i64 0
  store i16** %l_1048, i16*** %223, !tbaa !5
  %224 = getelementptr inbounds i16**, i16*** %223, i64 1
  store i16** null, i16*** %224, !tbaa !5
  %225 = getelementptr inbounds i16**, i16*** %224, i64 1
  store i16** %l_1048, i16*** %225, !tbaa !5
  %226 = getelementptr inbounds i16**, i16*** %225, i64 1
  store i16** %l_1048, i16*** %226, !tbaa !5
  %227 = getelementptr inbounds i16**, i16*** %226, i64 1
  store i16** %l_1048, i16*** %227, !tbaa !5
  %228 = getelementptr inbounds [5 x i16**], [5 x i16**]* %222, i64 1
  %229 = getelementptr inbounds [5 x i16**], [5 x i16**]* %228, i64 0, i64 0
  store i16** %l_1048, i16*** %229, !tbaa !5
  %230 = getelementptr inbounds i16**, i16*** %229, i64 1
  store i16** null, i16*** %230, !tbaa !5
  %231 = getelementptr inbounds i16**, i16*** %230, i64 1
  store i16** %l_1048, i16*** %231, !tbaa !5
  %232 = getelementptr inbounds i16**, i16*** %231, i64 1
  store i16** %l_1048, i16*** %232, !tbaa !5
  %233 = getelementptr inbounds i16**, i16*** %232, i64 1
  store i16** %l_1048, i16*** %233, !tbaa !5
  %234 = getelementptr inbounds [5 x i16**], [5 x i16**]* %228, i64 1
  %235 = getelementptr inbounds [5 x i16**], [5 x i16**]* %234, i64 0, i64 0
  store i16** %l_1048, i16*** %235, !tbaa !5
  %236 = getelementptr inbounds i16**, i16*** %235, i64 1
  store i16** null, i16*** %236, !tbaa !5
  %237 = getelementptr inbounds i16**, i16*** %236, i64 1
  store i16** %l_1048, i16*** %237, !tbaa !5
  %238 = getelementptr inbounds i16**, i16*** %237, i64 1
  store i16** %l_1048, i16*** %238, !tbaa !5
  %239 = getelementptr inbounds i16**, i16*** %238, i64 1
  store i16** %l_1048, i16*** %239, !tbaa !5
  %240 = getelementptr inbounds [10 x [5 x i16**]], [10 x [5 x i16**]]* %179, i64 1
  %241 = getelementptr inbounds [10 x [5 x i16**]], [10 x [5 x i16**]]* %240, i64 0, i64 0
  %242 = getelementptr inbounds [5 x i16**], [5 x i16**]* %241, i64 0, i64 0
  store i16** null, i16*** %242, !tbaa !5
  %243 = getelementptr inbounds i16**, i16*** %242, i64 1
  store i16** null, i16*** %243, !tbaa !5
  %244 = getelementptr inbounds i16**, i16*** %243, i64 1
  store i16** %l_1048, i16*** %244, !tbaa !5
  %245 = getelementptr inbounds i16**, i16*** %244, i64 1
  store i16** %l_1048, i16*** %245, !tbaa !5
  %246 = getelementptr inbounds i16**, i16*** %245, i64 1
  store i16** %l_1048, i16*** %246, !tbaa !5
  %247 = getelementptr inbounds [5 x i16**], [5 x i16**]* %241, i64 1
  %248 = getelementptr inbounds [5 x i16**], [5 x i16**]* %247, i64 0, i64 0
  store i16** %l_1048, i16*** %248, !tbaa !5
  %249 = getelementptr inbounds i16**, i16*** %248, i64 1
  store i16** %l_1048, i16*** %249, !tbaa !5
  %250 = getelementptr inbounds i16**, i16*** %249, i64 1
  store i16** %l_1048, i16*** %250, !tbaa !5
  %251 = getelementptr inbounds i16**, i16*** %250, i64 1
  store i16** %l_1048, i16*** %251, !tbaa !5
  %252 = getelementptr inbounds i16**, i16*** %251, i64 1
  store i16** %l_1048, i16*** %252, !tbaa !5
  %253 = getelementptr inbounds [5 x i16**], [5 x i16**]* %247, i64 1
  %254 = getelementptr inbounds [5 x i16**], [5 x i16**]* %253, i64 0, i64 0
  store i16** null, i16*** %254, !tbaa !5
  %255 = getelementptr inbounds i16**, i16*** %254, i64 1
  store i16** %l_1048, i16*** %255, !tbaa !5
  %256 = getelementptr inbounds i16**, i16*** %255, i64 1
  store i16** %l_1048, i16*** %256, !tbaa !5
  %257 = getelementptr inbounds i16**, i16*** %256, i64 1
  store i16** %l_1048, i16*** %257, !tbaa !5
  %258 = getelementptr inbounds i16**, i16*** %257, i64 1
  store i16** %l_1048, i16*** %258, !tbaa !5
  %259 = getelementptr inbounds [5 x i16**], [5 x i16**]* %253, i64 1
  %260 = getelementptr inbounds [5 x i16**], [5 x i16**]* %259, i64 0, i64 0
  store i16** null, i16*** %260, !tbaa !5
  %261 = getelementptr inbounds i16**, i16*** %260, i64 1
  store i16** %l_1048, i16*** %261, !tbaa !5
  %262 = getelementptr inbounds i16**, i16*** %261, i64 1
  store i16** null, i16*** %262, !tbaa !5
  %263 = getelementptr inbounds i16**, i16*** %262, i64 1
  store i16** %l_1048, i16*** %263, !tbaa !5
  %264 = getelementptr inbounds i16**, i16*** %263, i64 1
  store i16** %l_1048, i16*** %264, !tbaa !5
  %265 = getelementptr inbounds [5 x i16**], [5 x i16**]* %259, i64 1
  %266 = getelementptr inbounds [5 x i16**], [5 x i16**]* %265, i64 0, i64 0
  store i16** %l_1048, i16*** %266, !tbaa !5
  %267 = getelementptr inbounds i16**, i16*** %266, i64 1
  store i16** %l_1048, i16*** %267, !tbaa !5
  %268 = getelementptr inbounds i16**, i16*** %267, i64 1
  store i16** %l_1048, i16*** %268, !tbaa !5
  %269 = getelementptr inbounds i16**, i16*** %268, i64 1
  store i16** %l_1048, i16*** %269, !tbaa !5
  %270 = getelementptr inbounds i16**, i16*** %269, i64 1
  store i16** %l_1048, i16*** %270, !tbaa !5
  %271 = getelementptr inbounds [5 x i16**], [5 x i16**]* %265, i64 1
  %272 = getelementptr inbounds [5 x i16**], [5 x i16**]* %271, i64 0, i64 0
  store i16** %l_1048, i16*** %272, !tbaa !5
  %273 = getelementptr inbounds i16**, i16*** %272, i64 1
  store i16** %l_1048, i16*** %273, !tbaa !5
  %274 = getelementptr inbounds i16**, i16*** %273, i64 1
  store i16** %l_1048, i16*** %274, !tbaa !5
  %275 = getelementptr inbounds i16**, i16*** %274, i64 1
  store i16** %l_1048, i16*** %275, !tbaa !5
  %276 = getelementptr inbounds i16**, i16*** %275, i64 1
  store i16** %l_1048, i16*** %276, !tbaa !5
  %277 = getelementptr inbounds [5 x i16**], [5 x i16**]* %271, i64 1
  %278 = getelementptr inbounds [5 x i16**], [5 x i16**]* %277, i64 0, i64 0
  store i16** %l_1048, i16*** %278, !tbaa !5
  %279 = getelementptr inbounds i16**, i16*** %278, i64 1
  store i16** %l_1048, i16*** %279, !tbaa !5
  %280 = getelementptr inbounds i16**, i16*** %279, i64 1
  store i16** null, i16*** %280, !tbaa !5
  %281 = getelementptr inbounds i16**, i16*** %280, i64 1
  store i16** %l_1048, i16*** %281, !tbaa !5
  %282 = getelementptr inbounds i16**, i16*** %281, i64 1
  store i16** %l_1048, i16*** %282, !tbaa !5
  %283 = getelementptr inbounds [5 x i16**], [5 x i16**]* %277, i64 1
  %284 = getelementptr inbounds [5 x i16**], [5 x i16**]* %283, i64 0, i64 0
  store i16** %l_1048, i16*** %284, !tbaa !5
  %285 = getelementptr inbounds i16**, i16*** %284, i64 1
  store i16** %l_1048, i16*** %285, !tbaa !5
  %286 = getelementptr inbounds i16**, i16*** %285, i64 1
  store i16** null, i16*** %286, !tbaa !5
  %287 = getelementptr inbounds i16**, i16*** %286, i64 1
  store i16** %l_1048, i16*** %287, !tbaa !5
  %288 = getelementptr inbounds i16**, i16*** %287, i64 1
  store i16** %l_1048, i16*** %288, !tbaa !5
  %289 = getelementptr inbounds [5 x i16**], [5 x i16**]* %283, i64 1
  %290 = getelementptr inbounds [5 x i16**], [5 x i16**]* %289, i64 0, i64 0
  store i16** %l_1048, i16*** %290, !tbaa !5
  %291 = getelementptr inbounds i16**, i16*** %290, i64 1
  store i16** %l_1048, i16*** %291, !tbaa !5
  %292 = getelementptr inbounds i16**, i16*** %291, i64 1
  store i16** %l_1048, i16*** %292, !tbaa !5
  %293 = getelementptr inbounds i16**, i16*** %292, i64 1
  store i16** %l_1048, i16*** %293, !tbaa !5
  %294 = getelementptr inbounds i16**, i16*** %293, i64 1
  store i16** %l_1048, i16*** %294, !tbaa !5
  %295 = getelementptr inbounds [5 x i16**], [5 x i16**]* %289, i64 1
  %296 = getelementptr inbounds [5 x i16**], [5 x i16**]* %295, i64 0, i64 0
  store i16** %l_1048, i16*** %296, !tbaa !5
  %297 = getelementptr inbounds i16**, i16*** %296, i64 1
  store i16** null, i16*** %297, !tbaa !5
  %298 = getelementptr inbounds i16**, i16*** %297, i64 1
  store i16** null, i16*** %298, !tbaa !5
  %299 = getelementptr inbounds i16**, i16*** %298, i64 1
  store i16** %l_1048, i16*** %299, !tbaa !5
  %300 = getelementptr inbounds i16**, i16*** %299, i64 1
  store i16** null, i16*** %300, !tbaa !5
  %301 = getelementptr inbounds [10 x [5 x i16**]], [10 x [5 x i16**]]* %240, i64 1
  %302 = getelementptr inbounds [10 x [5 x i16**]], [10 x [5 x i16**]]* %301, i64 0, i64 0
  %303 = getelementptr inbounds [5 x i16**], [5 x i16**]* %302, i64 0, i64 0
  store i16** %l_1048, i16*** %303, !tbaa !5
  %304 = getelementptr inbounds i16**, i16*** %303, i64 1
  store i16** %l_1048, i16*** %304, !tbaa !5
  %305 = getelementptr inbounds i16**, i16*** %304, i64 1
  store i16** null, i16*** %305, !tbaa !5
  %306 = getelementptr inbounds i16**, i16*** %305, i64 1
  store i16** %l_1048, i16*** %306, !tbaa !5
  %307 = getelementptr inbounds i16**, i16*** %306, i64 1
  store i16** null, i16*** %307, !tbaa !5
  %308 = getelementptr inbounds [5 x i16**], [5 x i16**]* %302, i64 1
  %309 = getelementptr inbounds [5 x i16**], [5 x i16**]* %308, i64 0, i64 0
  store i16** %l_1048, i16*** %309, !tbaa !5
  %310 = getelementptr inbounds i16**, i16*** %309, i64 1
  store i16** %l_1048, i16*** %310, !tbaa !5
  %311 = getelementptr inbounds i16**, i16*** %310, i64 1
  store i16** null, i16*** %311, !tbaa !5
  %312 = getelementptr inbounds i16**, i16*** %311, i64 1
  store i16** null, i16*** %312, !tbaa !5
  %313 = getelementptr inbounds i16**, i16*** %312, i64 1
  store i16** %l_1048, i16*** %313, !tbaa !5
  %314 = getelementptr inbounds [5 x i16**], [5 x i16**]* %308, i64 1
  %315 = getelementptr inbounds [5 x i16**], [5 x i16**]* %314, i64 0, i64 0
  store i16** %l_1048, i16*** %315, !tbaa !5
  %316 = getelementptr inbounds i16**, i16*** %315, i64 1
  store i16** %l_1048, i16*** %316, !tbaa !5
  %317 = getelementptr inbounds i16**, i16*** %316, i64 1
  store i16** %l_1048, i16*** %317, !tbaa !5
  %318 = getelementptr inbounds i16**, i16*** %317, i64 1
  store i16** null, i16*** %318, !tbaa !5
  %319 = getelementptr inbounds i16**, i16*** %318, i64 1
  store i16** %l_1048, i16*** %319, !tbaa !5
  %320 = getelementptr inbounds [5 x i16**], [5 x i16**]* %314, i64 1
  %321 = getelementptr inbounds [5 x i16**], [5 x i16**]* %320, i64 0, i64 0
  store i16** null, i16*** %321, !tbaa !5
  %322 = getelementptr inbounds i16**, i16*** %321, i64 1
  store i16** %l_1048, i16*** %322, !tbaa !5
  %323 = getelementptr inbounds i16**, i16*** %322, i64 1
  store i16** null, i16*** %323, !tbaa !5
  %324 = getelementptr inbounds i16**, i16*** %323, i64 1
  store i16** %l_1048, i16*** %324, !tbaa !5
  %325 = getelementptr inbounds i16**, i16*** %324, i64 1
  store i16** %l_1048, i16*** %325, !tbaa !5
  %326 = getelementptr inbounds [5 x i16**], [5 x i16**]* %320, i64 1
  %327 = getelementptr inbounds [5 x i16**], [5 x i16**]* %326, i64 0, i64 0
  store i16** %l_1048, i16*** %327, !tbaa !5
  %328 = getelementptr inbounds i16**, i16*** %327, i64 1
  store i16** null, i16*** %328, !tbaa !5
  %329 = getelementptr inbounds i16**, i16*** %328, i64 1
  store i16** null, i16*** %329, !tbaa !5
  %330 = getelementptr inbounds i16**, i16*** %329, i64 1
  store i16** %l_1048, i16*** %330, !tbaa !5
  %331 = getelementptr inbounds i16**, i16*** %330, i64 1
  store i16** null, i16*** %331, !tbaa !5
  %332 = getelementptr inbounds [5 x i16**], [5 x i16**]* %326, i64 1
  %333 = getelementptr inbounds [5 x i16**], [5 x i16**]* %332, i64 0, i64 0
  store i16** null, i16*** %333, !tbaa !5
  %334 = getelementptr inbounds i16**, i16*** %333, i64 1
  store i16** %l_1048, i16*** %334, !tbaa !5
  %335 = getelementptr inbounds i16**, i16*** %334, i64 1
  store i16** %l_1048, i16*** %335, !tbaa !5
  %336 = getelementptr inbounds i16**, i16*** %335, i64 1
  store i16** null, i16*** %336, !tbaa !5
  %337 = getelementptr inbounds i16**, i16*** %336, i64 1
  store i16** %l_1048, i16*** %337, !tbaa !5
  %338 = getelementptr inbounds [5 x i16**], [5 x i16**]* %332, i64 1
  %339 = getelementptr inbounds [5 x i16**], [5 x i16**]* %338, i64 0, i64 0
  store i16** null, i16*** %339, !tbaa !5
  %340 = getelementptr inbounds i16**, i16*** %339, i64 1
  store i16** %l_1048, i16*** %340, !tbaa !5
  %341 = getelementptr inbounds i16**, i16*** %340, i64 1
  store i16** %l_1048, i16*** %341, !tbaa !5
  %342 = getelementptr inbounds i16**, i16*** %341, i64 1
  store i16** null, i16*** %342, !tbaa !5
  %343 = getelementptr inbounds i16**, i16*** %342, i64 1
  store i16** %l_1048, i16*** %343, !tbaa !5
  %344 = getelementptr inbounds [5 x i16**], [5 x i16**]* %338, i64 1
  %345 = getelementptr inbounds [5 x i16**], [5 x i16**]* %344, i64 0, i64 0
  store i16** %l_1048, i16*** %345, !tbaa !5
  %346 = getelementptr inbounds i16**, i16*** %345, i64 1
  store i16** %l_1048, i16*** %346, !tbaa !5
  %347 = getelementptr inbounds i16**, i16*** %346, i64 1
  store i16** null, i16*** %347, !tbaa !5
  %348 = getelementptr inbounds i16**, i16*** %347, i64 1
  store i16** %l_1048, i16*** %348, !tbaa !5
  %349 = getelementptr inbounds i16**, i16*** %348, i64 1
  store i16** %l_1048, i16*** %349, !tbaa !5
  %350 = getelementptr inbounds [5 x i16**], [5 x i16**]* %344, i64 1
  %351 = getelementptr inbounds [5 x i16**], [5 x i16**]* %350, i64 0, i64 0
  store i16** %l_1048, i16*** %351, !tbaa !5
  %352 = getelementptr inbounds i16**, i16*** %351, i64 1
  store i16** %l_1048, i16*** %352, !tbaa !5
  %353 = getelementptr inbounds i16**, i16*** %352, i64 1
  store i16** %l_1048, i16*** %353, !tbaa !5
  %354 = getelementptr inbounds i16**, i16*** %353, i64 1
  store i16** %l_1048, i16*** %354, !tbaa !5
  %355 = getelementptr inbounds i16**, i16*** %354, i64 1
  store i16** %l_1048, i16*** %355, !tbaa !5
  %356 = getelementptr inbounds [5 x i16**], [5 x i16**]* %350, i64 1
  %357 = getelementptr inbounds [5 x i16**], [5 x i16**]* %356, i64 0, i64 0
  store i16** %l_1048, i16*** %357, !tbaa !5
  %358 = getelementptr inbounds i16**, i16*** %357, i64 1
  store i16** null, i16*** %358, !tbaa !5
  %359 = getelementptr inbounds i16**, i16*** %358, i64 1
  store i16** %l_1048, i16*** %359, !tbaa !5
  %360 = getelementptr inbounds i16**, i16*** %359, i64 1
  store i16** %l_1048, i16*** %360, !tbaa !5
  %361 = getelementptr inbounds i16**, i16*** %360, i64 1
  store i16** null, i16*** %361, !tbaa !5
  %362 = getelementptr inbounds [10 x [5 x i16**]], [10 x [5 x i16**]]* %301, i64 1
  %363 = getelementptr inbounds [10 x [5 x i16**]], [10 x [5 x i16**]]* %362, i64 0, i64 0
  %364 = getelementptr inbounds [5 x i16**], [5 x i16**]* %363, i64 0, i64 0
  store i16** null, i16*** %364, !tbaa !5
  %365 = getelementptr inbounds i16**, i16*** %364, i64 1
  store i16** %l_1048, i16*** %365, !tbaa !5
  %366 = getelementptr inbounds i16**, i16*** %365, i64 1
  store i16** %l_1048, i16*** %366, !tbaa !5
  %367 = getelementptr inbounds i16**, i16*** %366, i64 1
  store i16** %l_1048, i16*** %367, !tbaa !5
  %368 = getelementptr inbounds i16**, i16*** %367, i64 1
  store i16** %l_1048, i16*** %368, !tbaa !5
  %369 = getelementptr inbounds [5 x i16**], [5 x i16**]* %363, i64 1
  %370 = getelementptr inbounds [5 x i16**], [5 x i16**]* %369, i64 0, i64 0
  store i16** %l_1048, i16*** %370, !tbaa !5
  %371 = getelementptr inbounds i16**, i16*** %370, i64 1
  store i16** %l_1048, i16*** %371, !tbaa !5
  %372 = getelementptr inbounds i16**, i16*** %371, i64 1
  store i16** %l_1048, i16*** %372, !tbaa !5
  %373 = getelementptr inbounds i16**, i16*** %372, i64 1
  store i16** %l_1048, i16*** %373, !tbaa !5
  %374 = getelementptr inbounds i16**, i16*** %373, i64 1
  store i16** %l_1048, i16*** %374, !tbaa !5
  %375 = getelementptr inbounds [5 x i16**], [5 x i16**]* %369, i64 1
  %376 = getelementptr inbounds [5 x i16**], [5 x i16**]* %375, i64 0, i64 0
  store i16** null, i16*** %376, !tbaa !5
  %377 = getelementptr inbounds i16**, i16*** %376, i64 1
  store i16** %l_1048, i16*** %377, !tbaa !5
  %378 = getelementptr inbounds i16**, i16*** %377, i64 1
  store i16** %l_1048, i16*** %378, !tbaa !5
  %379 = getelementptr inbounds i16**, i16*** %378, i64 1
  store i16** %l_1048, i16*** %379, !tbaa !5
  %380 = getelementptr inbounds i16**, i16*** %379, i64 1
  store i16** %l_1048, i16*** %380, !tbaa !5
  %381 = getelementptr inbounds [5 x i16**], [5 x i16**]* %375, i64 1
  %382 = getelementptr inbounds [5 x i16**], [5 x i16**]* %381, i64 0, i64 0
  store i16** %l_1048, i16*** %382, !tbaa !5
  %383 = getelementptr inbounds i16**, i16*** %382, i64 1
  store i16** %l_1048, i16*** %383, !tbaa !5
  %384 = getelementptr inbounds i16**, i16*** %383, i64 1
  store i16** %l_1048, i16*** %384, !tbaa !5
  %385 = getelementptr inbounds i16**, i16*** %384, i64 1
  store i16** %l_1048, i16*** %385, !tbaa !5
  %386 = getelementptr inbounds i16**, i16*** %385, i64 1
  store i16** %l_1048, i16*** %386, !tbaa !5
  %387 = getelementptr inbounds [5 x i16**], [5 x i16**]* %381, i64 1
  %388 = getelementptr inbounds [5 x i16**], [5 x i16**]* %387, i64 0, i64 0
  store i16** %l_1048, i16*** %388, !tbaa !5
  %389 = getelementptr inbounds i16**, i16*** %388, i64 1
  store i16** null, i16*** %389, !tbaa !5
  %390 = getelementptr inbounds i16**, i16*** %389, i64 1
  store i16** %l_1048, i16*** %390, !tbaa !5
  %391 = getelementptr inbounds i16**, i16*** %390, i64 1
  store i16** null, i16*** %391, !tbaa !5
  %392 = getelementptr inbounds i16**, i16*** %391, i64 1
  store i16** %l_1048, i16*** %392, !tbaa !5
  %393 = getelementptr inbounds [5 x i16**], [5 x i16**]* %387, i64 1
  %394 = getelementptr inbounds [5 x i16**], [5 x i16**]* %393, i64 0, i64 0
  store i16** %l_1048, i16*** %394, !tbaa !5
  %395 = getelementptr inbounds i16**, i16*** %394, i64 1
  store i16** null, i16*** %395, !tbaa !5
  %396 = getelementptr inbounds i16**, i16*** %395, i64 1
  store i16** %l_1048, i16*** %396, !tbaa !5
  %397 = getelementptr inbounds i16**, i16*** %396, i64 1
  store i16** %l_1048, i16*** %397, !tbaa !5
  %398 = getelementptr inbounds i16**, i16*** %397, i64 1
  store i16** %l_1048, i16*** %398, !tbaa !5
  %399 = getelementptr inbounds [5 x i16**], [5 x i16**]* %393, i64 1
  %400 = getelementptr inbounds [5 x i16**], [5 x i16**]* %399, i64 0, i64 0
  store i16** %l_1048, i16*** %400, !tbaa !5
  %401 = getelementptr inbounds i16**, i16*** %400, i64 1
  store i16** %l_1048, i16*** %401, !tbaa !5
  %402 = getelementptr inbounds i16**, i16*** %401, i64 1
  store i16** null, i16*** %402, !tbaa !5
  %403 = getelementptr inbounds i16**, i16*** %402, i64 1
  store i16** %l_1048, i16*** %403, !tbaa !5
  %404 = getelementptr inbounds i16**, i16*** %403, i64 1
  store i16** %l_1048, i16*** %404, !tbaa !5
  %405 = getelementptr inbounds [5 x i16**], [5 x i16**]* %399, i64 1
  %406 = getelementptr inbounds [5 x i16**], [5 x i16**]* %405, i64 0, i64 0
  store i16** %l_1048, i16*** %406, !tbaa !5
  %407 = getelementptr inbounds i16**, i16*** %406, i64 1
  store i16** %l_1048, i16*** %407, !tbaa !5
  %408 = getelementptr inbounds i16**, i16*** %407, i64 1
  store i16** %l_1048, i16*** %408, !tbaa !5
  %409 = getelementptr inbounds i16**, i16*** %408, i64 1
  store i16** %l_1048, i16*** %409, !tbaa !5
  %410 = getelementptr inbounds i16**, i16*** %409, i64 1
  store i16** %l_1048, i16*** %410, !tbaa !5
  %411 = getelementptr inbounds [5 x i16**], [5 x i16**]* %405, i64 1
  %412 = bitcast [5 x i16**]* %411 to i8*
  call void @llvm.memset.p0i8.i64(i8* %412, i8 0, i64 40, i32 8, i1 false)
  %413 = getelementptr inbounds [5 x i16**], [5 x i16**]* %411, i64 0, i64 0
  %414 = getelementptr inbounds i16**, i16*** %413, i64 1
  %415 = getelementptr inbounds i16**, i16*** %414, i64 1
  %416 = getelementptr inbounds i16**, i16*** %415, i64 1
  store i16** %l_1048, i16*** %416, !tbaa !5
  %417 = getelementptr inbounds i16**, i16*** %416, i64 1
  %418 = getelementptr inbounds [5 x i16**], [5 x i16**]* %411, i64 1
  %419 = getelementptr inbounds [5 x i16**], [5 x i16**]* %418, i64 0, i64 0
  store i16** null, i16*** %419, !tbaa !5
  %420 = getelementptr inbounds i16**, i16*** %419, i64 1
  store i16** %l_1048, i16*** %420, !tbaa !5
  %421 = getelementptr inbounds i16**, i16*** %420, i64 1
  store i16** null, i16*** %421, !tbaa !5
  %422 = getelementptr inbounds i16**, i16*** %421, i64 1
  store i16** %l_1048, i16*** %422, !tbaa !5
  %423 = getelementptr inbounds i16**, i16*** %422, i64 1
  store i16** %l_1048, i16*** %423, !tbaa !5
  %424 = getelementptr inbounds [10 x [5 x i16**]], [10 x [5 x i16**]]* %362, i64 1
  %425 = getelementptr inbounds [10 x [5 x i16**]], [10 x [5 x i16**]]* %424, i64 0, i64 0
  %426 = getelementptr inbounds [5 x i16**], [5 x i16**]* %425, i64 0, i64 0
  store i16** %l_1048, i16*** %426, !tbaa !5
  %427 = getelementptr inbounds i16**, i16*** %426, i64 1
  store i16** %l_1048, i16*** %427, !tbaa !5
  %428 = getelementptr inbounds i16**, i16*** %427, i64 1
  store i16** %l_1048, i16*** %428, !tbaa !5
  %429 = getelementptr inbounds i16**, i16*** %428, i64 1
  store i16** %l_1048, i16*** %429, !tbaa !5
  %430 = getelementptr inbounds i16**, i16*** %429, i64 1
  store i16** %l_1048, i16*** %430, !tbaa !5
  %431 = getelementptr inbounds [5 x i16**], [5 x i16**]* %425, i64 1
  %432 = getelementptr inbounds [5 x i16**], [5 x i16**]* %431, i64 0, i64 0
  store i16** %l_1048, i16*** %432, !tbaa !5
  %433 = getelementptr inbounds i16**, i16*** %432, i64 1
  store i16** %l_1048, i16*** %433, !tbaa !5
  %434 = getelementptr inbounds i16**, i16*** %433, i64 1
  store i16** null, i16*** %434, !tbaa !5
  %435 = getelementptr inbounds i16**, i16*** %434, i64 1
  store i16** %l_1048, i16*** %435, !tbaa !5
  %436 = getelementptr inbounds i16**, i16*** %435, i64 1
  store i16** %l_1048, i16*** %436, !tbaa !5
  %437 = getelementptr inbounds [5 x i16**], [5 x i16**]* %431, i64 1
  %438 = getelementptr inbounds [5 x i16**], [5 x i16**]* %437, i64 0, i64 0
  store i16** %l_1048, i16*** %438, !tbaa !5
  %439 = getelementptr inbounds i16**, i16*** %438, i64 1
  store i16** %l_1048, i16*** %439, !tbaa !5
  %440 = getelementptr inbounds i16**, i16*** %439, i64 1
  store i16** %l_1048, i16*** %440, !tbaa !5
  %441 = getelementptr inbounds i16**, i16*** %440, i64 1
  store i16** null, i16*** %441, !tbaa !5
  %442 = getelementptr inbounds i16**, i16*** %441, i64 1
  store i16** %l_1048, i16*** %442, !tbaa !5
  %443 = getelementptr inbounds [5 x i16**], [5 x i16**]* %437, i64 1
  %444 = getelementptr inbounds [5 x i16**], [5 x i16**]* %443, i64 0, i64 0
  store i16** %l_1048, i16*** %444, !tbaa !5
  %445 = getelementptr inbounds i16**, i16*** %444, i64 1
  store i16** %l_1048, i16*** %445, !tbaa !5
  %446 = getelementptr inbounds i16**, i16*** %445, i64 1
  store i16** %l_1048, i16*** %446, !tbaa !5
  %447 = getelementptr inbounds i16**, i16*** %446, i64 1
  store i16** %l_1048, i16*** %447, !tbaa !5
  %448 = getelementptr inbounds i16**, i16*** %447, i64 1
  store i16** %l_1048, i16*** %448, !tbaa !5
  %449 = getelementptr inbounds [5 x i16**], [5 x i16**]* %443, i64 1
  %450 = getelementptr inbounds [5 x i16**], [5 x i16**]* %449, i64 0, i64 0
  store i16** %l_1048, i16*** %450, !tbaa !5
  %451 = getelementptr inbounds i16**, i16*** %450, i64 1
  store i16** %l_1048, i16*** %451, !tbaa !5
  %452 = getelementptr inbounds i16**, i16*** %451, i64 1
  store i16** null, i16*** %452, !tbaa !5
  %453 = getelementptr inbounds i16**, i16*** %452, i64 1
  store i16** %l_1048, i16*** %453, !tbaa !5
  %454 = getelementptr inbounds i16**, i16*** %453, i64 1
  store i16** %l_1048, i16*** %454, !tbaa !5
  %455 = getelementptr inbounds [5 x i16**], [5 x i16**]* %449, i64 1
  %456 = getelementptr inbounds [5 x i16**], [5 x i16**]* %455, i64 0, i64 0
  store i16** %l_1048, i16*** %456, !tbaa !5
  %457 = getelementptr inbounds i16**, i16*** %456, i64 1
  store i16** null, i16*** %457, !tbaa !5
  %458 = getelementptr inbounds i16**, i16*** %457, i64 1
  store i16** null, i16*** %458, !tbaa !5
  %459 = getelementptr inbounds i16**, i16*** %458, i64 1
  store i16** %l_1048, i16*** %459, !tbaa !5
  %460 = getelementptr inbounds i16**, i16*** %459, i64 1
  store i16** %l_1048, i16*** %460, !tbaa !5
  %461 = getelementptr inbounds [5 x i16**], [5 x i16**]* %455, i64 1
  %462 = getelementptr inbounds [5 x i16**], [5 x i16**]* %461, i64 0, i64 0
  store i16** %l_1048, i16*** %462, !tbaa !5
  %463 = getelementptr inbounds i16**, i16*** %462, i64 1
  store i16** %l_1048, i16*** %463, !tbaa !5
  %464 = getelementptr inbounds i16**, i16*** %463, i64 1
  store i16** %l_1048, i16*** %464, !tbaa !5
  %465 = getelementptr inbounds i16**, i16*** %464, i64 1
  store i16** %l_1048, i16*** %465, !tbaa !5
  %466 = getelementptr inbounds i16**, i16*** %465, i64 1
  store i16** %l_1048, i16*** %466, !tbaa !5
  %467 = getelementptr inbounds [5 x i16**], [5 x i16**]* %461, i64 1
  %468 = getelementptr inbounds [5 x i16**], [5 x i16**]* %467, i64 0, i64 0
  store i16** null, i16*** %468, !tbaa !5
  %469 = getelementptr inbounds i16**, i16*** %468, i64 1
  store i16** %l_1048, i16*** %469, !tbaa !5
  %470 = getelementptr inbounds i16**, i16*** %469, i64 1
  store i16** %l_1048, i16*** %470, !tbaa !5
  %471 = getelementptr inbounds i16**, i16*** %470, i64 1
  store i16** null, i16*** %471, !tbaa !5
  %472 = getelementptr inbounds i16**, i16*** %471, i64 1
  store i16** %l_1048, i16*** %472, !tbaa !5
  %473 = getelementptr inbounds [5 x i16**], [5 x i16**]* %467, i64 1
  %474 = getelementptr inbounds [5 x i16**], [5 x i16**]* %473, i64 0, i64 0
  store i16** null, i16*** %474, !tbaa !5
  %475 = getelementptr inbounds i16**, i16*** %474, i64 1
  store i16** %l_1048, i16*** %475, !tbaa !5
  %476 = getelementptr inbounds i16**, i16*** %475, i64 1
  store i16** %l_1048, i16*** %476, !tbaa !5
  %477 = getelementptr inbounds i16**, i16*** %476, i64 1
  store i16** %l_1048, i16*** %477, !tbaa !5
  %478 = getelementptr inbounds i16**, i16*** %477, i64 1
  store i16** null, i16*** %478, !tbaa !5
  %479 = getelementptr inbounds [5 x i16**], [5 x i16**]* %473, i64 1
  %480 = getelementptr inbounds [5 x i16**], [5 x i16**]* %479, i64 0, i64 0
  store i16** %l_1048, i16*** %480, !tbaa !5
  %481 = getelementptr inbounds i16**, i16*** %480, i64 1
  store i16** %l_1048, i16*** %481, !tbaa !5
  %482 = getelementptr inbounds i16**, i16*** %481, i64 1
  store i16** %l_1048, i16*** %482, !tbaa !5
  %483 = getelementptr inbounds i16**, i16*** %482, i64 1
  store i16** %l_1048, i16*** %483, !tbaa !5
  %484 = getelementptr inbounds i16**, i16*** %483, i64 1
  store i16** null, i16*** %484, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1065) #1
  store i8 -9, i8* %l_1065, align 1, !tbaa !9
  %485 = bitcast i32* %l_1101 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %485) #1
  store i32 695808501, i32* %l_1101, align 4, !tbaa !1
  %486 = bitcast i32**** %l_1163 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %486) #1
  store i32*** %l_1064, i32**** %l_1163, align 8, !tbaa !5
  %487 = bitcast i32** %l_1165 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %487) #1
  store i32* null, i32** %l_1165, align 8, !tbaa !5
  %488 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %488) #1
  %489 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %489) #1
  %490 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %490) #1
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %491

; <label>:491                                     ; preds = %498, %172
  %492 = load i32, i32* %i4, align 4, !tbaa !1
  %493 = icmp slt i32 %492, 7
  br i1 %493, label %494, label %501

; <label>:494                                     ; preds = %491
  %495 = load i32, i32* %i4, align 4, !tbaa !1
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [7 x i16*], [7 x i16*]* %l_1042, i32 0, i64 %496
  store i16* @g_463, i16** %497, align 8, !tbaa !5
  br label %498

; <label>:498                                     ; preds = %494
  %499 = load i32, i32* %i4, align 4, !tbaa !1
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %i4, align 4, !tbaa !1
  br label %491

; <label>:501                                     ; preds = %491
  store i16 0, i16* %l_971, align 2, !tbaa !10
  br label %502

; <label>:502                                     ; preds = %1211, %501
  %503 = load i16, i16* %l_971, align 2, !tbaa !10
  %504 = zext i16 %503 to i32
  %505 = icmp sle i32 %504, 1
  br i1 %505, label %506, label %1216

; <label>:506                                     ; preds = %502
  %507 = bitcast i32* %l_979 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %507) #1
  store i32 -5, i32* %l_979, align 4, !tbaa !1
  %508 = bitcast i32* %l_980 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %508) #1
  store i32 1, i32* %l_980, align 4, !tbaa !1
  %509 = bitcast i32* %l_981 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %509) #1
  store i32 -3, i32* %l_981, align 4, !tbaa !1
  %510 = bitcast i32* %l_982 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %510) #1
  store i32 7, i32* %l_982, align 4, !tbaa !1
  %511 = bitcast i32* %l_983 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %511) #1
  store i32 1963746787, i32* %l_983, align 4, !tbaa !1
  %512 = bitcast i32* %l_984 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %512) #1
  store i32 277015940, i32* %l_984, align 4, !tbaa !1
  %513 = bitcast i32* %l_985 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %513) #1
  store i32 8, i32* %l_985, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_986) #1
  store i8 -1, i8* %l_986, align 1, !tbaa !9
  %514 = bitcast %union.U1* %l_996 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %514) #1
  %515 = bitcast %union.U1* %l_996 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %515, i8* bitcast ({ i32, [4 x i8] }* @func_65.l_996 to i8*), i64 8, i32 8, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_1003) #1
  store i8 -73, i8* %l_1003, align 1, !tbaa !9
  %516 = bitcast i32* %l_1027 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %516) #1
  store i32 7, i32* %l_1027, align 4, !tbaa !1
  %517 = bitcast i64***** %l_1059 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %517) #1
  store i64**** null, i64***** %l_1059, align 8, !tbaa !5
  %518 = bitcast i32* %l_1068 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %518) #1
  store i32 -1, i32* %l_1068, align 4, !tbaa !1
  %519 = bitcast i32* %l_1072 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %519) #1
  store i32 -1021801743, i32* %l_1072, align 4, !tbaa !1
  %520 = bitcast i32* %l_1073 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %520) #1
  store i32 1104865467, i32* %l_1073, align 4, !tbaa !1
  %521 = bitcast i32* %l_1077 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %521) #1
  store i32 1, i32* %l_1077, align 4, !tbaa !1
  %522 = bitcast i32* %l_1078 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %522) #1
  store i32 1, i32* %l_1078, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1079) #1
  store i8 2, i8* %l_1079, align 1, !tbaa !9
  %523 = bitcast i64* %l_1102 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %523) #1
  store i64 -4025009112940075225, i64* %l_1102, align 8, !tbaa !7
  store i8 0, i8* @g_121, align 1, !tbaa !9
  br label %524

; <label>:524                                     ; preds = %777, %506
  %525 = load i8, i8* @g_121, align 1, !tbaa !9
  %526 = zext i8 %525 to i32
  %527 = icmp sle i32 %526, 2
  br i1 %527, label %528, label %782

; <label>:528                                     ; preds = %524
  %529 = bitcast i32** %l_975 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %529) #1
  %530 = load i8, i8* @g_121, align 1, !tbaa !9
  %531 = zext i8 %530 to i64
  %532 = load i8, i8* @g_121, align 1, !tbaa !9
  %533 = zext i8 %532 to i32
  %534 = add nsw i32 %533, 3
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds [10 x [4 x i32]], [10 x [4 x i32]]* %l_813, i32 0, i64 %535
  %537 = getelementptr inbounds [4 x i32], [4 x i32]* %536, i32 0, i64 %531
  store i32* %537, i32** %l_975, align 8, !tbaa !5
  %538 = bitcast i32** %l_976 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %538) #1
  store i32* null, i32** %l_976, align 8, !tbaa !5
  %539 = bitcast i32** %l_977 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %539) #1
  %540 = load i16, i16* %l_971, align 2, !tbaa !10
  %541 = zext i16 %540 to i64
  %542 = load i16, i16* %l_971, align 2, !tbaa !10
  %543 = zext i16 %542 to i32
  %544 = add nsw i32 %543, 7
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds [10 x [4 x i32]], [10 x [4 x i32]]* %l_813, i32 0, i64 %545
  %547 = getelementptr inbounds [4 x i32], [4 x i32]* %546, i32 0, i64 %541
  store i32* %547, i32** %l_977, align 8, !tbaa !5
  %548 = bitcast [5 x i32*]* %l_978 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %548) #1
  %549 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %549) #1
  %550 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %550) #1
  %551 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %551) #1
  store i32 0, i32* %i7, align 4, !tbaa !1
  br label %552

; <label>:552                                     ; preds = %559, %528
  %553 = load i32, i32* %i7, align 4, !tbaa !1
  %554 = icmp slt i32 %553, 5
  br i1 %554, label %555, label %562

; <label>:555                                     ; preds = %552
  %556 = load i32, i32* %i7, align 4, !tbaa !1
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds [5 x i32*], [5 x i32*]* %l_978, i32 0, i64 %557
  store i32* null, i32** %558, align 8, !tbaa !5
  br label %559

; <label>:559                                     ; preds = %555
  %560 = load i32, i32* %i7, align 4, !tbaa !1
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %i7, align 4, !tbaa !1
  br label %552

; <label>:562                                     ; preds = %552
  %563 = load i16, i16* %l_971, align 2, !tbaa !10
  %564 = zext i16 %563 to i64
  %565 = load i16, i16* %l_971, align 2, !tbaa !10
  %566 = zext i16 %565 to i32
  %567 = add nsw i32 %566, 3
  %568 = sext i32 %567 to i64
  %569 = load i8, i8* @g_121, align 1, !tbaa !9
  %570 = zext i8 %569 to i64
  %571 = getelementptr inbounds [3 x [10 x [4 x i32]]], [3 x [10 x [4 x i32]]]* @g_278, i32 0, i64 %570
  %572 = getelementptr inbounds [10 x [4 x i32]], [10 x [4 x i32]]* %571, i32 0, i64 %568
  %573 = getelementptr inbounds [4 x i32], [4 x i32]* %572, i32 0, i64 %564
  %574 = load i32, i32* %573, align 4, !tbaa !1
  %575 = load i16, i16* %l_971, align 2, !tbaa !10
  %576 = zext i16 %575 to i64
  %577 = load i16, i16* %l_971, align 2, !tbaa !10
  %578 = zext i16 %577 to i32
  %579 = add nsw i32 %578, 7
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds [10 x [4 x i32]], [10 x [4 x i32]]* %l_813, i32 0, i64 %580
  %582 = getelementptr inbounds [4 x i32], [4 x i32]* %581, i32 0, i64 %576
  store i32 %574, i32* %582, align 4, !tbaa !1
  %583 = load i32*, i32** @g_699, align 8, !tbaa !5
  %584 = load i32, i32* %583, align 4, !tbaa !1
  %585 = and i32 %584, %574
  store i32 %585, i32* %583, align 4, !tbaa !1
  %586 = load i8, i8* %2, align 1, !tbaa !9
  %587 = zext i8 %586 to i64
  %588 = load i64**, i64*** @g_912, align 8, !tbaa !5
  %589 = load i64*, i64** %588, align 8, !tbaa !5
  store i64 %587, i64* %589, align 8, !tbaa !7
  %590 = xor i64 %587, -1
  store i64 %590, i64* %l_973, align 8, !tbaa !7
  %591 = load i8, i8* %l_986, align 1, !tbaa !9
  %592 = add i8 %591, 1
  store i8 %592, i8* %l_986, align 1, !tbaa !9
  store i32 3, i32* @g_462, align 4, !tbaa !1
  br label %593

; <label>:593                                     ; preds = %766, %562
  %594 = load i32, i32* @g_462, align 4, !tbaa !1
  %595 = icmp sle i32 %594, 9
  br i1 %595, label %596, label %769

; <label>:596                                     ; preds = %593
  %597 = bitcast i32** %l_1002 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %597) #1
  store i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_94, i32 0, i32 0), i32** %l_1002, align 8, !tbaa !5
  %598 = bitcast i32* %l_1007 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %598) #1
  store i32 -1, i32* %l_1007, align 4, !tbaa !1
  %599 = bitcast i64***** %l_1013 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %599) #1
  %600 = getelementptr inbounds [8 x [4 x i64***]], [8 x [4 x i64***]]* %l_1012, i32 0, i64 3
  %601 = getelementptr inbounds [4 x i64***], [4 x i64***]* %600, i32 0, i64 3
  store i64**** %601, i64***** %l_1013, align 8, !tbaa !5
  %602 = bitcast [7 x i32*]* %l_1015 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %602) #1
  %603 = bitcast i32** %l_1016 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %603) #1
  %604 = getelementptr inbounds [10 x [4 x i32]], [10 x [4 x i32]]* %l_813, i32 0, i64 4
  %605 = getelementptr inbounds [4 x i32], [4 x i32]* %604, i32 0, i64 3
  store i32* %605, i32** %l_1016, align 8, !tbaa !5
  %606 = bitcast i32** %l_1018 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %606) #1
  store i32* getelementptr inbounds ([3 x [10 x [4 x i32]]], [3 x [10 x [4 x i32]]]* @g_278, i32 0, i64 1, i64 0, i64 2), i32** %l_1018, align 8, !tbaa !5
  %607 = bitcast i32*** %l_1017 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %607) #1
  store i32** %l_1018, i32*** %l_1017, align 8, !tbaa !5
  %608 = bitcast i32** %l_1020 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %608) #1
  store i32* getelementptr inbounds ([3 x [10 x [4 x i32]]], [3 x [10 x [4 x i32]]]* @g_278, i32 0, i64 0, i64 7, i64 1), i32** %l_1020, align 8, !tbaa !5
  %609 = bitcast i32*** %l_1019 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %609) #1
  store i32** %l_1020, i32*** %l_1019, align 8, !tbaa !5
  %610 = bitcast i32** %l_1029 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %610) #1
  store i32* %l_979, i32** %l_1029, align 8, !tbaa !5
  %611 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %611) #1
  store i32 0, i32* %i10, align 4, !tbaa !1
  br label %612

; <label>:612                                     ; preds = %619, %596
  %613 = load i32, i32* %i10, align 4, !tbaa !1
  %614 = icmp slt i32 %613, 7
  br i1 %614, label %615, label %622

; <label>:615                                     ; preds = %612
  %616 = load i32, i32* %i10, align 4, !tbaa !1
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_1015, i32 0, i64 %617
  store i32* %l_984, i32** %618, align 8, !tbaa !5
  br label %619

; <label>:619                                     ; preds = %615
  %620 = load i32, i32* %i10, align 4, !tbaa !1
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %i10, align 4, !tbaa !1
  br label %612

; <label>:622                                     ; preds = %612
  %623 = load %union.U2*, %union.U2** @g_869, align 8, !tbaa !5
  %624 = bitcast %union.U2* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %624, i8* bitcast ({ i32, [4 x i8] }* @g_991 to i8*), i64 8, i32 8, i1 true), !tbaa.struct !13
  %625 = load i8, i8* %2, align 1, !tbaa !9
  %626 = zext i8 %625 to i64
  %627 = bitcast %union.U2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %627, i8* bitcast ({ i32, [4 x i8] }* @g_1001 to i8*), i64 8, i32 8, i1 true), !tbaa.struct !13
  %628 = load i8*, i8** %4, align 8, !tbaa !5
  %629 = load i8, i8* %628, align 1, !tbaa !9
  %630 = sext i8 %629 to i64
  %631 = and i64 77, %630
  %632 = trunc i64 %631 to i32
  %633 = load i32*, i32** %l_1002, align 8, !tbaa !5
  store i32 %632, i32* %633, align 4, !tbaa !1
  %634 = zext i32 %632 to i64
  %635 = load i64, i64* %3, align 8, !tbaa !7
  %636 = icmp sge i64 %634, %635
  %637 = zext i1 %636 to i32
  %638 = trunc i32 %637 to i16
  %639 = getelementptr inbounds [5 x i32], [5 x i32]* %l_974, i32 0, i64 3
  %640 = load i32, i32* %639, align 4, !tbaa !1
  %641 = trunc i32 %640 to i16
  %642 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %638, i16 zeroext %641)
  %643 = zext i16 %642 to i64
  %644 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_445, i32 0, i32 0), align 8
  %645 = and i32 %644, 67108863
  %646 = zext i32 %645 to i64
  %647 = call i64 @safe_add_func_int64_t_s_s(i64 %643, i64 %646)
  %648 = trunc i64 %647 to i8
  %649 = load i8*, i8** %4, align 8, !tbaa !5
  store i8 %648, i8* %649, align 1, !tbaa !9
  %650 = sext i8 %648 to i64
  %651 = icmp ne i64 57, %650
  %652 = zext i1 %651 to i32
  %653 = sext i32 %652 to i64
  store i64 %653, i64* %3, align 8, !tbaa !7
  %654 = icmp ule i64 %653, 1
  %655 = zext i1 %654 to i32
  %656 = sext i32 %655 to i64
  %657 = or i64 %656, 1
  %658 = call i64 @safe_add_func_uint64_t_u_u(i64 %657, i64 -1)
  %659 = icmp ugt i64 %626, %658
  %660 = zext i1 %659 to i32
  %661 = trunc i32 %660 to i16
  %662 = bitcast %union.U1* %l_996 to i16*
  %663 = load i16, i16* %662, align 2, !tbaa !10
  %664 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %661, i16 signext %663)
  %665 = sext i16 %664 to i32
  %666 = call i32* @func_40(i32 %665)
  %667 = load i16, i16* %l_971, align 2, !tbaa !10
  %668 = zext i16 %667 to i64
  %669 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_778, i32 0, i64 %668
  %670 = load i32*, i32** %669, align 8, !tbaa !5
  %671 = icmp eq i32* %666, %670
  %672 = zext i1 %671 to i32
  %673 = load i8, i8* %l_1003, align 1, !tbaa !9
  %674 = sext i8 %673 to i32
  %675 = xor i32 %672, %674
  %676 = trunc i32 %675 to i16
  %677 = load i16**, i16*** @g_482, align 8, !tbaa !5
  %678 = load i16*, i16** %677, align 8, !tbaa !5
  %679 = load i16, i16* %678, align 2, !tbaa !10
  %680 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %676, i16 zeroext %679)
  %681 = zext i16 %680 to i64
  %682 = or i64 7, %681
  %683 = load volatile i32**, i32*** @g_781, align 8, !tbaa !5
  %684 = load i32*, i32** %683, align 8, !tbaa !5
  %685 = load volatile i32**, i32*** @g_1004, align 8, !tbaa !5
  store i32* %684, i32** %685, align 8, !tbaa !5
  %686 = load i64, i64* %3, align 8, !tbaa !7
  %687 = load i32, i32* %l_1007, align 4, !tbaa !1
  %688 = sext i32 %687 to i64
  %689 = xor i64 %688, %686
  %690 = trunc i64 %689 to i32
  store i32 %690, i32* %l_1007, align 4, !tbaa !1
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds [8 x [4 x i64***]], [8 x [4 x i64***]]* %l_1012, i32 0, i64 3
  %693 = getelementptr inbounds [4 x i64***], [4 x i64***]* %692, i32 0, i64 3
  %694 = load i64***, i64**** %693, align 8, !tbaa !5
  %695 = load i64****, i64***** %l_1013, align 8, !tbaa !5
  store i64*** %694, i64**** %695, align 8, !tbaa !5
  %696 = load i64***, i64**** %l_1014, align 8, !tbaa !5
  %697 = icmp eq i64*** %694, %696
  %698 = zext i1 %697 to i32
  %699 = load i32*, i32** %l_1016, align 8, !tbaa !5
  store i32 %698, i32* %699, align 4, !tbaa !1
  %700 = call i32* @func_40(i32 %698)
  %701 = load i32**, i32*** %l_1017, align 8, !tbaa !5
  store i32* %700, i32** %701, align 8, !tbaa !5
  %702 = load i8*, i8** @g_454, align 8, !tbaa !5
  %703 = load i8, i8* %702, align 1, !tbaa !9
  %704 = load i32**, i32*** %l_1019, align 8, !tbaa !5
  store i32* %l_770, i32** %704, align 8, !tbaa !5
  %705 = icmp eq i32* %700, %l_770
  %706 = zext i1 %705 to i32
  %707 = sext i32 %706 to i64
  %708 = load i64, i64* %3, align 8, !tbaa !7
  %709 = load i8, i8* %2, align 1, !tbaa !9
  %710 = zext i8 %709 to i64
  %711 = icmp sge i64 180, %710
  %712 = zext i1 %711 to i32
  %713 = sext i32 %712 to i64
  %714 = icmp sge i64 %713, 209
  %715 = zext i1 %714 to i32
  %716 = trunc i32 %715 to i16
  %717 = load i16*, i16** @g_242, align 8, !tbaa !5
  store i16 %716, i16* %717, align 2, !tbaa !10
  %718 = load i32, i32* %l_1027, align 4, !tbaa !1
  %719 = sext i32 %718 to i64
  %720 = or i64 58066, %719
  %721 = and i64 %720, 65528
  %722 = or i64 %708, %721
  %723 = load i64, i64* %3, align 8, !tbaa !7
  %724 = and i64 %722, %723
  %725 = trunc i64 %724 to i16
  %726 = load i8, i8* %l_1028, align 1, !tbaa !9
  %727 = zext i8 %726 to i16
  %728 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %725, i16 signext %727)
  %729 = trunc i16 %728 to i8
  %730 = load i8*, i8** @g_454, align 8, !tbaa !5
  %731 = load i8, i8* %730, align 1, !tbaa !9
  %732 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %729, i8 signext %731)
  %733 = sext i8 %732 to i32
  %734 = getelementptr inbounds [7 x [4 x i8]], [7 x [4 x i8]]* %l_850, i32 0, i64 1
  %735 = getelementptr inbounds [4 x i8], [4 x i8]* %734, i32 0, i64 1
  %736 = load i8, i8* %735, align 1, !tbaa !9
  %737 = zext i8 %736 to i32
  %738 = xor i32 %733, %737
  %739 = load i32*, i32** %l_1029, align 8, !tbaa !5
  store i32 %738, i32* %739, align 4, !tbaa !1
  %740 = load i16, i16* @g_437, align 2, !tbaa !10
  %741 = sext i16 %740 to i32
  %742 = and i32 1, %741
  %743 = sext i32 %742 to i64
  %744 = load i8, i8* %2, align 1, !tbaa !9
  %745 = zext i8 %744 to i64
  %746 = call i64 @safe_div_func_uint64_t_u_u(i64 %743, i64 %745)
  %747 = call i64 @safe_add_func_uint64_t_u_u(i64 %707, i64 %746)
  %748 = call i64 @safe_div_func_uint64_t_u_u(i64 %747, i64 -792170602258416907)
  %749 = xor i64 %691, %748
  %750 = load i8*, i8** %4, align 8, !tbaa !5
  %751 = load i8, i8* %750, align 1, !tbaa !9
  %752 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %751, i32 1)
  %753 = sext i8 %752 to i32
  %754 = load i32*, i32** %l_975, align 8, !tbaa !5
  store i32 %753, i32* %754, align 4, !tbaa !1
  %755 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %755) #1
  %756 = bitcast i32** %l_1029 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %756) #1
  %757 = bitcast i32*** %l_1019 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %757) #1
  %758 = bitcast i32** %l_1020 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %758) #1
  %759 = bitcast i32*** %l_1017 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %759) #1
  %760 = bitcast i32** %l_1018 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %760) #1
  %761 = bitcast i32** %l_1016 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %761) #1
  %762 = bitcast [7 x i32*]* %l_1015 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %762) #1
  %763 = bitcast i64***** %l_1013 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %763) #1
  %764 = bitcast i32* %l_1007 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %764) #1
  %765 = bitcast i32** %l_1002 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %765) #1
  br label %766

; <label>:766                                     ; preds = %622
  %767 = load i32, i32* @g_462, align 4, !tbaa !1
  %768 = add nsw i32 %767, 1
  store i32 %768, i32* @g_462, align 4, !tbaa !1
  br label %593

; <label>:769                                     ; preds = %593
  %770 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %770) #1
  %771 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %771) #1
  %772 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %772) #1
  %773 = bitcast [5 x i32*]* %l_978 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %773) #1
  %774 = bitcast i32** %l_977 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %774) #1
  %775 = bitcast i32** %l_976 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %775) #1
  %776 = bitcast i32** %l_975 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %776) #1
  br label %777

; <label>:777                                     ; preds = %769
  %778 = load i8, i8* @g_121, align 1, !tbaa !9
  %779 = zext i8 %778 to i32
  %780 = add nsw i32 %779, 1
  %781 = trunc i32 %780 to i8
  store i8 %781, i8* @g_121, align 1, !tbaa !9
  br label %524

; <label>:782                                     ; preds = %524
  store i8 0, i8* %l_1003, align 1, !tbaa !9
  br label %783

; <label>:783                                     ; preds = %802, %782
  %784 = load i8, i8* %l_1003, align 1, !tbaa !9
  %785 = sext i8 %784 to i32
  %786 = icmp slt i32 %785, 8
  br i1 %786, label %787, label %807

; <label>:787                                     ; preds = %783
  store i32 0, i32* %l_985, align 4, !tbaa !1
  br label %788

; <label>:788                                     ; preds = %798, %787
  %789 = load i32, i32* %l_985, align 4, !tbaa !1
  %790 = icmp slt i32 %789, 4
  br i1 %790, label %791, label %801

; <label>:791                                     ; preds = %788
  %792 = load i32, i32* %l_985, align 4, !tbaa !1
  %793 = sext i32 %792 to i64
  %794 = load i8, i8* %l_1003, align 1, !tbaa !9
  %795 = sext i8 %794 to i64
  %796 = getelementptr inbounds [8 x [4 x i64***]], [8 x [4 x i64***]]* %l_1012, i32 0, i64 %795
  %797 = getelementptr inbounds [4 x i64***], [4 x i64***]* %796, i32 0, i64 %793
  store i64*** @g_912, i64**** %797, align 8, !tbaa !5
  br label %798

; <label>:798                                     ; preds = %791
  %799 = load i32, i32* %l_985, align 4, !tbaa !1
  %800 = add nsw i32 %799, 1
  store i32 %800, i32* %l_985, align 4, !tbaa !1
  br label %788

; <label>:801                                     ; preds = %788
  br label %802

; <label>:802                                     ; preds = %801
  %803 = load i8, i8* %l_1003, align 1, !tbaa !9
  %804 = sext i8 %803 to i32
  %805 = add nsw i32 %804, 1
  %806 = trunc i32 %805 to i8
  store i8 %806, i8* %l_1003, align 1, !tbaa !9
  br label %783

; <label>:807                                     ; preds = %783
  store i32 2, i32* %l_981, align 4, !tbaa !1
  br label %808

; <label>:808                                     ; preds = %1187, %807
  %809 = load i32, i32* %l_981, align 4, !tbaa !1
  %810 = icmp sle i32 %809, 9
  br i1 %810, label %811, label %1190

; <label>:811                                     ; preds = %808
  %812 = bitcast i64* %l_1030 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %812) #1
  store i64 0, i64* %l_1030, align 8, !tbaa !7
  %813 = bitcast i32* %l_1038 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %813) #1
  store i32 -7, i32* %l_1038, align 4, !tbaa !1
  %814 = bitcast %union.U0* %l_1044 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %814) #1
  %815 = bitcast %union.U0* %l_1044 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %815, i8* bitcast (%union.U0* @func_65.l_1044 to i8*), i64 4, i32 4, i1 false)
  %816 = bitcast i32* %l_1049 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %816) #1
  store i32 -1579573683, i32* %l_1049, align 4, !tbaa !1
  %817 = bitcast i64**** %l_1061 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %817) #1
  store i64*** @g_912, i64**** %l_1061, align 8, !tbaa !5
  %818 = bitcast i64***** %l_1060 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %818) #1
  store i64**** %l_1061, i64***** %l_1060, align 8, !tbaa !5
  %819 = bitcast i32* %l_1067 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %819) #1
  store i32 2035826495, i32* %l_1067, align 4, !tbaa !1
  %820 = bitcast i32* %l_1069 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %820) #1
  store i32 -8, i32* %l_1069, align 4, !tbaa !1
  %821 = bitcast i32* %l_1070 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %821) #1
  store i32 651979961, i32* %l_1070, align 4, !tbaa !1
  %822 = bitcast i32* %l_1071 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %822) #1
  store i32 6, i32* %l_1071, align 4, !tbaa !1
  %823 = bitcast i32* %l_1074 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %823) #1
  store i32 4, i32* %l_1074, align 4, !tbaa !1
  %824 = bitcast i32* %l_1075 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %824) #1
  store i32 1583801728, i32* %l_1075, align 4, !tbaa !1
  %825 = bitcast i32* %l_1076 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %825) #1
  store i32 8, i32* %l_1076, align 4, !tbaa !1
  %826 = bitcast i32* %l_1080 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %826) #1
  store i32 1, i32* %l_1080, align 4, !tbaa !1
  %827 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %827) #1
  store i16 9, i16* @g_694, align 2, !tbaa !10
  br label %828

; <label>:828                                     ; preds = %1150, %811
  %829 = load i16, i16* @g_694, align 2, !tbaa !10
  %830 = sext i16 %829 to i32
  %831 = icmp sge i32 %830, 3
  br i1 %831, label %832, label %1155

; <label>:832                                     ; preds = %828
  %833 = bitcast i8** %l_1031 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %833) #1
  %834 = getelementptr inbounds [7 x [4 x i8]], [7 x [4 x i8]]* %l_850, i32 0, i64 5
  %835 = getelementptr inbounds [4 x i8], [4 x i8]* %834, i32 0, i64 3
  store i8* %835, i8** %l_1031, align 8, !tbaa !5
  %836 = bitcast [2 x i32]* %l_1032 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %836) #1
  %837 = bitcast i8** %l_1035 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %837) #1
  store i8* %l_1028, i8** %l_1035, align 8, !tbaa !5
  %838 = bitcast i16** %l_1041 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %838) #1
  store i16* null, i16** %l_1041, align 8, !tbaa !5
  %839 = bitcast [7 x [5 x [6 x %union.U0]]]* %l_1091 to i8*
  call void @llvm.lifetime.start(i64 840, i8* %839) #1
  %840 = bitcast [7 x [5 x [6 x %union.U0]]]* %l_1091 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %840, i8* bitcast ([7 x [5 x [6 x %union.U0]]]* @func_65.l_1091 to i8*), i64 840, i32 16, i1 false)
  %841 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %841) #1
  %842 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %842) #1
  %843 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %843) #1
  store i32 0, i32* %i12, align 4, !tbaa !1
  br label %844

; <label>:844                                     ; preds = %851, %832
  %845 = load i32, i32* %i12, align 4, !tbaa !1
  %846 = icmp slt i32 %845, 2
  br i1 %846, label %847, label %854

; <label>:847                                     ; preds = %844
  %848 = load i32, i32* %i12, align 4, !tbaa !1
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds [2 x i32], [2 x i32]* %l_1032, i32 0, i64 %849
  store i32 -10, i32* %850, align 4, !tbaa !1
  br label %851

; <label>:851                                     ; preds = %847
  %852 = load i32, i32* %i12, align 4, !tbaa !1
  %853 = add nsw i32 %852, 1
  store i32 %853, i32* %i12, align 4, !tbaa !1
  br label %844

; <label>:854                                     ; preds = %844
  %855 = load i64, i64* %l_1030, align 8, !tbaa !7
  %856 = trunc i64 %855 to i8
  %857 = load i8*, i8** @g_454, align 8, !tbaa !5
  store i8 %856, i8* %857, align 1, !tbaa !9
  %858 = zext i8 %856 to i32
  %859 = load i8*, i8** %l_1031, align 8, !tbaa !5
  store i8 -7, i8* %859, align 1, !tbaa !9
  %860 = icmp eq i32 %858, 249
  %861 = zext i1 %860 to i32
  %862 = getelementptr inbounds [2 x i32], [2 x i32]* %l_1032, i32 0, i64 1
  %863 = load i32, i32* %862, align 4, !tbaa !1
  %864 = sext i32 %863 to i64
  %865 = load i32, i32* %l_849, align 4, !tbaa !1
  %866 = trunc i32 %865 to i8
  %867 = load i8*, i8** %l_1035, align 8, !tbaa !5
  %868 = load i8, i8* %867, align 1, !tbaa !9
  %869 = add i8 %868, -1
  store i8 %869, i8* %867, align 1, !tbaa !9
  %870 = zext i8 %869 to i32
  %871 = load i8, i8* %l_1003, align 1, !tbaa !9
  %872 = sext i8 %871 to i32
  %873 = icmp sle i32 %870, %872
  %874 = zext i1 %873 to i32
  %875 = trunc i32 %874 to i8
  %876 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %866, i8 signext %875)
  %877 = load i64, i64* %l_973, align 8, !tbaa !7
  %878 = icmp ne i64 %864, %877
  %879 = zext i1 %878 to i32
  %880 = icmp sge i32 %861, %879
  br i1 %880, label %881, label %1027

; <label>:881                                     ; preds = %854
  %882 = bitcast i16*** %l_1043 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %882) #1
  %883 = getelementptr inbounds [7 x i16*], [7 x i16*]* %l_1042, i32 0, i64 0
  store i16** %883, i16*** %l_1043, align 8, !tbaa !5
  %884 = bitcast i64* %l_1056 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %884) #1
  store i64 8992746400893538150, i64* %l_1056, align 8, !tbaa !7
  %885 = bitcast i64***** %l_1062 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %885) #1
  store i64**** %l_1061, i64***** %l_1062, align 8, !tbaa !5
  %886 = bitcast [2 x [1 x i32*]]* %l_1066 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %886) #1
  %887 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %887) #1
  %888 = bitcast i32* %j16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %888) #1
  store i32 0, i32* %i15, align 4, !tbaa !1
  br label %889

; <label>:889                                     ; preds = %907, %881
  %890 = load i32, i32* %i15, align 4, !tbaa !1
  %891 = icmp slt i32 %890, 2
  br i1 %891, label %892, label %910

; <label>:892                                     ; preds = %889
  store i32 0, i32* %j16, align 4, !tbaa !1
  br label %893

; <label>:893                                     ; preds = %903, %892
  %894 = load i32, i32* %j16, align 4, !tbaa !1
  %895 = icmp slt i32 %894, 1
  br i1 %895, label %896, label %906

; <label>:896                                     ; preds = %893
  %897 = load i32, i32* %j16, align 4, !tbaa !1
  %898 = sext i32 %897 to i64
  %899 = load i32, i32* %i15, align 4, !tbaa !1
  %900 = sext i32 %899 to i64
  %901 = getelementptr inbounds [2 x [1 x i32*]], [2 x [1 x i32*]]* %l_1066, i32 0, i64 %900
  %902 = getelementptr inbounds [1 x i32*], [1 x i32*]* %901, i32 0, i64 %898
  store i32* null, i32** %902, align 8, !tbaa !5
  br label %903

; <label>:903                                     ; preds = %896
  %904 = load i32, i32* %j16, align 4, !tbaa !1
  %905 = add nsw i32 %904, 1
  store i32 %905, i32* %j16, align 4, !tbaa !1
  br label %893

; <label>:906                                     ; preds = %893
  br label %907

; <label>:907                                     ; preds = %906
  %908 = load i32, i32* %i15, align 4, !tbaa !1
  %909 = add nsw i32 %908, 1
  store i32 %909, i32* %i15, align 4, !tbaa !1
  br label %889

; <label>:910                                     ; preds = %889
  %911 = load i16*, i16** @g_242, align 8, !tbaa !5
  %912 = load i16, i16* %911, align 2, !tbaa !10
  %913 = zext i16 %912 to i32
  store i32 63633, i32* %l_1038, align 4, !tbaa !1
  %914 = load i16*, i16** %l_1041, align 8, !tbaa !5
  %915 = getelementptr inbounds [7 x i16*], [7 x i16*]* %l_1042, i32 0, i64 0
  %916 = load i16*, i16** %915, align 8, !tbaa !5
  %917 = load i16**, i16*** %l_1043, align 8, !tbaa !5
  store i16* %916, i16** %917, align 8, !tbaa !5
  %918 = icmp ne i16* %914, %916
  br i1 %918, label %919, label %938

; <label>:919                                     ; preds = %910
  %920 = load i64*, i64** @g_913, align 8, !tbaa !5
  %921 = load i64, i64* %920, align 8, !tbaa !7
  %922 = load i64*, i64** @g_168, align 8, !tbaa !5
  %923 = load volatile i64, i64* %922, align 8, !tbaa !7
  %924 = getelementptr inbounds [5 x [10 x [5 x i16**]]], [5 x [10 x [5 x i16**]]]* %l_1047, i32 0, i64 0
  %925 = getelementptr inbounds [10 x [5 x i16**]], [10 x [5 x i16**]]* %924, i32 0, i64 9
  %926 = getelementptr inbounds [5 x i16**], [5 x i16**]* %925, i32 0, i64 0
  %927 = load i16**, i16*** %926, align 8, !tbaa !5
  %928 = icmp eq i16** %927, null
  %929 = zext i1 %928 to i32
  %930 = sext i32 %929 to i64
  %931 = and i64 %923, %930
  %932 = load i8, i8* %2, align 1, !tbaa !9
  %933 = zext i8 %932 to i64
  %934 = icmp ne i64 %931, %933
  %935 = zext i1 %934 to i32
  %936 = load i32, i32* %l_1027, align 4, !tbaa !1
  %937 = icmp sle i32 %935, %936
  br label %938

; <label>:938                                     ; preds = %919, %910
  %939 = phi i1 [ false, %910 ], [ %937, %919 ]
  %940 = zext i1 %939 to i32
  %941 = trunc i32 %940 to i16
  %942 = load i16**, i16*** @g_482, align 8, !tbaa !5
  %943 = load i16*, i16** %942, align 8, !tbaa !5
  %944 = load i16, i16* %943, align 2, !tbaa !10
  %945 = zext i16 %944 to i32
  %946 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %941, i32 %945)
  %947 = zext i16 %946 to i32
  %948 = xor i32 63633, %947
  %949 = sext i32 %948 to i64
  %950 = icmp sle i64 142, %949
  br i1 %950, label %954, label %951

; <label>:951                                     ; preds = %938
  %952 = load i32, i32* %l_1049, align 4, !tbaa !1
  %953 = icmp ne i32 %952, 0
  br label %954

; <label>:954                                     ; preds = %951, %938
  %955 = phi i1 [ true, %938 ], [ %953, %951 ]
  %956 = zext i1 %955 to i32
  %957 = load i32, i32* getelementptr inbounds (<{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }>, <{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }>* @g_276, i32 0, i32 0, i32 0), align 8
  %958 = and i32 %957, 67108863
  %959 = icmp sle i32 %956, %958
  %960 = zext i1 %959 to i32
  %961 = load i64, i64* %3, align 8, !tbaa !7
  %962 = getelementptr inbounds [5 x i32], [5 x i32]* %l_974, i32 0, i64 1
  %963 = load i32, i32* %962, align 4, !tbaa !1
  %964 = sext i32 %963 to i64
  %965 = and i64 %964, %961
  %966 = trunc i64 %965 to i32
  store i32 %966, i32* %962, align 4, !tbaa !1
  %967 = and i32 %913, %966
  %968 = load i32*, i32** @g_699, align 8, !tbaa !5
  %969 = load i32, i32* %968, align 4, !tbaa !1
  %970 = and i32 %969, %967
  store i32 %970, i32* %968, align 4, !tbaa !1
  %971 = load i8, i8* %2, align 1, !tbaa !9
  %972 = icmp ne i8 %971, 0
  br i1 %972, label %973, label %974

; <label>:973                                     ; preds = %954
  store i32 41, i32* %5
  br label %1019

; <label>:974                                     ; preds = %954
  %975 = load %union.U1**, %union.U1*** @g_1050, align 8, !tbaa !5
  %976 = icmp ne %union.U1** null, %975
  %977 = zext i1 %976 to i32
  %978 = load i64, i64* %l_973, align 8, !tbaa !7
  %979 = icmp ne i64 %978, 0
  br i1 %979, label %985, label %980

; <label>:980                                     ; preds = %974
  %981 = load i8*, i8** @g_454, align 8, !tbaa !5
  %982 = load i8, i8* %981, align 1, !tbaa !9
  %983 = zext i8 %982 to i32
  %984 = icmp ne i32 %983, 0
  br label %985

; <label>:985                                     ; preds = %980, %974
  %986 = phi i1 [ true, %974 ], [ %984, %980 ]
  %987 = zext i1 %986 to i32
  %988 = trunc i32 %987 to i8
  %989 = load i64, i64* %l_1056, align 8, !tbaa !7
  %990 = trunc i64 %989 to i8
  %991 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %988, i8 signext %990)
  %992 = load i64****, i64***** %l_1059, align 8, !tbaa !5
  %993 = load i64****, i64***** %l_1060, align 8, !tbaa !5
  store i64**** %993, i64***** %l_1062, align 8, !tbaa !5
  %994 = icmp ne i64**** %992, %993
  %995 = zext i1 %994 to i32
  %996 = load i32***, i32**** %l_1063, align 8, !tbaa !5
  %997 = icmp eq i32*** @g_1004, %996
  %998 = zext i1 %997 to i32
  %999 = getelementptr inbounds [5 x i32], [5 x i32]* %l_974, i32 0, i64 2
  %1000 = load i32, i32* %999, align 4, !tbaa !1
  %1001 = call i32 @safe_sub_func_int32_t_s_s(i32 %998, i32 %1000)
  %1002 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %991, i32 %1001)
  %1003 = sext i8 %1002 to i64
  %1004 = icmp slt i64 %1003, -1
  %1005 = zext i1 %1004 to i32
  %1006 = sext i32 %1005 to i64
  %1007 = load i64, i64* %l_1056, align 8, !tbaa !7
  %1008 = icmp uge i64 %1006, %1007
  %1009 = zext i1 %1008 to i32
  %1010 = load i8, i8* %l_1065, align 1, !tbaa !9
  %1011 = sext i8 %1010 to i32
  %1012 = icmp eq i32 %1009, %1011
  %1013 = zext i1 %1012 to i32
  %1014 = load i32*, i32** @g_699, align 8, !tbaa !5
  %1015 = load i32, i32* %1014, align 4, !tbaa !1
  %1016 = xor i32 %1015, %1013
  store i32 %1016, i32* %1014, align 4, !tbaa !1
  %1017 = load i32, i32* %l_1080, align 4, !tbaa !1
  %1018 = add i32 %1017, 1
  store i32 %1018, i32* %l_1080, align 4, !tbaa !1
  store i32 0, i32* %5
  br label %1019

; <label>:1019                                    ; preds = %985, %973
  %1020 = bitcast i32* %j16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1020) #1
  %1021 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1021) #1
  %1022 = bitcast [2 x [1 x i32*]]* %l_1066 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1022) #1
  %1023 = bitcast i64***** %l_1062 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1023) #1
  %1024 = bitcast i64* %l_1056 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1024) #1
  %1025 = bitcast i16*** %l_1043 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1025) #1
  %cleanup.dest = load i32, i32* %5
  switch i32 %cleanup.dest, label %1140 [
    i32 0, label %1026
  ]

; <label>:1026                                    ; preds = %1019
  br label %1139

; <label>:1027                                    ; preds = %854
  %1028 = bitcast %union.U0* %l_1087 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1028) #1
  %1029 = bitcast %union.U0* %l_1087 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1029, i8* bitcast (%union.U0* @func_65.l_1087 to i8*), i64 4, i32 4, i1 false)
  %1030 = bitcast i8** %l_1098 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1030) #1
  store i8* null, i8** %l_1098, align 8, !tbaa !5
  %1031 = bitcast [3 x i8*]* %l_1099 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1031) #1
  %1032 = bitcast [3 x i32]* %l_1100 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %1032) #1
  %1033 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1033) #1
  store i32 0, i32* %i17, align 4, !tbaa !1
  br label %1034

; <label>:1034                                    ; preds = %1041, %1027
  %1035 = load i32, i32* %i17, align 4, !tbaa !1
  %1036 = icmp slt i32 %1035, 3
  br i1 %1036, label %1037, label %1044

; <label>:1037                                    ; preds = %1034
  %1038 = load i32, i32* %i17, align 4, !tbaa !1
  %1039 = sext i32 %1038 to i64
  %1040 = getelementptr inbounds [3 x i8*], [3 x i8*]* %l_1099, i32 0, i64 %1039
  store i8* @g_204, i8** %1040, align 8, !tbaa !5
  br label %1041

; <label>:1041                                    ; preds = %1037
  %1042 = load i32, i32* %i17, align 4, !tbaa !1
  %1043 = add nsw i32 %1042, 1
  store i32 %1043, i32* %i17, align 4, !tbaa !1
  br label %1034

; <label>:1044                                    ; preds = %1034
  store i32 0, i32* %i17, align 4, !tbaa !1
  br label %1045

; <label>:1045                                    ; preds = %1052, %1044
  %1046 = load i32, i32* %i17, align 4, !tbaa !1
  %1047 = icmp slt i32 %1046, 3
  br i1 %1047, label %1048, label %1055

; <label>:1048                                    ; preds = %1045
  %1049 = load i32, i32* %i17, align 4, !tbaa !1
  %1050 = sext i32 %1049 to i64
  %1051 = getelementptr inbounds [3 x i32], [3 x i32]* %l_1100, i32 0, i64 %1050
  store i32 458566024, i32* %1051, align 4, !tbaa !1
  br label %1052

; <label>:1052                                    ; preds = %1048
  %1053 = load i32, i32* %i17, align 4, !tbaa !1
  %1054 = add nsw i32 %1053, 1
  store i32 %1054, i32* %i17, align 4, !tbaa !1
  br label %1045

; <label>:1055                                    ; preds = %1045
  %1056 = load i8*, i8** %4, align 8, !tbaa !5
  %1057 = load i8, i8* %1056, align 1, !tbaa !9
  %1058 = sext i8 %1057 to i32
  %1059 = getelementptr inbounds [5 x i32], [5 x i32]* %l_974, i32 0, i64 4
  %1060 = load i32, i32* %1059, align 4, !tbaa !1
  %1061 = xor i32 %1060, %1058
  store i32 %1061, i32* %1059, align 4, !tbaa !1
  %1062 = trunc i32 %1061 to i8
  %1063 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext 38, i8 zeroext %1062)
  %1064 = zext i8 %1063 to i32
  %1065 = icmp ne i32 %1064, 0
  br i1 %1065, label %1115, label %1066

; <label>:1066                                    ; preds = %1055
  %1067 = getelementptr inbounds [7 x [5 x [6 x %union.U0]]], [7 x [5 x [6 x %union.U0]]]* %l_1091, i32 0, i64 3
  %1068 = getelementptr inbounds [5 x [6 x %union.U0]], [5 x [6 x %union.U0]]* %1067, i32 0, i64 1
  %1069 = getelementptr inbounds [6 x %union.U0], [6 x %union.U0]* %1068, i32 0, i64 2
  %1070 = load i32, i32* %l_1070, align 4, !tbaa !1
  %1071 = sext i32 %1070 to i64
  %1072 = bitcast %union.U0* %l_1087 to i32*
  %1073 = load i32, i32* %1072, align 4, !tbaa !1
  %1074 = trunc i32 %1073 to i8
  %1075 = load %union.U2*, %union.U2** @g_869, align 8, !tbaa !5
  %1076 = getelementptr inbounds [2 x i32], [2 x i32]* %l_1032, i32 0, i64 0
  %1077 = load i32, i32* %1076, align 4, !tbaa !1
  %1078 = trunc i32 %1077 to i8
  %1079 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1074, i8 signext %1078)
  %1080 = sext i8 %1079 to i64
  %1081 = call i64 @safe_add_func_uint64_t_u_u(i64 %1071, i64 %1080)
  %1082 = load i8, i8* @g_286, align 1, !tbaa !9
  %1083 = sext i8 %1082 to i64
  %1084 = icmp ne i64 %1081, %1083
  %1085 = zext i1 %1084 to i32
  %1086 = sext i32 %1085 to i64
  %1087 = icmp sgt i64 %1086, 151
  %1088 = zext i1 %1087 to i32
  %1089 = load i8, i8* %2, align 1, !tbaa !9
  %1090 = zext i8 %1089 to i16
  %1091 = load i64, i64* %3, align 8, !tbaa !7
  %1092 = trunc i64 %1091 to i16
  %1093 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %1090, i16 zeroext %1092)
  %1094 = zext i16 %1093 to i32
  %1095 = bitcast %union.U0* %l_1087 to i32*
  %1096 = load i32, i32* %1095, align 4, !tbaa !1
  %1097 = or i32 %1094, %1096
  %1098 = icmp ne i32 %1097, 0
  br i1 %1098, label %1100, label %1099

; <label>:1099                                    ; preds = %1066
  br label %1100

; <label>:1100                                    ; preds = %1099, %1066
  %1101 = phi i1 [ true, %1066 ], [ true, %1099 ]
  %1102 = zext i1 %1101 to i32
  %1103 = sext i32 %1102 to i64
  %1104 = icmp sge i64 %1103, 38739
  %1105 = zext i1 %1104 to i32
  %1106 = trunc i32 %1105 to i8
  %1107 = load i8*, i8** %4, align 8, !tbaa !5
  %1108 = load i8, i8* %1107, align 1, !tbaa !9
  %1109 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1106, i8 zeroext %1108)
  %1110 = load i8, i8* %2, align 1, !tbaa !9
  %1111 = zext i8 %1110 to i64
  %1112 = load i64, i64* %3, align 8, !tbaa !7
  %1113 = xor i64 %1111, %1112
  %1114 = icmp ne i64 %1113, 0
  br label %1115

; <label>:1115                                    ; preds = %1100, %1055
  %1116 = phi i1 [ true, %1055 ], [ %1114, %1100 ]
  %1117 = zext i1 %1116 to i32
  %1118 = getelementptr inbounds [3 x i32], [3 x i32]* %l_1100, i32 0, i64 1
  %1119 = load i32, i32* %1118, align 4, !tbaa !1
  %1120 = and i32 %1119, %1117
  store i32 %1120, i32* %1118, align 4, !tbaa !1
  %1121 = trunc i32 %1120 to i8
  %1122 = load i64, i64* %l_973, align 8, !tbaa !7
  %1123 = trunc i64 %1122 to i32
  %1124 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %1121, i32 %1123)
  %1125 = sext i8 %1124 to i32
  %1126 = load i32, i32* %l_1101, align 4, !tbaa !1
  %1127 = xor i32 %1126, %1125
  store i32 %1127, i32* %l_1101, align 4, !tbaa !1
  %1128 = load i8, i8* %2, align 1, !tbaa !9
  %1129 = icmp ne i8 %1128, 0
  br i1 %1129, label %1130, label %1131

; <label>:1130                                    ; preds = %1115
  store i32 39, i32* %5
  br label %1132

; <label>:1131                                    ; preds = %1115
  store i32 0, i32* %5
  br label %1132

; <label>:1132                                    ; preds = %1131, %1130
  %1133 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1133) #1
  %1134 = bitcast [3 x i32]* %l_1100 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1134) #1
  %1135 = bitcast [3 x i8*]* %l_1099 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1135) #1
  %1136 = bitcast i8** %l_1098 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1136) #1
  %1137 = bitcast %union.U0* %l_1087 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1137) #1
  %cleanup.dest.18 = load i32, i32* %5
  switch i32 %cleanup.dest.18, label %1140 [
    i32 0, label %1138
  ]

; <label>:1138                                    ; preds = %1132
  br label %1139

; <label>:1139                                    ; preds = %1138, %1026
  store i32 0, i32* %5
  br label %1140

; <label>:1140                                    ; preds = %1139, %1132, %1019
  %1141 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1141) #1
  %1142 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1142) #1
  %1143 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1143) #1
  %1144 = bitcast [7 x [5 x [6 x %union.U0]]]* %l_1091 to i8*
  call void @llvm.lifetime.end(i64 840, i8* %1144) #1
  %1145 = bitcast i16** %l_1041 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1145) #1
  %1146 = bitcast i8** %l_1035 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1146) #1
  %1147 = bitcast [2 x i32]* %l_1032 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1147) #1
  %1148 = bitcast i8** %l_1031 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1148) #1
  %cleanup.dest.19 = load i32, i32* %5
  switch i32 %cleanup.dest.19, label %1842 [
    i32 0, label %1149
    i32 41, label %1150
    i32 39, label %1155
  ]

; <label>:1149                                    ; preds = %1140
  br label %1150

; <label>:1150                                    ; preds = %1149, %1140
  %1151 = load i16, i16* @g_694, align 2, !tbaa !10
  %1152 = sext i16 %1151 to i32
  %1153 = sub nsw i32 %1152, 1
  %1154 = trunc i32 %1153 to i16
  store i16 %1154, i16* @g_694, align 2, !tbaa !10
  br label %828

; <label>:1155                                    ; preds = %1140, %828
  %1156 = load i32*, i32** @g_699, align 8, !tbaa !5
  %1157 = load i32, i32* %1156, align 4, !tbaa !1
  %1158 = call i32* @func_40(i32 %1157)
  %1159 = load i32**, i32*** %l_1064, align 8, !tbaa !5
  store i32* %1158, i32** %1159, align 8, !tbaa !5
  %1160 = load i16, i16* %l_971, align 2, !tbaa !10
  %1161 = zext i16 %1160 to i64
  %1162 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_778, i32 0, i64 %1161
  %1163 = load i32*, i32** %1162, align 8, !tbaa !5
  %1164 = load i32***, i32**** %l_1063, align 8, !tbaa !5
  %1165 = load i32**, i32*** %1164, align 8, !tbaa !5
  store i32* %1163, i32** %1165, align 8, !tbaa !5
  %1166 = load i64, i64* %l_1102, align 8, !tbaa !7
  %1167 = icmp ne i64 %1166, 0
  br i1 %1167, label %1168, label %1169

; <label>:1168                                    ; preds = %1155
  store i32 38, i32* %5
  br label %1170

; <label>:1169                                    ; preds = %1155
  store i32 0, i32* %5
  br label %1170

; <label>:1170                                    ; preds = %1169, %1168
  %1171 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1171) #1
  %1172 = bitcast i32* %l_1080 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1172) #1
  %1173 = bitcast i32* %l_1076 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1173) #1
  %1174 = bitcast i32* %l_1075 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1174) #1
  %1175 = bitcast i32* %l_1074 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1175) #1
  %1176 = bitcast i32* %l_1071 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1176) #1
  %1177 = bitcast i32* %l_1070 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1177) #1
  %1178 = bitcast i32* %l_1069 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1178) #1
  %1179 = bitcast i32* %l_1067 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1179) #1
  %1180 = bitcast i64***** %l_1060 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1180) #1
  %1181 = bitcast i64**** %l_1061 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1181) #1
  %1182 = bitcast i32* %l_1049 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1182) #1
  %1183 = bitcast %union.U0* %l_1044 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1183) #1
  %1184 = bitcast i32* %l_1038 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1184) #1
  %1185 = bitcast i64* %l_1030 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1185) #1
  %cleanup.dest.20 = load i32, i32* %5
  switch i32 %cleanup.dest.20, label %1842 [
    i32 0, label %1186
    i32 38, label %1187
  ]

; <label>:1186                                    ; preds = %1170
  br label %1187

; <label>:1187                                    ; preds = %1186, %1170
  %1188 = load i32, i32* %l_981, align 4, !tbaa !1
  %1189 = add nsw i32 %1188, 1
  store i32 %1189, i32* %l_981, align 4, !tbaa !1
  br label %808

; <label>:1190                                    ; preds = %808
  %1191 = load i32*, i32** @g_699, align 8, !tbaa !5
  %1192 = load i32, i32* %1191, align 4, !tbaa !1
  %1193 = call i32* @func_40(i32 %1192)
  %1194 = load i32**, i32*** %l_1064, align 8, !tbaa !5
  store i32* %1193, i32** %1194, align 8, !tbaa !5
  %1195 = bitcast i64* %l_1102 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1195) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1079) #1
  %1196 = bitcast i32* %l_1078 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1196) #1
  %1197 = bitcast i32* %l_1077 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1197) #1
  %1198 = bitcast i32* %l_1073 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1198) #1
  %1199 = bitcast i32* %l_1072 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1199) #1
  %1200 = bitcast i32* %l_1068 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1200) #1
  %1201 = bitcast i64***** %l_1059 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1201) #1
  %1202 = bitcast i32* %l_1027 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1202) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1003) #1
  %1203 = bitcast %union.U1* %l_996 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1203) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_986) #1
  %1204 = bitcast i32* %l_985 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1204) #1
  %1205 = bitcast i32* %l_984 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1205) #1
  %1206 = bitcast i32* %l_983 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1206) #1
  %1207 = bitcast i32* %l_982 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1207) #1
  %1208 = bitcast i32* %l_981 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1208) #1
  %1209 = bitcast i32* %l_980 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1209) #1
  %1210 = bitcast i32* %l_979 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1210) #1
  br label %1211

; <label>:1211                                    ; preds = %1190
  %1212 = load i16, i16* %l_971, align 2, !tbaa !10
  %1213 = zext i16 %1212 to i32
  %1214 = add nsw i32 %1213, 1
  %1215 = trunc i32 %1214 to i16
  store i16 %1215, i16* %l_971, align 2, !tbaa !10
  br label %502

; <label>:1216                                    ; preds = %502
  %1217 = load i8, i8* %l_1065, align 1, !tbaa !9
  %1218 = icmp ne i8 %1217, 0
  br i1 %1218, label %1219, label %1220

; <label>:1219                                    ; preds = %1216
  store i32 9, i32* %5
  br label %1800

; <label>:1220                                    ; preds = %1216
  store i64 9, i64* @g_152, align 8, !tbaa !7
  br label %1221

; <label>:1221                                    ; preds = %1793, %1220
  %1222 = load i64, i64* @g_152, align 8, !tbaa !7
  %1223 = icmp sge i64 %1222, 0
  br i1 %1223, label %1224, label %1796

; <label>:1224                                    ; preds = %1221
  %1225 = bitcast %union.U2** %l_1106 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1225) #1
  store %union.U2* bitcast ({ i32, [4 x i8] }* @g_272 to %union.U2*), %union.U2** %l_1106, align 8, !tbaa !5
  %1226 = bitcast i32* %l_1117 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1226) #1
  store i32 -826526594, i32* %l_1117, align 4, !tbaa !1
  %1227 = bitcast %union.U1** %l_1133 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1227) #1
  store %union.U1* bitcast ({ i32, [4 x i8] }* @g_94 to %union.U1*), %union.U1** %l_1133, align 8, !tbaa !5
  %1228 = bitcast i32** %l_1164 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1228) #1
  store i32* @g_433, i32** %l_1164, align 8, !tbaa !5
  %1229 = bitcast i32** %l_1183 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1229) #1
  %1230 = getelementptr inbounds [5 x i32], [5 x i32]* %l_974, i32 0, i64 2
  store i32* %1230, i32** %l_1183, align 8, !tbaa !5
  %1231 = bitcast i16*** %l_1192 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1231) #1
  store i16** @g_479, i16*** %l_1192, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1197) #1
  store i8 0, i8* %l_1197, align 1, !tbaa !9
  %1232 = load i8, i8* %2, align 1, !tbaa !9
  %1233 = icmp ne i8 %1232, 0
  br i1 %1233, label %1234, label %1235

; <label>:1234                                    ; preds = %1224
  store i32 5, i32* %5
  br label %1785

; <label>:1235                                    ; preds = %1224
  store i32 0, i32* @g_44, align 4, !tbaa !1
  br label %1236

; <label>:1236                                    ; preds = %1526, %1235
  %1237 = load i32, i32* @g_44, align 4, !tbaa !1
  %1238 = icmp sle i32 %1237, 3
  br i1 %1238, label %1239, label %1529

; <label>:1239                                    ; preds = %1236
  %1240 = bitcast [4 x [10 x i32]]* %l_1118 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %1240) #1
  %1241 = bitcast [4 x [10 x i32]]* %l_1118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1241, i8* bitcast ([4 x [10 x i32]]* @func_65.l_1118 to i8*), i64 160, i32 16, i1 false)
  %1242 = bitcast i16**** %l_1146 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1242) #1
  store i16*** @g_241, i16**** %l_1146, align 8, !tbaa !5
  %1243 = bitcast i32* %i21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1243) #1
  %1244 = bitcast i32* %j22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1244) #1
  %1245 = load %union.U2*, %union.U2** %l_1106, align 8, !tbaa !5
  %1246 = load %union.U2*, %union.U2** %l_1106, align 8, !tbaa !5
  %1247 = icmp eq %union.U2* %1245, %1246
  %1248 = zext i1 %1247 to i32
  %1249 = trunc i32 %1248 to i8
  %1250 = load i8, i8* %2, align 1, !tbaa !9
  %1251 = zext i8 %1250 to i32
  %1252 = load i8, i8* %2, align 1, !tbaa !9
  %1253 = zext i8 %1252 to i64
  %1254 = xor i64 -2, %1253
  %1255 = getelementptr inbounds [5 x i32], [5 x i32]* %l_974, i32 0, i64 4
  %1256 = load i32, i32* %1255, align 4, !tbaa !1
  %1257 = trunc i32 %1256 to i16
  %1258 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %1257, i32 6)
  %1259 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext 23125, i16 zeroext %1258)
  %1260 = zext i16 %1259 to i64
  %1261 = icmp sge i64 -7, %1260
  br i1 %1261, label %1262, label %1267

; <label>:1262                                    ; preds = %1239
  %1263 = load i32, i32* %l_1117, align 4, !tbaa !1
  %1264 = sext i32 %1263 to i64
  %1265 = xor i64 -7641726343036958325, %1264
  %1266 = icmp ne i64 %1265, 0
  br label %1267

; <label>:1267                                    ; preds = %1262, %1239
  %1268 = phi i1 [ false, %1239 ], [ %1266, %1262 ]
  %1269 = zext i1 %1268 to i32
  %1270 = sext i32 %1269 to i64
  %1271 = icmp sle i64 %1254, %1270
  %1272 = zext i1 %1271 to i32
  %1273 = trunc i32 %1272 to i8
  %1274 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1273, i8 zeroext 0)
  %1275 = zext i8 %1274 to i32
  %1276 = load i8*, i8** @g_454, align 8, !tbaa !5
  %1277 = load i8, i8* %1276, align 1, !tbaa !9
  %1278 = zext i8 %1277 to i32
  %1279 = and i32 %1278, %1275
  %1280 = trunc i32 %1279 to i8
  store i8 %1280, i8* %1276, align 1, !tbaa !9
  %1281 = getelementptr inbounds [4 x [10 x i32]], [4 x [10 x i32]]* %l_1118, i32 0, i64 2
  %1282 = getelementptr inbounds [10 x i32], [10 x i32]* %1281, i32 0, i64 3
  %1283 = load i32, i32* %1282, align 4, !tbaa !1
  %1284 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %1280, i32 %1283)
  %1285 = zext i8 %1284 to i64
  %1286 = load i64*, i64** @g_168, align 8, !tbaa !5
  %1287 = load volatile i64, i64* %1286, align 8, !tbaa !7
  %1288 = icmp uge i64 %1285, %1287
  %1289 = zext i1 %1288 to i32
  %1290 = xor i32 %1251, %1289
  %1291 = sext i32 %1290 to i64
  %1292 = call i64 @safe_div_func_uint64_t_u_u(i64 %1291, i64 -1)
  %1293 = trunc i64 %1292 to i8
  %1294 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %1249, i8 zeroext %1293)
  %1295 = zext i8 %1294 to i32
  %1296 = load i32, i32* @g_44, align 4, !tbaa !1
  %1297 = sext i32 %1296 to i64
  %1298 = load i32, i32* @g_44, align 4, !tbaa !1
  %1299 = add nsw i32 %1298, 2
  %1300 = sext i32 %1299 to i64
  %1301 = getelementptr inbounds [10 x [4 x i32]], [10 x [4 x i32]]* %l_813, i32 0, i64 %1300
  %1302 = getelementptr inbounds [4 x i32], [4 x i32]* %1301, i32 0, i64 %1297
  store i32 %1295, i32* %1302, align 4, !tbaa !1
  store i32 3, i32* %l_849, align 4, !tbaa !1
  br label %1303

; <label>:1303                                    ; preds = %1516, %1267
  %1304 = load i32, i32* %l_849, align 4, !tbaa !1
  %1305 = icmp sle i32 %1304, 9
  br i1 %1305, label %1306, label %1519

; <label>:1306                                    ; preds = %1303
  %1307 = bitcast i16* %l_1138 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1307) #1
  store i16 0, i16* %l_1138, align 2, !tbaa !10
  %1308 = bitcast i32* %l_1139 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1308) #1
  store i32 0, i32* %l_1139, align 4, !tbaa !1
  %1309 = bitcast [2 x [7 x i32]]* %l_1161 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1309) #1
  %1310 = bitcast [2 x [7 x i32]]* %l_1161 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1310, i8* bitcast ([2 x [7 x i32]]* @func_65.l_1161 to i8*), i64 56, i32 16, i1 false)
  %1311 = bitcast i32* %i23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1311) #1
  %1312 = bitcast i32* %j24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1312) #1
  store i16 0, i16* %l_971, align 2, !tbaa !10
  br label %1313

; <label>:1313                                    ; preds = %1503, %1306
  %1314 = load i16, i16* %l_971, align 2, !tbaa !10
  %1315 = zext i16 %1314 to i32
  %1316 = icmp sle i32 %1315, 9
  br i1 %1316, label %1317, label %1508

; <label>:1317                                    ; preds = %1313
  %1318 = bitcast i64* %l_1134 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1318) #1
  store i64 -8202671408970315378, i64* %l_1134, align 8, !tbaa !7
  %1319 = bitcast i64** %l_1135 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1319) #1
  store i64* null, i64** %l_1135, align 8, !tbaa !5
  %1320 = bitcast i64** %l_1136 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1320) #1
  store i64* null, i64** %l_1136, align 8, !tbaa !5
  %1321 = bitcast [5 x [5 x i64*]]* %l_1137 to i8*
  call void @llvm.lifetime.start(i64 200, i8* %1321) #1
  %1322 = bitcast [5 x [5 x i64*]]* %l_1137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1322, i8* bitcast ([5 x [5 x i64*]]* @func_65.l_1137 to i8*), i64 200, i32 16, i1 false)
  %1323 = bitcast i64** %l_1162 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1323) #1
  store i64* @g_321, i64** %l_1162, align 8, !tbaa !5
  %1324 = bitcast i32* %i25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1324) #1
  %1325 = bitcast i32* %j26 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1325) #1
  %1326 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1001, i32 0, i32 0), align 8
  %1327 = and i32 %1326, 67108863
  %1328 = zext i32 %1327 to i64
  %1329 = load i32****, i32***** @g_1123, align 8, !tbaa !5
  %1330 = load i32****, i32***** @g_1124, align 8, !tbaa !5
  store i32**** %1330, i32***** @g_1124, align 8, !tbaa !5
  %1331 = icmp ne i32**** %1329, %1330
  br i1 %1331, label %1351, label %1332

; <label>:1332                                    ; preds = %1317
  %1333 = load i64, i64* %3, align 8, !tbaa !7
  %1334 = load %union.U1*, %union.U1** %l_1133, align 8, !tbaa !5
  %1335 = icmp ne %union.U1* null, %1334
  %1336 = zext i1 %1335 to i32
  %1337 = trunc i32 %1336 to i8
  %1338 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %1337, i8 signext 9)
  %1339 = sext i8 %1338 to i32
  %1340 = load i32, i32* @g_32, align 4, !tbaa !1
  %1341 = icmp sge i32 %1339, %1340
  %1342 = zext i1 %1341 to i32
  %1343 = load i32, i32* %l_1117, align 4, !tbaa !1
  %1344 = call i32 @safe_sub_func_uint32_t_u_u(i32 %1342, i32 %1343)
  %1345 = trunc i32 %1344 to i16
  %1346 = load i8, i8* %l_1028, align 1, !tbaa !9
  %1347 = zext i8 %1346 to i16
  %1348 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %1345, i16 signext %1347)
  %1349 = load i64, i64* %l_1134, align 8, !tbaa !7
  %1350 = icmp ne i64 %1349, 0
  br label %1351

; <label>:1351                                    ; preds = %1332, %1317
  %1352 = phi i1 [ true, %1317 ], [ %1350, %1332 ]
  %1353 = zext i1 %1352 to i32
  %1354 = sext i32 %1353 to i64
  %1355 = and i64 1, %1354
  %1356 = icmp ult i64 %1328, %1355
  %1357 = zext i1 %1356 to i32
  %1358 = load i8, i8* %2, align 1, !tbaa !9
  %1359 = zext i8 %1358 to i32
  %1360 = icmp sge i32 %1357, %1359
  %1361 = zext i1 %1360 to i32
  %1362 = trunc i32 %1361 to i16
  %1363 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext 20336, i16 signext %1362)
  store i16 %1363, i16* %l_1138, align 2, !tbaa !10
  %1364 = zext i16 %1363 to i32
  store i32 %1364, i32* %l_1139, align 4, !tbaa !1
  %1365 = sext i32 %1364 to i64
  %1366 = icmp sge i64 -7, %1365
  %1367 = zext i1 %1366 to i32
  %1368 = sext i32 %1367 to i64
  %1369 = icmp eq i64 %1368, 1
  %1370 = zext i1 %1369 to i32
  %1371 = sext i32 %1370 to i64
  %1372 = icmp ne i64 %1371, 3
  %1373 = zext i1 %1372 to i32
  store i32 %1373, i32* %l_1101, align 4, !tbaa !1
  %1374 = load i32, i32* %l_1117, align 4, !tbaa !1
  %1375 = icmp eq i32 %1373, %1374
  %1376 = zext i1 %1375 to i32
  %1377 = load i32**, i32*** @g_1126, align 8, !tbaa !5
  %1378 = load i32*, i32** %1377, align 8, !tbaa !5
  %1379 = load i32, i32* %1378, align 4, !tbaa !1
  %1380 = xor i32 %1379, %1376
  store i32 %1380, i32* %1378, align 4, !tbaa !1
  %1381 = load %union.U2*, %union.U2** @g_869, align 8, !tbaa !5
  %1382 = load i64, i64* @g_435, align 8, !tbaa !7
  %1383 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_778, i32 0, i64 %1382
  %1384 = load i32*, i32** %1383, align 8, !tbaa !5
  %1385 = load i16***, i16**** %l_1146, align 8, !tbaa !5
  %1386 = icmp ne i16*** null, %1385
  %1387 = zext i1 %1386 to i32
  %1388 = load i8*, i8** @g_34, align 8, !tbaa !5
  %1389 = load i8, i8* %1388, align 1, !tbaa !9
  %1390 = sext i8 %1389 to i64
  %1391 = icmp sge i64 8, %1390
  br i1 %1391, label %1440, label %1392

; <label>:1392                                    ; preds = %1351
  %1393 = load i64*, i64** @g_168, align 8, !tbaa !5
  %1394 = load volatile i64, i64* %1393, align 8, !tbaa !7
  %1395 = load i32***, i32**** @g_1125, align 8, !tbaa !5
  %1396 = load i32**, i32*** %1395, align 8, !tbaa !5
  %1397 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext 0, i16 zeroext -31290)
  %1398 = load i32****, i32***** @g_1124, align 8, !tbaa !5
  %1399 = load i32***, i32**** %1398, align 8, !tbaa !5
  %1400 = load i32**, i32*** %1399, align 8, !tbaa !5
  %1401 = icmp eq i32** %1396, %1400
  %1402 = zext i1 %1401 to i32
  %1403 = sext i32 %1402 to i64
  %1404 = load i64, i64* %3, align 8, !tbaa !7
  %1405 = icmp slt i64 %1403, %1404
  %1406 = zext i1 %1405 to i32
  %1407 = trunc i32 %1406 to i8
  %1408 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %1407, i32 4)
  %1409 = sext i8 %1408 to i32
  %1410 = load i8*, i8** %4, align 8, !tbaa !5
  %1411 = load i8, i8* %1410, align 1, !tbaa !9
  %1412 = sext i8 %1411 to i32
  %1413 = icmp sle i32 %1409, %1412
  %1414 = zext i1 %1413 to i32
  %1415 = load i8, i8* %2, align 1, !tbaa !9
  %1416 = zext i8 %1415 to i32
  %1417 = xor i32 %1414, %1416
  %1418 = load i8*, i8** @g_454, align 8, !tbaa !5
  %1419 = load i8, i8* %1418, align 1, !tbaa !9
  %1420 = zext i8 %1419 to i32
  %1421 = xor i32 %1417, %1420
  %1422 = trunc i32 %1421 to i16
  %1423 = load i64, i64* %3, align 8, !tbaa !7
  %1424 = trunc i64 %1423 to i32
  %1425 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %1422, i32 %1424)
  %1426 = sext i16 %1425 to i64
  %1427 = icmp eq i64 %1394, %1426
  %1428 = zext i1 %1427 to i32
  %1429 = load i32, i32* %l_1117, align 4, !tbaa !1
  %1430 = icmp sle i32 %1428, %1429
  %1431 = zext i1 %1430 to i32
  %1432 = load i16**, i16*** @g_482, align 8, !tbaa !5
  %1433 = load i16*, i16** %1432, align 8, !tbaa !5
  %1434 = load i16, i16* %1433, align 2, !tbaa !10
  %1435 = zext i16 %1434 to i32
  %1436 = getelementptr inbounds [2 x [7 x i32]], [2 x [7 x i32]]* %l_1161, i32 0, i64 0
  %1437 = getelementptr inbounds [7 x i32], [7 x i32]* %1436, i32 0, i64 4
  %1438 = load i32, i32* %1437, align 4, !tbaa !1
  %1439 = icmp sge i32 %1435, %1438
  br label %1440

; <label>:1440                                    ; preds = %1392, %1351
  %1441 = phi i1 [ true, %1351 ], [ %1439, %1392 ]
  %1442 = zext i1 %1441 to i32
  %1443 = load i16*, i16** @g_479, align 8, !tbaa !5
  %1444 = load i16, i16* %1443, align 2, !tbaa !10
  %1445 = zext i16 %1444 to i32
  %1446 = icmp slt i32 %1442, %1445
  %1447 = zext i1 %1446 to i32
  %1448 = load i8, i8* %2, align 1, !tbaa !9
  %1449 = zext i8 %1448 to i32
  %1450 = call i32 @safe_sub_func_int32_t_s_s(i32 %1447, i32 %1449)
  %1451 = trunc i32 %1450 to i8
  %1452 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %1451, i8 zeroext 39)
  %1453 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %1452, i32 6)
  %1454 = load i64*, i64** %l_1162, align 8, !tbaa !5
  %1455 = load i64*, i64** %l_1135, align 8, !tbaa !5
  %1456 = icmp eq i64* %1454, %1455
  %1457 = zext i1 %1456 to i32
  %1458 = icmp slt i32 %1387, %1457
  %1459 = zext i1 %1458 to i32
  %1460 = trunc i32 %1459 to i16
  %1461 = load i16*, i16** @g_242, align 8, !tbaa !5
  store i16 %1460, i16* %1461, align 2, !tbaa !10
  %1462 = load i32***, i32**** %l_1063, align 8, !tbaa !5
  %1463 = load i32**, i32*** %1462, align 8, !tbaa !5
  %1464 = load i32*, i32** %1463, align 8, !tbaa !5
  %1465 = icmp ne i32* %1384, %1464
  %1466 = zext i1 %1465 to i32
  %1467 = sext i32 %1466 to i64
  %1468 = load i64, i64* %l_1134, align 8, !tbaa !7
  %1469 = icmp ne i64 %1467, %1468
  %1470 = zext i1 %1469 to i32
  %1471 = trunc i32 %1470 to i8
  %1472 = load i8*, i8** %4, align 8, !tbaa !5
  %1473 = load i8, i8* %1472, align 1, !tbaa !9
  %1474 = sext i8 %1473 to i32
  %1475 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %1471, i32 %1474)
  %1476 = sext i8 %1475 to i16
  %1477 = getelementptr inbounds [2 x [7 x i32]], [2 x [7 x i32]]* %l_1161, i32 0, i64 0
  %1478 = getelementptr inbounds [7 x i32], [7 x i32]* %1477, i32 0, i64 4
  %1479 = load i32, i32* %1478, align 4, !tbaa !1
  %1480 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %1476, i32 %1479)
  %1481 = sext i16 %1480 to i64
  %1482 = xor i64 %1481, 3
  %1483 = trunc i64 %1482 to i32
  %1484 = call i32 @safe_sub_func_int32_t_s_s(i32 %1483, i32 -1)
  %1485 = load i32, i32* %l_806, align 4, !tbaa !1
  %1486 = or i32 %1485, %1484
  store i32 %1486, i32* %l_806, align 4, !tbaa !1
  %1487 = load i16, i16* @g_437, align 2, !tbaa !10
  %1488 = icmp ne i16 %1487, 0
  br i1 %1488, label %1489, label %1490

; <label>:1489                                    ; preds = %1440
  store i32 5, i32* %5
  br label %1494

; <label>:1490                                    ; preds = %1440
  %1491 = load i32, i32* %l_1117, align 4, !tbaa !1
  %1492 = call i32* @func_40(i32 %1491)
  %1493 = load i32**, i32*** @g_1126, align 8, !tbaa !5
  store i32* %1492, i32** %1493, align 8, !tbaa !5
  store i32 0, i32* %5
  br label %1494

; <label>:1494                                    ; preds = %1490, %1489
  %1495 = bitcast i32* %j26 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1495) #1
  %1496 = bitcast i32* %i25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1496) #1
  %1497 = bitcast i64** %l_1162 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1497) #1
  %1498 = bitcast [5 x [5 x i64*]]* %l_1137 to i8*
  call void @llvm.lifetime.end(i64 200, i8* %1498) #1
  %1499 = bitcast i64** %l_1136 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1499) #1
  %1500 = bitcast i64** %l_1135 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1500) #1
  %1501 = bitcast i64* %l_1134 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1501) #1
  %cleanup.dest.27 = load i32, i32* %5
  switch i32 %cleanup.dest.27, label %1509 [
    i32 0, label %1502
  ]

; <label>:1502                                    ; preds = %1494
  br label %1503

; <label>:1503                                    ; preds = %1502
  %1504 = load i16, i16* %l_971, align 2, !tbaa !10
  %1505 = zext i16 %1504 to i32
  %1506 = add nsw i32 %1505, 1
  %1507 = trunc i32 %1506 to i16
  store i16 %1507, i16* %l_971, align 2, !tbaa !10
  br label %1313

; <label>:1508                                    ; preds = %1313
  store i32 0, i32* %5
  br label %1509

; <label>:1509                                    ; preds = %1508, %1494
  %1510 = bitcast i32* %j24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1510) #1
  %1511 = bitcast i32* %i23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1511) #1
  %1512 = bitcast [2 x [7 x i32]]* %l_1161 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %1512) #1
  %1513 = bitcast i32* %l_1139 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1513) #1
  %1514 = bitcast i16* %l_1138 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1514) #1
  %cleanup.dest.28 = load i32, i32* %5
  switch i32 %cleanup.dest.28, label %1520 [
    i32 0, label %1515
  ]

; <label>:1515                                    ; preds = %1509
  br label %1516

; <label>:1516                                    ; preds = %1515
  %1517 = load i32, i32* %l_849, align 4, !tbaa !1
  %1518 = add nsw i32 %1517, 1
  store i32 %1518, i32* %l_849, align 4, !tbaa !1
  br label %1303

; <label>:1519                                    ; preds = %1303
  store i32 0, i32* %5
  br label %1520

; <label>:1520                                    ; preds = %1519, %1509
  %1521 = bitcast i32* %j22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1521) #1
  %1522 = bitcast i32* %i21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1522) #1
  %1523 = bitcast i16**** %l_1146 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1523) #1
  %1524 = bitcast [4 x [10 x i32]]* %l_1118 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %1524) #1
  %cleanup.dest.29 = load i32, i32* %5
  switch i32 %cleanup.dest.29, label %1785 [
    i32 0, label %1525
  ]

; <label>:1525                                    ; preds = %1520
  br label %1526

; <label>:1526                                    ; preds = %1525
  %1527 = load i32, i32* @g_44, align 4, !tbaa !1
  %1528 = add nsw i32 %1527, 1
  store i32 %1528, i32* @g_44, align 4, !tbaa !1
  br label %1236

; <label>:1529                                    ; preds = %1236
  store i32 0, i32* %l_910, align 4, !tbaa !1
  br label %1530

; <label>:1530                                    ; preds = %1778, %1529
  %1531 = load i32, i32* %l_910, align 4, !tbaa !1
  %1532 = icmp ule i32 %1531, 3
  br i1 %1532, label %1533, label %1781

; <label>:1533                                    ; preds = %1530
  %1534 = bitcast i32* %i30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1534) #1
  %1535 = bitcast i32* %j31 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1535) #1
  %1536 = load i64, i64* @g_435, align 8, !tbaa !7
  %1537 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_778, i32 0, i64 %1536
  %1538 = load i32*, i32** %1537, align 8, !tbaa !5
  %1539 = load i32***, i32**** %l_1063, align 8, !tbaa !5
  %1540 = load i32**, i32*** %1539, align 8, !tbaa !5
  store i32* %1538, i32** %1540, align 8, !tbaa !5
  %1541 = load i64*, i64** @g_168, align 8, !tbaa !5
  %1542 = load volatile i64, i64* %1541, align 8, !tbaa !7
  %1543 = load i16**, i16*** @g_478, align 8, !tbaa !5
  %1544 = load i16*, i16** %1543, align 8, !tbaa !5
  %1545 = load i16, i16* %1544, align 2, !tbaa !10
  %1546 = zext i16 %1545 to i32
  %1547 = load i32***, i32**** %l_1163, align 8, !tbaa !5
  %1548 = icmp ne i32*** %1547, null
  %1549 = zext i1 %1548 to i32
  %1550 = icmp sge i32 %1546, %1549
  %1551 = zext i1 %1550 to i32
  %1552 = sext i32 %1551 to i64
  %1553 = icmp ult i64 %1542, %1552
  %1554 = zext i1 %1553 to i32
  %1555 = load i32*, i32** %l_1164, align 8, !tbaa !5
  %1556 = load i32*, i32** %l_1165, align 8, !tbaa !5
  %1557 = icmp eq i32* %1555, %1556
  %1558 = zext i1 %1557 to i32
  %1559 = load i32, i32* %l_910, align 4, !tbaa !1
  %1560 = zext i32 %1559 to i64
  %1561 = load i64, i64* @g_435, align 8, !tbaa !7
  %1562 = add nsw i64 %1561, 8
  %1563 = getelementptr inbounds [10 x [4 x i32]], [10 x [4 x i32]]* %l_813, i32 0, i64 %1562
  %1564 = getelementptr inbounds [4 x i32], [4 x i32]* %1563, i32 0, i64 %1560
  %1565 = load i32, i32* %1564, align 4, !tbaa !1
  %1566 = or i32 %1565, %1558
  store i32 %1566, i32* %1564, align 4, !tbaa !1
  store i32 1, i32* @g_764, align 4, !tbaa !1
  br label %1567

; <label>:1567                                    ; preds = %1770, %1533
  %1568 = load i32, i32* @g_764, align 4, !tbaa !1
  %1569 = icmp sle i32 %1568, 4
  br i1 %1569, label %1570, label %1773

; <label>:1570                                    ; preds = %1567
  %1571 = bitcast %union.U1* %l_1184 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1571) #1
  %1572 = bitcast %union.U1* %l_1184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1572, i8* bitcast ({ i32, [4 x i8] }* @func_65.l_1184 to i8*), i64 8, i32 8, i1 false)
  %1573 = bitcast i32* %l_1201 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1573) #1
  store i32 -828727981, i32* %l_1201, align 4, !tbaa !1
  %1574 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1574) #1
  %1575 = bitcast i32* %j33 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1575) #1
  %1576 = load i64, i64* @g_435, align 8, !tbaa !7
  %1577 = load i32, i32* @g_764, align 4, !tbaa !1
  %1578 = sext i32 %1577 to i64
  %1579 = getelementptr inbounds [7 x [4 x i8]], [7 x [4 x i8]]* %l_850, i32 0, i64 %1578
  %1580 = getelementptr inbounds [4 x i8], [4 x i8]* %1579, i32 0, i64 %1576
  %1581 = load i8, i8* %1580, align 1, !tbaa !9
  %1582 = zext i8 %1581 to i32
  %1583 = load i64, i64* %3, align 8, !tbaa !7
  %1584 = call i64 @safe_sub_func_int64_t_s_s(i64 3197157737685668475, i64 %1583)
  %1585 = icmp sgt i64 %1584, 42274
  %1586 = zext i1 %1585 to i32
  %1587 = load i8*, i8** %4, align 8, !tbaa !5
  %1588 = load i8, i8* %1587, align 1, !tbaa !9
  %1589 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext 0, i8 zeroext %1588)
  %1590 = zext i8 %1589 to i32
  %1591 = icmp ne i32 %1590, 0
  br i1 %1591, label %1592, label %1596

; <label>:1592                                    ; preds = %1570
  %1593 = load i8, i8* %2, align 1, !tbaa !9
  %1594 = zext i8 %1593 to i32
  %1595 = icmp ne i32 %1594, 0
  br label %1596

; <label>:1596                                    ; preds = %1592, %1570
  %1597 = phi i1 [ false, %1570 ], [ %1595, %1592 ]
  %1598 = zext i1 %1597 to i32
  %1599 = icmp eq i32 %1586, %1598
  %1600 = zext i1 %1599 to i32
  %1601 = load i64, i64* @g_435, align 8, !tbaa !7
  %1602 = load i32, i32* @g_764, align 4, !tbaa !1
  %1603 = sext i32 %1602 to i64
  %1604 = getelementptr inbounds [7 x [4 x i8]], [7 x [4 x i8]]* %l_850, i32 0, i64 %1603
  %1605 = getelementptr inbounds [4 x i8], [4 x i8]* %1604, i32 0, i64 %1601
  %1606 = load i8, i8* %1605, align 1, !tbaa !9
  %1607 = zext i8 %1606 to i64
  %1608 = xor i64 %1607, 38455622
  %1609 = trunc i64 %1608 to i8
  store i8 %1609, i8* %2, align 1, !tbaa !9
  %1610 = load i8*, i8** @g_454, align 8, !tbaa !5
  store i8 %1609, i8* %1610, align 1, !tbaa !9
  %1611 = load i32, i32* %l_1117, align 4, !tbaa !1
  %1612 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %1609, i32 %1611)
  %1613 = zext i8 %1612 to i16
  %1614 = load i64, i64* %3, align 8, !tbaa !7
  %1615 = trunc i64 %1614 to i16
  %1616 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %1613, i16 signext %1615)
  %1617 = sext i16 %1616 to i64
  %1618 = icmp eq i64 93, %1617
  %1619 = zext i1 %1618 to i32
  %1620 = sext i32 %1619 to i64
  %1621 = load i64, i64* %3, align 8, !tbaa !7
  %1622 = call i64 @safe_sub_func_int64_t_s_s(i64 %1620, i64 %1621)
  %1623 = load i32, i32* %l_1117, align 4, !tbaa !1
  %1624 = sext i32 %1623 to i64
  %1625 = icmp slt i64 %1622, %1624
  %1626 = zext i1 %1625 to i32
  %1627 = load i8*, i8** %4, align 8, !tbaa !5
  %1628 = load i8, i8* %1627, align 1, !tbaa !9
  %1629 = sext i8 %1628 to i32
  %1630 = icmp ne i32 %1582, %1629
  br i1 %1630, label %1631, label %1639

; <label>:1631                                    ; preds = %1596
  %1632 = bitcast i32* %i34 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1632) #1
  %1633 = load i64, i64* @g_435, align 8, !tbaa !7
  %1634 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_778, i32 0, i64 %1633
  %1635 = load i32*, i32** %1634, align 8, !tbaa !5
  store i32* %1635, i32** %l_1183, align 8, !tbaa !5
  %1636 = bitcast %union.U1* %1 to i8*
  %1637 = bitcast %union.U1* %l_1184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1636, i8* %1637, i64 8, i32 8, i1 false), !tbaa.struct !12
  store i32 1, i32* %5
  %1638 = bitcast i32* %i34 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1638) #1
  br label %1764

; <label>:1639                                    ; preds = %1596
  %1640 = bitcast %union.U1*** %l_1185 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1640) #1
  store %union.U1** %l_1133, %union.U1*** %l_1185, align 8, !tbaa !5
  %1641 = bitcast [2 x i32*]* %l_1191 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1641) #1
  %1642 = bitcast i16** %l_1198 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1642) #1
  %1643 = bitcast %union.U1* %l_1184 to i16*
  store i16* %1643, i16** %l_1198, align 8, !tbaa !5
  %1644 = bitcast [5 x i16*]* %l_1199 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1644) #1
  %1645 = bitcast i32* %l_1200 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1645) #1
  store i32 1, i32* %l_1200, align 4, !tbaa !1
  %1646 = bitcast i32* %i35 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1646) #1
  %1647 = bitcast i32* %j36 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1647) #1
  %1648 = bitcast i32* %k37 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1648) #1
  store i32 0, i32* %i35, align 4, !tbaa !1
  br label %1649

; <label>:1649                                    ; preds = %1656, %1639
  %1650 = load i32, i32* %i35, align 4, !tbaa !1
  %1651 = icmp slt i32 %1650, 2
  br i1 %1651, label %1652, label %1659

; <label>:1652                                    ; preds = %1649
  %1653 = load i32, i32* %i35, align 4, !tbaa !1
  %1654 = sext i32 %1653 to i64
  %1655 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_1191, i32 0, i64 %1654
  store i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_94, i32 0, i32 0), i32** %1655, align 8, !tbaa !5
  br label %1656

; <label>:1656                                    ; preds = %1652
  %1657 = load i32, i32* %i35, align 4, !tbaa !1
  %1658 = add nsw i32 %1657, 1
  store i32 %1658, i32* %i35, align 4, !tbaa !1
  br label %1649

; <label>:1659                                    ; preds = %1649
  store i32 0, i32* %i35, align 4, !tbaa !1
  br label %1660

; <label>:1660                                    ; preds = %1667, %1659
  %1661 = load i32, i32* %i35, align 4, !tbaa !1
  %1662 = icmp slt i32 %1661, 5
  br i1 %1662, label %1663, label %1670

; <label>:1663                                    ; preds = %1660
  %1664 = load i32, i32* %i35, align 4, !tbaa !1
  %1665 = sext i32 %1664 to i64
  %1666 = getelementptr inbounds [5 x i16*], [5 x i16*]* %l_1199, i32 0, i64 %1665
  store i16* bitcast ({ i32, [4 x i8] }* @g_94 to i16*), i16** %1666, align 8, !tbaa !5
  br label %1667

; <label>:1667                                    ; preds = %1663
  %1668 = load i32, i32* %i35, align 4, !tbaa !1
  %1669 = add nsw i32 %1668, 1
  store i32 %1669, i32* %i35, align 4, !tbaa !1
  br label %1660

; <label>:1670                                    ; preds = %1660
  %1671 = load %union.U1*, %union.U1** %l_1133, align 8, !tbaa !5
  %1672 = load %union.U1**, %union.U1*** %l_1185, align 8, !tbaa !5
  store %union.U1* %1671, %union.U1** %1672, align 8, !tbaa !5
  %1673 = load i32***, i32**** @g_1125, align 8, !tbaa !5
  %1674 = load i32**, i32*** %1673, align 8, !tbaa !5
  %1675 = load i32*, i32** %1674, align 8, !tbaa !5
  %1676 = load i32, i32* %1675, align 4, !tbaa !1
  %1677 = sext i32 %1676 to i64
  %1678 = and i64 %1677, 2984564644
  %1679 = trunc i64 %1678 to i32
  store i32 %1679, i32* %1675, align 4, !tbaa !1
  %1680 = load i8*, i8** @g_454, align 8, !tbaa !5
  %1681 = load i8, i8* %1680, align 1, !tbaa !9
  %1682 = zext i8 %1681 to i32
  %1683 = load i32, i32* @g_764, align 4, !tbaa !1
  %1684 = sext i32 %1683 to i64
  %1685 = load i64, i64* @g_435, align 8, !tbaa !7
  %1686 = add nsw i64 %1685, 5
  %1687 = load i64, i64* @g_435, align 8, !tbaa !7
  %1688 = add nsw i64 %1687, 1
  %1689 = getelementptr inbounds [5 x [10 x [5 x i16**]]], [5 x [10 x [5 x i16**]]]* %l_1047, i32 0, i64 %1688
  %1690 = getelementptr inbounds [10 x [5 x i16**]], [10 x [5 x i16**]]* %1689, i32 0, i64 %1686
  %1691 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1690, i32 0, i64 %1684
  %1692 = load i32, i32* @g_764, align 4, !tbaa !1
  %1693 = sext i32 %1692 to i64
  %1694 = load i64, i64* @g_435, align 8, !tbaa !7
  %1695 = add nsw i64 %1694, 5
  %1696 = load i64, i64* @g_435, align 8, !tbaa !7
  %1697 = add nsw i64 %1696, 1
  %1698 = getelementptr inbounds [5 x [10 x [5 x i16**]]], [5 x [10 x [5 x i16**]]]* %l_1047, i32 0, i64 %1697
  %1699 = getelementptr inbounds [10 x [5 x i16**]], [10 x [5 x i16**]]* %1698, i32 0, i64 %1695
  %1700 = getelementptr inbounds [5 x i16**], [5 x i16**]* %1699, i32 0, i64 %1693
  %1701 = icmp ne i16*** %1691, %1700
  %1702 = zext i1 %1701 to i32
  %1703 = icmp sle i32 %1682, %1702
  %1704 = zext i1 %1703 to i32
  %1705 = load i32****, i32***** @g_1124, align 8, !tbaa !5
  %1706 = load i32***, i32**** %1705, align 8, !tbaa !5
  %1707 = load i32**, i32*** %1706, align 8, !tbaa !5
  %1708 = load i32*, i32** %1707, align 8, !tbaa !5
  store i32 %1704, i32* %1708, align 4, !tbaa !1
  %1709 = load i64, i64* %3, align 8, !tbaa !7
  %1710 = trunc i64 %1709 to i32
  store i32 %1710, i32* @g_255, align 4, !tbaa !1
  %1711 = load i16**, i16*** %l_1192, align 8, !tbaa !5
  %1712 = icmp ne i16** %1711, null
  br i1 %1712, label %1720, label %1713

; <label>:1713                                    ; preds = %1670
  %1714 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext 0, i32 6)
  %1715 = load i8, i8* %2, align 1, !tbaa !9
  %1716 = zext i8 %1715 to i32
  %1717 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %1714, i32 %1716)
  %1718 = sext i8 %1717 to i32
  %1719 = icmp ne i32 %1718, 0
  br label %1720

; <label>:1720                                    ; preds = %1713, %1670
  %1721 = phi i1 [ true, %1670 ], [ %1719, %1713 ]
  %1722 = zext i1 %1721 to i32
  %1723 = call i32 @safe_add_func_uint32_t_u_u(i32 %1710, i32 %1722)
  %1724 = icmp ne i32 %1723, 0
  %1725 = xor i1 %1724, true
  %1726 = zext i1 %1725 to i32
  %1727 = trunc i32 %1726 to i16
  %1728 = load i16*, i16** %l_1198, align 8, !tbaa !5
  store i16 %1727, i16* %1728, align 2, !tbaa !10
  store i16 %1727, i16* bitcast ({ i32, [4 x i8] }* @g_94 to i16*), align 2, !tbaa !10
  %1729 = sext i16 %1727 to i32
  %1730 = load i8*, i8** %4, align 8, !tbaa !5
  %1731 = load i8, i8* %1730, align 1, !tbaa !9
  %1732 = sext i8 %1731 to i64
  %1733 = icmp sge i64 92, %1732
  %1734 = zext i1 %1733 to i32
  %1735 = sext i32 %1734 to i64
  %1736 = xor i64 %1735, 0
  %1737 = load i64**, i64*** @g_912, align 8, !tbaa !5
  %1738 = load i64*, i64** %1737, align 8, !tbaa !5
  %1739 = load i64, i64* %1738, align 8, !tbaa !7
  %1740 = icmp ule i64 %1736, %1739
  %1741 = zext i1 %1740 to i32
  %1742 = icmp sle i32 %1729, %1741
  %1743 = zext i1 %1742 to i32
  %1744 = call i32 @safe_add_func_int32_t_s_s(i32 %1704, i32 %1743)
  %1745 = sext i32 %1744 to i64
  %1746 = load i64, i64* %3, align 8, !tbaa !7
  %1747 = and i64 %1745, %1746
  %1748 = load i32, i32* %l_1200, align 4, !tbaa !1
  %1749 = sext i32 %1748 to i64
  %1750 = icmp sle i64 %1747, %1749
  %1751 = zext i1 %1750 to i32
  store i32 %1751, i32* %l_1201, align 4, !tbaa !1
  %1752 = sext i32 %1751 to i64
  %1753 = or i64 %1752, 65527
  %1754 = load i32*, i32** %l_1183, align 8, !tbaa !5
  store i32 -1483926261, i32* %1754, align 4, !tbaa !1
  store i32 -1483926261, i32* %l_1200, align 4, !tbaa !1
  %1755 = bitcast i32* %k37 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1755) #1
  %1756 = bitcast i32* %j36 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1756) #1
  %1757 = bitcast i32* %i35 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1757) #1
  %1758 = bitcast i32* %l_1200 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1758) #1
  %1759 = bitcast [5 x i16*]* %l_1199 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1759) #1
  %1760 = bitcast i16** %l_1198 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1760) #1
  %1761 = bitcast [2 x i32*]* %l_1191 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1761) #1
  %1762 = bitcast %union.U1*** %l_1185 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1762) #1
  br label %1763

; <label>:1763                                    ; preds = %1720
  store i32 0, i32* %5
  br label %1764

; <label>:1764                                    ; preds = %1763, %1631
  %1765 = bitcast i32* %j33 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1765) #1
  %1766 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1766) #1
  %1767 = bitcast i32* %l_1201 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1767) #1
  %1768 = bitcast %union.U1* %l_1184 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1768) #1
  %cleanup.dest.38 = load i32, i32* %5
  switch i32 %cleanup.dest.38, label %1774 [
    i32 0, label %1769
  ]

; <label>:1769                                    ; preds = %1764
  br label %1770

; <label>:1770                                    ; preds = %1769
  %1771 = load i32, i32* @g_764, align 4, !tbaa !1
  %1772 = add nsw i32 %1771, 1
  store i32 %1772, i32* @g_764, align 4, !tbaa !1
  br label %1567

; <label>:1773                                    ; preds = %1567
  store i32 0, i32* %5
  br label %1774

; <label>:1774                                    ; preds = %1773, %1764
  %1775 = bitcast i32* %j31 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1775) #1
  %1776 = bitcast i32* %i30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1776) #1
  %cleanup.dest.39 = load i32, i32* %5
  switch i32 %cleanup.dest.39, label %1785 [
    i32 0, label %1777
  ]

; <label>:1777                                    ; preds = %1774
  br label %1778

; <label>:1778                                    ; preds = %1777
  %1779 = load i32, i32* %l_910, align 4, !tbaa !1
  %1780 = add i32 %1779, 1
  store i32 %1780, i32* %l_910, align 4, !tbaa !1
  br label %1530

; <label>:1781                                    ; preds = %1530
  %1782 = load i64, i64* %3, align 8, !tbaa !7
  %1783 = trunc i64 %1782 to i32
  %1784 = load i32*, i32** %l_1183, align 8, !tbaa !5
  store i32 %1783, i32* %1784, align 4, !tbaa !1
  store i32 0, i32* %5
  br label %1785

; <label>:1785                                    ; preds = %1781, %1774, %1520, %1234
  call void @llvm.lifetime.end(i64 1, i8* %l_1197) #1
  %1786 = bitcast i16*** %l_1192 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1786) #1
  %1787 = bitcast i32** %l_1183 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1787) #1
  %1788 = bitcast i32** %l_1164 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1788) #1
  %1789 = bitcast %union.U1** %l_1133 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1789) #1
  %1790 = bitcast i32* %l_1117 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1790) #1
  %1791 = bitcast %union.U2** %l_1106 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1791) #1
  %cleanup.dest.40 = load i32, i32* %5
  switch i32 %cleanup.dest.40, label %1800 [
    i32 0, label %1792
  ]

; <label>:1792                                    ; preds = %1785
  br label %1793

; <label>:1793                                    ; preds = %1792
  %1794 = load i64, i64* @g_152, align 8, !tbaa !7
  %1795 = sub nsw i64 %1794, 1
  store i64 %1795, i64* @g_152, align 8, !tbaa !7
  br label %1221

; <label>:1796                                    ; preds = %1221
  %1797 = load i8, i8* %2, align 1, !tbaa !9
  %1798 = zext i8 %1797 to i32
  %1799 = load i32*, i32** @g_699, align 8, !tbaa !5
  store i32 %1798, i32* %1799, align 4, !tbaa !1
  store i32 0, i32* %5
  br label %1800

; <label>:1800                                    ; preds = %1796, %1785, %1219
  %1801 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1801) #1
  %1802 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1802) #1
  %1803 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1803) #1
  %1804 = bitcast i32** %l_1165 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1804) #1
  %1805 = bitcast i32**** %l_1163 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1805) #1
  %1806 = bitcast i32* %l_1101 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1806) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1065) #1
  %1807 = bitcast [5 x [10 x [5 x i16**]]]* %l_1047 to i8*
  call void @llvm.lifetime.end(i64 2000, i8* %1807) #1
  %1808 = bitcast i16** %l_1048 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1808) #1
  %1809 = bitcast [7 x i16*]* %l_1042 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %1809) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1028) #1
  %1810 = bitcast [5 x i32]* %l_974 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %1810) #1
  %1811 = bitcast i64* %l_973 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1811) #1
  %cleanup.dest.41 = load i32, i32* %5
  switch i32 %cleanup.dest.41, label %1818 [
    i32 0, label %1812
    i32 9, label %1816
    i32 5, label %54
  ]

; <label>:1812                                    ; preds = %1800
  br label %1813

; <label>:1813                                    ; preds = %1812
  %1814 = load i64, i64* @g_435, align 8, !tbaa !7
  %1815 = add nsw i64 %1814, 1
  store i64 %1815, i64* @g_435, align 8, !tbaa !7
  br label %169

; <label>:1816                                    ; preds = %1800, %169
  %1817 = bitcast %union.U1* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1817, i8* bitcast ({ i32, [4 x i8] }* @g_1202 to i8*), i64 8, i32 8, i1 false), !tbaa.struct !12
  store i32 1, i32* %5
  br label %1818

; <label>:1818                                    ; preds = %1816, %1800, %109
  %1819 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1819) #1
  %1820 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1820) #1
  %1821 = bitcast %union.U0* %l_1122 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1821) #1
  %1822 = bitcast i32**** %l_1063 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1822) #1
  %1823 = bitcast i32*** %l_1064 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1823) #1
  %1824 = bitcast i64**** %l_1014 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1824) #1
  %1825 = bitcast [8 x [4 x i64***]]* %l_1012 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %1825) #1
  %1826 = bitcast i16* %l_971 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1826) #1
  %1827 = bitcast i32* %l_910 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1827) #1
  %1828 = bitcast [7 x [4 x i8]]* %l_850 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %1828) #1
  %1829 = bitcast i32* %l_849 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1829) #1
  %1830 = bitcast [10 x [4 x i32]]* %l_813 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %1830) #1
  %1831 = bitcast i32* %l_811 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1831) #1
  %1832 = bitcast i32* %l_808 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1832) #1
  %1833 = bitcast i32* %l_806 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1833) #1
  %1834 = bitcast i32** %l_779 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1834) #1
  %1835 = bitcast [2 x i32*]* %l_778 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1835) #1
  %1836 = bitcast %union.U1* %l_777 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1836) #1
  %1837 = bitcast %union.U2**** %l_773 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1837) #1
  %1838 = bitcast [10 x %union.U2**]* %l_774 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1838) #1
  %1839 = bitcast i32* %l_770 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1839) #1
  %1840 = getelementptr %union.U1, %union.U1* %1, i32 0, i32 0
  %1841 = load i8*, i8** %1840, align 8
  ret i8* %1841

; <label>:1842                                    ; preds = %1170, %1140
  unreachable
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
define internal i32 @func_74(i8* %p_75, i32 %p_76.coerce, i8 zeroext %p_77) #0 {
  %1 = alloca i32, align 4
  %p_76 = alloca %union.U0, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %l_80 = alloca i64, align 8
  %l_92 = alloca i32**, align 8
  %l_95 = alloca [8 x i16*], align 16
  %l_96 = alloca i8, align 1
  %l_190 = alloca i32, align 4
  %l_209 = alloca i32*, align 8
  %l_208 = alloca i32**, align 8
  %l_233 = alloca i64, align 8
  %l_285 = alloca i64, align 8
  %l_334 = alloca i16, align 2
  %l_344 = alloca i32, align 4
  %l_368 = alloca i32, align 4
  %l_444 = alloca %union.U2*, align 8
  %l_488 = alloca %union.U0**, align 8
  %l_487 = alloca [9 x [10 x %union.U0***]], align 16
  %l_507 = alloca i32, align 4
  %l_508 = alloca i64, align 8
  %l_554 = alloca [5 x i64], align 16
  %l_556 = alloca [8 x i8], align 1
  %l_698 = alloca i32, align 4
  %l_745 = alloca i32, align 4
  %l_746 = alloca i64, align 8
  %l_756 = alloca i32*, align 8
  %l_758 = alloca i16*, align 8
  %l_759 = alloca i8, align 1
  %l_760 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_170 = alloca i16, align 2
  %l_188 = alloca i32*, align 8
  %l_200 = alloca %union.U0, align 4
  %l_234 = alloca i32***, align 8
  %l_147 = alloca i16, align 2
  %l_148 = alloca i32, align 4
  %l_167 = alloca i64*, align 8
  %l_201 = alloca [5 x i32*], align 16
  %l_275 = alloca %union.U2*, align 8
  %l_284 = alloca i8, align 1
  %i1 = alloca i32, align 4
  %l_173 = alloca i32, align 4
  %l_191 = alloca i32, align 4
  %4 = alloca i32
  %l_202 = alloca i32**, align 8
  %l_203 = alloca i8*, align 8
  %l_205 = alloca i64*, align 8
  %l_206 = alloca i64*, align 8
  %l_207 = alloca i64*, align 8
  %l_210 = alloca i32***, align 8
  %l_221 = alloca i64**, align 8
  %l_224 = alloca [6 x i16*], align 16
  %l_235 = alloca [2 x i32***], align 16
  %l_240 = alloca [5 x [7 x i16**]], align 16
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %l_239 = alloca %union.U2**, align 8
  %l_252 = alloca i32*, align 8
  %l_253 = alloca i32*, align 8
  %l_254 = alloca i32*, align 8
  %l_269 = alloca %union.U2*, align 8
  %l_273 = alloca %union.U2**, align 8
  %l_274 = alloca [3 x %union.U2**], align 16
  %l_277 = alloca i32*, align 8
  %l_283 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %5 = alloca %union.U1, align 8
  %l_289 = alloca i16, align 2
  %l_313 = alloca i32, align 4
  %l_315 = alloca i32, align 4
  %l_316 = alloca i32, align 4
  %l_390 = alloca i32, align 4
  %l_302 = alloca i64, align 8
  %l_347 = alloca i32, align 4
  %l_314 = alloca i64, align 8
  %l_350 = alloca i32***, align 8
  %l_382 = alloca i32*, align 8
  %l_357 = alloca i32, align 4
  %l_369 = alloca i64*, align 8
  %l_383 = alloca i32*, align 8
  %l_391 = alloca i8*, align 8
  %l_394 = alloca i32*, align 8
  %l_415 = alloca [8 x [7 x %union.U0*]], align 16
  %l_416 = alloca %union.U0, align 4
  %l_417 = alloca [8 x i8*], align 16
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_431 = alloca i32, align 4
  %l_434 = alloca i32, align 4
  %l_470 = alloca %union.U2*, align 8
  %l_513 = alloca i32***, align 8
  %l_514 = alloca i32*, align 8
  %l_525 = alloca i16*, align 8
  %l_524 = alloca i16**, align 8
  %l_536 = alloca i64*, align 8
  %l_537 = alloca i16, align 2
  %l_538 = alloca [10 x [5 x i32*]], align 16
  %l_539 = alloca i32, align 4
  %l_540 = alloca i8*, align 8
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %l_426 = alloca i32, align 4
  %l_428 = alloca i32, align 4
  %l_429 = alloca i32, align 4
  %l_432 = alloca i32, align 4
  %l_436 = alloca [2 x i32], align 4
  %i12 = alloca i32, align 4
  %l_441 = alloca i16, align 2
  %l_448 = alloca i32, align 4
  %l_512 = alloca i32**, align 8
  %l_515 = alloca i32*, align 8
  %l_449 = alloca i32, align 4
  %i13 = alloca i32, align 4
  %l_555 = alloca i64, align 8
  %l_557 = alloca [4 x [10 x i8]], align 16
  %l_563 = alloca i32, align 4
  %l_577 = alloca i32*, align 8
  %l_588 = alloca i16, align 2
  %l_603 = alloca i64, align 8
  %l_638 = alloca i32, align 4
  %l_649 = alloca %union.U0**, align 8
  %l_684 = alloca i32, align 4
  %l_734 = alloca i16, align 2
  %l_744 = alloca [9 x i32], align 16
  %i14 = alloca i32, align 4
  %j15 = alloca i32, align 4
  %6 = alloca %union.U1, align 8
  %7 = getelementptr %union.U0, %union.U0* %p_76, i32 0, i32 0
  store i32 %p_76.coerce, i32* %7, align 4
  store i8* %p_75, i8** %2, align 8, !tbaa !5
  store i8 %p_77, i8* %3, align 1, !tbaa !9
  %8 = bitcast i64* %l_80 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64 4264985695822987610, i64* %l_80, align 8, !tbaa !7
  %9 = bitcast i32*** %l_92 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32** getelementptr inbounds ([8 x [5 x i32*]], [8 x [5 x i32*]]* @func_74.l_93, i32 0, i64 0, i64 0), i32*** %l_92, align 8, !tbaa !5
  %10 = bitcast [8 x i16*]* %l_95 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %10) #1
  %11 = bitcast [8 x i16*]* %l_95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([8 x i16*]* @func_74.l_95 to i8*), i64 64, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_96) #1
  store i8 -1, i8* %l_96, align 1, !tbaa !9
  %12 = bitcast i32* %l_190 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 183124858, i32* %l_190, align 4, !tbaa !1
  %13 = bitcast i32** %l_209 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32* %l_190, i32** %l_209, align 8, !tbaa !5
  %14 = bitcast i32*** %l_208 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32** %l_209, i32*** %l_208, align 8, !tbaa !5
  %15 = bitcast i64* %l_233 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i64 -5, i64* %l_233, align 8, !tbaa !7
  %16 = bitcast i64* %l_285 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64 3, i64* %l_285, align 8, !tbaa !7
  %17 = bitcast i16* %l_334 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #1
  store i16 -28298, i16* %l_334, align 2, !tbaa !10
  %18 = bitcast i32* %l_344 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 2126784368, i32* %l_344, align 4, !tbaa !1
  %19 = bitcast i32* %l_368 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 -1, i32* %l_368, align 4, !tbaa !1
  %20 = bitcast %union.U2** %l_444 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store %union.U2* bitcast ({ i32, [4 x i8] }* @g_445 to %union.U2*), %union.U2** %l_444, align 8, !tbaa !5
  %21 = bitcast %union.U0*** %l_488 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store %union.U0** @g_310, %union.U0*** %l_488, align 8, !tbaa !5
  %22 = bitcast [9 x [10 x %union.U0***]]* %l_487 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %22) #1
  %23 = getelementptr inbounds [9 x [10 x %union.U0***]], [9 x [10 x %union.U0***]]* %l_487, i64 0, i64 0
  %24 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %23, i64 0, i64 0
  store %union.U0*** %l_488, %union.U0**** %24, !tbaa !5
  %25 = getelementptr inbounds %union.U0***, %union.U0**** %24, i64 1
  store %union.U0*** %l_488, %union.U0**** %25, !tbaa !5
  %26 = getelementptr inbounds %union.U0***, %union.U0**** %25, i64 1
  store %union.U0*** %l_488, %union.U0**** %26, !tbaa !5
  %27 = getelementptr inbounds %union.U0***, %union.U0**** %26, i64 1
  store %union.U0*** %l_488, %union.U0**** %27, !tbaa !5
  %28 = getelementptr inbounds %union.U0***, %union.U0**** %27, i64 1
  store %union.U0*** %l_488, %union.U0**** %28, !tbaa !5
  %29 = getelementptr inbounds %union.U0***, %union.U0**** %28, i64 1
  store %union.U0*** %l_488, %union.U0**** %29, !tbaa !5
  %30 = getelementptr inbounds %union.U0***, %union.U0**** %29, i64 1
  store %union.U0*** %l_488, %union.U0**** %30, !tbaa !5
  %31 = getelementptr inbounds %union.U0***, %union.U0**** %30, i64 1
  store %union.U0*** %l_488, %union.U0**** %31, !tbaa !5
  %32 = getelementptr inbounds %union.U0***, %union.U0**** %31, i64 1
  store %union.U0*** %l_488, %union.U0**** %32, !tbaa !5
  %33 = getelementptr inbounds %union.U0***, %union.U0**** %32, i64 1
  store %union.U0*** %l_488, %union.U0**** %33, !tbaa !5
  %34 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %23, i64 1
  %35 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %34, i64 0, i64 0
  store %union.U0*** %l_488, %union.U0**** %35, !tbaa !5
  %36 = getelementptr inbounds %union.U0***, %union.U0**** %35, i64 1
  store %union.U0*** %l_488, %union.U0**** %36, !tbaa !5
  %37 = getelementptr inbounds %union.U0***, %union.U0**** %36, i64 1
  store %union.U0*** %l_488, %union.U0**** %37, !tbaa !5
  %38 = getelementptr inbounds %union.U0***, %union.U0**** %37, i64 1
  store %union.U0*** %l_488, %union.U0**** %38, !tbaa !5
  %39 = getelementptr inbounds %union.U0***, %union.U0**** %38, i64 1
  store %union.U0*** %l_488, %union.U0**** %39, !tbaa !5
  %40 = getelementptr inbounds %union.U0***, %union.U0**** %39, i64 1
  store %union.U0*** %l_488, %union.U0**** %40, !tbaa !5
  %41 = getelementptr inbounds %union.U0***, %union.U0**** %40, i64 1
  store %union.U0*** %l_488, %union.U0**** %41, !tbaa !5
  %42 = getelementptr inbounds %union.U0***, %union.U0**** %41, i64 1
  store %union.U0*** %l_488, %union.U0**** %42, !tbaa !5
  %43 = getelementptr inbounds %union.U0***, %union.U0**** %42, i64 1
  store %union.U0*** %l_488, %union.U0**** %43, !tbaa !5
  %44 = getelementptr inbounds %union.U0***, %union.U0**** %43, i64 1
  store %union.U0*** %l_488, %union.U0**** %44, !tbaa !5
  %45 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %34, i64 1
  %46 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %45, i64 0, i64 0
  store %union.U0*** %l_488, %union.U0**** %46, !tbaa !5
  %47 = getelementptr inbounds %union.U0***, %union.U0**** %46, i64 1
  store %union.U0*** %l_488, %union.U0**** %47, !tbaa !5
  %48 = getelementptr inbounds %union.U0***, %union.U0**** %47, i64 1
  store %union.U0*** %l_488, %union.U0**** %48, !tbaa !5
  %49 = getelementptr inbounds %union.U0***, %union.U0**** %48, i64 1
  store %union.U0*** %l_488, %union.U0**** %49, !tbaa !5
  %50 = getelementptr inbounds %union.U0***, %union.U0**** %49, i64 1
  store %union.U0*** %l_488, %union.U0**** %50, !tbaa !5
  %51 = getelementptr inbounds %union.U0***, %union.U0**** %50, i64 1
  store %union.U0*** %l_488, %union.U0**** %51, !tbaa !5
  %52 = getelementptr inbounds %union.U0***, %union.U0**** %51, i64 1
  store %union.U0*** %l_488, %union.U0**** %52, !tbaa !5
  %53 = getelementptr inbounds %union.U0***, %union.U0**** %52, i64 1
  store %union.U0*** %l_488, %union.U0**** %53, !tbaa !5
  %54 = getelementptr inbounds %union.U0***, %union.U0**** %53, i64 1
  store %union.U0*** %l_488, %union.U0**** %54, !tbaa !5
  %55 = getelementptr inbounds %union.U0***, %union.U0**** %54, i64 1
  store %union.U0*** %l_488, %union.U0**** %55, !tbaa !5
  %56 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %45, i64 1
  %57 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %56, i64 0, i64 0
  store %union.U0*** %l_488, %union.U0**** %57, !tbaa !5
  %58 = getelementptr inbounds %union.U0***, %union.U0**** %57, i64 1
  store %union.U0*** %l_488, %union.U0**** %58, !tbaa !5
  %59 = getelementptr inbounds %union.U0***, %union.U0**** %58, i64 1
  store %union.U0*** %l_488, %union.U0**** %59, !tbaa !5
  %60 = getelementptr inbounds %union.U0***, %union.U0**** %59, i64 1
  store %union.U0*** %l_488, %union.U0**** %60, !tbaa !5
  %61 = getelementptr inbounds %union.U0***, %union.U0**** %60, i64 1
  store %union.U0*** %l_488, %union.U0**** %61, !tbaa !5
  %62 = getelementptr inbounds %union.U0***, %union.U0**** %61, i64 1
  store %union.U0*** %l_488, %union.U0**** %62, !tbaa !5
  %63 = getelementptr inbounds %union.U0***, %union.U0**** %62, i64 1
  store %union.U0*** %l_488, %union.U0**** %63, !tbaa !5
  %64 = getelementptr inbounds %union.U0***, %union.U0**** %63, i64 1
  store %union.U0*** %l_488, %union.U0**** %64, !tbaa !5
  %65 = getelementptr inbounds %union.U0***, %union.U0**** %64, i64 1
  store %union.U0*** %l_488, %union.U0**** %65, !tbaa !5
  %66 = getelementptr inbounds %union.U0***, %union.U0**** %65, i64 1
  store %union.U0*** %l_488, %union.U0**** %66, !tbaa !5
  %67 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %56, i64 1
  %68 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %67, i64 0, i64 0
  store %union.U0*** %l_488, %union.U0**** %68, !tbaa !5
  %69 = getelementptr inbounds %union.U0***, %union.U0**** %68, i64 1
  store %union.U0*** %l_488, %union.U0**** %69, !tbaa !5
  %70 = getelementptr inbounds %union.U0***, %union.U0**** %69, i64 1
  store %union.U0*** %l_488, %union.U0**** %70, !tbaa !5
  %71 = getelementptr inbounds %union.U0***, %union.U0**** %70, i64 1
  store %union.U0*** %l_488, %union.U0**** %71, !tbaa !5
  %72 = getelementptr inbounds %union.U0***, %union.U0**** %71, i64 1
  store %union.U0*** %l_488, %union.U0**** %72, !tbaa !5
  %73 = getelementptr inbounds %union.U0***, %union.U0**** %72, i64 1
  store %union.U0*** %l_488, %union.U0**** %73, !tbaa !5
  %74 = getelementptr inbounds %union.U0***, %union.U0**** %73, i64 1
  store %union.U0*** %l_488, %union.U0**** %74, !tbaa !5
  %75 = getelementptr inbounds %union.U0***, %union.U0**** %74, i64 1
  store %union.U0*** %l_488, %union.U0**** %75, !tbaa !5
  %76 = getelementptr inbounds %union.U0***, %union.U0**** %75, i64 1
  store %union.U0*** %l_488, %union.U0**** %76, !tbaa !5
  %77 = getelementptr inbounds %union.U0***, %union.U0**** %76, i64 1
  store %union.U0*** %l_488, %union.U0**** %77, !tbaa !5
  %78 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %67, i64 1
  %79 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %78, i64 0, i64 0
  store %union.U0*** %l_488, %union.U0**** %79, !tbaa !5
  %80 = getelementptr inbounds %union.U0***, %union.U0**** %79, i64 1
  store %union.U0*** %l_488, %union.U0**** %80, !tbaa !5
  %81 = getelementptr inbounds %union.U0***, %union.U0**** %80, i64 1
  store %union.U0*** %l_488, %union.U0**** %81, !tbaa !5
  %82 = getelementptr inbounds %union.U0***, %union.U0**** %81, i64 1
  store %union.U0*** %l_488, %union.U0**** %82, !tbaa !5
  %83 = getelementptr inbounds %union.U0***, %union.U0**** %82, i64 1
  store %union.U0*** %l_488, %union.U0**** %83, !tbaa !5
  %84 = getelementptr inbounds %union.U0***, %union.U0**** %83, i64 1
  store %union.U0*** %l_488, %union.U0**** %84, !tbaa !5
  %85 = getelementptr inbounds %union.U0***, %union.U0**** %84, i64 1
  store %union.U0*** %l_488, %union.U0**** %85, !tbaa !5
  %86 = getelementptr inbounds %union.U0***, %union.U0**** %85, i64 1
  store %union.U0*** %l_488, %union.U0**** %86, !tbaa !5
  %87 = getelementptr inbounds %union.U0***, %union.U0**** %86, i64 1
  store %union.U0*** %l_488, %union.U0**** %87, !tbaa !5
  %88 = getelementptr inbounds %union.U0***, %union.U0**** %87, i64 1
  store %union.U0*** %l_488, %union.U0**** %88, !tbaa !5
  %89 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %78, i64 1
  %90 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %89, i64 0, i64 0
  store %union.U0*** %l_488, %union.U0**** %90, !tbaa !5
  %91 = getelementptr inbounds %union.U0***, %union.U0**** %90, i64 1
  store %union.U0*** %l_488, %union.U0**** %91, !tbaa !5
  %92 = getelementptr inbounds %union.U0***, %union.U0**** %91, i64 1
  store %union.U0*** %l_488, %union.U0**** %92, !tbaa !5
  %93 = getelementptr inbounds %union.U0***, %union.U0**** %92, i64 1
  store %union.U0*** %l_488, %union.U0**** %93, !tbaa !5
  %94 = getelementptr inbounds %union.U0***, %union.U0**** %93, i64 1
  store %union.U0*** %l_488, %union.U0**** %94, !tbaa !5
  %95 = getelementptr inbounds %union.U0***, %union.U0**** %94, i64 1
  store %union.U0*** %l_488, %union.U0**** %95, !tbaa !5
  %96 = getelementptr inbounds %union.U0***, %union.U0**** %95, i64 1
  store %union.U0*** %l_488, %union.U0**** %96, !tbaa !5
  %97 = getelementptr inbounds %union.U0***, %union.U0**** %96, i64 1
  store %union.U0*** %l_488, %union.U0**** %97, !tbaa !5
  %98 = getelementptr inbounds %union.U0***, %union.U0**** %97, i64 1
  store %union.U0*** %l_488, %union.U0**** %98, !tbaa !5
  %99 = getelementptr inbounds %union.U0***, %union.U0**** %98, i64 1
  store %union.U0*** %l_488, %union.U0**** %99, !tbaa !5
  %100 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %89, i64 1
  %101 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %100, i64 0, i64 0
  store %union.U0*** %l_488, %union.U0**** %101, !tbaa !5
  %102 = getelementptr inbounds %union.U0***, %union.U0**** %101, i64 1
  store %union.U0*** %l_488, %union.U0**** %102, !tbaa !5
  %103 = getelementptr inbounds %union.U0***, %union.U0**** %102, i64 1
  store %union.U0*** %l_488, %union.U0**** %103, !tbaa !5
  %104 = getelementptr inbounds %union.U0***, %union.U0**** %103, i64 1
  store %union.U0*** %l_488, %union.U0**** %104, !tbaa !5
  %105 = getelementptr inbounds %union.U0***, %union.U0**** %104, i64 1
  store %union.U0*** %l_488, %union.U0**** %105, !tbaa !5
  %106 = getelementptr inbounds %union.U0***, %union.U0**** %105, i64 1
  store %union.U0*** %l_488, %union.U0**** %106, !tbaa !5
  %107 = getelementptr inbounds %union.U0***, %union.U0**** %106, i64 1
  store %union.U0*** %l_488, %union.U0**** %107, !tbaa !5
  %108 = getelementptr inbounds %union.U0***, %union.U0**** %107, i64 1
  store %union.U0*** %l_488, %union.U0**** %108, !tbaa !5
  %109 = getelementptr inbounds %union.U0***, %union.U0**** %108, i64 1
  store %union.U0*** %l_488, %union.U0**** %109, !tbaa !5
  %110 = getelementptr inbounds %union.U0***, %union.U0**** %109, i64 1
  store %union.U0*** %l_488, %union.U0**** %110, !tbaa !5
  %111 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %100, i64 1
  %112 = getelementptr inbounds [10 x %union.U0***], [10 x %union.U0***]* %111, i64 0, i64 0
  store %union.U0*** %l_488, %union.U0**** %112, !tbaa !5
  %113 = getelementptr inbounds %union.U0***, %union.U0**** %112, i64 1
  store %union.U0*** %l_488, %union.U0**** %113, !tbaa !5
  %114 = getelementptr inbounds %union.U0***, %union.U0**** %113, i64 1
  store %union.U0*** %l_488, %union.U0**** %114, !tbaa !5
  %115 = getelementptr inbounds %union.U0***, %union.U0**** %114, i64 1
  store %union.U0*** %l_488, %union.U0**** %115, !tbaa !5
  %116 = getelementptr inbounds %union.U0***, %union.U0**** %115, i64 1
  store %union.U0*** %l_488, %union.U0**** %116, !tbaa !5
  %117 = getelementptr inbounds %union.U0***, %union.U0**** %116, i64 1
  store %union.U0*** %l_488, %union.U0**** %117, !tbaa !5
  %118 = getelementptr inbounds %union.U0***, %union.U0**** %117, i64 1
  store %union.U0*** %l_488, %union.U0**** %118, !tbaa !5
  %119 = getelementptr inbounds %union.U0***, %union.U0**** %118, i64 1
  store %union.U0*** %l_488, %union.U0**** %119, !tbaa !5
  %120 = getelementptr inbounds %union.U0***, %union.U0**** %119, i64 1
  store %union.U0*** %l_488, %union.U0**** %120, !tbaa !5
  %121 = getelementptr inbounds %union.U0***, %union.U0**** %120, i64 1
  store %union.U0*** %l_488, %union.U0**** %121, !tbaa !5
  %122 = bitcast i32* %l_507 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  store i32 1463967446, i32* %l_507, align 4, !tbaa !1
  %123 = bitcast i64* %l_508 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #1
  store i64 2, i64* %l_508, align 8, !tbaa !7
  %124 = bitcast [5 x i64]* %l_554 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %124) #1
  %125 = bitcast [8 x i8]* %l_556 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %125) #1
  %126 = bitcast [8 x i8]* %l_556 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @func_74.l_556, i32 0, i32 0), i64 8, i32 1, i1 false)
  %127 = bitcast i32* %l_698 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #1
  store i32 973172886, i32* %l_698, align 4, !tbaa !1
  %128 = bitcast i32* %l_745 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #1
  store i32 -1790887626, i32* %l_745, align 4, !tbaa !1
  %129 = bitcast i64* %l_746 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  store i64 3700129148763367524, i64* %l_746, align 8, !tbaa !7
  %130 = bitcast i32** %l_756 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #1
  store i32* @g_255, i32** %l_756, align 8, !tbaa !5
  %131 = bitcast i16** %l_758 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  store i16* @g_670, i16** %l_758, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_759) #1
  store i8 0, i8* %l_759, align 1, !tbaa !9
  %132 = bitcast i32* %l_760 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #1
  store i32 0, i32* %l_760, align 4, !tbaa !1
  %133 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #1
  %134 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %135

; <label>:135                                     ; preds = %142, %0
  %136 = load i32, i32* %i, align 4, !tbaa !1
  %137 = icmp slt i32 %136, 5
  br i1 %137, label %138, label %145

; <label>:138                                     ; preds = %135
  %139 = load i32, i32* %i, align 4, !tbaa !1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [5 x i64], [5 x i64]* %l_554, i32 0, i64 %140
  store i64 6, i64* %141, align 8, !tbaa !7
  br label %142

; <label>:142                                     ; preds = %138
  %143 = load i32, i32* %i, align 4, !tbaa !1
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %i, align 4, !tbaa !1
  br label %135

; <label>:145                                     ; preds = %135
  %146 = load i8, i8* %3, align 1, !tbaa !9
  %147 = load i64, i64* %l_80, align 8, !tbaa !7
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %150, label %149

; <label>:149                                     ; preds = %145
  br label %150

; <label>:150                                     ; preds = %149, %145
  %151 = phi i1 [ true, %145 ], [ true, %149 ]
  %152 = zext i1 %151 to i32
  %153 = trunc i32 %152 to i8
  %154 = load i32**, i32*** @g_87, align 8, !tbaa !5
  %155 = load i32**, i32*** %l_92, align 8, !tbaa !5
  %156 = load i32**, i32*** @g_87, align 8, !tbaa !5
  %157 = icmp ne i32** %155, %156
  %158 = zext i1 %157 to i32
  %159 = sext i32 %158 to i64
  %160 = icmp ne i64 %159, -3
  %161 = zext i1 %160 to i32
  %162 = bitcast %union.U0* %p_76 to i32*
  %163 = load i32, i32* %162, align 4, !tbaa !1
  %164 = icmp sle i32 %161, %163
  %165 = zext i1 %164 to i32
  %166 = sext i32 %165 to i64
  %167 = and i64 255, %166
  %168 = trunc i64 %167 to i32
  %169 = call i32 @safe_sub_func_int32_t_s_s(i32 -349882306, i32 %168)
  %170 = trunc i32 %169 to i16
  %171 = load i8, i8* %3, align 1, !tbaa !9
  %172 = zext i8 %171 to i16
  %173 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %170, i16 zeroext %172)
  %174 = load i8, i8* %3, align 1, !tbaa !9
  %175 = zext i8 %174 to i32
  %176 = load i8, i8* %3, align 1, !tbaa !9
  %177 = zext i8 %176 to i32
  %178 = icmp ne i32 %175, %177
  %179 = zext i1 %178 to i32
  %180 = load i8, i8* %3, align 1, !tbaa !9
  %181 = zext i8 %180 to i32
  %182 = icmp ne i32 %179, %181
  %183 = zext i1 %182 to i32
  %184 = sext i32 %183 to i64
  %185 = icmp sle i64 1, %184
  %186 = zext i1 %185 to i32
  %187 = trunc i32 %186 to i8
  %188 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 2
  %189 = load i16*, i16** %188, align 8, !tbaa !5
  %190 = load i8, i8* %l_96, align 1, !tbaa !9
  %191 = zext i8 %190 to i32
  %192 = load i8*, i8** getelementptr inbounds (%union.U1, %union.U1* bitcast ({ i32, [4 x i8] }* @g_94 to %union.U1*), i32 0, i32 0), align 8
  %193 = call i64 @func_81(i32** %154, i8 signext %187, i8* %192, i16* %189, i32 %191)
  %194 = bitcast %union.U0* %p_76 to i32*
  %195 = load i32, i32* %194, align 4, !tbaa !1
  %196 = sext i32 %195 to i64
  %197 = icmp ne i64 %193, %196
  %198 = zext i1 %197 to i32
  %199 = trunc i32 %198 to i8
  %200 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %153, i8 zeroext %199)
  %201 = icmp ne i8 %200, 0
  br i1 %201, label %202, label %1264

; <label>:202                                     ; preds = %150
  %203 = bitcast i16* %l_170 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %203) #1
  store i16 -30622, i16* %l_170, align 2, !tbaa !10
  %204 = bitcast i32** %l_188 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %204) #1
  store i32* @g_52, i32** %l_188, align 8, !tbaa !5
  %205 = bitcast %union.U0* %l_200 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %205) #1
  %206 = bitcast %union.U0* %l_200 to i8*
  call void @llvm.memset.p0i8.i64(i8* %206, i8 0, i64 4, i32 4, i1 false)
  %207 = bitcast i32**** %l_234 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %207) #1
  store i32*** %l_208, i32**** %l_234, align 8, !tbaa !5
  store i32 5, i32* @g_44, align 4, !tbaa !1
  br label %208

; <label>:208                                     ; preds = %763, %202
  %209 = load i32, i32* @g_44, align 4, !tbaa !1
  %210 = icmp sge i32 %209, 0
  br i1 %210, label %211, label %766

; <label>:211                                     ; preds = %208
  %212 = bitcast i16* %l_147 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %212) #1
  store i16 -14388, i16* %l_147, align 2, !tbaa !10
  %213 = bitcast i32* %l_148 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %213) #1
  store i32 1, i32* %l_148, align 4, !tbaa !1
  %214 = bitcast i64** %l_167 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %214) #1
  store i64* null, i64** %l_167, align 8, !tbaa !5
  %215 = bitcast [5 x i32*]* %l_201 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %215) #1
  %216 = bitcast %union.U2** %l_275 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %216) #1
  store %union.U2* getelementptr inbounds ([3 x %union.U2], [3 x %union.U2]* bitcast (<{ { i32, [4 x i8] }, { i32, [4 x i8] }, { i32, [4 x i8] } }>* @g_276 to [3 x %union.U2]*), i32 0, i64 0), %union.U2** %l_275, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_284) #1
  store i8 0, i8* %l_284, align 1, !tbaa !9
  %217 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %217) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %218

; <label>:218                                     ; preds = %225, %211
  %219 = load i32, i32* %i1, align 4, !tbaa !1
  %220 = icmp slt i32 %219, 5
  br i1 %220, label %221, label %228

; <label>:221                                     ; preds = %218
  %222 = load i32, i32* %i1, align 4, !tbaa !1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [5 x i32*], [5 x i32*]* %l_201, i32 0, i64 %223
  store i32* @g_52, i32** %224, align 8, !tbaa !5
  br label %225

; <label>:225                                     ; preds = %221
  %226 = load i32, i32* %i1, align 4, !tbaa !1
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %i1, align 4, !tbaa !1
  br label %218

; <label>:228                                     ; preds = %218
  %229 = bitcast %union.U0* %p_76 to i32*
  store i32 7, i32* %229, align 4, !tbaa !1
  br label %230

; <label>:230                                     ; preds = %239, %228
  %231 = bitcast %union.U0* %p_76 to i32*
  %232 = load i32, i32* %231, align 4, !tbaa !1
  %233 = icmp sge i32 %232, 2
  br i1 %233, label %234, label %243

; <label>:234                                     ; preds = %230
  %235 = bitcast i32* %l_173 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %235) #1
  store i32 149215983, i32* %l_173, align 4, !tbaa !1
  %236 = bitcast i32* %l_191 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %236) #1
  store i32 -93279385, i32* %l_191, align 4, !tbaa !1
  %237 = bitcast i32* %l_191 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i32* %l_173 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  br label %239

; <label>:239                                     ; preds = %234
  %240 = bitcast %union.U0* %p_76 to i32*
  %241 = load i32, i32* %240, align 4, !tbaa !1
  %242 = sub nsw i32 %241, 1
  store i32 %242, i32* %240, align 4, !tbaa !1
  br label %230

; <label>:243                                     ; preds = %230
  %244 = load i32, i32* @g_44, align 4, !tbaa !1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %245
  %247 = load i16*, i16** %246, align 8, !tbaa !5
  %248 = load i32, i32* @g_44, align 4, !tbaa !1
  %249 = add nsw i32 %248, 2
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %250
  store i16* %247, i16** %251, align 8, !tbaa !5
  %252 = icmp eq i16* %247, null
  br i1 %252, label %253, label %259

; <label>:253                                     ; preds = %243
  %254 = bitcast %union.U0* %p_76 to i32*
  %255 = load i32, i32* %254, align 4, !tbaa !1
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

; <label>:257                                     ; preds = %253
  store i32 5, i32* %4
  br label %755

; <label>:258                                     ; preds = %253
  br label %754

; <label>:259                                     ; preds = %243
  %260 = bitcast i32*** %l_202 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %260) #1
  store i32** %l_188, i32*** %l_202, align 8, !tbaa !5
  %261 = bitcast i8** %l_203 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %261) #1
  store i8* @g_204, i8** %l_203, align 8, !tbaa !5
  %262 = bitcast i64** %l_205 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %262) #1
  store i64* null, i64** %l_205, align 8, !tbaa !5
  %263 = bitcast i64** %l_206 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %263) #1
  store i64* null, i64** %l_206, align 8, !tbaa !5
  %264 = bitcast i64** %l_207 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %264) #1
  store i64* %l_80, i64** %l_207, align 8, !tbaa !5
  %265 = bitcast i32**** %l_210 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %265) #1
  store i32*** %l_208, i32**** %l_210, align 8, !tbaa !5
  %266 = bitcast i64*** %l_221 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %266) #1
  store i64** %l_167, i64*** %l_221, align 8, !tbaa !5
  %267 = bitcast [6 x i16*]* %l_224 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %267) #1
  %268 = bitcast [2 x i32***]* %l_235 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %268) #1
  %269 = bitcast [5 x [7 x i16**]]* %l_240 to i8*
  call void @llvm.lifetime.start(i64 280, i8* %269) #1
  %270 = getelementptr inbounds [5 x [7 x i16**]], [5 x [7 x i16**]]* %l_240, i64 0, i64 0
  %271 = getelementptr inbounds [7 x i16**], [7 x i16**]* %270, i64 0, i64 0
  %272 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 7
  store i16** %272, i16*** %271, !tbaa !5
  %273 = getelementptr inbounds i16**, i16*** %271, i64 1
  %274 = load i32, i32* @g_44, align 4, !tbaa !1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %275
  store i16** %276, i16*** %273, !tbaa !5
  %277 = getelementptr inbounds i16**, i16*** %273, i64 1
  %278 = load i32, i32* @g_44, align 4, !tbaa !1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %279
  store i16** %280, i16*** %277, !tbaa !5
  %281 = getelementptr inbounds i16**, i16*** %277, i64 1
  %282 = load i32, i32* @g_44, align 4, !tbaa !1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %283
  store i16** %284, i16*** %281, !tbaa !5
  %285 = getelementptr inbounds i16**, i16*** %281, i64 1
  %286 = load i32, i32* @g_44, align 4, !tbaa !1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %287
  store i16** %288, i16*** %285, !tbaa !5
  %289 = getelementptr inbounds i16**, i16*** %285, i64 1
  %290 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 7
  store i16** %290, i16*** %289, !tbaa !5
  %291 = getelementptr inbounds i16**, i16*** %289, i64 1
  %292 = load i32, i32* @g_44, align 4, !tbaa !1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %293
  store i16** %294, i16*** %291, !tbaa !5
  %295 = getelementptr inbounds [7 x i16**], [7 x i16**]* %270, i64 1
  %296 = getelementptr inbounds [7 x i16**], [7 x i16**]* %295, i64 0, i64 0
  %297 = load i32, i32* @g_44, align 4, !tbaa !1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %298
  store i16** %299, i16*** %296, !tbaa !5
  %300 = getelementptr inbounds i16**, i16*** %296, i64 1
  %301 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 6
  store i16** %301, i16*** %300, !tbaa !5
  %302 = getelementptr inbounds i16**, i16*** %300, i64 1
  %303 = load i32, i32* @g_44, align 4, !tbaa !1
  %304 = add nsw i32 %303, 2
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %305
  store i16** %306, i16*** %302, !tbaa !5
  %307 = getelementptr inbounds i16**, i16*** %302, i64 1
  %308 = load i32, i32* @g_44, align 4, !tbaa !1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %309
  store i16** %310, i16*** %307, !tbaa !5
  %311 = getelementptr inbounds i16**, i16*** %307, i64 1
  %312 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 2
  store i16** %312, i16*** %311, !tbaa !5
  %313 = getelementptr inbounds i16**, i16*** %311, i64 1
  %314 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 2
  store i16** %314, i16*** %313, !tbaa !5
  %315 = getelementptr inbounds i16**, i16*** %313, i64 1
  %316 = load i32, i32* @g_44, align 4, !tbaa !1
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %317
  store i16** %318, i16*** %315, !tbaa !5
  %319 = getelementptr inbounds [7 x i16**], [7 x i16**]* %295, i64 1
  %320 = getelementptr inbounds [7 x i16**], [7 x i16**]* %319, i64 0, i64 0
  %321 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 2
  store i16** %321, i16*** %320, !tbaa !5
  %322 = getelementptr inbounds i16**, i16*** %320, i64 1
  %323 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 7
  store i16** %323, i16*** %322, !tbaa !5
  %324 = getelementptr inbounds i16**, i16*** %322, i64 1
  %325 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 4
  store i16** %325, i16*** %324, !tbaa !5
  %326 = getelementptr inbounds i16**, i16*** %324, i64 1
  %327 = load i32, i32* @g_44, align 4, !tbaa !1
  %328 = add nsw i32 %327, 2
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %329
  store i16** %330, i16*** %326, !tbaa !5
  %331 = getelementptr inbounds i16**, i16*** %326, i64 1
  store i16** null, i16*** %331, !tbaa !5
  %332 = getelementptr inbounds i16**, i16*** %331, i64 1
  %333 = load i32, i32* @g_44, align 4, !tbaa !1
  %334 = add nsw i32 %333, 2
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %335
  store i16** %336, i16*** %332, !tbaa !5
  %337 = getelementptr inbounds i16**, i16*** %332, i64 1
  %338 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 4
  store i16** %338, i16*** %337, !tbaa !5
  %339 = getelementptr inbounds [7 x i16**], [7 x i16**]* %319, i64 1
  %340 = getelementptr inbounds [7 x i16**], [7 x i16**]* %339, i64 0, i64 0
  %341 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 6
  store i16** %341, i16*** %340, !tbaa !5
  %342 = getelementptr inbounds i16**, i16*** %340, i64 1
  %343 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 6
  store i16** %343, i16*** %342, !tbaa !5
  %344 = getelementptr inbounds i16**, i16*** %342, i64 1
  %345 = load i32, i32* @g_44, align 4, !tbaa !1
  %346 = add nsw i32 %345, 2
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %347
  store i16** %348, i16*** %344, !tbaa !5
  %349 = getelementptr inbounds i16**, i16*** %344, i64 1
  %350 = load i32, i32* @g_44, align 4, !tbaa !1
  %351 = add nsw i32 %350, 2
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %352
  store i16** %353, i16*** %349, !tbaa !5
  %354 = getelementptr inbounds i16**, i16*** %349, i64 1
  %355 = load i32, i32* @g_44, align 4, !tbaa !1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %356
  store i16** %357, i16*** %354, !tbaa !5
  %358 = getelementptr inbounds i16**, i16*** %354, i64 1
  %359 = load i32, i32* @g_44, align 4, !tbaa !1
  %360 = add nsw i32 %359, 2
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %361
  store i16** %362, i16*** %358, !tbaa !5
  %363 = getelementptr inbounds i16**, i16*** %358, i64 1
  %364 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 4
  store i16** %364, i16*** %363, !tbaa !5
  %365 = getelementptr inbounds [7 x i16**], [7 x i16**]* %339, i64 1
  %366 = getelementptr inbounds [7 x i16**], [7 x i16**]* %365, i64 0, i64 0
  %367 = load i32, i32* @g_44, align 4, !tbaa !1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %368
  store i16** %369, i16*** %366, !tbaa !5
  %370 = getelementptr inbounds i16**, i16*** %366, i64 1
  %371 = load i32, i32* @g_44, align 4, !tbaa !1
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %372
  store i16** %373, i16*** %370, !tbaa !5
  %374 = getelementptr inbounds i16**, i16*** %370, i64 1
  %375 = load i32, i32* @g_44, align 4, !tbaa !1
  %376 = add nsw i32 %375, 2
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %377
  store i16** %378, i16*** %374, !tbaa !5
  %379 = getelementptr inbounds i16**, i16*** %374, i64 1
  %380 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 6
  store i16** %380, i16*** %379, !tbaa !5
  %381 = getelementptr inbounds i16**, i16*** %379, i64 1
  %382 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 4
  store i16** %382, i16*** %381, !tbaa !5
  %383 = getelementptr inbounds i16**, i16*** %381, i64 1
  %384 = load i32, i32* @g_44, align 4, !tbaa !1
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %385
  store i16** %386, i16*** %383, !tbaa !5
  %387 = getelementptr inbounds i16**, i16*** %383, i64 1
  %388 = load i32, i32* @g_44, align 4, !tbaa !1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 %389
  store i16** %390, i16*** %387, !tbaa !5
  %391 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %391) #1
  %392 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %392) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %393

; <label>:393                                     ; preds = %400, %259
  %394 = load i32, i32* %i2, align 4, !tbaa !1
  %395 = icmp slt i32 %394, 6
  br i1 %395, label %396, label %403

; <label>:396                                     ; preds = %393
  %397 = load i32, i32* %i2, align 4, !tbaa !1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [6 x i16*], [6 x i16*]* %l_224, i32 0, i64 %398
  store i16* null, i16** %399, align 8, !tbaa !5
  br label %400

; <label>:400                                     ; preds = %396
  %401 = load i32, i32* %i2, align 4, !tbaa !1
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %i2, align 4, !tbaa !1
  br label %393

; <label>:403                                     ; preds = %393
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %404

; <label>:404                                     ; preds = %411, %403
  %405 = load i32, i32* %i2, align 4, !tbaa !1
  %406 = icmp slt i32 %405, 2
  br i1 %406, label %407, label %414

; <label>:407                                     ; preds = %404
  %408 = load i32, i32* %i2, align 4, !tbaa !1
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [2 x i32***], [2 x i32***]* %l_235, i32 0, i64 %409
  store i32*** %l_202, i32**** %410, align 8, !tbaa !5
  br label %411

; <label>:411                                     ; preds = %407
  %412 = load i32, i32* %i2, align 4, !tbaa !1
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %i2, align 4, !tbaa !1
  br label %404

; <label>:414                                     ; preds = %404
  %415 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @func_74.l_197, i32 0, i64 1), align 4, !tbaa !1
  %416 = getelementptr inbounds [5 x i32*], [5 x i32*]* %l_201, i32 0, i64 3
  %417 = load i32*, i32** %416, align 8, !tbaa !5
  %418 = load i32**, i32*** %l_202, align 8, !tbaa !5
  store i32* @g_39, i32** %418, align 8, !tbaa !5
  %419 = icmp ne i32* %417, @g_39
  %420 = zext i1 %419 to i32
  %421 = trunc i32 %420 to i8
  %422 = load i8*, i8** %l_203, align 8, !tbaa !5
  store i8 %421, i8* %422, align 1, !tbaa !9
  %423 = load i8, i8* %3, align 1, !tbaa !9
  %424 = zext i8 %423 to i64
  %425 = load i64*, i64** %l_207, align 8, !tbaa !5
  store i64 %424, i64* %425, align 8, !tbaa !7
  %426 = load i32**, i32*** %l_208, align 8, !tbaa !5
  %427 = load i32***, i32**** %l_210, align 8, !tbaa !5
  store i32** %426, i32*** %427, align 8, !tbaa !5
  %428 = icmp ne i32** getelementptr inbounds ([8 x [5 x i32*]], [8 x [5 x i32*]]* @func_74.l_93, i32 0, i64 0, i64 3), %426
  %429 = zext i1 %428 to i32
  %430 = sext i32 %429 to i64
  %431 = or i64 %424, %430
  %432 = trunc i64 %431 to i32
  %433 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %421, i32 %432)
  %434 = sext i8 %433 to i32
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %470, label %436

; <label>:436                                     ; preds = %414
  %437 = load i8*, i8** @g_34, align 8, !tbaa !5
  %438 = load i8, i8* %437, align 1, !tbaa !9
  %439 = sext i8 %438 to i32
  %440 = load i8*, i8** @g_34, align 8, !tbaa !5
  %441 = load i8, i8* %440, align 1, !tbaa !9
  %442 = sext i8 %441 to i32
  %443 = icmp slt i32 %439, %442
  %444 = zext i1 %443 to i32
  %445 = xor i32 %444, -1
  %446 = xor i32 %445, -1
  %447 = load i64, i64* @g_130, align 8, !tbaa !7
  %448 = trunc i64 %447 to i32
  %449 = call i32 @safe_div_func_uint32_t_u_u(i32 %446, i32 %448)
  %450 = trunc i32 %449 to i16
  %451 = load i8, i8* %3, align 1, !tbaa !9
  %452 = zext i8 %451 to i16
  %453 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %450, i16 zeroext %452)
  %454 = zext i16 %453 to i32
  %455 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_94 to i16*), align 2, !tbaa !10
  %456 = sext i16 %455 to i32
  %457 = or i32 %454, %456
  %458 = trunc i32 %457 to i8
  %459 = load i8*, i8** %l_203, align 8, !tbaa !5
  store i8 %458, i8* %459, align 1, !tbaa !9
  %460 = sext i8 %458 to i64
  %461 = or i64 %460, 167
  %462 = load i16, i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 2, i64 4), align 2, !tbaa !10
  %463 = zext i16 %462 to i64
  %464 = icmp ne i64 %463, -1
  %465 = zext i1 %464 to i32
  %466 = trunc i32 %465 to i16
  %467 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %466, i16 signext -3)
  %468 = sext i16 %467 to i32
  %469 = icmp ne i32 %468, 0
  br label %470

; <label>:470                                     ; preds = %436, %414
  %471 = phi i1 [ true, %414 ], [ %469, %436 ]
  %472 = zext i1 %471 to i32
  %473 = sext i32 %472 to i64
  %474 = icmp ne i64 -2, %473
  %475 = zext i1 %474 to i32
  %476 = and i32 %415, %475
  %477 = load i32, i32* @g_52, align 4, !tbaa !1
  %478 = trunc i32 %477 to i16
  %479 = bitcast %union.U0* %p_76 to i32*
  %480 = load i32, i32* %479, align 4, !tbaa !1
  %481 = trunc i32 %480 to i16
  %482 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %478, i16 zeroext %481)
  %483 = trunc i16 %482 to i8
  %484 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %483, i8 signext 55)
  %485 = sext i8 %484 to i32
  %486 = load i16, i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 1, i64 4), align 2, !tbaa !10
  %487 = zext i16 %486 to i32
  %488 = icmp slt i32 %485, %487
  %489 = zext i1 %488 to i32
  %490 = call i32* @func_40(i32 %489)
  %491 = load i32**, i32*** %l_202, align 8, !tbaa !5
  store i32* %490, i32** %491, align 8, !tbaa !5
  %492 = load i64**, i64*** %l_221, align 8, !tbaa !5
  store i64* null, i64** %492, align 8, !tbaa !5
  store i64* null, i64** @g_222, align 8, !tbaa !5
  %493 = load i8, i8* @g_121, align 1, !tbaa !9
  %494 = zext i8 %493 to i32
  %495 = load i32**, i32*** %l_208, align 8, !tbaa !5
  %496 = load i32*, i32** %495, align 8, !tbaa !5
  store i32 %494, i32* %496, align 4, !tbaa !1
  %497 = sext i32 %494 to i64
  %498 = icmp eq i64 46280, %497
  %499 = zext i1 %498 to i32
  %500 = trunc i32 %499 to i8
  store i8 %500, i8* @g_204, align 1, !tbaa !9
  %501 = icmp ne i8 %500, 0
  %502 = xor i1 %501, true
  %503 = zext i1 %502 to i32
  %504 = or i32 1, %503
  %505 = load i8, i8* %3, align 1, !tbaa !9
  %506 = zext i8 %505 to i32
  %507 = load i8, i8* %3, align 1, !tbaa !9
  %508 = zext i8 %507 to i32
  %509 = load i32*, i32** %l_188, align 8, !tbaa !5
  %510 = load i32, i32* %509, align 4, !tbaa !1
  %511 = trunc i32 %510 to i8
  %512 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext 0, i8 signext %511)
  %513 = sext i8 %512 to i32
  %514 = xor i32 %508, %513
  %515 = load i8*, i8** @g_34, align 8, !tbaa !5
  %516 = load i8, i8* %515, align 1, !tbaa !9
  %517 = load i64, i64* %l_233, align 8, !tbaa !7
  %518 = trunc i64 %517 to i8
  %519 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %516, i8 signext %518)
  %520 = sext i8 %519 to i16
  %521 = bitcast %union.U0* %p_76 to i32*
  %522 = load i32, i32* %521, align 4, !tbaa !1
  %523 = trunc i32 %522 to i16
  %524 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %520, i16 zeroext %523)
  %525 = zext i16 %524 to i32
  %526 = call i32 @safe_div_func_int32_t_s_s(i32 1653280285, i32 %525)
  %527 = bitcast %union.U0* %p_76 to i32*
  %528 = load i32, i32* %527, align 4, !tbaa !1
  %529 = icmp sgt i32 %526, %528
  %530 = zext i1 %529 to i32
  %531 = or i32 %506, %530
  %532 = icmp sle i32 %504, %531
  %533 = zext i1 %532 to i32
  %534 = sext i32 %533 to i64
  %535 = xor i64 %534, 32
  %536 = load i32***, i32**** %l_234, align 8, !tbaa !5
  %537 = getelementptr inbounds [2 x i32***], [2 x i32***]* %l_235, i32 0, i64 0
  %538 = load i32***, i32**** %537, align 8, !tbaa !5
  %539 = icmp eq i32*** %536, %538
  %540 = zext i1 %539 to i32
  %541 = trunc i32 %540 to i16
  %542 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %541, i16 zeroext 6916)
  %543 = icmp ne i16 %542, 0
  br i1 %543, label %544, label %570

; <label>:544                                     ; preds = %470
  store i16 0, i16* %l_147, align 2, !tbaa !10
  br label %545

; <label>:545                                     ; preds = %556, %544
  %546 = load i16, i16* %l_147, align 2, !tbaa !10
  %547 = zext i16 %546 to i32
  %548 = icmp sge i32 %547, 59
  br i1 %548, label %549, label %559

; <label>:549                                     ; preds = %545
  %550 = bitcast %union.U2*** %l_239 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %550) #1
  store %union.U2** @g_238, %union.U2*** %l_239, align 8, !tbaa !5
  %551 = load %union.U2*, %union.U2** @g_238, align 8, !tbaa !5
  %552 = load %union.U2**, %union.U2*** %l_239, align 8, !tbaa !5
  store %union.U2* %551, %union.U2** %552, align 8, !tbaa !5
  %553 = bitcast %union.U0* %p_76 to i32*
  %554 = load i32, i32* %553, align 4, !tbaa !1
  store i32 %554, i32* %1
  store i32 1, i32* %4
  %555 = bitcast %union.U2*** %l_239 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %555) #1
  br label %740
                                                  ; No predecessors!
  %557 = load i16, i16* %l_147, align 2, !tbaa !10
  %558 = add i16 %557, 1
  store i16 %558, i16* %l_147, align 2, !tbaa !10
  br label %545

; <label>:559                                     ; preds = %545
  %560 = getelementptr inbounds [5 x [7 x i16**]], [5 x [7 x i16**]]* %l_240, i32 0, i64 3
  %561 = getelementptr inbounds [7 x i16**], [7 x i16**]* %560, i32 0, i64 3
  %562 = load i16**, i16*** %561, align 8, !tbaa !5
  store i16** %562, i16*** @g_241, align 8, !tbaa !5
  %563 = load i32***, i32**** %l_234, align 8, !tbaa !5
  %564 = load i32**, i32*** %563, align 8, !tbaa !5
  %565 = load i32*, i32** %564, align 8, !tbaa !5
  %566 = load i32, i32* %565, align 4, !tbaa !1
  %567 = sext i32 %566 to i64
  %568 = or i64 %567, 3444950217
  %569 = trunc i64 %568 to i32
  store i32 %569, i32* %565, align 4, !tbaa !1
  br label %572

; <label>:570                                     ; preds = %470
  %571 = load i32, i32* @g_44, align 4, !tbaa !1
  store i32 %571, i32* %1
  store i32 1, i32* %4
  br label %740

; <label>:572                                     ; preds = %559
  %573 = load i16, i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 2, i64 4), align 2, !tbaa !10
  %574 = icmp ne i16 %573, 0
  br i1 %574, label %575, label %576

; <label>:575                                     ; preds = %572
  store i32 5, i32* %4
  br label %740

; <label>:576                                     ; preds = %572
  store i32 3, i32* @g_146, align 4, !tbaa !1
  br label %577

; <label>:577                                     ; preds = %736, %576
  %578 = load i32, i32* @g_146, align 4, !tbaa !1
  %579 = icmp sge i32 %578, 0
  br i1 %579, label %580, label %739

; <label>:580                                     ; preds = %577
  %581 = bitcast i32** %l_252 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %581) #1
  store i32* null, i32** %l_252, align 8, !tbaa !5
  %582 = bitcast i32** %l_253 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %582) #1
  store i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_94, i32 0, i32 0), i32** %l_253, align 8, !tbaa !5
  %583 = bitcast i32** %l_254 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %583) #1
  store i32* @g_255, i32** %l_254, align 8, !tbaa !5
  %584 = bitcast %union.U2** %l_269 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %584) #1
  store %union.U2* null, %union.U2** %l_269, align 8, !tbaa !5
  %585 = bitcast %union.U2*** %l_273 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %585) #1
  store %union.U2** null, %union.U2*** %l_273, align 8, !tbaa !5
  %586 = bitcast [3 x %union.U2**]* %l_274 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %586) #1
  %587 = bitcast i32** %l_277 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %587) #1
  store i32* getelementptr inbounds ([3 x [10 x [4 x i32]]], [3 x [10 x [4 x i32]]]* @g_278, i32 0, i64 2, i64 8, i64 3), i32** %l_277, align 8, !tbaa !5
  %588 = bitcast i32* %l_283 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %588) #1
  store i32 1787651422, i32* %l_283, align 4, !tbaa !1
  %589 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %589) #1
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %590

; <label>:590                                     ; preds = %597, %580
  %591 = load i32, i32* %i4, align 4, !tbaa !1
  %592 = icmp slt i32 %591, 3
  br i1 %592, label %593, label %600

; <label>:593                                     ; preds = %590
  %594 = load i32, i32* %i4, align 4, !tbaa !1
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds [3 x %union.U2**], [3 x %union.U2**]* %l_274, i32 0, i64 %595
  store %union.U2** getelementptr inbounds ([9 x %union.U2*], [9 x %union.U2*]* @g_270, i32 0, i64 8), %union.U2*** %596, align 8, !tbaa !5
  br label %597

; <label>:597                                     ; preds = %593
  %598 = load i32, i32* %i4, align 4, !tbaa !1
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %i4, align 4, !tbaa !1
  br label %590

; <label>:600                                     ; preds = %590
  %601 = load i32**, i32*** %l_208, align 8, !tbaa !5
  %602 = load i32*, i32** %601, align 8, !tbaa !5
  %603 = load i32, i32* %602, align 4, !tbaa !1
  %604 = load i32*, i32** %l_253, align 8, !tbaa !5
  store i32 0, i32* %604, align 4, !tbaa !1
  %605 = load i32*, i32** %l_254, align 8, !tbaa !5
  %606 = load i32, i32* %605, align 4, !tbaa !1
  %607 = and i32 %606, 0
  store i32 %607, i32* %605, align 4, !tbaa !1
  %608 = bitcast %union.U0* %p_76 to i32*
  %609 = load i32, i32* %608, align 4, !tbaa !1
  %610 = load %union.U2*, %union.U2** %l_269, align 8, !tbaa !5
  %611 = load %union.U2*, %union.U2** getelementptr inbounds ([9 x %union.U2*], [9 x %union.U2*]* @g_270, i32 0, i64 8), align 8, !tbaa !5
  store %union.U2* %611, %union.U2** %l_275, align 8, !tbaa !5
  %612 = icmp ne %union.U2* %610, %611
  %613 = zext i1 %612 to i32
  %614 = load i32*, i32** %l_277, align 8, !tbaa !5
  %615 = load i32, i32* %614, align 4, !tbaa !1
  %616 = and i32 %615, %613
  store i32 %616, i32* %614, align 4, !tbaa !1
  %617 = load i16*, i16** @g_242, align 8, !tbaa !5
  %618 = load i16, i16* %617, align 2, !tbaa !10
  %619 = load i8, i8* @g_121, align 1, !tbaa !9
  %620 = zext i8 %619 to i32
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %625

; <label>:622                                     ; preds = %600
  %623 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), align 4, !tbaa !1
  %624 = icmp ne i32 %623, 0
  br label %625

; <label>:625                                     ; preds = %622, %600
  %626 = phi i1 [ false, %600 ], [ %624, %622 ]
  %627 = zext i1 %626 to i32
  %628 = trunc i32 %627 to i8
  %629 = load i32*, i32** %l_188, align 8, !tbaa !5
  %630 = load i32, i32* %629, align 4, !tbaa !1
  %631 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %628, i32 %630)
  %632 = zext i8 %631 to i16
  %633 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %618, i16 zeroext %632)
  %634 = zext i16 %633 to i32
  %635 = load i8, i8* %3, align 1, !tbaa !9
  %636 = zext i8 %635 to i64
  %637 = load i32*, i32** %l_188, align 8, !tbaa !5
  %638 = load i32, i32* %637, align 4, !tbaa !1
  %639 = sext i32 %638 to i64
  %640 = load i32, i32* @g_146, align 4, !tbaa !1
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds [6 x i16*], [6 x i16*]* %l_224, i32 0, i64 %641
  %643 = load i16*, i16** %642, align 8, !tbaa !5
  %644 = getelementptr %union.U0, %union.U0* %p_76, i32 0, i32 0
  %645 = load i32, i32* %644, align 4
  %646 = call i8* @func_10(i32 %634, i32 %645, i64 %636, i64 %639, i16* %643)
  %647 = getelementptr %union.U1, %union.U1* %5, i32 0, i32 0
  store i8* %646, i8** %647, align 8
  %648 = load i16*, i16** @g_242, align 8, !tbaa !5
  %649 = load i16, i16* %648, align 2, !tbaa !10
  %650 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %649, i16 zeroext 12618)
  %651 = zext i16 %650 to i32
  %652 = load i32, i32* %l_283, align 4, !tbaa !1
  %653 = xor i32 %652, %651
  store i32 %653, i32* %l_283, align 4, !tbaa !1
  %654 = trunc i32 %653 to i16
  %655 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %654)
  %656 = load i16*, i16** @g_242, align 8, !tbaa !5
  %657 = load i16, i16* %656, align 2, !tbaa !10
  %658 = zext i16 %657 to i32
  %659 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %655, i32 %658)
  %660 = zext i16 %659 to i32
  %661 = icmp ne i32 %609, %660
  %662 = zext i1 %661 to i32
  %663 = trunc i32 %662 to i16
  %664 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %663, i16 signext 17061)
  %665 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %664, i16 zeroext 26732)
  %666 = zext i16 %665 to i32
  %667 = load i8*, i8** %2, align 8, !tbaa !5
  %668 = load i8, i8* %667, align 1, !tbaa !9
  %669 = sext i8 %668 to i32
  %670 = icmp sge i32 %666, %669
  %671 = zext i1 %670 to i32
  %672 = trunc i32 %671 to i16
  %673 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext 29910, i16 signext %672)
  %674 = bitcast %union.U0* %p_76 to i32*
  %675 = load i32, i32* %674, align 4, !tbaa !1
  %676 = trunc i32 %675 to i16
  %677 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %673, i16 signext %676)
  %678 = sext i16 %677 to i32
  %679 = load i8*, i8** %2, align 8, !tbaa !5
  %680 = load i8, i8* %679, align 1, !tbaa !9
  %681 = sext i8 %680 to i32
  %682 = icmp slt i32 %678, %681
  %683 = zext i1 %682 to i32
  %684 = icmp ugt i32 %607, %683
  %685 = zext i1 %684 to i32
  %686 = bitcast %union.U0* %p_76 to i32*
  %687 = load i32, i32* %686, align 4, !tbaa !1
  %688 = or i32 %685, %687
  %689 = trunc i32 %688 to i8
  %690 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %689, i32 5)
  %691 = zext i8 %690 to i32
  %692 = load i8, i8* %l_284, align 1, !tbaa !9
  %693 = sext i8 %692 to i32
  %694 = icmp slt i32 %691, %693
  %695 = zext i1 %694 to i32
  %696 = icmp sge i32 %603, %695
  %697 = zext i1 %696 to i32
  %698 = getelementptr inbounds [5 x i32*], [5 x i32*]* %l_201, i32 0, i64 1
  %699 = load i32*, i32** %698, align 8, !tbaa !5
  %700 = icmp ne i32* getelementptr inbounds ([3 x [10 x [4 x i32]]], [3 x [10 x [4 x i32]]]* @g_278, i32 0, i64 2, i64 8, i64 3), %699
  %701 = zext i1 %700 to i32
  %702 = load i8*, i8** @g_34, align 8, !tbaa !5
  %703 = load i8, i8* %702, align 1, !tbaa !9
  %704 = sext i8 %703 to i32
  %705 = xor i32 %701, %704
  %706 = trunc i32 %705 to i8
  %707 = load i64, i64* %l_285, align 8, !tbaa !7
  %708 = trunc i64 %707 to i32
  %709 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %706, i32 %708)
  store i8 %709, i8* @g_286, align 1, !tbaa !9
  %710 = icmp eq %union.U2** %l_275, null
  %711 = zext i1 %710 to i32
  %712 = sext i32 %711 to i64
  %713 = or i64 1, %712
  %714 = icmp ult i64 %713, 2787979041
  %715 = zext i1 %714 to i32
  %716 = load i32, i32* @g_52, align 4, !tbaa !1
  %717 = and i32 %716, %715
  store i32 %717, i32* @g_52, align 4, !tbaa !1
  %718 = call i32 @safe_add_func_int32_t_s_s(i32 %717, i32 8)
  %719 = xor i32 %718, -1
  %720 = sext i32 %719 to i64
  %721 = bitcast %union.U0* %p_76 to i32*
  %722 = load i32, i32* %721, align 4, !tbaa !1
  %723 = sext i32 %722 to i64
  %724 = call i64 @safe_div_func_int64_t_s_s(i64 %720, i64 %723)
  %725 = trunc i64 %724 to i32
  %726 = load i32*, i32** %l_209, align 8, !tbaa !5
  store i32 %725, i32* %726, align 4, !tbaa !1
  %727 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %727) #1
  %728 = bitcast i32* %l_283 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %728) #1
  %729 = bitcast i32** %l_277 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %729) #1
  %730 = bitcast [3 x %union.U2**]* %l_274 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %730) #1
  %731 = bitcast %union.U2*** %l_273 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %731) #1
  %732 = bitcast %union.U2** %l_269 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %732) #1
  %733 = bitcast i32** %l_254 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %733) #1
  %734 = bitcast i32** %l_253 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %734) #1
  %735 = bitcast i32** %l_252 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %735) #1
  br label %736

; <label>:736                                     ; preds = %625
  %737 = load i32, i32* @g_146, align 4, !tbaa !1
  %738 = sub nsw i32 %737, 1
  store i32 %738, i32* @g_146, align 4, !tbaa !1
  br label %577

; <label>:739                                     ; preds = %577
  store i32 0, i32* %4
  br label %740

; <label>:740                                     ; preds = %739, %575, %570, %549
  %741 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %741) #1
  %742 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %742) #1
  %743 = bitcast [5 x [7 x i16**]]* %l_240 to i8*
  call void @llvm.lifetime.end(i64 280, i8* %743) #1
  %744 = bitcast [2 x i32***]* %l_235 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %744) #1
  %745 = bitcast [6 x i16*]* %l_224 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %745) #1
  %746 = bitcast i64*** %l_221 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %746) #1
  %747 = bitcast i32**** %l_210 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %747) #1
  %748 = bitcast i64** %l_207 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %748) #1
  %749 = bitcast i64** %l_206 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %749) #1
  %750 = bitcast i64** %l_205 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %750) #1
  %751 = bitcast i8** %l_203 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %751) #1
  %752 = bitcast i32*** %l_202 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %752) #1
  %cleanup.dest = load i32, i32* %4
  switch i32 %cleanup.dest, label %755 [
    i32 0, label %753
  ]

; <label>:753                                     ; preds = %740
  br label %754

; <label>:754                                     ; preds = %753, %258
  store i32 0, i32* %4
  br label %755

; <label>:755                                     ; preds = %754, %740, %257
  %756 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %756) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_284) #1
  %757 = bitcast %union.U2** %l_275 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %757) #1
  %758 = bitcast [5 x i32*]* %l_201 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %758) #1
  %759 = bitcast i64** %l_167 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %759) #1
  %760 = bitcast i32* %l_148 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %760) #1
  %761 = bitcast i16* %l_147 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %761) #1
  %cleanup.dest.5 = load i32, i32* %4
  switch i32 %cleanup.dest.5, label %1258 [
    i32 0, label %762
    i32 5, label %766
  ]

; <label>:762                                     ; preds = %755
  br label %763

; <label>:763                                     ; preds = %762
  %764 = load i32, i32* @g_44, align 4, !tbaa !1
  %765 = sub nsw i32 %764, 1
  store i32 %765, i32* @g_44, align 4, !tbaa !1
  br label %208

; <label>:766                                     ; preds = %755, %208
  %767 = bitcast %union.U0* %p_76 to i32*
  store i32 0, i32* %767, align 4, !tbaa !1
  br label %768

; <label>:768                                     ; preds = %1099, %766
  %769 = bitcast %union.U0* %p_76 to i32*
  %770 = load i32, i32* %769, align 4, !tbaa !1
  %771 = icmp slt i32 %770, -19
  br i1 %771, label %772, label %1103

; <label>:772                                     ; preds = %768
  %773 = bitcast i16* %l_289 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %773) #1
  store i16 1, i16* %l_289, align 2, !tbaa !10
  %774 = bitcast i32* %l_313 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %774) #1
  store i32 3, i32* %l_313, align 4, !tbaa !1
  %775 = bitcast i32* %l_315 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %775) #1
  store i32 -7, i32* %l_315, align 4, !tbaa !1
  %776 = bitcast i32* %l_316 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %776) #1
  store i32 -715147456, i32* %l_316, align 4, !tbaa !1
  %777 = bitcast i32* %l_390 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %777) #1
  store i32 72407736, i32* %l_390, align 4, !tbaa !1
  %778 = load i16, i16* %l_289, align 2, !tbaa !10
  br i1 false, label %779, label %799

; <label>:779                                     ; preds = %772
  %780 = bitcast i64* %l_302 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %780) #1
  store i64 -743325492151777637, i64* %l_302, align 8, !tbaa !7
  %781 = bitcast i32* %l_347 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %781) #1
  store i32 -7, i32* %l_347, align 4, !tbaa !1
  store i8 0, i8* @g_121, align 1, !tbaa !9
  br label %782

; <label>:782                                     ; preds = %789, %779
  %783 = load i8, i8* @g_121, align 1, !tbaa !9
  %784 = zext i8 %783 to i32
  %785 = icmp sle i32 %784, 7
  br i1 %785, label %786, label %794

; <label>:786                                     ; preds = %782
  %787 = bitcast i64* %l_314 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %787) #1
  store i64 -1, i64* %l_314, align 8, !tbaa !7
  %788 = bitcast i64* %l_314 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %788) #1
  br label %789

; <label>:789                                     ; preds = %786
  %790 = load i8, i8* @g_121, align 1, !tbaa !9
  %791 = zext i8 %790 to i32
  %792 = add nsw i32 %791, 1
  %793 = trunc i32 %792 to i8
  store i8 %793, i8* @g_121, align 1, !tbaa !9
  br label %782

; <label>:794                                     ; preds = %782
  %795 = load i64, i64* %l_302, align 8, !tbaa !7
  %796 = trunc i64 %795 to i32
  store i32 %796, i32* %1
  store i32 1, i32* %4
  %797 = bitcast i32* %l_347 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %797) #1
  %798 = bitcast i64* %l_302 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %798) #1
  br label %1092

; <label>:799                                     ; preds = %772
  %800 = bitcast i32**** %l_350 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %800) #1
  store i32*** %l_208, i32**** %l_350, align 8, !tbaa !5
  %801 = bitcast i32** %l_382 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %801) #1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @func_74.l_197, i32 0, i64 1), i32** %l_382, align 8, !tbaa !5
  store i8 -12, i8* %3, align 1, !tbaa !9
  br label %802

; <label>:802                                     ; preds = %813, %799
  %803 = load i8, i8* %3, align 1, !tbaa !9
  %804 = zext i8 %803 to i32
  %805 = icmp sle i32 %804, 29
  br i1 %805, label %806, label %818

; <label>:806                                     ; preds = %802
  %807 = load i32***, i32**** %l_350, align 8, !tbaa !5
  %808 = icmp eq i32*** null, %807
  %809 = zext i1 %808 to i32
  %810 = load i32***, i32**** %l_350, align 8, !tbaa !5
  %811 = load i32**, i32*** %810, align 8, !tbaa !5
  %812 = load i32*, i32** %811, align 8, !tbaa !5
  store i32 %809, i32* %812, align 4, !tbaa !1
  br label %813

; <label>:813                                     ; preds = %806
  %814 = load i8, i8* %3, align 1, !tbaa !9
  %815 = zext i8 %814 to i64
  %816 = call i64 @safe_add_func_uint64_t_u_u(i64 %815, i64 3)
  %817 = trunc i64 %816 to i8
  store i8 %817, i8* %3, align 1, !tbaa !9
  br label %802

; <label>:818                                     ; preds = %802
  store i8 0, i8* @g_318, align 1, !tbaa !9
  br label %819

; <label>:819                                     ; preds = %1080, %818
  %820 = load i8, i8* @g_318, align 1, !tbaa !9
  %821 = zext i8 %820 to i32
  %822 = icmp slt i32 %821, 32
  br i1 %822, label %823, label %1083

; <label>:823                                     ; preds = %819
  %824 = bitcast i32* %l_357 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %824) #1
  store i32 -1, i32* %l_357, align 4, !tbaa !1
  %825 = bitcast i64** %l_369 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %825) #1
  store i64* @g_152, i64** %l_369, align 8, !tbaa !5
  %826 = bitcast i32** %l_383 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %826) #1
  store i32* @g_146, i32** %l_383, align 8, !tbaa !5
  %827 = bitcast i8** %l_391 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %827) #1
  store i8* null, i8** %l_391, align 8, !tbaa !5
  %828 = bitcast i32** %l_394 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %828) #1
  store i32* @g_255, i32** %l_394, align 8, !tbaa !5
  %829 = load i32, i32* %l_313, align 4, !tbaa !1
  %830 = load i32**, i32*** %l_208, align 8, !tbaa !5
  %831 = load i32*, i32** %830, align 8, !tbaa !5
  %832 = load i32, i32* %831, align 4, !tbaa !1
  %833 = sext i32 %832 to i64
  %834 = icmp eq i64 -8, %833
  %835 = zext i1 %834 to i32
  %836 = load i32, i32* %l_357, align 4, !tbaa !1
  %837 = or i32 %836, %835
  store i32 %837, i32* %l_357, align 4, !tbaa !1
  %838 = icmp ule i32 %829, %837
  br i1 %838, label %902, label %839

; <label>:839                                     ; preds = %823
  %840 = load i16, i16* %l_289, align 2, !tbaa !10
  %841 = sext i16 %840 to i32
  %842 = load i16*, i16** @g_242, align 8, !tbaa !5
  %843 = load i16, i16* %842, align 2, !tbaa !10
  %844 = load i8, i8* %3, align 1, !tbaa !9
  %845 = zext i8 %844 to i32
  %846 = bitcast %union.U0* %p_76 to i32*
  %847 = load i32, i32* %846, align 4, !tbaa !1
  %848 = icmp sge i32 %845, %847
  %849 = zext i1 %848 to i32
  %850 = load i32, i32* %l_315, align 4, !tbaa !1
  %851 = trunc i32 %850 to i8
  %852 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %851, i32 5)
  %853 = sext i8 %852 to i32
  %854 = bitcast %union.U0* %p_76 to i32*
  %855 = load i32, i32* %854, align 4, !tbaa !1
  %856 = or i32 %853, %855
  %857 = icmp ne i32 %856, 0
  br i1 %857, label %861, label %858

; <label>:858                                     ; preds = %839
  %859 = load i32, i32* @g_32, align 4, !tbaa !1
  %860 = icmp ne i32 %859, 0
  br label %861

; <label>:861                                     ; preds = %858, %839
  %862 = phi i1 [ true, %839 ], [ %860, %858 ]
  %863 = zext i1 %862 to i32
  %864 = trunc i32 %863 to i16
  %865 = load i16*, i16** @g_242, align 8, !tbaa !5
  %866 = load i16, i16* %865, align 2, !tbaa !10
  %867 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %864, i16 signext %866)
  %868 = sext i16 %867 to i32
  %869 = icmp slt i32 %841, %868
  br i1 %869, label %870, label %871

; <label>:870                                     ; preds = %861
  br label %871

; <label>:871                                     ; preds = %870, %861
  %872 = phi i1 [ false, %861 ], [ true, %870 ]
  %873 = zext i1 %872 to i32
  %874 = sext i32 %873 to i64
  %875 = icmp sge i64 %874, 243
  %876 = zext i1 %875 to i32
  %877 = load i8, i8* @g_286, align 1, !tbaa !9
  %878 = sext i8 %877 to i32
  %879 = or i32 %876, %878
  %880 = trunc i32 %879 to i16
  %881 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext -16611, i16 zeroext %880)
  %882 = zext i16 %881 to i32
  %883 = load i32, i32* %l_316, align 4, !tbaa !1
  %884 = xor i32 %883, %882
  store i32 %884, i32* %l_316, align 4, !tbaa !1
  %885 = load i8, i8* %3, align 1, !tbaa !9
  %886 = zext i8 %885 to i32
  %887 = and i32 %884, %886
  %888 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext -12515, i32 4)
  %889 = sext i16 %888 to i32
  %890 = load i32, i32* %l_368, align 4, !tbaa !1
  %891 = icmp sle i32 %889, %890
  %892 = zext i1 %891 to i32
  %893 = sext i32 %892 to i64
  %894 = icmp ne i64 %893, -1
  %895 = zext i1 %894 to i32
  %896 = trunc i32 %895 to i8
  %897 = load i8*, i8** %2, align 8, !tbaa !5
  %898 = load i8, i8* %897, align 1, !tbaa !9
  %899 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %896, i8 zeroext %898)
  %900 = zext i8 %899 to i32
  %901 = icmp ne i32 %900, 0
  br label %902

; <label>:902                                     ; preds = %871, %823
  %903 = phi i1 [ true, %823 ], [ %901, %871 ]
  %904 = zext i1 %903 to i32
  %905 = trunc i32 %904 to i8
  %906 = bitcast %union.U0* %p_76 to i32*
  %907 = load i32, i32* %906, align 4, !tbaa !1
  %908 = trunc i32 %907 to i8
  %909 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %905, i8 zeroext %908)
  %910 = zext i8 %909 to i64
  %911 = load i64*, i64** %l_369, align 8, !tbaa !5
  store i64 %910, i64* %911, align 8, !tbaa !7
  %912 = bitcast %union.U0* %p_76 to i32*
  %913 = load i32, i32* %912, align 4, !tbaa !1
  %914 = sext i32 %913 to i64
  %915 = call i64 @safe_sub_func_int64_t_s_s(i64 %910, i64 %914)
  %916 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), align 4, !tbaa !1
  %917 = sext i32 %916 to i64
  %918 = or i64 %917, %915
  %919 = trunc i64 %918 to i32
  store i32 %919, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), align 4, !tbaa !1
  %920 = load i32***, i32**** %l_350, align 8, !tbaa !5
  %921 = load i32**, i32*** %920, align 8, !tbaa !5
  %922 = load i32*, i32** %921, align 8, !tbaa !5
  %923 = load i32, i32* %922, align 4, !tbaa !1
  %924 = load i8, i8* %3, align 1, !tbaa !9
  %925 = load i8*, i8** %2, align 8, !tbaa !5
  %926 = load i8, i8* %925, align 1, !tbaa !9
  %927 = load i32***, i32**** %l_234, align 8, !tbaa !5
  %928 = load i32**, i32*** %927, align 8, !tbaa !5
  %929 = load i32*, i32** %928, align 8, !tbaa !5
  %930 = load i32, i32* %929, align 4, !tbaa !1
  %931 = load i32, i32* getelementptr inbounds ([3 x [10 x [4 x i32]]], [3 x [10 x [4 x i32]]]* @g_278, i32 0, i64 2, i64 8, i64 3), align 4, !tbaa !1
  %932 = load i32*, i32** %l_382, align 8, !tbaa !5
  %933 = load i32*, i32** %l_383, align 8, !tbaa !5
  %934 = icmp eq i32* %932, %933
  %935 = zext i1 %934 to i32
  %936 = and i32 %931, %935
  %937 = sext i32 %936 to i64
  %938 = load i32, i32* @g_146, align 4, !tbaa !1
  %939 = trunc i32 %938 to i16
  %940 = load i16*, i16** @g_242, align 8, !tbaa !5
  %941 = load i16, i16* %940, align 2, !tbaa !10
  %942 = zext i16 %941 to i32
  %943 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %939, i32 %942)
  %944 = load i32, i32* %l_390, align 4, !tbaa !1
  %945 = load i8, i8* @g_286, align 1, !tbaa !9
  %946 = sext i8 %945 to i16
  %947 = bitcast %union.U0* %p_76 to i32*
  %948 = load i32, i32* %947, align 4, !tbaa !1
  %949 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %946, i32 %948)
  %950 = trunc i16 %949 to i8
  store i8 %950, i8* @g_204, align 1, !tbaa !9
  %951 = sext i8 %950 to i32
  %952 = load i32, i32* %l_390, align 4, !tbaa !1
  %953 = icmp ne i32 %951, %952
  br i1 %953, label %958, label %954

; <label>:954                                     ; preds = %902
  %955 = load i8, i8* %3, align 1, !tbaa !9
  %956 = zext i8 %955 to i32
  %957 = icmp ne i32 %956, 0
  br label %958

; <label>:958                                     ; preds = %954, %902
  %959 = phi i1 [ true, %902 ], [ %957, %954 ]
  %960 = zext i1 %959 to i32
  %961 = load i32, i32* getelementptr inbounds ([3 x [10 x [4 x i32]]], [3 x [10 x [4 x i32]]]* @g_278, i32 0, i64 2, i64 8, i64 3), align 4, !tbaa !1
  %962 = and i32 %960, %961
  %963 = sext i32 %962 to i64
  %964 = load i32, i32* @g_32, align 4, !tbaa !1
  %965 = sext i32 %964 to i64
  %966 = call i64 @safe_div_func_uint64_t_u_u(i64 %963, i64 %965)
  %967 = call i64 @safe_add_func_int64_t_s_s(i64 %937, i64 %966)
  %968 = trunc i64 %967 to i32
  %969 = call i32 @safe_add_func_uint32_t_u_u(i32 %930, i32 %968)
  %970 = trunc i32 %969 to i8
  %971 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %926, i8 signext %970)
  %972 = sext i8 %971 to i64
  %973 = xor i64 -10, %972
  %974 = trunc i64 %973 to i16
  %975 = load i16*, i16** @g_242, align 8, !tbaa !5
  %976 = load i16, i16* %975, align 2, !tbaa !10
  %977 = zext i16 %976 to i32
  %978 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %974, i32 %977)
  %979 = zext i16 %978 to i32
  %980 = call i32 @safe_add_func_int32_t_s_s(i32 %923, i32 %979)
  %981 = icmp ne i32 %980, 0
  br i1 %981, label %986, label %982

; <label>:982                                     ; preds = %958
  %983 = bitcast %union.U0* %p_76 to i32*
  %984 = load i32, i32* %983, align 4, !tbaa !1
  %985 = icmp ne i32 %984, 0
  br label %986

; <label>:986                                     ; preds = %982, %958
  %987 = phi i1 [ true, %958 ], [ %985, %982 ]
  %988 = zext i1 %987 to i32
  %989 = sext i32 %988 to i64
  %990 = load i64, i64* @g_321, align 8, !tbaa !7
  %991 = xor i64 %989, %990
  %992 = load i32, i32* %l_315, align 4, !tbaa !1
  %993 = sext i32 %992 to i64
  %994 = xor i64 %993, %991
  %995 = trunc i64 %994 to i32
  store i32 %995, i32* %l_315, align 4, !tbaa !1
  %996 = bitcast %union.U0* %p_76 to i32*
  %997 = load i32, i32* %996, align 4, !tbaa !1
  %998 = load i8*, i8** %2, align 8, !tbaa !5
  %999 = load i8, i8* %998, align 1, !tbaa !9
  %1000 = sext i8 %999 to i32
  %1001 = load i32*, i32** %l_394, align 8, !tbaa !5
  store i32 1446574420, i32* %1001, align 4, !tbaa !1
  %1002 = load i32, i32* %l_315, align 4, !tbaa !1
  %1003 = or i32 1446574420, %1002
  %1004 = and i32 %1000, %1003
  %1005 = trunc i32 %1004 to i16
  %1006 = load i32, i32* @g_146, align 4, !tbaa !1
  %1007 = sext i32 %1006 to i64
  %1008 = icmp ne i64 %1007, 36814
  %1009 = zext i1 %1008 to i32
  %1010 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_94 to i16*), align 2, !tbaa !10
  %1011 = sext i16 %1010 to i32
  %1012 = icmp ne i32 %1009, %1011
  %1013 = zext i1 %1012 to i32
  %1014 = bitcast %union.U0* %p_76 to i32*
  %1015 = load i32, i32* %1014, align 4, !tbaa !1
  %1016 = sext i32 %1015 to i64
  %1017 = load i32, i32* @g_146, align 4, !tbaa !1
  %1018 = xor i32 %1017, -1
  %1019 = trunc i32 %1018 to i16
  %1020 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %1019, i16 signext 8)
  %1021 = trunc i16 %1020 to i8
  %1022 = load i8*, i8** %2, align 8, !tbaa !5
  %1023 = load i8, i8* %1022, align 1, !tbaa !9
  %1024 = sext i8 %1023 to i32
  %1025 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %1021, i32 %1024)
  %1026 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %1025, i32 2)
  %1027 = load i8*, i8** %2, align 8, !tbaa !5
  %1028 = load i8, i8* %1027, align 1, !tbaa !9
  %1029 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %1026, i8 zeroext %1028)
  %1030 = zext i8 %1029 to i32
  %1031 = load i32, i32* %l_357, align 4, !tbaa !1
  %1032 = icmp ugt i32 %1030, %1031
  %1033 = zext i1 %1032 to i32
  %1034 = sext i32 %1033 to i64
  %1035 = icmp sge i64 %1034, -1
  %1036 = zext i1 %1035 to i32
  %1037 = load i32***, i32**** %l_350, align 8, !tbaa !5
  %1038 = bitcast i32*** %1037 to i8*
  %1039 = icmp eq i8* null, %1038
  %1040 = zext i1 %1039 to i32
  %1041 = bitcast %union.U0* %p_76 to i32*
  %1042 = load i32, i32* %1041, align 4, !tbaa !1
  %1043 = xor i32 %1040, %1042
  %1044 = sext i32 %1043 to i64
  %1045 = call i64 @safe_mod_func_int64_t_s_s(i64 %1016, i64 %1044)
  %1046 = icmp ne i64 %1045, 0
  br i1 %1046, label %1047, label %1053

; <label>:1047                                    ; preds = %986
  %1048 = load i32***, i32**** %l_350, align 8, !tbaa !5
  %1049 = load i32**, i32*** %1048, align 8, !tbaa !5
  %1050 = load i32*, i32** %1049, align 8, !tbaa !5
  %1051 = load i32, i32* %1050, align 4, !tbaa !1
  %1052 = icmp ne i32 %1051, 0
  br label %1053

; <label>:1053                                    ; preds = %1047, %986
  %1054 = phi i1 [ false, %986 ], [ %1052, %1047 ]
  %1055 = zext i1 %1054 to i32
  %1056 = icmp eq i32 %1013, %1055
  %1057 = zext i1 %1056 to i32
  %1058 = sext i32 %1057 to i64
  %1059 = and i64 %1058, 3332117825873908071
  %1060 = load i16*, i16** @g_242, align 8, !tbaa !5
  %1061 = load i16, i16* %1060, align 2, !tbaa !10
  %1062 = zext i16 %1061 to i64
  %1063 = icmp sge i64 %1059, %1062
  %1064 = zext i1 %1063 to i32
  %1065 = trunc i32 %1064 to i16
  %1066 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1005, i16 zeroext %1065)
  %1067 = zext i16 %1066 to i32
  %1068 = or i32 %997, %1067
  %1069 = load i8, i8* @g_318, align 1, !tbaa !9
  %1070 = zext i8 %1069 to i32
  %1071 = xor i32 %1068, %1070
  %1072 = load i32***, i32**** %l_234, align 8, !tbaa !5
  %1073 = load i32**, i32*** %1072, align 8, !tbaa !5
  %1074 = load i32*, i32** %1073, align 8, !tbaa !5
  store i32 %1071, i32* %1074, align 4, !tbaa !1
  %1075 = bitcast i32** %l_394 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1075) #1
  %1076 = bitcast i8** %l_391 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1076) #1
  %1077 = bitcast i32** %l_383 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1077) #1
  %1078 = bitcast i64** %l_369 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1078) #1
  %1079 = bitcast i32* %l_357 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1079) #1
  br label %1080

; <label>:1080                                    ; preds = %1053
  %1081 = load i8, i8* @g_318, align 1, !tbaa !9
  %1082 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1081, i8 signext 2)
  store i8 %1082, i8* @g_318, align 1, !tbaa !9
  br label %819

; <label>:1083                                    ; preds = %819
  %1084 = bitcast i32** %l_382 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1084) #1
  %1085 = bitcast i32**** %l_350 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1085) #1
  br label %1086

; <label>:1086                                    ; preds = %1083
  %1087 = load i32*, i32** %l_209, align 8, !tbaa !5
  %1088 = load i32, i32* %1087, align 4, !tbaa !1
  %1089 = sext i32 %1088 to i64
  %1090 = and i64 %1089, 2585803720
  %1091 = trunc i64 %1090 to i32
  store i32 %1091, i32* %1087, align 4, !tbaa !1
  store i32 0, i32* %4
  br label %1092

; <label>:1092                                    ; preds = %1086, %794
  %1093 = bitcast i32* %l_390 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1093) #1
  %1094 = bitcast i32* %l_316 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1094) #1
  %1095 = bitcast i32* %l_315 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1095) #1
  %1096 = bitcast i32* %l_313 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1096) #1
  %1097 = bitcast i16* %l_289 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1097) #1
  %cleanup.dest.6 = load i32, i32* %4
  switch i32 %cleanup.dest.6, label %1258 [
    i32 0, label %1098
  ]

; <label>:1098                                    ; preds = %1092
  br label %1099

; <label>:1099                                    ; preds = %1098
  %1100 = bitcast %union.U0* %p_76 to i32*
  %1101 = load i32, i32* %1100, align 4, !tbaa !1
  %1102 = add nsw i32 %1101, -1
  store i32 %1102, i32* %1100, align 4, !tbaa !1
  br label %768

; <label>:1103                                    ; preds = %768
  store i32 -7, i32* %l_190, align 4, !tbaa !1
  br label %1104

; <label>:1104                                    ; preds = %1254, %1103
  %1105 = load i32, i32* %l_190, align 4, !tbaa !1
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1107, label %1257

; <label>:1107                                    ; preds = %1104
  %1108 = bitcast [8 x [7 x %union.U0*]]* %l_415 to i8*
  call void @llvm.lifetime.start(i64 448, i8* %1108) #1
  %1109 = getelementptr inbounds [8 x [7 x %union.U0*]], [8 x [7 x %union.U0*]]* %l_415, i64 0, i64 0
  %1110 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1109, i64 0, i64 0
  store %union.U0* %l_200, %union.U0** %1110, !tbaa !5
  %1111 = getelementptr inbounds %union.U0*, %union.U0** %1110, i64 1
  store %union.U0* null, %union.U0** %1111, !tbaa !5
  %1112 = getelementptr inbounds %union.U0*, %union.U0** %1111, i64 1
  store %union.U0* @g_46, %union.U0** %1112, !tbaa !5
  %1113 = getelementptr inbounds %union.U0*, %union.U0** %1112, i64 1
  store %union.U0* %l_200, %union.U0** %1113, !tbaa !5
  %1114 = getelementptr inbounds %union.U0*, %union.U0** %1113, i64 1
  store %union.U0* %l_200, %union.U0** %1114, !tbaa !5
  %1115 = getelementptr inbounds %union.U0*, %union.U0** %1114, i64 1
  store %union.U0* null, %union.U0** %1115, !tbaa !5
  %1116 = getelementptr inbounds %union.U0*, %union.U0** %1115, i64 1
  store %union.U0* null, %union.U0** %1116, !tbaa !5
  %1117 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1109, i64 1
  %1118 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1117, i64 0, i64 0
  store %union.U0* @g_46, %union.U0** %1118, !tbaa !5
  %1119 = getelementptr inbounds %union.U0*, %union.U0** %1118, i64 1
  store %union.U0* @g_46, %union.U0** %1119, !tbaa !5
  %1120 = getelementptr inbounds %union.U0*, %union.U0** %1119, i64 1
  store %union.U0* null, %union.U0** %1120, !tbaa !5
  %1121 = getelementptr inbounds %union.U0*, %union.U0** %1120, i64 1
  store %union.U0* %l_200, %union.U0** %1121, !tbaa !5
  %1122 = getelementptr inbounds %union.U0*, %union.U0** %1121, i64 1
  store %union.U0* null, %union.U0** %1122, !tbaa !5
  %1123 = getelementptr inbounds %union.U0*, %union.U0** %1122, i64 1
  store %union.U0* @g_46, %union.U0** %1123, !tbaa !5
  %1124 = getelementptr inbounds %union.U0*, %union.U0** %1123, i64 1
  store %union.U0* @g_46, %union.U0** %1124, !tbaa !5
  %1125 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1117, i64 1
  %1126 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1125, i64 0, i64 0
  store %union.U0* @g_46, %union.U0** %1126, !tbaa !5
  %1127 = getelementptr inbounds %union.U0*, %union.U0** %1126, i64 1
  store %union.U0* @g_46, %union.U0** %1127, !tbaa !5
  %1128 = getelementptr inbounds %union.U0*, %union.U0** %1127, i64 1
  store %union.U0* %l_200, %union.U0** %1128, !tbaa !5
  %1129 = getelementptr inbounds %union.U0*, %union.U0** %1128, i64 1
  store %union.U0* null, %union.U0** %1129, !tbaa !5
  %1130 = getelementptr inbounds %union.U0*, %union.U0** %1129, i64 1
  store %union.U0* @g_46, %union.U0** %1130, !tbaa !5
  %1131 = getelementptr inbounds %union.U0*, %union.U0** %1130, i64 1
  store %union.U0* @g_46, %union.U0** %1131, !tbaa !5
  %1132 = getelementptr inbounds %union.U0*, %union.U0** %1131, i64 1
  store %union.U0* null, %union.U0** %1132, !tbaa !5
  %1133 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1125, i64 1
  %1134 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1133, i64 0, i64 0
  store %union.U0* @g_46, %union.U0** %1134, !tbaa !5
  %1135 = getelementptr inbounds %union.U0*, %union.U0** %1134, i64 1
  store %union.U0* @g_46, %union.U0** %1135, !tbaa !5
  %1136 = getelementptr inbounds %union.U0*, %union.U0** %1135, i64 1
  store %union.U0* @g_46, %union.U0** %1136, !tbaa !5
  %1137 = getelementptr inbounds %union.U0*, %union.U0** %1136, i64 1
  store %union.U0* @g_46, %union.U0** %1137, !tbaa !5
  %1138 = getelementptr inbounds %union.U0*, %union.U0** %1137, i64 1
  store %union.U0* @g_46, %union.U0** %1138, !tbaa !5
  %1139 = getelementptr inbounds %union.U0*, %union.U0** %1138, i64 1
  store %union.U0* @g_46, %union.U0** %1139, !tbaa !5
  %1140 = getelementptr inbounds %union.U0*, %union.U0** %1139, i64 1
  store %union.U0* @g_46, %union.U0** %1140, !tbaa !5
  %1141 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1133, i64 1
  %1142 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1141, i64 0, i64 0
  store %union.U0* @g_46, %union.U0** %1142, !tbaa !5
  %1143 = getelementptr inbounds %union.U0*, %union.U0** %1142, i64 1
  store %union.U0* %l_200, %union.U0** %1143, !tbaa !5
  %1144 = getelementptr inbounds %union.U0*, %union.U0** %1143, i64 1
  store %union.U0* %l_200, %union.U0** %1144, !tbaa !5
  %1145 = getelementptr inbounds %union.U0*, %union.U0** %1144, i64 1
  store %union.U0* %l_200, %union.U0** %1145, !tbaa !5
  %1146 = getelementptr inbounds %union.U0*, %union.U0** %1145, i64 1
  store %union.U0* %l_200, %union.U0** %1146, !tbaa !5
  %1147 = getelementptr inbounds %union.U0*, %union.U0** %1146, i64 1
  store %union.U0* null, %union.U0** %1147, !tbaa !5
  %1148 = getelementptr inbounds %union.U0*, %union.U0** %1147, i64 1
  store %union.U0* @g_46, %union.U0** %1148, !tbaa !5
  %1149 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1141, i64 1
  %1150 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1149, i64 0, i64 0
  store %union.U0* %l_200, %union.U0** %1150, !tbaa !5
  %1151 = getelementptr inbounds %union.U0*, %union.U0** %1150, i64 1
  store %union.U0* @g_46, %union.U0** %1151, !tbaa !5
  %1152 = getelementptr inbounds %union.U0*, %union.U0** %1151, i64 1
  store %union.U0* null, %union.U0** %1152, !tbaa !5
  %1153 = getelementptr inbounds %union.U0*, %union.U0** %1152, i64 1
  store %union.U0* %l_200, %union.U0** %1153, !tbaa !5
  %1154 = getelementptr inbounds %union.U0*, %union.U0** %1153, i64 1
  store %union.U0* @g_46, %union.U0** %1154, !tbaa !5
  %1155 = getelementptr inbounds %union.U0*, %union.U0** %1154, i64 1
  store %union.U0* %l_200, %union.U0** %1155, !tbaa !5
  %1156 = getelementptr inbounds %union.U0*, %union.U0** %1155, i64 1
  store %union.U0* null, %union.U0** %1156, !tbaa !5
  %1157 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1149, i64 1
  %1158 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1157, i64 0, i64 0
  store %union.U0* @g_46, %union.U0** %1158, !tbaa !5
  %1159 = getelementptr inbounds %union.U0*, %union.U0** %1158, i64 1
  store %union.U0* @g_46, %union.U0** %1159, !tbaa !5
  %1160 = getelementptr inbounds %union.U0*, %union.U0** %1159, i64 1
  store %union.U0* %l_200, %union.U0** %1160, !tbaa !5
  %1161 = getelementptr inbounds %union.U0*, %union.U0** %1160, i64 1
  store %union.U0* %l_200, %union.U0** %1161, !tbaa !5
  %1162 = getelementptr inbounds %union.U0*, %union.U0** %1161, i64 1
  store %union.U0* @g_46, %union.U0** %1162, !tbaa !5
  %1163 = getelementptr inbounds %union.U0*, %union.U0** %1162, i64 1
  store %union.U0* null, %union.U0** %1163, !tbaa !5
  %1164 = getelementptr inbounds %union.U0*, %union.U0** %1163, i64 1
  store %union.U0* @g_46, %union.U0** %1164, !tbaa !5
  %1165 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1157, i64 1
  %1166 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1165, i64 0, i64 0
  store %union.U0* @g_46, %union.U0** %1166, !tbaa !5
  %1167 = getelementptr inbounds %union.U0*, %union.U0** %1166, i64 1
  store %union.U0* null, %union.U0** %1167, !tbaa !5
  %1168 = getelementptr inbounds %union.U0*, %union.U0** %1167, i64 1
  store %union.U0* %l_200, %union.U0** %1168, !tbaa !5
  %1169 = getelementptr inbounds %union.U0*, %union.U0** %1168, i64 1
  store %union.U0* @g_46, %union.U0** %1169, !tbaa !5
  %1170 = getelementptr inbounds %union.U0*, %union.U0** %1169, i64 1
  store %union.U0* @g_46, %union.U0** %1170, !tbaa !5
  %1171 = getelementptr inbounds %union.U0*, %union.U0** %1170, i64 1
  store %union.U0* @g_46, %union.U0** %1171, !tbaa !5
  %1172 = getelementptr inbounds %union.U0*, %union.U0** %1171, i64 1
  store %union.U0* @g_46, %union.U0** %1172, !tbaa !5
  %1173 = bitcast %union.U0* %l_416 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1173) #1
  %1174 = bitcast %union.U0* %l_416 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1174, i8* bitcast (%union.U0* @func_74.l_416 to i8*), i64 4, i32 4, i1 false)
  %1175 = bitcast [8 x i8*]* %l_417 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1175) #1
  %1176 = bitcast [8 x i8*]* %l_417 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1176, i8* bitcast ([8 x i8*]* @func_74.l_417 to i8*), i64 64, i32 16, i1 false)
  %1177 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1177) #1
  %1178 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1178) #1
  %1179 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1179) #1
  %1180 = load i64, i64* getelementptr inbounds ([4 x [3 x [1 x i64]]], [4 x [3 x [1 x i64]]]* @func_74.l_408, i32 0, i64 0, i64 0, i64 0), align 8, !tbaa !7
  %1181 = load i32**, i32*** %l_208, align 8, !tbaa !5
  store i32* null, i32** %1181, align 8, !tbaa !5
  %1182 = getelementptr inbounds [8 x [7 x %union.U0*]], [8 x [7 x %union.U0*]]* %l_415, i32 0, i64 4
  %1183 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %1182, i32 0, i64 1
  store %union.U0* @g_46, %union.U0** %1183, align 8, !tbaa !5
  %1184 = load i8, i8* @g_204, align 1, !tbaa !9
  %1185 = load %union.U0*, %union.U0** @g_310, align 8, !tbaa !5
  %1186 = bitcast %union.U0* %1185 to i8*
  %1187 = bitcast %union.U0* %l_416 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1186, i8* %1187, i64 4, i32 4, i1 false), !tbaa.struct !14
  %1188 = load %union.U0**, %union.U0*** @g_339, align 8, !tbaa !5
  %1189 = load %union.U0*, %union.U0** %1188, align 8, !tbaa !5
  %1190 = icmp eq %union.U0* @g_46, %1189
  %1191 = zext i1 %1190 to i32
  %1192 = trunc i32 %1191 to i8
  store i8 %1192, i8* @g_286, align 1, !tbaa !9
  %1193 = load %union.U0*, %union.U0** @g_310, align 8, !tbaa !5
  %1194 = bitcast %union.U0* %1193 to i8*
  %1195 = bitcast %union.U0* %p_76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1194, i8* %1195, i64 4, i32 4, i1 false), !tbaa.struct !14
  %1196 = load i8, i8* %3, align 1, !tbaa !9
  %1197 = zext i8 %1196 to i32
  %1198 = load i32*, i32** %l_188, align 8, !tbaa !5
  %1199 = icmp eq i32* %1198, null
  %1200 = zext i1 %1199 to i32
  %1201 = icmp eq i32 %1197, %1200
  %1202 = zext i1 %1201 to i32
  %1203 = sext i32 %1202 to i64
  %1204 = bitcast %union.U0* %p_76 to i32*
  %1205 = load i32, i32* %1204, align 4, !tbaa !1
  %1206 = sext i32 %1205 to i64
  %1207 = bitcast %union.U0* %l_416 to i32*
  %1208 = load i32, i32* %1207, align 4, !tbaa !1
  %1209 = sext i32 %1208 to i64
  %1210 = call i64 @safe_div_func_uint64_t_u_u(i64 %1206, i64 %1209)
  %1211 = or i64 %1203, %1210
  %1212 = load i64, i64* getelementptr inbounds ([4 x [3 x [1 x i64]]], [4 x [3 x [1 x i64]]]* @func_74.l_408, i32 0, i64 0, i64 0, i64 0), align 8, !tbaa !7
  %1213 = icmp eq i64 %1211, %1212
  %1214 = zext i1 %1213 to i32
  %1215 = trunc i32 %1214 to i8
  store i8 %1215, i8* @g_204, align 1, !tbaa !9
  %1216 = load i8, i8* %3, align 1, !tbaa !9
  %1217 = zext i8 %1216 to i32
  %1218 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %1215, i32 %1217)
  %1219 = sext i8 %1218 to i32
  %1220 = load i64, i64* @g_130, align 8, !tbaa !7
  %1221 = trunc i64 %1220 to i32
  %1222 = call i32 @safe_div_func_int32_t_s_s(i32 %1219, i32 %1221)
  %1223 = bitcast %union.U0* %p_76 to i32*
  %1224 = load i32, i32* %1223, align 4, !tbaa !1
  %1225 = icmp sle i32 %1222, %1224
  %1226 = zext i1 %1225 to i32
  %1227 = sext i32 %1226 to i64
  %1228 = xor i64 %1227, 6
  %1229 = load i8, i8* %3, align 1, !tbaa !9
  %1230 = zext i8 %1229 to i32
  %1231 = call i32 @safe_sub_func_uint32_t_u_u(i32 -71964616, i32 %1230)
  %1232 = trunc i32 %1231 to i16
  %1233 = bitcast %union.U0* %p_76 to i32*
  %1234 = load i32, i32* %1233, align 4, !tbaa !1
  %1235 = trunc i32 %1234 to i16
  %1236 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %1232, i16 signext %1235)
  %1237 = sext i16 %1236 to i32
  %1238 = bitcast %union.U0* %p_76 to i32*
  %1239 = load i32, i32* %1238, align 4, !tbaa !1
  %1240 = xor i32 %1237, %1239
  %1241 = trunc i32 %1240 to i8
  %1242 = load i8*, i8** @g_34, align 8, !tbaa !5
  %1243 = load i8, i8* %1242, align 1, !tbaa !9
  %1244 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1241, i8 signext %1243)
  %1245 = sext i8 %1244 to i32
  %1246 = load i32, i32* @g_52, align 4, !tbaa !1
  %1247 = or i32 %1246, %1245
  store i32 %1247, i32* @g_52, align 4, !tbaa !1
  %1248 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1248) #1
  %1249 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1249) #1
  %1250 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1250) #1
  %1251 = bitcast [8 x i8*]* %l_417 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1251) #1
  %1252 = bitcast %union.U0* %l_416 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1252) #1
  %1253 = bitcast [8 x [7 x %union.U0*]]* %l_415 to i8*
  call void @llvm.lifetime.end(i64 448, i8* %1253) #1
  br label %1254

; <label>:1254                                    ; preds = %1107
  %1255 = load i32, i32* %l_190, align 4, !tbaa !1
  %1256 = add nsw i32 %1255, 1
  store i32 %1256, i32* %l_190, align 4, !tbaa !1
  br label %1104

; <label>:1257                                    ; preds = %1104
  store i32 0, i32* %4
  br label %1258

; <label>:1258                                    ; preds = %1257, %1092, %755
  %1259 = bitcast i32**** %l_234 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1259) #1
  %1260 = bitcast %union.U0* %l_200 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1260) #1
  %1261 = bitcast i32** %l_188 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1261) #1
  %1262 = bitcast i16* %l_170 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1262) #1
  %cleanup.dest.9 = load i32, i32* %4
  switch i32 %cleanup.dest.9, label %1619 [
    i32 0, label %1263
  ]

; <label>:1263                                    ; preds = %1258
  br label %1515

; <label>:1264                                    ; preds = %150
  %1265 = bitcast i32* %l_431 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1265) #1
  store i32 0, i32* %l_431, align 4, !tbaa !1
  %1266 = bitcast i32* %l_434 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1266) #1
  store i32 -2051707579, i32* %l_434, align 4, !tbaa !1
  %1267 = bitcast %union.U2** %l_470 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1267) #1
  store %union.U2* bitcast ({ i32, [4 x i8] }* @g_471 to %union.U2*), %union.U2** %l_470, align 8, !tbaa !5
  %1268 = bitcast i32**** %l_513 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1268) #1
  store i32*** null, i32**** %l_513, align 8, !tbaa !5
  %1269 = bitcast i32** %l_514 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1269) #1
  store i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_94, i32 0, i32 0), i32** %l_514, align 8, !tbaa !5
  %1270 = bitcast i16** %l_525 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1270) #1
  store i16* @g_437, i16** %l_525, align 8, !tbaa !5
  %1271 = bitcast i16*** %l_524 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1271) #1
  store i16** %l_525, i16*** %l_524, align 8, !tbaa !5
  %1272 = bitcast i64** %l_536 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1272) #1
  store i64* %l_508, i64** %l_536, align 8, !tbaa !5
  %1273 = bitcast i16* %l_537 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1273) #1
  store i16 -11675, i16* %l_537, align 2, !tbaa !10
  %1274 = bitcast [10 x [5 x i32*]]* %l_538 to i8*
  call void @llvm.lifetime.start(i64 400, i8* %1274) #1
  %1275 = bitcast i32* %l_539 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1275) #1
  store i32 -415437057, i32* %l_539, align 4, !tbaa !1
  %1276 = bitcast i8** %l_540 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1276) #1
  store i8* @g_286, i8** %l_540, align 8, !tbaa !5
  %1277 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1277) #1
  %1278 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1278) #1
  store i32 0, i32* %i10, align 4, !tbaa !1
  br label %1279

; <label>:1279                                    ; preds = %1297, %1264
  %1280 = load i32, i32* %i10, align 4, !tbaa !1
  %1281 = icmp slt i32 %1280, 10
  br i1 %1281, label %1282, label %1300

; <label>:1282                                    ; preds = %1279
  store i32 0, i32* %j11, align 4, !tbaa !1
  br label %1283

; <label>:1283                                    ; preds = %1293, %1282
  %1284 = load i32, i32* %j11, align 4, !tbaa !1
  %1285 = icmp slt i32 %1284, 5
  br i1 %1285, label %1286, label %1296

; <label>:1286                                    ; preds = %1283
  %1287 = load i32, i32* %j11, align 4, !tbaa !1
  %1288 = sext i32 %1287 to i64
  %1289 = load i32, i32* %i10, align 4, !tbaa !1
  %1290 = sext i32 %1289 to i64
  %1291 = getelementptr inbounds [10 x [5 x i32*]], [10 x [5 x i32*]]* %l_538, i32 0, i64 %1290
  %1292 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1291, i32 0, i64 %1288
  store i32* %l_431, i32** %1292, align 8, !tbaa !5
  br label %1293

; <label>:1293                                    ; preds = %1286
  %1294 = load i32, i32* %j11, align 4, !tbaa !1
  %1295 = add nsw i32 %1294, 1
  store i32 %1295, i32* %j11, align 4, !tbaa !1
  br label %1283

; <label>:1296                                    ; preds = %1283
  br label %1297

; <label>:1297                                    ; preds = %1296
  %1298 = load i32, i32* %i10, align 4, !tbaa !1
  %1299 = add nsw i32 %1298, 1
  store i32 %1299, i32* %i10, align 4, !tbaa !1
  br label %1279

; <label>:1300                                    ; preds = %1279
  store i32 0, i32* @g_146, align 4, !tbaa !1
  br label %1301

; <label>:1301                                    ; preds = %1333, %1300
  %1302 = load i32, i32* @g_146, align 4, !tbaa !1
  %1303 = icmp sle i32 %1302, 12
  br i1 %1303, label %1304, label %1338

; <label>:1304                                    ; preds = %1301
  %1305 = bitcast i32* %l_426 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1305) #1
  store i32 0, i32* %l_426, align 4, !tbaa !1
  %1306 = bitcast i32* %l_428 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1306) #1
  store i32 1750330890, i32* %l_428, align 4, !tbaa !1
  %1307 = bitcast i32* %l_429 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1307) #1
  store i32 0, i32* %l_429, align 4, !tbaa !1
  %1308 = bitcast i32* %l_432 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1308) #1
  store i32 1598217931, i32* %l_432, align 4, !tbaa !1
  %1309 = bitcast [2 x i32]* %l_436 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1309) #1
  %1310 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1310) #1
  store i32 0, i32* %i12, align 4, !tbaa !1
  br label %1311

; <label>:1311                                    ; preds = %1318, %1304
  %1312 = load i32, i32* %i12, align 4, !tbaa !1
  %1313 = icmp slt i32 %1312, 2
  br i1 %1313, label %1314, label %1321

; <label>:1314                                    ; preds = %1311
  %1315 = load i32, i32* %i12, align 4, !tbaa !1
  %1316 = sext i32 %1315 to i64
  %1317 = getelementptr inbounds [2 x i32], [2 x i32]* %l_436, i32 0, i64 %1316
  store i32 -1, i32* %1317, align 4, !tbaa !1
  br label %1318

; <label>:1318                                    ; preds = %1314
  %1319 = load i32, i32* %i12, align 4, !tbaa !1
  %1320 = add nsw i32 %1319, 1
  store i32 %1320, i32* %i12, align 4, !tbaa !1
  br label %1311

; <label>:1321                                    ; preds = %1311
  %1322 = load i32, i32* @g_438, align 4, !tbaa !1
  %1323 = add i32 %1322, -1
  store i32 %1323, i32* @g_438, align 4, !tbaa !1
  %1324 = load i32, i32* %l_431, align 4, !tbaa !1
  %1325 = load i32**, i32*** %l_208, align 8, !tbaa !5
  %1326 = load i32*, i32** %1325, align 8, !tbaa !5
  store i32 %1324, i32* %1326, align 4, !tbaa !1
  %1327 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1327) #1
  %1328 = bitcast [2 x i32]* %l_436 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1328) #1
  %1329 = bitcast i32* %l_432 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1329) #1
  %1330 = bitcast i32* %l_429 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1330) #1
  %1331 = bitcast i32* %l_428 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1331) #1
  %1332 = bitcast i32* %l_426 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1332) #1
  br label %1333

; <label>:1333                                    ; preds = %1321
  %1334 = load i32, i32* @g_146, align 4, !tbaa !1
  %1335 = sext i32 %1334 to i64
  %1336 = call i64 @safe_add_func_uint64_t_u_u(i64 %1335, i64 6)
  %1337 = trunc i64 %1336 to i32
  store i32 %1337, i32* @g_146, align 4, !tbaa !1
  br label %1301

; <label>:1338                                    ; preds = %1301
  store i64 8, i64* @g_152, align 8, !tbaa !7
  br label %1339

; <label>:1339                                    ; preds = %1403, %1338
  %1340 = load i64, i64* @g_152, align 8, !tbaa !7
  %1341 = icmp sge i64 %1340, 0
  br i1 %1341, label %1342, label %1406

; <label>:1342                                    ; preds = %1339
  %1343 = bitcast i16* %l_441 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1343) #1
  store i16 2, i16* %l_441, align 2, !tbaa !10
  %1344 = bitcast i32* %l_448 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1344) #1
  store i32 1, i32* %l_448, align 4, !tbaa !1
  %1345 = bitcast i32*** %l_512 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1345) #1
  store i32** getelementptr inbounds ([8 x [5 x i32*]], [8 x [5 x i32*]]* @func_74.l_93, i32 0, i64 0, i64 0), i32*** %l_512, align 8, !tbaa !5
  %1346 = bitcast i32** %l_515 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1346) #1
  store i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_94, i32 0, i32 0), i32** %l_515, align 8, !tbaa !5
  %1347 = load i16, i16* %l_441, align 2, !tbaa !10
  %1348 = add i16 %1347, 1
  store i16 %1348, i16* %l_441, align 2, !tbaa !10
  store i64 0, i64* %l_233, align 8, !tbaa !7
  br label %1349

; <label>:1349                                    ; preds = %1360, %1342
  %1350 = load i64, i64* %l_233, align 8, !tbaa !7
  %1351 = icmp ule i64 %1350, 8
  br i1 %1351, label %1352, label %1363

; <label>:1352                                    ; preds = %1349
  %1353 = bitcast i32* %l_449 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1353) #1
  store i32 -116940701, i32* %l_449, align 4, !tbaa !1
  %1354 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1354) #1
  %1355 = load %union.U2*, %union.U2** %l_444, align 8, !tbaa !5
  %1356 = load i64, i64* @g_152, align 8, !tbaa !7
  %1357 = getelementptr inbounds [9 x %union.U2*], [9 x %union.U2*]* @g_270, i32 0, i64 %1356
  store %union.U2* %1355, %union.U2** %1357, align 8, !tbaa !5
  %1358 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1358) #1
  %1359 = bitcast i32* %l_449 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1359) #1
  br label %1360

; <label>:1360                                    ; preds = %1352
  %1361 = load i64, i64* %l_233, align 8, !tbaa !7
  %1362 = add i64 %1361, 1
  store i64 %1362, i64* %l_233, align 8, !tbaa !7
  br label %1349

; <label>:1363                                    ; preds = %1349
  %1364 = load i16**, i16*** @g_482, align 8, !tbaa !5
  %1365 = load i16*, i16** %1364, align 8, !tbaa !5
  %1366 = load i16, i16* %1365, align 2, !tbaa !10
  %1367 = zext i16 %1366 to i32
  %1368 = load i32, i32* %l_448, align 4, !tbaa !1
  %1369 = bitcast %union.U0* %p_76 to i32*
  %1370 = load i32, i32* %1369, align 4, !tbaa !1
  %1371 = xor i32 %1368, %1370
  %1372 = trunc i32 %1371 to i16
  %1373 = load i32**, i32*** %l_512, align 8, !tbaa !5
  %1374 = icmp eq i32** null, %1373
  %1375 = zext i1 %1374 to i32
  %1376 = load i32***, i32**** %l_513, align 8, !tbaa !5
  %1377 = icmp ne i32*** null, %1376
  %1378 = zext i1 %1377 to i32
  %1379 = and i32 %1375, %1378
  %1380 = trunc i32 %1379 to i16
  %1381 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %1372, i16 signext %1380)
  %1382 = load i32*, i32** %l_514, align 8, !tbaa !5
  %1383 = load i32*, i32** %l_515, align 8, !tbaa !5
  %1384 = icmp eq i32* %1382, %1383
  %1385 = zext i1 %1384 to i32
  %1386 = icmp sgt i32 %1367, %1385
  %1387 = zext i1 %1386 to i32
  %1388 = sext i32 %1387 to i64
  %1389 = icmp ne i64 %1388, 1
  %1390 = zext i1 %1389 to i32
  %1391 = sext i32 %1390 to i64
  %1392 = call i64 @safe_unary_minus_func_int64_t_s(i64 %1391)
  %1393 = load i32**, i32*** %l_208, align 8, !tbaa !5
  %1394 = load i32*, i32** %1393, align 8, !tbaa !5
  %1395 = load i32, i32* %1394, align 4, !tbaa !1
  %1396 = sext i32 %1395 to i64
  %1397 = and i64 %1396, %1392
  %1398 = trunc i64 %1397 to i32
  store i32 %1398, i32* %1394, align 4, !tbaa !1
  %1399 = bitcast i32** %l_515 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1399) #1
  %1400 = bitcast i32*** %l_512 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1400) #1
  %1401 = bitcast i32* %l_448 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1401) #1
  %1402 = bitcast i16* %l_441 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1402) #1
  br label %1403

; <label>:1403                                    ; preds = %1363
  %1404 = load i64, i64* @g_152, align 8, !tbaa !7
  %1405 = sub nsw i64 %1404, 1
  store i64 %1405, i64* @g_152, align 8, !tbaa !7
  br label %1339

; <label>:1406                                    ; preds = %1339
  %1407 = bitcast %union.U0* %p_76 to i32*
  %1408 = load i32, i32* %1407, align 4, !tbaa !1
  %1409 = sext i32 %1408 to i64
  %1410 = icmp eq i64 30080, %1409
  %1411 = zext i1 %1410 to i32
  %1412 = trunc i32 %1411 to i16
  %1413 = load i16**, i16*** %l_524, align 8, !tbaa !5
  store i16* @g_437, i16** %1413, align 8, !tbaa !5
  br i1 false, label %1414, label %1463

; <label>:1414                                    ; preds = %1406
  %1415 = load i64*, i64** %l_536, align 8, !tbaa !5
  %1416 = load i8, i8* %3, align 1, !tbaa !9
  %1417 = load i64*, i64** %l_536, align 8, !tbaa !5
  %1418 = icmp ne i64* %1415, %1417
  %1419 = zext i1 %1418 to i32
  %1420 = sext i32 %1419 to i64
  %1421 = load i8*, i8** @g_454, align 8, !tbaa !5
  %1422 = load i8, i8* %1421, align 1, !tbaa !9
  %1423 = zext i8 %1422 to i32
  %1424 = load i8*, i8** @g_454, align 8, !tbaa !5
  %1425 = load i8, i8* %1424, align 1, !tbaa !9
  %1426 = zext i8 %1425 to i32
  %1427 = xor i32 %1423, %1426
  %1428 = load i16, i16* %l_537, align 2, !tbaa !10
  %1429 = zext i16 %1428 to i32
  %1430 = icmp sgt i32 %1427, %1429
  br i1 %1430, label %1431, label %1432

; <label>:1431                                    ; preds = %1414
  br label %1432

; <label>:1432                                    ; preds = %1431, %1414
  %1433 = phi i1 [ false, %1414 ], [ true, %1431 ]
  %1434 = zext i1 %1433 to i32
  %1435 = sext i32 %1434 to i64
  %1436 = call i64 @safe_add_func_uint64_t_u_u(i64 %1420, i64 %1435)
  %1437 = load i16**, i16*** @g_241, align 8, !tbaa !5
  %1438 = load i16*, i16** %1437, align 8, !tbaa !5
  %1439 = load i16, i16* %1438, align 2, !tbaa !10
  %1440 = zext i16 %1439 to i32
  %1441 = load i32, i32* %l_434, align 4, !tbaa !1
  %1442 = icmp ne i32 %1440, %1441
  %1443 = zext i1 %1442 to i32
  %1444 = sext i32 %1443 to i64
  %1445 = call i64 @safe_mod_func_uint64_t_u_u(i64 %1444, i64 -5778713931494863321)
  %1446 = load i64*, i64** @g_222, align 8, !tbaa !5
  %1447 = load i64, i64* %1446, align 8, !tbaa !7
  %1448 = call i64 @safe_add_func_uint64_t_u_u(i64 %1445, i64 %1447)
  %1449 = bitcast %union.U0* %p_76 to i32*
  %1450 = load i32, i32* %1449, align 4, !tbaa !1
  %1451 = sext i32 %1450 to i64
  %1452 = call i64 @safe_div_func_int64_t_s_s(i64 %1448, i64 %1451)
  %1453 = bitcast %union.U0* %p_76 to i32*
  %1454 = load i32, i32* %1453, align 4, !tbaa !1
  %1455 = sext i32 %1454 to i64
  %1456 = xor i64 %1452, %1455
  %1457 = load i8, i8* %3, align 1, !tbaa !9
  %1458 = load i8*, i8** %2, align 8, !tbaa !5
  %1459 = load i8, i8* %1458, align 1, !tbaa !9
  %1460 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %1457, i8 zeroext %1459)
  %1461 = zext i8 %1460 to i32
  %1462 = icmp ne i32 %1461, 0
  br label %1463

; <label>:1463                                    ; preds = %1432, %1406
  %1464 = phi i1 [ false, %1406 ], [ %1462, %1432 ]
  %1465 = zext i1 %1464 to i32
  %1466 = call i32 @safe_div_func_int32_t_s_s(i32 1, i32 %1465)
  %1467 = load i16**, i16*** @g_478, align 8, !tbaa !5
  %1468 = load i16*, i16** %1467, align 8, !tbaa !5
  %1469 = load i16, i16* %1468, align 2, !tbaa !10
  %1470 = zext i16 %1469 to i32
  %1471 = or i32 %1466, %1470
  %1472 = load i8*, i8** @g_454, align 8, !tbaa !5
  %1473 = load i8, i8* %1472, align 1, !tbaa !9
  %1474 = zext i8 %1473 to i32
  %1475 = icmp sgt i32 %1471, %1474
  %1476 = zext i1 %1475 to i32
  %1477 = load i32, i32* %l_539, align 4, !tbaa !1
  %1478 = xor i32 %1477, %1476
  store i32 %1478, i32* %l_539, align 4, !tbaa !1
  %1479 = load i8*, i8** %2, align 8, !tbaa !5
  %1480 = load i8, i8* %1479, align 1, !tbaa !9
  %1481 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1480, i8 signext -125)
  %1482 = load i8*, i8** %2, align 8, !tbaa !5
  %1483 = load i8, i8* %1482, align 1, !tbaa !9
  %1484 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1481, i8 signext %1483)
  %1485 = load i8*, i8** %l_540, align 8, !tbaa !5
  store i8 %1484, i8* %1485, align 1, !tbaa !9
  %1486 = load i32**, i32*** %l_208, align 8, !tbaa !5
  %1487 = load i32*, i32** %1486, align 8, !tbaa !5
  %1488 = load i32, i32* %1487, align 4, !tbaa !1
  %1489 = load i8, i8* %3, align 1, !tbaa !9
  %1490 = zext i8 %1489 to i32
  %1491 = and i32 %1488, %1490
  %1492 = trunc i32 %1491 to i16
  %1493 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %1412, i16 zeroext %1492)
  %1494 = zext i16 %1493 to i32
  %1495 = bitcast %union.U0* %p_76 to i32*
  %1496 = load i32, i32* %1495, align 4, !tbaa !1
  %1497 = icmp eq i32 %1494, %1496
  %1498 = zext i1 %1497 to i32
  %1499 = load i32**, i32*** %l_208, align 8, !tbaa !5
  %1500 = load i32*, i32** %1499, align 8, !tbaa !5
  store i32 %1498, i32* %1500, align 4, !tbaa !1
  %1501 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1501) #1
  %1502 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1502) #1
  %1503 = bitcast i8** %l_540 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1503) #1
  %1504 = bitcast i32* %l_539 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1504) #1
  %1505 = bitcast [10 x [5 x i32*]]* %l_538 to i8*
  call void @llvm.lifetime.end(i64 400, i8* %1505) #1
  %1506 = bitcast i16* %l_537 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1506) #1
  %1507 = bitcast i64** %l_536 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1507) #1
  %1508 = bitcast i16*** %l_524 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1508) #1
  %1509 = bitcast i16** %l_525 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1509) #1
  %1510 = bitcast i32** %l_514 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1510) #1
  %1511 = bitcast i32**** %l_513 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1511) #1
  %1512 = bitcast %union.U2** %l_470 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1512) #1
  %1513 = bitcast i32* %l_434 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1513) #1
  %1514 = bitcast i32* %l_431 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1514) #1
  br label %1515

; <label>:1515                                    ; preds = %1463, %1263
  store i32 0, i32* @g_438, align 4, !tbaa !1
  br label %1516

; <label>:1516                                    ; preds = %1548, %1515
  %1517 = load i32, i32* @g_438, align 4, !tbaa !1
  %1518 = icmp ult i32 %1517, 55
  br i1 %1518, label %1519, label %1553

; <label>:1519                                    ; preds = %1516
  %1520 = bitcast i64* %l_555 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1520) #1
  store i64 4413692833593024454, i64* %l_555, align 8, !tbaa !7
  %1521 = bitcast [4 x [10 x i8]]* %l_557 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1521) #1
  %1522 = bitcast [4 x [10 x i8]]* %l_557 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1522, i8* getelementptr inbounds ([4 x [10 x i8]], [4 x [10 x i8]]* @func_74.l_557, i32 0, i32 0, i32 0), i64 40, i32 16, i1 false)
  %1523 = bitcast i32* %l_563 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1523) #1
  store i32 -1, i32* %l_563, align 4, !tbaa !1
  %1524 = bitcast i32** %l_577 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1524) #1
  store i32* %l_344, i32** %l_577, align 8, !tbaa !5
  %1525 = bitcast i16* %l_588 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1525) #1
  store i16 1, i16* %l_588, align 2, !tbaa !10
  %1526 = bitcast i64* %l_603 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1526) #1
  store i64 -1, i64* %l_603, align 8, !tbaa !7
  %1527 = bitcast i32* %l_638 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1527) #1
  store i32 236795676, i32* %l_638, align 4, !tbaa !1
  %1528 = bitcast %union.U0*** %l_649 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1528) #1
  store %union.U0** @g_310, %union.U0*** %l_649, align 8, !tbaa !5
  %1529 = bitcast i32* %l_684 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1529) #1
  store i32 -5, i32* %l_684, align 4, !tbaa !1
  %1530 = bitcast i16* %l_734 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1530) #1
  store i16 -7286, i16* %l_734, align 2, !tbaa !10
  %1531 = bitcast [9 x i32]* %l_744 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1531) #1
  %1532 = bitcast [9 x i32]* %l_744 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1532, i8* bitcast ([9 x i32]* @func_74.l_744 to i8*), i64 36, i32 16, i1 false)
  %1533 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1533) #1
  %1534 = bitcast i32* %j15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1534) #1
  %1535 = bitcast i32* %j15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1535) #1
  %1536 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1536) #1
  %1537 = bitcast [9 x i32]* %l_744 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %1537) #1
  %1538 = bitcast i16* %l_734 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1538) #1
  %1539 = bitcast i32* %l_684 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1539) #1
  %1540 = bitcast %union.U0*** %l_649 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1540) #1
  %1541 = bitcast i32* %l_638 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1541) #1
  %1542 = bitcast i64* %l_603 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1542) #1
  %1543 = bitcast i16* %l_588 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1543) #1
  %1544 = bitcast i32** %l_577 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1544) #1
  %1545 = bitcast i32* %l_563 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1545) #1
  %1546 = bitcast [4 x [10 x i8]]* %l_557 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1546) #1
  %1547 = bitcast i64* %l_555 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1547) #1
  br label %1548

; <label>:1548                                    ; preds = %1519
  %1549 = load i32, i32* @g_438, align 4, !tbaa !1
  %1550 = zext i32 %1549 to i64
  %1551 = call i64 @safe_add_func_int64_t_s_s(i64 %1550, i64 8)
  %1552 = trunc i64 %1551 to i32
  store i32 %1552, i32* @g_438, align 4, !tbaa !1
  br label %1516

; <label>:1553                                    ; preds = %1516
  %1554 = bitcast %union.U0* %p_76 to i32*
  %1555 = load i32, i32* %1554, align 4, !tbaa !1
  %1556 = load %union.U0*, %union.U0** @g_310, align 8, !tbaa !5
  %1557 = load i8, i8* %3, align 1, !tbaa !9
  %1558 = zext i8 %1557 to i64
  %1559 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_95, i32 0, i64 3
  %1560 = load i16*, i16** %1559, align 8, !tbaa !5
  %1561 = icmp eq i16* null, %1560
  %1562 = zext i1 %1561 to i32
  %1563 = trunc i32 %1562 to i16
  %1564 = load i32*, i32** %l_756, align 8, !tbaa !5
  store i32 -1, i32* %1564, align 4, !tbaa !1
  br i1 true, label %1565, label %1569

; <label>:1565                                    ; preds = %1553
  %1566 = bitcast %union.U0* %p_76 to i32*
  %1567 = load i32, i32* %1566, align 4, !tbaa !1
  %1568 = icmp ne i32 %1567, 0
  br i1 %1568, label %1569, label %1573

; <label>:1569                                    ; preds = %1565, %1553
  %1570 = load i8, i8* %3, align 1, !tbaa !9
  %1571 = zext i8 %1570 to i32
  %1572 = icmp ne i32 %1571, 0
  br label %1573

; <label>:1573                                    ; preds = %1569, %1565
  %1574 = phi i1 [ true, %1565 ], [ %1572, %1569 ]
  %1575 = zext i1 %1574 to i32
  %1576 = load i8, i8* %3, align 1, !tbaa !9
  %1577 = zext i8 %1576 to i32
  %1578 = icmp ne i32 %1577, 0
  %1579 = zext i1 %1578 to i32
  %1580 = trunc i32 %1579 to i16
  %1581 = load i16*, i16** %l_758, align 8, !tbaa !5
  store i16 %1580, i16* %1581, align 2, !tbaa !10
  %1582 = sext i16 %1580 to i32
  %1583 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %1563, i32 %1582)
  %1584 = zext i16 %1583 to i64
  %1585 = icmp eq i64 %1584, 29551
  %1586 = zext i1 %1585 to i32
  %1587 = load i8, i8* %l_759, align 1, !tbaa !9
  %1588 = sext i8 %1587 to i32
  %1589 = icmp ult i32 %1588, 0
  %1590 = zext i1 %1589 to i32
  %1591 = call i32 @safe_unary_minus_func_int32_t_s(i32 %1590)
  %1592 = load i8, i8* %3, align 1, !tbaa !9
  %1593 = zext i8 %1592 to i32
  %1594 = or i32 %1591, %1593
  %1595 = load i32, i32* @g_39, align 4, !tbaa !1
  %1596 = and i32 %1594, %1595
  %1597 = sext i32 %1596 to i64
  %1598 = getelementptr %union.U0, %union.U0* %1556, i32 0, i32 0
  %1599 = load i32, i32* %1598, align 4
  %1600 = call i8* @func_10(i32 %1555, i32 %1599, i64 %1558, i64 %1597, i16* %l_334)
  %1601 = getelementptr %union.U1, %union.U1* %6, i32 0, i32 0
  store i8* %1600, i8** %1601, align 8
  %1602 = load i32*, i32** @g_699, align 8, !tbaa !5
  %1603 = load i32, i32* %1602, align 4, !tbaa !1
  %1604 = call i32* @func_40(i32 %1603)
  %1605 = load i32**, i32*** %l_208, align 8, !tbaa !5
  store i32* %1604, i32** %1605, align 8, !tbaa !5
  store i32 0, i32* @g_459, align 4, !tbaa !1
  br label %1606

; <label>:1606                                    ; preds = %1612, %1573
  %1607 = load i32, i32* @g_459, align 4, !tbaa !1
  %1608 = icmp sge i32 %1607, 22
  br i1 %1608, label %1609, label %1615

; <label>:1609                                    ; preds = %1606
  %1610 = load i32*, i32** @g_699, align 8, !tbaa !5
  %1611 = load i32, i32* %1610, align 4, !tbaa !1
  store i32 %1611, i32* %1
  store i32 1, i32* %4
  br label %1619
                                                  ; No predecessors!
  %1613 = load i32, i32* @g_459, align 4, !tbaa !1
  %1614 = add nsw i32 %1613, 1
  store i32 %1614, i32* @g_459, align 4, !tbaa !1
  br label %1606

; <label>:1615                                    ; preds = %1606
  %1616 = load i32**, i32*** %l_208, align 8, !tbaa !5
  %1617 = load i32*, i32** %1616, align 8, !tbaa !5
  %1618 = load i32, i32* %1617, align 4, !tbaa !1
  store i32 %1618, i32* %1
  store i32 1, i32* %4
  br label %1619

; <label>:1619                                    ; preds = %1615, %1609, %1258
  %1620 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1620) #1
  %1621 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1621) #1
  %1622 = bitcast i32* %l_760 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1622) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_759) #1
  %1623 = bitcast i16** %l_758 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1623) #1
  %1624 = bitcast i32** %l_756 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1624) #1
  %1625 = bitcast i64* %l_746 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1625) #1
  %1626 = bitcast i32* %l_745 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1626) #1
  %1627 = bitcast i32* %l_698 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1627) #1
  %1628 = bitcast [8 x i8]* %l_556 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1628) #1
  %1629 = bitcast [5 x i64]* %l_554 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1629) #1
  %1630 = bitcast i64* %l_508 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1630) #1
  %1631 = bitcast i32* %l_507 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1631) #1
  %1632 = bitcast [9 x [10 x %union.U0***]]* %l_487 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %1632) #1
  %1633 = bitcast %union.U0*** %l_488 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1633) #1
  %1634 = bitcast %union.U2** %l_444 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1634) #1
  %1635 = bitcast i32* %l_368 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1635) #1
  %1636 = bitcast i32* %l_344 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1636) #1
  %1637 = bitcast i16* %l_334 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1637) #1
  %1638 = bitcast i64* %l_285 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1638) #1
  %1639 = bitcast i64* %l_233 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1639) #1
  %1640 = bitcast i32*** %l_208 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1640) #1
  %1641 = bitcast i32** %l_209 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1641) #1
  %1642 = bitcast i32* %l_190 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1642) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_96) #1
  %1643 = bitcast [8 x i16*]* %l_95 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1643) #1
  %1644 = bitcast i32*** %l_92 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1644) #1
  %1645 = bitcast i64* %l_80 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1645) #1
  %1646 = load i32, i32* %1
  ret i32 %1646
}

; Function Attrs: nounwind uwtable
define internal i32* @func_40(i32 %p_41) #0 {
  %1 = alloca i32, align 4
  %l_42 = alloca i32*, align 8
  store i32 %p_41, i32* %1, align 4, !tbaa !1
  %2 = bitcast i32** %l_42 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_39, i32** %l_42, align 8, !tbaa !5
  %3 = load i32*, i32** %l_42, align 8, !tbaa !5
  %4 = bitcast i32** %l_42 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret i32* %3
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
define internal signext i8 @safe_div_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
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
  %22 = sdiv i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
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
define internal zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
define internal zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
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
  %14 = sdiv i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i8
  ret i8 %17
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
define internal i64 @func_81(i32** %p_82, i8 signext %p_83, i8* %p_84.coerce, i16* %p_85, i32 %p_86) #0 {
  %p_84 = alloca %union.U1, align 8
  %1 = alloca i32**, align 8
  %2 = alloca i8, align 1
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %l_103 = alloca i32, align 4
  %l_116 = alloca i8*, align 8
  %l_118 = alloca i16*, align 8
  %l_119 = alloca i32*, align 8
  %l_120 = alloca i8*, align 8
  %5 = alloca %union.U1, align 8
  %6 = getelementptr %union.U1, %union.U1* %p_84, i32 0, i32 0
  store i8* %p_84.coerce, i8** %6, align 8
  store i32** %p_82, i32*** %1, align 8, !tbaa !5
  store i8 %p_83, i8* %2, align 1, !tbaa !9
  store i16* %p_85, i16** %3, align 8, !tbaa !5
  store i32 %p_86, i32* %4, align 4, !tbaa !1
  %7 = bitcast i32* %l_103 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -758916472, i32* %l_103, align 4, !tbaa !1
  %8 = bitcast i8** %l_116 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8* @g_35, i8** %l_116, align 8, !tbaa !5
  %9 = bitcast i16** %l_118 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 2, i64 4), i16** %l_118, align 8, !tbaa !5
  %10 = bitcast i32** %l_119 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* @g_52, i32** %l_119, align 8, !tbaa !5
  %11 = bitcast i8** %l_120 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8* @g_121, i8** %l_120, align 8, !tbaa !5
  %12 = load i32, i32* %l_103, align 4, !tbaa !1
  %13 = trunc i32 %12 to i16
  %14 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext 2, i16 signext %13)
  %15 = sext i16 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %59

; <label>:17                                      ; preds = %0
  %18 = load i32, i32* @g_32, align 4, !tbaa !1
  %19 = sext i32 %18 to i64
  %20 = bitcast %union.U1* %p_84 to i16*
  %21 = load i16, i16* %20, align 2, !tbaa !10
  %22 = sext i16 %21 to i64
  %23 = call i64 @safe_add_func_int64_t_s_s(i64 %19, i64 %22)
  %24 = trunc i64 %23 to i16
  %25 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %24, i32 7)
  %26 = sext i16 %25 to i32
  %27 = load i8*, i8** %l_116, align 8, !tbaa !5
  %28 = icmp ne i8* null, %27
  %29 = zext i1 %28 to i32
  %30 = load i16*, i16** %l_118, align 8, !tbaa !5
  %31 = icmp ne i16* %30, getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 2, i64 4)
  %32 = zext i1 %31 to i32
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %37

; <label>:34                                      ; preds = %17
  %35 = load i32, i32* @g_39, align 4, !tbaa !1
  %36 = icmp ne i32 %35, 0
  br label %37

; <label>:37                                      ; preds = %34, %17
  %38 = phi i1 [ false, %17 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = bitcast %union.U1* %p_84 to i32*
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %42 = icmp uge i32 %39, %41
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %l_119, align 8, !tbaa !5
  store i32 %43, i32* %44, align 4, !tbaa !1
  %45 = call i32 @safe_add_func_int32_t_s_s(i32 %26, i32 %43)
  %46 = bitcast %union.U1* %p_84 to i16*
  %47 = load i16, i16* %46, align 2, !tbaa !10
  %48 = sext i16 %47 to i64
  %49 = bitcast %union.U1* %p_84 to i16*
  %50 = load i16, i16* %49, align 2, !tbaa !10
  %51 = sext i16 %50 to i64
  %52 = call i64 @safe_add_func_int64_t_s_s(i64 %48, i64 %51)
  %53 = xor i64 %52, 40650
  %54 = trunc i64 %53 to i8
  %55 = load i8*, i8** %l_120, align 8, !tbaa !5
  store i8 %54, i8* %55, align 1, !tbaa !9
  %56 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %54, i32 0)
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br label %59

; <label>:59                                      ; preds = %37, %0
  %60 = phi i1 [ false, %0 ], [ %58, %37 ]
  %61 = zext i1 %60 to i32
  %62 = trunc i32 %61 to i8
  %63 = load i8, i8* %2, align 1, !tbaa !9
  %64 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %62, i8 signext %63)
  %65 = sext i8 %64 to i32
  %66 = load i16, i16* getelementptr inbounds ([3 x [6 x i16]], [3 x [6 x i16]]* @g_7, i32 0, i64 2, i64 4), align 2, !tbaa !10
  %67 = zext i16 %66 to i64
  %68 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_46, i32 0, i32 0), align 4, !tbaa !1
  %69 = sext i32 %68 to i64
  %70 = load i16*, i16** %3, align 8, !tbaa !5
  %71 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @func_81.l_117, i32 0, i32 0), align 4
  %72 = call i8* @func_10(i32 %65, i32 %71, i64 %67, i64 %69, i16* %70)
  %73 = getelementptr %union.U1, %union.U1* %5, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  %74 = bitcast %union.U1* %p_84 to i16*
  %75 = load i16, i16* %74, align 2, !tbaa !10
  %76 = sext i16 %75 to i64
  %77 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @func_81.l_117, i32 0, i32 0), align 4, !tbaa !1
  %78 = sext i32 %77 to i64
  %79 = call i64 @safe_div_func_int64_t_s_s(i64 %76, i64 %78)
  %80 = trunc i64 %79 to i32
  %81 = load i32*, i32** %l_119, align 8, !tbaa !5
  store i32 %80, i32* %81, align 4, !tbaa !1
  %82 = load i32*, i32** %l_119, align 8, !tbaa !5
  %83 = load i32, i32* %82, align 4, !tbaa !1
  %84 = sext i32 %83 to i64
  %85 = bitcast i8** %l_120 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast i32** %l_119 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i16** %l_118 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i8** %l_116 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast i32* %l_103 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  ret i64 %84
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
define internal zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %ui) #0 {
  %1 = alloca i16, align 2
  store i16 %ui, i16* %1, align 2, !tbaa !10
  %2 = load i16, i16* %1, align 2, !tbaa !10
  %3 = zext i16 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i16
  ret i16 %5
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
!12 = !{i64 0, i64 4, !1, i64 0, i64 8, !5, i64 0, i64 2, !10}
!13 = !{i64 0, i64 4, !1, i64 0, i64 4, !1, i64 0, i64 8, !5, i64 0, i64 4, !1, i64 0, i64 4, !1}
!14 = !{i64 0, i64 4, !1}
