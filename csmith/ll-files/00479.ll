; ModuleID = '00479.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U1 = type { i32 }
%union.U0 = type { i16, [2 x i8] }
%union.U2 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global i32 -1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_27 = internal global [4 x [7 x %union.U1]] [[7 x %union.U1] [%union.U1 zeroinitializer, %union.U1 { i32 1063140634 }, %union.U1 zeroinitializer, %union.U1 zeroinitializer, %union.U1 { i32 1063140634 }, %union.U1 zeroinitializer, %union.U1 zeroinitializer], [7 x %union.U1] [%union.U1 { i32 1063140634 }, %union.U1 { i32 1063140634 }, %union.U1 { i32 -679686994 }, %union.U1 { i32 1063140634 }, %union.U1 { i32 1063140634 }, %union.U1 { i32 -679686994 }, %union.U1 { i32 1063140634 }], [7 x %union.U1] [%union.U1 { i32 1063140634 }, %union.U1 zeroinitializer, %union.U1 zeroinitializer, %union.U1 { i32 1063140634 }, %union.U1 zeroinitializer, %union.U1 zeroinitializer, %union.U1 { i32 1063140634 }], [7 x %union.U1] [%union.U1 zeroinitializer, %union.U1 { i32 1063140634 }, %union.U1 zeroinitializer, %union.U1 zeroinitializer, %union.U1 { i32 1063140634 }, %union.U1 zeroinitializer, %union.U1 zeroinitializer]], align 16
@.str.2 = private unnamed_addr constant [14 x i8] c"g_27[i][j].f0\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"g_27[i][j].f1\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_32 = internal global i32 -10, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_32\00", align 1
@g_61 = internal global i32 -3, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_61\00", align 1
@g_76 = internal global %union.U1 { i32 -777913395 }, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"g_76.f1\00", align 1
@g_80 = internal global i32 -1, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_80\00", align 1
@g_82 = internal global i32 -1805546427, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"g_82\00", align 1
@g_89 = internal global i32 -76551305, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"g_89\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"g_95.f0\00", align 1
@g_96 = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"g_96\00", align 1
@g_99 = internal global i32 -1625401723, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"g_99\00", align 1
@g_103 = internal global i16 31413, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_103\00", align 1
@g_104 = internal global i16 -1, align 2
@.str.15 = private unnamed_addr constant [6 x i8] c"g_104\00", align 1
@g_106 = internal global i16 1, align 2
@.str.16 = private unnamed_addr constant [6 x i8] c"g_106\00", align 1
@g_118 = internal global [8 x i32] [i32 -1, i32 -1927745565, i32 -1, i32 -1, i32 -1927745565, i32 -1, i32 -1, i32 -1927745565], align 16
@.str.17 = private unnamed_addr constant [9 x i8] c"g_118[i]\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_148 = internal global i64 0, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"g_148\00", align 1
@g_177 = internal global i8 -4, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_177\00", align 1
@g_222 = internal global i8 62, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_222\00", align 1
@g_234 = internal global [8 x i64] [i64 391717010390586873, i64 -8463009201684191971, i64 391717010390586873, i64 -8463009201684191971, i64 391717010390586873, i64 -8463009201684191971, i64 391717010390586873, i64 -8463009201684191971], align 16
@.str.22 = private unnamed_addr constant [9 x i8] c"g_234[i]\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_236\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"g_285.f0\00", align 1
@g_404 = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_404\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_445.f0\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"g_502.f0\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"g_558.f0\00", align 1
@g_598 = internal global i16 -31722, align 2
@.str.29 = private unnamed_addr constant [6 x i8] c"g_598\00", align 1
@g_619 = internal global [3 x [7 x i16]] [[7 x i16] [i16 15662, i16 0, i16 -10, i16 0, i16 15662, i16 1, i16 1], [7 x i16] [i16 15662, i16 0, i16 -10, i16 0, i16 15662, i16 1, i16 1], [7 x i16] [i16 15662, i16 0, i16 -10, i16 0, i16 15662, i16 1, i16 1]], align 16
@.str.30 = private unnamed_addr constant [12 x i8] c"g_619[i][j]\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"g_681\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"g_717.f0\00", align 1
@g_748 = internal global i64 3, align 8
@.str.33 = private unnamed_addr constant [6 x i8] c"g_748\00", align 1
@g_754 = internal global [4 x i8] c"\F7\F7\F7\F7", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"g_754[i]\00", align 1
@g_773 = internal global i8 5, align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"g_773\00", align 1
@g_854 = internal global i32 364384301, align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"g_854\00", align 1
@g_871 = internal global i8 0, align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"g_871\00", align 1
@g_985 = internal global i32 -628065244, align 4
@.str.38 = private unnamed_addr constant [6 x i8] c"g_985\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"g_995\00", align 1
@g_1120 = internal global i16 1, align 2
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1120\00", align 1
@g_1127 = internal global i32 -1251301997, align 4
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1127\00", align 1
@g_1194 = internal global i32 2, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1194\00", align 1
@g_1236 = internal global [3 x i32] [i32 -181449650, i32 -181449650, i32 -181449650], align 4
@.str.43 = private unnamed_addr constant [10 x i8] c"g_1236[i]\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"g_1325.f0\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1400\00", align 1
@g_1597 = internal global i32 1908446801, align 4
@.str.46 = private unnamed_addr constant [7 x i8] c"g_1597\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"g_1615.f0\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"g_1666.f0\00", align 1
@g_1692 = internal global i8 7, align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"g_1692\00", align 1
@g_1717 = internal global i32 413458379, align 4
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1717\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"g_1888.f0\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"g_1921.f0\00", align 1
@g_1988 = internal global [1 x i64] zeroinitializer, align 8
@.str.53 = private unnamed_addr constant [10 x i8] c"g_1988[i]\00", align 1
@g_1991 = internal global i8 99, align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1991\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_372 = internal global [5 x [4 x [4 x i32*]]] [[4 x [4 x i32*]] [[4 x i32*] [i32* null, i32* @g_80, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*)], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* @g_80, i32* null], [4 x i32*] [i32* @g_4, i32* @g_4, i32* @g_61, i32* @g_99], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 28) to i32*), i32* @g_80, i32* @g_4, i32* @g_61]], [4 x [4 x i32*]] [[4 x i32*] [i32* @g_99, i32* @g_80, i32* @g_61, i32* @g_99], [4 x i32*] [i32* @g_80, i32* @g_4, i32* @g_99, i32* null], [4 x i32*] [i32* @g_4, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*)], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 4) to i32*), i32* @g_80, i32* @g_99, i32* @g_4]], [4 x [4 x i32*]] [[4 x i32*] [i32* null, i32* @g_61, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 28) to i32*)], [4 x i32*] [i32* null, i32* @g_4, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 20) to i32*), i32* @g_99], [4 x i32*] [i32* null, i32* @g_61, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 12) to i32*), i32* @g_80], [4 x i32*] [i32* null, i32* @g_99, i32* @g_99, i32* @g_4]], [4 x [4 x i32*]] [[4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 4) to i32*), i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 4) to i32*)], [4 x i32*] [i32* @g_4, i32* @g_99, i32* @g_99, i32* null], [4 x i32*] [i32* @g_80, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 12) to i32*), i32* @g_61, i32* null], [4 x i32*] [i32* @g_99, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 20) to i32*), i32* @g_4, i32* null]], [4 x [4 x i32*]] [[4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 12) to i32*), i32* @g_61, i32* null], [4 x i32*] [i32* @g_4, i32* @g_99, i32* @g_80, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 4) to i32*)], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* @g_4], [4 x i32*] [i32* null, i32* @g_99, i32* @g_4, i32* @g_80]]], align 16
@func_1.l_1996 = private unnamed_addr constant [7 x [1 x i32**]] [[1 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [4 x [4 x i32*]]]* @g_372 to i8*), i64 320) to i32**)], [1 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [4 x [4 x i32*]]]* @g_372 to i8*), i64 328) to i32**)], [1 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [4 x [4 x i32*]]]* @g_372 to i8*), i64 320) to i32**)], [1 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [4 x [4 x i32*]]]* @g_372 to i8*), i64 328) to i32**)], [1 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [4 x [4 x i32*]]]* @g_372 to i8*), i64 320) to i32**)], [1 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [4 x [4 x i32*]]]* @g_372 to i8*), i64 328) to i32**)], [1 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [4 x [4 x i32*]]]* @g_372 to i8*), i64 320) to i32**)]], align 16
@func_1.l_2000 = private unnamed_addr constant [8 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*)], align 16
@func_1.l_2002 = private unnamed_addr constant [2 x [6 x [3 x i64]]] [[6 x [3 x i64]] [[3 x i64] [i64 0, i64 -5771205346634060200, i64 0], [3 x i64] [i64 6815823280110068922, i64 5, i64 2007016858119038089], [3 x i64] [i64 5280446353240059693, i64 5, i64 -1], [3 x i64] [i64 0, i64 -5771205346634060200, i64 -8459352569025703538], [3 x i64] [i64 -1, i64 0, i64 0], [3 x i64] [i64 0, i64 0, i64 6]], [6 x [3 x i64]] [[3 x i64] [i64 5280446353240059693, i64 -7, i64 6], [3 x i64] [i64 6815823280110068922, i64 6, i64 0], [3 x i64] [i64 0, i64 -1, i64 -8459352569025703538], [3 x i64] [i64 6, i64 6, i64 -1], [3 x i64] [i64 -5771205346634060200, i64 -7, i64 2007016858119038089], [3 x i64] [i64 -5771205346634060200, i64 0, i64 0]]], align 16
@g_512 = internal global i8* bitcast (%union.U1* @g_76 to i8*), align 8
@func_1.l_2005 = private unnamed_addr constant [10 x [8 x [3 x i8**]]] [[8 x [3 x i8**]] [[3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** null], [3 x i8**] [i8** @g_512, i8** @g_512, i8** null], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** null, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512]], [8 x [3 x i8**]] [[3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** null, i8** @g_512], [3 x i8**] [i8** null, i8** null, i8** @g_512], [3 x i8**] [i8** @g_512, i8** null, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** null], [3 x i8**] [i8** @g_512, i8** @g_512, i8** null], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512]], [8 x [3 x i8**]] [[3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** null, i8** null, i8** @g_512], [3 x i8**] [i8** @g_512, i8** null, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** null], [3 x i8**] [i8** @g_512, i8** @g_512, i8** null], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** null, i8** @g_512, i8** @g_512]], [8 x [3 x i8**]] [[3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** null, i8** @g_512], [3 x i8**] [i8** null, i8** null, i8** @g_512], [3 x i8**] [i8** @g_512, i8** null, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** null]], [8 x [3 x i8**]] [[3 x i8**] [i8** @g_512, i8** @g_512, i8** null], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** null, i8** null, i8** @g_512], [3 x i8**] [i8** @g_512, i8** null, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** null], [3 x i8**] [i8** @g_512, i8** @g_512, i8** null], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512]], [8 x [3 x i8**]] [[3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** null, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** null, i8** @g_512], [3 x i8**] [i8** null, i8** null, i8** @g_512]], [8 x [3 x i8**]] [[3 x i8**] [i8** @g_512, i8** null, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** null], [3 x i8**] [i8** @g_512, i8** @g_512, i8** null], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** null, i8** null, i8** @g_512], [3 x i8**] [i8** @g_512, i8** null, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** null]], [8 x [3 x i8**]] [[3 x i8**] [i8** @g_512, i8** @g_512, i8** null], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** null, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512]], [8 x [3 x i8**]] [[3 x i8**] [i8** @g_512, i8** null, i8** @g_512], [3 x i8**] [i8** null, i8** null, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** null, i8** @g_512, i8** null], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** null, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** null, i8** @g_512, i8** @g_512]], [8 x [3 x i8**]] [[3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** null, i8** @g_512, i8** null], [3 x i8**] [i8** @g_512, i8** @g_512, i8** null], [3 x i8**] [i8** null, i8** @g_512, i8** @g_512], [3 x i8**] [i8** @g_512, i8** null, i8** @g_512], [3 x i8**] [i8** null, i8** null, i8** @g_512], [3 x i8**] [i8** @g_512, i8** @g_512, i8** @g_512], [3 x i8**] [i8** null, i8** @g_512, i8** null]]], align 16
@g_3 = internal global i32* @g_4, align 8
@g_16 = internal global i32* null, align 8
@g_561 = internal global i32** @g_207, align 8
@g_373 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [4 x [4 x i32*]]]* @g_372 to i8*), i64 560) to i32**), align 8
@g_207 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), align 8
@g_480 = internal global i8** @g_186, align 8
@func_5.l_1367 = internal constant [3 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], align 16
@g_817 = internal global %union.U1* @g_76, align 8
@g_1360 = internal global %union.U0*** @g_1361, align 8
@g_1414 = internal global [2 x i64****] [i64**** @g_1415, i64**** @g_1415], align 16
@g_94 = internal global i32* @g_82, align 8
@func_5.l_1649 = private unnamed_addr constant [6 x i16] [i16 1, i16 209, i16 1, i16 1, i16 209, i16 1], align 2
@func_5.l_1993 = private unnamed_addr constant [6 x [1 x [4 x i64]]] [[1 x [4 x i64]] [[4 x i64] [i64 -5888064770215992731, i64 -5888064770215992731, i64 -5888064770215992731, i64 -5888064770215992731]], [1 x [4 x i64]] [[4 x i64] [i64 -5888064770215992731, i64 -5888064770215992731, i64 -5888064770215992731, i64 -5888064770215992731]], [1 x [4 x i64]] [[4 x i64] [i64 -5888064770215992731, i64 -5888064770215992731, i64 -5888064770215992731, i64 -5888064770215992731]], [1 x [4 x i64]] [[4 x i64] [i64 -5888064770215992731, i64 -5888064770215992731, i64 -5888064770215992731, i64 -5888064770215992731]], [1 x [4 x i64]] [[4 x i64] [i64 -5888064770215992731, i64 -5888064770215992731, i64 -5888064770215992731, i64 -5888064770215992731]], [1 x [4 x i64]] [[4 x i64] [i64 -5888064770215992731, i64 -5888064770215992731, i64 -5888064770215992731, i64 -5888064770215992731]]], align 16
@g_999 = internal global [5 x [8 x i16*]] [[8 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0)], [8 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0)], [8 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0)], [8 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0)], [8 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [7 x i16]]* @g_619 to i8*), i64 4) to i16*), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0)]], align 16
@g_507 = internal global [8 x [6 x [2 x i32**]]] [[6 x [2 x i32**]] [[2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91], [2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91]], [6 x [2 x i32**]] [[2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91], [2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91]], [6 x [2 x i32**]] [[2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91], [2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91]], [6 x [2 x i32**]] [[2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91], [2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91]], [6 x [2 x i32**]] [[2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91], [2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91]], [6 x [2 x i32**]] [[2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91], [2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91]], [6 x [2 x i32**]] [[2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91], [2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91]], [6 x [2 x i32**]] [[2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_94, i32** @g_91], [2 x i32**] [i32** @g_91, i32** @g_94], [2 x i32**] [i32** @g_91, i32** @g_91], [2 x i32**] [i32** @g_91, i32** @g_94]]], align 16
@g_537 = internal global i32*** null, align 8
@func_5.l_1114 = private unnamed_addr constant [5 x [1 x [7 x i32*]]] [[1 x [7 x i32*]] [[7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* null, i32* @g_4, i32* @g_80, i32* @g_80, i32* null, i32* @g_80]], [1 x [7 x i32*]] [[7 x i32*] [i32* @g_61, i32* @g_80, i32* @g_80, i32* @g_61, i32* @g_80, i32* @g_4, i32* @g_80]], [1 x [7 x i32*]] [[7 x i32*] [i32* @g_4, i32* @g_80, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* @g_80, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*)]], [1 x [7 x i32*]] [[7 x i32*] [i32* @g_80, i32* null, i32* @g_4, i32* null, i32* @g_4, i32* null, i32* @g_80]], [1 x [7 x i32*]] [[7 x i32*] [i32* @g_99, i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), i32* @g_4, i32* @g_99, i32* @g_80]]], align 16
@g_1113 = internal global %union.U0** @g_454, align 8
@func_5.l_1184 = private unnamed_addr constant [6 x i32] [i32 4, i32 -1064128740, i32 -1064128740, i32 4, i32 -1064128740, i32 -1064128740], align 16
@g_998 = internal global i16** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [8 x i16*]]* @g_999 to i8*), i64 208) to i16**), align 8
@g_454 = internal global %union.U0* bitcast ({ i8, i8, [2 x i8] }* @g_95 to %union.U0*), align 8
@g_1210 = internal global i8*** @g_480, align 8
@g_490 = internal global [4 x i64**] [i64** @g_474, i64** @g_474, i64** @g_474, i64** @g_474], align 16
@func_5.l_1409 = private unnamed_addr constant [7 x i32*] [i32* @g_61, i32* @g_61, i32* @g_61, i32* @g_61, i32* @g_61, i32* @g_61, i32* @g_61], align 16
@func_5.l_1261 = private unnamed_addr constant [3 x [8 x [8 x i16]]] [[8 x [8 x i16]] [[8 x i16] [i16 19077, i16 1, i16 1, i16 0, i16 9103, i16 -1, i16 16025, i16 3], [8 x i16] [i16 8, i16 0, i16 -10, i16 -8, i16 -10, i16 0, i16 8, i16 -1], [8 x i16] [i16 -10, i16 0, i16 8, i16 -1, i16 -1124, i16 -12030, i16 -1124, i16 1], [8 x i16] [i16 16025, i16 -8, i16 1, i16 14584, i16 -10, i16 6, i16 9103, i16 6], [8 x i16] [i16 0, i16 1, i16 -10125, i16 1, i16 0, i16 0, i16 16025, i16 6], [8 x i16] [i16 -9130, i16 -12030, i16 9103, i16 14584, i16 -10125, i16 -23980, i16 -10, i16 1], [8 x i16] [i16 1, i16 0, i16 9103, i16 -1, i16 16025, i16 3, i16 16025, i16 -1], [8 x i16] [i16 -10125, i16 -1, i16 -10125, i16 6, i16 -1124, i16 3, i16 9103, i16 -23980]], [8 x [8 x i16]] [[8 x i16] [i16 9103, i16 0, i16 1, i16 1, i16 19077, i16 -23980, i16 -1124, i16 -8], [8 x i16] [i16 9103, i16 -12030, i16 -9130, i16 0, i16 -1124, i16 0, i16 -9130, i16 -12030], [8 x i16] [i16 -10125, i16 1, i16 0, i16 0, i16 16025, i16 6, i16 8, i16 -8], [8 x i16] [i16 1, i16 -8, i16 16025, i16 1, i16 -10125, i16 -12030, i16 8, i16 -23980], [8 x i16] [i16 -9130, i16 1, i16 0, i16 6, i16 0, i16 1, i16 -9130, i16 -1], [8 x i16] [i16 0, i16 1, i16 -9130, i16 -1, i16 -10, i16 -12030, i16 -1124, i16 1], [8 x i16] [i16 16025, i16 -8, i16 1, i16 14584, i16 -10, i16 6, i16 9103, i16 6], [8 x i16] [i16 0, i16 1, i16 -10125, i16 1, i16 0, i16 0, i16 16025, i16 6]], [8 x [8 x i16]] [[8 x i16] [i16 -9130, i16 -12030, i16 9103, i16 14584, i16 -10125, i16 -23980, i16 -10, i16 1], [8 x i16] [i16 1, i16 0, i16 9103, i16 -1, i16 16025, i16 3, i16 16025, i16 -1], [8 x i16] [i16 -10125, i16 -1, i16 -10125, i16 6, i16 -1124, i16 3, i16 9103, i16 -23980], [8 x i16] [i16 9103, i16 0, i16 1, i16 1, i16 19077, i16 -23980, i16 -1124, i16 -8], [8 x i16] [i16 9103, i16 -12030, i16 -9130, i16 0, i16 -1124, i16 0, i16 -9130, i16 -12030], [8 x i16] [i16 -10125, i16 1, i16 0, i16 0, i16 16025, i16 6, i16 8, i16 -8], [8 x i16] [i16 1, i16 -8, i16 16025, i16 1, i16 -10125, i16 -12030, i16 8, i16 -23980], [8 x i16] [i16 -9130, i16 1, i16 0, i16 6, i16 0, i16 1, i16 -9130, i16 -1]]], align 16
@func_5.l_1326 = private unnamed_addr constant %union.U1 { i32 6 }, align 4
@g_1361 = internal global %union.U0** null, align 8
@g_1263 = internal global i32** @g_207, align 8
@g_489 = internal global [4 x i64***] [i64*** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64**]* @g_490 to i8*), i64 16) to i64***), i64*** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64**]* @g_490 to i8*), i64 16) to i64***), i64*** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64**]* @g_490 to i8*), i64 16) to i64***), i64*** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64**]* @g_490 to i8*), i64 16) to i64***)], align 16
@func_5.l_1298 = private unnamed_addr constant [4 x i64] [i64 5603747709677098279, i64 5603747709677098279, i64 5603747709677098279, i64 5603747709677098279], align 16
@func_5.l_1318 = private unnamed_addr constant [10 x %union.U1] [%union.U1 { i32 -1642762705 }, %union.U1 { i32 -1 }, %union.U1 { i32 -1642762705 }, %union.U1 { i32 -1748825780 }, %union.U1 { i32 -1748825780 }, %union.U1 { i32 -1642762705 }, %union.U1 { i32 -1 }, %union.U1 { i32 -1642762705 }, %union.U1 { i32 -1642762705 }, %union.U1 { i32 -1642762705 }], align 16
@g_186 = internal global i8* @g_177, align 8
@g_188 = internal global i8* @g_177, align 8
@g_572 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_118 to i8*), i64 16) to i32*), align 8
@g_970 = internal global [9 x [10 x %union.U0****]] [[10 x %union.U0****] [%union.U0**** @g_971, %union.U0**** null, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** null, %union.U0**** null, %union.U0**** @g_971, %union.U0**** null, %union.U0**** @g_971, %union.U0**** @g_971], [10 x %union.U0****] [%union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** null, %union.U0**** null, %union.U0**** null], [10 x %union.U0****] [%union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** null, %union.U0**** null, %union.U0**** null, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971], [10 x %union.U0****] [%union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** null, %union.U0**** @g_971, %union.U0**** null, %union.U0**** null, %union.U0**** @g_971, %union.U0**** @g_971], [10 x %union.U0****] [%union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971], [10 x %union.U0****] [%union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** null, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** null, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971], [10 x %union.U0****] [%union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** null, %union.U0**** null, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971], [10 x %union.U0****] [%union.U0**** @g_971, %union.U0**** null, %union.U0**** null, %union.U0**** @g_971, %union.U0**** null, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** null, %union.U0**** @g_971], [10 x %union.U0****] [%union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** @g_971, %union.U0**** null]], align 16
@g_1341 = internal global i32** @g_16, align 8
@func_5.l_1366 = private unnamed_addr constant [6 x [7 x [4 x %union.U1**]]] [[7 x [4 x %union.U1**]] [[4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** null, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** null], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** null]], [7 x [4 x %union.U1**]] [[4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817]], [7 x [4 x %union.U1**]] [[4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** null], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** null, %union.U1** @g_817, %union.U1** null], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** null]], [7 x [4 x %union.U1**]] [[4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** null], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** null], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** null, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** null], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** null, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817]], [7 x [4 x %union.U1**]] [[4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** null, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** null, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** null, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817]], [7 x [4 x %union.U1**]] [[4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** null], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** null], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], [4 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817]]], align 16
@g_1400 = internal constant i64 -804881051701744683, align 8
@g_1413 = internal global i64***** getelementptr inbounds ([2 x i64****], [2 x i64****]* @g_1414, i32 0, i32 0), align 8
@func_5.l_1439 = private unnamed_addr constant [7 x [4 x [8 x i8]]] [[4 x [8 x i8]] [[8 x i8] c">>v\01\01>\16R", [8 x i8] c".v\01\01\FA\01FR", [8 x i8] c"v>\01\01\EDv\ED\01", [8 x i8] c"\01\01\01v\FF\FF\01M"], [4 x [8 x i8]] [[8 x i8] c"\01R\1F\01>'\FF\1F", [8 x i8] c"\01>R\01\FF\16\16\FF", [8 x i8] c"\01FF\01\EDMRv", [8 x i8] c"v\00\FE\1F\FAv>\01"], [4 x [8 x i8]] [[8 x i8] c".\00\01R\01M\00M", [8 x i8] c">F\FFF>\16\01\FF", [8 x i8] c">>\FF\FEv'\16F", [8 x i8] c"\01R\FF\01>\FF\01\01"], [4 x [8 x i8]] [[8 x i8] c"v\01\FF\FF\01v\00\FE", [8 x i8] c"\FF>\01\FFR\01>M", [8 x i8] c"'v\FE\FF>>R\FE", [8 x i8] c"\16>F\FFF>\16\01"], [4 x [8 x i8]] [[8 x i8] c"M\01R\01\00.\FFF", [8 x i8] c"v\FA\1F\FE\00v\01\FF", [8 x i8] c"M\ED\01F\01\1F\16\01", [8 x i8] c"\FFM\FA.v\01\01\FA"], [4 x [8 x i8]] [[8 x i8] c"Rv\FF\ED.\01\FF\01", [8 x i8] c"\FEM\01\1F>\1F\01M", [8 x i8] c"\01\16\00\FA>\01'\ED", [8 x i8] c"\01'\1F\FF\01\FF'\01"], [4 x [8 x i8]] [[8 x i8] c"F\FF\00\01vv\01\00", [8 x i8] c"vv\01\00\FFF\FF.", [8 x i8] c"\FF\01\FF\1F'\01\01.", [8 x i8] c"\01>\FA\00\16\01\16\00"]], align 16
@func_5.l_1645 = private unnamed_addr constant %union.U1 { i32 -736087980 }, align 4
@func_5.l_1708 = private unnamed_addr constant [8 x i8] c"\FF\F6\FF\FF\F6\FF\FF\F6", align 1
@func_5.l_1850 = private unnamed_addr constant [9 x [5 x [5 x i32]]] [[5 x [5 x i32]] [[5 x i32] [i32 -1438445027, i32 -965777467, i32 -5, i32 0, i32 -1], [5 x i32] [i32 0, i32 -1021811633, i32 -549959169, i32 -1, i32 651339826], [5 x i32] [i32 -1, i32 6, i32 2, i32 -7, i32 -1], [5 x i32] [i32 -1, i32 1, i32 -1744335070, i32 -1814742306, i32 -188675392], [5 x i32] [i32 1134096082, i32 -242907419, i32 924639566, i32 -5, i32 751862048]], [5 x [5 x i32]] [[5 x i32] [i32 -549959169, i32 -5, i32 759301548, i32 270548080, i32 -1021811633], [5 x i32] [i32 652891995, i32 -7, i32 -1401214550, i32 74683843, i32 1], [5 x i32] [i32 -979163565, i32 -3, i32 -188675392, i32 -2090055742, i32 2], [5 x i32] [i32 -1, i32 924639566, i32 1, i32 -1966749885, i32 1], [5 x i32] [i32 1, i32 1, i32 2, i32 -1127922457, i32 8]], [5 x [5 x i32]] [[5 x i32] [i32 0, i32 -1052226476, i32 751862048, i32 -965777467, i32 1], [5 x i32] [i32 1126394380, i32 4, i32 3, i32 -5, i32 0], [5 x i32] [i32 0, i32 -1052226476, i32 -242907419, i32 -173260929, i32 -2], [5 x i32] [i32 -1744335070, i32 1, i32 2, i32 1126394380, i32 -7], [5 x i32] [i32 -1401214550, i32 924639566, i32 -6, i32 652891995, i32 -1]], [5 x [5 x i32]] [[5 x i32] [i32 5, i32 -3, i32 420864959, i32 -501276870, i32 -6], [5 x i32] [i32 -1052226476, i32 -7, i32 1294369327, i32 0, i32 6], [5 x i32] [i32 -1, i32 -5, i32 1, i32 5, i32 2], [5 x i32] [i32 -8, i32 -242907419, i32 74683843, i32 751862048, i32 0], [5 x i32] [i32 759301548, i32 1, i32 -1814742306, i32 1, i32 759301548]], [5 x [5 x i32]] [[5 x i32] [i32 1, i32 6, i32 652891995, i32 -7, i32 -1966749885], [5 x i32] [i32 -1127922457, i32 -1, i32 2, i32 -1744335070, i32 1126394380], [5 x i32] [i32 -173260929, i32 0, i32 -1, i32 -8, i32 -1966749885], [5 x i32] [i32 -2, i32 -1744335070, i32 -5, i32 -91705789, i32 6], [5 x i32] [i32 -1966749885, i32 -531458950, i32 -173260929, i32 -1, i32 -146294735]], [5 x [5 x i32]] [[5 x i32] [i32 -91705789, i32 67070945, i32 420864959, i32 -979163565, i32 -1021811633], [5 x i32] [i32 1, i32 1896677596, i32 -2, i32 -254324497, i32 -8], [5 x i32] [i32 1, i32 2, i32 -1022266610, i32 -5, i32 -7], [5 x i32] [i32 0, i32 -1, i32 1294369327, i32 -531458950, i32 751862048], [5 x i32] [i32 659859136, i32 -501276870, i32 1, i32 1392710194, i32 1392710194]], [5 x [5 x i32]] [[5 x i32] [i32 -1, i32 1, i32 -1, i32 1026161075, i32 -173260929], [5 x i32] [i32 -549959169, i32 1, i32 -1127922457, i32 5, i32 -1187890907], [5 x i32] [i32 74683843, i32 0, i32 1026161075, i32 1, i32 -1], [5 x i32] [i32 -5, i32 6, i32 -1127922457, i32 -1187890907, i32 -3], [5 x i32] [i32 255625703, i32 751862048, i32 -1, i32 -1090565432, i32 1896677596]], [5 x [5 x i32]] [[5 x i32] [i32 4, i32 -590615354, i32 1, i32 1, i32 -382542275], [5 x i32] [i32 -531458950, i32 255625703, i32 1294369327, i32 -1, i32 656253241], [5 x i32] [i32 -1187890907, i32 -382542275, i32 -1022266610, i32 2, i32 -1], [5 x i32] [i32 -3, i32 -965777467, i32 -2, i32 924639566, i32 0], [5 x i32] [i32 -1923182713, i32 -2090055742, i32 420864959, i32 1, i32 3]], [5 x [5 x i32]] [[5 x i32] [i32 1134096082, i32 0, i32 -173260929, i32 -173260929, i32 0], [5 x i32] [i32 270548080, i32 -549959169, i32 -5, i32 -501276870, i32 759301548], [5 x i32] [i32 0, i32 8, i32 -1, i32 1294369327, i32 1026161075], [5 x i32] [i32 1392710194, i32 5, i32 2, i32 4, i32 -979163565], [5 x i32] [i32 0, i32 74683843, i32 -7, i32 925229005, i32 1]]], align 16
@func_5.l_1868 = private unnamed_addr constant { i8, i8, [2 x i8] } { i8 1, i8 0, [2 x i8] undef }, align 4
@func_5.l_1992 = private unnamed_addr constant [3 x [8 x i64]] [[8 x i64] [i64 8950094466419527020, i64 7874752767945172018, i64 2414466088970496601, i64 -8502719228130210161, i64 724951231751612436, i64 0, i64 724951231751612436, i64 -8502719228130210161], [8 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -8502719228130210161, i64 0, i64 2414466088970496601, i64 2414466088970496601], [8 x i64] [i64 2414466088970496601, i64 7874752767945172018, i64 8950094466419527020, i64 8950094466419527020, i64 7874752767945172018, i64 2414466088970496601, i64 -8502719228130210161, i64 724951231751612436]], align 16
@g_1521 = internal global i32** @g_16, align 8
@g_1415 = internal global i64*** @g_1416, align 8
@g_1416 = internal global i64** @g_474, align 8
@g_474 = internal global i64* null, align 8
@g_91 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [7 x %union.U1]]* @g_27 to i8*), i64 44) to i32*), align 8
@func_73.l_90 = private unnamed_addr constant %union.U1 { i32 344294689 }, align 4
@func_73.l_79 = private unnamed_addr constant [9 x [2 x i32*]] [[2 x i32*] [i32* @g_80, i32* @g_61], [2 x i32*] [i32* @g_80, i32* null], [2 x i32*] [i32* @g_80, i32* @g_61], [2 x i32*] [i32* @g_80, i32* @g_80], [2 x i32*] [i32* null, i32* @g_61], [2 x i32*] [i32* @g_80, i32* @g_80], [2 x i32*] [i32* @g_4, i32* @g_80], [2 x i32*] [i32* @g_80, i32* @g_61], [2 x i32*] [i32* null, i32* @g_61]], align 16
@g_971 = internal global %union.U0*** null, align 8
@func_9.l_1065 = private unnamed_addr constant [9 x [10 x i32]] [[10 x i32] [i32 -936125607, i32 173297857, i32 -1, i32 173297857, i32 -936125607, i32 -1523170569, i32 -1, i32 -1523170569, i32 -936125607, i32 173297857], [10 x i32] [i32 1820605241, i32 173297857, i32 1820605241, i32 -1, i32 -1452623844, i32 173297857, i32 -1452623844, i32 -1, i32 1820605241, i32 173297857], [10 x i32] [i32 -936125607, i32 -1, i32 9, i32 1695007020, i32 -936125607, i32 1695007020, i32 9, i32 -1, i32 -936125607, i32 -1], [10 x i32] [i32 -1452623844, i32 1695007020, i32 1820605241, i32 -1523170569, i32 1820605241, i32 1695007020, i32 -1452623844, i32 -1523170569, i32 -1452623844, i32 1695007020], [10 x i32] [i32 -936125607, i32 -1523170569, i32 -1, i32 -1523170569, i32 -936125607, i32 173297857, i32 -1, i32 173297857, i32 -936125607, i32 -1523170569], [10 x i32] [i32 1820605241, i32 -1523170569, i32 1820605241, i32 1695007020, i32 -1452623844, i32 -1523170569, i32 -1452623844, i32 1695007020, i32 1820605241, i32 -1523170569], [10 x i32] [i32 -936125607, i32 1695007020, i32 9, i32 -1, i32 -936125607, i32 -1, i32 9, i32 1695007020, i32 -936125607, i32 1695007020], [10 x i32] [i32 -1452623844, i32 -1, i32 1820605241, i32 173297857, i32 1820605241, i32 -1, i32 -1452623844, i32 173297857, i32 -1452623844, i32 -1], [10 x i32] [i32 -936125607, i32 173297857, i32 -1, i32 173297857, i32 -936125607, i32 -1523170569, i32 -1, i32 -1523170569, i32 -936125607, i32 173297857]], align 16
@func_9.l_1060 = private unnamed_addr constant [8 x i32] [i32 -1, i32 -1217985485, i32 -1217985485, i32 -1, i32 -1217985485, i32 -1217985485, i32 -1, i32 -1217985485], align 16
@func_9.l_1086 = private unnamed_addr constant [1 x %union.U1] [%union.U1 { i32 1217690507 }], align 4
@func_20.l_1009 = private unnamed_addr constant { i8, i8, [2 x i8] } { i8 1, i8 0, [2 x i8] undef }, align 4
@func_23.l_756 = private unnamed_addr constant [6 x [1 x [5 x i64]]] [[1 x [5 x i64]] [[5 x i64] [i64 1, i64 1, i64 -984087419878641990, i64 1, i64 1]], [1 x [5 x i64]] [[5 x i64] [i64 -4248548388215245431, i64 -6732733773821799350, i64 -4248548388215245431, i64 -4248548388215245431, i64 -6732733773821799350]], [1 x [5 x i64]] [[5 x i64] [i64 1, i64 -6965959622505434019, i64 -6965959622505434019, i64 1, i64 -6965959622505434019]], [1 x [5 x i64]] [[5 x i64] [i64 -6732733773821799350, i64 -6732733773821799350, i64 8941859256262621688, i64 -6732733773821799350, i64 -6732733773821799350]], [1 x [5 x i64]] [[5 x i64] [i64 -6965959622505434019, i64 1, i64 -6965959622505434019, i64 -6965959622505434019, i64 1]], [1 x [5 x i64]] [[5 x i64] [i64 -6732733773821799350, i64 -4248548388215245431, i64 -4248548388215245431, i64 -6732733773821799350, i64 -4248548388215245431]]], align 16
@func_23.l_903 = private unnamed_addr constant [7 x i32] [i32 257861287, i32 257861287, i32 257861287, i32 257861287, i32 257861287, i32 257861287, i32 257861287], align 16
@func_23.l_919 = private unnamed_addr constant [9 x [1 x i16*]] [[1 x i16*] [i16* @g_103], [1 x i16*] [i16* @g_103], [1 x i16*] [i16* @g_103], [1 x i16*] [i16* @g_103], [1 x i16*] [i16* @g_103], [1 x i16*] [i16* @g_103], [1 x i16*] [i16* @g_103], [1 x i16*] [i16* @g_103], [1 x i16*] [i16* @g_103]], align 16
@func_23.l_1004 = private unnamed_addr constant [9 x [6 x [4 x i64]]] [[6 x [4 x i64]] [[4 x i64] [i64 4411402734754312417, i64 -6386607238922605309, i64 8260545441737107825, i64 5], [4 x i64] [i64 1, i64 -4, i64 -6386607238922605309, i64 1], [4 x i64] [i64 -4, i64 6595290897495316792, i64 1, i64 8173093724493529116], [4 x i64] [i64 -4, i64 1, i64 -6386607238922605309, i64 6], [4 x i64] [i64 1, i64 8173093724493529116, i64 8260545441737107825, i64 8260545441737107825], [4 x i64] [i64 4411402734754312417, i64 4411402734754312417, i64 4528910988910574759, i64 8173093724493529116]], [6 x [4 x i64]] [[4 x i64] [i64 8173093724493529116, i64 1, i64 -512644125798074923, i64 6595290897495316792], [4 x i64] [i64 1, i64 -4, i64 8260545441737107825, i64 -512644125798074923], [4 x i64] [i64 6595290897495316792, i64 -4, i64 -3, i64 6595290897495316792], [4 x i64] [i64 -4, i64 1, i64 1, i64 8173093724493529116], [4 x i64] [i64 -6386607238922605309, i64 4411402734754312417, i64 -6386607238922605309, i64 8260545441737107825], [4 x i64] [i64 6595290897495316792, i64 8173093724493529116, i64 -4, i64 6]], [6 x [4 x i64]] [[4 x i64] [i64 4411402734754312417, i64 1, i64 -512644125798074923, i64 8173093724493529116], [4 x i64] [i64 -5280096824165648761, i64 6595290897495316792, i64 -512644125798074923, i64 1], [4 x i64] [i64 4411402734754312417, i64 -4, i64 -4, i64 5], [4 x i64] [i64 6595290897495316792, i64 -6386607238922605309, i64 -6386607238922605309, i64 6595290897495316792], [4 x i64] [i64 -6386607238922605309, i64 6595290897495316792, i64 1, i64 -5280096824165648761], [4 x i64] [i64 -4, i64 4411402734754312417, i64 8173093724493529116, i64 -512644125798074923]], [6 x [4 x i64]] [[4 x i64] [i64 -6386607238922605309, i64 -4, i64 4528910988910574759, i64 -512644125798074923], [4 x i64] [i64 -3210131744965887326, i64 -5489008428658510078, i64 1, i64 -4], [4 x i64] [i64 8260545441737107825, i64 -6386607238922605309, i64 4411402734754312417, i64 -6386607238922605309], [4 x i64] [i64 -5489008428658510078, i64 -4468593943414853692, i64 4528910988910574759, i64 1], [4 x i64] [i64 -3, i64 -5280096824165648761, i64 -4468593943414853692, i64 -3], [4 x i64] [i64 -5280096824165648761, i64 -6386607238922605309, i64 0, i64 8260545441737107825]], [6 x [4 x i64]] [[4 x i64] [i64 -5280096824165648761, i64 -3210131744965887326, i64 -4468593943414853692, i64 -512644125798074923], [4 x i64] [i64 -3, i64 8260545441737107825, i64 4528910988910574759, i64 4528910988910574759], [4 x i64] [i64 -5489008428658510078, i64 -5489008428658510078, i64 4411402734754312417, i64 8260545441737107825], [4 x i64] [i64 8260545441737107825, i64 -3, i64 1, i64 -6386607238922605309], [4 x i64] [i64 -3210131744965887326, i64 -5280096824165648761, i64 4528910988910574759, i64 1], [4 x i64] [i64 -6386607238922605309, i64 -5280096824165648761, i64 8173093724493529116, i64 -6386607238922605309]], [6 x [4 x i64]] [[4 x i64] [i64 -5280096824165648761, i64 -3, i64 -3210131744965887326, i64 8260545441737107825], [4 x i64] [i64 -4468593943414853692, i64 -5489008428658510078, i64 -4468593943414853692, i64 4528910988910574759], [4 x i64] [i64 -6386607238922605309, i64 8260545441737107825, i64 5, i64 -512644125798074923], [4 x i64] [i64 -5489008428658510078, i64 -3210131744965887326, i64 1, i64 8260545441737107825], [4 x i64] [i64 -4, i64 -6386607238922605309, i64 1, i64 -3], [4 x i64] [i64 -5489008428658510078, i64 -5280096824165648761, i64 5, i64 1]], [6 x [4 x i64]] [[4 x i64] [i64 -6386607238922605309, i64 -4468593943414853692, i64 -4468593943414853692, i64 -6386607238922605309], [4 x i64] [i64 -4468593943414853692, i64 -6386607238922605309, i64 -3210131744965887326, i64 -4], [4 x i64] [i64 -5280096824165648761, i64 -5489008428658510078, i64 8173093724493529116, i64 -512644125798074923], [4 x i64] [i64 -6386607238922605309, i64 -4, i64 4528910988910574759, i64 -512644125798074923], [4 x i64] [i64 -3210131744965887326, i64 -5489008428658510078, i64 1, i64 -4], [4 x i64] [i64 8260545441737107825, i64 -6386607238922605309, i64 4411402734754312417, i64 -6386607238922605309]], [6 x [4 x i64]] [[4 x i64] [i64 -5489008428658510078, i64 -4468593943414853692, i64 4528910988910574759, i64 1], [4 x i64] [i64 -3, i64 -5280096824165648761, i64 -4468593943414853692, i64 -3], [4 x i64] [i64 -5280096824165648761, i64 -6386607238922605309, i64 0, i64 8260545441737107825], [4 x i64] [i64 -5280096824165648761, i64 -3210131744965887326, i64 -4468593943414853692, i64 -512644125798074923], [4 x i64] [i64 -3, i64 8260545441737107825, i64 4528910988910574759, i64 4528910988910574759], [4 x i64] [i64 -5489008428658510078, i64 -5489008428658510078, i64 4411402734754312417, i64 8260545441737107825]], [6 x [4 x i64]] [[4 x i64] [i64 8260545441737107825, i64 -3, i64 1, i64 -6386607238922605309], [4 x i64] [i64 -3210131744965887326, i64 -5280096824165648761, i64 4528910988910574759, i64 1], [4 x i64] [i64 -6386607238922605309, i64 -5280096824165648761, i64 8173093724493529116, i64 -6386607238922605309], [4 x i64] [i64 -5280096824165648761, i64 -3, i64 -3210131744965887326, i64 8260545441737107825], [4 x i64] [i64 -4468593943414853692, i64 -5489008428658510078, i64 -4468593943414853692, i64 4528910988910574759], [4 x i64] [i64 -6386607238922605309, i64 8260545441737107825, i64 5, i64 -512644125798074923]]], align 16
@func_23.l_763 = private unnamed_addr constant [8 x i64**] [i64** @g_474, i64** @g_474, i64** @g_474, i64** @g_474, i64** @g_474, i64** @g_474, i64** @g_474, i64** @g_474], align 16
@func_23.l_778 = private unnamed_addr constant [7 x i32*] [i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4], align 16
@func_23.l_932 = private unnamed_addr constant [9 x %union.U1**] [%union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817, %union.U1** @g_817], align 16
@.str.55 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_95 = internal global { i8, i8, [2 x i8] } { i8 -1, i8 7, [2 x i8] undef }, align 4
@g_285 = internal global { i16, [6 x i8] } { i16 -11066, [6 x i8] undef }, align 8
@g_445 = internal constant { i16, [6 x i8] } { i16 -1, [6 x i8] undef }, align 8
@g_502 = internal global { i16, [6 x i8] } { i16 0, [6 x i8] undef }, align 8
@g_558 = internal global { i16, [6 x i8] } { i16 6, [6 x i8] undef }, align 8
@g_717 = internal constant { i16, [6 x i8] } { i16 -8, [6 x i8] undef }, align 8
@g_1325 = internal global { i16, [6 x i8] } { i16 -1, [6 x i8] undef }, align 8
@g_1615 = internal global { i16, [6 x i8] } { i16 7, [6 x i8] undef }, align 8
@g_1666 = internal global { i16, [6 x i8] } { i16 -4, [6 x i8] undef }, align 8
@g_1888 = internal global { i16, [6 x i8] } { i16 32705, [6 x i8] undef }, align 8
@g_1921 = internal constant { i16, [6 x i8] } { i16 16201, [6 x i8] undef }, align 8
@.str.56 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i32, i32* @g_4, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %133, %89
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %97, label %136

; <label>:97                                      ; preds = %94
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %129, %97
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 7
  br i1 %100, label %101, label %132

; <label>:101                                     ; preds = %98
  %102 = load i32, i32* %j, align 4, !tbaa !1
  %103 = sext i32 %102 to i64
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x [7 x %union.U1]], [4 x [7 x %union.U1]]* @g_27, i32 0, i64 %105
  %107 = getelementptr inbounds [7 x %union.U1], [7 x %union.U1]* %106, i32 0, i64 %103
  %108 = bitcast %union.U1* %107 to i32*
  %109 = load i32, i32* %108, align 4, !tbaa !1
  %110 = zext i32 %109 to i64
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %111)
  %112 = load i32, i32* %j, align 4, !tbaa !1
  %113 = sext i32 %112 to i64
  %114 = load i32, i32* %i, align 4, !tbaa !1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x [7 x %union.U1]], [4 x [7 x %union.U1]]* @g_27, i32 0, i64 %115
  %117 = getelementptr inbounds [7 x %union.U1], [7 x %union.U1]* %116, i32 0, i64 %113
  %118 = bitcast %union.U1* %117 to i8*
  %119 = load i8, i8* %118, align 1, !tbaa !9
  %120 = zext i8 %119 to i64
  %121 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %121)
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

; <label>:124                                     ; preds = %101
  %125 = load i32, i32* %i, align 4, !tbaa !1
  %126 = load i32, i32* %j, align 4, !tbaa !1
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %125, i32 %126)
  br label %128

; <label>:128                                     ; preds = %124, %101
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
  %137 = load i32, i32* @g_32, align 4, !tbaa !1
  %138 = zext i32 %137 to i64
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %139)
  %140 = load i32, i32* @g_61, align 4, !tbaa !1
  %141 = sext i32 %140 to i64
  %142 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %142)
  %143 = load i8, i8* bitcast (%union.U1* @g_76 to i8*), align 1, !tbaa !9
  %144 = zext i8 %143 to i64
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %145)
  %146 = load i32, i32* @g_80, align 4, !tbaa !1
  %147 = sext i32 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %148)
  %149 = load i32, i32* @g_82, align 4, !tbaa !1
  %150 = zext i32 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %151)
  %152 = load i32, i32* @g_89, align 4, !tbaa !1
  %153 = sext i32 %152 to i64
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %154)
  %155 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, i8, [2 x i8] }* @g_95 to %union.U0*), i32 0, i32 0), align 4
  %156 = and i16 %155, 2047
  %157 = zext i16 %156 to i32
  %158 = zext i32 %157 to i64
  %159 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 %159)
  %160 = load i32, i32* @g_96, align 4, !tbaa !1
  %161 = zext i32 %160 to i64
  %162 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %162)
  %163 = load i32, i32* @g_99, align 4, !tbaa !1
  %164 = sext i32 %163 to i64
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %165)
  %166 = load i16, i16* @g_103, align 2, !tbaa !10
  %167 = sext i16 %166 to i64
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %168)
  %169 = load i16, i16* @g_104, align 2, !tbaa !10
  %170 = sext i16 %169 to i64
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %171)
  %172 = load i16, i16* @g_106, align 2, !tbaa !10
  %173 = sext i16 %172 to i64
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %174)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %175

; <label>:175                                     ; preds = %191, %136
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %177 = icmp slt i32 %176, 8
  br i1 %177, label %178, label %194

; <label>:178                                     ; preds = %175
  %179 = load i32, i32* %i, align 4, !tbaa !1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* @g_118, i32 0, i64 %180
  %182 = load i32, i32* %181, align 4, !tbaa !1
  %183 = sext i32 %182 to i64
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %184)
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

; <label>:187                                     ; preds = %178
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %188)
  br label %190

; <label>:190                                     ; preds = %187, %178
  br label %191

; <label>:191                                     ; preds = %190
  %192 = load i32, i32* %i, align 4, !tbaa !1
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %i, align 4, !tbaa !1
  br label %175

; <label>:194                                     ; preds = %175
  %195 = load i64, i64* @g_148, align 8, !tbaa !7
  %196 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %196)
  %197 = load i8, i8* @g_177, align 1, !tbaa !9
  %198 = sext i8 %197 to i64
  %199 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %199)
  %200 = load i8, i8* @g_222, align 1, !tbaa !9
  %201 = sext i8 %200 to i64
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %202)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %203

; <label>:203                                     ; preds = %218, %194
  %204 = load i32, i32* %i, align 4, !tbaa !1
  %205 = icmp slt i32 %204, 8
  br i1 %205, label %206, label %221

; <label>:206                                     ; preds = %203
  %207 = load i32, i32* %i, align 4, !tbaa !1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [8 x i64], [8 x i64]* @g_234, i32 0, i64 %208
  %210 = load i64, i64* %209, align 8, !tbaa !7
  %211 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %211)
  %212 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

; <label>:214                                     ; preds = %206
  %215 = load i32, i32* %i, align 4, !tbaa !1
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %215)
  br label %217

; <label>:217                                     ; preds = %214, %206
  br label %218

; <label>:218                                     ; preds = %217
  %219 = load i32, i32* %i, align 4, !tbaa !1
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %i, align 4, !tbaa !1
  br label %203

; <label>:221                                     ; preds = %203
  %222 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 7621754917800175815, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %222)
  %223 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_285, i32 0, i32 0), align 2, !tbaa !10
  %224 = zext i16 %223 to i64
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %225)
  %226 = load volatile i32, i32* @g_404, align 4, !tbaa !1
  %227 = zext i32 %226 to i64
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %228)
  %229 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_445, i32 0, i32 0), align 2, !tbaa !10
  %230 = zext i16 %229 to i64
  %231 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %231)
  %232 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_502, i32 0, i32 0), align 2, !tbaa !10
  %233 = zext i16 %232 to i64
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %234)
  %235 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_558, i32 0, i32 0), align 2, !tbaa !10
  %236 = zext i16 %235 to i64
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %236, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %237)
  %238 = load i16, i16* @g_598, align 2, !tbaa !10
  %239 = zext i16 %238 to i64
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %240)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %241

; <label>:241                                     ; preds = %269, %221
  %242 = load i32, i32* %i, align 4, !tbaa !1
  %243 = icmp slt i32 %242, 3
  br i1 %243, label %244, label %272

; <label>:244                                     ; preds = %241
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %245

; <label>:245                                     ; preds = %265, %244
  %246 = load i32, i32* %j, align 4, !tbaa !1
  %247 = icmp slt i32 %246, 7
  br i1 %247, label %248, label %268

; <label>:248                                     ; preds = %245
  %249 = load i32, i32* %j, align 4, !tbaa !1
  %250 = sext i32 %249 to i64
  %251 = load i32, i32* %i, align 4, !tbaa !1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [3 x [7 x i16]], [3 x [7 x i16]]* @g_619, i32 0, i64 %252
  %254 = getelementptr inbounds [7 x i16], [7 x i16]* %253, i32 0, i64 %250
  %255 = load i16, i16* %254, align 2, !tbaa !10
  %256 = zext i16 %255 to i64
  %257 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 %257)
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

; <label>:260                                     ; preds = %248
  %261 = load i32, i32* %i, align 4, !tbaa !1
  %262 = load i32, i32* %j, align 4, !tbaa !1
  %263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %261, i32 %262)
  br label %264

; <label>:264                                     ; preds = %260, %248
  br label %265

; <label>:265                                     ; preds = %264
  %266 = load i32, i32* %j, align 4, !tbaa !1
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %j, align 4, !tbaa !1
  br label %245

; <label>:268                                     ; preds = %245
  br label %269

; <label>:269                                     ; preds = %268
  %270 = load i32, i32* %i, align 4, !tbaa !1
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %i, align 4, !tbaa !1
  br label %241

; <label>:272                                     ; preds = %241
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -2073224885, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %273)
  %274 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_717, i32 0, i32 0), align 2, !tbaa !10
  %275 = zext i16 %274 to i64
  %276 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %275, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %276)
  %277 = load i64, i64* @g_748, align 8, !tbaa !7
  %278 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %277, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %278)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %279

; <label>:279                                     ; preds = %295, %272
  %280 = load i32, i32* %i, align 4, !tbaa !1
  %281 = icmp slt i32 %280, 4
  br i1 %281, label %282, label %298

; <label>:282                                     ; preds = %279
  %283 = load i32, i32* %i, align 4, !tbaa !1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [4 x i8], [4 x i8]* @g_754, i32 0, i64 %284
  %286 = load i8, i8* %285, align 1, !tbaa !9
  %287 = zext i8 %286 to i64
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %287, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %288)
  %289 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

; <label>:291                                     ; preds = %282
  %292 = load i32, i32* %i, align 4, !tbaa !1
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %292)
  br label %294

; <label>:294                                     ; preds = %291, %282
  br label %295

; <label>:295                                     ; preds = %294
  %296 = load i32, i32* %i, align 4, !tbaa !1
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %i, align 4, !tbaa !1
  br label %279

; <label>:298                                     ; preds = %279
  %299 = load i8, i8* @g_773, align 1, !tbaa !9
  %300 = sext i8 %299 to i64
  %301 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %300, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %301)
  %302 = load volatile i32, i32* @g_854, align 4, !tbaa !1
  %303 = sext i32 %302 to i64
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %304)
  %305 = load volatile i8, i8* @g_871, align 1, !tbaa !9
  %306 = sext i8 %305 to i64
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %307)
  %308 = load i32, i32* @g_985, align 4, !tbaa !1
  %309 = zext i32 %308 to i64
  %310 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %309, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %310)
  %311 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 2305276437, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %311)
  %312 = load i16, i16* @g_1120, align 2, !tbaa !10
  %313 = zext i16 %312 to i64
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %314)
  %315 = load i32, i32* @g_1127, align 4, !tbaa !1
  %316 = sext i32 %315 to i64
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %317)
  %318 = load i32, i32* @g_1194, align 4, !tbaa !1
  %319 = sext i32 %318 to i64
  %320 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %319, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %320)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %321

; <label>:321                                     ; preds = %337, %298
  %322 = load i32, i32* %i, align 4, !tbaa !1
  %323 = icmp slt i32 %322, 3
  br i1 %323, label %324, label %340

; <label>:324                                     ; preds = %321
  %325 = load i32, i32* %i, align 4, !tbaa !1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [3 x i32], [3 x i32]* @g_1236, i32 0, i64 %326
  %328 = load i32, i32* %327, align 4, !tbaa !1
  %329 = zext i32 %328 to i64
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 %330)
  %331 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

; <label>:333                                     ; preds = %324
  %334 = load i32, i32* %i, align 4, !tbaa !1
  %335 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %334)
  br label %336

; <label>:336                                     ; preds = %333, %324
  br label %337

; <label>:337                                     ; preds = %336
  %338 = load i32, i32* %i, align 4, !tbaa !1
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %i, align 4, !tbaa !1
  br label %321

; <label>:340                                     ; preds = %321
  %341 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1325, i32 0, i32 0), align 2, !tbaa !10
  %342 = zext i16 %341 to i64
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %342, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 %343)
  %344 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -804881051701744683, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %344)
  %345 = load volatile i32, i32* @g_1597, align 4, !tbaa !1
  %346 = zext i32 %345 to i64
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %346, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %347)
  %348 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1615, i32 0, i32 0), align 2, !tbaa !10
  %349 = zext i16 %348 to i64
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 %350)
  %351 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1666, i32 0, i32 0), align 2, !tbaa !10
  %352 = zext i16 %351 to i64
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %352, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 %353)
  %354 = load i8, i8* @g_1692, align 1, !tbaa !9
  %355 = zext i8 %354 to i64
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %355, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %356)
  %357 = load volatile i32, i32* @g_1717, align 4, !tbaa !1
  %358 = zext i32 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %359)
  %360 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1888, i32 0, i32 0), align 2, !tbaa !10
  %361 = zext i16 %360 to i64
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %361, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i32 %362)
  %363 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1921, i32 0, i32 0), align 2, !tbaa !10
  %364 = zext i16 %363 to i64
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 %365)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %366

; <label>:366                                     ; preds = %381, %340
  %367 = load i32, i32* %i, align 4, !tbaa !1
  %368 = icmp slt i32 %367, 1
  br i1 %368, label %369, label %384

; <label>:369                                     ; preds = %366
  %370 = load i32, i32* %i, align 4, !tbaa !1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [1 x i64], [1 x i64]* @g_1988, i32 0, i64 %371
  %373 = load i64, i64* %372, align 8, !tbaa !7
  %374 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %373, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32 %374)
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %380

; <label>:377                                     ; preds = %369
  %378 = load i32, i32* %i, align 4, !tbaa !1
  %379 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %378)
  br label %380

; <label>:380                                     ; preds = %377, %369
  br label %381

; <label>:381                                     ; preds = %380
  %382 = load i32, i32* %i, align 4, !tbaa !1
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %i, align 4, !tbaa !1
  br label %366

; <label>:384                                     ; preds = %366
  %385 = load volatile i8, i8* @g_1991, align 1, !tbaa !9
  %386 = sext i8 %385 to i64
  %387 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %386, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %387)
  %388 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %389 = zext i32 %388 to i64
  %390 = xor i64 %389, 4294967295
  %391 = trunc i64 %390 to i32
  %392 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %391, i32 %392)
  %393 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %393) #1
  %394 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %394) #1
  %395 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %395) #1
  %396 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %396) #1
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
  %l_2 = alloca i16, align 2
  %l_13 = alloca i32*, align 8
  %l_17 = alloca i64, align 8
  %l_30 = alloca i16, align 2
  %l_31 = alloca [7 x i32*], align 16
  %l_33 = alloca i32, align 4
  %l_1996 = alloca [7 x [1 x i32**]], align 16
  %l_1997 = alloca i32*, align 8
  %l_1998 = alloca i32*, align 8
  %l_1999 = alloca i32*, align 8
  %l_2000 = alloca [8 x i32*], align 16
  %l_2001 = alloca i32, align 4
  %l_2002 = alloca [2 x [6 x [3 x i64]]], align 16
  %l_2005 = alloca [10 x [8 x [3 x i8**]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = alloca %union.U0, align 4
  %2 = bitcast i16* %l_2 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #1
  store i16 0, i16* %l_2, align 2, !tbaa !10
  %3 = bitcast i32** %l_13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* null, i32** %l_13, align 8, !tbaa !5
  %4 = bitcast i64* %l_17 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64 4, i64* %l_17, align 8, !tbaa !7
  %5 = bitcast i16* %l_30 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  store i16 -3, i16* %l_30, align 2, !tbaa !10
  %6 = bitcast [7 x i32*]* %l_31 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %6) #1
  %7 = bitcast i32* %l_33 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1845972750, i32* %l_33, align 4, !tbaa !1
  %8 = bitcast [7 x [1 x i32**]]* %l_1996 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %8) #1
  %9 = bitcast [7 x [1 x i32**]]* %l_1996 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([7 x [1 x i32**]]* @func_1.l_1996 to i8*), i64 56, i32 16, i1 false)
  %10 = bitcast i32** %l_1997 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* @g_4, i32** %l_1997, align 8, !tbaa !5
  %11 = bitcast i32** %l_1998 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32* null, i32** %l_1998, align 8, !tbaa !5
  %12 = bitcast i32** %l_1999 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32* null, i32** %l_1999, align 8, !tbaa !5
  %13 = bitcast [8 x i32*]* %l_2000 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %13) #1
  %14 = bitcast [8 x i32*]* %l_2000 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast ([8 x i32*]* @func_1.l_2000 to i8*), i64 64, i32 16, i1 false)
  %15 = bitcast i32* %l_2001 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 1, i32* %l_2001, align 4, !tbaa !1
  %16 = bitcast [2 x [6 x [3 x i64]]]* %l_2002 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %16) #1
  %17 = bitcast [2 x [6 x [3 x i64]]]* %l_2002 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast ([2 x [6 x [3 x i64]]]* @func_1.l_2002 to i8*), i64 288, i32 16, i1 false)
  %18 = bitcast [10 x [8 x [3 x i8**]]]* %l_2005 to i8*
  call void @llvm.lifetime.start(i64 1920, i8* %18) #1
  %19 = bitcast [10 x [8 x [3 x i8**]]]* %l_2005 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast ([10 x [8 x [3 x i8**]]]* @func_1.l_2005 to i8*), i64 1920, i32 16, i1 false)
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %23

; <label>:23                                      ; preds = %30, %0
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %25 = icmp slt i32 %24, 7
  br i1 %25, label %26, label %33

; <label>:26                                      ; preds = %23
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_31, i32 0, i64 %28
  store i32* @g_32, i32** %29, align 8, !tbaa !5
  br label %30

; <label>:30                                      ; preds = %26
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i, align 4, !tbaa !1
  br label %23

; <label>:33                                      ; preds = %23
  %34 = load i16, i16* %l_2, align 2, !tbaa !10
  %35 = zext i16 %34 to i32
  %36 = load volatile i32*, i32** @g_3, align 8, !tbaa !5
  store i32 %35, i32* %36, align 4, !tbaa !1
  %37 = load i32*, i32** %l_13, align 8, !tbaa !5
  %38 = load i16, i16* %l_2, align 2, !tbaa !10
  %39 = zext i16 %38 to i32
  store i32* null, i32** @g_16, align 8, !tbaa !5
  %40 = load i64, i64* %l_17, align 8, !tbaa !7
  %41 = load i32, i32* @g_4, align 4, !tbaa !1
  %42 = trunc i32 %41 to i8
  %43 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %42, i8 zeroext 112)
  %44 = zext i8 %43 to i64
  %45 = icmp uge i64 %40, %44
  br i1 %45, label %83, label %46

; <label>:46                                      ; preds = %33
  %47 = load i16, i16* %l_30, align 2, !tbaa !10
  %48 = sext i16 %47 to i64
  %49 = call i64 @safe_mod_func_uint64_t_u_u(i64 %48, i64 4312075670732673581)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %l_33, align 4, !tbaa !1
  %51 = load i32, i32* getelementptr inbounds ([4 x [7 x %union.U1]], [4 x [7 x %union.U1]]* @g_27, i32 0, i64 1, i64 4, i32 0), align 4, !tbaa !1
  %52 = icmp ult i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i16, i16* %l_2, align 2, !tbaa !10
  %55 = zext i16 %54 to i32
  %56 = or i32 %53, %55
  %57 = load i16, i16* %l_30, align 2, !tbaa !10
  %58 = sext i16 %57 to i32
  %59 = or i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = icmp sgt i64 %60, 833578584
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* @g_32, align 4, !tbaa !1
  %64 = xor i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

; <label>:66                                      ; preds = %46
  %67 = load i32, i32* @g_32, align 4, !tbaa !1
  %68 = icmp ne i32 %67, 0
  br label %69

; <label>:69                                      ; preds = %66, %46
  %70 = phi i1 [ true, %46 ], [ %68, %66 ]
  %71 = zext i1 %70 to i32
  %72 = load i8, i8* bitcast (%union.U1* getelementptr inbounds ([4 x [7 x %union.U1]], [4 x [7 x %union.U1]]* @g_27, i32 0, i64 1, i64 4) to i8*), align 1, !tbaa !9
  %73 = zext i8 %72 to i64
  %74 = load i32, i32* getelementptr inbounds ([4 x [7 x %union.U1]], [4 x [7 x %union.U1]]* @g_27, i32 0, i64 1, i64 4, i32 0), align 4
  %75 = call i32* @func_23(i32 %74, i32 %71, i64 %73)
  %76 = load volatile i32**, i32*** @g_561, align 8, !tbaa !5
  %77 = load i32*, i32** %76, align 8, !tbaa !5
  %78 = call i32 @func_20(i32* %75, i32* %77)
  %79 = bitcast %union.U0* %1 to i32*
  store i32 %78, i32* %79, align 4
  %80 = load i16, i16* %l_2, align 2, !tbaa !10
  %81 = zext i16 %80 to i32
  %82 = icmp ne i32 %81, 0
  br label %83

; <label>:83                                      ; preds = %69, %33
  %84 = phi i1 [ true, %33 ], [ %82, %69 ]
  %85 = zext i1 %84 to i32
  %86 = load i16, i16* %l_2, align 2, !tbaa !10
  %87 = zext i16 %86 to i32
  %88 = icmp sge i32 %85, %87
  %89 = zext i1 %88 to i32
  %90 = load i16, i16* %l_2, align 2, !tbaa !10
  %91 = zext i16 %90 to i32
  %92 = icmp sge i32 %89, %91
  %93 = zext i1 %92 to i32
  %94 = icmp sle i32 %39, 1
  %95 = zext i1 %94 to i32
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_31, i32 0, i64 2
  %98 = load i32*, i32** %97, align 8, !tbaa !5
  %99 = call signext i16 @func_9(i32* %37, i8 zeroext %96, i32* %98)
  %100 = load i16, i16* getelementptr inbounds ([3 x [7 x i16]], [3 x [7 x i16]]* @g_619, i32 0, i64 1, i64 4), align 2, !tbaa !10
  %101 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_31, i32 0, i64 1
  %102 = load i32*, i32** %101, align 8, !tbaa !5
  %103 = call i32* @func_5(i16 signext %99, i16 signext %100, i32* %102)
  %104 = load volatile i32**, i32*** @g_373, align 8, !tbaa !5
  store i32* %103, i32** %104, align 8, !tbaa !5
  %105 = getelementptr inbounds [2 x [6 x [3 x i64]]], [2 x [6 x [3 x i64]]]* %l_2002, i32 0, i64 1
  %106 = getelementptr inbounds [6 x [3 x i64]], [6 x [3 x i64]]* %105, i32 0, i64 4
  %107 = getelementptr inbounds [3 x i64], [3 x i64]* %106, i32 0, i64 0
  %108 = load i64, i64* %107, align 8, !tbaa !7
  %109 = add i64 %108, 1
  store i64 %109, i64* %107, align 8, !tbaa !7
  %110 = getelementptr inbounds [10 x [8 x [3 x i8**]]], [10 x [8 x [3 x i8**]]]* %l_2005, i32 0, i64 9
  %111 = getelementptr inbounds [8 x [3 x i8**]], [8 x [3 x i8**]]* %110, i32 0, i64 4
  %112 = getelementptr inbounds [3 x i8**], [3 x i8**]* %111, i32 0, i64 1
  %113 = load i8**, i8*** %112, align 8, !tbaa !5
  %114 = getelementptr inbounds [10 x [8 x [3 x i8**]]], [10 x [8 x [3 x i8**]]]* %l_2005, i32 0, i64 9
  %115 = getelementptr inbounds [8 x [3 x i8**]], [8 x [3 x i8**]]* %114, i32 0, i64 4
  %116 = getelementptr inbounds [3 x i8**], [3 x i8**]* %115, i32 0, i64 1
  %117 = load i8**, i8*** %116, align 8, !tbaa !5
  %118 = icmp eq i8** %113, %117
  %119 = zext i1 %118 to i32
  %120 = load i32*, i32** @g_207, align 8, !tbaa !5
  %121 = load i32, i32* %120, align 4, !tbaa !1
  %122 = or i32 %121, %119
  store i32 %122, i32* %120, align 4, !tbaa !1
  %123 = load i32*, i32** %l_1997, align 8, !tbaa !5
  store i32 %122, i32* %123, align 4, !tbaa !1
  %124 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1666, i32 0, i32 0), align 2, !tbaa !10
  %125 = zext i16 %124 to i32
  %126 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast [10 x [8 x [3 x i8**]]]* %l_2005 to i8*
  call void @llvm.lifetime.end(i64 1920, i8* %129) #1
  %130 = bitcast [2 x [6 x [3 x i64]]]* %l_2002 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %130) #1
  %131 = bitcast i32* %l_2001 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast [8 x i32*]* %l_2000 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %132) #1
  %133 = bitcast i32** %l_1999 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast i32** %l_1998 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i32** %l_1997 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast [7 x [1 x i32**]]* %l_1996 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %136) #1
  %137 = bitcast i32* %l_33 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast [7 x i32*]* %l_31 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %138) #1
  %139 = bitcast i16* %l_30 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %139) #1
  %140 = bitcast i64* %l_17 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i32** %l_13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i16* %l_2 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %142) #1
  ret i32 %125
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32* @func_5(i16 signext %p_6, i16 signext %p_7, i32* %p_8) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i32*, align 8
  %l_1110 = alloca %union.U0*, align 8
  %l_1115 = alloca i32, align 4
  %l_1117 = alloca [2 x [3 x i32]], align 16
  %l_1119 = alloca [1 x i32], align 4
  %l_1196 = alloca i32, align 4
  %l_1208 = alloca i8***, align 8
  %l_1378 = alloca %union.U0****, align 8
  %l_1377 = alloca %union.U0*****, align 8
  %l_1397 = alloca i64*, align 8
  %l_1410 = alloca [4 x i16], align 2
  %l_1417 = alloca i64*****, align 8
  %l_1418 = alloca i32*, align 8
  %l_1419 = alloca i32*, align 8
  %l_1420 = alloca i32*, align 8
  %l_1421 = alloca i32*, align 8
  %l_1422 = alloca i32*, align 8
  %l_1423 = alloca i32*, align 8
  %l_1424 = alloca i32*, align 8
  %l_1425 = alloca [3 x [10 x i32*]], align 16
  %l_1426 = alloca i32, align 4
  %l_1427 = alloca i32, align 4
  %l_1508 = alloca [2 x i16***], align 16
  %l_1536 = alloca i32, align 4
  %l_1620 = alloca i32**, align 8
  %l_1649 = alloca [6 x i16], align 2
  %l_1655 = alloca i64, align 8
  %l_1680 = alloca [2 x i32], align 4
  %l_1783 = alloca i64*, align 8
  %l_1953 = alloca %union.U2*, align 8
  %l_1985 = alloca i64, align 8
  %l_1989 = alloca i64, align 8
  %l_1990 = alloca i32, align 4
  %l_1993 = alloca [6 x [1 x [4 x i64]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1102 = alloca %union.U2*, align 8
  %l_1101 = alloca %union.U2**, align 8
  %l_1108 = alloca i16**, align 8
  %l_1107 = alloca i16***, align 8
  %l_1116 = alloca i32, align 4
  %l_1118 = alloca [8 x i32], align 16
  %l_1123 = alloca i32*, align 8
  %l_1124 = alloca i32*, align 8
  %l_1125 = alloca i32*, align 8
  %l_1126 = alloca [6 x i32*], align 16
  %l_1128 = alloca i32, align 4
  %l_1138 = alloca i32, align 4
  %l_1142 = alloca i32***, align 8
  %l_1177 = alloca i32, align 4
  %l_1195 = alloca i64, align 8
  %l_1232 = alloca i64, align 8
  %i1 = alloca i32, align 4
  %l_1114 = alloca [5 x [1 x [7 x i32*]]], align 16
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k4 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %l_1131 = alloca [1 x %union.U0*], align 8
  %l_1132 = alloca i32, align 4
  %l_1180 = alloca i32, align 4
  %l_1184 = alloca [6 x i32], align 16
  %l_1193 = alloca i64, align 8
  %l_1214 = alloca i64, align 8
  %l_1231 = alloca i32*, align 8
  %l_1235 = alloca i16, align 2
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %l_1242 = alloca i32, align 4
  %l_1249 = alloca i16*, align 8
  %l_1256 = alloca i16*, align 8
  %l_1257 = alloca i16*, align 8
  %l_1258 = alloca i8, align 1
  %l_1267 = alloca i32, align 4
  %l_1276 = alloca i8, align 1
  %l_1294 = alloca i64***, align 8
  %l_1319 = alloca i32, align 4
  %l_1321 = alloca %union.U0*, align 8
  %l_1320 = alloca %union.U0**, align 8
  %l_1346 = alloca i32, align 4
  %l_1347 = alloca [1 x [5 x i64]], align 16
  %l_1358 = alloca %union.U0***, align 8
  %l_1386 = alloca i64, align 8
  %l_1405 = alloca i32, align 4
  %l_1406 = alloca i32*, align 8
  %l_1407 = alloca i32*, align 8
  %l_1408 = alloca i32*, align 8
  %l_1409 = alloca [7 x i32*], align 16
  %i8 = alloca i32, align 4
  %j9 = alloca i32, align 4
  %l_1261 = alloca [3 x [8 x [8 x i16]]], align 16
  %l_1270 = alloca [1 x [8 x i32*]], align 16
  %l_1274 = alloca i32, align 4
  %l_1283 = alloca i16**, align 8
  %l_1326 = alloca %union.U1, align 4
  %l_1362 = alloca %union.U0***, align 8
  %l_1404 = alloca i8, align 1
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %k12 = alloca i32, align 4
  %5 = alloca %union.U1, align 4
  %l_1266 = alloca i16**, align 8
  %l_1287 = alloca i16*, align 8
  %l_1286 = alloca [2 x i16**], align 16
  %l_1299 = alloca i32, align 4
  %i13 = alloca i32, align 4
  %i14 = alloca i32, align 4
  %l_1268 = alloca i8, align 1
  %l_1269 = alloca i32*, align 8
  %l_1272 = alloca i32, align 4
  %l_1285 = alloca i16*, align 8
  %l_1284 = alloca i16**, align 8
  %l_1296 = alloca [8 x i16*], align 16
  %i15 = alloca i32, align 4
  %6 = alloca i32
  %l_1271 = alloca i32*, align 8
  %l_1273 = alloca i32*, align 8
  %l_1275 = alloca i32*, align 8
  %l_1295 = alloca i64****, align 8
  %l_1297 = alloca i16**, align 8
  %l_1298 = alloca [4 x i64], align 16
  %l_1318 = alloca [10 x %union.U1], align 16
  %l_1322 = alloca %union.U0***, align 8
  %i16 = alloca i32, align 4
  %7 = alloca %union.U1, align 4
  %8 = alloca %union.U1, align 4
  %9 = alloca %union.U1, align 4
  %l_1339 = alloca i32, align 4
  %l_1340 = alloca i32**, align 8
  %i17 = alloca i32, align 4
  %10 = alloca %union.U1, align 4
  %l_1344 = alloca i32*, align 8
  %l_1345 = alloca [1 x i32*], align 8
  %i18 = alloca i32, align 4
  %l_1351 = alloca %union.U1**, align 8
  %l_1366 = alloca [6 x [7 x [4 x %union.U1**]]], align 16
  %l_1383 = alloca i32, align 4
  %l_1388 = alloca %union.U0***, align 8
  %l_1398 = alloca i64*, align 8
  %i21 = alloca i32, align 4
  %j22 = alloca i32, align 4
  %k23 = alloca i32, align 4
  %l_1359 = alloca [7 x [9 x %union.U0****]], align 16
  %l_1363 = alloca i16*, align 8
  %l_1385 = alloca i32, align 4
  %l_1399 = alloca i64*, align 8
  %i24 = alloca i32, align 4
  %j25 = alloca i32, align 4
  %l_1439 = alloca [7 x [4 x [8 x i8]]], align 16
  %l_1440 = alloca i16, align 2
  %l_1445 = alloca i32, align 4
  %l_1456 = alloca [7 x %union.U0*], align 16
  %l_1455 = alloca %union.U0**, align 8
  %l_1517 = alloca [4 x i64****], align 16
  %l_1516 = alloca i64*****, align 8
  %l_1520 = alloca i32, align 4
  %l_1595 = alloca i32, align 4
  %l_1596 = alloca i32, align 4
  %l_1621 = alloca i32, align 4
  %l_1645 = alloca %union.U1, align 4
  %l_1654 = alloca i32, align 4
  %l_1700 = alloca i32, align 4
  %l_1708 = alloca [8 x i8], align 1
  %l_1712 = alloca i16**, align 8
  %l_1772 = alloca i16**, align 8
  %l_1774 = alloca i8, align 1
  %l_1782 = alloca i64*, align 8
  %l_1785 = alloca i64, align 8
  %l_1788 = alloca i64, align 8
  %l_1814 = alloca i16, align 2
  %l_1850 = alloca [9 x [5 x [5 x i32]]], align 16
  %l_1868 = alloca %union.U0, align 4
  %l_1896 = alloca i16, align 2
  %l_1943 = alloca i32*, align 8
  %l_1992 = alloca [3 x [8 x i64]], align 16
  %i28 = alloca i32, align 4
  %j29 = alloca i32, align 4
  %k30 = alloca i32, align 4
  store i16 %p_6, i16* %2, align 2, !tbaa !10
  store i16 %p_7, i16* %3, align 2, !tbaa !10
  store i32* %p_8, i32** %4, align 8, !tbaa !5
  %11 = bitcast %union.U0** %l_1110 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %union.U0* bitcast ({ i8, i8, [2 x i8] }* @g_95 to %union.U0*), %union.U0** %l_1110, align 8, !tbaa !5
  %12 = bitcast i32* %l_1115 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 344119134, i32* %l_1115, align 4, !tbaa !1
  %13 = bitcast [2 x [3 x i32]]* %l_1117 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %13) #1
  %14 = bitcast [1 x i32]* %l_1119 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %l_1196 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %l_1196, align 4, !tbaa !1
  %16 = bitcast i8**** %l_1208 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i8*** @g_480, i8**** %l_1208, align 8, !tbaa !5
  %17 = bitcast %union.U0***** %l_1378 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store %union.U0**** @g_1360, %union.U0***** %l_1378, align 8, !tbaa !5
  %18 = bitcast %union.U0****** %l_1377 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store %union.U0***** %l_1378, %union.U0****** %l_1377, align 8, !tbaa !5
  %19 = bitcast i64** %l_1397 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64* @g_748, i64** %l_1397, align 8, !tbaa !5
  %20 = bitcast [4 x i16]* %l_1410 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i64****** %l_1417 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store volatile i64***** getelementptr inbounds ([2 x i64****], [2 x i64****]* @g_1414, i32 0, i64 0), i64****** %l_1417, align 8, !tbaa !5
  %22 = bitcast i32** %l_1418 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i32* @g_4, i32** %l_1418, align 8, !tbaa !5
  %23 = bitcast i32** %l_1419 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i32* %l_1115, i32** %l_1419, align 8, !tbaa !5
  %24 = bitcast i32** %l_1420 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i32* %l_1115, i32** %l_1420, align 8, !tbaa !5
  %25 = bitcast i32** %l_1421 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1119, i32 0, i64 0
  store i32* %26, i32** %l_1421, align 8, !tbaa !5
  %27 = bitcast i32** %l_1422 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i32* %l_1115, i32** %l_1422, align 8, !tbaa !5
  %28 = bitcast i32** %l_1423 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i32* @g_1127, i32** %l_1423, align 8, !tbaa !5
  %29 = bitcast i32** %l_1424 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i32* null, i32** %l_1424, align 8, !tbaa !5
  %30 = bitcast [3 x [10 x i32*]]* %l_1425 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %30) #1
  %31 = bitcast [3 x [10 x i32*]]* %l_1425 to i8*
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 240, i32 8, i1 false)
  %32 = getelementptr inbounds [3 x [10 x i32*]], [3 x [10 x i32*]]* %l_1425, i64 0, i64 0
  %33 = getelementptr inbounds [10 x i32*], [10 x i32*]* %32, i64 0, i64 0
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  %43 = getelementptr inbounds [10 x i32*], [10 x i32*]* %32, i64 1
  %44 = getelementptr inbounds [10 x i32*], [10 x i32*]* %43, i64 0, i64 0
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  %46 = getelementptr inbounds i32*, i32** %45, i64 1
  %47 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %l_1117, i32 0, i64 1
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %47, i32 0, i64 1
  store i32* %48, i32** %46, !tbaa !5
  %49 = getelementptr inbounds i32*, i32** %46, i64 1
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  %52 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %l_1117, i32 0, i64 1
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %52, i32 0, i64 1
  store i32* %53, i32** %51, !tbaa !5
  %54 = getelementptr inbounds i32*, i32** %51, i64 1
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  %57 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %l_1117, i32 0, i64 1
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %57, i32 0, i64 1
  store i32* %58, i32** %56, !tbaa !5
  %59 = getelementptr inbounds i32*, i32** %56, i64 1
  %60 = getelementptr inbounds [10 x i32*], [10 x i32*]* %43, i64 1
  %61 = getelementptr inbounds [10 x i32*], [10 x i32*]* %60, i64 0, i64 0
  %62 = getelementptr inbounds i32*, i32** %61, i64 1
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  %65 = getelementptr inbounds i32*, i32** %64, i64 1
  %66 = getelementptr inbounds i32*, i32** %65, i64 1
  %67 = getelementptr inbounds i32*, i32** %66, i64 1
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  %70 = getelementptr inbounds i32*, i32** %69, i64 1
  %71 = bitcast i32* %l_1426 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  store i32 0, i32* %l_1426, align 4, !tbaa !1
  %72 = bitcast i32* %l_1427 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  store i32 -803688955, i32* %l_1427, align 4, !tbaa !1
  %73 = bitcast [2 x i16***]* %l_1508 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %73) #1
  %74 = bitcast i32* %l_1536 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  store i32 1, i32* %l_1536, align 4, !tbaa !1
  %75 = bitcast i32*** %l_1620 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  store i32** @g_94, i32*** %l_1620, align 8, !tbaa !5
  %76 = bitcast [6 x i16]* %l_1649 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %76) #1
  %77 = bitcast [6 x i16]* %l_1649 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* bitcast ([6 x i16]* @func_5.l_1649 to i8*), i64 12, i32 2, i1 false)
  %78 = bitcast i64* %l_1655 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  store i64 -6102385116757738735, i64* %l_1655, align 8, !tbaa !7
  %79 = bitcast [2 x i32]* %l_1680 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  %80 = bitcast i64** %l_1783 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  store i64* getelementptr inbounds (%union.U2, %union.U2* bitcast ({ i16, [6 x i8] }* @g_558 to %union.U2*), i32 0, i32 0), i64** %l_1783, align 8, !tbaa !5
  %81 = bitcast %union.U2** %l_1953 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  store %union.U2* null, %union.U2** %l_1953, align 8, !tbaa !5
  %82 = bitcast i64* %l_1985 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  store i64 0, i64* %l_1985, align 8, !tbaa !7
  %83 = bitcast i64* %l_1989 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  store i64 -1, i64* %l_1989, align 8, !tbaa !7
  %84 = bitcast i32* %l_1990 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  store i32 -5, i32* %l_1990, align 4, !tbaa !1
  %85 = bitcast [6 x [1 x [4 x i64]]]* %l_1993 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %85) #1
  %86 = bitcast [6 x [1 x [4 x i64]]]* %l_1993 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* bitcast ([6 x [1 x [4 x i64]]]* @func_5.l_1993 to i8*), i64 192, i32 16, i1 false)
  %87 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  %89 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %90

; <label>:90                                      ; preds = %108, %0
  %91 = load i32, i32* %i, align 4, !tbaa !1
  %92 = icmp slt i32 %91, 2
  br i1 %92, label %93, label %111

; <label>:93                                      ; preds = %90
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %104, %93
  %95 = load i32, i32* %j, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %97, label %107

; <label>:97                                      ; preds = %94
  %98 = load i32, i32* %j, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* %i, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %l_1117, i32 0, i64 %101
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %102, i32 0, i64 %99
  store i32 1407770093, i32* %103, align 4, !tbaa !1
  br label %104

; <label>:104                                     ; preds = %97
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %j, align 4, !tbaa !1
  br label %94

; <label>:107                                     ; preds = %94
  br label %108

; <label>:108                                     ; preds = %107
  %109 = load i32, i32* %i, align 4, !tbaa !1
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %i, align 4, !tbaa !1
  br label %90

; <label>:111                                     ; preds = %90
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %112

; <label>:112                                     ; preds = %119, %111
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %115, label %122

; <label>:115                                     ; preds = %112
  %116 = load i32, i32* %i, align 4, !tbaa !1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1119, i32 0, i64 %117
  store i32 1696837011, i32* %118, align 4, !tbaa !1
  br label %119

; <label>:119                                     ; preds = %115
  %120 = load i32, i32* %i, align 4, !tbaa !1
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %i, align 4, !tbaa !1
  br label %112

; <label>:122                                     ; preds = %112
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %123

; <label>:123                                     ; preds = %130, %122
  %124 = load i32, i32* %i, align 4, !tbaa !1
  %125 = icmp slt i32 %124, 4
  br i1 %125, label %126, label %133

; <label>:126                                     ; preds = %123
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i16], [4 x i16]* %l_1410, i32 0, i64 %128
  store i16 1, i16* %129, align 2, !tbaa !10
  br label %130

; <label>:130                                     ; preds = %126
  %131 = load i32, i32* %i, align 4, !tbaa !1
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %i, align 4, !tbaa !1
  br label %123

; <label>:133                                     ; preds = %123
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %134

; <label>:134                                     ; preds = %141, %133
  %135 = load i32, i32* %i, align 4, !tbaa !1
  %136 = icmp slt i32 %135, 2
  br i1 %136, label %137, label %144

; <label>:137                                     ; preds = %134
  %138 = load i32, i32* %i, align 4, !tbaa !1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [2 x i16***], [2 x i16***]* %l_1508, i32 0, i64 %139
  store i16*** null, i16**** %140, align 8, !tbaa !5
  br label %141

; <label>:141                                     ; preds = %137
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %i, align 4, !tbaa !1
  br label %134

; <label>:144                                     ; preds = %134
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %145

; <label>:145                                     ; preds = %152, %144
  %146 = load i32, i32* %i, align 4, !tbaa !1
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %155

; <label>:148                                     ; preds = %145
  %149 = load i32, i32* %i, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %l_1680, i32 0, i64 %150
  store i32 -7, i32* %151, align 4, !tbaa !1
  br label %152

; <label>:152                                     ; preds = %148
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %i, align 4, !tbaa !1
  br label %145

; <label>:155                                     ; preds = %145
  store i16 0, i16* %3, align 2, !tbaa !10
  br label %156

; <label>:156                                     ; preds = %307, %155
  %157 = load i16, i16* %3, align 2, !tbaa !10
  %158 = sext i16 %157 to i32
  %159 = icmp sle i32 %158, 3
  br i1 %159, label %160, label %312

; <label>:160                                     ; preds = %156
  %161 = bitcast %union.U2** %l_1102 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %161) #1
  store %union.U2* null, %union.U2** %l_1102, align 8, !tbaa !5
  %162 = bitcast %union.U2*** %l_1101 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %162) #1
  store %union.U2** %l_1102, %union.U2*** %l_1101, align 8, !tbaa !5
  %163 = bitcast i16*** %l_1108 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %163) #1
  store i16** getelementptr inbounds ([5 x [8 x i16*]], [5 x [8 x i16*]]* @g_999, i32 0, i64 2, i64 2), i16*** %l_1108, align 8, !tbaa !5
  %164 = bitcast i16**** %l_1107 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %164) #1
  store i16*** %l_1108, i16**** %l_1107, align 8, !tbaa !5
  %165 = bitcast i32* %l_1116 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %165) #1
  store i32 -1140561428, i32* %l_1116, align 4, !tbaa !1
  %166 = bitcast [8 x i32]* %l_1118 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %166) #1
  %167 = bitcast i32** %l_1123 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %167) #1
  %168 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %l_1117, i32 0, i64 1
  %169 = getelementptr inbounds [3 x i32], [3 x i32]* %168, i32 0, i64 1
  store i32* %169, i32** %l_1123, align 8, !tbaa !5
  %170 = bitcast i32** %l_1124 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  store i32* @g_4, i32** %l_1124, align 8, !tbaa !5
  %171 = bitcast i32** %l_1125 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %171) #1
  store i32* %l_1116, i32** %l_1125, align 8, !tbaa !5
  %172 = bitcast [6 x i32*]* %l_1126 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %172) #1
  %173 = getelementptr inbounds [6 x i32*], [6 x i32*]* %l_1126, i64 0, i64 0
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1118, i32 0, i64 6
  store i32* %174, i32** %173, !tbaa !5
  %175 = getelementptr inbounds i32*, i32** %173, i64 1
  store i32* %l_1115, i32** %175, !tbaa !5
  %176 = getelementptr inbounds i32*, i32** %175, i64 1
  %177 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1118, i32 0, i64 6
  store i32* %177, i32** %176, !tbaa !5
  %178 = getelementptr inbounds i32*, i32** %176, i64 1
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1118, i32 0, i64 6
  store i32* %179, i32** %178, !tbaa !5
  %180 = getelementptr inbounds i32*, i32** %178, i64 1
  store i32* %l_1115, i32** %180, !tbaa !5
  %181 = getelementptr inbounds i32*, i32** %180, i64 1
  %182 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1118, i32 0, i64 6
  store i32* %182, i32** %181, !tbaa !5
  %183 = bitcast i32* %l_1128 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %183) #1
  store i32 901417902, i32* %l_1128, align 4, !tbaa !1
  %184 = bitcast i32* %l_1138 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #1
  store i32 -1719007482, i32* %l_1138, align 4, !tbaa !1
  %185 = bitcast i32**** %l_1142 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %185) #1
  store i32*** getelementptr inbounds ([8 x [6 x [2 x i32**]]], [8 x [6 x [2 x i32**]]]* @g_507, i32 0, i64 1, i64 3, i64 1), i32**** %l_1142, align 8, !tbaa !5
  %186 = bitcast i32* %l_1177 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  store i32 0, i32* %l_1177, align 4, !tbaa !1
  %187 = bitcast i64* %l_1195 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %187) #1
  store i64 8551530987101762934, i64* %l_1195, align 8, !tbaa !7
  %188 = bitcast i64* %l_1232 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %188) #1
  store i64 -3992913937278061495, i64* %l_1232, align 8, !tbaa !7
  %189 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %189) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %190

; <label>:190                                     ; preds = %197, %160
  %191 = load i32, i32* %i1, align 4, !tbaa !1
  %192 = icmp slt i32 %191, 8
  br i1 %192, label %193, label %200

; <label>:193                                     ; preds = %190
  %194 = load i32, i32* %i1, align 4, !tbaa !1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1118, i32 0, i64 %195
  store i32 -106230832, i32* %196, align 4, !tbaa !1
  br label %197

; <label>:197                                     ; preds = %193
  %198 = load i32, i32* %i1, align 4, !tbaa !1
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %i1, align 4, !tbaa !1
  br label %190

; <label>:200                                     ; preds = %190
  %201 = load %union.U2**, %union.U2*** %l_1101, align 8, !tbaa !5
  store %union.U2* bitcast ({ i16, [6 x i8] }* @g_717 to %union.U2*), %union.U2** %201, align 8, !tbaa !5
  %202 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext 1, i32 12)
  %203 = trunc i16 %202 to i8
  %204 = load i16***, i16**** %l_1107, align 8, !tbaa !5
  store i16** getelementptr inbounds ([5 x [8 x i16*]], [5 x [8 x i16*]]* @g_999, i32 0, i64 3, i64 2), i16*** %204, align 8, !tbaa !5
  %205 = load i16, i16* %3, align 2, !tbaa !10
  %206 = sext i16 %205 to i64
  %207 = getelementptr inbounds [4 x i8], [4 x i8]* @g_754, i32 0, i64 %206
  %208 = load i8, i8* %207, align 1, !tbaa !9
  %209 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %203, i8 zeroext 0)
  %210 = zext i8 %209 to i32
  %211 = load i16, i16* %3, align 2, !tbaa !10
  %212 = sext i16 %211 to i64
  %213 = getelementptr inbounds [4 x i8], [4 x i8]* @g_754, i32 0, i64 %212
  %214 = load i8, i8* %213, align 1, !tbaa !9
  %215 = icmp ne i8 %214, 0
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = icmp ne i32 %210, %217
  br i1 %218, label %219, label %233

; <label>:219                                     ; preds = %200
  %220 = bitcast [5 x [1 x [7 x i32*]]]* %l_1114 to i8*
  call void @llvm.lifetime.start(i64 280, i8* %220) #1
  %221 = bitcast [5 x [1 x [7 x i32*]]]* %l_1114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %221, i8* bitcast ([5 x [1 x [7 x i32*]]]* @func_5.l_1114 to i8*), i64 280, i32 16, i1 false)
  %222 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %222) #1
  %223 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %223) #1
  %224 = bitcast i32* %k4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %224) #1
  %225 = load %union.U0*, %union.U0** %l_1110, align 8, !tbaa !5
  %226 = load volatile %union.U0**, %union.U0*** @g_1113, align 8, !tbaa !5
  store %union.U0* %225, %union.U0** %226, align 8, !tbaa !5
  %227 = load i16, i16* @g_1120, align 2, !tbaa !10
  %228 = add i16 %227, -1
  store i16 %228, i16* @g_1120, align 2, !tbaa !10
  %229 = bitcast i32* %k4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #1
  %231 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = bitcast [5 x [1 x [7 x i32*]]]* %l_1114 to i8*
  call void @llvm.lifetime.end(i64 280, i8* %232) #1
  br label %243

; <label>:233                                     ; preds = %200
  %234 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %234) #1
  %235 = load i16, i16* %3, align 2, !tbaa !10
  %236 = sext i16 %235 to i64
  %237 = getelementptr inbounds [4 x i8], [4 x i8]* @g_754, i32 0, i64 %236
  %238 = load i8, i8* %237, align 1, !tbaa !9
  %239 = zext i8 %238 to i32
  %240 = load i32*, i32** @g_207, align 8, !tbaa !5
  store i32 %239, i32* %240, align 4, !tbaa !1
  %241 = load i32*, i32** %4, align 8, !tbaa !5
  store i32 %239, i32* %241, align 4, !tbaa !1
  %242 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  br label %243

; <label>:243                                     ; preds = %233, %219
  %244 = load i32, i32* %l_1128, align 4, !tbaa !1
  %245 = add i32 %244, -1
  store i32 %245, i32* %l_1128, align 4, !tbaa !1
  store i16 1, i16* @g_1120, align 2, !tbaa !10
  br label %246

; <label>:246                                     ; preds = %284, %243
  %247 = load i16, i16* @g_1120, align 2, !tbaa !10
  %248 = zext i16 %247 to i32
  %249 = icmp sle i32 %248, 4
  br i1 %249, label %250, label %289

; <label>:250                                     ; preds = %246
  %251 = bitcast [1 x %union.U0*]* %l_1131 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %251) #1
  %252 = bitcast i32* %l_1132 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %252) #1
  store i32 8, i32* %l_1132, align 4, !tbaa !1
  %253 = bitcast i32* %l_1180 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %253) #1
  store i32 1, i32* %l_1180, align 4, !tbaa !1
  %254 = bitcast [6 x i32]* %l_1184 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %254) #1
  %255 = bitcast [6 x i32]* %l_1184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %255, i8* bitcast ([6 x i32]* @func_5.l_1184 to i8*), i64 24, i32 16, i1 false)
  %256 = bitcast i64* %l_1193 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %256) #1
  store i64 -617784006942343692, i64* %l_1193, align 8, !tbaa !7
  %257 = bitcast i64* %l_1214 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %257) #1
  store i64 1845059211389861075, i64* %l_1214, align 8, !tbaa !7
  %258 = bitcast i32** %l_1231 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %258) #1
  %259 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1118, i32 0, i64 6
  store i32* %259, i32** %l_1231, align 8, !tbaa !5
  %260 = bitcast i16* %l_1235 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %260) #1
  store i16 3990, i16* %l_1235, align 2, !tbaa !10
  %261 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %261) #1
  %262 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %262) #1
  store i32 0, i32* %i6, align 4, !tbaa !1
  br label %263

; <label>:263                                     ; preds = %270, %250
  %264 = load i32, i32* %i6, align 4, !tbaa !1
  %265 = icmp slt i32 %264, 1
  br i1 %265, label %266, label %273

; <label>:266                                     ; preds = %263
  %267 = load i32, i32* %i6, align 4, !tbaa !1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [1 x %union.U0*], [1 x %union.U0*]* %l_1131, i32 0, i64 %268
  store %union.U0* bitcast ({ i8, i8, [2 x i8] }* @g_95 to %union.U0*), %union.U0** %269, align 8, !tbaa !5
  br label %270

; <label>:270                                     ; preds = %266
  %271 = load i32, i32* %i6, align 4, !tbaa !1
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %i6, align 4, !tbaa !1
  br label %263

; <label>:273                                     ; preds = %263
  %274 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #1
  %275 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast i16* %l_1235 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %276) #1
  %277 = bitcast i32** %l_1231 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = bitcast i64* %l_1214 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #1
  %279 = bitcast i64* %l_1193 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  %280 = bitcast [6 x i32]* %l_1184 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %280) #1
  %281 = bitcast i32* %l_1180 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #1
  %282 = bitcast i32* %l_1132 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %283 = bitcast [1 x %union.U0*]* %l_1131 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #1
  br label %284

; <label>:284                                     ; preds = %273
  %285 = load i16, i16* @g_1120, align 2, !tbaa !10
  %286 = zext i16 %285 to i32
  %287 = add nsw i32 %286, 1
  %288 = trunc i32 %287 to i16
  store i16 %288, i16* @g_1120, align 2, !tbaa !10
  br label %246

; <label>:289                                     ; preds = %246
  %290 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i64* %l_1232 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #1
  %292 = bitcast i64* %l_1195 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %292) #1
  %293 = bitcast i32* %l_1177 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i32**** %l_1142 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %294) #1
  %295 = bitcast i32* %l_1138 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i32* %l_1128 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast [6 x i32*]* %l_1126 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %297) #1
  %298 = bitcast i32** %l_1125 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #1
  %299 = bitcast i32** %l_1124 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %300 = bitcast i32** %l_1123 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #1
  %301 = bitcast [8 x i32]* %l_1118 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %301) #1
  %302 = bitcast i32* %l_1116 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast i16**** %l_1107 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #1
  %304 = bitcast i16*** %l_1108 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #1
  %305 = bitcast %union.U2*** %l_1101 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #1
  %306 = bitcast %union.U2** %l_1102 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  br label %307

; <label>:307                                     ; preds = %289
  %308 = load i16, i16* %3, align 2, !tbaa !10
  %309 = sext i16 %308 to i32
  %310 = add nsw i32 %309, 1
  %311 = trunc i32 %310 to i16
  store i16 %311, i16* %3, align 2, !tbaa !10
  br label %156

; <label>:312                                     ; preds = %156
  %313 = load i32*, i32** %4, align 8, !tbaa !5
  %314 = load i32, i32* %313, align 4, !tbaa !1
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %383

; <label>:316                                     ; preds = %312
  %317 = bitcast i32* %l_1242 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %317) #1
  store i32 269608894, i32* %l_1242, align 4, !tbaa !1
  %318 = bitcast i16** %l_1249 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %318) #1
  store i16* @g_1120, i16** %l_1249, align 8, !tbaa !5
  %319 = bitcast i16** %l_1256 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %319) #1
  store i16* null, i16** %l_1256, align 8, !tbaa !5
  %320 = bitcast i16** %l_1257 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %320) #1
  store i16* @g_104, i16** %l_1257, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1258) #1
  store i8 0, i8* %l_1258, align 1, !tbaa !9
  %321 = load i32, i32* %l_1242, align 4, !tbaa !1
  %322 = zext i32 %321 to i64
  %323 = load volatile i16**, i16*** @g_998, align 8, !tbaa !5
  %324 = load i16*, i16** %323, align 8, !tbaa !5
  %325 = load i16, i16* %324, align 2, !tbaa !10
  %326 = load i16*, i16** %l_1249, align 8, !tbaa !5
  %327 = load i16, i16* %326, align 2, !tbaa !10
  %328 = add i16 %327, -1
  store i16 %328, i16* %326, align 2, !tbaa !10
  %329 = zext i16 %328 to i32
  %330 = load i16, i16* %2, align 2, !tbaa !10
  %331 = sext i16 %330 to i64
  %332 = icmp ne i64 %331, -1
  %333 = xor i1 %332, true
  %334 = zext i1 %333 to i32
  %335 = trunc i32 %334 to i16
  %336 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %335, i32 -1040748012)
  %337 = zext i16 %336 to i32
  %338 = and i32 %329, %337
  %339 = trunc i32 %338 to i8
  %340 = load i8***, i8**** @g_1210, align 8, !tbaa !5
  %341 = load i8**, i8*** %340, align 8, !tbaa !5
  %342 = load i8*, i8** %341, align 8, !tbaa !5
  %343 = load i8, i8* %342, align 1, !tbaa !9
  %344 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %339, i8 zeroext %343)
  %345 = zext i8 %344 to i64
  %346 = icmp sle i64 15103, %345
  %347 = zext i1 %346 to i32
  %348 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %325, i32 %347)
  %349 = zext i16 %348 to i32
  %350 = load i16, i16* %2, align 2, !tbaa !10
  %351 = sext i16 %350 to i32
  %352 = icmp sge i32 %349, %351
  %353 = zext i1 %352 to i32
  %354 = trunc i32 %353 to i8
  %355 = load i8*, i8** @g_512, align 8, !tbaa !5
  store i8 %354, i8* %355, align 1, !tbaa !9
  %356 = zext i8 %354 to i32
  %357 = load i16, i16* %3, align 2, !tbaa !10
  %358 = sext i16 %357 to i32
  %359 = icmp sle i32 %356, %358
  %360 = zext i1 %359 to i32
  %361 = trunc i32 %360 to i16
  %362 = load i16*, i16** %l_1257, align 8, !tbaa !5
  store i16 %361, i16* %362, align 2, !tbaa !10
  %363 = sext i16 %361 to i64
  %364 = icmp sge i64 %363, 37077
  %365 = zext i1 %364 to i32
  %366 = load i8, i8* %l_1258, align 1, !tbaa !9
  %367 = sext i8 %366 to i32
  %368 = call i32 @safe_div_func_int32_t_s_s(i32 %365, i32 %367)
  %369 = sext i32 %368 to i64
  %370 = or i64 %369, 21969
  %371 = and i64 %322, %370
  %372 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %l_1117, i32 0, i64 1
  %373 = getelementptr inbounds [3 x i32], [3 x i32]* %372, i32 0, i64 1
  %374 = load i32, i32* %373, align 4, !tbaa !1
  %375 = sext i32 %374 to i64
  %376 = icmp sge i64 %371, %375
  %377 = zext i1 %376 to i32
  %378 = load i32*, i32** %4, align 8, !tbaa !5
  store i32 8, i32* %378, align 4, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %l_1258) #1
  %379 = bitcast i16** %l_1257 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %379) #1
  %380 = bitcast i16** %l_1256 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %380) #1
  %381 = bitcast i16** %l_1249 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %381) #1
  %382 = bitcast i32* %l_1242 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %382) #1
  br label %1021

; <label>:383                                     ; preds = %312
  %384 = bitcast i32* %l_1267 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %384) #1
  store i32 7, i32* %l_1267, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1276) #1
  store i8 -1, i8* %l_1276, align 1, !tbaa !9
  %385 = bitcast i64**** %l_1294 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %385) #1
  store i64*** getelementptr inbounds ([4 x i64**], [4 x i64**]* @g_490, i32 0, i64 0), i64**** %l_1294, align 8, !tbaa !5
  %386 = bitcast i32* %l_1319 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %386) #1
  store i32 1126048740, i32* %l_1319, align 4, !tbaa !1
  %387 = bitcast %union.U0** %l_1321 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %387) #1
  store %union.U0* null, %union.U0** %l_1321, align 8, !tbaa !5
  %388 = bitcast %union.U0*** %l_1320 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %388) #1
  store %union.U0** %l_1321, %union.U0*** %l_1320, align 8, !tbaa !5
  %389 = bitcast i32* %l_1346 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %389) #1
  store i32 1263043973, i32* %l_1346, align 4, !tbaa !1
  %390 = bitcast [1 x [5 x i64]]* %l_1347 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %390) #1
  %391 = bitcast [1 x [5 x i64]]* %l_1347 to i8*
  call void @llvm.memset.p0i8.i64(i8* %391, i8 0, i64 40, i32 16, i1 false)
  %392 = bitcast i8* %391 to [1 x [5 x i64]]*
  %393 = getelementptr [1 x [5 x i64]], [1 x [5 x i64]]* %392, i32 0, i32 0
  %394 = getelementptr [5 x i64], [5 x i64]* %393, i32 0, i32 0
  store i64 -6749544772706838494, i64* %394
  %395 = getelementptr [5 x i64], [5 x i64]* %393, i32 0, i32 1
  store i64 -6749544772706838494, i64* %395
  %396 = getelementptr [5 x i64], [5 x i64]* %393, i32 0, i32 2
  store i64 -6749544772706838494, i64* %396
  %397 = getelementptr [5 x i64], [5 x i64]* %393, i32 0, i32 3
  store i64 -6749544772706838494, i64* %397
  %398 = getelementptr [5 x i64], [5 x i64]* %393, i32 0, i32 4
  store i64 -6749544772706838494, i64* %398
  %399 = bitcast %union.U0**** %l_1358 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %399) #1
  store %union.U0*** null, %union.U0**** %l_1358, align 8, !tbaa !5
  %400 = bitcast i64* %l_1386 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %400) #1
  store i64 0, i64* %l_1386, align 8, !tbaa !7
  %401 = bitcast i32* %l_1405 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %401) #1
  store i32 534840018, i32* %l_1405, align 4, !tbaa !1
  %402 = bitcast i32** %l_1406 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %402) #1
  store i32* %l_1346, i32** %l_1406, align 8, !tbaa !5
  %403 = bitcast i32** %l_1407 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %403) #1
  store i32* null, i32** %l_1407, align 8, !tbaa !5
  %404 = bitcast i32** %l_1408 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %404) #1
  store i32* @g_4, i32** %l_1408, align 8, !tbaa !5
  %405 = bitcast [7 x i32*]* %l_1409 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %405) #1
  %406 = bitcast [7 x i32*]* %l_1409 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %406, i8* bitcast ([7 x i32*]* @func_5.l_1409 to i8*), i64 56, i32 16, i1 false)
  %407 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %407) #1
  %408 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %408) #1
  store i32 -12, i32* %l_1115, align 4, !tbaa !1
  br label %409

; <label>:409                                     ; preds = %995, %383
  %410 = load i32, i32* %l_1115, align 4, !tbaa !1
  %411 = icmp eq i32 %410, 10
  br i1 %411, label %412, label %998

; <label>:412                                     ; preds = %409
  %413 = bitcast [3 x [8 x [8 x i16]]]* %l_1261 to i8*
  call void @llvm.lifetime.start(i64 384, i8* %413) #1
  %414 = bitcast [3 x [8 x [8 x i16]]]* %l_1261 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %414, i8* bitcast ([3 x [8 x [8 x i16]]]* @func_5.l_1261 to i8*), i64 384, i32 16, i1 false)
  %415 = bitcast [1 x [8 x i32*]]* %l_1270 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %415) #1
  %416 = bitcast i32* %l_1274 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %416) #1
  store i32 -309472503, i32* %l_1274, align 4, !tbaa !1
  %417 = bitcast i16*** %l_1283 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %417) #1
  store i16** getelementptr inbounds ([5 x [8 x i16*]], [5 x [8 x i16*]]* @g_999, i32 0, i64 3, i64 2), i16*** %l_1283, align 8, !tbaa !5
  %418 = bitcast %union.U1* %l_1326 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %418) #1
  %419 = bitcast %union.U1* %l_1326 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %419, i8* bitcast (%union.U1* @func_5.l_1326 to i8*), i64 4, i32 4, i1 false)
  %420 = bitcast %union.U0**** %l_1362 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %420) #1
  store %union.U0*** @g_1361, %union.U0**** %l_1362, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1404) #1
  store i8 60, i8* %l_1404, align 1, !tbaa !9
  %421 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %421) #1
  %422 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %422) #1
  %423 = bitcast i32* %k12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %423) #1
  store i32 0, i32* %i10, align 4, !tbaa !1
  br label %424

; <label>:424                                     ; preds = %442, %412
  %425 = load i32, i32* %i10, align 4, !tbaa !1
  %426 = icmp slt i32 %425, 1
  br i1 %426, label %427, label %445

; <label>:427                                     ; preds = %424
  store i32 0, i32* %j11, align 4, !tbaa !1
  br label %428

; <label>:428                                     ; preds = %438, %427
  %429 = load i32, i32* %j11, align 4, !tbaa !1
  %430 = icmp slt i32 %429, 8
  br i1 %430, label %431, label %441

; <label>:431                                     ; preds = %428
  %432 = load i32, i32* %j11, align 4, !tbaa !1
  %433 = sext i32 %432 to i64
  %434 = load i32, i32* %i10, align 4, !tbaa !1
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [1 x [8 x i32*]], [1 x [8 x i32*]]* %l_1270, i32 0, i64 %435
  %437 = getelementptr inbounds [8 x i32*], [8 x i32*]* %436, i32 0, i64 %433
  store i32* null, i32** %437, align 8, !tbaa !5
  br label %438

; <label>:438                                     ; preds = %431
  %439 = load i32, i32* %j11, align 4, !tbaa !1
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %j11, align 4, !tbaa !1
  br label %428

; <label>:441                                     ; preds = %428
  br label %442

; <label>:442                                     ; preds = %441
  %443 = load i32, i32* %i10, align 4, !tbaa !1
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %i10, align 4, !tbaa !1
  br label %424

; <label>:445                                     ; preds = %424
  %446 = load %union.U1*, %union.U1** @g_817, align 8, !tbaa !5
  %447 = getelementptr %union.U1, %union.U1* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = call i32 @func_73(i32 %448)
  %450 = getelementptr %union.U1, %union.U1* %5, i32 0, i32 0
  store i32 %449, i32* %450, align 4
  %451 = getelementptr inbounds [3 x [8 x [8 x i16]]], [3 x [8 x [8 x i16]]]* %l_1261, i32 0, i64 0
  %452 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %451, i32 0, i64 6
  %453 = getelementptr inbounds [8 x i16], [8 x i16]* %452, i32 0, i64 2
  %454 = load i16, i16* %453, align 2, !tbaa !10
  %455 = sext i16 %454 to i32
  %456 = getelementptr inbounds [3 x [8 x [8 x i16]]], [3 x [8 x [8 x i16]]]* %l_1261, i32 0, i64 0
  %457 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %456, i32 0, i64 6
  %458 = getelementptr inbounds [8 x i16], [8 x i16]* %457, i32 0, i64 2
  %459 = load i16, i16* %458, align 2, !tbaa !10
  %460 = sext i16 %459 to i32
  %461 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1119, i32 0, i64 0
  store i32 %460, i32* %461, align 4, !tbaa !1
  %462 = sext i32 %460 to i64
  %463 = getelementptr %union.U1, %union.U1* %5, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = call i32* @func_23(i32 %464, i32 %455, i64 %462)
  %466 = load volatile i32**, i32*** @g_1263, align 8, !tbaa !5
  store i32* %465, i32** %466, align 8, !tbaa !5
  %467 = load volatile i32*, i32** @g_3, align 8, !tbaa !5
  %468 = load i32, i32* %467, align 4, !tbaa !1
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %875

; <label>:470                                     ; preds = %445
  %471 = bitcast i16*** %l_1266 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %471) #1
  store i16** getelementptr inbounds ([5 x [8 x i16*]], [5 x [8 x i16*]]* @g_999, i32 0, i64 3, i64 2), i16*** %l_1266, align 8, !tbaa !5
  %472 = bitcast i16** %l_1287 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %472) #1
  store i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_717, i32 0, i32 0), i16** %l_1287, align 8, !tbaa !5
  %473 = bitcast [2 x i16**]* %l_1286 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %473) #1
  %474 = bitcast i32* %l_1299 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %474) #1
  store i32 0, i32* %l_1299, align 4, !tbaa !1
  %475 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %475) #1
  store i32 0, i32* %i13, align 4, !tbaa !1
  br label %476

; <label>:476                                     ; preds = %483, %470
  %477 = load i32, i32* %i13, align 4, !tbaa !1
  %478 = icmp slt i32 %477, 2
  br i1 %478, label %479, label %486

; <label>:479                                     ; preds = %476
  %480 = load i32, i32* %i13, align 4, !tbaa !1
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [2 x i16**], [2 x i16**]* %l_1286, i32 0, i64 %481
  store i16** %l_1287, i16*** %482, align 8, !tbaa !5
  br label %483

; <label>:483                                     ; preds = %479
  %484 = load i32, i32* %i13, align 4, !tbaa !1
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %i13, align 4, !tbaa !1
  br label %476

; <label>:486                                     ; preds = %476
  store i32 0, i32* @g_82, align 4, !tbaa !1
  br label %487

; <label>:487                                     ; preds = %504, %486
  %488 = load i32, i32* @g_82, align 4, !tbaa !1
  %489 = icmp ule i32 %488, 2
  br i1 %489, label %490, label %507

; <label>:490                                     ; preds = %487
  %491 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %491) #1
  %492 = load i32, i32* %l_1115, align 4, !tbaa !1
  %493 = load i16**, i16*** %l_1266, align 8, !tbaa !5
  %494 = icmp ne i16** %493, getelementptr inbounds ([5 x [8 x i16*]], [5 x [8 x i16*]]* @g_999, i32 0, i64 4, i64 3)
  %495 = zext i1 %494 to i32
  %496 = and i32 %492, %495
  %497 = load i32, i32* @g_82, align 4, !tbaa !1
  %498 = add i32 %497, 4
  %499 = zext i32 %498 to i64
  %500 = getelementptr inbounds [8 x i32], [8 x i32]* @g_118, i32 0, i64 %499
  %501 = load i32, i32* %500, align 4, !tbaa !1
  %502 = or i32 %501, %496
  store i32 %502, i32* %500, align 4, !tbaa !1
  %503 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %503) #1
  br label %504

; <label>:504                                     ; preds = %490
  %505 = load i32, i32* @g_82, align 4, !tbaa !1
  %506 = add i32 %505, 1
  store i32 %506, i32* @g_82, align 4, !tbaa !1
  br label %487

; <label>:507                                     ; preds = %487
  %508 = load i32, i32* %l_1267, align 4, !tbaa !1
  %509 = load i32*, i32** %4, align 8, !tbaa !5
  %510 = load i32, i32* %509, align 4, !tbaa !1
  %511 = or i32 %510, %508
  store i32 %511, i32* %509, align 4, !tbaa !1
  store i8 0, i8* @g_222, align 1, !tbaa !9
  br label %512

; <label>:512                                     ; preds = %862, %507
  %513 = load i8, i8* @g_222, align 1, !tbaa !9
  %514 = sext i8 %513 to i32
  %515 = icmp sle i32 %514, 2
  br i1 %515, label %516, label %867

; <label>:516                                     ; preds = %512
  call void @llvm.lifetime.start(i64 1, i8* %l_1268) #1
  store i8 0, i8* %l_1268, align 1, !tbaa !9
  %517 = bitcast i32** %l_1269 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %517) #1
  %518 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %l_1117, i32 0, i64 0
  %519 = getelementptr inbounds [3 x i32], [3 x i32]* %518, i32 0, i64 2
  store i32* %519, i32** %l_1269, align 8, !tbaa !5
  %520 = bitcast i32* %l_1272 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %520) #1
  store i32 -8, i32* %l_1272, align 4, !tbaa !1
  %521 = bitcast i16** %l_1285 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %521) #1
  store i16* null, i16** %l_1285, align 8, !tbaa !5
  %522 = bitcast i16*** %l_1284 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %522) #1
  store i16** %l_1285, i16*** %l_1284, align 8, !tbaa !5
  %523 = bitcast [8 x i16*]* %l_1296 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %523) #1
  %524 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_1296, i64 0, i64 0
  store i16* @g_106, i16** %524, !tbaa !5
  %525 = getelementptr inbounds i16*, i16** %524, i64 1
  %526 = getelementptr inbounds [3 x [8 x [8 x i16]]], [3 x [8 x [8 x i16]]]* %l_1261, i32 0, i64 0
  %527 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %526, i32 0, i64 6
  %528 = getelementptr inbounds [8 x i16], [8 x i16]* %527, i32 0, i64 2
  store i16* %528, i16** %525, !tbaa !5
  %529 = getelementptr inbounds i16*, i16** %525, i64 1
  store i16* @g_106, i16** %529, !tbaa !5
  %530 = getelementptr inbounds i16*, i16** %529, i64 1
  %531 = getelementptr inbounds [3 x [8 x [8 x i16]]], [3 x [8 x [8 x i16]]]* %l_1261, i32 0, i64 0
  %532 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %531, i32 0, i64 6
  %533 = getelementptr inbounds [8 x i16], [8 x i16]* %532, i32 0, i64 2
  store i16* %533, i16** %530, !tbaa !5
  %534 = getelementptr inbounds i16*, i16** %530, i64 1
  store i16* @g_106, i16** %534, !tbaa !5
  %535 = getelementptr inbounds i16*, i16** %534, i64 1
  %536 = getelementptr inbounds [3 x [8 x [8 x i16]]], [3 x [8 x [8 x i16]]]* %l_1261, i32 0, i64 0
  %537 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %536, i32 0, i64 6
  %538 = getelementptr inbounds [8 x i16], [8 x i16]* %537, i32 0, i64 2
  store i16* %538, i16** %535, !tbaa !5
  %539 = getelementptr inbounds i16*, i16** %535, i64 1
  store i16* @g_106, i16** %539, !tbaa !5
  %540 = getelementptr inbounds i16*, i16** %539, i64 1
  %541 = getelementptr inbounds [3 x [8 x [8 x i16]]], [3 x [8 x [8 x i16]]]* %l_1261, i32 0, i64 0
  %542 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %541, i32 0, i64 6
  %543 = getelementptr inbounds [8 x i16], [8 x i16]* %542, i32 0, i64 2
  store i16* %543, i16** %540, !tbaa !5
  %544 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %544) #1
  %545 = load i8, i8* %l_1268, align 1, !tbaa !9
  %546 = sext i8 %545 to i64
  %547 = xor i64 %546, 2
  %548 = trunc i64 %547 to i8
  store i8 %548, i8* %l_1268, align 1, !tbaa !9
  %549 = icmp ne i8 %548, 0
  br i1 %549, label %550, label %554

; <label>:550                                     ; preds = %516
  %551 = getelementptr inbounds [1 x [8 x i32*]], [1 x [8 x i32*]]* %l_1270, i32 0, i64 0
  %552 = getelementptr inbounds [8 x i32*], [8 x i32*]* %551, i32 0, i64 1
  %553 = load i32*, i32** %552, align 8, !tbaa !5
  store i32* %553, i32** %1
  store i32 1, i32* %6
  br label %854

; <label>:554                                     ; preds = %516
  %555 = bitcast i32** %l_1271 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %555) #1
  store i32* null, i32** %l_1271, align 8, !tbaa !5
  %556 = bitcast i32** %l_1273 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %556) #1
  store i32* @g_99, i32** %l_1273, align 8, !tbaa !5
  %557 = bitcast i32** %l_1275 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %557) #1
  store i32* null, i32** %l_1275, align 8, !tbaa !5
  %558 = load i8, i8* %l_1276, align 1, !tbaa !9
  %559 = add i8 %558, -1
  store i8 %559, i8* %l_1276, align 1, !tbaa !9
  %560 = bitcast i32** %l_1275 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %560) #1
  %561 = bitcast i32** %l_1273 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %561) #1
  %562 = bitcast i32** %l_1271 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %562) #1
  br label %563

; <label>:563                                     ; preds = %554
  %564 = load i32*, i32** @g_207, align 8, !tbaa !5
  %565 = load i32, i32* %564, align 4, !tbaa !1
  %566 = sext i32 %565 to i64
  %567 = xor i64 %566, 2763952674
  %568 = trunc i64 %567 to i32
  store i32 %568, i32* %564, align 4, !tbaa !1
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %758

; <label>:570                                     ; preds = %563
  %571 = bitcast i64***** %l_1295 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %571) #1
  store i64**** getelementptr inbounds ([4 x i64***], [4 x i64***]* @g_489, i32 0, i64 3), i64***** %l_1295, align 8, !tbaa !5
  %572 = bitcast i16*** %l_1297 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %572) #1
  %573 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_1296, i32 0, i64 7
  store i16** %573, i16*** %l_1297, align 8, !tbaa !5
  %574 = bitcast [4 x i64]* %l_1298 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %574) #1
  %575 = bitcast [4 x i64]* %l_1298 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %575, i8* bitcast ([4 x i64]* @func_5.l_1298 to i8*), i64 32, i32 16, i1 false)
  %576 = bitcast [10 x %union.U1]* %l_1318 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %576) #1
  %577 = bitcast [10 x %union.U1]* %l_1318 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %577, i8* bitcast ([10 x %union.U1]* @func_5.l_1318 to i8*), i64 40, i32 16, i1 false)
  %578 = bitcast %union.U0**** %l_1322 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %578) #1
  store %union.U0*** %l_1320, %union.U0**** %l_1322, align 8, !tbaa !5
  %579 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %579) #1
  %580 = load i8*, i8** @g_512, align 8, !tbaa !5
  %581 = load i8, i8* %580, align 1, !tbaa !9
  %582 = load i16**, i16*** %l_1283, align 8, !tbaa !5
  %583 = load i16**, i16*** %l_1284, align 8, !tbaa !5
  %584 = getelementptr inbounds [2 x i16**], [2 x i16**]* %l_1286, i32 0, i64 1
  store i16** %583, i16*** %584, align 8, !tbaa !5
  %585 = icmp ne i16** %582, %583
  %586 = zext i1 %585 to i32
  %587 = sext i32 %586 to i64
  %588 = load i16, i16* %3, align 2, !tbaa !10
  %589 = sext i16 %588 to i64
  %590 = load i64***, i64**** %l_1294, align 8, !tbaa !5
  %591 = load i64****, i64***** %l_1295, align 8, !tbaa !5
  store i64*** %590, i64**** %591, align 8, !tbaa !5
  %592 = icmp ne i64*** %590, null
  br i1 %592, label %593, label %603

; <label>:593                                     ; preds = %570
  %594 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_1296, i32 0, i64 0
  %595 = load i16*, i16** %594, align 8, !tbaa !5
  %596 = load i16**, i16*** %l_1297, align 8, !tbaa !5
  store i16* %595, i16** %596, align 8, !tbaa !5
  %597 = load i16*, i16** %l_1285, align 8, !tbaa !5
  %598 = icmp eq i16* %595, %597
  %599 = zext i1 %598 to i32
  %600 = load i32*, i32** %l_1269, align 8, !tbaa !5
  %601 = load i32, i32* %600, align 4, !tbaa !1
  %602 = icmp sge i32 %599, %601
  br label %603

; <label>:603                                     ; preds = %593, %570
  %604 = phi i1 [ false, %570 ], [ %602, %593 ]
  %605 = zext i1 %604 to i32
  %606 = sext i32 %605 to i64
  %607 = and i64 %606, -1496829400260536945
  %608 = icmp eq i64 3, %607
  %609 = zext i1 %608 to i32
  %610 = load volatile i16**, i16*** @g_998, align 8, !tbaa !5
  %611 = load i16*, i16** %610, align 8, !tbaa !5
  %612 = load i16, i16* %611, align 2, !tbaa !10
  %613 = zext i16 %612 to i32
  %614 = icmp slt i32 %609, %613
  %615 = zext i1 %614 to i32
  %616 = sext i32 %615 to i64
  %617 = xor i64 31635, %616
  %618 = icmp sle i64 %589, %617
  %619 = zext i1 %618 to i32
  %620 = trunc i32 %619 to i8
  %621 = load i8*, i8** @g_186, align 8, !tbaa !5
  store i8 %620, i8* %621, align 1, !tbaa !9
  %622 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %620, i8 signext 31)
  %623 = sext i8 %622 to i32
  %624 = load i32, i32* %l_1267, align 4, !tbaa !1
  %625 = call i32 @safe_mod_func_uint32_t_u_u(i32 %623, i32 %624)
  %626 = trunc i32 %625 to i16
  %627 = getelementptr inbounds [4 x i64], [4 x i64]* %l_1298, i32 0, i64 1
  %628 = load i64, i64* %627, align 8, !tbaa !7
  %629 = trunc i64 %628 to i32
  %630 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %626, i32 %629)
  %631 = zext i16 %630 to i64
  %632 = call i64 @safe_sub_func_int64_t_s_s(i64 %587, i64 %631)
  %633 = load i32, i32* %l_1299, align 4, !tbaa !1
  %634 = sext i32 %633 to i64
  %635 = icmp sge i64 %632, %634
  %636 = zext i1 %635 to i32
  %637 = trunc i32 %636 to i8
  %638 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %581, i8 zeroext %637)
  %639 = zext i8 %638 to i64
  %640 = icmp uge i64 %639, 4
  %641 = zext i1 %640 to i32
  %642 = load i32*, i32** @g_207, align 8, !tbaa !5
  store i32 %641, i32* %642, align 4, !tbaa !1
  %643 = load i8*, i8** @g_188, align 8, !tbaa !5
  %644 = load i8, i8* %643, align 1, !tbaa !9
  %645 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1119, i32 0, i64 0
  %646 = load i32, i32* %645, align 4, !tbaa !1
  %647 = load volatile i32*, i32** @g_572, align 8, !tbaa !5
  %648 = load i32, i32* %647, align 4, !tbaa !1
  %649 = call i32 @safe_sub_func_int32_t_s_s(i32 %646, i32 %648)
  %650 = load i8***, i8**** @g_1210, align 8, !tbaa !5
  %651 = load i8**, i8*** %650, align 8, !tbaa !5
  %652 = load i8*, i8** %651, align 8, !tbaa !5
  %653 = load i8, i8* %652, align 1, !tbaa !9
  %654 = sext i8 %653 to i32
  %655 = load %union.U1*, %union.U1** @g_817, align 8, !tbaa !5
  %656 = getelementptr inbounds [10 x %union.U1], [10 x %union.U1]* %l_1318, i32 0, i64 7
  %657 = getelementptr %union.U1, %union.U1* %656, i32 0, i32 0
  %658 = load i32, i32* %657, align 4
  %659 = call i32 @func_73(i32 %658)
  %660 = getelementptr %union.U1, %union.U1* %8, i32 0, i32 0
  store i32 %659, i32* %660, align 4
  %661 = bitcast %union.U1* %655 to i8*
  %662 = bitcast %union.U1* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %661, i8* %662, i64 4, i32 4, i1 false), !tbaa.struct !12
  %663 = bitcast %union.U1* %7 to i8*
  %664 = bitcast %union.U1* %655 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %663, i8* %664, i64 4, i32 4, i1 false), !tbaa.struct !12
  %665 = getelementptr %union.U1, %union.U1* %7, i32 0, i32 0
  %666 = load i32, i32* %665, align 4
  %667 = call i32 @func_73(i32 %666)
  %668 = getelementptr %union.U1, %union.U1* %9, i32 0, i32 0
  store i32 %667, i32* %668, align 4
  %669 = load i32*, i32** %4, align 8, !tbaa !5
  %670 = load i32, i32* %669, align 4, !tbaa !1
  %671 = sext i32 %670 to i64
  %672 = or i64 3837076141, %671
  %673 = icmp slt i64 %672, 58
  %674 = zext i1 %673 to i32
  %675 = sext i32 %674 to i64
  %676 = and i64 %675, 57
  %677 = trunc i64 %676 to i16
  %678 = load i16, i16* %2, align 2, !tbaa !10
  %679 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %677, i16 signext %678)
  %680 = icmp ne i16 %679, 0
  %681 = xor i1 %680, true
  %682 = zext i1 %681 to i32
  %683 = icmp sle i32 %654, %682
  %684 = zext i1 %683 to i32
  %685 = trunc i32 %684 to i16
  %686 = load i16**, i16*** %l_1297, align 8, !tbaa !5
  %687 = load i16*, i16** %686, align 8, !tbaa !5
  store i16 %685, i16* %687, align 2, !tbaa !10
  store i16 %685, i16* @g_104, align 2, !tbaa !10
  %688 = sext i16 %685 to i32
  %689 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_1236, i32 0, i64 0), align 4, !tbaa !1
  %690 = icmp ule i32 %688, %689
  %691 = zext i1 %690 to i32
  %692 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext 5, i32 %691)
  %693 = icmp ne i16 %692, 0
  %694 = xor i1 %693, true
  %695 = zext i1 %694 to i32
  %696 = load i32*, i32** %4, align 8, !tbaa !5
  %697 = load i32, i32* %696, align 4, !tbaa !1
  %698 = icmp slt i32 %695, %697
  %699 = zext i1 %698 to i32
  %700 = icmp slt i32 %649, %699
  %701 = zext i1 %700 to i32
  %702 = sext i32 %701 to i64
  %703 = icmp sle i64 %702, 2176987398
  %704 = zext i1 %703 to i32
  %705 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext 1, i8 zeroext 1)
  %706 = zext i8 %705 to i64
  %707 = xor i64 %706, -3382373857789338075
  br i1 true, label %708, label %712

; <label>:708                                     ; preds = %603
  %709 = load i32*, i32** %4, align 8, !tbaa !5
  %710 = load i32, i32* %709, align 4, !tbaa !1
  %711 = icmp ne i32 %710, 0
  br label %712

; <label>:712                                     ; preds = %708, %603
  %713 = phi i1 [ false, %603 ], [ %711, %708 ]
  %714 = zext i1 %713 to i32
  %715 = load i32, i32* %l_1319, align 4, !tbaa !1
  %716 = icmp ult i32 %714, %715
  %717 = zext i1 %716 to i32
  %718 = sext i32 %717 to i64
  %719 = and i64 0, %718
  %720 = call i64 @safe_mod_func_uint64_t_u_u(i64 %719, i64 -1)
  %721 = trunc i64 %720 to i8
  %722 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %644, i8 signext %721)
  %723 = sext i8 %722 to i32
  %724 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1119, i32 0, i64 0
  store i32 %723, i32* %724, align 4, !tbaa !1
  %725 = load i32, i32* %l_1299, align 4, !tbaa !1
  %726 = call i32 @safe_mod_func_uint32_t_u_u(i32 %723, i32 %725)
  %727 = load i32*, i32** @g_207, align 8, !tbaa !5
  store i32 %726, i32* %727, align 4, !tbaa !1
  %728 = load i32*, i32** %4, align 8, !tbaa !5
  %729 = load i32, i32* %728, align 4, !tbaa !1
  %730 = icmp ne i32 %729, 0
  br i1 %730, label %731, label %732

; <label>:731                                     ; preds = %712
  store i32 47, i32* %6
  br label %750

; <label>:732                                     ; preds = %712
  %733 = load %union.U0**, %union.U0*** %l_1320, align 8, !tbaa !5
  %734 = load %union.U0***, %union.U0**** %l_1322, align 8, !tbaa !5
  store %union.U0** %733, %union.U0*** %734, align 8, !tbaa !5
  %735 = icmp eq %union.U0** %733, null
  br i1 %735, label %745, label %736

; <label>:736                                     ; preds = %732
  %737 = getelementptr inbounds [10 x %union.U1], [10 x %union.U1]* %l_1318, i32 0, i64 7
  %738 = bitcast %union.U1* %737 to i32*
  %739 = load i32, i32* %738, align 4, !tbaa !1
  %740 = trunc i32 %739 to i16
  %741 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %740)
  %742 = zext i16 %741 to i32
  %743 = xor i32 %742, -1
  %744 = icmp ne i32 %743, 0
  br label %745

; <label>:745                                     ; preds = %736, %732
  %746 = phi i1 [ true, %732 ], [ %744, %736 ]
  %747 = zext i1 %746 to i32
  %748 = load i32*, i32** @g_207, align 8, !tbaa !5
  store i32 %747, i32* %748, align 4, !tbaa !1
  %749 = load i32*, i32** %4, align 8, !tbaa !5
  store i32 %747, i32* %749, align 4, !tbaa !1
  store i32 0, i32* %6
  br label %750

; <label>:750                                     ; preds = %745, %731
  %751 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %751) #1
  %752 = bitcast %union.U0**** %l_1322 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %752) #1
  %753 = bitcast [10 x %union.U1]* %l_1318 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %753) #1
  %754 = bitcast [4 x i64]* %l_1298 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %754) #1
  %755 = bitcast i16*** %l_1297 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %755) #1
  %756 = bitcast i64***** %l_1295 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %756) #1
  %cleanup.dest = load i32, i32* %6
  switch i32 %cleanup.dest, label %854 [
    i32 0, label %757
  ]

; <label>:757                                     ; preds = %750
  br label %805

; <label>:758                                     ; preds = %563
  %759 = bitcast i32* %l_1339 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %759) #1
  store i32 1804969292, i32* %l_1339, align 4, !tbaa !1
  %760 = bitcast i32*** %l_1340 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %760) #1
  store i32** null, i32*** %l_1340, align 8, !tbaa !5
  %761 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %761) #1
  %762 = bitcast %union.U1* %10 to i8*
  %763 = bitcast %union.U1* %l_1326 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %762, i8* %763, i64 4, i32 4, i1 false), !tbaa.struct !12
  %764 = load %union.U0****, %union.U0***** getelementptr inbounds ([9 x [10 x %union.U0****]], [9 x [10 x %union.U0****]]* @g_970, i32 0, i64 0, i64 7), align 8, !tbaa !5
  %765 = icmp ne %union.U0**** null, %764
  %766 = zext i1 %765 to i32
  %767 = trunc i32 %766 to i8
  %768 = load %union.U0*, %union.U0** @g_454, align 8, !tbaa !5
  %769 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext -16105, i32 1)
  %770 = load i32, i32* %l_1339, align 4, !tbaa !1
  %771 = load i8*, i8** @g_188, align 8, !tbaa !5
  %772 = load i8, i8* %771, align 1, !tbaa !9
  %773 = sext i8 %772 to i64
  %774 = icmp sle i64 -1, %773
  %775 = zext i1 %774 to i32
  %776 = and i32 %770, %775
  %777 = trunc i32 %776 to i16
  %778 = load i16, i16* %3, align 2, !tbaa !10
  %779 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %777, i16 signext %778)
  %780 = load i16, i16* %2, align 2, !tbaa !10
  %781 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %779, i16 zeroext %780)
  %782 = trunc i16 %781 to i8
  %783 = load i8*, i8** @g_188, align 8, !tbaa !5
  store i8 %782, i8* %783, align 1, !tbaa !9
  %784 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext -1, i8 zeroext %782)
  %785 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %767, i8 signext %784)
  %786 = sext i8 %785 to i64
  %787 = xor i64 %786, 248
  %788 = trunc i64 %787 to i8
  %789 = load i16, i16* %3, align 2, !tbaa !10
  %790 = trunc i16 %789 to i8
  %791 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %788, i8 signext %790)
  %792 = sext i8 %791 to i32
  %793 = load i32*, i32** @g_94, align 8, !tbaa !5
  %794 = load i32, i32* %793, align 4, !tbaa !1
  %795 = and i32 %794, %792
  store i32 %795, i32* %793, align 4, !tbaa !1
  %796 = load i16, i16* %2, align 2, !tbaa !10
  %797 = sext i16 %796 to i64
  %798 = getelementptr %union.U1, %union.U1* %10, i32 0, i32 0
  %799 = load i32, i32* %798, align 4
  %800 = call i32* @func_23(i32 %799, i32 %795, i64 %797)
  %801 = load volatile i32**, i32*** @g_1341, align 8, !tbaa !5
  store i32* %800, i32** %801, align 8, !tbaa !5
  %802 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %802) #1
  %803 = bitcast i32*** %l_1340 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %803) #1
  %804 = bitcast i32* %l_1339 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %804) #1
  br label %805

; <label>:805                                     ; preds = %758, %757
  %806 = load i16, i16* %3, align 2, !tbaa !10
  %807 = load i32*, i32** %l_1269, align 8, !tbaa !5
  %808 = load i32, i32* %807, align 4, !tbaa !1
  %809 = trunc i32 %808 to i16
  %810 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %806, i16 zeroext %809)
  %811 = icmp ne i16 %810, 0
  br i1 %811, label %812, label %814

; <label>:812                                     ; preds = %805
  %813 = load i32*, i32** %4, align 8, !tbaa !5
  store i32* %813, i32** %1
  store i32 1, i32* %6
  br label %854

; <label>:814                                     ; preds = %805
  %815 = bitcast i32** %l_1344 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %815) #1
  store i32* null, i32** %l_1344, align 8, !tbaa !5
  %816 = bitcast [1 x i32*]* %l_1345 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %816) #1
  %817 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %817) #1
  store i32 0, i32* %i18, align 4, !tbaa !1
  br label %818

; <label>:818                                     ; preds = %825, %814
  %819 = load i32, i32* %i18, align 4, !tbaa !1
  %820 = icmp slt i32 %819, 1
  br i1 %820, label %821, label %828

; <label>:821                                     ; preds = %818
  %822 = load i32, i32* %i18, align 4, !tbaa !1
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_1345, i32 0, i64 %823
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_118, i32 0, i64 2), i32** %824, align 8, !tbaa !5
  br label %825

; <label>:825                                     ; preds = %821
  %826 = load i32, i32* %i18, align 4, !tbaa !1
  %827 = add nsw i32 %826, 1
  store i32 %827, i32* %i18, align 4, !tbaa !1
  br label %818

; <label>:828                                     ; preds = %818
  %829 = getelementptr inbounds [1 x [5 x i64]], [1 x [5 x i64]]* %l_1347, i32 0, i64 0
  %830 = getelementptr inbounds [5 x i64], [5 x i64]* %829, i32 0, i64 3
  %831 = load i64, i64* %830, align 8, !tbaa !7
  %832 = add i64 %831, -1
  store i64 %832, i64* %830, align 8, !tbaa !7
  %833 = load i32, i32* %l_1267, align 4, !tbaa !1
  %834 = xor i32 %833, -1
  %835 = load i32*, i32** %4, align 8, !tbaa !5
  store i32 %834, i32* %835, align 4, !tbaa !1
  %836 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %836) #1
  %837 = bitcast [1 x i32*]* %l_1345 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %837) #1
  %838 = bitcast i32** %l_1344 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %838) #1
  br label %839

; <label>:839                                     ; preds = %828
  store i8 2, i8* @g_177, align 1, !tbaa !9
  br label %840

; <label>:840                                     ; preds = %848, %839
  %841 = load i8, i8* @g_177, align 1, !tbaa !9
  %842 = sext i8 %841 to i32
  %843 = icmp sge i32 %842, 0
  br i1 %843, label %844, label %853

; <label>:844                                     ; preds = %840
  %845 = bitcast %union.U1*** %l_1351 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %845) #1
  store %union.U1** @g_817, %union.U1*** %l_1351, align 8, !tbaa !5
  %846 = load %union.U1**, %union.U1*** %l_1351, align 8, !tbaa !5
  store %union.U1* getelementptr inbounds ([4 x [7 x %union.U1]], [4 x [7 x %union.U1]]* @g_27, i32 0, i64 1, i64 4), %union.U1** %846, align 8, !tbaa !5
  %847 = bitcast %union.U1*** %l_1351 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %847) #1
  br label %848

; <label>:848                                     ; preds = %844
  %849 = load i8, i8* @g_177, align 1, !tbaa !9
  %850 = sext i8 %849 to i32
  %851 = sub nsw i32 %850, 1
  %852 = trunc i32 %851 to i8
  store i8 %852, i8* @g_177, align 1, !tbaa !9
  br label %840

; <label>:853                                     ; preds = %840
  store i32 0, i32* %6
  br label %854

; <label>:854                                     ; preds = %853, %812, %750, %550
  %855 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %855) #1
  %856 = bitcast [8 x i16*]* %l_1296 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %856) #1
  %857 = bitcast i16*** %l_1284 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %857) #1
  %858 = bitcast i16** %l_1285 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %858) #1
  %859 = bitcast i32* %l_1272 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %859) #1
  %860 = bitcast i32** %l_1269 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %860) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1268) #1
  %cleanup.dest.19 = load i32, i32* %6
  switch i32 %cleanup.dest.19, label %868 [
    i32 0, label %861
    i32 47, label %867
  ]

; <label>:861                                     ; preds = %854
  br label %862

; <label>:862                                     ; preds = %861
  %863 = load i8, i8* @g_222, align 1, !tbaa !9
  %864 = sext i8 %863 to i32
  %865 = add nsw i32 %864, 1
  %866 = trunc i32 %865 to i8
  store i8 %866, i8* @g_222, align 1, !tbaa !9
  br label %512

; <label>:867                                     ; preds = %854, %512
  store i32 0, i32* %6
  br label %868

; <label>:868                                     ; preds = %867, %854
  %869 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %869) #1
  %870 = bitcast i32* %l_1299 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %870) #1
  %871 = bitcast [2 x i16**]* %l_1286 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %871) #1
  %872 = bitcast i16** %l_1287 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %872) #1
  %873 = bitcast i16*** %l_1266 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %873) #1
  %cleanup.dest.20 = load i32, i32* %6
  switch i32 %cleanup.dest.20, label %984 [
    i32 0, label %874
  ]

; <label>:874                                     ; preds = %868
  br label %983

; <label>:875                                     ; preds = %445
  %876 = bitcast [6 x [7 x [4 x %union.U1**]]]* %l_1366 to i8*
  call void @llvm.lifetime.start(i64 1344, i8* %876) #1
  %877 = bitcast [6 x [7 x [4 x %union.U1**]]]* %l_1366 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %877, i8* bitcast ([6 x [7 x [4 x %union.U1**]]]* @func_5.l_1366 to i8*), i64 1344, i32 16, i1 false)
  %878 = bitcast i32* %l_1383 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %878) #1
  store i32 -239799637, i32* %l_1383, align 4, !tbaa !1
  %879 = bitcast %union.U0**** %l_1388 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %879) #1
  store %union.U0*** null, %union.U0**** %l_1388, align 8, !tbaa !5
  %880 = bitcast i64** %l_1398 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %880) #1
  store i64* null, i64** %l_1398, align 8, !tbaa !5
  %881 = bitcast i32* %i21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %881) #1
  %882 = bitcast i32* %j22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %882) #1
  %883 = bitcast i32* %k23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %883) #1
  store i64 10, i64* getelementptr inbounds (%union.U2, %union.U2* bitcast ({ i16, [6 x i8] }* @g_558 to %union.U2*), i32 0, i32 0), align 8, !tbaa !7
  br label %884

; <label>:884                                     ; preds = %970, %875
  %885 = load i64, i64* getelementptr inbounds (%union.U2, %union.U2* bitcast ({ i16, [6 x i8] }* @g_558 to %union.U2*), i32 0, i32 0), align 8, !tbaa !7
  %886 = icmp slt i64 %885, -5
  br i1 %886, label %887, label %975

; <label>:887                                     ; preds = %884
  %888 = bitcast [7 x [9 x %union.U0****]]* %l_1359 to i8*
  call void @llvm.lifetime.start(i64 504, i8* %888) #1
  %889 = getelementptr inbounds [7 x [9 x %union.U0****]], [7 x [9 x %union.U0****]]* %l_1359, i64 0, i64 0
  %890 = getelementptr inbounds [9 x %union.U0****], [9 x %union.U0****]* %889, i64 0, i64 0
  store %union.U0**** %l_1358, %union.U0***** %890, !tbaa !5
  %891 = getelementptr inbounds %union.U0****, %union.U0***** %890, i64 1
  store %union.U0**** %l_1358, %union.U0***** %891, !tbaa !5
  %892 = getelementptr inbounds %union.U0****, %union.U0***** %891, i64 1
  store %union.U0**** %l_1358, %union.U0***** %892, !tbaa !5
  %893 = getelementptr inbounds %union.U0****, %union.U0***** %892, i64 1
  store %union.U0**** %l_1358, %union.U0***** %893, !tbaa !5
  %894 = getelementptr inbounds %union.U0****, %union.U0***** %893, i64 1
  store %union.U0**** %l_1358, %union.U0***** %894, !tbaa !5
  %895 = getelementptr inbounds %union.U0****, %union.U0***** %894, i64 1
  store %union.U0**** %l_1358, %union.U0***** %895, !tbaa !5
  %896 = getelementptr inbounds %union.U0****, %union.U0***** %895, i64 1
  store %union.U0**** %l_1358, %union.U0***** %896, !tbaa !5
  %897 = getelementptr inbounds %union.U0****, %union.U0***** %896, i64 1
  store %union.U0**** %l_1358, %union.U0***** %897, !tbaa !5
  %898 = getelementptr inbounds %union.U0****, %union.U0***** %897, i64 1
  store %union.U0**** %l_1358, %union.U0***** %898, !tbaa !5
  %899 = getelementptr inbounds [9 x %union.U0****], [9 x %union.U0****]* %889, i64 1
  %900 = getelementptr inbounds [9 x %union.U0****], [9 x %union.U0****]* %899, i64 0, i64 0
  store %union.U0**** %l_1358, %union.U0***** %900, !tbaa !5
  %901 = getelementptr inbounds %union.U0****, %union.U0***** %900, i64 1
  store %union.U0**** %l_1358, %union.U0***** %901, !tbaa !5
  %902 = getelementptr inbounds %union.U0****, %union.U0***** %901, i64 1
  store %union.U0**** null, %union.U0***** %902, !tbaa !5
  %903 = getelementptr inbounds %union.U0****, %union.U0***** %902, i64 1
  store %union.U0**** null, %union.U0***** %903, !tbaa !5
  %904 = getelementptr inbounds %union.U0****, %union.U0***** %903, i64 1
  store %union.U0**** %l_1358, %union.U0***** %904, !tbaa !5
  %905 = getelementptr inbounds %union.U0****, %union.U0***** %904, i64 1
  store %union.U0**** null, %union.U0***** %905, !tbaa !5
  %906 = getelementptr inbounds %union.U0****, %union.U0***** %905, i64 1
  store %union.U0**** null, %union.U0***** %906, !tbaa !5
  %907 = getelementptr inbounds %union.U0****, %union.U0***** %906, i64 1
  store %union.U0**** %l_1358, %union.U0***** %907, !tbaa !5
  %908 = getelementptr inbounds %union.U0****, %union.U0***** %907, i64 1
  store %union.U0**** %l_1358, %union.U0***** %908, !tbaa !5
  %909 = getelementptr inbounds [9 x %union.U0****], [9 x %union.U0****]* %899, i64 1
  %910 = getelementptr inbounds [9 x %union.U0****], [9 x %union.U0****]* %909, i64 0, i64 0
  store %union.U0**** %l_1358, %union.U0***** %910, !tbaa !5
  %911 = getelementptr inbounds %union.U0****, %union.U0***** %910, i64 1
  store %union.U0**** null, %union.U0***** %911, !tbaa !5
  %912 = getelementptr inbounds %union.U0****, %union.U0***** %911, i64 1
  store %union.U0**** %l_1358, %union.U0***** %912, !tbaa !5
  %913 = getelementptr inbounds %union.U0****, %union.U0***** %912, i64 1
  store %union.U0**** %l_1358, %union.U0***** %913, !tbaa !5
  %914 = getelementptr inbounds %union.U0****, %union.U0***** %913, i64 1
  store %union.U0**** %l_1358, %union.U0***** %914, !tbaa !5
  %915 = getelementptr inbounds %union.U0****, %union.U0***** %914, i64 1
  store %union.U0**** %l_1358, %union.U0***** %915, !tbaa !5
  %916 = getelementptr inbounds %union.U0****, %union.U0***** %915, i64 1
  store %union.U0**** %l_1358, %union.U0***** %916, !tbaa !5
  %917 = getelementptr inbounds %union.U0****, %union.U0***** %916, i64 1
  store %union.U0**** %l_1358, %union.U0***** %917, !tbaa !5
  %918 = getelementptr inbounds %union.U0****, %union.U0***** %917, i64 1
  store %union.U0**** %l_1358, %union.U0***** %918, !tbaa !5
  %919 = getelementptr inbounds [9 x %union.U0****], [9 x %union.U0****]* %909, i64 1
  %920 = getelementptr inbounds [9 x %union.U0****], [9 x %union.U0****]* %919, i64 0, i64 0
  store %union.U0**** %l_1358, %union.U0***** %920, !tbaa !5
  %921 = getelementptr inbounds %union.U0****, %union.U0***** %920, i64 1
  store %union.U0**** %l_1358, %union.U0***** %921, !tbaa !5
  %922 = getelementptr inbounds %union.U0****, %union.U0***** %921, i64 1
  store %union.U0**** %l_1358, %union.U0***** %922, !tbaa !5
  %923 = getelementptr inbounds %union.U0****, %union.U0***** %922, i64 1
  store %union.U0**** null, %union.U0***** %923, !tbaa !5
  %924 = getelementptr inbounds %union.U0****, %union.U0***** %923, i64 1
  store %union.U0**** %l_1358, %union.U0***** %924, !tbaa !5
  %925 = getelementptr inbounds %union.U0****, %union.U0***** %924, i64 1
  store %union.U0**** null, %union.U0***** %925, !tbaa !5
  %926 = getelementptr inbounds %union.U0****, %union.U0***** %925, i64 1
  store %union.U0**** %l_1358, %union.U0***** %926, !tbaa !5
  %927 = getelementptr inbounds %union.U0****, %union.U0***** %926, i64 1
  store %union.U0**** null, %union.U0***** %927, !tbaa !5
  %928 = getelementptr inbounds %union.U0****, %union.U0***** %927, i64 1
  store %union.U0**** %l_1358, %union.U0***** %928, !tbaa !5
  %929 = getelementptr inbounds [9 x %union.U0****], [9 x %union.U0****]* %919, i64 1
  %930 = getelementptr inbounds [9 x %union.U0****], [9 x %union.U0****]* %929, i64 0, i64 0
  store %union.U0**** %l_1358, %union.U0***** %930, !tbaa !5
  %931 = getelementptr inbounds %union.U0****, %union.U0***** %930, i64 1
  store %union.U0**** %l_1358, %union.U0***** %931, !tbaa !5
  %932 = getelementptr inbounds %union.U0****, %union.U0***** %931, i64 1
  store %union.U0**** %l_1358, %union.U0***** %932, !tbaa !5
  %933 = getelementptr inbounds %union.U0****, %union.U0***** %932, i64 1
  store %union.U0**** %l_1358, %union.U0***** %933, !tbaa !5
  %934 = getelementptr inbounds %union.U0****, %union.U0***** %933, i64 1
  store %union.U0**** null, %union.U0***** %934, !tbaa !5
  %935 = getelementptr inbounds %union.U0****, %union.U0***** %934, i64 1
  store %union.U0**** %l_1358, %union.U0***** %935, !tbaa !5
  %936 = getelementptr inbounds %union.U0****, %union.U0***** %935, i64 1
  store %union.U0**** %l_1358, %union.U0***** %936, !tbaa !5
  %937 = getelementptr inbounds %union.U0****, %union.U0***** %936, i64 1
  store %union.U0**** %l_1358, %union.U0***** %937, !tbaa !5
  %938 = getelementptr inbounds %union.U0****, %union.U0***** %937, i64 1
  store %union.U0**** %l_1358, %union.U0***** %938, !tbaa !5
  %939 = getelementptr inbounds [9 x %union.U0****], [9 x %union.U0****]* %929, i64 1
  %940 = getelementptr inbounds [9 x %union.U0****], [9 x %union.U0****]* %939, i64 0, i64 0
  store %union.U0**** %l_1358, %union.U0***** %940, !tbaa !5
  %941 = getelementptr inbounds %union.U0****, %union.U0***** %940, i64 1
  store %union.U0**** %l_1358, %union.U0***** %941, !tbaa !5
  %942 = getelementptr inbounds %union.U0****, %union.U0***** %941, i64 1
  store %union.U0**** %l_1358, %union.U0***** %942, !tbaa !5
  %943 = getelementptr inbounds %union.U0****, %union.U0***** %942, i64 1
  store %union.U0**** %l_1358, %union.U0***** %943, !tbaa !5
  %944 = getelementptr inbounds %union.U0****, %union.U0***** %943, i64 1
  store %union.U0**** %l_1358, %union.U0***** %944, !tbaa !5
  %945 = getelementptr inbounds %union.U0****, %union.U0***** %944, i64 1
  store %union.U0**** %l_1358, %union.U0***** %945, !tbaa !5
  %946 = getelementptr inbounds %union.U0****, %union.U0***** %945, i64 1
  store %union.U0**** %l_1358, %union.U0***** %946, !tbaa !5
  %947 = getelementptr inbounds %union.U0****, %union.U0***** %946, i64 1
  store %union.U0**** %l_1358, %union.U0***** %947, !tbaa !5
  %948 = getelementptr inbounds %union.U0****, %union.U0***** %947, i64 1
  store %union.U0**** %l_1358, %union.U0***** %948, !tbaa !5
  %949 = getelementptr inbounds [9 x %union.U0****], [9 x %union.U0****]* %939, i64 1
  %950 = getelementptr inbounds [9 x %union.U0****], [9 x %union.U0****]* %949, i64 0, i64 0
  store %union.U0**** %l_1358, %union.U0***** %950, !tbaa !5
  %951 = getelementptr inbounds %union.U0****, %union.U0***** %950, i64 1
  store %union.U0**** %l_1358, %union.U0***** %951, !tbaa !5
  %952 = getelementptr inbounds %union.U0****, %union.U0***** %951, i64 1
  store %union.U0**** %l_1358, %union.U0***** %952, !tbaa !5
  %953 = getelementptr inbounds %union.U0****, %union.U0***** %952, i64 1
  store %union.U0**** null, %union.U0***** %953, !tbaa !5
  %954 = getelementptr inbounds %union.U0****, %union.U0***** %953, i64 1
  store %union.U0**** null, %union.U0***** %954, !tbaa !5
  %955 = getelementptr inbounds %union.U0****, %union.U0***** %954, i64 1
  store %union.U0**** %l_1358, %union.U0***** %955, !tbaa !5
  %956 = getelementptr inbounds %union.U0****, %union.U0***** %955, i64 1
  store %union.U0**** %l_1358, %union.U0***** %956, !tbaa !5
  %957 = getelementptr inbounds %union.U0****, %union.U0***** %956, i64 1
  store %union.U0**** %l_1358, %union.U0***** %957, !tbaa !5
  %958 = getelementptr inbounds %union.U0****, %union.U0***** %957, i64 1
  store %union.U0**** %l_1358, %union.U0***** %958, !tbaa !5
  %959 = bitcast i16** %l_1363 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %959) #1
  store i16* @g_106, i16** %l_1363, align 8, !tbaa !5
  %960 = bitcast i32* %l_1385 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %960) #1
  store i32 -910848946, i32* %l_1385, align 4, !tbaa !1
  %961 = bitcast i64** %l_1399 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %961) #1
  store i64* @g_1400, i64** %l_1399, align 8, !tbaa !5
  %962 = bitcast i32* %i24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %962) #1
  %963 = bitcast i32* %j25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %963) #1
  %964 = bitcast i32* %j25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %964) #1
  %965 = bitcast i32* %i24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %965) #1
  %966 = bitcast i64** %l_1399 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %966) #1
  %967 = bitcast i32* %l_1385 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %967) #1
  %968 = bitcast i16** %l_1363 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %968) #1
  %969 = bitcast [7 x [9 x %union.U0****]]* %l_1359 to i8*
  call void @llvm.lifetime.end(i64 504, i8* %969) #1
  br label %970

; <label>:970                                     ; preds = %887
  %971 = load i64, i64* getelementptr inbounds (%union.U2, %union.U2* bitcast ({ i16, [6 x i8] }* @g_558 to %union.U2*), i32 0, i32 0), align 8, !tbaa !7
  %972 = trunc i64 %971 to i8
  %973 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %972, i8 zeroext 8)
  %974 = zext i8 %973 to i64
  store i64 %974, i64* getelementptr inbounds (%union.U2, %union.U2* bitcast ({ i16, [6 x i8] }* @g_558 to %union.U2*), i32 0, i32 0), align 8, !tbaa !7
  br label %884

; <label>:975                                     ; preds = %884
  %976 = bitcast i32* %k23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %976) #1
  %977 = bitcast i32* %j22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %977) #1
  %978 = bitcast i32* %i21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %978) #1
  %979 = bitcast i64** %l_1398 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %979) #1
  %980 = bitcast %union.U0**** %l_1388 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %980) #1
  %981 = bitcast i32* %l_1383 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %981) #1
  %982 = bitcast [6 x [7 x [4 x %union.U1**]]]* %l_1366 to i8*
  call void @llvm.lifetime.end(i64 1344, i8* %982) #1
  br label %983

; <label>:983                                     ; preds = %975, %874
  store i32 0, i32* %6
  br label %984

; <label>:984                                     ; preds = %983, %868
  %985 = bitcast i32* %k12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %985) #1
  %986 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %986) #1
  %987 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %987) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1404) #1
  %988 = bitcast %union.U0**** %l_1362 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %988) #1
  %989 = bitcast %union.U1* %l_1326 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %989) #1
  %990 = bitcast i16*** %l_1283 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %990) #1
  %991 = bitcast i32* %l_1274 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %991) #1
  %992 = bitcast [1 x [8 x i32*]]* %l_1270 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %992) #1
  %993 = bitcast [3 x [8 x [8 x i16]]]* %l_1261 to i8*
  call void @llvm.lifetime.end(i64 384, i8* %993) #1
  %cleanup.dest.26 = load i32, i32* %6
  switch i32 %cleanup.dest.26, label %1003 [
    i32 0, label %994
  ]

; <label>:994                                     ; preds = %984
  br label %995

; <label>:995                                     ; preds = %994
  %996 = load i32, i32* %l_1115, align 4, !tbaa !1
  %997 = call i32 @safe_add_func_uint32_t_u_u(i32 %996, i32 7)
  store i32 %997, i32* %l_1115, align 4, !tbaa !1
  br label %409

; <label>:998                                     ; preds = %409
  %999 = getelementptr inbounds [4 x i16], [4 x i16]* %l_1410, i32 0, i64 0
  %1000 = load i16, i16* %999, align 2, !tbaa !10
  %1001 = add i16 %1000, -1
  store i16 %1001, i16* %999, align 2, !tbaa !10
  %1002 = load volatile i64*****, i64****** @g_1413, align 8, !tbaa !5
  store volatile i64***** %1002, i64****** %l_1417, align 8, !tbaa !5
  store i32 0, i32* %6
  br label %1003

; <label>:1003                                    ; preds = %998, %984
  %1004 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1004) #1
  %1005 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1005) #1
  %1006 = bitcast [7 x i32*]* %l_1409 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %1006) #1
  %1007 = bitcast i32** %l_1408 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1007) #1
  %1008 = bitcast i32** %l_1407 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1008) #1
  %1009 = bitcast i32** %l_1406 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1009) #1
  %1010 = bitcast i32* %l_1405 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1010) #1
  %1011 = bitcast i64* %l_1386 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1011) #1
  %1012 = bitcast %union.U0**** %l_1358 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1012) #1
  %1013 = bitcast [1 x [5 x i64]]* %l_1347 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1013) #1
  %1014 = bitcast i32* %l_1346 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1014) #1
  %1015 = bitcast %union.U0*** %l_1320 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1015) #1
  %1016 = bitcast %union.U0** %l_1321 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1016) #1
  %1017 = bitcast i32* %l_1319 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1017) #1
  %1018 = bitcast i64**** %l_1294 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1018) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1276) #1
  %1019 = bitcast i32* %l_1267 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1019) #1
  %cleanup.dest.27 = load i32, i32* %6
  switch i32 %cleanup.dest.27, label %1114 [
    i32 0, label %1020
  ]

; <label>:1020                                    ; preds = %1003
  br label %1021

; <label>:1021                                    ; preds = %1020, %316
  %1022 = load i32, i32* %l_1427, align 4, !tbaa !1
  %1023 = add i32 %1022, 1
  store i32 %1023, i32* %l_1427, align 4, !tbaa !1
  store i32 0, i32* @g_32, align 4, !tbaa !1
  br label %1024

; <label>:1024                                    ; preds = %1108, %1021
  %1025 = load i32, i32* @g_32, align 4, !tbaa !1
  %1026 = icmp ugt i32 %1025, 18
  br i1 %1026, label %1027, label %1111

; <label>:1027                                    ; preds = %1024
  %1028 = bitcast [7 x [4 x [8 x i8]]]* %l_1439 to i8*
  call void @llvm.lifetime.start(i64 224, i8* %1028) #1
  %1029 = bitcast [7 x [4 x [8 x i8]]]* %l_1439 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1029, i8* getelementptr inbounds ([7 x [4 x [8 x i8]]], [7 x [4 x [8 x i8]]]* @func_5.l_1439, i32 0, i32 0, i32 0, i32 0), i64 224, i32 16, i1 false)
  %1030 = bitcast i16* %l_1440 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1030) #1
  store i16 -1, i16* %l_1440, align 2, !tbaa !10
  %1031 = bitcast i32* %l_1445 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1031) #1
  store i32 1957620363, i32* %l_1445, align 4, !tbaa !1
  %1032 = bitcast [7 x %union.U0*]* %l_1456 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1032) #1
  %1033 = bitcast %union.U0*** %l_1455 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1033) #1
  %1034 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %l_1456, i32 0, i64 5
  store %union.U0** %1034, %union.U0*** %l_1455, align 8, !tbaa !5
  %1035 = bitcast [4 x i64****]* %l_1517 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1035) #1
  %1036 = bitcast [4 x i64****]* %l_1517 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1036, i8 0, i64 32, i32 16, i1 false)
  %1037 = bitcast i64****** %l_1516 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1037) #1
  %1038 = getelementptr inbounds [4 x i64****], [4 x i64****]* %l_1517, i32 0, i64 2
  store i64***** %1038, i64****** %l_1516, align 8, !tbaa !5
  %1039 = bitcast i32* %l_1520 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1039) #1
  store i32 581858254, i32* %l_1520, align 4, !tbaa !1
  %1040 = bitcast i32* %l_1595 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1040) #1
  store i32 -1418313427, i32* %l_1595, align 4, !tbaa !1
  %1041 = bitcast i32* %l_1596 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1041) #1
  store i32 1800669002, i32* %l_1596, align 4, !tbaa !1
  %1042 = bitcast i32* %l_1621 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1042) #1
  store i32 -5, i32* %l_1621, align 4, !tbaa !1
  %1043 = bitcast %union.U1* %l_1645 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1043) #1
  %1044 = bitcast %union.U1* %l_1645 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1044, i8* bitcast (%union.U1* @func_5.l_1645 to i8*), i64 4, i32 4, i1 false)
  %1045 = bitcast i32* %l_1654 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1045) #1
  store i32 329620302, i32* %l_1654, align 4, !tbaa !1
  %1046 = bitcast i32* %l_1700 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1046) #1
  store i32 1, i32* %l_1700, align 4, !tbaa !1
  %1047 = bitcast [8 x i8]* %l_1708 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1047) #1
  %1048 = bitcast [8 x i8]* %l_1708 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1048, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @func_5.l_1708, i32 0, i32 0), i64 8, i32 1, i1 false)
  %1049 = bitcast i16*** %l_1712 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1049) #1
  store i16** getelementptr inbounds ([5 x [8 x i16*]], [5 x [8 x i16*]]* @g_999, i32 0, i64 4, i64 3), i16*** %l_1712, align 8, !tbaa !5
  %1050 = bitcast i16*** %l_1772 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1050) #1
  store i16** getelementptr inbounds ([5 x [8 x i16*]], [5 x [8 x i16*]]* @g_999, i32 0, i64 3, i64 2), i16*** %l_1772, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1774) #1
  store i8 0, i8* %l_1774, align 1, !tbaa !9
  %1051 = bitcast i64** %l_1782 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1051) #1
  store i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_234, i32 0, i64 5), i64** %l_1782, align 8, !tbaa !5
  %1052 = bitcast i64* %l_1785 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1052) #1
  store i64 0, i64* %l_1785, align 8, !tbaa !7
  %1053 = bitcast i64* %l_1788 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1053) #1
  store i64 -6025725524777927398, i64* %l_1788, align 8, !tbaa !7
  %1054 = bitcast i16* %l_1814 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1054) #1
  store i16 1, i16* %l_1814, align 2, !tbaa !10
  %1055 = bitcast [9 x [5 x [5 x i32]]]* %l_1850 to i8*
  call void @llvm.lifetime.start(i64 900, i8* %1055) #1
  %1056 = bitcast [9 x [5 x [5 x i32]]]* %l_1850 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1056, i8* bitcast ([9 x [5 x [5 x i32]]]* @func_5.l_1850 to i8*), i64 900, i32 16, i1 false)
  %1057 = bitcast %union.U0* %l_1868 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1057) #1
  %1058 = bitcast %union.U0* %l_1868 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1058, i8* getelementptr inbounds ({ i8, i8, [2 x i8] }, { i8, i8, [2 x i8] }* @func_5.l_1868, i32 0, i32 0), i64 4, i32 4, i1 false)
  %1059 = bitcast i16* %l_1896 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1059) #1
  store i16 0, i16* %l_1896, align 2, !tbaa !10
  %1060 = bitcast i32** %l_1943 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1060) #1
  %1061 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %l_1117, i32 0, i64 0
  %1062 = getelementptr inbounds [3 x i32], [3 x i32]* %1061, i32 0, i64 1
  store i32* %1062, i32** %l_1943, align 8, !tbaa !5
  %1063 = bitcast [3 x [8 x i64]]* %l_1992 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %1063) #1
  %1064 = bitcast [3 x [8 x i64]]* %l_1992 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1064, i8* bitcast ([3 x [8 x i64]]* @func_5.l_1992 to i8*), i64 192, i32 16, i1 false)
  %1065 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1065) #1
  %1066 = bitcast i32* %j29 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1066) #1
  %1067 = bitcast i32* %k30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1067) #1
  store i32 0, i32* %i28, align 4, !tbaa !1
  br label %1068

; <label>:1068                                    ; preds = %1075, %1027
  %1069 = load i32, i32* %i28, align 4, !tbaa !1
  %1070 = icmp slt i32 %1069, 7
  br i1 %1070, label %1071, label %1078

; <label>:1071                                    ; preds = %1068
  %1072 = load i32, i32* %i28, align 4, !tbaa !1
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %l_1456, i32 0, i64 %1073
  store %union.U0* bitcast ({ i8, i8, [2 x i8] }* @g_95 to %union.U0*), %union.U0** %1074, align 8, !tbaa !5
  br label %1075

; <label>:1075                                    ; preds = %1071
  %1076 = load i32, i32* %i28, align 4, !tbaa !1
  %1077 = add nsw i32 %1076, 1
  store i32 %1077, i32* %i28, align 4, !tbaa !1
  br label %1068

; <label>:1078                                    ; preds = %1068
  %1079 = bitcast i32* %k30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1079) #1
  %1080 = bitcast i32* %j29 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1080) #1
  %1081 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1081) #1
  %1082 = bitcast [3 x [8 x i64]]* %l_1992 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %1082) #1
  %1083 = bitcast i32** %l_1943 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1083) #1
  %1084 = bitcast i16* %l_1896 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1084) #1
  %1085 = bitcast %union.U0* %l_1868 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1085) #1
  %1086 = bitcast [9 x [5 x [5 x i32]]]* %l_1850 to i8*
  call void @llvm.lifetime.end(i64 900, i8* %1086) #1
  %1087 = bitcast i16* %l_1814 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1087) #1
  %1088 = bitcast i64* %l_1788 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1088) #1
  %1089 = bitcast i64* %l_1785 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1089) #1
  %1090 = bitcast i64** %l_1782 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1090) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1774) #1
  %1091 = bitcast i16*** %l_1772 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1091) #1
  %1092 = bitcast i16*** %l_1712 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1092) #1
  %1093 = bitcast [8 x i8]* %l_1708 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1093) #1
  %1094 = bitcast i32* %l_1700 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1094) #1
  %1095 = bitcast i32* %l_1654 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1095) #1
  %1096 = bitcast %union.U1* %l_1645 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1096) #1
  %1097 = bitcast i32* %l_1621 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1097) #1
  %1098 = bitcast i32* %l_1596 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1098) #1
  %1099 = bitcast i32* %l_1595 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1099) #1
  %1100 = bitcast i32* %l_1520 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1100) #1
  %1101 = bitcast i64****** %l_1516 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1101) #1
  %1102 = bitcast [4 x i64****]* %l_1517 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1102) #1
  %1103 = bitcast %union.U0*** %l_1455 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1103) #1
  %1104 = bitcast [7 x %union.U0*]* %l_1456 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %1104) #1
  %1105 = bitcast i32* %l_1445 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1105) #1
  %1106 = bitcast i16* %l_1440 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1106) #1
  %1107 = bitcast [7 x [4 x [8 x i8]]]* %l_1439 to i8*
  call void @llvm.lifetime.end(i64 224, i8* %1107) #1
  br label %1108

; <label>:1108                                    ; preds = %1078
  %1109 = load i32, i32* @g_32, align 4, !tbaa !1
  %1110 = add i32 %1109, 1
  store i32 %1110, i32* @g_32, align 4, !tbaa !1
  br label %1024

; <label>:1111                                    ; preds = %1024
  %1112 = load volatile i32**, i32*** @g_1521, align 8, !tbaa !5
  %1113 = load i32*, i32** %1112, align 8, !tbaa !5
  store i32* %1113, i32** %1
  store i32 1, i32* %6
  br label %1114

; <label>:1114                                    ; preds = %1111, %1003
  %1115 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1115) #1
  %1116 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1116) #1
  %1117 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1117) #1
  %1118 = bitcast [6 x [1 x [4 x i64]]]* %l_1993 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %1118) #1
  %1119 = bitcast i32* %l_1990 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1119) #1
  %1120 = bitcast i64* %l_1989 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1120) #1
  %1121 = bitcast i64* %l_1985 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1121) #1
  %1122 = bitcast %union.U2** %l_1953 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1122) #1
  %1123 = bitcast i64** %l_1783 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1123) #1
  %1124 = bitcast [2 x i32]* %l_1680 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1124) #1
  %1125 = bitcast i64* %l_1655 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1125) #1
  %1126 = bitcast [6 x i16]* %l_1649 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1126) #1
  %1127 = bitcast i32*** %l_1620 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1127) #1
  %1128 = bitcast i32* %l_1536 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1128) #1
  %1129 = bitcast [2 x i16***]* %l_1508 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1129) #1
  %1130 = bitcast i32* %l_1427 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1130) #1
  %1131 = bitcast i32* %l_1426 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1131) #1
  %1132 = bitcast [3 x [10 x i32*]]* %l_1425 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %1132) #1
  %1133 = bitcast i32** %l_1424 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1133) #1
  %1134 = bitcast i32** %l_1423 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1134) #1
  %1135 = bitcast i32** %l_1422 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1135) #1
  %1136 = bitcast i32** %l_1421 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1136) #1
  %1137 = bitcast i32** %l_1420 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1137) #1
  %1138 = bitcast i32** %l_1419 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1138) #1
  %1139 = bitcast i32** %l_1418 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1139) #1
  %1140 = bitcast i64****** %l_1417 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1140) #1
  %1141 = bitcast [4 x i16]* %l_1410 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1141) #1
  %1142 = bitcast i64** %l_1397 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1142) #1
  %1143 = bitcast %union.U0****** %l_1377 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1143) #1
  %1144 = bitcast %union.U0***** %l_1378 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1144) #1
  %1145 = bitcast i8**** %l_1208 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1145) #1
  %1146 = bitcast i32* %l_1196 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1146) #1
  %1147 = bitcast [1 x i32]* %l_1119 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1147) #1
  %1148 = bitcast [2 x [3 x i32]]* %l_1117 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1148) #1
  %1149 = bitcast i32* %l_1115 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1149) #1
  %1150 = bitcast %union.U0** %l_1110 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1150) #1
  %1151 = load i32*, i32** %1
  ret i32* %1151
}

; Function Attrs: nounwind uwtable
define internal signext i16 @func_9(i32* %p_10, i8 zeroext %p_11, i32* %p_12) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %l_1017 = alloca i32, align 4
  %l_1052 = alloca i32, align 4
  %l_1061 = alloca i32, align 4
  %l_1064 = alloca i32, align 4
  %l_1066 = alloca [8 x i32], align 16
  %l_1087 = alloca i32, align 4
  %l_1096 = alloca i8**, align 8
  %l_1099 = alloca i32, align 4
  %i = alloca i32, align 4
  %l_1024 = alloca i32*, align 8
  %l_1048 = alloca i32, align 4
  %l_1049 = alloca i8, align 1
  %l_1065 = alloca [9 x [10 x i32]], align 16
  %l_1074 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %l_1050 = alloca [2 x i64], align 16
  %l_1057 = alloca i32, align 4
  %l_1062 = alloca i32, align 4
  %l_1063 = alloca i32, align 4
  %l_1067 = alloca i32, align 4
  %l_1068 = alloca i32, align 4
  %l_1069 = alloca i16, align 2
  %l_1076 = alloca i32***, align 8
  %l_1077 = alloca i32*, align 8
  %l_1078 = alloca i32*, align 8
  %l_1079 = alloca i32*, align 8
  %l_1080 = alloca [6 x i32*], align 16
  %l_1081 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %l_1047 = alloca [1 x i16], align 2
  %l_1060 = alloca [8 x i32], align 16
  %l_1075 = alloca i64*, align 8
  %i3 = alloca i32, align 4
  %l_1033 = alloca %union.U0**, align 8
  %l_1032 = alloca %union.U0***, align 8
  %l_1031 = alloca [10 x %union.U0****], align 16
  %l_1046 = alloca [1 x i16*], align 8
  %l_1051 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %5 = alloca i32
  %l_1053 = alloca i32*, align 8
  %l_1054 = alloca i32*, align 8
  %l_1055 = alloca i32*, align 8
  %l_1056 = alloca i32*, align 8
  %l_1058 = alloca i32*, align 8
  %l_1059 = alloca [2 x [2 x i32*]], align 16
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %l_1086 = alloca [1 x %union.U1], align 4
  %l_1089 = alloca i16, align 2
  %l_1100 = alloca i32**, align 8
  %i9 = alloca i32, align 4
  store i32* %p_10, i32** %2, align 8, !tbaa !5
  store i8 %p_11, i8* %3, align 1, !tbaa !9
  store i32* %p_12, i32** %4, align 8, !tbaa !5
  %6 = bitcast i32* %l_1017 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 -1, i32* %l_1017, align 4, !tbaa !1
  %7 = bitcast i32* %l_1052 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -4, i32* %l_1052, align 4, !tbaa !1
  %8 = bitcast i32* %l_1061 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -3, i32* %l_1061, align 4, !tbaa !1
  %9 = bitcast i32* %l_1064 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 7, i32* %l_1064, align 4, !tbaa !1
  %10 = bitcast [8 x i32]* %l_1066 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %10) #1
  %11 = bitcast i32* %l_1087 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -14245816, i32* %l_1087, align 4, !tbaa !1
  %12 = bitcast i8*** %l_1096 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i8** @g_186, i8*** %l_1096, align 8, !tbaa !5
  %13 = bitcast i32* %l_1099 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 453549334, i32* %l_1099, align 4, !tbaa !1
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:15                                      ; preds = %22, %0
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %25

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1066, i32 0, i64 %20
  store i32 -1, i32* %21, align 4, !tbaa !1
  br label %22

; <label>:22                                      ; preds = %18
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:25                                      ; preds = %15
  store i32 3, i32* @g_99, align 4, !tbaa !1
  br label %26

; <label>:26                                      ; preds = %360, %25
  %27 = load i32, i32* @g_99, align 4, !tbaa !1
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %363

; <label>:29                                      ; preds = %26
  %30 = bitcast i32** %l_1024 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i32* null, i32** %l_1024, align 8, !tbaa !5
  %31 = bitcast i32* %l_1048 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 -686148839, i32* %l_1048, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1049) #1
  store i8 0, i8* %l_1049, align 1, !tbaa !9
  %32 = bitcast [9 x [10 x i32]]* %l_1065 to i8*
  call void @llvm.lifetime.start(i64 360, i8* %32) #1
  %33 = bitcast [9 x [10 x i32]]* %l_1065 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* bitcast ([9 x [10 x i32]]* @func_9.l_1065 to i8*), i64 360, i32 16, i1 false)
  %34 = bitcast i32* %l_1074 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 693667023, i32* %l_1074, align 4, !tbaa !1
  %35 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i32, i32* %l_1017, align 4, !tbaa !1
  %38 = add i32 %37, -1
  store i32 %38, i32* %l_1017, align 4, !tbaa !1
  store i64 0, i64* @g_148, align 8, !tbaa !7
  br label %39

; <label>:39                                      ; preds = %348, %29
  %40 = load i64, i64* @g_148, align 8, !tbaa !7
  %41 = icmp ule i64 %40, 3
  br i1 %41, label %42, label %351

; <label>:42                                      ; preds = %39
  %43 = bitcast [2 x i64]* %l_1050 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %43) #1
  %44 = bitcast i32* %l_1057 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 -1300510503, i32* %l_1057, align 4, !tbaa !1
  %45 = bitcast i32* %l_1062 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  store i32 -682496140, i32* %l_1062, align 4, !tbaa !1
  %46 = bitcast i32* %l_1063 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  store i32 -1505351390, i32* %l_1063, align 4, !tbaa !1
  %47 = bitcast i32* %l_1067 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  store i32 1, i32* %l_1067, align 4, !tbaa !1
  %48 = bitcast i32* %l_1068 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  store i32 -1053566071, i32* %l_1068, align 4, !tbaa !1
  %49 = bitcast i16* %l_1069 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %49) #1
  store i16 28173, i16* %l_1069, align 2, !tbaa !10
  %50 = bitcast i32**** %l_1076 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  store i32*** null, i32**** %l_1076, align 8, !tbaa !5
  %51 = bitcast i32** %l_1077 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  store i32* %l_1064, i32** %l_1077, align 8, !tbaa !5
  %52 = bitcast i32** %l_1078 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  store i32* %l_1061, i32** %l_1078, align 8, !tbaa !5
  %53 = bitcast i32** %l_1079 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  store i32* @g_61, i32** %l_1079, align 8, !tbaa !5
  %54 = bitcast [6 x i32*]* %l_1080 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %54) #1
  %55 = getelementptr inbounds [6 x i32*], [6 x i32*]* %l_1080, i64 0, i64 0
  store i32* %l_1048, i32** %55, !tbaa !5
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  store i32* %l_1048, i32** %56, !tbaa !5
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  store i32* %l_1048, i32** %57, !tbaa !5
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  store i32* %l_1048, i32** %58, !tbaa !5
  %59 = getelementptr inbounds i32*, i32** %58, i64 1
  store i32* %l_1048, i32** %59, !tbaa !5
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  store i32* %l_1048, i32** %60, !tbaa !5
  %61 = bitcast i32* %l_1081 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  store i32 -961529326, i32* %l_1081, align 4, !tbaa !1
  %62 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %63

; <label>:63                                      ; preds = %70, %42
  %64 = load i32, i32* %i2, align 4, !tbaa !1
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %73

; <label>:66                                      ; preds = %63
  %67 = load i32, i32* %i2, align 4, !tbaa !1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2 x i64], [2 x i64]* %l_1050, i32 0, i64 %68
  store i64 -1, i64* %69, align 8, !tbaa !7
  br label %70

; <label>:70                                      ; preds = %66
  %71 = load i32, i32* %i2, align 4, !tbaa !1
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %i2, align 4, !tbaa !1
  br label %63

; <label>:73                                      ; preds = %63
  store i8 0, i8* bitcast (%union.U1* @g_76 to i8*), align 1, !tbaa !9
  br label %74

; <label>:74                                      ; preds = %324, %73
  %75 = load i8, i8* bitcast (%union.U1* @g_76 to i8*), align 1, !tbaa !9
  %76 = zext i8 %75 to i32
  %77 = icmp sle i32 %76, 3
  br i1 %77, label %78, label %329

; <label>:78                                      ; preds = %74
  %79 = bitcast [1 x i16]* %l_1047 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %79) #1
  %80 = bitcast [8 x i32]* %l_1060 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %80) #1
  %81 = bitcast [8 x i32]* %l_1060 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* bitcast ([8 x i32]* @func_9.l_1060 to i8*), i64 32, i32 16, i1 false)
  %82 = bitcast i64** %l_1075 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  store i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_234, i32 0, i64 6), i64** %l_1075, align 8, !tbaa !5
  %83 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %84

; <label>:84                                      ; preds = %91, %78
  %85 = load i32, i32* %i3, align 4, !tbaa !1
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %87, label %94

; <label>:87                                      ; preds = %84
  %88 = load i32, i32* %i3, align 4, !tbaa !1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [1 x i16], [1 x i16]* %l_1047, i32 0, i64 %89
  store i16 2, i16* %90, align 2, !tbaa !10
  br label %91

; <label>:91                                      ; preds = %87
  %92 = load i32, i32* %i3, align 4, !tbaa !1
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %i3, align 4, !tbaa !1
  br label %84

; <label>:94                                      ; preds = %84
  %95 = load i32*, i32** %4, align 8, !tbaa !5
  %96 = load i32, i32* %95, align 4, !tbaa !1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %244

; <label>:98                                      ; preds = %94
  %99 = bitcast %union.U0*** %l_1033 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  store %union.U0** @g_454, %union.U0*** %l_1033, align 8, !tbaa !5
  %100 = bitcast %union.U0**** %l_1032 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #1
  store %union.U0*** %l_1033, %union.U0**** %l_1032, align 8, !tbaa !5
  %101 = bitcast [10 x %union.U0****]* %l_1031 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %101) #1
  %102 = getelementptr inbounds [10 x %union.U0****], [10 x %union.U0****]* %l_1031, i64 0, i64 0
  store %union.U0**** %l_1032, %union.U0***** %102, !tbaa !5
  %103 = getelementptr inbounds %union.U0****, %union.U0***** %102, i64 1
  store %union.U0**** %l_1032, %union.U0***** %103, !tbaa !5
  %104 = getelementptr inbounds %union.U0****, %union.U0***** %103, i64 1
  store %union.U0**** %l_1032, %union.U0***** %104, !tbaa !5
  %105 = getelementptr inbounds %union.U0****, %union.U0***** %104, i64 1
  store %union.U0**** %l_1032, %union.U0***** %105, !tbaa !5
  %106 = getelementptr inbounds %union.U0****, %union.U0***** %105, i64 1
  store %union.U0**** %l_1032, %union.U0***** %106, !tbaa !5
  %107 = getelementptr inbounds %union.U0****, %union.U0***** %106, i64 1
  store %union.U0**** %l_1032, %union.U0***** %107, !tbaa !5
  %108 = getelementptr inbounds %union.U0****, %union.U0***** %107, i64 1
  store %union.U0**** %l_1032, %union.U0***** %108, !tbaa !5
  %109 = getelementptr inbounds %union.U0****, %union.U0***** %108, i64 1
  store %union.U0**** %l_1032, %union.U0***** %109, !tbaa !5
  %110 = getelementptr inbounds %union.U0****, %union.U0***** %109, i64 1
  store %union.U0**** %l_1032, %union.U0***** %110, !tbaa !5
  %111 = getelementptr inbounds %union.U0****, %union.U0***** %110, i64 1
  store %union.U0**** %l_1032, %union.U0***** %111, !tbaa !5
  %112 = bitcast [1 x i16*]* %l_1046 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  %113 = bitcast i32* %l_1051 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  store i32 -1, i32* %l_1051, align 4, !tbaa !1
  %114 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #1
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %115

; <label>:115                                     ; preds = %122, %98
  %116 = load i32, i32* %i4, align 4, !tbaa !1
  %117 = icmp slt i32 %116, 1
  br i1 %117, label %118, label %125

; <label>:118                                     ; preds = %115
  %119 = load i32, i32* %i4, align 4, !tbaa !1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [1 x i16*], [1 x i16*]* %l_1046, i32 0, i64 %120
  store i16* getelementptr inbounds ([3 x [7 x i16]], [3 x [7 x i16]]* @g_619, i32 0, i64 1, i64 5), i16** %121, align 8, !tbaa !5
  br label %122

; <label>:122                                     ; preds = %118
  %123 = load i32, i32* %i4, align 4, !tbaa !1
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %i4, align 4, !tbaa !1
  br label %115

; <label>:125                                     ; preds = %115
  %126 = load i32, i32* %l_1017, align 4, !tbaa !1
  %127 = load i32*, i32** %4, align 8, !tbaa !5
  %128 = load i32, i32* %127, align 4, !tbaa !1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %207, label %130

; <label>:130                                     ; preds = %125
  %131 = load i32*, i32** %4, align 8, !tbaa !5
  %132 = load i32*, i32** %l_1024, align 8, !tbaa !5
  %133 = icmp ne i32* %131, %132
  %134 = zext i1 %133 to i32
  %135 = getelementptr inbounds [10 x %union.U0****], [10 x %union.U0****]* %l_1031, i32 0, i64 5
  %136 = load %union.U0****, %union.U0***** %135, align 8, !tbaa !5
  %137 = icmp eq %union.U0**** %136, @g_971
  %138 = zext i1 %137 to i32
  %139 = trunc i32 %138 to i16
  %140 = load i32*, i32** %4, align 8, !tbaa !5
  %141 = load i32, i32* %140, align 4, !tbaa !1
  %142 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_502, i32 0, i32 0), align 2, !tbaa !10
  %143 = zext i16 %142 to i32
  %144 = load i8**, i8*** @g_480, align 8, !tbaa !5
  %145 = load i8*, i8** %144, align 8, !tbaa !5
  %146 = load i8, i8* %145, align 1, !tbaa !9
  %147 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext 5, i8 signext %146)
  %148 = sext i8 %147 to i16
  %149 = getelementptr inbounds [1 x i16], [1 x i16]* %l_1047, i32 0, i64 0
  store i16 %148, i16* %149, align 2, !tbaa !10
  %150 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %148, i32 1217456327)
  %151 = zext i16 %150 to i32
  %152 = call i32 @safe_mod_func_int32_t_s_s(i32 %151, i32 4)
  %153 = load i32, i32* %l_1048, align 4, !tbaa !1
  %154 = icmp sle i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = trunc i32 %155 to i8
  %157 = load i8, i8* %3, align 1, !tbaa !9
  %158 = zext i8 %157 to i32
  %159 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %156, i32 %158)
  %160 = zext i8 %159 to i32
  %161 = load i8, i8* %3, align 1, !tbaa !9
  %162 = zext i8 %161 to i32
  %163 = or i32 %160, %162
  %164 = load i8, i8* %l_1049, align 1, !tbaa !9
  %165 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %164, i32 4)
  %166 = sext i8 %165 to i64
  %167 = or i64 %166, 1
  %168 = load i8, i8* %3, align 1, !tbaa !9
  %169 = zext i8 %168 to i64
  %170 = icmp ule i64 %167, %169
  %171 = zext i1 %170 to i32
  %172 = trunc i32 %171 to i16
  %173 = load i32, i32* %l_1017, align 4, !tbaa !1
  %174 = trunc i32 %173 to i16
  %175 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %172, i16 signext %174)
  %176 = sext i16 %175 to i32
  %177 = xor i32 %143, %176
  %178 = icmp slt i32 %141, %177
  %179 = zext i1 %178 to i32
  %180 = trunc i32 %179 to i16
  %181 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %139, i16 zeroext %180)
  %182 = trunc i16 %181 to i8
  %183 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %182, i8 signext 2)
  %184 = load i8, i8* %3, align 1, !tbaa !9
  %185 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %183, i8 signext %184)
  %186 = sext i8 %185 to i32
  %187 = load i32*, i32** %4, align 8, !tbaa !5
  %188 = load i32, i32* %187, align 4, !tbaa !1
  %189 = icmp sgt i32 %186, %188
  %190 = zext i1 %189 to i32
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [2 x i64], [2 x i64]* %l_1050, i32 0, i64 0
  %193 = load i64, i64* %192, align 8, !tbaa !7
  %194 = icmp ugt i64 %191, %193
  %195 = zext i1 %194 to i32
  %196 = icmp eq i32 %134, %195
  br i1 %196, label %197, label %201

; <label>:197                                     ; preds = %130
  %198 = load i8, i8* %3, align 1, !tbaa !9
  %199 = zext i8 %198 to i32
  %200 = icmp ne i32 %199, 0
  br label %201

; <label>:201                                     ; preds = %197, %130
  %202 = phi i1 [ false, %130 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  %204 = load i32*, i32** %4, align 8, !tbaa !5
  %205 = load i32, i32* %204, align 4, !tbaa !1
  %206 = icmp ne i32 %205, 0
  br label %207

; <label>:207                                     ; preds = %201, %125
  %208 = phi i1 [ true, %125 ], [ %206, %201 ]
  %209 = zext i1 %208 to i32
  %210 = icmp sge i32 %209, -1
  %211 = zext i1 %210 to i32
  %212 = trunc i32 %211 to i8
  %213 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %212, i32 4)
  %214 = zext i8 %213 to i64
  %215 = icmp ne i64 %214, 36695
  %216 = zext i1 %215 to i32
  %217 = load i32, i32* %l_1048, align 4, !tbaa !1
  %218 = icmp eq i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = sext i32 %219 to i64
  %221 = load i32, i32* %l_1017, align 4, !tbaa !1
  %222 = zext i32 %221 to i64
  %223 = call i64 @safe_div_func_int64_t_s_s(i64 %220, i64 %222)
  %224 = load i32, i32* %l_1052, align 4, !tbaa !1
  %225 = sext i32 %224 to i64
  %226 = and i64 %225, %223
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %l_1052, align 4, !tbaa !1
  %228 = load i8, i8* %3, align 1, !tbaa !9
  %229 = zext i8 %228 to i32
  %230 = icmp sgt i32 %227, %229
  br i1 %230, label %231, label %234

; <label>:231                                     ; preds = %207
  %232 = load i8, i8* %3, align 1, !tbaa !9
  %233 = zext i8 %232 to i16
  store i16 %233, i16* %1
  store i32 1, i32* %5
  br label %237

; <label>:234                                     ; preds = %207
  %235 = load i8, i8* %3, align 1, !tbaa !9
  %236 = zext i8 %235 to i16
  store i16 %236, i16* %1
  store i32 1, i32* %5
  br label %237

; <label>:237                                     ; preds = %234, %231
  %238 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast i32* %l_1051 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %240 = bitcast [1 x i16*]* %l_1046 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %240) #1
  %241 = bitcast [10 x %union.U0****]* %l_1031 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %241) #1
  %242 = bitcast %union.U0**** %l_1032 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %242) #1
  %243 = bitcast %union.U0*** %l_1033 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %243) #1
  br label %318

; <label>:244                                     ; preds = %94
  %245 = bitcast i32** %l_1053 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %245) #1
  store i32* @g_61, i32** %l_1053, align 8, !tbaa !5
  %246 = bitcast i32** %l_1054 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %246) #1
  store i32* @g_80, i32** %l_1054, align 8, !tbaa !5
  %247 = bitcast i32** %l_1055 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %247) #1
  store i32* %l_1048, i32** %l_1055, align 8, !tbaa !5
  %248 = bitcast i32** %l_1056 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %248) #1
  store i32* @g_4, i32** %l_1056, align 8, !tbaa !5
  %249 = bitcast i32** %l_1058 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %249) #1
  store i32* %l_1057, i32** %l_1058, align 8, !tbaa !5
  %250 = bitcast [2 x [2 x i32*]]* %l_1059 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %250) #1
  %251 = getelementptr inbounds [2 x [2 x i32*]], [2 x [2 x i32*]]* %l_1059, i64 0, i64 0
  %252 = getelementptr inbounds [2 x i32*], [2 x i32*]* %251, i64 0, i64 0
  store i32* %l_1048, i32** %252, !tbaa !5
  %253 = getelementptr inbounds i32*, i32** %252, i64 1
  store i32* %l_1048, i32** %253, !tbaa !5
  %254 = getelementptr inbounds [2 x i32*], [2 x i32*]* %251, i64 1
  %255 = getelementptr inbounds [2 x i32*], [2 x i32*]* %254, i64 0, i64 0
  store i32* %l_1048, i32** %255, !tbaa !5
  %256 = getelementptr inbounds i32*, i32** %255, i64 1
  store i32* %l_1048, i32** %256, !tbaa !5
  %257 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %257) #1
  %258 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %258) #1
  %259 = load i16, i16* %l_1069, align 2, !tbaa !10
  %260 = add i16 %259, 1
  store i16 %260, i16* %l_1069, align 2, !tbaa !10
  %261 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast [2 x [2 x i32*]]* %l_1059 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %263) #1
  %264 = bitcast i32** %l_1058 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #1
  %265 = bitcast i32** %l_1056 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #1
  %266 = bitcast i32** %l_1055 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %266) #1
  %267 = bitcast i32** %l_1054 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %267) #1
  %268 = bitcast i32** %l_1053 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #1
  br label %269

; <label>:269                                     ; preds = %244
  %270 = icmp ne i32** @g_207, %2
  %271 = zext i1 %270 to i32
  %272 = load i32, i32* %l_1063, align 4, !tbaa !1
  %273 = load i32, i32* %l_1052, align 4, !tbaa !1
  %274 = and i32 %272, %273
  %275 = load i32, i32* %l_1074, align 4, !tbaa !1
  %276 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1060, i32 0, i64 3
  %277 = load i32, i32* %276, align 4, !tbaa !1
  %278 = sext i32 %277 to i64
  %279 = and i64 %278, 2127638851437845415
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %276, align 4, !tbaa !1
  %281 = sext i32 %280 to i64
  %282 = load i64*, i64** %l_1075, align 8, !tbaa !5
  store i64 %281, i64* %282, align 8, !tbaa !7
  %283 = load i32***, i32**** %l_1076, align 8, !tbaa !5
  %284 = icmp eq i32*** %283, null
  %285 = zext i1 %284 to i32
  %286 = sext i32 %285 to i64
  %287 = icmp sge i64 %281, %286
  %288 = zext i1 %287 to i32
  %289 = and i32 %275, 0
  %290 = sext i32 %289 to i64
  %291 = icmp sge i64 %290, 0
  %292 = zext i1 %291 to i32
  br i1 true, label %297, label %293

; <label>:293                                     ; preds = %269
  %294 = load i8, i8* %3, align 1, !tbaa !9
  %295 = zext i8 %294 to i32
  %296 = icmp ne i32 %295, 0
  br label %297

; <label>:297                                     ; preds = %293, %269
  %298 = phi i1 [ true, %269 ], [ %296, %293 ]
  %299 = zext i1 %298 to i32
  %300 = sext i32 %299 to i64
  %301 = load i8, i8* %3, align 1, !tbaa !9
  %302 = zext i8 %301 to i64
  %303 = call i64 @safe_div_func_int64_t_s_s(i64 %300, i64 %302)
  %304 = load i8, i8* %l_1049, align 1, !tbaa !9
  %305 = zext i8 %304 to i32
  %306 = and i32 %271, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

; <label>:308                                     ; preds = %297
  br label %309

; <label>:309                                     ; preds = %308, %297
  %310 = phi i1 [ false, %297 ], [ true, %308 ]
  %311 = zext i1 %310 to i32
  %312 = sext i32 %311 to i64
  %313 = icmp ule i64 %312, -664328088523619700
  %314 = zext i1 %313 to i32
  %315 = sext i32 %314 to i64
  %316 = icmp uge i64 %315, 65535
  %317 = zext i1 %316 to i32
  store i32 %317, i32* %l_1048, align 4, !tbaa !1
  store i32 0, i32* %5
  br label %318

; <label>:318                                     ; preds = %309, %237
  %319 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast i64** %l_1075 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %320) #1
  %321 = bitcast [8 x i32]* %l_1060 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %321) #1
  %322 = bitcast [1 x i16]* %l_1047 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %322) #1
  %cleanup.dest = load i32, i32* %5
  switch i32 %cleanup.dest, label %332 [
    i32 0, label %323
  ]

; <label>:323                                     ; preds = %318
  br label %324

; <label>:324                                     ; preds = %323
  %325 = load i8, i8* bitcast (%union.U1* @g_76 to i8*), align 1, !tbaa !9
  %326 = zext i8 %325 to i32
  %327 = add nsw i32 %326, 1
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* bitcast (%union.U1* @g_76 to i8*), align 1, !tbaa !9
  br label %74

; <label>:329                                     ; preds = %74
  %330 = load i32, i32* %l_1081, align 4, !tbaa !1
  %331 = add i32 %330, -1
  store i32 %331, i32* %l_1081, align 4, !tbaa !1
  store i32 0, i32* %5
  br label %332

; <label>:332                                     ; preds = %329, %318
  %333 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %333) #1
  %334 = bitcast i32* %l_1081 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #1
  %335 = bitcast [6 x i32*]* %l_1080 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %335) #1
  %336 = bitcast i32** %l_1079 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %336) #1
  %337 = bitcast i32** %l_1078 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %337) #1
  %338 = bitcast i32** %l_1077 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %338) #1
  %339 = bitcast i32**** %l_1076 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %339) #1
  %340 = bitcast i16* %l_1069 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %340) #1
  %341 = bitcast i32* %l_1068 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %341) #1
  %342 = bitcast i32* %l_1067 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %342) #1
  %343 = bitcast i32* %l_1063 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %343) #1
  %344 = bitcast i32* %l_1062 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %344) #1
  %345 = bitcast i32* %l_1057 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %345) #1
  %346 = bitcast [2 x i64]* %l_1050 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %346) #1
  %cleanup.dest.7 = load i32, i32* %5
  switch i32 %cleanup.dest.7, label %352 [
    i32 0, label %347
  ]

; <label>:347                                     ; preds = %332
  br label %348

; <label>:348                                     ; preds = %347
  %349 = load i64, i64* @g_148, align 8, !tbaa !7
  %350 = add i64 %349, 1
  store i64 %350, i64* @g_148, align 8, !tbaa !7
  br label %39

; <label>:351                                     ; preds = %39
  store i32 0, i32* %5
  br label %352

; <label>:352                                     ; preds = %351, %332
  %353 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353) #1
  %354 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %354) #1
  %355 = bitcast i32* %l_1074 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %355) #1
  %356 = bitcast [9 x [10 x i32]]* %l_1065 to i8*
  call void @llvm.lifetime.end(i64 360, i8* %356) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1049) #1
  %357 = bitcast i32* %l_1048 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %357) #1
  %358 = bitcast i32** %l_1024 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #1
  %cleanup.dest.8 = load i32, i32* %5
  switch i32 %cleanup.dest.8, label %451 [
    i32 0, label %359
  ]

; <label>:359                                     ; preds = %352
  br label %360

; <label>:360                                     ; preds = %359
  %361 = load i32, i32* @g_99, align 4, !tbaa !1
  %362 = sub nsw i32 %361, 1
  store i32 %362, i32* @g_99, align 4, !tbaa !1
  br label %26

; <label>:363                                     ; preds = %26
  store i64 0, i64* @g_148, align 8, !tbaa !7
  br label %364

; <label>:364                                     ; preds = %435, %363
  %365 = load i64, i64* @g_148, align 8, !tbaa !7
  %366 = icmp ule i64 %365, 54
  br i1 %366, label %367, label %438

; <label>:367                                     ; preds = %364
  %368 = bitcast [1 x %union.U1]* %l_1086 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %368) #1
  %369 = bitcast [1 x %union.U1]* %l_1086 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %369, i8* bitcast ([1 x %union.U1]* @func_9.l_1086 to i8*), i64 4, i32 4, i1 false)
  %370 = bitcast i16* %l_1089 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %370) #1
  store i16 -25261, i16* %l_1089, align 2, !tbaa !10
  %371 = bitcast i32*** %l_1100 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %371) #1
  store i32** @g_207, i32*** %l_1100, align 8, !tbaa !5
  %372 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %372) #1
  %373 = getelementptr inbounds [1 x %union.U1], [1 x %union.U1]* %l_1086, i32 0, i64 0
  %374 = load i32, i32* %l_1087, align 4, !tbaa !1
  %375 = load i32, i32* %l_1017, align 4, !tbaa !1
  %376 = icmp ne i32 %375, 0
  %377 = xor i1 %376, true
  %378 = zext i1 %377 to i32
  %379 = load i16, i16* %l_1089, align 2, !tbaa !10
  %380 = sext i16 %379 to i32
  %381 = load i8**, i8*** %l_1096, align 8, !tbaa !5
  %382 = icmp ne i8** null, %381
  %383 = zext i1 %382 to i32
  %384 = load volatile i16**, i16*** @g_998, align 8, !tbaa !5
  %385 = load i16*, i16** %384, align 8, !tbaa !5
  %386 = icmp eq i16* %385, @g_598
  br i1 %386, label %388, label %387

; <label>:387                                     ; preds = %367
  br label %388

; <label>:388                                     ; preds = %387, %367
  %389 = phi i1 [ true, %367 ], [ true, %387 ]
  %390 = zext i1 %389 to i32
  %391 = trunc i32 %390 to i16
  %392 = load i8, i8* %3, align 1, !tbaa !9
  %393 = zext i8 %392 to i32
  %394 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %391, i32 %393)
  %395 = sext i16 %394 to i64
  %396 = or i64 %395, 27850
  %397 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1066, i32 0, i64 4
  %398 = load i32, i32* %397, align 4, !tbaa !1
  %399 = sext i32 %398 to i64
  %400 = or i64 %396, %399
  %401 = trunc i64 %400 to i16
  %402 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext 6475, i16 signext %401)
  %403 = getelementptr inbounds [1 x %union.U1], [1 x %union.U1]* %l_1086, i32 0, i64 0
  %404 = bitcast %union.U1* %403 to i32*
  %405 = load i32, i32* %404, align 4, !tbaa !1
  %406 = load i32, i32* %l_1064, align 4, !tbaa !1
  %407 = load i16, i16* %l_1089, align 2, !tbaa !10
  %408 = sext i16 %407 to i32
  %409 = icmp sgt i32 %406, %408
  %410 = zext i1 %409 to i32
  %411 = load i8, i8* %3, align 1, !tbaa !9
  %412 = zext i8 %411 to i32
  %413 = call i32 @safe_div_func_int32_t_s_s(i32 %410, i32 %412)
  %414 = load i32, i32* %l_1099, align 4, !tbaa !1
  %415 = call i32 @safe_mod_func_int32_t_s_s(i32 %413, i32 %414)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %421, label %417

; <label>:417                                     ; preds = %388
  %418 = load i8, i8* %3, align 1, !tbaa !9
  %419 = zext i8 %418 to i32
  %420 = icmp ne i32 %419, 0
  br label %421

; <label>:421                                     ; preds = %417, %388
  %422 = phi i1 [ true, %388 ], [ %420, %417 ]
  %423 = zext i1 %422 to i32
  %424 = icmp sle i32 %380, %423
  %425 = zext i1 %424 to i32
  %426 = sext i32 %425 to i64
  %427 = getelementptr %union.U1, %union.U1* %373, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = call i32* @func_23(i32 %428, i32 %374, i64 %426)
  %430 = load i32**, i32*** %l_1100, align 8, !tbaa !5
  store i32* %429, i32** %430, align 8, !tbaa !5
  %431 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %431) #1
  %432 = bitcast i32*** %l_1100 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %432) #1
  %433 = bitcast i16* %l_1089 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %433) #1
  %434 = bitcast [1 x %union.U1]* %l_1086 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %434) #1
  br label %435

; <label>:435                                     ; preds = %421
  %436 = load i64, i64* @g_148, align 8, !tbaa !7
  %437 = add i64 %436, 1
  store i64 %437, i64* @g_148, align 8, !tbaa !7
  br label %364

; <label>:438                                     ; preds = %364
  store i32 0, i32* @g_96, align 4, !tbaa !1
  br label %439

; <label>:439                                     ; preds = %445, %438
  %440 = load i32, i32* @g_96, align 4, !tbaa !1
  %441 = icmp ule i32 %440, 8
  br i1 %441, label %442, label %448

; <label>:442                                     ; preds = %439
  %443 = load i8, i8* @g_222, align 1, !tbaa !9
  %444 = sext i8 %443 to i16
  store i16 %444, i16* %1
  store i32 1, i32* %5
  br label %451
                                                  ; No predecessors!
  %446 = load i32, i32* @g_96, align 4, !tbaa !1
  %447 = add i32 %446, 1
  store i32 %447, i32* @g_96, align 4, !tbaa !1
  br label %439

; <label>:448                                     ; preds = %439
  %449 = load i8, i8* %3, align 1, !tbaa !9
  %450 = zext i8 %449 to i16
  store i16 %450, i16* %1
  store i32 1, i32* %5
  br label %451

; <label>:451                                     ; preds = %448, %442, %352
  %452 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %452) #1
  %453 = bitcast i32* %l_1099 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %453) #1
  %454 = bitcast i8*** %l_1096 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %454) #1
  %455 = bitcast i32* %l_1087 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %455) #1
  %456 = bitcast [8 x i32]* %l_1066 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %456) #1
  %457 = bitcast i32* %l_1064 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %457) #1
  %458 = bitcast i32* %l_1061 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %458) #1
  %459 = bitcast i32* %l_1052 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %459) #1
  %460 = bitcast i32* %l_1017 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %460) #1
  %461 = load i16, i16* %1
  ret i16 %461
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
define internal i32 @func_20(i32* %p_21, i32* %p_22) #0 {
  %1 = alloca %union.U0, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %l_1009 = alloca %union.U0, align 4
  %l_1016 = alloca i32, align 4
  store i32* %p_21, i32** %2, align 8, !tbaa !5
  store i32* %p_22, i32** %3, align 8, !tbaa !5
  %4 = bitcast %union.U0* %l_1009 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %union.U0* %l_1009 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* getelementptr inbounds ({ i8, i8, [2 x i8] }, { i8, i8, [2 x i8] }* @func_20.l_1009, i32 0, i32 0), i64 4, i32 4, i1 false)
  %6 = bitcast i32* %l_1016 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 -1, i32* %l_1016, align 4, !tbaa !1
  %7 = bitcast %union.U0* %l_1009 to i16*
  %8 = load i16, i16* %7, align 4
  %9 = and i16 %8, 2047
  %10 = zext i16 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

; <label>:12                                      ; preds = %0
  %13 = bitcast %union.U0* %l_1009 to i16*
  %14 = load i16, i16* %13, align 4
  %15 = and i16 %14, 2047
  %16 = zext i16 %15 to i32
  %17 = icmp ne i32 %16, 0
  br label %18

; <label>:18                                      ; preds = %12, %0
  %19 = phi i1 [ true, %0 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = trunc i32 %20 to i16
  %22 = load i8*, i8** @g_512, align 8, !tbaa !5
  %23 = load i8, i8* %22, align 1, !tbaa !9
  %24 = zext i8 %23 to i32
  %25 = bitcast %union.U0* %l_1009 to i16*
  %26 = load i16, i16* %25, align 4
  %27 = and i16 %26, 2047
  %28 = zext i16 %27 to i32
  %29 = xor i32 %24, %28
  %30 = sext i32 %29 to i64
  %31 = bitcast %union.U0* %l_1009 to i16*
  %32 = load i16, i16* %31, align 4
  %33 = and i16 %32, 2047
  %34 = zext i16 %33 to i32
  %35 = zext i32 %34 to i64
  %36 = bitcast %union.U0* %l_1009 to i16*
  %37 = load i16, i16* %36, align 4
  %38 = and i16 %37, 2047
  %39 = zext i16 %38 to i32
  %40 = zext i32 %39 to i64
  %41 = call i64 @safe_sub_func_int64_t_s_s(i64 %35, i64 %40)
  %42 = call i64 @safe_div_func_uint64_t_u_u(i64 %30, i64 %41)
  %43 = load i32, i32* %l_1016, align 4, !tbaa !1
  %44 = zext i32 %43 to i64
  %45 = and i64 -10, %44
  %46 = trunc i64 %45 to i32
  %47 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %21, i32 %46)
  %48 = sext i16 %47 to i32
  %49 = bitcast %union.U0* %l_1009 to i16*
  %50 = load i16, i16* %49, align 4
  %51 = and i16 %50, 2047
  %52 = zext i16 %51 to i32
  %53 = icmp sgt i32 %48, %52
  %54 = zext i1 %53 to i32
  %55 = bitcast %union.U0* %l_1009 to i16*
  %56 = load i16, i16* %55, align 4
  %57 = and i16 %56, 2047
  %58 = zext i16 %57 to i32
  %59 = icmp slt i32 %54, %58
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %3, align 8, !tbaa !5
  store i32 %60, i32* %61, align 4, !tbaa !1
  %62 = bitcast %union.U0* %1 to i8*
  %63 = bitcast %union.U0* %l_1009 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 4, i32 4, i1 false), !tbaa.struct !13
  %64 = bitcast i32* %l_1016 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %union.U0* %l_1009 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast %union.U0* %1 to i32*
  %67 = load i32, i32* %66, align 4
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal i32* @func_23(i32 %p_24.coerce, i32 %p_25, i64 %p_26) #0 {
  %p_24 = alloca %union.U1, align 4
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %l_34 = alloca i32*, align 8
  %l_756 = alloca [6 x [1 x [5 x i64]]], align 16
  %l_757 = alloca i16, align 2
  %l_762 = alloca [5 x %union.U0**], align 16
  %l_761 = alloca %union.U0***, align 8
  %l_760 = alloca %union.U0****, align 8
  %l_803 = alloca i64, align 8
  %l_816 = alloca %union.U1*, align 8
  %l_836 = alloca i32, align 4
  %l_903 = alloca [7 x i32], align 16
  %l_916 = alloca i32, align 4
  %l_919 = alloca [9 x [1 x i16*]], align 16
  %l_980 = alloca i16, align 2
  %l_1004 = alloca [9 x [6 x [4 x i64]]], align 16
  %l_1007 = alloca i32*, align 8
  %l_1008 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_710 = alloca i32**, align 8
  %l_711 = alloca i32**, align 8
  %l_720 = alloca i8, align 1
  %l_752 = alloca i32, align 4
  %l_763 = alloca [8 x i64**], align 16
  %l_778 = alloca [7 x i32*], align 16
  %l_911 = alloca i8, align 1
  %l_912 = alloca i16, align 2
  %l_917 = alloca i16*, align 8
  %l_928 = alloca i8*, align 8
  %l_932 = alloca [9 x %union.U1**], align 16
  %l_976 = alloca i8**, align 8
  %l_987 = alloca %union.U0***, align 8
  %i1 = alloca i32, align 4
  %3 = getelementptr %union.U1, %union.U1* %p_24, i32 0, i32 0
  store i32 %p_24.coerce, i32* %3, align 4
  store i32 %p_25, i32* %1, align 4, !tbaa !1
  store i64 %p_26, i64* %2, align 8, !tbaa !7
  %4 = bitcast i32** %l_34 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_4, i32** %l_34, align 8, !tbaa !5
  %5 = bitcast [6 x [1 x [5 x i64]]]* %l_756 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %5) #1
  %6 = bitcast [6 x [1 x [5 x i64]]]* %l_756 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([6 x [1 x [5 x i64]]]* @func_23.l_756 to i8*), i64 240, i32 16, i1 false)
  %7 = bitcast i16* %l_757 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  store i16 28248, i16* %l_757, align 2, !tbaa !10
  %8 = bitcast [5 x %union.U0**]* %l_762 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %8) #1
  %9 = bitcast %union.U0**** %l_761 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = getelementptr inbounds [5 x %union.U0**], [5 x %union.U0**]* %l_762, i32 0, i64 1
  store %union.U0*** %10, %union.U0**** %l_761, align 8, !tbaa !5
  %11 = bitcast %union.U0***** %l_760 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %union.U0**** %l_761, %union.U0***** %l_760, align 8, !tbaa !5
  %12 = bitcast i64* %l_803 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64 0, i64* %l_803, align 8, !tbaa !7
  %13 = bitcast %union.U1** %l_816 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store %union.U1* null, %union.U1** %l_816, align 8, !tbaa !5
  %14 = bitcast i32* %l_836 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 605204329, i32* %l_836, align 4, !tbaa !1
  %15 = bitcast [7 x i32]* %l_903 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %15) #1
  %16 = bitcast [7 x i32]* %l_903 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast ([7 x i32]* @func_23.l_903 to i8*), i64 28, i32 16, i1 false)
  %17 = bitcast i32* %l_916 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %l_916, align 4, !tbaa !1
  %18 = bitcast [9 x [1 x i16*]]* %l_919 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %18) #1
  %19 = bitcast [9 x [1 x i16*]]* %l_919 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast ([9 x [1 x i16*]]* @func_23.l_919 to i8*), i64 72, i32 16, i1 false)
  %20 = bitcast i16* %l_980 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %20) #1
  store i16 0, i16* %l_980, align 2, !tbaa !10
  %21 = bitcast [9 x [6 x [4 x i64]]]* %l_1004 to i8*
  call void @llvm.lifetime.start(i64 1728, i8* %21) #1
  %22 = bitcast [9 x [6 x [4 x i64]]]* %l_1004 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* bitcast ([9 x [6 x [4 x i64]]]* @func_23.l_1004 to i8*), i64 1728, i32 16, i1 false)
  %23 = bitcast i32** %l_1007 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_118, i32 0, i64 6), i32** %l_1007, align 8, !tbaa !5
  %24 = bitcast i32** %l_1008 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_118, i32 0, i64 4), i32** %l_1008, align 8, !tbaa !5
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %28

; <label>:28                                      ; preds = %35, %0
  %29 = load i32, i32* %i, align 4, !tbaa !1
  %30 = icmp slt i32 %29, 5
  br i1 %30, label %31, label %38

; <label>:31                                      ; preds = %28
  %32 = load i32, i32* %i, align 4, !tbaa !1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [5 x %union.U0**], [5 x %union.U0**]* %l_762, i32 0, i64 %33
  store %union.U0** @g_454, %union.U0*** %34, align 8, !tbaa !5
  br label %35

; <label>:35                                      ; preds = %31
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %i, align 4, !tbaa !1
  br label %28

; <label>:38                                      ; preds = %28
  %39 = load i64, i64* %2, align 8, !tbaa !7
  %40 = load i32*, i32** %l_34, align 8, !tbaa !5
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %42 = sext i32 %41 to i64
  %43 = xor i64 %42, %39
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4, !tbaa !1
  store i32 0, i32* %1, align 4, !tbaa !1
  br label %45

; <label>:45                                      ; preds = %77, %38
  %46 = load i32, i32* %1, align 4, !tbaa !1
  %47 = icmp uge i32 %46, 57
  br i1 %47, label %48, label %82

; <label>:48                                      ; preds = %45
  %49 = bitcast i32*** %l_710 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i32** null, i32*** %l_710, align 8, !tbaa !5
  %50 = bitcast i32*** %l_711 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  store i32** %l_34, i32*** %l_711, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_720) #1
  store i8 113, i8* %l_720, align 1, !tbaa !9
  %51 = bitcast i32* %l_752 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 -7, i32* %l_752, align 4, !tbaa !1
  %52 = bitcast [8 x i64**]* %l_763 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %52) #1
  %53 = bitcast [8 x i64**]* %l_763 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* bitcast ([8 x i64**]* @func_23.l_763 to i8*), i64 64, i32 16, i1 false)
  %54 = bitcast [7 x i32*]* %l_778 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %54) #1
  %55 = bitcast [7 x i32*]* %l_778 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* bitcast ([7 x i32*]* @func_23.l_778 to i8*), i64 56, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_911) #1
  store i8 20, i8* %l_911, align 1, !tbaa !9
  %56 = bitcast i16* %l_912 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %56) #1
  store i16 -1, i16* %l_912, align 2, !tbaa !10
  %57 = bitcast i16** %l_917 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  store i16* @g_106, i16** %l_917, align 8, !tbaa !5
  %58 = bitcast i8** %l_928 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  store i8* bitcast (%union.U1* @g_76 to i8*), i8** %l_928, align 8, !tbaa !5
  %59 = bitcast [9 x %union.U1**]* %l_932 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %59) #1
  %60 = bitcast [9 x %union.U1**]* %l_932 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* bitcast ([9 x %union.U1**]* @func_23.l_932 to i8*), i64 72, i32 16, i1 false)
  %61 = bitcast i8*** %l_976 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  store i8** @g_512, i8*** %l_976, align 8, !tbaa !5
  %62 = bitcast %union.U0**** %l_987 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %63 = getelementptr inbounds [5 x %union.U0**], [5 x %union.U0**]* %l_762, i32 0, i64 1
  store %union.U0*** %63, %union.U0**** %l_987, align 8, !tbaa !5
  %64 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast %union.U0**** %l_987 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i8*** %l_976 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast [9 x %union.U1**]* %l_932 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %68) #1
  %69 = bitcast i8** %l_928 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i16** %l_917 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i16* %l_912 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %71) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_911) #1
  %72 = bitcast [7 x i32*]* %l_778 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %72) #1
  %73 = bitcast [8 x i64**]* %l_763 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %73) #1
  %74 = bitcast i32* %l_752 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_720) #1
  %75 = bitcast i32*** %l_711 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i32*** %l_710 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  br label %77

; <label>:77                                      ; preds = %48
  %78 = load i32, i32* %1, align 4, !tbaa !1
  %79 = zext i32 %78 to i64
  %80 = call i64 @safe_add_func_uint64_t_u_u(i64 %79, i64 7)
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %1, align 4, !tbaa !1
  br label %45

; <label>:82                                      ; preds = %45
  store i32* %l_836, i32** %l_34, align 8, !tbaa !5
  %83 = load i32*, i32** %l_1008, align 8, !tbaa !5
  %84 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32** %l_1008 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32** %l_1007 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast [9 x [6 x [4 x i64]]]* %l_1004 to i8*
  call void @llvm.lifetime.end(i64 1728, i8* %89) #1
  %90 = bitcast i16* %l_980 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %90) #1
  %91 = bitcast [9 x [1 x i16*]]* %l_919 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %91) #1
  %92 = bitcast i32* %l_916 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast [7 x i32]* %l_903 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %93) #1
  %94 = bitcast i32* %l_836 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast %union.U1** %l_816 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i64* %l_803 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast %union.U0***** %l_760 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast %union.U0**** %l_761 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast [5 x %union.U0**]* %l_762 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %99) #1
  %100 = bitcast i16* %l_757 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %100) #1
  %101 = bitcast [6 x [1 x [5 x i64]]]* %l_756 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %101) #1
  %102 = bitcast i32** %l_34 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  ret i32* %83
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal i32 @func_73(i32 %p_74.coerce) #0 {
  %1 = alloca %union.U1, align 4
  %p_74 = alloca %union.U1, align 4
  %l_81 = alloca i8, align 1
  %l_87 = alloca i32*, align 8
  %l_88 = alloca i32*, align 8
  %l_90 = alloca %union.U1, align 4
  %l_92 = alloca i32**, align 8
  %l_93 = alloca i32**, align 8
  %l_97 = alloca i32*, align 8
  %l_98 = alloca i32*, align 8
  %l_79 = alloca [9 x [2 x i32*]], align 16
  %l_85 = alloca i32**, align 8
  %l_86 = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %2 = getelementptr %union.U1, %union.U1* %p_74, i32 0, i32 0
  store i32 %p_74.coerce, i32* %2, align 4
  call void @llvm.lifetime.start(i64 1, i8* %l_81) #1
  store i8 65, i8* %l_81, align 1, !tbaa !9
  %3 = bitcast i32** %l_87 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* @g_80, i32** %l_87, align 8, !tbaa !5
  %4 = bitcast i32** %l_88 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_89, i32** %l_88, align 8, !tbaa !5
  %5 = bitcast %union.U1* %l_90 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %union.U1* %l_90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%union.U1* @func_73.l_90 to i8*), i64 4, i32 4, i1 false)
  %7 = bitcast i32*** %l_92 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32** null, i32*** %l_92, align 8, !tbaa !5
  %8 = bitcast i32*** %l_93 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32** @g_91, i32*** %l_93, align 8, !tbaa !5
  %9 = bitcast i32** %l_97 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* @g_80, i32** %l_97, align 8, !tbaa !5
  %10 = bitcast i32** %l_98 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* @g_99, i32** %l_98, align 8, !tbaa !5
  %11 = bitcast %union.U1* %p_74 to i8*
  store i8 -9, i8* %11, align 1, !tbaa !9
  br label %12

; <label>:12                                      ; preds = %34, %0
  %13 = bitcast %union.U1* %p_74 to i8*
  %14 = load i8, i8* %13, align 1, !tbaa !9
  %15 = zext i8 %14 to i32
  %16 = icmp sge i32 %15, 16
  br i1 %16, label %17, label %38

; <label>:17                                      ; preds = %12
  %18 = bitcast [9 x [2 x i32*]]* %l_79 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %18) #1
  %19 = bitcast [9 x [2 x i32*]]* %l_79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast ([9 x [2 x i32*]]* @func_73.l_79 to i8*), i64 144, i32 16, i1 false)
  %20 = bitcast i32*** %l_85 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i32** null, i32*** %l_85, align 8, !tbaa !5
  %21 = bitcast i32*** %l_86 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = getelementptr inbounds [9 x [2 x i32*]], [9 x [2 x i32*]]* %l_79, i32 0, i64 0
  %23 = getelementptr inbounds [2 x i32*], [2 x i32*]* %22, i32 0, i64 0
  store i32** %23, i32*** %l_86, align 8, !tbaa !5
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i32, i32* @g_82, align 4, !tbaa !1
  %27 = add i32 %26, -1
  store i32 %27, i32* @g_82, align 4, !tbaa !1
  %28 = load i32**, i32*** %l_86, align 8, !tbaa !5
  store i32* @g_4, i32** %28, align 8, !tbaa !5
  store i32* @g_4, i32** %l_87, align 8, !tbaa !5
  %29 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32*** %l_86 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i32*** %l_85 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast [9 x [2 x i32*]]* %l_79 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %33) #1
  br label %34

; <label>:34                                      ; preds = %17
  %35 = bitcast %union.U1* %p_74 to i8*
  %36 = load i8, i8* %35, align 1, !tbaa !9
  %37 = add i8 %36, 1
  store i8 %37, i8* %35, align 1, !tbaa !9
  br label %12

; <label>:38                                      ; preds = %12
  %39 = bitcast %union.U1* %p_74 to i8*
  %40 = load i8, i8* %39, align 1, !tbaa !9
  %41 = zext i8 %40 to i32
  %42 = load i32*, i32** %l_87, align 8, !tbaa !5
  %43 = load i32, i32* %42, align 4, !tbaa !1
  %44 = load i32*, i32** %l_88, align 8, !tbaa !5
  store i32 %43, i32* %44, align 4, !tbaa !1
  %45 = load i32*, i32** %l_88, align 8, !tbaa !5
  %46 = load i32*, i32** @g_91, align 8, !tbaa !5
  %47 = load i32**, i32*** %l_93, align 8, !tbaa !5
  store i32* %46, i32** %47, align 8, !tbaa !5
  store i32* %46, i32** @g_94, align 8, !tbaa !5
  %48 = icmp eq i32* %45, %46
  %49 = zext i1 %48 to i32
  %50 = load i32*, i32** %l_87, align 8, !tbaa !5
  %51 = load i32, i32* %50, align 4, !tbaa !1
  %52 = icmp ne i32 %49, %51
  %53 = zext i1 %52 to i32
  %54 = bitcast i32** %l_87 to i8*
  %55 = icmp ne i8* null, %54
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = or i64 -8, %57
  %59 = load i32, i32* @g_96, align 4, !tbaa !1
  %60 = zext i32 %59 to i64
  %61 = icmp eq i64 -4876293527953959830, %60
  %62 = zext i1 %61 to i32
  %63 = icmp eq i32 %41, %62
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = and i64 5, %65
  %67 = trunc i64 %66 to i32
  %68 = load i32*, i32** %l_97, align 8, !tbaa !5
  store i32 %67, i32* %68, align 4, !tbaa !1
  %69 = load i32*, i32** %l_98, align 8, !tbaa !5
  %70 = load i32, i32* %69, align 4, !tbaa !1
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4, !tbaa !1
  %72 = load i32*, i32** %l_98, align 8, !tbaa !5
  store i32* %72, i32** %l_87, align 8, !tbaa !5
  %73 = bitcast %union.U1* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* bitcast (%union.U1* getelementptr inbounds ([4 x [7 x %union.U1]], [4 x [7 x %union.U1]]* @g_27, i32 0, i64 1, i64 4) to i8*), i64 4, i32 4, i1 false), !tbaa.struct !12
  %74 = bitcast i32** %l_98 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32** %l_97 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i32*** %l_93 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i32*** %l_92 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %union.U1* %l_90 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32** %l_88 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i32** %l_87 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_81) #1
  %81 = getelementptr %union.U1, %union.U1* %1, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  ret i32 %82
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
define internal i32 @safe_mod_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
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
  %16 = srem i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  ret i32 %18
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
!12 = !{i64 0, i64 4, !1, i64 0, i64 1, !9}
!13 = !{i64 0, i64 4, !1}
