; ModuleID = '00858.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_9 = internal global i8 81, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"g_9\00", align 1
@g_23 = internal global i16 17428, align 2
@.str.2 = private unnamed_addr constant [5 x i8] c"g_23\00", align 1
@g_40 = internal global i8 -1, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"g_40\00", align 1
@g_49 = internal global [5 x i32] [i32 -2, i32 -2, i32 -2, i32 -2, i32 -2], align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"g_49[i]\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_94 = internal global i16 6121, align 2
@.str.6 = private unnamed_addr constant [5 x i8] c"g_94\00", align 1
@g_119 = internal global i64 2300552257973299517, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"g_119\00", align 1
@g_122 = internal global [8 x [3 x [4 x i64]]] [[3 x [4 x i64]] [[4 x i64] [i64 6279174132211471285, i64 0, i64 6279174132211471285, i64 9], [4 x i64] [i64 6133419171357080755, i64 2670438293134848271, i64 996656710509787084, i64 6816397084210945733], [4 x i64] [i64 -2355473587504134913, i64 2670438293134848271, i64 8, i64 8]], [3 x [4 x i64]] [[4 x i64] [i64 9, i64 9, i64 8, i64 1], [4 x i64] [i64 6279174132211471285, i64 6133419171357080755, i64 0, i64 2670438293134848271], [4 x i64] [i64 -2355473587504134913, i64 0, i64 1, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 1, i64 0, i64 -2355473587504134913, i64 2670438293134848271], [4 x i64] [i64 0, i64 6133419171357080755, i64 6279174132211471285, i64 1], [4 x i64] [i64 8, i64 9, i64 9, i64 8]], [3 x [4 x i64]] [[4 x i64] [i64 8, i64 2670438293134848271, i64 6279174132211471285, i64 -2178210222616900546], [4 x i64] [i64 0, i64 8, i64 -2355473587504134913, i64 996656710509787084], [4 x i64] [i64 1, i64 6816397084210945733, i64 1, i64 996656710509787084]], [3 x [4 x i64]] [[4 x i64] [i64 -2355473587504134913, i64 8, i64 0, i64 -2178210222616900546], [4 x i64] [i64 6279174132211471285, i64 2670438293134848271, i64 8, i64 8], [4 x i64] [i64 9, i64 9, i64 8, i64 1]], [3 x [4 x i64]] [[4 x i64] [i64 6279174132211471285, i64 6133419171357080755, i64 0, i64 2670438293134848271], [4 x i64] [i64 -2355473587504134913, i64 0, i64 1, i64 0], [4 x i64] [i64 1, i64 0, i64 -2355473587504134913, i64 2670438293134848271]], [3 x [4 x i64]] [[4 x i64] [i64 0, i64 6133419171357080755, i64 6279174132211471285, i64 1], [4 x i64] [i64 8, i64 9, i64 9, i64 8], [4 x i64] [i64 8, i64 2670438293134848271, i64 6279174132211471285, i64 -2178210222616900546]], [3 x [4 x i64]] [[4 x i64] [i64 0, i64 8, i64 -2355473587504134913, i64 996656710509787084], [4 x i64] [i64 1, i64 6816397084210945733, i64 1, i64 996656710509787084], [4 x i64] [i64 -2355473587504134913, i64 8, i64 0, i64 -2178210222616900546]]], align 16
@.str.8 = private unnamed_addr constant [15 x i8] c"g_122[i][j][k]\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_129 = internal global i32 -1541044344, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"g_129\00", align 1
@g_132 = internal global i64 -6, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"g_132\00", align 1
@g_144 = internal global i8 0, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_144\00", align 1
@g_200 = internal global [1 x [10 x i32]] [[10 x i32] [i32 -1, i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 -1, i32 0]], align 16
@.str.13 = private unnamed_addr constant [12 x i8] c"g_200[i][j]\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_224 = internal global [2 x [5 x [1 x i32]]] [[5 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1]], [5 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1]]], align 16
@.str.15 = private unnamed_addr constant [15 x i8] c"g_224[i][j][k]\00", align 1
@g_230 = internal global i32 -1939881304, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_230\00", align 1
@g_241 = internal global [9 x [7 x [4 x i64]]] [[7 x [4 x i64]] [[4 x i64] [i64 1164778779255840861, i64 -9041698584934204566, i64 -1, i64 5], [4 x i64] [i64 -2, i64 -4, i64 -4, i64 -2], [4 x i64] [i64 -4, i64 -2, i64 -1, i64 5135308305630019406], [4 x i64] [i64 -9041698584934204566, i64 1164778779255840861, i64 9, i64 -1], [4 x i64] [i64 -2, i64 5135308305630019406, i64 -3303648627395918970, i64 -1], [4 x i64] [i64 -1, i64 1164778779255840861, i64 3736809532716343711, i64 5135308305630019406], [4 x i64] [i64 1, i64 -2, i64 1922895368593053243, i64 -2]], [7 x [4 x i64]] [[4 x i64] [i64 1164778779255840861, i64 -4, i64 -3303648627395918970, i64 5], [4 x i64] [i64 -804995852771112329, i64 -9041698584934204566, i64 -4, i64 -804995852771112329], [4 x i64] [i64 -9041698584934204566, i64 -2, i64 -7193836099650637289, i64 1], [4 x i64] [i64 -9041698584934204566, i64 -1, i64 -4, i64 -1], [4 x i64] [i64 -804995852771112329, i64 1, i64 -3303648627395918970, i64 -3303648627395918970], [4 x i64] [i64 1164778779255840861, i64 1164778779255840861, i64 1922895368593053243, i64 1], [4 x i64] [i64 1, i64 -804995852771112329, i64 3736809532716343711, i64 -2]], [7 x [4 x i64]] [[4 x i64] [i64 -1, i64 -9041698584934204566, i64 -3303648627395918970, i64 3736809532716343711], [4 x i64] [i64 -2, i64 -9041698584934204566, i64 9, i64 -2], [4 x i64] [i64 -9041698584934204566, i64 -804995852771112329, i64 -1, i64 1], [4 x i64] [i64 -4, i64 1164778779255840861, i64 -4, i64 -3303648627395918970], [4 x i64] [i64 -2, i64 1, i64 -1, i64 -1], [4 x i64] [i64 1164778779255840861, i64 -1, i64 3736809532716343711, i64 1], [4 x i64] [i64 -1, i64 -4, i64 -7193836099650637289, i64 9]], [7 x [4 x i64]] [[4 x i64] [i64 -380509079378686130, i64 5135308305630019406, i64 5, i64 -1], [4 x i64] [i64 -4, i64 8140409620496365890, i64 8140409620496365890, i64 -4], [4 x i64] [i64 8140409620496365890, i64 -4, i64 -2, i64 -1], [4 x i64] [i64 5135308305630019406, i64 -380509079378686130, i64 1, i64 3736809532716343711], [4 x i64] [i64 -4, i64 -1, i64 1922895368593053243, i64 3736809532716343711], [4 x i64] [i64 -2, i64 -380509079378686130, i64 -7193836099650637289, i64 -1], [4 x i64] [i64 -3303648627395918970, i64 -4, i64 1164778779255840861, i64 -4]], [7 x [4 x i64]] [[4 x i64] [i64 -380509079378686130, i64 8140409620496365890, i64 1922895368593053243, i64 -1], [4 x i64] [i64 9, i64 5135308305630019406, i64 8140409620496365890, i64 9], [4 x i64] [i64 5135308305630019406, i64 -4, i64 8, i64 -3303648627395918970], [4 x i64] [i64 5135308305630019406, i64 -2, i64 8140409620496365890, i64 3736809532716343711], [4 x i64] [i64 9, i64 -3303648627395918970, i64 1922895368593053243, i64 1922895368593053243], [4 x i64] [i64 -380509079378686130, i64 -380509079378686130, i64 1164778779255840861, i64 -3303648627395918970], [4 x i64] [i64 -3303648627395918970, i64 9, i64 -7193836099650637289, i64 -4]], [7 x [4 x i64]] [[4 x i64] [i64 -2, i64 5135308305630019406, i64 1922895368593053243, i64 -7193836099650637289], [4 x i64] [i64 -4, i64 5135308305630019406, i64 1, i64 -4], [4 x i64] [i64 5135308305630019406, i64 9, i64 -2, i64 -3303648627395918970], [4 x i64] [i64 8140409620496365890, i64 -380509079378686130, i64 8140409620496365890, i64 1922895368593053243], [4 x i64] [i64 -4, i64 -3303648627395918970, i64 5, i64 3736809532716343711], [4 x i64] [i64 -380509079378686130, i64 -2, i64 -7193836099650637289, i64 -3303648627395918970], [4 x i64] [i64 -1, i64 -4, i64 -7193836099650637289, i64 9]], [7 x [4 x i64]] [[4 x i64] [i64 -380509079378686130, i64 5135308305630019406, i64 5, i64 -1], [4 x i64] [i64 -4, i64 8140409620496365890, i64 8140409620496365890, i64 -4], [4 x i64] [i64 8140409620496365890, i64 -4, i64 -2, i64 -1], [4 x i64] [i64 5135308305630019406, i64 -380509079378686130, i64 1, i64 3736809532716343711], [4 x i64] [i64 -4, i64 -1, i64 1922895368593053243, i64 3736809532716343711], [4 x i64] [i64 -2, i64 -380509079378686130, i64 -7193836099650637289, i64 -1], [4 x i64] [i64 -3303648627395918970, i64 -4, i64 1164778779255840861, i64 -4]], [7 x [4 x i64]] [[4 x i64] [i64 -380509079378686130, i64 8140409620496365890, i64 1922895368593053243, i64 -1], [4 x i64] [i64 9, i64 5135308305630019406, i64 8140409620496365890, i64 9], [4 x i64] [i64 5135308305630019406, i64 -4, i64 8, i64 -3303648627395918970], [4 x i64] [i64 5135308305630019406, i64 -2, i64 8140409620496365890, i64 3736809532716343711], [4 x i64] [i64 9, i64 -3303648627395918970, i64 1922895368593053243, i64 1922895368593053243], [4 x i64] [i64 -380509079378686130, i64 -380509079378686130, i64 1164778779255840861, i64 -3303648627395918970], [4 x i64] [i64 -3303648627395918970, i64 9, i64 -7193836099650637289, i64 -4]], [7 x [4 x i64]] [[4 x i64] [i64 -2, i64 5135308305630019406, i64 1922895368593053243, i64 -7193836099650637289], [4 x i64] [i64 -4, i64 5135308305630019406, i64 1, i64 -4], [4 x i64] [i64 5135308305630019406, i64 9, i64 -2, i64 -3303648627395918970], [4 x i64] [i64 8140409620496365890, i64 -380509079378686130, i64 8140409620496365890, i64 1922895368593053243], [4 x i64] [i64 -4, i64 -3303648627395918970, i64 5, i64 3736809532716343711], [4 x i64] [i64 -380509079378686130, i64 -2, i64 -7193836099650637289, i64 -3303648627395918970], [4 x i64] [i64 -1, i64 -4, i64 -7193836099650637289, i64 9]]], align 16
@.str.17 = private unnamed_addr constant [15 x i8] c"g_241[i][j][k]\00", align 1
@g_243 = internal global i8 -1, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"g_243\00", align 1
@g_245 = internal global i8 -46, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_245\00", align 1
@g_253 = internal global i8 -49, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_253\00", align 1
@g_328 = internal global i8 9, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_328\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_400\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_402\00", align 1
@g_478 = internal global i32 1, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_478\00", align 1
@g_479 = internal global [4 x i64] [i64 -6600568226325337781, i64 -6600568226325337781, i64 -6600568226325337781, i64 -6600568226325337781], align 16
@.str.25 = private unnamed_addr constant [9 x i8] c"g_479[i]\00", align 1
@g_482 = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_482\00", align 1
@g_483 = internal global [5 x i32] [i32 621903864, i32 621903864, i32 621903864, i32 621903864, i32 621903864], align 16
@.str.27 = private unnamed_addr constant [9 x i8] c"g_483[i]\00", align 1
@g_530 = internal global i32 1557154589, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_530\00", align 1
@g_536 = internal constant [8 x i8] c"\DA\DA\00\DA\DA\00\DA\DA", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"g_536[i]\00", align 1
@g_577 = internal global [10 x [6 x i16]] [[6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], [6 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1]], align 16
@.str.30 = private unnamed_addr constant [12 x i8] c"g_577[i][j]\00", align 1
@g_645 = internal global i8 -4, align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"g_645\00", align 1
@g_653 = internal global [3 x [9 x i32]] [[9 x i32] [i32 8, i32 -1640370047, i32 8, i32 1, i32 -1640370047, i32 1772183774, i32 1772183774, i32 -1640370047, i32 1], [9 x i32] [i32 8, i32 -1640370047, i32 8, i32 1, i32 -1640370047, i32 1772183774, i32 1772183774, i32 -1640370047, i32 1], [9 x i32] [i32 8, i32 -1640370047, i32 8, i32 1, i32 -1640370047, i32 1772183774, i32 1772183774, i32 -1640370047, i32 1]], align 16
@.str.32 = private unnamed_addr constant [12 x i8] c"g_653[i][j]\00", align 1
@g_817 = internal global [10 x [8 x i16]] [[8 x i16] [i16 1, i16 4, i16 1, i16 -1975, i16 4, i16 9, i16 9, i16 4], [8 x i16] [i16 4, i16 9, i16 9, i16 4, i16 -1975, i16 1, i16 4, i16 1], [8 x i16] [i16 4, i16 12425, i16 22963, i16 12425, i16 4, i16 22963, i16 -15517, i16 -15517], [8 x i16] [i16 1, i16 12425, i16 -1975, i16 -1975, i16 12425, i16 1, i16 9, i16 12425], [8 x i16] [i16 -15517, i16 9, i16 -1975, i16 -15517, i16 -1975, i16 9, i16 -15517, i16 1], [8 x i16] [i16 12425, i16 4, i16 22963, i16 -15517, i16 -15517, i16 22963, i16 4, i16 12425], [8 x i16] [i16 1, i16 -15517, i16 9, i16 -1975, i16 -15517, i16 -1975, i16 9, i16 -15517], [8 x i16] [i16 12425, i16 9, i16 1, i16 12425, i16 -1975, i16 -1975, i16 12425, i16 1], [8 x i16] [i16 -15517, i16 -15517, i16 22963, i16 4, i16 12425, i16 22963, i16 12425, i16 4], [8 x i16] [i16 1, i16 4, i16 1, i16 -1975, i16 4, i16 9, i16 9, i16 4]], align 16
@.str.33 = private unnamed_addr constant [12 x i8] c"g_817[i][j]\00", align 1
@g_876 = internal global i64 0, align 8
@.str.34 = private unnamed_addr constant [6 x i8] c"g_876\00", align 1
@g_914 = internal global i16 5851, align 2
@.str.35 = private unnamed_addr constant [6 x i8] c"g_914\00", align 1
@g_946 = internal constant [4 x i16] [i16 -8, i16 -8, i16 -8, i16 -8], align 2
@.str.36 = private unnamed_addr constant [9 x i8] c"g_946[i]\00", align 1
@g_971 = internal global i16 -3, align 2
@.str.37 = private unnamed_addr constant [6 x i8] c"g_971\00", align 1
@g_976 = internal global [6 x [10 x [3 x i64]]] [[10 x [3 x i64]] [[3 x i64] [i64 1, i64 -4116331750449686190, i64 -1], [3 x i64] [i64 1, i64 -3582215307283313271, i64 -7539950461147229152], [3 x i64] [i64 -2035526773514861090, i64 1, i64 -1], [3 x i64] [i64 0, i64 3204766194503535148, i64 -1], [3 x i64] [i64 1, i64 -1, i64 -298846352489245196], [3 x i64] [i64 0, i64 2, i64 0], [3 x i64] [i64 1, i64 5742719673989057477, i64 0], [3 x i64] [i64 -1, i64 7859269158136799130, i64 1], [3 x i64] [i64 0, i64 -8, i64 1], [3 x i64] [i64 -1, i64 4314445087533188765, i64 -7776931169329141899]], [10 x [3 x i64]] [[3 x i64] [i64 7859269158136799130, i64 4, i64 13762594926315226], [3 x i64] [i64 601331660418552536, i64 1315005366786882665, i64 -1], [3 x i64] [i64 -1, i64 1, i64 5742719673989057477], [3 x i64] [i64 1, i64 13762594926315226, i64 5742719673989057477], [3 x i64] [i64 3604515377526990226, i64 5341361372302655710, i64 -1], [3 x i64] [i64 -4, i64 -7, i64 13762594926315226], [3 x i64] [i64 1004671957860099347, i64 -7507444523200170311, i64 -7776931169329141899], [3 x i64] [i64 -2058599996940877078, i64 -4085862633738274503, i64 1], [3 x i64] [i64 1430950355367839005, i64 1192124039719190068, i64 1], [3 x i64] [i64 4197347910924578280, i64 0, i64 0]], [10 x [3 x i64]] [[3 x i64] [i64 471736146522619237, i64 -1, i64 0], [3 x i64] [i64 -6526883091047154412, i64 1, i64 -298846352489245196], [3 x i64] [i64 -2338165716177933540, i64 -1, i64 -1], [3 x i64] [i64 1, i64 0, i64 -1], [3 x i64] [i64 0, i64 6, i64 -7539950461147229152], [3 x i64] [i64 -7776931169329141899, i64 -1, i64 -1], [3 x i64] [i64 0, i64 1, i64 471736146522619237], [3 x i64] [i64 -7, i64 -1, i64 -5183469457742517242], [3 x i64] [i64 2, i64 6, i64 -8], [3 x i64] [i64 -1, i64 0, i64 1]], [10 x [3 x i64]] [[3 x i64] [i64 3204766194503535148, i64 -1, i64 4120753539070851551], [3 x i64] [i64 -2, i64 1, i64 1174648641217744919], [3 x i64] [i64 -7507444523200170311, i64 -1, i64 4197347910924578280], [3 x i64] [i64 -1, i64 0, i64 8967545486625598842], [3 x i64] [i64 4120753539070851551, i64 1192124039719190068, i64 -3582215307283313271], [3 x i64] [i64 1192124039719190068, i64 -4085862633738274503, i64 -2], [3 x i64] [i64 -6, i64 -7507444523200170311, i64 6], [3 x i64] [i64 -7336040496509610273, i64 -7, i64 4314445087533188765], [3 x i64] [i64 2, i64 5341361372302655710, i64 1], [3 x i64] [i64 -4116331750449686190, i64 13762594926315226, i64 -1]], [10 x [3 x i64]] [[3 x i64] [i64 -4116331750449686190, i64 1, i64 -7336040496509610273], [3 x i64] [i64 2, i64 1315005366786882665, i64 -7551896725909947558], [3 x i64] [i64 -7336040496509610273, i64 4, i64 1], [3 x i64] [i64 -6, i64 4314445087533188765, i64 601331660418552536], [3 x i64] [i64 1192124039719190068, i64 -8, i64 0], [3 x i64] [i64 4120753539070851551, i64 7859269158136799130, i64 -2338165716177933540], [3 x i64] [i64 -1, i64 5742719673989057477, i64 -7507444523200170311], [3 x i64] [i64 -7507444523200170311, i64 2, i64 -1], [3 x i64] [i64 -2, i64 -1, i64 -1], [3 x i64] [i64 3204766194503535148, i64 3204766194503535148, i64 -1]], [10 x [3 x i64]] [[3 x i64] [i64 -1, i64 1, i64 0], [3 x i64] [i64 2, i64 -3582215307283313271, i64 5341361372302655710], [3 x i64] [i64 -7, i64 -4116331750449686190, i64 1192124039719190068], [3 x i64] [i64 0, i64 2, i64 5341361372302655710], [3 x i64] [i64 -7776931169329141899, i64 -1, i64 0], [3 x i64] [i64 0, i64 -1, i64 -1], [3 x i64] [i64 1, i64 1174648641217744919, i64 -1], [3 x i64] [i64 -2338165716177933540, i64 -2586876084144020971, i64 -1], [3 x i64] [i64 -6526883091047154412, i64 -2058599996940877078, i64 -7507444523200170311], [3 x i64] [i64 471736146522619237, i64 3604515377526990226, i64 -2338165716177933540]]], align 16
@.str.38 = private unnamed_addr constant [15 x i8] c"g_976[i][j][k]\00", align 1
@g_1021 = internal global [1 x [3 x i64]] [[3 x i64] [i64 -4, i64 -4, i64 -4]], align 16
@.str.39 = private unnamed_addr constant [13 x i8] c"g_1021[i][j]\00", align 1
@g_1023 = internal global i8 0, align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1023\00", align 1
@g_1026 = internal global i8 8, align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1026\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1043\00", align 1
@g_1061 = internal global [9 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.43 = private unnamed_addr constant [10 x i8] c"g_1061[i]\00", align 1
@g_1062 = internal global i8 -1, align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1062\00", align 1
@g_1063 = internal global [10 x [4 x i32]] [[4 x i32] [i32 743876097, i32 743876097, i32 -1778941026, i32 743876097], [4 x i32] [i32 743876097, i32 -1497235057, i32 -1497235057, i32 743876097], [4 x i32] [i32 -1497235057, i32 743876097, i32 -1497235057, i32 -1497235057], [4 x i32] [i32 743876097, i32 743876097, i32 -1778941026, i32 743876097], [4 x i32] [i32 743876097, i32 -1497235057, i32 -1497235057, i32 743876097], [4 x i32] [i32 -1497235057, i32 743876097, i32 -1497235057, i32 -1497235057], [4 x i32] [i32 743876097, i32 743876097, i32 -1778941026, i32 743876097], [4 x i32] [i32 743876097, i32 -1497235057, i32 -1497235057, i32 743876097], [4 x i32] [i32 -1497235057, i32 743876097, i32 -1497235057, i32 -1497235057], [4 x i32] [i32 743876097, i32 743876097, i32 -1778941026, i32 743876097]], align 16
@.str.45 = private unnamed_addr constant [13 x i8] c"g_1063[i][j]\00", align 1
@g_1072 = internal global %union.U0 zeroinitializer, align 8
@.str.46 = private unnamed_addr constant [10 x i8] c"g_1072.f1\00", align 1
@g_1092 = internal global [9 x i8] c"\01\01\01\01\01\01\01\01\01", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"g_1092[i]\00", align 1
@g_1093 = internal global [4 x i64] [i64 -8196874485934194946, i64 -8196874485934194946, i64 -8196874485934194946, i64 -8196874485934194946], align 16
@.str.48 = private unnamed_addr constant [10 x i8] c"g_1093[i]\00", align 1
@g_1094 = internal global i32 9, align 4
@.str.49 = private unnamed_addr constant [7 x i8] c"g_1094\00", align 1
@g_1095 = internal global [2 x [4 x i32]] [[4 x i32] [i32 1, i32 -1743917572, i32 1, i32 1], [4 x i32] [i32 -1743917572, i32 -1743917572, i32 -1367657361, i32 -1743917572]], align 16
@.str.50 = private unnamed_addr constant [13 x i8] c"g_1095[i][j]\00", align 1
@g_1107 = internal global i32 -4, align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1107\00", align 1
@g_1218 = internal global i16 3443, align 2
@.str.52 = private unnamed_addr constant [7 x i8] c"g_1218\00", align 1
@g_1227 = internal global i32 -1195153228, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"g_1227\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_73 = internal global i16* @g_23, align 8
@g_848 = internal global i16*** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [8 x i16**]]* @g_72 to i8*), i64 104) to i16***), align 8
@g_472 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [7 x [4 x i64]]]* @g_241 to i8*), i64 1528) to i64*), align 8
@g_661 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), align 8
@g_18 = internal global i32* null, align 8
@g_693 = internal global i32** @g_661, align 8
@func_10.l_1239 = private unnamed_addr constant [9 x [1 x [8 x i16]]] [[1 x [8 x i16]] [[8 x i16] [i16 0, i16 -18481, i16 0, i16 0, i16 -18481, i16 0, i16 0, i16 -18481]], [1 x [8 x i16]] [[8 x i16] [i16 -18481, i16 0, i16 0, i16 -18481, i16 0, i16 0, i16 -18481, i16 0]], [1 x [8 x i16]] [[8 x i16] [i16 -18481, i16 -18481, i16 29777, i16 -18481, i16 -18481, i16 29777, i16 -18481, i16 -18481]], [1 x [8 x i16]] [[8 x i16] [i16 0, i16 -18481, i16 0, i16 0, i16 -18481, i16 0, i16 0, i16 -18481]], [1 x [8 x i16]] [[8 x i16] [i16 -18481, i16 0, i16 0, i16 -18481, i16 0, i16 0, i16 -18481, i16 0]], [1 x [8 x i16]] [[8 x i16] [i16 -18481, i16 -18481, i16 29777, i16 -18481, i16 -18481, i16 29777, i16 -18481, i16 -18481]], [1 x [8 x i16]] [[8 x i16] [i16 0, i16 -18481, i16 0, i16 0, i16 -18481, i16 0, i16 0, i16 -18481]], [1 x [8 x i16]] [[8 x i16] [i16 -18481, i16 0, i16 0, i16 -18481, i16 0, i16 0, i16 -18481, i16 0]], [1 x [8 x i16]] [[8 x i16] [i16 -18481, i16 -18481, i16 29777, i16 -18481, i16 -18481, i16 29777, i16 -18481, i16 -18481]]], align 16
@g_469 = internal global i64*** @g_470, align 8
@func_10.l_1272 = private unnamed_addr constant [8 x i32] [i32 7, i32 -363705684, i32 7, i32 7, i32 -363705684, i32 7, i32 7, i32 -363705684], align 16
@func_10.l_1274 = private unnamed_addr constant [3 x [4 x i8*]] [[4 x i8*] [i8* null, i8* @g_1062, i8* @g_1062, i8* null], [4 x i8*] [i8* @g_1062, i8* null, i8* @g_1062, i8* @g_1062], [4 x i8*] [i8* null, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @g_1092, i32 0, i64 1), i8* null]], align 16
@g_1264 = internal global [6 x %union.U0] zeroinitializer, align 16
@g_470 = internal global i64** @g_205, align 8
@g_205 = internal global i64* null, align 8
@func_14.l_27 = private unnamed_addr constant [7 x [10 x i32]] [[10 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [10 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [10 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [10 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [10 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [10 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], [10 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]], align 16
@func_14.l_1226 = private unnamed_addr constant [1 x [7 x [6 x i32*]]] [[7 x [6 x i32*]] [[6 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* @g_1094, i32* @g_1094, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* @g_1094, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*)], [6 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* @g_1094, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* @g_1094, i32* @g_1094, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*)], [6 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* @g_1094, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* @g_1094, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*)], [6 x i32*] [i32* @g_1094, i32* @g_1094, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* @g_1094, i32* @g_1094], [6 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* @g_1094, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* @g_1094, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*)], [6 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* @g_1094, i32* @g_1094, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* @g_1094, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*)], [6 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* @g_1094, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* @g_1094, i32* @g_1094, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*)]]], align 16
@func_14.l_1228 = private unnamed_addr constant [10 x i8] c"\01\01\06\FD\06\01\01\06\FD\06", align 1
@g_1176 = internal global i32** @g_18, align 8
@g_1068 = internal global i32** @g_1069, align 8
@g_624 = internal global i32** @g_625, align 8
@g_1194 = internal global i32** @g_661, align 8
@func_28.l_1201 = private unnamed_addr constant [6 x [7 x i8*]] [[7 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253, i8* @g_1026, i8* @g_1026, i8* @g_1026, i8* @g_1026], [7 x i8*] [i8* @g_1026, i8* @g_1026, i8* null, i8* null, i8* @g_1026, i8* @g_1026, i8* @g_253], [7 x i8*] [i8* @g_40, i8* null, i8* @g_253, i8* @g_253, i8* @g_253, i8* @g_1026, i8* @g_1026], [7 x i8*] [i8* @g_1026, i8* @g_253, i8* @g_253, i8* @g_253, i8* @g_1026, i8* @g_1026, i8* @g_40], [7 x i8*] [i8* null, i8* null, i8* @g_1026, i8* @g_253, i8* @g_1026, i8* @g_40, i8* @g_1026], [7 x i8*] [i8* null, i8* @g_1026, i8* @g_1026, i8* null, i8* @g_253, i8* @g_253, i8* null]], align 16
@func_44.l_1154 = private unnamed_addr constant [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_49 to i8*), i64 12) to i32*)], align 16
@func_56.l_1114 = private unnamed_addr constant [10 x i32*] [i32* @g_1094, i32* @g_1094, i32* @g_1094, i32* null, i32* null, i32* @g_1094, i32* @g_1094, i32* @g_1094, i32* @g_1094, i32* @g_1094], align 16
@g_1042 = internal global i8* @g_1043, align 8
@g_1043 = internal constant i8 57, align 1
@g_72 = internal global [4 x [8 x i16**]] [[8 x i16**] [i16** @g_73, i16** @g_73, i16** @g_73, i16** @g_73, i16** @g_73, i16** @g_73, i16** null, i16** @g_73], [8 x i16**] [i16** @g_73, i16** null, i16** @g_73, i16** @g_73, i16** @g_73, i16** @g_73, i16** null, i16** @g_73], [8 x i16**] [i16** @g_73, i16** @g_73, i16** @g_73, i16** @g_73, i16** null, i16** @g_73, i16** @g_73, i16** @g_73], [8 x i16**] [i16** null, i16** @g_73, i16** @g_73, i16** @g_73, i16** @g_73, i16** @g_73, i16** null, i16** @g_73]], align 16
@func_63.l_76 = private unnamed_addr constant [5 x i16**] [i16** @g_73, i16** @g_73, i16** @g_73, i16** @g_73, i16** @g_73], align 16
@func_63.l_986 = private unnamed_addr constant [7 x i8] c"\BC\C1\C1\BC\C1\C1\BC", align 1
@g_847 = internal global i16**** @g_848, align 8
@func_63.l_1056 = private unnamed_addr constant [10 x i16*****] [i16***** @g_847, i16***** @g_847, i16***** @g_847, i16***** @g_847, i16***** @g_847, i16***** @g_847, i16***** @g_847, i16***** @g_847, i16***** @g_847, i16***** @g_847], align 16
@g_1069 = internal global i32* null, align 8
@g_85 = internal global %union.U0 zeroinitializer, align 8
@func_63.l_740 = private unnamed_addr constant [2 x [4 x [7 x i32]]] [[4 x [7 x i32]] [[7 x i32] [i32 1, i32 -1, i32 -1, i32 1, i32 -1, i32 -1, i32 1], [7 x i32] [i32 1601502828, i32 383910661, i32 1601502828, i32 1601502828, i32 383910661, i32 1601502828, i32 1601502828], [7 x i32] [i32 1, i32 1, i32 -1, i32 1, i32 1, i32 -1, i32 1], [7 x i32] [i32 383910661, i32 1601502828, i32 1601502828, i32 383910661, i32 1601502828, i32 1601502828, i32 383910661]], [4 x [7 x i32]] [[7 x i32] [i32 -1, i32 1, i32 -1, i32 -1, i32 1, i32 -1, i32 -1], [7 x i32] [i32 383910661, i32 383910661, i32 -8, i32 383910661, i32 383910661, i32 -8, i32 383910661], [7 x i32] [i32 1, i32 -1, i32 -1, i32 1, i32 -1, i32 -1, i32 1], [7 x i32] [i32 1601502828, i32 383910661, i32 1601502828, i32 1601502828, i32 383910661, i32 1601502828, i32 1601502828]]], align 16
@g_734 = internal global %union.U0 zeroinitializer, align 8
@func_63.l_746 = private unnamed_addr constant [9 x [2 x i16]] [[2 x i16] [i16 -22215, i16 -22215], [2 x i16] [i16 1, i16 -22215], [2 x i16] [i16 -22215, i16 1], [2 x i16] [i16 -22215, i16 -22215], [2 x i16] [i16 1, i16 -22215], [2 x i16] [i16 -22215, i16 1], [2 x i16] [i16 -22215, i16 -22215], [2 x i16] [i16 1, i16 -22215], [2 x i16] [i16 -22215, i16 1]], align 16
@func_63.l_747 = internal constant [5 x i64] [i64 4322420080536101282, i64 4322420080536101282, i64 4322420080536101282, i64 4322420080536101282, i64 4322420080536101282], align 16
@func_63.l_761 = private unnamed_addr constant [5 x [3 x i8]] [[3 x i8] c"L\00L", [3 x i8] c"L\00L", [3 x i8] c"L\00L", [3 x i8] c"L\00L", [3 x i8] c"L\00L"], align 1
@func_63.l_774 = private unnamed_addr constant [8 x [9 x [2 x i16]]] [[9 x [2 x i16]] [[2 x i16] [i16 26002, i16 0], [2 x i16] [i16 13447, i16 -4490], [2 x i16] [i16 1334, i16 8], [2 x i16] [i16 -11898, i16 -26929], [2 x i16] [i16 0, i16 16179], [2 x i16] [i16 -2, i16 0], [2 x i16] [i16 -23431, i16 26002], [2 x i16] [i16 18845, i16 -21391], [2 x i16] [i16 -1719, i16 -4490]], [9 x [2 x i16]] [[2 x i16] [i16 16179, i16 -23431], [2 x i16] [i16 -1, i16 -1], [2 x i16] [i16 -21391, i16 1334], [2 x i16] [i16 -2, i16 -10], [2 x i16] [i16 30592, i16 -11898], [2 x i16] [i16 -26929, i16 15248], [2 x i16] [i16 -10, i16 -4490], [2 x i16] [i16 -10047, i16 30592], [2 x i16] [i16 -10, i16 -10]], [9 x [2 x i16]] [[2 x i16] [i16 15248, i16 13447], [2 x i16] [i16 -2, i16 -1719], [2 x i16] [i16 0, i16 -1], [2 x i16] [i16 -1, i16 0], [2 x i16] [i16 0, i16 -4490], [2 x i16] zeroinitializer, [2 x i16] [i16 -1, i16 -1], [2 x i16] [i16 0, i16 -1719], [2 x i16] [i16 -2, i16 13447]], [9 x [2 x i16]] [[2 x i16] [i16 15248, i16 -10], [2 x i16] [i16 -10, i16 -10], [2 x i16] [i16 15248, i16 -31263], [2 x i16] [i16 -21391, i16 -5], [2 x i16] [i16 0, i16 29637], [2 x i16] [i16 -10, i16 -21391], [2 x i16] [i16 273, i16 0], [2 x i16] [i16 -2, i16 5], [2 x i16] [i16 -3, i16 -4490]], [9 x [2 x i16]] [[2 x i16] [i16 8, i16 -31263], [2 x i16] [i16 30592, i16 -2], [2 x i16] [i16 4, i16 1], [2 x i16] [i16 -4490, i16 -23431], [2 x i16] [i16 273, i16 8], [2 x i16] [i16 16338, i16 0], [2 x i16] [i16 29637, i16 -16013], [2 x i16] [i16 0, i16 -31263], [2 x i16] [i16 0, i16 16338]], [9 x [2 x i16]] [[2 x i16] [i16 1, i16 4], [2 x i16] [i16 -16013, i16 15248], [2 x i16] [i16 273, i16 15248], [2 x i16] [i16 -16013, i16 4], [2 x i16] [i16 1, i16 16338], [2 x i16] [i16 0, i16 -31263], [2 x i16] [i16 0, i16 -16013], [2 x i16] [i16 29637, i16 0], [2 x i16] [i16 16338, i16 8]], [9 x [2 x i16]] [[2 x i16] [i16 273, i16 -23431], [2 x i16] [i16 -4490, i16 1], [2 x i16] [i16 4, i16 -2], [2 x i16] [i16 30592, i16 -31263], [2 x i16] [i16 8, i16 -4490], [2 x i16] [i16 -3, i16 5], [2 x i16] [i16 -2, i16 0], [2 x i16] [i16 273, i16 -21391], [2 x i16] [i16 -10, i16 29637]], [9 x [2 x i16]] [[2 x i16] [i16 0, i16 -5], [2 x i16] [i16 -21391, i16 -31263], [2 x i16] [i16 15248, i16 -10], [2 x i16] zeroinitializer, [2 x i16] [i16 -5, i16 0], [2 x i16] [i16 273, i16 30592], [2 x i16] [i16 10600, i16 -3], [2 x i16] [i16 5, i16 10600], [2 x i16] [i16 -23431, i16 -31263]]], align 16
@g_625 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_483 to i8*), i64 4) to i32*), align 8
@func_63.l_795 = private unnamed_addr constant [2 x [2 x [9 x i64]]] [[2 x [9 x i64]] [[9 x i64] [i64 -5248255564563033607, i64 -5248255564563033607, i64 -5248255564563033607, i64 -5248255564563033607, i64 -5248255564563033607, i64 -5248255564563033607, i64 -5248255564563033607, i64 -5248255564563033607, i64 -5248255564563033607], [9 x i64] [i64 539782871917304506, i64 539782871917304506, i64 539782871917304506, i64 539782871917304506, i64 539782871917304506, i64 539782871917304506, i64 539782871917304506, i64 539782871917304506, i64 539782871917304506]], [2 x [9 x i64]] [[9 x i64] [i64 -5248255564563033607, i64 -5248255564563033607, i64 -5248255564563033607, i64 -5248255564563033607, i64 -5248255564563033607, i64 -5248255564563033607, i64 -5248255564563033607, i64 -5248255564563033607, i64 -5248255564563033607], [9 x i64] [i64 539782871917304506, i64 539782871917304506, i64 539782871917304506, i64 539782871917304506, i64 539782871917304506, i64 539782871917304506, i64 539782871917304506, i64 539782871917304506, i64 539782871917304506]]], align 16
@g_581 = internal global [6 x [6 x [4 x %union.U0]]] zeroinitializer, align 16
@func_63.l_836 = private unnamed_addr constant [5 x i8] c"\05\05\05\05\05", align 1
@func_63.l_843 = private unnamed_addr constant [9 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@g_556 = internal global %union.U0 zeroinitializer, align 8
@g_846 = internal global i16***** @g_847, align 8
@func_63.l_885 = private unnamed_addr constant [4 x [10 x [1 x i32]]] [[10 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446]], [10 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446]], [10 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446]], [10 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446], [1 x i32] [i32 1], [1 x i32] [i32 1520312446]]], align 16
@func_63.l_881 = private unnamed_addr constant [10 x [1 x i32]] [[1 x i32] [i32 -6], [1 x i32] [i32 1344725433], [1 x i32] [i32 -6], [1 x i32] [i32 -1], [1 x i32] [i32 -1], [1 x i32] [i32 -6], [1 x i32] [i32 1344725433], [1 x i32] [i32 -6], [1 x i32] [i32 -1], [1 x i32] [i32 -1]], align 16
@g_888 = internal global i8** null, align 8
@func_63.l_941 = private unnamed_addr constant [7 x i32] [i32 -1, i32 -1, i32 -1, i32 1254810823, i32 1254810823, i32 -1, i32 1254810823], align 16
@g_363 = internal global %union.U0 zeroinitializer, align 8
@func_63.l_981 = private unnamed_addr constant [5 x [8 x [6 x %union.U0*]]] [[8 x [6 x %union.U0*]] [[6 x %union.U0*] [%union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* @g_734, %union.U0* @g_734, %union.U0* null, %union.U0* @g_734, %union.U0* @g_734], [6 x %union.U0*] [%union.U0* @g_734, %union.U0* null, %union.U0* null, %union.U0* @g_363, %union.U0* @g_556, %union.U0* null], [6 x %union.U0*] [%union.U0* @g_363, %union.U0* @g_556, %union.U0* null, %union.U0* @g_734, %union.U0* null, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* @g_556, %union.U0* @g_556, %union.U0* @g_363, %union.U0* @g_363, %union.U0* @g_556, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* @g_556, %union.U0* null, %union.U0* @g_734, %union.U0* @g_556, %union.U0* @g_734, %union.U0* null], [6 x %union.U0*] [%union.U0* @g_363, %union.U0* @g_734, %union.U0* null, %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* @g_363, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* @g_363, %union.U0* @g_556, %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* @g_556, %union.U0* @g_363, %union.U0* @g_734], [6 x %union.U0*] [%union.U0* @g_556, %union.U0* @g_734, %union.U0* @g_363, %union.U0* @g_363, %union.U0* @g_556, %union.U0* @g_734]], [8 x [6 x %union.U0*]] [[6 x %union.U0*] [%union.U0* @g_556, %union.U0* null, %union.U0* @g_556, %union.U0* @g_734, %union.U0* @g_734, %union.U0* @g_734], [6 x %union.U0*] [%union.U0* @g_363, %union.U0* @g_363, %union.U0* @g_363, %union.U0* @g_363, %union.U0* @g_556, %union.U0* @g_734], [6 x %union.U0*] [%union.U0* @g_734, %union.U0* null, %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* null, %union.U0* @g_556, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* @g_556, %union.U0* null, %union.U0* null, %union.U0* @g_556, %union.U0* null], [6 x %union.U0*] [%union.U0* @g_734, %union.U0* null, %union.U0* @g_734, %union.U0* null, %union.U0* @g_556, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* @g_734, %union.U0* @g_363, %union.U0* @g_363, %union.U0* @g_556, %union.U0* @g_734, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* null, %union.U0* null, %union.U0* null, %union.U0* @g_556, %union.U0* @g_556, %union.U0* null], [6 x %union.U0*] [%union.U0* @g_734, %union.U0* @g_734, %union.U0* null, %union.U0* null, %union.U0* @g_363, %union.U0* @g_734]], [8 x [6 x %union.U0*]] [[6 x %union.U0*] [%union.U0* @g_734, %union.U0* @g_556, %union.U0* @g_734, %union.U0* null, %union.U0* @g_363, %union.U0* null], [6 x %union.U0*] [%union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* @g_734, %union.U0* @g_734, %union.U0* null, %union.U0* @g_734, %union.U0* @g_734], [6 x %union.U0*] [%union.U0* @g_734, %union.U0* null, %union.U0* null, %union.U0* @g_363, %union.U0* @g_556, %union.U0* null], [6 x %union.U0*] [%union.U0* @g_363, %union.U0* @g_556, %union.U0* null, %union.U0* @g_734, %union.U0* null, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* @g_556, %union.U0* @g_556, %union.U0* @g_363, %union.U0* @g_363, %union.U0* @g_556, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* @g_556, %union.U0* null, %union.U0* @g_734, %union.U0* @g_556, %union.U0* @g_734, %union.U0* null], [6 x %union.U0*] [%union.U0* @g_363, %union.U0* @g_734, %union.U0* null, %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* @g_363, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* @g_363, %union.U0* @g_556, %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* @g_556, %union.U0* @g_363, %union.U0* @g_734]], [8 x [6 x %union.U0*]] [[6 x %union.U0*] [%union.U0* @g_556, %union.U0* @g_734, %union.U0* @g_363, %union.U0* @g_363, %union.U0* @g_556, %union.U0* @g_734], [6 x %union.U0*] [%union.U0* @g_556, %union.U0* null, %union.U0* @g_556, %union.U0* @g_734, %union.U0* @g_734, %union.U0* @g_734], [6 x %union.U0*] [%union.U0* @g_363, %union.U0* @g_363, %union.U0* @g_363, %union.U0* @g_363, %union.U0* @g_556, %union.U0* @g_734], [6 x %union.U0*] [%union.U0* @g_734, %union.U0* null, %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* null, %union.U0* @g_556, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* @g_556, %union.U0* null, %union.U0* null, %union.U0* @g_556, %union.U0* null], [6 x %union.U0*] [%union.U0* @g_734, %union.U0* null, %union.U0* @g_734, %union.U0* null, %union.U0* @g_556, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* @g_734, %union.U0* @g_363, %union.U0* @g_363, %union.U0* @g_556, %union.U0* @g_734, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* null, %union.U0* @g_556, %union.U0* @g_556, %union.U0* @g_363, %union.U0* @g_363, %union.U0* @g_556]], [8 x [6 x %union.U0*]] [[6 x %union.U0*] [%union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* null, %union.U0* @g_556, %union.U0* @g_734, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* @g_556, %union.U0* @g_734, %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* @g_556, %union.U0* null, %union.U0* null], [6 x %union.U0*] [%union.U0* null, %union.U0* @g_556, %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* @g_363, %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* @g_556], [6 x %union.U0*] [%union.U0* null, %union.U0* @g_363, %union.U0* null, %union.U0* @g_734, %union.U0* @g_363, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* @g_734, %union.U0* @g_363, %union.U0* @g_556, %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* @g_556, %union.U0* null], [6 x %union.U0*] [%union.U0* @g_556, %union.U0* @g_363, %union.U0* @g_734, %union.U0* @g_734, %union.U0* @g_363, %union.U0* @g_556], [6 x %union.U0*] [%union.U0* @g_363, %union.U0* @g_363, %union.U0* @g_556, %union.U0* @g_734, %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 472) to %union.U0*), %union.U0* @g_556], [6 x %union.U0*] [%union.U0* @g_734, %union.U0* @g_556, %union.U0* @g_556, %union.U0* null, %union.U0* null, %union.U0* @g_363]]], align 16
@g_954 = internal global [10 x [7 x %union.U0]] zeroinitializer, align 16
@g_975 = internal global %union.U0* @g_556, align 8
@func_63.l_1020 = private unnamed_addr constant [4 x [9 x i32]] [[9 x i32] [i32 -4, i32 1660588455, i32 -319050983, i32 1660588455, i32 -4, i32 -4, i32 1660588455, i32 -319050983, i32 1660588455], [9 x i32] [i32 1, i32 162049362, i32 1, i32 1, i32 162049362, i32 1, i32 162049362, i32 1, i32 1], [9 x i32] [i32 -4, i32 -4, i32 1660588455, i32 -319050983, i32 1660588455, i32 -4, i32 -4, i32 1660588455, i32 -319050983], [9 x i32] [i32 0, i32 162049362, i32 0, i32 1, i32 1, i32 0, i32 162049362, i32 0, i32 1]], align 16
@g_1012 = internal global %union.U0** @g_1013, align 8
@g_1015 = internal global i32*** @g_1016, align 8
@func_63.l_1057 = private unnamed_addr constant [1 x [9 x [10 x i8]]] [[9 x [10 x i8]] [[10 x i8] c"\93\88\B2\00\FF\FF\05y\F6\0F", [10 x i8] c"\05\15\93\01\01\FE\89\FE\01\01", [10 x i8] c"\03\8A\03\07\FF\F8\01\00\FE\93", [10 x i8] c"d\FF\FF\FD\FF\01\15\00\03\05", [10 x i8] c"\89\FF\03\B2\FEdd\FE\B2\03", [10 x i8] c"\07\07\93\F6\F8\B2\0Fy\04d", [10 x i8] c"\04\F6\B2\FF\01\88\0F\FF\FD\89", [10 x i8] c"\BB\07\05\FFdyd\FF\05\07", [10 x i8] c"\FF\FF\F6y\B2\07\15\01\88\04"]], align 16
@func_66.l_130 = private unnamed_addr constant [9 x [10 x [1 x i16]]] [[10 x [1 x i16]] [[1 x i16] [i16 -1], [1 x i16] [i16 16855], [1 x i16] [i16 12160], [1 x i16] [i16 5986], [1 x i16] [i16 12809], [1 x i16] [i16 -15776], [1 x i16] [i16 1], [1 x i16] [i16 5971], [1 x i16] zeroinitializer, [1 x i16] [i16 -29858]], [10 x [1 x i16]] [[1 x i16] [i16 -1], [1 x i16] [i16 1], [1 x i16] [i16 -10], [1 x i16] [i16 1], [1 x i16] [i16 9], [1 x i16] [i16 1], [1 x i16] [i16 -1], [1 x i16] [i16 1], [1 x i16] [i16 9], [1 x i16] [i16 1]], [10 x [1 x i16]] [[1 x i16] [i16 -10], [1 x i16] [i16 1], [1 x i16] [i16 -1], [1 x i16] [i16 -29858], [1 x i16] zeroinitializer, [1 x i16] [i16 5971], [1 x i16] [i16 -1], [1 x i16] [i16 7072], [1 x i16] [i16 -1], [1 x i16] [i16 12160]], [10 x [1 x i16]] [[1 x i16] [i16 -18734], [1 x i16] [i16 3280], [1 x i16] [i16 1], [1 x i16] [i16 12809], [1 x i16] zeroinitializer, [1 x i16] [i16 5], [1 x i16] [i16 5986], [1 x i16] [i16 1], [1 x i16] [i16 1], [1 x i16] [i16 5986]], [10 x [1 x i16]] [[1 x i16] [i16 5], [1 x i16] zeroinitializer, [1 x i16] [i16 12809], [1 x i16] [i16 1], [1 x i16] [i16 3280], [1 x i16] [i16 -18734], [1 x i16] [i16 12160], [1 x i16] [i16 -1], [1 x i16] [i16 7072], [1 x i16] [i16 -1]], [10 x [1 x i16]] [[1 x i16] [i16 5971], [1 x i16] zeroinitializer, [1 x i16] [i16 -29858], [1 x i16] [i16 -1], [1 x i16] [i16 1], [1 x i16] [i16 -10], [1 x i16] [i16 1], [1 x i16] [i16 9], [1 x i16] [i16 1], [1 x i16] [i16 -1]], [10 x [1 x i16]] [[1 x i16] [i16 1], [1 x i16] [i16 9], [1 x i16] [i16 1], [1 x i16] [i16 -10], [1 x i16] [i16 1], [1 x i16] [i16 -1], [1 x i16] [i16 -29858], [1 x i16] zeroinitializer, [1 x i16] [i16 5971], [1 x i16] [i16 -1]], [10 x [1 x i16]] [[1 x i16] [i16 7072], [1 x i16] [i16 -1], [1 x i16] [i16 12160], [1 x i16] [i16 -18734], [1 x i16] [i16 3280], [1 x i16] [i16 1], [1 x i16] [i16 12809], [1 x i16] zeroinitializer, [1 x i16] [i16 5], [1 x i16] [i16 5986]], [10 x [1 x i16]] [[1 x i16] [i16 1], [1 x i16] [i16 1], [1 x i16] [i16 5986], [1 x i16] [i16 5], [1 x i16] zeroinitializer, [1 x i16] [i16 12809], [1 x i16] [i16 1], [1 x i16] [i16 3280], [1 x i16] [i16 -18734], [1 x i16] [i16 12160]]], align 16
@func_66.l_176 = private unnamed_addr constant [3 x [2 x [7 x i64*]]] [[2 x [7 x i64*]] [[7 x i64*] [i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 624) to i64*), i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 408) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 416) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 584) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 408) to i64*)], [7 x i64*] [i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 448) to i64*), i64* @g_132, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 408) to i64*), i64* @g_132, i64* @g_132, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 408) to i64*)]], [2 x [7 x i64*]] [[7 x i64*] [i64* @g_132, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 624) to i64*), i64* @g_132, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 368) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 416) to i64*), i64* @g_132, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 368) to i64*)], [7 x i64*] [i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 624) to i64*), i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 408) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 416) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 584) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 408) to i64*)]], [2 x [7 x i64*]] [[7 x i64*] [i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 448) to i64*), i64* @g_132, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 408) to i64*), i64* @g_132, i64* @g_132, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 408) to i64*)], [7 x i64*] [i64* @g_132, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 624) to i64*), i64* @g_132, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 368) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 416) to i64*), i64* @g_132, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [3 x [4 x i64]]]* @g_122 to i8*), i64 368) to i64*)]]], align 16
@func_66.l_273 = private unnamed_addr constant [10 x [4 x i16]] [[4 x i16] [i16 -24521, i16 27670, i16 28906, i16 28906], [4 x i16] [i16 -2, i16 -2, i16 -7, i16 5798], [4 x i16] [i16 -11310, i16 -7, i16 -17244, i16 -1], [4 x i16] [i16 28906, i16 1, i16 6127, i16 -17244], [4 x i16] [i16 -17244, i16 1, i16 -2, i16 -1], [4 x i16] [i16 1, i16 -7, i16 1, i16 5798], [4 x i16] [i16 27670, i16 -2, i16 3, i16 28906], [4 x i16] [i16 1, i16 27670, i16 5798, i16 -2], [4 x i16] [i16 -1, i16 0, i16 5798, i16 17745], [4 x i16] [i16 1, i16 3, i16 3, i16 1]], align 16
@func_66.l_439 = private unnamed_addr constant [10 x [2 x i16**]] [[2 x i16**] [i16** @g_73, i16** @g_73], [2 x i16**] [i16** @g_73, i16** @g_73], [2 x i16**] [i16** @g_73, i16** @g_73], [2 x i16**] [i16** @g_73, i16** @g_73], [2 x i16**] [i16** @g_73, i16** @g_73], [2 x i16**] [i16** @g_73, i16** @g_73], [2 x i16**] [i16** @g_73, i16** @g_73], [2 x i16**] [i16** @g_73, i16** @g_73], [2 x i16**] [i16** @g_73, i16** @g_73], [2 x i16**] [i16** @g_73, i16** @g_73]], align 16
@func_66.l_500 = internal constant [1 x [9 x [8 x i32]]] [[9 x [8 x i32]] [[8 x i32] [i32 -1, i32 -1785242092, i32 -5, i32 1821852124, i32 1, i32 1, i32 1821852124, i32 -5], [8 x i32] [i32 1929090511, i32 1929090511, i32 -5, i32 1031445896, i32 -1, i32 -3, i32 1355795805, i32 -1], [8 x i32] [i32 1, i32 1355795805, i32 5, i32 1929090511, i32 5, i32 1355795805, i32 1, i32 -1], [8 x i32] [i32 1355795805, i32 -3, i32 -1, i32 1031445896, i32 -5, i32 1929090511, i32 1929090511, i32 -5], [8 x i32] [i32 1821852124, i32 1, i32 1, i32 1821852124, i32 -5, i32 -1785242092, i32 -1, i32 1929090511], [8 x i32] [i32 1355795805, i32 -1533838777, i32 5, i32 -5, i32 5, i32 -5, i32 5, i32 -1533838777], [8 x i32] [i32 1, i32 -1533838777, i32 1929090511, i32 5, i32 -1, i32 -1785242092, i32 1031445896, i32 1031445896], [8 x i32] [i32 1929090511, i32 1, i32 -3, i32 -3, i32 1, i32 1929090511, i32 1031445896, i32 5], [8 x i32] [i32 -1, i32 -3, i32 1929090511, i32 -1785242092, i32 5, i32 1355795805, i32 5, i32 -1785242092]]], align 16
@func_66.l_118 = private unnamed_addr constant [8 x i64*] [i64* @g_119, i64* @g_119, i64* @g_119, i64* @g_119, i64* @g_119, i64* @g_119, i64* @g_119, i64* @g_119], align 16
@func_66.l_131 = private unnamed_addr constant [10 x i64*] [i64* @g_132, i64* @g_132, i64* @g_132, i64* @g_132, i64* @g_132, i64* @g_132, i64* @g_132, i64* @g_132, i64* @g_132, i64* @g_132], align 16
@func_66.l_195 = private unnamed_addr constant [8 x [7 x i8]] [[7 x i8] c"\84\AA\A0\AA\84@@", [7 x i8] c"L\FE\E7\FEL\FF\FF", [7 x i8] c"\84\AA\A0\AA\84@@", [7 x i8] c"L\FE\E7\FEL\FF\FF", [7 x i8] c"\84\AA\A0\AA\84@@", [7 x i8] c"L\FE\E7\FEL\FF\FF", [7 x i8] c"\84\AA\A0\AA\84@@", [7 x i8] c"L\FE\E7\FEL\FF\FF"], align 16
@func_66.l_145 = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@func_66.l_154 = private unnamed_addr constant [3 x [7 x i32]] [[7 x i32] [i32 -10, i32 -438116615, i32 1, i32 1, i32 -438116615, i32 -10, i32 615476482], [7 x i32] [i32 -438116615, i32 -10, i32 1, i32 1443368804, i32 1443368804, i32 1, i32 -10], [7 x i32] [i32 -438116615, i32 615476482, i32 -10, i32 -438116615, i32 1, i32 1, i32 -438116615]], align 16
@func_66.l_221 = private unnamed_addr constant [3 x [6 x [8 x i32]]] [[6 x [8 x i32]] [[8 x i32] [i32 -1, i32 0, i32 1121831810, i32 -1338019679, i32 626338048, i32 -7, i32 1, i32 -1263036556], [8 x i32] [i32 814227779, i32 -1338019679, i32 1, i32 1, i32 0, i32 -10, i32 1, i32 1], [8 x i32] [i32 0, i32 -10, i32 1, i32 1, i32 -10, i32 0, i32 1, i32 1], [8 x i32] [i32 -569594543, i32 1, i32 -1263036556, i32 1, i32 -7, i32 626338048, i32 -1338019679, i32 1121831810], [8 x i32] [i32 -2029653660, i32 1648707641, i32 1259682652, i32 1, i32 1, i32 0, i32 -2146968797, i32 1], [8 x i32] [i32 -1362148894, i32 1, i32 -569594543, i32 1, i32 -1, i32 -2146968797, i32 -1, i32 1]], [6 x [8 x i32]] [[8 x i32] [i32 1, i32 -2, i32 1, i32 1, i32 1121831810, i32 536691886, i32 -7, i32 -1263036556], [8 x i32] [i32 0, i32 -2029653660, i32 -1, i32 -1338019679, i32 436825768, i32 1, i32 1121831810, i32 1259682652], [8 x i32] [i32 0, i32 -384100708, i32 0, i32 -2146968797, i32 1121831810, i32 -496797808, i32 1259682652, i32 -569594543], [8 x i32] [i32 1, i32 0, i32 -7, i32 -1, i32 -1, i32 -7, i32 0, i32 1], [8 x i32] [i32 -1362148894, i32 1, i32 9, i32 -7, i32 1, i32 1648707641, i32 -569594543, i32 -1], [8 x i32] [i32 -10, i32 1, i32 536691886, i32 1, i32 -2146968797, i32 436825768, i32 -569594543, i32 9]], [6 x [8 x i32]] [[8 x i32] [i32 -1, i32 -1263036556, i32 0, i32 -7, i32 1, i32 1, i32 -1, i32 1], [8 x i32] [i32 9, i32 536691886, i32 1, i32 536691886, i32 9, i32 0, i32 -2029653660, i32 -1], [8 x i32] [i32 -569594543, i32 -2029653660, i32 1121831810, i32 -1, i32 -2, i32 -1362148894, i32 1259682652, i32 536691886], [8 x i32] [i32 -384100708, i32 -10, i32 1121831810, i32 -569594543, i32 536691886, i32 626338048, i32 -2029653660, i32 0], [8 x i32] [i32 -2, i32 1, i32 1, i32 -1, i32 1121831810, i32 1121831810, i32 -1, i32 1], [8 x i32] [i32 -7, i32 -7, i32 0, i32 -2029653660, i32 626338048, i32 536691886, i32 -569594543, i32 1121831810]]], align 16
@func_66.l_179 = private unnamed_addr constant [8 x [7 x i8]] [[7 x i8] c"\06\9F\06^\FFw\FF", [7 x i8] c"\FF\01\01L<KM", [7 x i8] c"\00\FF:\FD\01w\00", [7 x i8] c"\E8\FD\FF\01M\01\FF", [7 x i8] c"\FD\FDK\FF\01\01L", [7 x i8] c"<\FF\89<^\08\FF", [7 x i8] c"\06\01^\01\01\E8\89", [7 x i8] c"L\9F\01MM\01\9F"], align 16
@g_227 = internal global [4 x i64*] zeroinitializer, align 16
@func_66.l_644 = private unnamed_addr constant [7 x [7 x [5 x i32]]] [[7 x [5 x i32]] [[5 x i32] [i32 5, i32 973359068, i32 1369043978, i32 1612189920, i32 9], [5 x i32] [i32 -3, i32 5, i32 0, i32 1950104371, i32 0], [5 x i32] [i32 2, i32 -1233214526, i32 0, i32 6, i32 -2007931257], [5 x i32] [i32 -1658109186, i32 2, i32 9, i32 1057247980, i32 -8], [5 x i32] [i32 6, i32 1, i32 -1, i32 -4, i32 128190900], [5 x i32] [i32 5, i32 1827790938, i32 7, i32 -2007931257, i32 1], [5 x i32] [i32 0, i32 2, i32 1478572324, i32 -1615678991, i32 1]], [7 x [5 x i32]] [[5 x i32] [i32 7, i32 1827790938, i32 973359068, i32 102364640, i32 1], [5 x i32] [i32 -5, i32 508373155, i32 9, i32 7, i32 1], [5 x i32] [i32 9, i32 -7, i32 -4, i32 1729880116, i32 7], [5 x i32] [i32 1, i32 -5, i32 6, i32 973359068, i32 9], [5 x i32] [i32 -4, i32 -2, i32 -2, i32 -4, i32 -8], [5 x i32] [i32 456704864, i32 0, i32 -700455168, i32 -1658109186, i32 -1], [5 x i32] [i32 9, i32 1930746215, i32 -980612001, i32 -3, i32 1827790938]], [7 x [5 x i32]] [[5 x i32] [i32 6, i32 -1615678991, i32 -2007931257, i32 -1658109186, i32 0], [5 x i32] [i32 -1810901541, i32 1950104371, i32 0, i32 -4, i32 -296833794], [5 x i32] [i32 990027285, i32 0, i32 5, i32 973359068, i32 6], [5 x i32] [i32 1, i32 626030108, i32 2, i32 1729880116, i32 6], [5 x i32] [i32 2, i32 1478572324, i32 1, i32 7, i32 869109351], [5 x i32] [i32 1827790938, i32 -1658109186, i32 -1, i32 102364640, i32 -1615678991], [5 x i32] [i32 1478572324, i32 6, i32 -1658109186, i32 -1615678991, i32 -1810901541]], [7 x [5 x i32]] [[5 x i32] [i32 1369043978, i32 1, i32 456704864, i32 2, i32 508373155], [5 x i32] [i32 1369043978, i32 0, i32 -1472487929, i32 1, i32 0], [5 x i32] [i32 1478572324, i32 1647446764, i32 -183234002, i32 -1, i32 -4], [5 x i32] [i32 1827790938, i32 990027285, i32 7, i32 5, i32 0], [5 x i32] [i32 2, i32 1, i32 -1810901541, i32 1703744989, i32 1930746215], [5 x i32] [i32 1, i32 1, i32 0, i32 128190900, i32 128190900], [5 x i32] [i32 990027285, i32 6, i32 990027285, i32 -1, i32 -1233214526]], [7 x [5 x i32]] [[5 x i32] [i32 -1810901541, i32 973359068, i32 -3, i32 1950104371, i32 1369043978], [5 x i32] [i32 6, i32 -1811328841, i32 5, i32 0, i32 102364640], [5 x i32] [i32 9, i32 7, i32 -3, i32 1369043978, i32 -158037290], [5 x i32] [i32 456704864, i32 0, i32 990027285, i32 0, i32 5], [5 x i32] [i32 -4, i32 -296833794, i32 0, i32 9, i32 -3], [5 x i32] [i32 1, i32 -158037290, i32 -1810901541, i32 6, i32 1], [5 x i32] [i32 9, i32 5, i32 7, i32 1647446764, i32 1703744989]], [7 x [5 x i32]] [[5 x i32] [i32 -5, i32 0, i32 -183234002, i32 5, i32 1], [5 x i32] [i32 7, i32 -1, i32 -1472487929, i32 -1811328841, i32 1], [5 x i32] [i32 -1811328841, i32 -1, i32 456704864, i32 1057247980, i32 1], [5 x i32] [i32 0, i32 869109351, i32 -1658109186, i32 1, i32 1], [5 x i32] [i32 5, i32 1, i32 -1, i32 6, i32 1703744989], [5 x i32] [i32 5, i32 1, i32 1, i32 -980612001, i32 1], [5 x i32] [i32 0, i32 1369043978, i32 2, i32 -1, i32 -3]], [7 x [5 x i32]] [[5 x i32] [i32 -8, i32 9, i32 5, i32 -700455168, i32 5], [5 x i32] [i32 263988438, i32 263988438, i32 0, i32 -4, i32 -158037290], [5 x i32] [i32 6, i32 -183234002, i32 2, i32 128190900, i32 -1], [5 x i32] [i32 -1615678991, i32 -1, i32 1729880116, i32 0, i32 9], [5 x i32] [i32 -980612001, i32 -183234002, i32 -1615678991, i32 1, i32 -7], [5 x i32] [i32 -7, i32 -1, i32 6, i32 -1472487929, i32 973359068], [5 x i32] [i32 1, i32 7, i32 5, i32 -1, i32 -4]]], align 16
@g_1013 = internal global %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x %union.U0]]]* @g_581 to i8*), i64 784) to %union.U0*), align 8
@g_1016 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i32*]* @g_1017 to i8*), i64 16) to i32**), align 8
@g_1017 = internal global [3 x i32*] zeroinitializer, align 16
@.str.54 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i8, i8* @g_9, align 1, !tbaa !9
  %92 = sext i8 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i16, i16* @g_23, align 2, !tbaa !10
  %95 = sext i16 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i8, i8* @g_40, align 1, !tbaa !9
  %98 = zext i8 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:100                                     ; preds = %116, %89
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = icmp slt i32 %101, 5
  br i1 %102, label %103, label %119

; <label>:103                                     ; preds = %100
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [5 x i32], [5 x i32]* @g_49, i32 0, i64 %105
  %107 = load i32, i32* %106, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %109)
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
  %120 = load i16, i16* @g_94, align 2, !tbaa !10
  %121 = zext i16 %120 to i64
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %122)
  %123 = load i64, i64* @g_119, align 8, !tbaa !7
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %124)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %125

; <label>:125                                     ; preds = %164, %119
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %127 = icmp slt i32 %126, 8
  br i1 %127, label %128, label %167

; <label>:128                                     ; preds = %125
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %129

; <label>:129                                     ; preds = %160, %128
  %130 = load i32, i32* %j, align 4, !tbaa !1
  %131 = icmp slt i32 %130, 3
  br i1 %131, label %132, label %163

; <label>:132                                     ; preds = %129
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %133

; <label>:133                                     ; preds = %156, %132
  %134 = load i32, i32* %k, align 4, !tbaa !1
  %135 = icmp slt i32 %134, 4
  br i1 %135, label %136, label %159

; <label>:136                                     ; preds = %133
  %137 = load i32, i32* %k, align 4, !tbaa !1
  %138 = sext i32 %137 to i64
  %139 = load i32, i32* %j, align 4, !tbaa !1
  %140 = sext i32 %139 to i64
  %141 = load i32, i32* %i, align 4, !tbaa !1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [8 x [3 x [4 x i64]]], [8 x [3 x [4 x i64]]]* @g_122, i32 0, i64 %142
  %144 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %143, i32 0, i64 %140
  %145 = getelementptr inbounds [4 x i64], [4 x i64]* %144, i32 0, i64 %138
  %146 = load i64, i64* %145, align 8, !tbaa !7
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %146, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 %147)
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

; <label>:150                                     ; preds = %136
  %151 = load i32, i32* %i, align 4, !tbaa !1
  %152 = load i32, i32* %j, align 4, !tbaa !1
  %153 = load i32, i32* %k, align 4, !tbaa !1
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %151, i32 %152, i32 %153)
  br label %155

; <label>:155                                     ; preds = %150, %136
  br label %156

; <label>:156                                     ; preds = %155
  %157 = load i32, i32* %k, align 4, !tbaa !1
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %k, align 4, !tbaa !1
  br label %133

; <label>:159                                     ; preds = %133
  br label %160

; <label>:160                                     ; preds = %159
  %161 = load i32, i32* %j, align 4, !tbaa !1
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %j, align 4, !tbaa !1
  br label %129

; <label>:163                                     ; preds = %129
  br label %164

; <label>:164                                     ; preds = %163
  %165 = load i32, i32* %i, align 4, !tbaa !1
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %i, align 4, !tbaa !1
  br label %125

; <label>:167                                     ; preds = %125
  %168 = load i32, i32* @g_129, align 4, !tbaa !1
  %169 = zext i32 %168 to i64
  %170 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %170)
  %171 = load i64, i64* @g_132, align 8, !tbaa !7
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %172)
  %173 = load i8, i8* @g_144, align 1, !tbaa !9
  %174 = sext i8 %173 to i64
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %175)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %176

; <label>:176                                     ; preds = %204, %167
  %177 = load i32, i32* %i, align 4, !tbaa !1
  %178 = icmp slt i32 %177, 1
  br i1 %178, label %179, label %207

; <label>:179                                     ; preds = %176
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %180

; <label>:180                                     ; preds = %200, %179
  %181 = load i32, i32* %j, align 4, !tbaa !1
  %182 = icmp slt i32 %181, 10
  br i1 %182, label %183, label %203

; <label>:183                                     ; preds = %180
  %184 = load i32, i32* %j, align 4, !tbaa !1
  %185 = sext i32 %184 to i64
  %186 = load i32, i32* %i, align 4, !tbaa !1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [1 x [10 x i32]], [1 x [10 x i32]]* @g_200, i32 0, i64 %187
  %189 = getelementptr inbounds [10 x i32], [10 x i32]* %188, i32 0, i64 %185
  %190 = load i32, i32* %189, align 4, !tbaa !1
  %191 = zext i32 %190 to i64
  %192 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %191, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 %192)
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

; <label>:195                                     ; preds = %183
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = load i32, i32* %j, align 4, !tbaa !1
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 %196, i32 %197)
  br label %199

; <label>:199                                     ; preds = %195, %183
  br label %200

; <label>:200                                     ; preds = %199
  %201 = load i32, i32* %j, align 4, !tbaa !1
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %j, align 4, !tbaa !1
  br label %180

; <label>:203                                     ; preds = %180
  br label %204

; <label>:204                                     ; preds = %203
  %205 = load i32, i32* %i, align 4, !tbaa !1
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %i, align 4, !tbaa !1
  br label %176

; <label>:207                                     ; preds = %176
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %208

; <label>:208                                     ; preds = %248, %207
  %209 = load i32, i32* %i, align 4, !tbaa !1
  %210 = icmp slt i32 %209, 2
  br i1 %210, label %211, label %251

; <label>:211                                     ; preds = %208
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %212

; <label>:212                                     ; preds = %244, %211
  %213 = load i32, i32* %j, align 4, !tbaa !1
  %214 = icmp slt i32 %213, 5
  br i1 %214, label %215, label %247

; <label>:215                                     ; preds = %212
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %216

; <label>:216                                     ; preds = %240, %215
  %217 = load i32, i32* %k, align 4, !tbaa !1
  %218 = icmp slt i32 %217, 1
  br i1 %218, label %219, label %243

; <label>:219                                     ; preds = %216
  %220 = load i32, i32* %k, align 4, !tbaa !1
  %221 = sext i32 %220 to i64
  %222 = load i32, i32* %j, align 4, !tbaa !1
  %223 = sext i32 %222 to i64
  %224 = load i32, i32* %i, align 4, !tbaa !1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [2 x [5 x [1 x i32]]], [2 x [5 x [1 x i32]]]* @g_224, i32 0, i64 %225
  %227 = getelementptr inbounds [5 x [1 x i32]], [5 x [1 x i32]]* %226, i32 0, i64 %223
  %228 = getelementptr inbounds [1 x i32], [1 x i32]* %227, i32 0, i64 %221
  %229 = load volatile i32, i32* %228, align 4, !tbaa !1
  %230 = zext i32 %229 to i64
  %231 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %230, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 %231)
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %239

; <label>:234                                     ; preds = %219
  %235 = load i32, i32* %i, align 4, !tbaa !1
  %236 = load i32, i32* %j, align 4, !tbaa !1
  %237 = load i32, i32* %k, align 4, !tbaa !1
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %235, i32 %236, i32 %237)
  br label %239

; <label>:239                                     ; preds = %234, %219
  br label %240

; <label>:240                                     ; preds = %239
  %241 = load i32, i32* %k, align 4, !tbaa !1
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %k, align 4, !tbaa !1
  br label %216

; <label>:243                                     ; preds = %216
  br label %244

; <label>:244                                     ; preds = %243
  %245 = load i32, i32* %j, align 4, !tbaa !1
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %j, align 4, !tbaa !1
  br label %212

; <label>:247                                     ; preds = %212
  br label %248

; <label>:248                                     ; preds = %247
  %249 = load i32, i32* %i, align 4, !tbaa !1
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %i, align 4, !tbaa !1
  br label %208

; <label>:251                                     ; preds = %208
  %252 = load i32, i32* @g_230, align 4, !tbaa !1
  %253 = zext i32 %252 to i64
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %254)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %255

; <label>:255                                     ; preds = %294, %251
  %256 = load i32, i32* %i, align 4, !tbaa !1
  %257 = icmp slt i32 %256, 9
  br i1 %257, label %258, label %297

; <label>:258                                     ; preds = %255
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %259

; <label>:259                                     ; preds = %290, %258
  %260 = load i32, i32* %j, align 4, !tbaa !1
  %261 = icmp slt i32 %260, 7
  br i1 %261, label %262, label %293

; <label>:262                                     ; preds = %259
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %263

; <label>:263                                     ; preds = %286, %262
  %264 = load i32, i32* %k, align 4, !tbaa !1
  %265 = icmp slt i32 %264, 4
  br i1 %265, label %266, label %289

; <label>:266                                     ; preds = %263
  %267 = load i32, i32* %k, align 4, !tbaa !1
  %268 = sext i32 %267 to i64
  %269 = load i32, i32* %j, align 4, !tbaa !1
  %270 = sext i32 %269 to i64
  %271 = load i32, i32* %i, align 4, !tbaa !1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [9 x [7 x [4 x i64]]], [9 x [7 x [4 x i64]]]* @g_241, i32 0, i64 %272
  %274 = getelementptr inbounds [7 x [4 x i64]], [7 x [4 x i64]]* %273, i32 0, i64 %270
  %275 = getelementptr inbounds [4 x i64], [4 x i64]* %274, i32 0, i64 %268
  %276 = load i64, i64* %275, align 8, !tbaa !7
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 %277)
  %278 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

; <label>:280                                     ; preds = %266
  %281 = load i32, i32* %i, align 4, !tbaa !1
  %282 = load i32, i32* %j, align 4, !tbaa !1
  %283 = load i32, i32* %k, align 4, !tbaa !1
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %281, i32 %282, i32 %283)
  br label %285

; <label>:285                                     ; preds = %280, %266
  br label %286

; <label>:286                                     ; preds = %285
  %287 = load i32, i32* %k, align 4, !tbaa !1
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %k, align 4, !tbaa !1
  br label %263

; <label>:289                                     ; preds = %263
  br label %290

; <label>:290                                     ; preds = %289
  %291 = load i32, i32* %j, align 4, !tbaa !1
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %j, align 4, !tbaa !1
  br label %259

; <label>:293                                     ; preds = %259
  br label %294

; <label>:294                                     ; preds = %293
  %295 = load i32, i32* %i, align 4, !tbaa !1
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %i, align 4, !tbaa !1
  br label %255

; <label>:297                                     ; preds = %255
  %298 = load i8, i8* @g_243, align 1, !tbaa !9
  %299 = sext i8 %298 to i64
  %300 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %299, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %300)
  %301 = load i8, i8* @g_245, align 1, !tbaa !9
  %302 = sext i8 %301 to i64
  %303 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %303)
  %304 = load i8, i8* @g_253, align 1, !tbaa !9
  %305 = zext i8 %304 to i64
  %306 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %305, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %306)
  %307 = load i8, i8* @g_328, align 1, !tbaa !9
  %308 = sext i8 %307 to i64
  %309 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %308, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %309)
  %310 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1574674764, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %310)
  %311 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1785232438, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %311)
  %312 = load i32, i32* @g_478, align 4, !tbaa !1
  %313 = sext i32 %312 to i64
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %314)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %315

; <label>:315                                     ; preds = %330, %297
  %316 = load i32, i32* %i, align 4, !tbaa !1
  %317 = icmp slt i32 %316, 4
  br i1 %317, label %318, label %333

; <label>:318                                     ; preds = %315
  %319 = load i32, i32* %i, align 4, !tbaa !1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [4 x i64], [4 x i64]* @g_479, i32 0, i64 %320
  %322 = load i64, i64* %321, align 8, !tbaa !7
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %322, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %323)
  %324 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

; <label>:326                                     ; preds = %318
  %327 = load i32, i32* %i, align 4, !tbaa !1
  %328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %327)
  br label %329

; <label>:329                                     ; preds = %326, %318
  br label %330

; <label>:330                                     ; preds = %329
  %331 = load i32, i32* %i, align 4, !tbaa !1
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %i, align 4, !tbaa !1
  br label %315

; <label>:333                                     ; preds = %315
  %334 = load i32, i32* @g_482, align 4, !tbaa !1
  %335 = sext i32 %334 to i64
  %336 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %335, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %336)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %337

; <label>:337                                     ; preds = %353, %333
  %338 = load i32, i32* %i, align 4, !tbaa !1
  %339 = icmp slt i32 %338, 5
  br i1 %339, label %340, label %356

; <label>:340                                     ; preds = %337
  %341 = load i32, i32* %i, align 4, !tbaa !1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [5 x i32], [5 x i32]* @g_483, i32 0, i64 %342
  %344 = load volatile i32, i32* %343, align 4, !tbaa !1
  %345 = zext i32 %344 to i64
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %345, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %346)
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %352

; <label>:349                                     ; preds = %340
  %350 = load i32, i32* %i, align 4, !tbaa !1
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %350)
  br label %352

; <label>:352                                     ; preds = %349, %340
  br label %353

; <label>:353                                     ; preds = %352
  %354 = load i32, i32* %i, align 4, !tbaa !1
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %i, align 4, !tbaa !1
  br label %337

; <label>:356                                     ; preds = %337
  %357 = load i32, i32* @g_530, align 4, !tbaa !1
  %358 = zext i32 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %359)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %360

; <label>:360                                     ; preds = %376, %356
  %361 = load i32, i32* %i, align 4, !tbaa !1
  %362 = icmp slt i32 %361, 8
  br i1 %362, label %363, label %379

; <label>:363                                     ; preds = %360
  %364 = load i32, i32* %i, align 4, !tbaa !1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [8 x i8], [8 x i8]* @g_536, i32 0, i64 %365
  %367 = load i8, i8* %366, align 1, !tbaa !9
  %368 = sext i8 %367 to i64
  %369 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %368, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %369)
  %370 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %375

; <label>:372                                     ; preds = %363
  %373 = load i32, i32* %i, align 4, !tbaa !1
  %374 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %373)
  br label %375

; <label>:375                                     ; preds = %372, %363
  br label %376

; <label>:376                                     ; preds = %375
  %377 = load i32, i32* %i, align 4, !tbaa !1
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %i, align 4, !tbaa !1
  br label %360

; <label>:379                                     ; preds = %360
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %380

; <label>:380                                     ; preds = %408, %379
  %381 = load i32, i32* %i, align 4, !tbaa !1
  %382 = icmp slt i32 %381, 10
  br i1 %382, label %383, label %411

; <label>:383                                     ; preds = %380
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %384

; <label>:384                                     ; preds = %404, %383
  %385 = load i32, i32* %j, align 4, !tbaa !1
  %386 = icmp slt i32 %385, 6
  br i1 %386, label %387, label %407

; <label>:387                                     ; preds = %384
  %388 = load i32, i32* %j, align 4, !tbaa !1
  %389 = sext i32 %388 to i64
  %390 = load i32, i32* %i, align 4, !tbaa !1
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [10 x [6 x i16]], [10 x [6 x i16]]* @g_577, i32 0, i64 %391
  %393 = getelementptr inbounds [6 x i16], [6 x i16]* %392, i32 0, i64 %389
  %394 = load i16, i16* %393, align 2, !tbaa !10
  %395 = zext i16 %394 to i64
  %396 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %395, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 %396)
  %397 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %403

; <label>:399                                     ; preds = %387
  %400 = load i32, i32* %i, align 4, !tbaa !1
  %401 = load i32, i32* %j, align 4, !tbaa !1
  %402 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 %400, i32 %401)
  br label %403

; <label>:403                                     ; preds = %399, %387
  br label %404

; <label>:404                                     ; preds = %403
  %405 = load i32, i32* %j, align 4, !tbaa !1
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %j, align 4, !tbaa !1
  br label %384

; <label>:407                                     ; preds = %384
  br label %408

; <label>:408                                     ; preds = %407
  %409 = load i32, i32* %i, align 4, !tbaa !1
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %i, align 4, !tbaa !1
  br label %380

; <label>:411                                     ; preds = %380
  %412 = load volatile i8, i8* @g_645, align 1, !tbaa !9
  %413 = zext i8 %412 to i64
  %414 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %413, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %414)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %415

; <label>:415                                     ; preds = %443, %411
  %416 = load i32, i32* %i, align 4, !tbaa !1
  %417 = icmp slt i32 %416, 3
  br i1 %417, label %418, label %446

; <label>:418                                     ; preds = %415
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %419

; <label>:419                                     ; preds = %439, %418
  %420 = load i32, i32* %j, align 4, !tbaa !1
  %421 = icmp slt i32 %420, 9
  br i1 %421, label %422, label %442

; <label>:422                                     ; preds = %419
  %423 = load i32, i32* %j, align 4, !tbaa !1
  %424 = sext i32 %423 to i64
  %425 = load i32, i32* %i, align 4, !tbaa !1
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [3 x [9 x i32]], [3 x [9 x i32]]* @g_653, i32 0, i64 %426
  %428 = getelementptr inbounds [9 x i32], [9 x i32]* %427, i32 0, i64 %424
  %429 = load i32, i32* %428, align 4, !tbaa !1
  %430 = zext i32 %429 to i64
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 %431)
  %432 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %438

; <label>:434                                     ; preds = %422
  %435 = load i32, i32* %i, align 4, !tbaa !1
  %436 = load i32, i32* %j, align 4, !tbaa !1
  %437 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 %435, i32 %436)
  br label %438

; <label>:438                                     ; preds = %434, %422
  br label %439

; <label>:439                                     ; preds = %438
  %440 = load i32, i32* %j, align 4, !tbaa !1
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %j, align 4, !tbaa !1
  br label %419

; <label>:442                                     ; preds = %419
  br label %443

; <label>:443                                     ; preds = %442
  %444 = load i32, i32* %i, align 4, !tbaa !1
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %i, align 4, !tbaa !1
  br label %415

; <label>:446                                     ; preds = %415
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %447

; <label>:447                                     ; preds = %475, %446
  %448 = load i32, i32* %i, align 4, !tbaa !1
  %449 = icmp slt i32 %448, 10
  br i1 %449, label %450, label %478

; <label>:450                                     ; preds = %447
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %451

; <label>:451                                     ; preds = %471, %450
  %452 = load i32, i32* %j, align 4, !tbaa !1
  %453 = icmp slt i32 %452, 8
  br i1 %453, label %454, label %474

; <label>:454                                     ; preds = %451
  %455 = load i32, i32* %j, align 4, !tbaa !1
  %456 = sext i32 %455 to i64
  %457 = load i32, i32* %i, align 4, !tbaa !1
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [10 x [8 x i16]], [10 x [8 x i16]]* @g_817, i32 0, i64 %458
  %460 = getelementptr inbounds [8 x i16], [8 x i16]* %459, i32 0, i64 %456
  %461 = load i16, i16* %460, align 2, !tbaa !10
  %462 = zext i16 %461 to i64
  %463 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %462, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 %463)
  %464 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %470

; <label>:466                                     ; preds = %454
  %467 = load i32, i32* %i, align 4, !tbaa !1
  %468 = load i32, i32* %j, align 4, !tbaa !1
  %469 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 %467, i32 %468)
  br label %470

; <label>:470                                     ; preds = %466, %454
  br label %471

; <label>:471                                     ; preds = %470
  %472 = load i32, i32* %j, align 4, !tbaa !1
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %j, align 4, !tbaa !1
  br label %451

; <label>:474                                     ; preds = %451
  br label %475

; <label>:475                                     ; preds = %474
  %476 = load i32, i32* %i, align 4, !tbaa !1
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %i, align 4, !tbaa !1
  br label %447

; <label>:478                                     ; preds = %447
  %479 = load volatile i64, i64* @g_876, align 8, !tbaa !7
  %480 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %479, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %480)
  %481 = load i16, i16* @g_914, align 2, !tbaa !10
  %482 = sext i16 %481 to i64
  %483 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %482, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %483)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %484

; <label>:484                                     ; preds = %500, %478
  %485 = load i32, i32* %i, align 4, !tbaa !1
  %486 = icmp slt i32 %485, 4
  br i1 %486, label %487, label %503

; <label>:487                                     ; preds = %484
  %488 = load i32, i32* %i, align 4, !tbaa !1
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [4 x i16], [4 x i16]* @g_946, i32 0, i64 %489
  %491 = load i16, i16* %490, align 2, !tbaa !10
  %492 = zext i16 %491 to i64
  %493 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %492, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %493)
  %494 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %499

; <label>:496                                     ; preds = %487
  %497 = load i32, i32* %i, align 4, !tbaa !1
  %498 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %497)
  br label %499

; <label>:499                                     ; preds = %496, %487
  br label %500

; <label>:500                                     ; preds = %499
  %501 = load i32, i32* %i, align 4, !tbaa !1
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %i, align 4, !tbaa !1
  br label %484

; <label>:503                                     ; preds = %484
  %504 = load i16, i16* @g_971, align 2, !tbaa !10
  %505 = zext i16 %504 to i64
  %506 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %505, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %506)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %507

; <label>:507                                     ; preds = %546, %503
  %508 = load i32, i32* %i, align 4, !tbaa !1
  %509 = icmp slt i32 %508, 6
  br i1 %509, label %510, label %549

; <label>:510                                     ; preds = %507
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %511

; <label>:511                                     ; preds = %542, %510
  %512 = load i32, i32* %j, align 4, !tbaa !1
  %513 = icmp slt i32 %512, 10
  br i1 %513, label %514, label %545

; <label>:514                                     ; preds = %511
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %515

; <label>:515                                     ; preds = %538, %514
  %516 = load i32, i32* %k, align 4, !tbaa !1
  %517 = icmp slt i32 %516, 3
  br i1 %517, label %518, label %541

; <label>:518                                     ; preds = %515
  %519 = load i32, i32* %k, align 4, !tbaa !1
  %520 = sext i32 %519 to i64
  %521 = load i32, i32* %j, align 4, !tbaa !1
  %522 = sext i32 %521 to i64
  %523 = load i32, i32* %i, align 4, !tbaa !1
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [6 x [10 x [3 x i64]]], [6 x [10 x [3 x i64]]]* @g_976, i32 0, i64 %524
  %526 = getelementptr inbounds [10 x [3 x i64]], [10 x [3 x i64]]* %525, i32 0, i64 %522
  %527 = getelementptr inbounds [3 x i64], [3 x i64]* %526, i32 0, i64 %520
  %528 = load i64, i64* %527, align 8, !tbaa !7
  %529 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %528, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i32 %529)
  %530 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %537

; <label>:532                                     ; preds = %518
  %533 = load i32, i32* %i, align 4, !tbaa !1
  %534 = load i32, i32* %j, align 4, !tbaa !1
  %535 = load i32, i32* %k, align 4, !tbaa !1
  %536 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %533, i32 %534, i32 %535)
  br label %537

; <label>:537                                     ; preds = %532, %518
  br label %538

; <label>:538                                     ; preds = %537
  %539 = load i32, i32* %k, align 4, !tbaa !1
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %k, align 4, !tbaa !1
  br label %515

; <label>:541                                     ; preds = %515
  br label %542

; <label>:542                                     ; preds = %541
  %543 = load i32, i32* %j, align 4, !tbaa !1
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %j, align 4, !tbaa !1
  br label %511

; <label>:545                                     ; preds = %511
  br label %546

; <label>:546                                     ; preds = %545
  %547 = load i32, i32* %i, align 4, !tbaa !1
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %i, align 4, !tbaa !1
  br label %507

; <label>:549                                     ; preds = %507
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %550

; <label>:550                                     ; preds = %577, %549
  %551 = load i32, i32* %i, align 4, !tbaa !1
  %552 = icmp slt i32 %551, 1
  br i1 %552, label %553, label %580

; <label>:553                                     ; preds = %550
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %554

; <label>:554                                     ; preds = %573, %553
  %555 = load i32, i32* %j, align 4, !tbaa !1
  %556 = icmp slt i32 %555, 3
  br i1 %556, label %557, label %576

; <label>:557                                     ; preds = %554
  %558 = load i32, i32* %j, align 4, !tbaa !1
  %559 = sext i32 %558 to i64
  %560 = load i32, i32* %i, align 4, !tbaa !1
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds [1 x [3 x i64]], [1 x [3 x i64]]* @g_1021, i32 0, i64 %561
  %563 = getelementptr inbounds [3 x i64], [3 x i64]* %562, i32 0, i64 %559
  %564 = load volatile i64, i64* %563, align 8, !tbaa !7
  %565 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %564, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i32 %565)
  %566 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %572

; <label>:568                                     ; preds = %557
  %569 = load i32, i32* %i, align 4, !tbaa !1
  %570 = load i32, i32* %j, align 4, !tbaa !1
  %571 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 %569, i32 %570)
  br label %572

; <label>:572                                     ; preds = %568, %557
  br label %573

; <label>:573                                     ; preds = %572
  %574 = load i32, i32* %j, align 4, !tbaa !1
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* %j, align 4, !tbaa !1
  br label %554

; <label>:576                                     ; preds = %554
  br label %577

; <label>:577                                     ; preds = %576
  %578 = load i32, i32* %i, align 4, !tbaa !1
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %i, align 4, !tbaa !1
  br label %550

; <label>:580                                     ; preds = %550
  %581 = load volatile i8, i8* @g_1023, align 1, !tbaa !9
  %582 = zext i8 %581 to i64
  %583 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %582, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %583)
  %584 = load i8, i8* @g_1026, align 1, !tbaa !9
  %585 = zext i8 %584 to i64
  %586 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %585, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %586)
  %587 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %587)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %588

; <label>:588                                     ; preds = %604, %580
  %589 = load i32, i32* %i, align 4, !tbaa !1
  %590 = icmp slt i32 %589, 9
  br i1 %590, label %591, label %607

; <label>:591                                     ; preds = %588
  %592 = load i32, i32* %i, align 4, !tbaa !1
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [9 x i32], [9 x i32]* @g_1061, i32 0, i64 %593
  %595 = load i32, i32* %594, align 4, !tbaa !1
  %596 = sext i32 %595 to i64
  %597 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %596, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 %597)
  %598 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %603

; <label>:600                                     ; preds = %591
  %601 = load i32, i32* %i, align 4, !tbaa !1
  %602 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %601)
  br label %603

; <label>:603                                     ; preds = %600, %591
  br label %604

; <label>:604                                     ; preds = %603
  %605 = load i32, i32* %i, align 4, !tbaa !1
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %i, align 4, !tbaa !1
  br label %588

; <label>:607                                     ; preds = %588
  %608 = load i8, i8* @g_1062, align 1, !tbaa !9
  %609 = sext i8 %608 to i64
  %610 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %609, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %610)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %611

; <label>:611                                     ; preds = %639, %607
  %612 = load i32, i32* %i, align 4, !tbaa !1
  %613 = icmp slt i32 %612, 10
  br i1 %613, label %614, label %642

; <label>:614                                     ; preds = %611
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %615

; <label>:615                                     ; preds = %635, %614
  %616 = load i32, i32* %j, align 4, !tbaa !1
  %617 = icmp slt i32 %616, 4
  br i1 %617, label %618, label %638

; <label>:618                                     ; preds = %615
  %619 = load i32, i32* %j, align 4, !tbaa !1
  %620 = sext i32 %619 to i64
  %621 = load i32, i32* %i, align 4, !tbaa !1
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds [10 x [4 x i32]], [10 x [4 x i32]]* @g_1063, i32 0, i64 %622
  %624 = getelementptr inbounds [4 x i32], [4 x i32]* %623, i32 0, i64 %620
  %625 = load volatile i32, i32* %624, align 4, !tbaa !1
  %626 = zext i32 %625 to i64
  %627 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %626, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i32 %627)
  %628 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %634

; <label>:630                                     ; preds = %618
  %631 = load i32, i32* %i, align 4, !tbaa !1
  %632 = load i32, i32* %j, align 4, !tbaa !1
  %633 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 %631, i32 %632)
  br label %634

; <label>:634                                     ; preds = %630, %618
  br label %635

; <label>:635                                     ; preds = %634
  %636 = load i32, i32* %j, align 4, !tbaa !1
  %637 = add nsw i32 %636, 1
  store i32 %637, i32* %j, align 4, !tbaa !1
  br label %615

; <label>:638                                     ; preds = %615
  br label %639

; <label>:639                                     ; preds = %638
  %640 = load i32, i32* %i, align 4, !tbaa !1
  %641 = add nsw i32 %640, 1
  store i32 %641, i32* %i, align 4, !tbaa !1
  br label %611

; <label>:642                                     ; preds = %611
  %643 = load i8, i8* bitcast (%union.U0* @g_1072 to i8*), align 8
  %644 = shl i8 %643, 2
  %645 = ashr i8 %644, 2
  %646 = sext i8 %645 to i32
  %647 = sext i32 %646 to i64
  %648 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %647, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 %648)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %649

; <label>:649                                     ; preds = %665, %642
  %650 = load i32, i32* %i, align 4, !tbaa !1
  %651 = icmp slt i32 %650, 9
  br i1 %651, label %652, label %668

; <label>:652                                     ; preds = %649
  %653 = load i32, i32* %i, align 4, !tbaa !1
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds [9 x i8], [9 x i8]* @g_1092, i32 0, i64 %654
  %656 = load i8, i8* %655, align 1, !tbaa !9
  %657 = sext i8 %656 to i64
  %658 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %657, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 %658)
  %659 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %664

; <label>:661                                     ; preds = %652
  %662 = load i32, i32* %i, align 4, !tbaa !1
  %663 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %662)
  br label %664

; <label>:664                                     ; preds = %661, %652
  br label %665

; <label>:665                                     ; preds = %664
  %666 = load i32, i32* %i, align 4, !tbaa !1
  %667 = add nsw i32 %666, 1
  store i32 %667, i32* %i, align 4, !tbaa !1
  br label %649

; <label>:668                                     ; preds = %649
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %669

; <label>:669                                     ; preds = %684, %668
  %670 = load i32, i32* %i, align 4, !tbaa !1
  %671 = icmp slt i32 %670, 4
  br i1 %671, label %672, label %687

; <label>:672                                     ; preds = %669
  %673 = load i32, i32* %i, align 4, !tbaa !1
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [4 x i64], [4 x i64]* @g_1093, i32 0, i64 %674
  %676 = load i64, i64* %675, align 8, !tbaa !7
  %677 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %676, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 %677)
  %678 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %683

; <label>:680                                     ; preds = %672
  %681 = load i32, i32* %i, align 4, !tbaa !1
  %682 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %681)
  br label %683

; <label>:683                                     ; preds = %680, %672
  br label %684

; <label>:684                                     ; preds = %683
  %685 = load i32, i32* %i, align 4, !tbaa !1
  %686 = add nsw i32 %685, 1
  store i32 %686, i32* %i, align 4, !tbaa !1
  br label %669

; <label>:687                                     ; preds = %669
  %688 = load i32, i32* @g_1094, align 4, !tbaa !1
  %689 = sext i32 %688 to i64
  %690 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %689, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %690)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %691

; <label>:691                                     ; preds = %719, %687
  %692 = load i32, i32* %i, align 4, !tbaa !1
  %693 = icmp slt i32 %692, 2
  br i1 %693, label %694, label %722

; <label>:694                                     ; preds = %691
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %695

; <label>:695                                     ; preds = %715, %694
  %696 = load i32, i32* %j, align 4, !tbaa !1
  %697 = icmp slt i32 %696, 4
  br i1 %697, label %698, label %718

; <label>:698                                     ; preds = %695
  %699 = load i32, i32* %j, align 4, !tbaa !1
  %700 = sext i32 %699 to i64
  %701 = load i32, i32* %i, align 4, !tbaa !1
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* @g_1095, i32 0, i64 %702
  %704 = getelementptr inbounds [4 x i32], [4 x i32]* %703, i32 0, i64 %700
  %705 = load i32, i32* %704, align 4, !tbaa !1
  %706 = zext i32 %705 to i64
  %707 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %706, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i32 %707)
  %708 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %714

; <label>:710                                     ; preds = %698
  %711 = load i32, i32* %i, align 4, !tbaa !1
  %712 = load i32, i32* %j, align 4, !tbaa !1
  %713 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32 %711, i32 %712)
  br label %714

; <label>:714                                     ; preds = %710, %698
  br label %715

; <label>:715                                     ; preds = %714
  %716 = load i32, i32* %j, align 4, !tbaa !1
  %717 = add nsw i32 %716, 1
  store i32 %717, i32* %j, align 4, !tbaa !1
  br label %695

; <label>:718                                     ; preds = %695
  br label %719

; <label>:719                                     ; preds = %718
  %720 = load i32, i32* %i, align 4, !tbaa !1
  %721 = add nsw i32 %720, 1
  store i32 %721, i32* %i, align 4, !tbaa !1
  br label %691

; <label>:722                                     ; preds = %691
  %723 = load i32, i32* @g_1107, align 4, !tbaa !1
  %724 = zext i32 %723 to i64
  %725 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %724, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %725)
  %726 = load i16, i16* @g_1218, align 2, !tbaa !10
  %727 = zext i16 %726 to i64
  %728 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %727, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %728)
  %729 = load i32, i32* @g_1227, align 4, !tbaa !1
  %730 = sext i32 %729 to i64
  %731 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %730, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %731)
  %732 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %733 = zext i32 %732 to i64
  %734 = xor i64 %733, 4294967295
  %735 = trunc i64 %734 to i32
  %736 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %735, i32 %736)
  %737 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %737) #1
  %738 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %738) #1
  %739 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %739) #1
  %740 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %740) #1
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
  %1 = alloca i64, align 8
  %l_3 = alloca i64, align 8
  %l_8 = alloca i8*, align 8
  %l_1285 = alloca i32, align 4
  %l_1288 = alloca [1 x [3 x i16**]], align 16
  %l_1287 = alloca i16***, align 8
  %l_1286 = alloca i16****, align 8
  %l_1289 = alloca i32, align 4
  %l_1290 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %2 = alloca i32
  %3 = bitcast i64* %l_3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 0, i64* %l_3, align 8, !tbaa !7
  %4 = bitcast i8** %l_8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* @g_9, i8** %l_8, align 8, !tbaa !5
  %5 = bitcast i32* %l_1285 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 2088988089, i32* %l_1285, align 4, !tbaa !1
  %6 = bitcast [1 x [3 x i16**]]* %l_1288 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast i16**** %l_1287 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = getelementptr inbounds [1 x [3 x i16**]], [1 x [3 x i16**]]* %l_1288, i32 0, i64 0
  %9 = getelementptr inbounds [3 x i16**], [3 x i16**]* %8, i32 0, i64 0
  store i16*** %9, i16**** %l_1287, align 8, !tbaa !5
  %10 = bitcast i16***** %l_1286 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i16**** %l_1287, i16***** %l_1286, align 8, !tbaa !5
  %11 = bitcast i32* %l_1289 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -637248988, i32* %l_1289, align 4, !tbaa !1
  %12 = bitcast i32* %l_1290 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -6, i32* %l_1290, align 4, !tbaa !1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:15                                      ; preds = %33, %0
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %36

; <label>:18                                      ; preds = %15
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %29, %18
  %20 = load i32, i32* %j, align 4, !tbaa !1
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %32

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* %j, align 4, !tbaa !1
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [1 x [3 x i16**]], [1 x [3 x i16**]]* %l_1288, i32 0, i64 %26
  %28 = getelementptr inbounds [3 x i16**], [3 x i16**]* %27, i32 0, i64 %24
  store i16** @g_73, i16*** %28, align 8, !tbaa !5
  br label %29

; <label>:29                                      ; preds = %22
  %30 = load i32, i32* %j, align 4, !tbaa !1
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %j, align 4, !tbaa !1
  br label %19

; <label>:32                                      ; preds = %19
  br label %33

; <label>:33                                      ; preds = %32
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:36                                      ; preds = %15
  %37 = load i64, i64* %l_3, align 8, !tbaa !7
  %38 = load i64, i64* %l_3, align 8, !tbaa !7
  %39 = load i8*, i8** %l_8, align 8, !tbaa !5
  %40 = load i8, i8* %39, align 1, !tbaa !9
  %41 = sext i8 %40 to i64
  %42 = xor i64 %41, %38
  %43 = trunc i64 %42 to i8
  store i8 %43, i8* %39, align 1, !tbaa !9
  %44 = sext i8 %43 to i64
  %45 = or i64 128, %44
  %46 = trunc i64 %45 to i32
  %47 = call signext i8 @func_6(i32 %46)
  %48 = load i8*, i8** %l_8, align 8, !tbaa !5
  store i8 %47, i8* %48, align 1, !tbaa !9
  %49 = sext i8 %47 to i32
  %50 = load i8, i8* @g_1062, align 1, !tbaa !9
  %51 = load i16, i16* @g_914, align 2, !tbaa !10
  %52 = trunc i16 %51 to i8
  %53 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %52, i32 4)
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %50, i32 %56)
  %58 = load i32, i32* %l_1285, align 4, !tbaa !1
  store i32 %58, i32* %l_1285, align 4, !tbaa !1
  %59 = load i64, i64* %l_3, align 8, !tbaa !7
  store i16**** @g_848, i16***** %l_1286, align 8, !tbaa !5
  %60 = icmp slt i32 %49, 1
  %61 = zext i1 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = icmp sle i64 %62, 8033194314459622873
  %64 = zext i1 %63 to i32
  %65 = trunc i32 %64 to i8
  %66 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %65, i32 6)
  %67 = sext i8 %66 to i32
  %68 = icmp slt i32 %67, -637248988
  %69 = zext i1 %68 to i32
  %70 = xor i32 %69, -1
  %71 = icmp sge i32 %70, 57
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %l_1290, align 4, !tbaa !1
  store i8 5, i8* @g_144, align 1, !tbaa !9
  br label %73

; <label>:73                                      ; preds = %80, %36
  %74 = load i8, i8* @g_144, align 1, !tbaa !9
  %75 = sext i8 %74 to i32
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %85

; <label>:77                                      ; preds = %73
  %78 = load i64*, i64** @g_472, align 8, !tbaa !5
  %79 = load i64, i64* %78, align 8, !tbaa !7
  store i64 %79, i64* %1
  store i32 1, i32* %2
  br label %88
                                                  ; No predecessors!
  %81 = load i8, i8* @g_144, align 1, !tbaa !9
  %82 = sext i8 %81 to i32
  %83 = sub nsw i32 %82, 1
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* @g_144, align 1, !tbaa !9
  br label %73

; <label>:85                                      ; preds = %73
  %86 = load i64*, i64** @g_472, align 8, !tbaa !5
  %87 = load i64, i64* %86, align 8, !tbaa !7
  store i64 %87, i64* %1
  store i32 1, i32* %2
  br label %88

; <label>:88                                      ; preds = %85, %77
  %89 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %l_1290 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %l_1289 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i16***** %l_1286 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i16**** %l_1287 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast [1 x [3 x i16**]]* %l_1288 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %95) #1
  %96 = bitcast i32* %l_1285 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i8** %l_8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i64* %l_3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = load i64, i64* %1
  ret i64 %99
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0), i32 %3)
  ret void
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
define internal signext i8 @func_6(i32 %p_7) #0 {
  %1 = alloca i32, align 4
  %l_21 = alloca i32, align 4
  %l_22 = alloca i16*, align 8
  %l_24 = alloca i32, align 4
  %l_1278 = alloca [2 x i32**], align 16
  %i = alloca i32, align 4
  store i32 %p_7, i32* %1, align 4, !tbaa !1
  %2 = bitcast i32* %l_21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 534499351, i32* %l_21, align 4, !tbaa !1
  %3 = bitcast i16** %l_22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i16* @g_23, i16** %l_22, align 8, !tbaa !5
  %4 = bitcast i32* %l_24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1008592636, i32* %l_24, align 4, !tbaa !1
  %5 = bitcast [2 x i32**]* %l_1278 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %7

; <label>:7                                       ; preds = %14, %0
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %7
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [2 x i32**], [2 x i32**]* %l_1278, i32 0, i64 %12
  store i32** @g_661, i32*** %13, align 8, !tbaa !5
  br label %14

; <label>:14                                      ; preds = %10
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %i, align 4, !tbaa !1
  br label %7

; <label>:17                                      ; preds = %7
  %18 = load i32*, i32** @g_18, align 8, !tbaa !5
  %19 = load i8, i8* @g_9, align 1, !tbaa !9
  %20 = sext i8 %19 to i16
  %21 = load i32, i32* %l_21, align 4, !tbaa !1
  %22 = load i16*, i16** %l_22, align 8, !tbaa !5
  %23 = load i16, i16* %22, align 2, !tbaa !10
  %24 = sext i16 %23 to i32
  %25 = or i32 %24, %21
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %22, align 2, !tbaa !10
  %27 = sext i16 %26 to i32
  store i32 %27, i32* %l_24, align 4, !tbaa !1
  %28 = trunc i32 %27 to i16
  %29 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext 32635, i16 signext %28)
  %30 = sext i16 %29 to i32
  %31 = call i32 @func_14(i32* %18, i16 zeroext %20, i32 %30)
  %32 = load i32, i32* %l_21, align 4, !tbaa !1
  %33 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_536, i32 0, i64 3), align 1, !tbaa !9
  %34 = call i32* @func_10(i32 %31, i32 %32, i8 signext %33)
  %35 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  store i32* %34, i32** %35, align 8, !tbaa !5
  %36 = load i32, i32* %1, align 4, !tbaa !1
  %37 = trunc i32 %36 to i8
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast [2 x i32**]* %l_1278 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %39) #1
  %40 = bitcast i32* %l_24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i16** %l_22 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i32* %l_21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  ret i8 %37
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
define internal i32* @func_10(i32 %p_11, i32 %p_12, i8 signext %p_13) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %l_1233 = alloca i32, align 4
  %l_1234 = alloca i32, align 4
  %l_1239 = alloca [9 x [1 x [8 x i16]]], align 16
  %l_1246 = alloca i16****, align 8
  %l_1247 = alloca i64, align 8
  %l_1249 = alloca [2 x i32*], align 16
  %l_1275 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1248 = alloca i32*, align 8
  %l_1265 = alloca i64****, align 8
  %l_1270 = alloca i8*, align 8
  %l_1271 = alloca [1 x i8*], align 8
  %l_1272 = alloca [8 x i32], align 16
  %l_1273 = alloca i32, align 4
  %l_1274 = alloca [3 x [4 x i8*]], align 16
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %4 = alloca %union.U0, align 8
  store i32 %p_11, i32* %1, align 4, !tbaa !1
  store i32 %p_12, i32* %2, align 4, !tbaa !1
  store i8 %p_13, i8* %3, align 1, !tbaa !9
  %5 = bitcast i32* %l_1233 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 1633806160, i32* %l_1233, align 4, !tbaa !1
  %6 = bitcast i32* %l_1234 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 -137119487, i32* %l_1234, align 4, !tbaa !1
  %7 = bitcast [9 x [1 x [8 x i16]]]* %l_1239 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %7) #1
  %8 = bitcast [9 x [1 x [8 x i16]]]* %l_1239 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([9 x [1 x [8 x i16]]]* @func_10.l_1239 to i8*), i64 144, i32 16, i1 false)
  %9 = bitcast i16***** %l_1246 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i16**** @g_848, i16***** %l_1246, align 8, !tbaa !5
  %10 = bitcast i64* %l_1247 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 8, i64* %l_1247, align 8, !tbaa !7
  %11 = bitcast [2 x i32*]* %l_1249 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast i32** %l_1275 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32* null, i32** %l_1275, align 8, !tbaa !5
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %16

; <label>:16                                      ; preds = %23, %0
  %17 = load i32, i32* %i, align 4, !tbaa !1
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_1249, i32 0, i64 %21
  store i32* %l_1234, i32** %22, align 8, !tbaa !5
  br label %23

; <label>:23                                      ; preds = %19
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %i, align 4, !tbaa !1
  br label %16

; <label>:26                                      ; preds = %16
  %27 = load i32, i32* %l_1233, align 4, !tbaa !1
  %28 = load i32, i32* %l_1233, align 4, !tbaa !1
  %29 = or i32 %27, %28
  %30 = trunc i32 %29 to i16
  %31 = load i32, i32* %l_1234, align 4, !tbaa !1
  %32 = trunc i32 %31 to i16
  %33 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %30, i16 zeroext %32)
  %34 = load i16*, i16** @g_73, align 8, !tbaa !5
  store i16 %33, i16* %34, align 2, !tbaa !10
  %35 = sext i16 %33 to i32
  %36 = getelementptr inbounds [9 x [1 x [8 x i16]]], [9 x [1 x [8 x i16]]]* %l_1239, i32 0, i64 1
  %37 = getelementptr inbounds [1 x [8 x i16]], [1 x [8 x i16]]* %36, i32 0, i64 0
  %38 = getelementptr inbounds [8 x i16], [8 x i16]* %37, i32 0, i64 7
  %39 = load i16, i16* %38, align 2, !tbaa !10
  %40 = zext i16 %39 to i64
  %41 = icmp eq i64 49970, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %2, align 4, !tbaa !1
  %44 = getelementptr inbounds [9 x [1 x [8 x i16]]], [9 x [1 x [8 x i16]]]* %l_1239, i32 0, i64 1
  %45 = getelementptr inbounds [1 x [8 x i16]], [1 x [8 x i16]]* %44, i32 0, i64 0
  %46 = getelementptr inbounds [8 x i16], [8 x i16]* %45, i32 0, i64 7
  %47 = load i16, i16* %46, align 2, !tbaa !10
  %48 = zext i16 %47 to i32
  %49 = and i32 %43, %48
  %50 = trunc i32 %49 to i16
  %51 = load i32, i32* %l_1233, align 4, !tbaa !1
  %52 = load i16****, i16***** %l_1246, align 8, !tbaa !5
  %53 = load i16****, i16***** %l_1246, align 8, !tbaa !5
  %54 = icmp ne i16**** %52, %53
  %55 = zext i1 %54 to i32
  %56 = icmp ugt i32 %51, %55
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds [9 x [1 x [8 x i16]]], [9 x [1 x [8 x i16]]]* %l_1239, i32 0, i64 2
  %59 = getelementptr inbounds [1 x [8 x i16]], [1 x [8 x i16]]* %58, i32 0, i64 0
  %60 = getelementptr inbounds [8 x i16], [8 x i16]* %59, i32 0, i64 0
  %61 = load i16, i16* %60, align 2, !tbaa !10
  %62 = zext i16 %61 to i32
  %63 = icmp sgt i32 %57, %62
  %64 = zext i1 %63 to i32
  %65 = trunc i32 %64 to i8
  %66 = load i32, i32* %l_1233, align 4, !tbaa !1
  %67 = trunc i32 %66 to i8
  %68 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %65, i8 zeroext %67)
  %69 = zext i8 %68 to i16
  %70 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %50, i16 zeroext %69)
  %71 = zext i16 %70 to i64
  %72 = load i64*, i64** @g_472, align 8, !tbaa !5
  %73 = load i64, i64* %72, align 8, !tbaa !7
  %74 = and i64 %73, %71
  store i64 %74, i64* %72, align 8, !tbaa !7
  %75 = load i8, i8* %3, align 1, !tbaa !9
  %76 = sext i8 %75 to i64
  %77 = icmp sle i64 %74, %76
  %78 = zext i1 %77 to i32
  %79 = getelementptr inbounds [9 x [1 x [8 x i16]]], [9 x [1 x [8 x i16]]]* %l_1239, i32 0, i64 5
  %80 = getelementptr inbounds [1 x [8 x i16]], [1 x [8 x i16]]* %79, i32 0, i64 0
  %81 = getelementptr inbounds [8 x i16], [8 x i16]* %80, i32 0, i64 5
  %82 = load i16, i16* %81, align 2, !tbaa !10
  %83 = zext i16 %82 to i32
  %84 = icmp eq i32 %78, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %l_1234, align 4, !tbaa !1
  %87 = icmp sgt i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i8, i8* %3, align 1, !tbaa !9
  %90 = sext i8 %89 to i32
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %96

; <label>:92                                      ; preds = %26
  %93 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_946, i32 0, i64 3), align 2, !tbaa !10
  %94 = zext i16 %93 to i32
  %95 = icmp ne i32 %94, 0
  br label %96

; <label>:96                                      ; preds = %92, %26
  %97 = phi i1 [ false, %26 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  %99 = sext i32 %98 to i64
  %100 = and i64 %99, 248
  %101 = trunc i64 %100 to i8
  %102 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %101, i32 1)
  %103 = zext i8 %102 to i32
  %104 = call i32 @safe_div_func_uint32_t_u_u(i32 %42, i32 %103)
  %105 = getelementptr inbounds [9 x [1 x [8 x i16]]], [9 x [1 x [8 x i16]]]* %l_1239, i32 0, i64 1
  %106 = getelementptr inbounds [1 x [8 x i16]], [1 x [8 x i16]]* %105, i32 0, i64 0
  %107 = getelementptr inbounds [8 x i16], [8 x i16]* %106, i32 0, i64 7
  %108 = load i16, i16* %107, align 2, !tbaa !10
  %109 = zext i16 %108 to i32
  %110 = call i32 @safe_add_func_int32_t_s_s(i32 %104, i32 %109)
  %111 = icmp slt i32 %35, %110
  br i1 %111, label %112, label %115

; <label>:112                                     ; preds = %96
  %113 = load i64, i64* %l_1247, align 8, !tbaa !7
  %114 = icmp ne i64 %113, 0
  br label %115

; <label>:115                                     ; preds = %112, %96
  %116 = phi i1 [ false, %96 ], [ %114, %112 ]
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %1, align 4, !tbaa !1
  %119 = and i32 %117, %118
  %120 = load i32*, i32** @g_18, align 8, !tbaa !5
  store i32 %119, i32* %120, align 4, !tbaa !1
  %121 = icmp ne i32 %119, 0
  br i1 %121, label %122, label %127

; <label>:122                                     ; preds = %115
  %123 = bitcast i32** %l_1248 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #1
  store i32* %l_1234, i32** %l_1248, align 8, !tbaa !5
  %124 = load i32*, i32** %l_1248, align 8, !tbaa !5
  %125 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_1249, i32 0, i64 0
  store i32* %124, i32** %125, align 8, !tbaa !5
  %126 = bitcast i32** %l_1248 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  br label %232

; <label>:127                                     ; preds = %115
  %128 = bitcast i64***** %l_1265 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %128) #1
  store i64**** @g_469, i64***** %l_1265, align 8, !tbaa !5
  %129 = bitcast i8** %l_1270 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  store i8* null, i8** %l_1270, align 8, !tbaa !5
  %130 = bitcast [1 x i8*]* %l_1271 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #1
  %131 = bitcast [8 x i32]* %l_1272 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %131) #1
  %132 = bitcast [8 x i32]* %l_1272 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* bitcast ([8 x i32]* @func_10.l_1272 to i8*), i64 32, i32 16, i1 false)
  %133 = bitcast i32* %l_1273 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #1
  store i32 1, i32* %l_1273, align 4, !tbaa !1
  %134 = bitcast [3 x [4 x i8*]]* %l_1274 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %134) #1
  %135 = bitcast [3 x [4 x i8*]]* %l_1274 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* bitcast ([3 x [4 x i8*]]* @func_10.l_1274 to i8*), i64 96, i32 16, i1 false)
  %136 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #1
  %137 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %138

; <label>:138                                     ; preds = %145, %127
  %139 = load i32, i32* %i1, align 4, !tbaa !1
  %140 = icmp slt i32 %139, 1
  br i1 %140, label %141, label %148

; <label>:141                                     ; preds = %138
  %142 = load i32, i32* %i1, align 4, !tbaa !1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [1 x i8*], [1 x i8*]* %l_1271, i32 0, i64 %143
  store i8* @g_1026, i8** %144, align 8, !tbaa !5
  br label %145

; <label>:145                                     ; preds = %141
  %146 = load i32, i32* %i1, align 4, !tbaa !1
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %i1, align 4, !tbaa !1
  br label %138

; <label>:148                                     ; preds = %138
  %149 = load i32, i32* %1, align 4, !tbaa !1
  %150 = load i32*, i32** @g_18, align 8, !tbaa !5
  store i32 %149, i32* %150, align 4, !tbaa !1
  %151 = load i8, i8* %3, align 1, !tbaa !9
  %152 = sext i8 %151 to i16
  %153 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %152, i32 12)
  %154 = sext i16 %153 to i32
  %155 = load i32, i32* %1, align 4, !tbaa !1
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %148
  br label %158

; <label>:158                                     ; preds = %157, %148
  %159 = phi i1 [ false, %148 ], [ true, %157 ]
  %160 = zext i1 %159 to i32
  %161 = sext i32 %160 to i64
  %162 = bitcast %union.U0* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %162, i8* bitcast (%union.U0* getelementptr inbounds ([6 x %union.U0], [6 x %union.U0]* @g_1264, i32 0, i64 1) to i8*), i64 8, i32 8, i1 true), !tbaa.struct !12
  %163 = load i64****, i64***** %l_1265, align 8, !tbaa !5
  store i64*** @g_470, i64**** %163, align 8, !tbaa !5
  %164 = load i8, i8* %3, align 1, !tbaa !9
  %165 = sext i8 %164 to i32
  %166 = load i32, i32* getelementptr inbounds ([1 x [10 x i32]], [1 x [10 x i32]]* @g_200, i32 0, i64 0, i64 7), align 4, !tbaa !1
  %167 = icmp uge i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1272, i32 0, i64 4
  store i32 %168, i32* %169, align 4, !tbaa !1
  %170 = load i32, i32* %1, align 4, !tbaa !1
  %171 = icmp ne i32 %168, %170
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %1, align 4, !tbaa !1
  %174 = sext i32 %173 to i64
  %175 = icmp slt i64 145, %174
  %176 = zext i1 %175 to i32
  %177 = trunc i32 %176 to i16
  %178 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext 0, i16 signext %177)
  %179 = sext i16 %178 to i64
  %180 = and i64 %179, 3569030831
  %181 = icmp sle i64 %161, %180
  %182 = zext i1 %181 to i32
  %183 = load i32, i32* %l_1273, align 4, !tbaa !1
  %184 = call i32 @safe_sub_func_uint32_t_u_u(i32 %182, i32 %183)
  %185 = load i32, i32* %1, align 4, !tbaa !1
  %186 = xor i32 %184, %185
  %187 = zext i32 %186 to i64
  %188 = or i64 %187, 5782406948978588005
  %189 = trunc i64 %188 to i8
  store i8 %189, i8* @g_9, align 1, !tbaa !9
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

; <label>:192                                     ; preds = %158
  %193 = load i32, i32* %1, align 4, !tbaa !1
  %194 = icmp ne i32 %193, 0
  br label %195

; <label>:195                                     ; preds = %192, %158
  %196 = phi i1 [ false, %158 ], [ %194, %192 ]
  %197 = zext i1 %196 to i32
  %198 = sext i32 %197 to i64
  %199 = icmp ne i64 %198, 46403
  %200 = zext i1 %199 to i32
  %201 = sext i32 %200 to i64
  %202 = call i64 @safe_mod_func_int64_t_s_s(i64 %201, i64 -7359716287809911575)
  %203 = trunc i64 %202 to i16
  %204 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %203, i16 zeroext -23555)
  %205 = zext i16 %204 to i64
  %206 = icmp sle i64 %205, 6312463046511156841
  %207 = zext i1 %206 to i32
  %208 = load i16, i16* getelementptr inbounds ([10 x [6 x i16]], [10 x [6 x i16]]* @g_577, i32 0, i64 8, i64 5), align 2, !tbaa !10
  %209 = zext i16 %208 to i32
  %210 = icmp sle i32 %154, %209
  %211 = zext i1 %210 to i32
  %212 = sext i32 %211 to i64
  %213 = load i64*, i64** @g_472, align 8, !tbaa !5
  store i64 %212, i64* %213, align 8, !tbaa !7
  %214 = load i8, i8* %3, align 1, !tbaa !9
  %215 = sext i8 %214 to i64
  store i64 %215, i64* @g_132, align 8, !tbaa !7
  %216 = load i32, i32* %2, align 4, !tbaa !1
  %217 = zext i32 %216 to i64
  %218 = call i64 @safe_sub_func_int64_t_s_s(i64 %215, i64 %217)
  %219 = trunc i64 %218 to i16
  %220 = load i32, i32* @g_1094, align 4, !tbaa !1
  %221 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %219, i32 %220)
  %222 = sext i16 %221 to i32
  %223 = load i32*, i32** @g_18, align 8, !tbaa !5
  store i32 %222, i32* %223, align 4, !tbaa !1
  %224 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast [3 x [4 x i8*]]* %l_1274 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %226) #1
  %227 = bitcast i32* %l_1273 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast [8 x i32]* %l_1272 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %228) #1
  %229 = bitcast [1 x i8*]* %l_1271 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #1
  %230 = bitcast i8** %l_1270 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = bitcast i64***** %l_1265 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  br label %232

; <label>:232                                     ; preds = %195, %122
  %233 = load i32*, i32** %l_1275, align 8, !tbaa !5
  %234 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  %236 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #1
  %237 = bitcast i32** %l_1275 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #1
  %238 = bitcast [2 x i32*]* %l_1249 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %238) #1
  %239 = bitcast i64* %l_1247 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #1
  %240 = bitcast i16***** %l_1246 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %240) #1
  %241 = bitcast [9 x [1 x [8 x i16]]]* %l_1239 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %241) #1
  %242 = bitcast i32* %l_1234 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast i32* %l_1233 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  ret i32* %233
}

; Function Attrs: nounwind uwtable
define internal i32 @func_14(i32* %p_15, i16 zeroext %p_16, i32 %p_17) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %l_27 = alloca [7 x [10 x i32]], align 16
  %l_39 = alloca i8*, align 8
  %l_1226 = alloca [1 x [7 x [6 x i32*]]], align 16
  %l_1228 = alloca [10 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32* %p_15, i32** %1, align 8, !tbaa !5
  store i16 %p_16, i16* %2, align 2, !tbaa !10
  store i32 %p_17, i32* %3, align 4, !tbaa !1
  %4 = bitcast [7 x [10 x i32]]* %l_27 to i8*
  call void @llvm.lifetime.start(i64 280, i8* %4) #1
  %5 = bitcast [7 x [10 x i32]]* %l_27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([7 x [10 x i32]]* @func_14.l_27 to i8*), i64 280, i32 16, i1 false)
  %6 = bitcast i8** %l_39 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* @g_40, i8** %l_39, align 8, !tbaa !5
  %7 = bitcast [1 x [7 x [6 x i32*]]]* %l_1226 to i8*
  call void @llvm.lifetime.start(i64 336, i8* %7) #1
  %8 = bitcast [1 x [7 x [6 x i32*]]]* %l_1226 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([1 x [7 x [6 x i32*]]]* @func_14.l_1226 to i8*), i64 336, i32 16, i1 false)
  %9 = bitcast [10 x i8]* %l_1228 to i8*
  call void @llvm.lifetime.start(i64 10, i8* %9) #1
  %10 = bitcast [10 x i8]* %l_1228 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @func_14.l_1228, i32 0, i32 0), i64 10, i32 1, i1 false)
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = call i64 @safe_mod_func_int64_t_s_s(i64 -4, i64 -1454657328486065111)
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds [7 x [10 x i32]], [7 x [10 x i32]]* %l_27, i32 0, i64 6
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %16, i32 0, i64 2
  store i32 %15, i32* %17, align 4, !tbaa !1
  %18 = getelementptr inbounds [7 x [10 x i32]], [7 x [10 x i32]]* %l_27, i32 0, i64 2
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %18, i32 0, i64 1
  %20 = load i32, i32* %19, align 4, !tbaa !1
  %21 = getelementptr inbounds [7 x [10 x i32]], [7 x [10 x i32]]* %l_27, i32 0, i64 2
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %21, i32 0, i64 3
  %23 = load i32, i32* %22, align 4, !tbaa !1
  %24 = icmp ult i32 0, %23
  %25 = zext i1 %24 to i32
  %26 = trunc i32 %25 to i16
  %27 = load i8*, i8** %l_39, align 8, !tbaa !5
  store i8 1, i8* %27, align 1, !tbaa !9
  %28 = load i16, i16* %2, align 2, !tbaa !10
  %29 = zext i16 %28 to i32
  %30 = load i32*, i32** %1, align 8, !tbaa !5
  %31 = load i32*, i32** %1, align 8, !tbaa !5
  %32 = icmp ne i32* %30, %31
  %33 = zext i1 %32 to i32
  %34 = getelementptr inbounds [7 x [10 x i32]], [7 x [10 x i32]]* %l_27, i32 0, i64 6
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* %34, i32 0, i64 2
  %36 = load i32, i32* %35, align 4, !tbaa !1
  %37 = xor i32 %33, %36
  %38 = or i32 %29, %37
  %39 = trunc i32 %38 to i8
  %40 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext 1, i8 zeroext %39)
  %41 = getelementptr inbounds [7 x [10 x i32]], [7 x [10 x i32]]* %l_27, i32 0, i64 3
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %41, i32 0, i64 2
  %43 = load i32, i32* %42, align 4, !tbaa !1
  %44 = trunc i32 %43 to i8
  %45 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %40, i8 zeroext %44)
  %46 = zext i8 %45 to i16
  %47 = load i32, i32* %3, align 4, !tbaa !1
  %48 = trunc i32 %47 to i16
  %49 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %46, i16 signext %48)
  %50 = sext i16 %49 to i32
  %51 = load i16, i16* %2, align 2, !tbaa !10
  %52 = trunc i16 %51 to i8
  %53 = call i16** @func_28(i32 %20, i16 zeroext %26, i32 %50, i8 zeroext %52)
  %54 = load i16***, i16**** @g_848, align 8, !tbaa !5
  store i16** %53, i16*** %54, align 8, !tbaa !5
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %l_1228, i32 0, i64 2
  %56 = load i8, i8* %55, align 1, !tbaa !9
  %57 = add i8 %56, -1
  store i8 %57, i8* %55, align 1, !tbaa !9
  %58 = load i32*, i32** @g_18, align 8, !tbaa !5
  %59 = load i32, i32* %58, align 4, !tbaa !1
  %60 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast [10 x i8]* %l_1228 to i8*
  call void @llvm.lifetime.end(i64 10, i8* %63) #1
  %64 = bitcast [1 x [7 x [6 x i32*]]]* %l_1226 to i8*
  call void @llvm.lifetime.end(i64 336, i8* %64) #1
  %65 = bitcast i8** %l_39 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast [7 x [10 x i32]]* %l_27 to i8*
  call void @llvm.lifetime.end(i64 280, i8* %66) #1
  ret i32 %59
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
define internal i16** @func_28(i32 %p_29, i16 zeroext %p_30, i32 %p_31, i8 zeroext %p_32) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %l_42 = alloca i16, align 2
  %l_43 = alloca i32, align 4
  %l_48 = alloca i32*, align 8
  %l_50 = alloca i16*, align 8
  %l_1193 = alloca i32*, align 8
  %l_1213 = alloca i32, align 4
  %l_1214 = alloca i32, align 4
  %l_1184 = alloca i16*, align 8
  %l_1185 = alloca i32, align 4
  %l_1186 = alloca i32*, align 8
  %l_1191 = alloca i32***, align 8
  %l_1192 = alloca i32*, align 8
  %l_1211 = alloca i32, align 4
  %l_1212 = alloca i32, align 4
  %l_1215 = alloca i32, align 4
  %l_1204 = alloca i16, align 2
  %l_1210 = alloca i32, align 4
  %l_1216 = alloca i32, align 4
  %l_1217 = alloca i32, align 4
  %l_1201 = alloca [6 x [7 x i8*]], align 16
  %l_1203 = alloca i32, align 4
  %l_1205 = alloca i32, align 4
  %l_1206 = alloca i32*, align 8
  %l_1207 = alloca i32*, align 8
  %l_1208 = alloca i32*, align 8
  %l_1209 = alloca [1 x i32*], align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_1225 = alloca [4 x [6 x [1 x i32**]]], align 16
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %5 = alloca i32
  store i32 %p_29, i32* %1, align 4, !tbaa !1
  store i16 %p_30, i16* %2, align 2, !tbaa !10
  store i32 %p_31, i32* %3, align 4, !tbaa !1
  store i8 %p_32, i8* %4, align 1, !tbaa !9
  %6 = bitcast i16* %l_42 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  store i16 -9, i16* %l_42, align 2, !tbaa !10
  %7 = bitcast i32* %l_43 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -1417421257, i32* %l_43, align 4, !tbaa !1
  %8 = bitcast i32** %l_48 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), i32** %l_48, align 8, !tbaa !5
  %9 = bitcast i16** %l_50 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i16* @g_23, i16** %l_50, align 8, !tbaa !5
  %10 = bitcast i32** %l_1193 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 2), i32** %l_1193, align 8, !tbaa !5
  %11 = bitcast i32* %l_1213 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 1710854397, i32* %l_1213, align 4, !tbaa !1
  %12 = bitcast i32* %l_1214 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -9, i32* %l_1214, align 4, !tbaa !1
  %13 = load i16, i16* %l_42, align 2, !tbaa !10
  %14 = zext i16 %13 to i32
  store i32 %14, i32* %l_43, align 4, !tbaa !1
  %15 = load i16, i16* %l_42, align 2, !tbaa !10
  %16 = icmp ne i16 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %0
  br label %19

; <label>:18                                      ; preds = %0
  br label %19

; <label>:19                                      ; preds = %18, %17
  %20 = load i8, i8* @g_9, align 1, !tbaa !9
  %21 = sext i8 %20 to i64
  %22 = load i32, i32* %l_43, align 4, !tbaa !1
  %23 = load i32, i32* %3, align 4, !tbaa !1
  %24 = load i16, i16* @g_23, align 2, !tbaa !10
  %25 = sext i16 %24 to i32
  %26 = icmp eq i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 254
  %30 = zext i1 %29 to i32
  %31 = xor i32 %22, %30
  store i32 %31, i32* %l_43, align 4, !tbaa !1
  %32 = load i32*, i32** %l_48, align 8, !tbaa !5
  %33 = icmp ne i32* null, %32
  %34 = zext i1 %33 to i32
  %35 = icmp sgt i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = trunc i32 %36 to i16
  %38 = load i16*, i16** %l_50, align 8, !tbaa !5
  %39 = call i32* @func_44(i64 %21, i16 signext %37, i16* %38)
  %40 = load volatile i32**, i32*** @g_1176, align 8, !tbaa !5
  store i32* %39, i32** %40, align 8, !tbaa !5
  store i64 0, i64* @g_119, align 8, !tbaa !7
  br label %41

; <label>:41                                      ; preds = %286, %19
  %42 = load i64, i64* @g_119, align 8, !tbaa !7
  %43 = icmp uge i64 %42, 2
  br i1 %43, label %44, label %289

; <label>:44                                      ; preds = %41
  %45 = bitcast i16** %l_1184 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  store i16* @g_23, i16** %l_1184, align 8, !tbaa !5
  %46 = bitcast i32* %l_1185 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  store i32 -1572567244, i32* %l_1185, align 4, !tbaa !1
  %47 = bitcast i32** %l_1186 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  store i32* getelementptr inbounds ([2 x [4 x i32]], [2 x [4 x i32]]* @g_1095, i32 0, i64 1, i64 0), i32** %l_1186, align 8, !tbaa !5
  %48 = bitcast i32**** %l_1191 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  store i32*** @g_1068, i32**** %l_1191, align 8, !tbaa !5
  %49 = bitcast i32** %l_1192 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i32* @g_1094, i32** %l_1192, align 8, !tbaa !5
  %50 = bitcast i32* %l_1211 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  store i32 -1691400623, i32* %l_1211, align 4, !tbaa !1
  %51 = bitcast i32* %l_1212 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 1282651920, i32* %l_1212, align 4, !tbaa !1
  %52 = bitcast i32* %l_1215 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  store i32 0, i32* %l_1215, align 4, !tbaa !1
  store i64*** @g_470, i64**** @g_469, align 8, !tbaa !5
  %53 = load i16*, i16** %l_1184, align 8, !tbaa !5
  %54 = icmp eq i16* null, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %l_1185, align 4, !tbaa !1
  %57 = load i32, i32* %l_1185, align 4, !tbaa !1
  %58 = and i32 %56, %57
  %59 = load i32*, i32** %l_1186, align 8, !tbaa !5
  store i32 %58, i32* %59, align 4, !tbaa !1
  %60 = load i32***, i32**** %l_1191, align 8, !tbaa !5
  store i32** %l_1186, i32*** %60, align 8, !tbaa !5
  %61 = icmp eq i32** %l_1186, %l_1186
  %62 = zext i1 %61 to i32
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = trunc i32 %64 to i16
  %66 = load i16*, i16** @g_73, align 8, !tbaa !5
  %67 = load i16, i16* %66, align 2, !tbaa !10
  %68 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %65, i16 signext %67)
  %69 = sext i16 %68 to i32
  %70 = icmp ule i32 %58, %69
  %71 = zext i1 %70 to i32
  %72 = trunc i32 %71 to i8
  %73 = load i16, i16* %2, align 2, !tbaa !10
  %74 = trunc i16 %73 to i8
  %75 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %72, i8 signext %74)
  %76 = sext i8 %75 to i32
  %77 = load i32, i32* %l_1185, align 4, !tbaa !1
  %78 = icmp slt i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %l_1185, align 4, !tbaa !1
  %81 = load i32**, i32*** @g_624, align 8, !tbaa !5
  %82 = load volatile i32*, i32** %81, align 8, !tbaa !5
  %83 = load volatile i32, i32* %82, align 4, !tbaa !1
  %84 = or i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

; <label>:86                                      ; preds = %44
  %87 = load i32, i32* %l_1185, align 4, !tbaa !1
  %88 = icmp ne i32 %87, 0
  br label %89

; <label>:89                                      ; preds = %86, %44
  %90 = phi i1 [ false, %44 ], [ %88, %86 ]
  %91 = zext i1 %90 to i32
  %92 = load i8, i8* %4, align 1, !tbaa !9
  %93 = zext i8 %92 to i32
  %94 = xor i32 %91, %93
  %95 = load i32*, i32** %l_48, align 8, !tbaa !5
  store i32 %94, i32* %95, align 4, !tbaa !1
  %96 = sext i32 %94 to i64
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = sext i32 %101 to i64
  %103 = icmp sge i64 %102, -1
  %104 = zext i1 %103 to i32
  %105 = sext i32 %104 to i64
  %106 = load i64*, i64** @g_472, align 8, !tbaa !5
  %107 = load i64, i64* %106, align 8, !tbaa !7
  %108 = icmp ne i64 %105, %107
  %109 = zext i1 %108 to i32
  %110 = icmp sgt i32 1, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %l_1185, align 4, !tbaa !1
  %113 = and i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* @g_132, align 8, !tbaa !7
  %116 = and i64 %114, %115
  %117 = load i32, i32* %1, align 4, !tbaa !1
  %118 = sext i32 %117 to i64
  %119 = icmp sle i64 %116, %118
  %120 = zext i1 %119 to i32
  %121 = load i32*, i32** %l_1192, align 8, !tbaa !5
  store i32 %120, i32* %121, align 4, !tbaa !1
  %122 = load i32*, i32** %l_1193, align 8, !tbaa !5
  %123 = load volatile i32**, i32*** @g_1194, align 8, !tbaa !5
  store i32* %122, i32** %123, align 8, !tbaa !5
  store i32 0, i32* %l_1185, align 4, !tbaa !1
  br label %124

; <label>:124                                     ; preds = %274, %89
  %125 = load i32, i32* %l_1185, align 4, !tbaa !1
  %126 = icmp sge i32 %125, -14
  br i1 %126, label %127, label %277

; <label>:127                                     ; preds = %124
  %128 = bitcast i16* %l_1204 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %128) #1
  store i16 -31546, i16* %l_1204, align 2, !tbaa !10
  %129 = bitcast i32* %l_1210 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #1
  store i32 4, i32* %l_1210, align 4, !tbaa !1
  %130 = bitcast i32* %l_1216 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #1
  store i32 249883571, i32* %l_1216, align 4, !tbaa !1
  %131 = bitcast i32* %l_1217 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #1
  store i32 0, i32* %l_1217, align 4, !tbaa !1
  store i8 -27, i8* @g_9, align 1, !tbaa !9
  br label %132

; <label>:132                                     ; preds = %266, %127
  %133 = load i8, i8* @g_9, align 1, !tbaa !9
  %134 = sext i8 %133 to i32
  %135 = icmp slt i32 %134, -21
  br i1 %135, label %136, label %269

; <label>:136                                     ; preds = %132
  %137 = bitcast [6 x [7 x i8*]]* %l_1201 to i8*
  call void @llvm.lifetime.start(i64 336, i8* %137) #1
  %138 = bitcast [6 x [7 x i8*]]* %l_1201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* bitcast ([6 x [7 x i8*]]* @func_28.l_1201 to i8*), i64 336, i32 16, i1 false)
  %139 = bitcast i32* %l_1203 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #1
  store i32 6, i32* %l_1203, align 4, !tbaa !1
  %140 = bitcast i32* %l_1205 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  store i32 1, i32* %l_1205, align 4, !tbaa !1
  %141 = bitcast i32** %l_1206 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %141) #1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), i32** %l_1206, align 8, !tbaa !5
  %142 = bitcast i32** %l_1207 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %142) #1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 1), i32** %l_1207, align 8, !tbaa !5
  %143 = bitcast i32** %l_1208 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #1
  store i32* %l_1203, i32** %l_1208, align 8, !tbaa !5
  %144 = bitcast [1 x i32*]* %l_1209 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %144) #1
  %145 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  %146 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %147

; <label>:147                                     ; preds = %154, %136
  %148 = load i32, i32* %i, align 4, !tbaa !1
  %149 = icmp slt i32 %148, 1
  br i1 %149, label %150, label %157

; <label>:150                                     ; preds = %147
  %151 = load i32, i32* %i, align 4, !tbaa !1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_1209, i32 0, i64 %152
  store i32* %l_1205, i32** %153, align 8, !tbaa !5
  br label %154

; <label>:154                                     ; preds = %150
  %155 = load i32, i32* %i, align 4, !tbaa !1
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %i, align 4, !tbaa !1
  br label %147

; <label>:157                                     ; preds = %147
  store i8 0, i8* @g_40, align 1, !tbaa !9
  %158 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext 0, i32 0)
  %159 = load i32, i32* %l_1203, align 4, !tbaa !1
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = load i32*, i32** %l_48, align 8, !tbaa !5
  store i32 %162, i32* %163, align 4, !tbaa !1
  %164 = load i16, i16* @g_1218, align 2, !tbaa !10
  %165 = add i16 %164, 1
  store i16 %165, i16* @g_1218, align 2, !tbaa !10
  store i32 0, i32* %l_43, align 4, !tbaa !1
  br label %166

; <label>:166                                     ; preds = %251, %157
  %167 = load i32, i32* %l_43, align 4, !tbaa !1
  %168 = icmp sge i32 %167, 19
  br i1 %168, label %169, label %256

; <label>:169                                     ; preds = %166
  %170 = bitcast [4 x [6 x [1 x i32**]]]* %l_1225 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %170) #1
  %171 = getelementptr inbounds [4 x [6 x [1 x i32**]]], [4 x [6 x [1 x i32**]]]* %l_1225, i64 0, i64 0
  %172 = getelementptr inbounds [6 x [1 x i32**]], [6 x [1 x i32**]]* %171, i64 0, i64 0
  %173 = getelementptr inbounds [1 x i32**], [1 x i32**]* %172, i64 0, i64 0
  store i32** %l_1192, i32*** %173, !tbaa !5
  %174 = getelementptr inbounds [1 x i32**], [1 x i32**]* %172, i64 1
  %175 = getelementptr inbounds [1 x i32**], [1 x i32**]* %174, i64 0, i64 0
  %176 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_1209, i32 0, i64 0
  store i32** %176, i32*** %175, !tbaa !5
  %177 = getelementptr inbounds [1 x i32**], [1 x i32**]* %174, i64 1
  %178 = getelementptr inbounds [1 x i32**], [1 x i32**]* %177, i64 0, i64 0
  store i32** %l_1192, i32*** %178, !tbaa !5
  %179 = getelementptr inbounds [1 x i32**], [1 x i32**]* %177, i64 1
  %180 = getelementptr inbounds [1 x i32**], [1 x i32**]* %179, i64 0, i64 0
  %181 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_1209, i32 0, i64 0
  store i32** %181, i32*** %180, !tbaa !5
  %182 = getelementptr inbounds [1 x i32**], [1 x i32**]* %179, i64 1
  %183 = getelementptr inbounds [1 x i32**], [1 x i32**]* %182, i64 0, i64 0
  store i32** %l_1192, i32*** %183, !tbaa !5
  %184 = getelementptr inbounds [1 x i32**], [1 x i32**]* %182, i64 1
  %185 = getelementptr inbounds [1 x i32**], [1 x i32**]* %184, i64 0, i64 0
  %186 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_1209, i32 0, i64 0
  store i32** %186, i32*** %185, !tbaa !5
  %187 = getelementptr inbounds [6 x [1 x i32**]], [6 x [1 x i32**]]* %171, i64 1
  %188 = getelementptr inbounds [6 x [1 x i32**]], [6 x [1 x i32**]]* %187, i64 0, i64 0
  %189 = getelementptr inbounds [1 x i32**], [1 x i32**]* %188, i64 0, i64 0
  store i32** %l_1192, i32*** %189, !tbaa !5
  %190 = getelementptr inbounds [1 x i32**], [1 x i32**]* %188, i64 1
  %191 = getelementptr inbounds [1 x i32**], [1 x i32**]* %190, i64 0, i64 0
  %192 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_1209, i32 0, i64 0
  store i32** %192, i32*** %191, !tbaa !5
  %193 = getelementptr inbounds [1 x i32**], [1 x i32**]* %190, i64 1
  %194 = getelementptr inbounds [1 x i32**], [1 x i32**]* %193, i64 0, i64 0
  store i32** %l_1192, i32*** %194, !tbaa !5
  %195 = getelementptr inbounds [1 x i32**], [1 x i32**]* %193, i64 1
  %196 = getelementptr inbounds [1 x i32**], [1 x i32**]* %195, i64 0, i64 0
  %197 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_1209, i32 0, i64 0
  store i32** %197, i32*** %196, !tbaa !5
  %198 = getelementptr inbounds [1 x i32**], [1 x i32**]* %195, i64 1
  %199 = getelementptr inbounds [1 x i32**], [1 x i32**]* %198, i64 0, i64 0
  store i32** %l_1192, i32*** %199, !tbaa !5
  %200 = getelementptr inbounds [1 x i32**], [1 x i32**]* %198, i64 1
  %201 = getelementptr inbounds [1 x i32**], [1 x i32**]* %200, i64 0, i64 0
  %202 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_1209, i32 0, i64 0
  store i32** %202, i32*** %201, !tbaa !5
  %203 = getelementptr inbounds [6 x [1 x i32**]], [6 x [1 x i32**]]* %187, i64 1
  %204 = getelementptr inbounds [6 x [1 x i32**]], [6 x [1 x i32**]]* %203, i64 0, i64 0
  %205 = getelementptr inbounds [1 x i32**], [1 x i32**]* %204, i64 0, i64 0
  store i32** %l_1192, i32*** %205, !tbaa !5
  %206 = getelementptr inbounds [1 x i32**], [1 x i32**]* %204, i64 1
  %207 = getelementptr inbounds [1 x i32**], [1 x i32**]* %206, i64 0, i64 0
  %208 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_1209, i32 0, i64 0
  store i32** %208, i32*** %207, !tbaa !5
  %209 = getelementptr inbounds [1 x i32**], [1 x i32**]* %206, i64 1
  %210 = getelementptr inbounds [1 x i32**], [1 x i32**]* %209, i64 0, i64 0
  store i32** %l_1192, i32*** %210, !tbaa !5
  %211 = getelementptr inbounds [1 x i32**], [1 x i32**]* %209, i64 1
  %212 = getelementptr inbounds [1 x i32**], [1 x i32**]* %211, i64 0, i64 0
  %213 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_1209, i32 0, i64 0
  store i32** %213, i32*** %212, !tbaa !5
  %214 = getelementptr inbounds [1 x i32**], [1 x i32**]* %211, i64 1
  %215 = getelementptr inbounds [1 x i32**], [1 x i32**]* %214, i64 0, i64 0
  store i32** %l_1192, i32*** %215, !tbaa !5
  %216 = getelementptr inbounds [1 x i32**], [1 x i32**]* %214, i64 1
  %217 = getelementptr inbounds [1 x i32**], [1 x i32**]* %216, i64 0, i64 0
  %218 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_1209, i32 0, i64 0
  store i32** %218, i32*** %217, !tbaa !5
  %219 = getelementptr inbounds [6 x [1 x i32**]], [6 x [1 x i32**]]* %203, i64 1
  %220 = getelementptr inbounds [6 x [1 x i32**]], [6 x [1 x i32**]]* %219, i64 0, i64 0
  %221 = getelementptr inbounds [1 x i32**], [1 x i32**]* %220, i64 0, i64 0
  store i32** %l_1192, i32*** %221, !tbaa !5
  %222 = getelementptr inbounds [1 x i32**], [1 x i32**]* %220, i64 1
  %223 = getelementptr inbounds [1 x i32**], [1 x i32**]* %222, i64 0, i64 0
  %224 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_1209, i32 0, i64 0
  store i32** %224, i32*** %223, !tbaa !5
  %225 = getelementptr inbounds [1 x i32**], [1 x i32**]* %222, i64 1
  %226 = getelementptr inbounds [1 x i32**], [1 x i32**]* %225, i64 0, i64 0
  store i32** %l_1192, i32*** %226, !tbaa !5
  %227 = getelementptr inbounds [1 x i32**], [1 x i32**]* %225, i64 1
  %228 = getelementptr inbounds [1 x i32**], [1 x i32**]* %227, i64 0, i64 0
  %229 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_1209, i32 0, i64 0
  store i32** %229, i32*** %228, !tbaa !5
  %230 = getelementptr inbounds [1 x i32**], [1 x i32**]* %227, i64 1
  %231 = getelementptr inbounds [1 x i32**], [1 x i32**]* %230, i64 0, i64 0
  store i32** %l_1192, i32*** %231, !tbaa !5
  %232 = getelementptr inbounds [1 x i32**], [1 x i32**]* %230, i64 1
  %233 = getelementptr inbounds [1 x i32**], [1 x i32**]* %232, i64 0, i64 0
  %234 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_1209, i32 0, i64 0
  store i32** %234, i32*** %233, !tbaa !5
  %235 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %235) #1
  %236 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %236) #1
  %237 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %237) #1
  %238 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  %239 = load i32*, i32** %238, align 8, !tbaa !5
  %240 = load i32, i32* %239, align 4, !tbaa !1
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

; <label>:242                                     ; preds = %169
  store i32 15, i32* %5
  br label %245

; <label>:243                                     ; preds = %169
  %244 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  store i32* %1, i32** %244, align 8, !tbaa !5
  store i32 0, i32* %5
  br label %245

; <label>:245                                     ; preds = %243, %242
  %246 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  %249 = bitcast [4 x [6 x [1 x i32**]]]* %l_1225 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %249) #1
  %cleanup.dest = load i32, i32* %5
  switch i32 %cleanup.dest, label %299 [
    i32 0, label %250
    i32 15, label %256
  ]

; <label>:250                                     ; preds = %245
  br label %251

; <label>:251                                     ; preds = %250
  %252 = load i32, i32* %l_43, align 4, !tbaa !1
  %253 = trunc i32 %252 to i8
  %254 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %253, i8 signext 4)
  %255 = sext i8 %254 to i32
  store i32 %255, i32* %l_43, align 4, !tbaa !1
  br label %166

; <label>:256                                     ; preds = %245, %166
  %257 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  %258 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #1
  %259 = bitcast [1 x i32*]* %l_1209 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast i32** %l_1208 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  %261 = bitcast i32** %l_1207 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #1
  %262 = bitcast i32** %l_1206 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  %263 = bitcast i32* %l_1205 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %264 = bitcast i32* %l_1203 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #1
  %265 = bitcast [6 x [7 x i8*]]* %l_1201 to i8*
  call void @llvm.lifetime.end(i64 336, i8* %265) #1
  br label %266

; <label>:266                                     ; preds = %256
  %267 = load i8, i8* @g_9, align 1, !tbaa !9
  %268 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %267, i8 signext 5)
  store i8 %268, i8* @g_9, align 1, !tbaa !9
  br label %132

; <label>:269                                     ; preds = %132
  %270 = bitcast i32* %l_1217 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #1
  %271 = bitcast i32* %l_1216 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #1
  %272 = bitcast i32* %l_1210 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #1
  %273 = bitcast i16* %l_1204 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %273) #1
  br label %274

; <label>:274                                     ; preds = %269
  %275 = load i32, i32* %l_1185, align 4, !tbaa !1
  %276 = call i32 @safe_sub_func_int32_t_s_s(i32 %275, i32 7)
  store i32 %276, i32* %l_1185, align 4, !tbaa !1
  br label %124

; <label>:277                                     ; preds = %124
  %278 = bitcast i32* %l_1215 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  %279 = bitcast i32* %l_1212 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #1
  %280 = bitcast i32* %l_1211 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #1
  %281 = bitcast i32** %l_1192 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #1
  %282 = bitcast i32**** %l_1191 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #1
  %283 = bitcast i32** %l_1186 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #1
  %284 = bitcast i32* %l_1185 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %285 = bitcast i16** %l_1184 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %285) #1
  br label %286

; <label>:286                                     ; preds = %277
  %287 = load i64, i64* @g_119, align 8, !tbaa !7
  %288 = call i64 @safe_add_func_int64_t_s_s(i64 %287, i64 9)
  store i64 %288, i64* @g_119, align 8, !tbaa !7
  br label %41

; <label>:289                                     ; preds = %41
  %290 = load i16***, i16**** @g_848, align 8, !tbaa !5
  %291 = load i16**, i16*** %290, align 8, !tbaa !5
  store i32 1, i32* %5
  %292 = bitcast i32* %l_1214 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %l_1213 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i32** %l_1193 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %294) #1
  %295 = bitcast i16** %l_50 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %295) #1
  %296 = bitcast i32** %l_48 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #1
  %297 = bitcast i32* %l_43 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i16* %l_42 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %298) #1
  ret i16** %291

; <label>:299                                     ; preds = %245
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
define internal i32* @func_44(i64 %p_45, i16 signext %p_46, i16* %p_47) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i16, align 2
  %3 = alloca i16*, align 8
  %l_53 = alloca i32*, align 8
  %l_65 = alloca i32, align 4
  %l_1141 = alloca i8*, align 8
  %l_1142 = alloca [9 x i8*], align 16
  %l_1143 = alloca i32*, align 8
  %l_1144 = alloca i32*, align 8
  %l_1145 = alloca i32*, align 8
  %l_1146 = alloca i32*, align 8
  %l_1147 = alloca i32*, align 8
  %l_1148 = alloca i32*, align 8
  %l_1149 = alloca i32*, align 8
  %l_1150 = alloca i32*, align 8
  %l_1151 = alloca i32*, align 8
  %l_1152 = alloca i32*, align 8
  %l_1153 = alloca i32*, align 8
  %l_1154 = alloca [4 x i32*], align 16
  %l_1155 = alloca [3 x i32], align 4
  %l_1166 = alloca i64*, align 8
  %l_1174 = alloca [6 x i16], align 2
  %l_1175 = alloca [4 x i16*], align 16
  %i = alloca i32, align 4
  store i64 %p_45, i64* %1, align 8, !tbaa !7
  store i16 %p_46, i16* %2, align 2, !tbaa !10
  store i16* %p_47, i16** %3, align 8, !tbaa !5
  %4 = bitcast i32** %l_53 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 4), i32** %l_53, align 8, !tbaa !5
  %5 = bitcast i32* %l_65 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 227591036, i32* %l_65, align 4, !tbaa !1
  %6 = bitcast i8** %l_1141 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* null, i8** %l_1141, align 8, !tbaa !5
  %7 = bitcast [9 x i8*]* %l_1142 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %7) #1
  %8 = bitcast [9 x i8*]* %l_1142 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 72, i32 16, i1 false)
  %9 = bitcast i32** %l_1143 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* %l_65, i32** %l_1143, align 8, !tbaa !5
  %10 = bitcast i32** %l_1144 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* @g_1094, i32** %l_1144, align 8, !tbaa !5
  %11 = bitcast i32** %l_1145 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32* @g_1094, i32** %l_1145, align 8, !tbaa !5
  %12 = bitcast i32** %l_1146 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32* %l_65, i32** %l_1146, align 8, !tbaa !5
  %13 = bitcast i32** %l_1147 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), i32** %l_1147, align 8, !tbaa !5
  %14 = bitcast i32** %l_1148 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32* %l_65, i32** %l_1148, align 8, !tbaa !5
  %15 = bitcast i32** %l_1149 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i32* %l_65, i32** %l_1149, align 8, !tbaa !5
  %16 = bitcast i32** %l_1150 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), i32** %l_1150, align 8, !tbaa !5
  %17 = bitcast i32** %l_1151 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), i32** %l_1151, align 8, !tbaa !5
  %18 = bitcast i32** %l_1152 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32* @g_1094, i32** %l_1152, align 8, !tbaa !5
  %19 = bitcast i32** %l_1153 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i32* null, i32** %l_1153, align 8, !tbaa !5
  %20 = bitcast [4 x i32*]* %l_1154 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %20) #1
  %21 = bitcast [4 x i32*]* %l_1154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast ([4 x i32*]* @func_44.l_1154 to i8*), i64 32, i32 16, i1 false)
  %22 = bitcast [3 x i32]* %l_1155 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %22) #1
  %23 = bitcast i64** %l_1166 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i64* getelementptr inbounds ([4 x i64], [4 x i64]* @g_479, i32 0, i64 3), i64** %l_1166, align 8, !tbaa !5
  %24 = bitcast [6 x i16]* %l_1174 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %24) #1
  %25 = bitcast [4 x i16*]* %l_1175 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %25) #1
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %27

; <label>:27                                      ; preds = %34, %0
  %28 = load i32, i32* %i, align 4, !tbaa !1
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %37

; <label>:30                                      ; preds = %27
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %l_1155, i32 0, i64 %32
  store i32 -1983356191, i32* %33, align 4, !tbaa !1
  br label %34

; <label>:34                                      ; preds = %30
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %i, align 4, !tbaa !1
  br label %27

; <label>:37                                      ; preds = %27
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %38

; <label>:38                                      ; preds = %45, %37
  %39 = load i32, i32* %i, align 4, !tbaa !1
  %40 = icmp slt i32 %39, 6
  br i1 %40, label %41, label %48

; <label>:41                                      ; preds = %38
  %42 = load i32, i32* %i, align 4, !tbaa !1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [6 x i16], [6 x i16]* %l_1174, i32 0, i64 %43
  store i16 25853, i16* %44, align 2, !tbaa !10
  br label %45

; <label>:45                                      ; preds = %41
  %46 = load i32, i32* %i, align 4, !tbaa !1
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %i, align 4, !tbaa !1
  br label %38

; <label>:48                                      ; preds = %38
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %49

; <label>:49                                      ; preds = %56, %48
  %50 = load i32, i32* %i, align 4, !tbaa !1
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %59

; <label>:52                                      ; preds = %49
  %53 = load i32, i32* %i, align 4, !tbaa !1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i16*], [4 x i16*]* %l_1175, i32 0, i64 %54
  store i16* getelementptr inbounds ([10 x [8 x i16]], [10 x [8 x i16]]* @g_817, i32 0, i64 7, i64 1), i16** %55, align 8, !tbaa !5
  br label %56

; <label>:56                                      ; preds = %52
  %57 = load i32, i32* %i, align 4, !tbaa !1
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %i, align 4, !tbaa !1
  br label %49

; <label>:59                                      ; preds = %49
  %60 = load i32*, i32** %l_53, align 8, !tbaa !5
  %61 = icmp eq i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 1), %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @safe_add_func_uint32_t_u_u(i32 %62, i32 -888431262)
  %64 = load i32*, i32** %l_53, align 8, !tbaa !5
  store i32 %63, i32* %64, align 4, !tbaa !1
  %65 = load i32*, i32** %l_53, align 8, !tbaa !5
  %66 = load i32, i32* %65, align 4, !tbaa !1
  %67 = load i32, i32* %l_65, align 4, !tbaa !1
  store i32 %67, i32* %l_65, align 4, !tbaa !1
  %68 = call i16* @func_63(i32 %67)
  %69 = call signext i8 @func_61(i16* %68)
  %70 = sext i8 %69 to i64
  %71 = icmp eq i64 %70, 158
  %72 = zext i1 %71 to i32
  %73 = load i16, i16* %2, align 2, !tbaa !10
  %74 = sext i16 %73 to i64
  %75 = call i64 @func_56(i32 %72, i16* %2, i8 zeroext 54, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

; <label>:77                                      ; preds = %59
  %78 = load i32*, i32** %l_53, align 8, !tbaa !5
  %79 = load i32, i32* %78, align 4, !tbaa !1
  %80 = icmp ne i32 %79, 0
  br label %81

; <label>:81                                      ; preds = %77, %59
  %82 = phi i1 [ true, %59 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @g_1092, i32 0, i64 6), align 1, !tbaa !9
  %85 = load i16, i16* @g_914, align 2, !tbaa !10
  %86 = sext i16 %85 to i32
  %87 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %84, i32 %86)
  %88 = sext i8 %87 to i32
  %89 = icmp sle i32 %66, %88
  %90 = zext i1 %89 to i32
  %91 = load i32*, i32** %l_53, align 8, !tbaa !5
  store i32 %90, i32* %91, align 4, !tbaa !1
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %l_1155, i32 0, i64 2
  %93 = load i32, i32* %92, align 4, !tbaa !1
  %94 = add i32 %93, 1
  store i32 %94, i32* %92, align 4, !tbaa !1
  %95 = load i16, i16* %2, align 2, !tbaa !10
  %96 = sext i16 %95 to i32
  %97 = load i64*, i64** %l_1166, align 8, !tbaa !5
  %98 = load i16, i16* %2, align 2, !tbaa !10
  %99 = sext i16 %98 to i32
  %100 = load i32*, i32** %l_53, align 8, !tbaa !5
  %101 = load i32, i32* %100, align 4, !tbaa !1
  %102 = xor i32 %99, %101
  %103 = call i32 @safe_div_func_uint32_t_u_u(i32 -1, i32 1)
  %104 = icmp eq i64* %97, null
  %105 = zext i1 %104 to i32
  %106 = trunc i32 %105 to i16
  %107 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %106, i16 zeroext 22001)
  %108 = zext i16 %107 to i32
  %109 = icmp sgt i32 %96, %108
  %110 = zext i1 %109 to i32
  %111 = load i32*, i32** %l_1147, align 8, !tbaa !5
  %112 = load i32, i32* %111, align 4, !tbaa !1
  %113 = call i32 @safe_sub_func_int32_t_s_s(i32 %110, i32 %112)
  %114 = load i16, i16* %2, align 2, !tbaa !10
  %115 = sext i16 %114 to i32
  %116 = icmp slt i32 %113, %115
  %117 = zext i1 %116 to i32
  %118 = trunc i32 %117 to i16
  %119 = load i32*, i32** %l_1149, align 8, !tbaa !5
  %120 = load i32, i32* %119, align 4, !tbaa !1
  %121 = trunc i32 %120 to i16
  %122 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %118, i16 zeroext %121)
  %123 = zext i16 %122 to i64
  %124 = xor i64 %123, 2690505869
  %125 = trunc i64 %124 to i16
  store i16 %125, i16* getelementptr inbounds ([10 x [6 x i16]], [10 x [6 x i16]]* @g_577, i32 0, i64 6, i64 1), align 2, !tbaa !10
  %126 = load i16, i16* %2, align 2, !tbaa !10
  %127 = trunc i16 %126 to i8
  %128 = load i32*, i32** %l_53, align 8, !tbaa !5
  %129 = load i32, i32* %128, align 4, !tbaa !1
  %130 = trunc i32 %129 to i8
  %131 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %127, i8 zeroext %130)
  %132 = zext i8 %131 to i32
  %133 = load i32*, i32** %l_1145, align 8, !tbaa !5
  store i32 %132, i32* %133, align 4, !tbaa !1
  %134 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast [4 x i16*]* %l_1175 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %135) #1
  %136 = bitcast [6 x i16]* %l_1174 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %136) #1
  %137 = bitcast i64** %l_1166 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast [3 x i32]* %l_1155 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %138) #1
  %139 = bitcast [4 x i32*]* %l_1154 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %139) #1
  %140 = bitcast i32** %l_1153 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i32** %l_1152 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i32** %l_1151 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i32** %l_1150 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i32** %l_1149 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast i32** %l_1148 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast i32** %l_1147 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast i32** %l_1146 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i32** %l_1145 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i32** %l_1144 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast i32** %l_1143 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast [9 x i8*]* %l_1142 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %151) #1
  %152 = bitcast i8** %l_1141 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast i32* %l_65 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i32** %l_53 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  ret i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3)
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
define internal i64 @func_56(i32 %p_57, i16* %p_58, i8 zeroext %p_59, i64 %p_60) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %l_1112 = alloca i32*, align 8
  %l_1113 = alloca i32*, align 8
  %l_1114 = alloca [10 x i32*], align 16
  %l_1115 = alloca [1 x i32], align 4
  %l_1120 = alloca i32, align 4
  %l_1121 = alloca i64, align 8
  %l_1133 = alloca i32, align 4
  %l_1135 = alloca i8*, align 8
  %l_1134 = alloca i8**, align 8
  %l_1136 = alloca i16*, align 8
  %l_1137 = alloca [9 x [1 x [9 x i16*]]], align 16
  %l_1138 = alloca i16, align 2
  %l_1139 = alloca i32**, align 8
  %l_1140 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %p_57, i32* %1, align 4, !tbaa !1
  store i16* %p_58, i16** %2, align 8, !tbaa !5
  store i8 %p_59, i8* %3, align 1, !tbaa !9
  store i64 %p_60, i64* %4, align 8, !tbaa !7
  %5 = bitcast i32** %l_1112 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_1094, i32** %l_1112, align 8, !tbaa !5
  %6 = bitcast i32** %l_1113 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_1094, i32** %l_1113, align 8, !tbaa !5
  %7 = bitcast [10 x i32*]* %l_1114 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %7) #1
  %8 = bitcast [10 x i32*]* %l_1114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([10 x i32*]* @func_56.l_1114 to i8*), i64 80, i32 16, i1 false)
  %9 = bitcast [1 x i32]* %l_1115 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %l_1120 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 1, i32* %l_1120, align 4, !tbaa !1
  %11 = bitcast i64* %l_1121 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64 -3441007050636429453, i64* %l_1121, align 8, !tbaa !7
  %12 = bitcast i32* %l_1133 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -9, i32* %l_1133, align 4, !tbaa !1
  %13 = bitcast i8** %l_1135 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i8* @g_40, i8** %l_1135, align 8, !tbaa !5
  %14 = bitcast i8*** %l_1134 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i8** %l_1135, i8*** %l_1134, align 8, !tbaa !5
  %15 = bitcast i16** %l_1136 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i16* null, i16** %l_1136, align 8, !tbaa !5
  %16 = bitcast [9 x [1 x [9 x i16*]]]* %l_1137 to i8*
  call void @llvm.lifetime.start(i64 648, i8* %16) #1
  %17 = bitcast i16* %l_1138 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #1
  store i16 0, i16* %l_1138, align 2, !tbaa !10
  %18 = bitcast i32*** %l_1139 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32** null, i32*** %l_1139, align 8, !tbaa !5
  %19 = bitcast i32* %l_1140 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 5, i32* %l_1140, align 4, !tbaa !1
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
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %33

; <label>:26                                      ; preds = %23
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1115, i32 0, i64 %28
  store i32 274611534, i32* %29, align 4, !tbaa !1
  br label %30

; <label>:30                                      ; preds = %26
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i, align 4, !tbaa !1
  br label %23

; <label>:33                                      ; preds = %23
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %34

; <label>:34                                      ; preds = %63, %33
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %36 = icmp slt i32 %35, 9
  br i1 %36, label %37, label %66

; <label>:37                                      ; preds = %34
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %38

; <label>:38                                      ; preds = %59, %37
  %39 = load i32, i32* %j, align 4, !tbaa !1
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %62

; <label>:41                                      ; preds = %38
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %42

; <label>:42                                      ; preds = %55, %41
  %43 = load i32, i32* %k, align 4, !tbaa !1
  %44 = icmp slt i32 %43, 9
  br i1 %44, label %45, label %58

; <label>:45                                      ; preds = %42
  %46 = load i32, i32* %k, align 4, !tbaa !1
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* %j, align 4, !tbaa !1
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* %i, align 4, !tbaa !1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [9 x [1 x [9 x i16*]]], [9 x [1 x [9 x i16*]]]* %l_1137, i32 0, i64 %51
  %53 = getelementptr inbounds [1 x [9 x i16*]], [1 x [9 x i16*]]* %52, i32 0, i64 %49
  %54 = getelementptr inbounds [9 x i16*], [9 x i16*]* %53, i32 0, i64 %47
  store i16* getelementptr inbounds ([10 x [6 x i16]], [10 x [6 x i16]]* @g_577, i32 0, i64 3, i64 0), i16** %54, align 8, !tbaa !5
  br label %55

; <label>:55                                      ; preds = %45
  %56 = load i32, i32* %k, align 4, !tbaa !1
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %k, align 4, !tbaa !1
  br label %42

; <label>:58                                      ; preds = %42
  br label %59

; <label>:59                                      ; preds = %58
  %60 = load i32, i32* %j, align 4, !tbaa !1
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %j, align 4, !tbaa !1
  br label %38

; <label>:62                                      ; preds = %38
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load i32, i32* %i, align 4, !tbaa !1
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %i, align 4, !tbaa !1
  br label %34

; <label>:66                                      ; preds = %34
  %67 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1115, i32 0, i64 0
  %68 = load i32, i32* %67, align 4, !tbaa !1
  %69 = add i32 %68, 1
  store i32 %69, i32* %67, align 4, !tbaa !1
  %70 = load i32*, i32** %l_1113, align 8, !tbaa !5
  %71 = load i32, i32* %70, align 4, !tbaa !1
  %72 = trunc i32 %71 to i8
  %73 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %72, i32 2)
  %74 = zext i8 %73 to i32
  %75 = load i32, i32* %l_1120, align 4, !tbaa !1
  %76 = and i32 %75, 1
  store i32 %76, i32* %l_1120, align 4, !tbaa !1
  %77 = icmp sle i32 %74, %76
  %78 = zext i1 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %l_1121, align 8, !tbaa !7
  %81 = xor i64 %80, %79
  store i64 %81, i64* %l_1121, align 8, !tbaa !7
  %82 = load i8, i8* @g_243, align 1, !tbaa !9
  %83 = sext i8 %82 to i32
  %84 = load i64, i64* %4, align 8, !tbaa !7
  %85 = trunc i64 %84 to i8
  %86 = load i32*, i32** %l_1112, align 8, !tbaa !5
  %87 = load i32, i32* %86, align 4, !tbaa !1
  %88 = trunc i32 %87 to i8
  %89 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %85, i8 zeroext %88)
  %90 = zext i8 %89 to i32
  %91 = load i32*, i32** %l_1112, align 8, !tbaa !5
  %92 = load i32, i32* %91, align 4, !tbaa !1
  %93 = sext i32 %92 to i64
  %94 = and i64 %93, 3905200938
  %95 = load i32*, i32** %l_1112, align 8, !tbaa !5
  %96 = load i32, i32* %95, align 4, !tbaa !1
  %97 = load i32*, i32** %l_1113, align 8, !tbaa !5
  %98 = load i32, i32* %97, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = icmp ne i64 2053772564, %99
  %101 = zext i1 %100 to i32
  %102 = xor i32 %101, -1
  %103 = trunc i32 %102 to i16
  %104 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext -14556, i16 zeroext %103)
  %105 = zext i16 %104 to i32
  %106 = load i8, i8* %3, align 1, !tbaa !9
  %107 = zext i8 %106 to i32
  %108 = icmp slt i32 %105, %107
  %109 = zext i1 %108 to i32
  %110 = sext i32 %109 to i64
  %111 = icmp ult i64 %110, -7742667560278400169
  %112 = zext i1 %111 to i32
  %113 = sext i32 %112 to i64
  %114 = or i64 %94, %113
  %115 = or i64 %114, 3864610965
  %116 = load i32, i32* %l_1133, align 4, !tbaa !1
  %117 = sext i32 %116 to i64
  %118 = icmp ne i64 %115, %117
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %4, align 8, !tbaa !7
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

; <label>:122                                     ; preds = %66
  %123 = load i8, i8* %3, align 1, !tbaa !9
  %124 = zext i8 %123 to i32
  %125 = icmp ne i32 %124, 0
  br label %126

; <label>:126                                     ; preds = %122, %66
  %127 = phi i1 [ false, %66 ], [ %125, %122 ]
  %128 = zext i1 %127 to i32
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %4, align 8, !tbaa !7
  %131 = and i64 %129, %130
  %132 = load i8**, i8*** %l_1134, align 8, !tbaa !5
  %133 = icmp eq i8** @g_1042, %132
  %134 = zext i1 %133 to i32
  %135 = or i32 %90, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

; <label>:137                                     ; preds = %126
  br label %138

; <label>:138                                     ; preds = %137, %126
  %139 = phi i1 [ false, %126 ], [ true, %137 ]
  %140 = zext i1 %139 to i32
  %141 = icmp slt i32 %83, %140
  %142 = zext i1 %141 to i32
  %143 = load i32*, i32** %l_1113, align 8, !tbaa !5
  store i32 %142, i32* %143, align 4, !tbaa !1
  %144 = load i32, i32* @g_478, align 4, !tbaa !1
  %145 = and i32 %142, %144
  %146 = sext i32 %145 to i64
  %147 = icmp ne i64 %146, 1
  %148 = zext i1 %147 to i32
  %149 = trunc i32 %148 to i8
  %150 = load i16, i16* %l_1138, align 2, !tbaa !10
  %151 = sext i16 %150 to i32
  %152 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %149, i32 %151)
  %153 = load i32**, i32*** %l_1139, align 8, !tbaa !5
  %154 = load i32**, i32*** %l_1139, align 8, !tbaa !5
  %155 = icmp ne i32** %153, %154
  %156 = zext i1 %155 to i32
  %157 = sext i32 %156 to i64
  %158 = icmp slt i64 %157, 60
  %159 = zext i1 %158 to i32
  %160 = trunc i32 %159 to i16
  %161 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %160, i16 zeroext -1)
  %162 = zext i16 %161 to i32
  %163 = trunc i32 %162 to i8
  %164 = load i8, i8* bitcast (%union.U0* @g_1072 to i8*), align 8
  %165 = and i8 %163, 63
  %166 = and i8 %164, -64
  %167 = or i8 %166, %165
  store i8 %167, i8* bitcast (%union.U0* @g_1072 to i8*), align 8
  %168 = shl i8 %165, 2
  %169 = ashr i8 %168, 2
  %170 = sext i8 %169 to i32
  %171 = load i32, i32* %l_1140, align 4, !tbaa !1
  %172 = zext i32 %171 to i64
  %173 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %l_1140 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32*** %l_1139 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast i16* %l_1138 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %178) #1
  %179 = bitcast [9 x [1 x [9 x i16*]]]* %l_1137 to i8*
  call void @llvm.lifetime.end(i64 648, i8* %179) #1
  %180 = bitcast i16** %l_1136 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast i8*** %l_1134 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast i8** %l_1135 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %183 = bitcast i32* %l_1133 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i64* %l_1121 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = bitcast i32* %l_1120 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast [1 x i32]* %l_1115 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast [10 x i32*]* %l_1114 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %187) #1
  %188 = bitcast i32** %l_1113 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = bitcast i32** %l_1112 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  ret i64 %172
}

; Function Attrs: nounwind uwtable
define internal signext i8 @func_61(i16* %p_62) #0 {
  %1 = alloca i16*, align 8
  %l_1111 = alloca i16, align 2
  store i16* %p_62, i16** %1, align 8, !tbaa !5
  %2 = bitcast i16* %l_1111 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #1
  store i16 -21642, i16* %l_1111, align 2, !tbaa !10
  %3 = load i16, i16* %l_1111, align 2, !tbaa !10
  %4 = trunc i16 %3 to i8
  %5 = bitcast i16* %l_1111 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %5) #1
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define internal i16* @func_63(i32 %p_64) #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i32, align 4
  %l_71 = alloca i8*, align 8
  %l_74 = alloca i16***, align 8
  %l_76 = alloca [5 x i16**], align 16
  %l_75 = alloca i16***, align 8
  %l_86 = alloca i32, align 4
  %l_87 = alloca i32*, align 8
  %l_91 = alloca [3 x i32], align 4
  %l_92 = alloca i16*, align 8
  %l_93 = alloca i16*, align 8
  %l_95 = alloca i8*, align 8
  %l_717 = alloca i8, align 1
  %l_726 = alloca i16, align 2
  %l_806 = alloca i16, align 2
  %l_855 = alloca i32, align 4
  %l_889 = alloca [3 x i32], align 4
  %l_949 = alloca i8, align 1
  %l_972 = alloca i64, align 8
  %l_986 = alloca [7 x i8], align 1
  %l_992 = alloca i8, align 1
  %l_1011 = alloca [9 x %union.U0*], align 16
  %l_1041 = alloca i8*, align 8
  %l_1056 = alloca [10 x i16*****], align 16
  %l_1071 = alloca i32**, align 8
  %l_1106 = alloca i64, align 8
  %l_1110 = alloca i16*, align 8
  %i = alloca i32, align 4
  %3 = alloca %union.U0, align 8
  %l_709 = alloca [7 x i32**], align 16
  %l_716 = alloca [9 x [4 x i64*]], align 16
  %l_727 = alloca [5 x i32*], align 16
  %l_754 = alloca i64, align 8
  %l_797 = alloca i16*, align 8
  %l_845 = alloca i16****, align 8
  %l_880 = alloca i64**, align 8
  %l_890 = alloca i8, align 1
  %l_915 = alloca i32*, align 8
  %l_1070 = alloca i32**, align 8
  %l_1089 = alloca i16, align 2
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %l_729 = alloca i32*, align 8
  %l_739 = alloca i16**, align 8
  %l_740 = alloca [2 x [4 x [7 x i32]]], align 16
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_759 = alloca i32, align 4
  %l_760 = alloca i32, align 4
  %l_785 = alloca i32*, align 8
  %l_796 = alloca i16*, align 8
  %l_749 = alloca i64, align 8
  %l_745 = alloca i32*, align 8
  %l_746 = alloca [9 x [2 x i16]], align 16
  %l_748 = alloca i32*, align 8
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %4 = alloca i32
  %l_761 = alloca [5 x [3 x i8]], align 1
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %l_782 = alloca i32, align 4
  %l_774 = alloca [8 x [9 x [2 x i16]]], align 16
  %l_783 = alloca i32, align 4
  %i8 = alloca i32, align 4
  %j9 = alloca i32, align 4
  %k10 = alloca i32, align 4
  %l_784 = alloca i32*, align 8
  %l_786 = alloca i32**, align 8
  %l_795 = alloca [2 x [2 x [9 x i64]]], align 16
  %i12 = alloca i32, align 4
  %j13 = alloca i32, align 4
  %k14 = alloca i32, align 4
  %l_809 = alloca i16*, align 8
  %l_810 = alloca i16*, align 8
  %l_816 = alloca i16*, align 8
  %l_818 = alloca i32, align 4
  %l_906 = alloca i16, align 2
  %l_910 = alloca i8*, align 8
  %l_979 = alloca %union.U0*, align 8
  %l_836 = alloca [5 x i8], align 1
  %l_850 = alloca i32*, align 8
  %l_854 = alloca i32, align 4
  %l_859 = alloca i16*, align 8
  %i16 = alloca i32, align 4
  %l_819 = alloca i32*, align 8
  %l_829 = alloca i8*, align 8
  %l_843 = alloca [9 x i32], align 16
  %l_844 = alloca i16, align 2
  %i17 = alloca i32, align 4
  %l_849 = alloca i16, align 2
  %l_856 = alloca i32, align 4
  %l_885 = alloca [4 x [10 x [1 x i32]]], align 16
  %l_891 = alloca i32, align 4
  %l_904 = alloca [4 x i32**], align 16
  %l_905 = alloca i64, align 8
  %i20 = alloca i32, align 4
  %j21 = alloca i32, align 4
  %k22 = alloca i32, align 4
  %l_877 = alloca i8*, align 8
  %l_881 = alloca [10 x [1 x i32]], align 16
  %i23 = alloca i32, align 4
  %j24 = alloca i32, align 4
  %l_884 = alloca i32, align 4
  %l_903 = alloca i8*, align 8
  %l_907 = alloca i8, align 1
  %l_920 = alloca i32, align 4
  %l_948 = alloca i32, align 4
  %l_974 = alloca %union.U0*, align 8
  %l_911 = alloca i8*, align 8
  %l_916 = alloca i32**, align 8
  %l_917 = alloca i32, align 4
  %l_941 = alloca [7 x i32], align 16
  %l_947 = alloca i32*, align 8
  %l_967 = alloca i32, align 4
  %l_973 = alloca i32, align 4
  %l_981 = alloca [5 x [8 x [6 x %union.U0*]]], align 16
  %l_980 = alloca %union.U0**, align 8
  %i25 = alloca i32, align 4
  %j26 = alloca i32, align 4
  %k27 = alloca i32, align 4
  %5 = alloca %union.U0, align 8
  %l_994 = alloca i16*, align 8
  %l_987 = alloca i32, align 4
  %l_993 = alloca i64, align 8
  %l_1005 = alloca i16*****, align 8
  %l_1006 = alloca i32, align 4
  %l_1007 = alloca i32, align 4
  %l_1022 = alloca i32, align 4
  %l_1044 = alloca i8*, align 8
  %l_1058 = alloca i32, align 4
  %l_1088 = alloca i32, align 4
  %l_1090 = alloca i32, align 4
  %l_1091 = alloca i32, align 4
  %l_1104 = alloca i16*, align 8
  %l_1008 = alloca i32, align 4
  %l_1014 = alloca i32, align 4
  %l_1020 = alloca [4 x [9 x i32]], align 16
  %l_1087 = alloca i32, align 4
  %l_1103 = alloca i16*, align 8
  %i30 = alloca i32, align 4
  %j31 = alloca i32, align 4
  %l_1047 = alloca i32*, align 8
  %l_1059 = alloca i32, align 4
  %i32 = alloca i32, align 4
  %l_1018 = alloca i8, align 1
  %l_1019 = alloca [5 x i32], align 16
  %i33 = alloca i32, align 4
  %l_1057 = alloca [1 x [9 x [10 x i8]]], align 16
  %l_1060 = alloca i32, align 4
  %l_1084 = alloca i8, align 1
  %i34 = alloca i32, align 4
  %j35 = alloca i32, align 4
  %k36 = alloca i32, align 4
  %l_1102 = alloca i32, align 4
  %l_1105 = alloca [10 x [1 x i32*]], align 16
  %i41 = alloca i32, align 4
  %j42 = alloca i32, align 4
  store i32 %p_64, i32* %2, align 4, !tbaa !1
  %6 = bitcast i8** %l_71 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* null, i8** %l_71, align 8, !tbaa !5
  %7 = bitcast i16**** %l_74 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16*** getelementptr inbounds ([4 x [8 x i16**]], [4 x [8 x i16**]]* @g_72, i32 0, i64 2, i64 5), i16**** %l_74, align 8, !tbaa !5
  %8 = bitcast [5 x i16**]* %l_76 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %8) #1
  %9 = bitcast [5 x i16**]* %l_76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([5 x i16**]* @func_63.l_76 to i8*), i64 40, i32 16, i1 false)
  %10 = bitcast i16**** %l_75 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = getelementptr inbounds [5 x i16**], [5 x i16**]* %l_76, i32 0, i64 0
  store i16*** %11, i16**** %l_75, align 8, !tbaa !5
  %12 = bitcast i32* %l_86 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -1, i32* %l_86, align 4, !tbaa !1
  %13 = bitcast i32** %l_87 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32* %l_86, i32** %l_87, align 8, !tbaa !5
  %14 = bitcast [3 x i32]* %l_91 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %14) #1
  %15 = bitcast i16** %l_92 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i16* null, i16** %l_92, align 8, !tbaa !5
  %16 = bitcast i16** %l_93 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i16* @g_94, i16** %l_93, align 8, !tbaa !5
  %17 = bitcast i8** %l_95 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i8* @g_9, i8** %l_95, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_717) #1
  store i8 -116, i8* %l_717, align 1, !tbaa !9
  %18 = bitcast i16* %l_726 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %18) #1
  store i16 -2, i16* %l_726, align 2, !tbaa !10
  %19 = bitcast i16* %l_806 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %19) #1
  store i16 3, i16* %l_806, align 2, !tbaa !10
  %20 = bitcast i32* %l_855 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 8, i32* %l_855, align 4, !tbaa !1
  %21 = bitcast [3 x i32]* %l_889 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %21) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_949) #1
  store i8 -109, i8* %l_949, align 1, !tbaa !9
  %22 = bitcast i64* %l_972 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i64 -8, i64* %l_972, align 8, !tbaa !7
  %23 = bitcast [7 x i8]* %l_986 to i8*
  call void @llvm.lifetime.start(i64 7, i8* %23) #1
  %24 = bitcast [7 x i8]* %l_986 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @func_63.l_986, i32 0, i32 0), i64 7, i32 1, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_992) #1
  store i8 -73, i8* %l_992, align 1, !tbaa !9
  %25 = bitcast [9 x %union.U0*]* %l_1011 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %25) #1
  %26 = bitcast [9 x %union.U0*]* %l_1011 to i8*
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 72, i32 16, i1 false)
  %27 = bitcast i8** %l_1041 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i8* null, i8** %l_1041, align 8, !tbaa !5
  %28 = bitcast [10 x i16*****]* %l_1056 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %28) #1
  %29 = bitcast [10 x i16*****]* %l_1056 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* bitcast ([10 x i16*****]* @func_63.l_1056 to i8*), i64 80, i32 16, i1 false)
  %30 = bitcast i32*** %l_1071 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i32** @g_1069, i32*** %l_1071, align 8, !tbaa !5
  %31 = bitcast i64* %l_1106 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i64 6457364394306523728, i64* %l_1106, align 8, !tbaa !7
  %32 = bitcast i16** %l_1110 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  store i16* @g_23, i16** %l_1110, align 8, !tbaa !5
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %34

; <label>:34                                      ; preds = %41, %0
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %44

; <label>:37                                      ; preds = %34
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %l_91, i32 0, i64 %39
  store i32 -1, i32* %40, align 4, !tbaa !1
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
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %55

; <label>:48                                      ; preds = %45
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %l_889, i32 0, i64 %50
  store i32 -1, i32* %51, align 4, !tbaa !1
  br label %52

; <label>:52                                      ; preds = %48
  %53 = load i32, i32* %i, align 4, !tbaa !1
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %i, align 4, !tbaa !1
  br label %45

; <label>:55                                      ; preds = %45
  %56 = load i8*, i8** %l_71, align 8, !tbaa !5
  %57 = load i16**, i16*** getelementptr inbounds ([4 x [8 x i16**]], [4 x [8 x i16**]]* @g_72, i32 0, i64 1, i64 5), align 8, !tbaa !5
  %58 = load i16***, i16**** %l_74, align 8, !tbaa !5
  store i16** %57, i16*** %58, align 8, !tbaa !5
  %59 = load i16***, i16**** %l_75, align 8, !tbaa !5
  store i16** %57, i16*** %59, align 8, !tbaa !5
  %60 = icmp ne i16** %57, @g_73
  br i1 %60, label %110, label %61

; <label>:61                                      ; preds = %55
  %62 = bitcast %union.U0* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* bitcast (%union.U0* @g_85 to i8*), i64 8, i32 8, i1 true), !tbaa.struct !12
  %63 = load i32, i32* %l_86, align 4, !tbaa !1
  %64 = load i32, i32* %l_86, align 4, !tbaa !1
  %65 = load i32*, i32** %l_87, align 8, !tbaa !5
  store i32 %64, i32* %65, align 4, !tbaa !1
  %66 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext -14403, i16 signext 32270)
  %67 = sext i16 %66 to i32
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %2, align 4, !tbaa !1
  %70 = icmp sge i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = icmp ne i64 %72, -105545399662652419
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %l_91, i32 0, i64 2
  %76 = load i32, i32* %75, align 4, !tbaa !1
  %77 = or i32 %74, %76
  %78 = load i16*, i16** %l_93, align 8, !tbaa !5
  %79 = load i16, i16* %78, align 2, !tbaa !10
  %80 = zext i16 %79 to i32
  %81 = and i32 %80, %77
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %78, align 2, !tbaa !10
  %83 = zext i16 %82 to i32
  %84 = load i32, i32* %2, align 4, !tbaa !1
  %85 = xor i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = icmp uge i64 %86, -1
  %88 = zext i1 %87 to i32
  %89 = trunc i32 %88 to i16
  %90 = load i32, i32* %2, align 4, !tbaa !1
  %91 = trunc i32 %90 to i16
  %92 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %89, i16 signext %91)
  %93 = sext i16 %92 to i32
  %94 = call i32 @safe_mod_func_int32_t_s_s(i32 %93, i32 -680130715)
  %95 = trunc i32 %94 to i16
  %96 = load i32, i32* %2, align 4, !tbaa !1
  %97 = trunc i32 %96 to i16
  %98 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %95, i16 signext %97)
  %99 = trunc i16 %98 to i8
  %100 = load i8*, i8** %l_95, align 8, !tbaa !5
  store i8 %99, i8* %100, align 1, !tbaa !9
  %101 = sext i8 %99 to i32
  %102 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 1), align 4, !tbaa !1
  %103 = xor i32 %101, %102
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %l_91, i32 0, i64 1
  %105 = load i32, i32* %104, align 4, !tbaa !1
  %106 = trunc i32 %105 to i8
  %107 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext 1, i8 signext %106)
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br label %110

; <label>:110                                     ; preds = %61, %55
  %111 = phi i1 [ true, %55 ], [ %109, %61 ]
  %112 = zext i1 %111 to i32
  %113 = trunc i32 %112 to i16
  %114 = call i32* @func_66(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), i8* @g_40, i8* %56, i16 zeroext %113)
  %115 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  store i32* %114, i32** %115, align 8, !tbaa !5
  %116 = load i32*, i32** %l_87, align 8, !tbaa !5
  %117 = load i32, i32* %116, align 4, !tbaa !1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %1888

; <label>:119                                     ; preds = %110
  %120 = bitcast [7 x i32**]* %l_709 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %120) #1
  %121 = getelementptr inbounds [7 x i32**], [7 x i32**]* %l_709, i64 0, i64 0
  store i32** %l_87, i32*** %121, !tbaa !5
  %122 = getelementptr inbounds i32**, i32*** %121, i64 1
  store i32** %l_87, i32*** %122, !tbaa !5
  %123 = getelementptr inbounds i32**, i32*** %122, i64 1
  store i32** @g_18, i32*** %123, !tbaa !5
  %124 = getelementptr inbounds i32**, i32*** %123, i64 1
  store i32** %l_87, i32*** %124, !tbaa !5
  %125 = getelementptr inbounds i32**, i32*** %124, i64 1
  store i32** %l_87, i32*** %125, !tbaa !5
  %126 = getelementptr inbounds i32**, i32*** %125, i64 1
  store i32** @g_18, i32*** %126, !tbaa !5
  %127 = getelementptr inbounds i32**, i32*** %126, i64 1
  store i32** %l_87, i32*** %127, !tbaa !5
  %128 = bitcast [9 x [4 x i64*]]* %l_716 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %128) #1
  %129 = bitcast [5 x i32*]* %l_727 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %129) #1
  %130 = bitcast i64* %l_754 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #1
  store i64 1, i64* %l_754, align 8, !tbaa !7
  %131 = bitcast i16** %l_797 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  store i16* @g_23, i16** %l_797, align 8, !tbaa !5
  %132 = bitcast i16***** %l_845 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  store i16**** %l_74, i16***** %l_845, align 8, !tbaa !5
  %133 = bitcast i64*** %l_880 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #1
  store i64** @g_205, i64*** %l_880, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_890) #1
  store i8 3, i8* %l_890, align 1, !tbaa !9
  %134 = bitcast i32** %l_915 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  store i32* null, i32** %l_915, align 8, !tbaa !5
  %135 = bitcast i32*** %l_1070 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #1
  store i32** @g_1069, i32*** %l_1070, align 8, !tbaa !5
  %136 = bitcast i16* %l_1089 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %136) #1
  store i16 28236, i16* %l_1089, align 2, !tbaa !10
  %137 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #1
  %138 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %138) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %139

; <label>:139                                     ; preds = %157, %119
  %140 = load i32, i32* %i1, align 4, !tbaa !1
  %141 = icmp slt i32 %140, 9
  br i1 %141, label %142, label %160

; <label>:142                                     ; preds = %139
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %143

; <label>:143                                     ; preds = %153, %142
  %144 = load i32, i32* %j, align 4, !tbaa !1
  %145 = icmp slt i32 %144, 4
  br i1 %145, label %146, label %156

; <label>:146                                     ; preds = %143
  %147 = load i32, i32* %j, align 4, !tbaa !1
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* %i1, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [9 x [4 x i64*]], [9 x [4 x i64*]]* %l_716, i32 0, i64 %150
  %152 = getelementptr inbounds [4 x i64*], [4 x i64*]* %151, i32 0, i64 %148
  store i64* null, i64** %152, align 8, !tbaa !5
  br label %153

; <label>:153                                     ; preds = %146
  %154 = load i32, i32* %j, align 4, !tbaa !1
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %j, align 4, !tbaa !1
  br label %143

; <label>:156                                     ; preds = %143
  br label %157

; <label>:157                                     ; preds = %156
  %158 = load i32, i32* %i1, align 4, !tbaa !1
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %i1, align 4, !tbaa !1
  br label %139

; <label>:160                                     ; preds = %139
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %161

; <label>:161                                     ; preds = %168, %160
  %162 = load i32, i32* %i1, align 4, !tbaa !1
  %163 = icmp slt i32 %162, 5
  br i1 %163, label %164, label %171

; <label>:164                                     ; preds = %161
  %165 = load i32, i32* %i1, align 4, !tbaa !1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [5 x i32*], [5 x i32*]* %l_727, i32 0, i64 %166
  store i32* @g_530, i32** %167, align 8, !tbaa !5
  br label %168

; <label>:168                                     ; preds = %164
  %169 = load i32, i32* %i1, align 4, !tbaa !1
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %i1, align 4, !tbaa !1
  br label %161

; <label>:171                                     ; preds = %161
  %172 = load i8*, i8** %l_95, align 8, !tbaa !5
  %173 = load i8, i8* %172, align 1, !tbaa !9
  %174 = sext i8 %173 to i64
  %175 = or i64 %174, 1
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %172, align 1, !tbaa !9
  %177 = sext i8 %176 to i32
  store i32* null, i32** %l_87, align 8, !tbaa !5
  %178 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  %179 = load i32*, i32** %178, align 8, !tbaa !5
  %180 = icmp eq i32* null, %179
  br i1 %180, label %181, label %185

; <label>:181                                     ; preds = %171
  %182 = load volatile i8, i8* @g_645, align 1, !tbaa !9
  %183 = zext i8 %182 to i32
  %184 = icmp ne i32 %183, 0
  br label %185

; <label>:185                                     ; preds = %181, %171
  %186 = phi i1 [ false, %171 ], [ %184, %181 ]
  %187 = zext i1 %186 to i32
  %188 = icmp ne i32 %177, %187
  %189 = zext i1 %188 to i32
  %190 = trunc i32 %189 to i16
  %191 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %190, i16 zeroext -9)
  %192 = zext i16 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %249, label %194

; <label>:194                                     ; preds = %185
  %195 = load i32*, i32** @g_661, align 8, !tbaa !5
  %196 = load i32, i32* %195, align 4, !tbaa !1
  %197 = load i32, i32* %2, align 4, !tbaa !1
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %l_717, align 1, !tbaa !9
  %199 = sext i8 %198 to i64
  %200 = load i32, i32* %2, align 4, !tbaa !1
  %201 = sext i32 %200 to i64
  %202 = load i32, i32* %l_86, align 4, !tbaa !1
  %203 = sext i32 %202 to i64
  %204 = call i64 @safe_div_func_uint64_t_u_u(i64 %201, i64 %203)
  %205 = trunc i64 %204 to i16
  %206 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext -1214, i16 zeroext %205)
  %207 = trunc i16 %206 to i8
  %208 = load i32, i32* %2, align 4, !tbaa !1
  %209 = trunc i32 %208 to i8
  %210 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %207, i8 zeroext %209)
  %211 = zext i8 %210 to i64
  %212 = call i64 @safe_div_func_int64_t_s_s(i64 %211, i64 -2)
  %213 = call i64 @safe_mod_func_uint64_t_u_u(i64 %199, i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %218, label %215

; <label>:215                                     ; preds = %194
  %216 = load i32, i32* getelementptr inbounds ([3 x [9 x i32]], [3 x [9 x i32]]* @g_653, i32 0, i64 2, i64 3), align 4, !tbaa !1
  %217 = icmp ne i32 %216, 0
  br label %218

; <label>:218                                     ; preds = %215, %194
  %219 = phi i1 [ true, %194 ], [ %217, %215 ]
  %220 = zext i1 %219 to i32
  %221 = sext i32 %220 to i64
  %222 = icmp ne i64 %221, 4294967293
  %223 = zext i1 %222 to i32
  %224 = sext i32 %223 to i64
  %225 = load i64, i64* getelementptr inbounds ([9 x [7 x [4 x i64]]], [9 x [7 x [4 x i64]]]* @g_241, i32 0, i64 6, i64 3, i64 1), align 8, !tbaa !7
  %226 = icmp sge i64 %224, %225
  %227 = zext i1 %226 to i32
  %228 = load i8*, i8** %l_95, align 8, !tbaa !5
  %229 = load i8, i8* %228, align 1, !tbaa !9
  %230 = sext i8 %229 to i64
  %231 = xor i64 %230, -4
  %232 = trunc i64 %231 to i8
  store i8 %232, i8* %228, align 1, !tbaa !9
  %233 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %232, i8 signext 54)
  %234 = sext i8 %233 to i32
  %235 = icmp sgt i32 %196, %234
  %236 = zext i1 %235 to i32
  %237 = trunc i32 %236 to i16
  %238 = load i32, i32* %2, align 4, !tbaa !1
  %239 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %237, i32 %238)
  %240 = sext i16 %239 to i32
  %241 = load i16, i16* @g_94, align 2, !tbaa !10
  %242 = zext i16 %241 to i32
  %243 = and i32 %240, %242
  %244 = load i32, i32* getelementptr inbounds ([3 x [9 x i32]], [3 x [9 x i32]]* @g_653, i32 0, i64 1, i64 3), align 4, !tbaa !1
  %245 = icmp ugt i32 %243, %244
  %246 = zext i1 %245 to i32
  %247 = load i32, i32* %2, align 4, !tbaa !1
  %248 = icmp sge i32 %246, %247
  br label %249

; <label>:249                                     ; preds = %218, %185
  %250 = phi i1 [ true, %185 ], [ %248, %218 ]
  %251 = zext i1 %250 to i32
  %252 = load i32*, i32** @g_661, align 8, !tbaa !5
  %253 = load i32, i32* %252, align 4, !tbaa !1
  %254 = call i32 @safe_div_func_uint32_t_u_u(i32 %251, i32 %253)
  %255 = zext i32 %254 to i64
  %256 = load i32, i32* %2, align 4, !tbaa !1
  %257 = sext i32 %256 to i64
  %258 = call i64 @safe_div_func_uint64_t_u_u(i64 %255, i64 %257)
  %259 = getelementptr inbounds [5 x i32*], [5 x i32*]* %l_727, i32 0, i64 2
  %260 = load i32*, i32** %259, align 8, !tbaa !5
  %261 = icmp ne i32* %260, getelementptr inbounds ([3 x [9 x i32]], [3 x [9 x i32]]* @g_653, i32 0, i64 1, i64 8)
  %262 = zext i1 %261 to i32
  %263 = load i32, i32* %l_86, align 4, !tbaa !1
  %264 = call i32 @safe_add_func_uint32_t_u_u(i32 %262, i32 %263)
  %265 = call i32 @safe_sub_func_uint32_t_u_u(i32 %264, i32 6)
  %266 = trunc i32 %265 to i8
  %267 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %266, i8 zeroext 5)
  %268 = zext i8 %267 to i32
  %269 = load i32, i32* getelementptr inbounds ([3 x [9 x i32]], [3 x [9 x i32]]* @g_653, i32 0, i64 1, i64 3), align 4, !tbaa !1
  %270 = or i32 %268, %269
  %271 = trunc i32 %270 to i8
  %272 = load i32, i32* %2, align 4, !tbaa !1
  %273 = trunc i32 %272 to i8
  %274 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %271, i8 signext %273)
  %275 = icmp ne i8 %274, 0
  br i1 %275, label %276, label %373

; <label>:276                                     ; preds = %249
  %277 = bitcast i32** %l_729 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %277) #1
  store i32* %l_86, i32** %l_729, align 8, !tbaa !5
  %278 = bitcast i16*** %l_739 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %278) #1
  store i16** @g_73, i16*** %l_739, align 8, !tbaa !5
  %279 = bitcast [2 x [4 x [7 x i32]]]* %l_740 to i8*
  call void @llvm.lifetime.start(i64 224, i8* %279) #1
  %280 = bitcast [2 x [4 x [7 x i32]]]* %l_740 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %280, i8* bitcast ([2 x [4 x [7 x i32]]]* @func_63.l_740 to i8*), i64 224, i32 16, i1 false)
  %281 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %281) #1
  %282 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %282) #1
  %283 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %283) #1
  %284 = load i32, i32* %2, align 4, !tbaa !1
  %285 = sext i32 %284 to i64
  %286 = load i64*, i64** @g_472, align 8, !tbaa !5
  store i64 %285, i64* %286, align 8, !tbaa !7
  %287 = call i64 @safe_unary_minus_func_int64_t_s(i64 %285)
  store i32* null, i32** %l_729, align 8, !tbaa !5
  store i32* null, i32** %l_87, align 8, !tbaa !5
  %288 = load i32, i32* %2, align 4, !tbaa !1
  %289 = load i64*, i64** @g_472, align 8, !tbaa !5
  %290 = load i64, i64* %289, align 8, !tbaa !7
  %291 = and i64 %290, 8
  store i64 %291, i64* %289, align 8, !tbaa !7
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %332

; <label>:293                                     ; preds = %276
  %294 = load i32, i32* %2, align 4, !tbaa !1
  %295 = sext i32 %294 to i64
  %296 = load i64, i64* @g_132, align 8, !tbaa !7
  %297 = load i16**, i16*** %l_739, align 8, !tbaa !5
  %298 = load i16**, i16*** %l_739, align 8, !tbaa !5
  %299 = icmp ne i16** %297, %298
  %300 = zext i1 %299 to i32
  %301 = trunc i32 %300 to i16
  %302 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %301, i32 3)
  %303 = zext i16 %302 to i32
  %304 = load i32, i32* %2, align 4, !tbaa !1
  %305 = icmp ne i32 %303, %304
  %306 = zext i1 %305 to i32
  %307 = sext i32 %306 to i64
  %308 = icmp eq i64 %307, 1349319189
  br i1 %308, label %312, label %309

; <label>:309                                     ; preds = %293
  %310 = load i32, i32* %2, align 4, !tbaa !1
  %311 = icmp ne i32 %310, 0
  br label %312

; <label>:312                                     ; preds = %309, %293
  %313 = phi i1 [ true, %293 ], [ %311, %309 ]
  %314 = zext i1 %313 to i32
  %315 = load i32, i32* %2, align 4, !tbaa !1
  %316 = icmp slt i32 %314, %315
  %317 = zext i1 %316 to i32
  %318 = xor i64 %295, 64
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %323, label %320

; <label>:320                                     ; preds = %312
  %321 = load i32, i32* %2, align 4, !tbaa !1
  %322 = icmp ne i32 %321, 0
  br label %323

; <label>:323                                     ; preds = %320, %312
  %324 = phi i1 [ true, %312 ], [ %322, %320 ]
  %325 = zext i1 %324 to i32
  %326 = sext i32 %325 to i64
  %327 = and i64 6, %326
  %328 = load i32, i32* %2, align 4, !tbaa !1
  %329 = sext i32 %328 to i64
  %330 = and i64 %327, %329
  %331 = icmp ne i64 %330, 0
  br label %332

; <label>:332                                     ; preds = %323, %276
  %333 = phi i1 [ false, %276 ], [ %331, %323 ]
  %334 = zext i1 %333 to i32
  %335 = trunc i32 %334 to i8
  %336 = load i32, i32* @g_530, align 4, !tbaa !1
  %337 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %335, i32 %336)
  %338 = zext i8 %337 to i32
  %339 = and i32 %288, %338
  %340 = trunc i32 %339 to i16
  %341 = load i32, i32* %2, align 4, !tbaa !1
  %342 = trunc i32 %341 to i16
  %343 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %340, i16 signext %342)
  %344 = sext i16 %343 to i32
  %345 = getelementptr inbounds [2 x [4 x [7 x i32]]], [2 x [4 x [7 x i32]]]* %l_740, i32 0, i64 0
  %346 = getelementptr inbounds [4 x [7 x i32]], [4 x [7 x i32]]* %345, i32 0, i64 2
  %347 = getelementptr inbounds [7 x i32], [7 x i32]* %346, i32 0, i64 0
  %348 = load i32, i32* %347, align 4, !tbaa !1
  %349 = xor i32 %348, %344
  store i32 %349, i32* %347, align 4, !tbaa !1
  %350 = sext i32 %349 to i64
  %351 = icmp eq i64 %350, -6307696744110426204
  %352 = zext i1 %351 to i32
  %353 = load i16*, i16** @g_73, align 8, !tbaa !5
  %354 = load i16, i16* %353, align 2, !tbaa !10
  %355 = sext i16 %354 to i32
  %356 = icmp sge i32 %352, %355
  %357 = zext i1 %356 to i32
  %358 = trunc i32 %357 to i16
  %359 = load i32, i32* %2, align 4, !tbaa !1
  %360 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %358, i32 %359)
  %361 = sext i16 %360 to i32
  %362 = load i32, i32* %2, align 4, !tbaa !1
  %363 = icmp ne i32 %361, %362
  %364 = zext i1 %363 to i32
  %365 = load i32, i32* %l_86, align 4, !tbaa !1
  %366 = and i32 %365, %364
  store i32 %366, i32* %l_86, align 4, !tbaa !1
  %367 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %367) #1
  %368 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %368) #1
  %369 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %369) #1
  %370 = bitcast [2 x [4 x [7 x i32]]]* %l_740 to i8*
  call void @llvm.lifetime.end(i64 224, i8* %370) #1
  %371 = bitcast i16*** %l_739 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %371) #1
  %372 = bitcast i32** %l_729 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %372) #1
  br label %692

; <label>:373                                     ; preds = %249
  %374 = bitcast i32* %l_759 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %374) #1
  store i32 -483940979, i32* %l_759, align 4, !tbaa !1
  %375 = bitcast i32* %l_760 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %375) #1
  store i32 -1350955856, i32* %l_760, align 4, !tbaa !1
  %376 = bitcast i32** %l_785 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %376) #1
  store i32* %l_760, i32** %l_785, align 8, !tbaa !5
  %377 = bitcast i16** %l_796 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %377) #1
  store i16* @g_23, i16** %l_796, align 8, !tbaa !5
  %378 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  store i32* %l_86, i32** %378, align 8, !tbaa !5
  store i64 0, i64* @g_119, align 8, !tbaa !7
  br label %379

; <label>:379                                     ; preds = %449, %373
  %380 = load i64, i64* @g_119, align 8, !tbaa !7
  %381 = icmp uge i64 %380, 28
  br i1 %381, label %382, label %452

; <label>:382                                     ; preds = %379
  %383 = bitcast i64* %l_749 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %383) #1
  store i64 -6, i64* %l_749, align 8, !tbaa !7
  store i8 0, i8* @g_245, align 1, !tbaa !9
  br label %384

; <label>:384                                     ; preds = %437, %382
  %385 = load i8, i8* @g_245, align 1, !tbaa !9
  %386 = sext i8 %385 to i32
  %387 = icmp sgt i32 %386, 1
  br i1 %387, label %388, label %440

; <label>:388                                     ; preds = %384
  %389 = bitcast i32** %l_745 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %389) #1
  store i32* %l_86, i32** %l_745, align 8, !tbaa !5
  %390 = load i32*, i32** %l_745, align 8, !tbaa !5
  %391 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  store i32* %390, i32** %391, align 8, !tbaa !5
  store i8 0, i8* @g_328, align 1, !tbaa !9
  br label %392

; <label>:392                                     ; preds = %416, %388
  %393 = load i8, i8* @g_328, align 1, !tbaa !9
  %394 = sext i8 %393 to i32
  %395 = icmp sle i32 %394, 3
  br i1 %395, label %396, label %421

; <label>:396                                     ; preds = %392
  %397 = bitcast [9 x [2 x i16]]* %l_746 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %397) #1
  %398 = bitcast [9 x [2 x i16]]* %l_746 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %398, i8* bitcast ([9 x [2 x i16]]* @func_63.l_746 to i8*), i64 36, i32 16, i1 false)
  %399 = bitcast i32** %l_748 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %399) #1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 4), i32** %l_748, align 8, !tbaa !5
  %400 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %400) #1
  %401 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %401) #1
  %402 = getelementptr inbounds [9 x [2 x i16]], [9 x [2 x i16]]* %l_746, i32 0, i64 1
  %403 = getelementptr inbounds [2 x i16], [2 x i16]* %402, i32 0, i64 1
  %404 = load i16, i16* %403, align 2, !tbaa !10
  %405 = sext i16 %404 to i64
  %406 = load i64*, i64** @g_472, align 8, !tbaa !5
  store i64 %405, i64* %406, align 8, !tbaa !7
  %407 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @func_63.l_747, i32 0, i64 3), align 8, !tbaa !7
  %408 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  %409 = load i32*, i32** %408, align 8, !tbaa !5
  %410 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  store i32* %409, i32** %410, align 8, !tbaa !5
  %411 = load i32*, i32** %l_748, align 8, !tbaa !5
  store i32* %411, i32** %l_745, align 8, !tbaa !5
  %412 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %412) #1
  %413 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %413) #1
  %414 = bitcast i32** %l_748 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %414) #1
  %415 = bitcast [9 x [2 x i16]]* %l_746 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %415) #1
  br label %416

; <label>:416                                     ; preds = %396
  %417 = load i8, i8* @g_328, align 1, !tbaa !9
  %418 = sext i8 %417 to i32
  %419 = add nsw i32 %418, 1
  %420 = trunc i32 %419 to i8
  store i8 %420, i8* @g_328, align 1, !tbaa !9
  br label %392

; <label>:421                                     ; preds = %392
  store i8 0, i8* @g_9, align 1, !tbaa !9
  br label %422

; <label>:422                                     ; preds = %430, %421
  %423 = load i8, i8* @g_9, align 1, !tbaa !9
  %424 = sext i8 %423 to i32
  %425 = icmp slt i32 %424, 5
  br i1 %425, label %426, label %435

; <label>:426                                     ; preds = %422
  %427 = load i8, i8* @g_9, align 1, !tbaa !9
  %428 = sext i8 %427 to i64
  %429 = getelementptr inbounds [5 x i32*], [5 x i32*]* %l_727, i32 0, i64 %428
  store i32* null, i32** %429, align 8, !tbaa !5
  br label %430

; <label>:430                                     ; preds = %426
  %431 = load i8, i8* @g_9, align 1, !tbaa !9
  %432 = sext i8 %431 to i32
  %433 = add nsw i32 %432, 1
  %434 = trunc i32 %433 to i8
  store i8 %434, i8* @g_9, align 1, !tbaa !9
  br label %422

; <label>:435                                     ; preds = %422
  %436 = bitcast i32** %l_745 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %436) #1
  br label %437

; <label>:437                                     ; preds = %435
  %438 = load i8, i8* @g_245, align 1, !tbaa !9
  %439 = add i8 %438, 1
  store i8 %439, i8* @g_245, align 1, !tbaa !9
  br label %384

; <label>:440                                     ; preds = %384
  %441 = load i32*, i32** @g_661, align 8, !tbaa !5
  store i32 1, i32* %441, align 4, !tbaa !1
  %442 = load i64, i64* %l_749, align 8, !tbaa !7
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %445

; <label>:444                                     ; preds = %440
  store i32 17, i32* %4
  br label %446

; <label>:445                                     ; preds = %440
  store i32 0, i32* %4
  br label %446

; <label>:446                                     ; preds = %445, %444
  %447 = bitcast i64* %l_749 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %447) #1
  %cleanup.dest = load i32, i32* %4
  switch i32 %cleanup.dest, label %1946 [
    i32 0, label %448
    i32 17, label %452
  ]

; <label>:448                                     ; preds = %446
  br label %449

; <label>:449                                     ; preds = %448
  %450 = load i64, i64* @g_119, align 8, !tbaa !7
  %451 = add i64 %450, 1
  store i64 %451, i64* @g_119, align 8, !tbaa !7
  br label %379

; <label>:452                                     ; preds = %446, %379
  store i32 -2014067604, i32* %l_86, align 4, !tbaa !1
  %453 = load i64, i64* %l_754, align 8, !tbaa !7
  %454 = load i32, i32* %l_759, align 4, !tbaa !1
  %455 = sext i32 %454 to i64
  %456 = load i64*, i64** @g_472, align 8, !tbaa !5
  %457 = load i64, i64* %456, align 8, !tbaa !7
  %458 = call i64 @safe_add_func_int64_t_s_s(i64 %455, i64 %457)
  %459 = call i64 @safe_div_func_int64_t_s_s(i64 %458, i64 -1337557197265850891)
  %460 = icmp slt i64 %453, %459
  %461 = zext i1 %460 to i32
  %462 = sext i32 %461 to i64
  %463 = call i64 @safe_sub_func_uint64_t_u_u(i64 -2014067604, i64 %462)
  %464 = trunc i64 %463 to i8
  %465 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %464, i32 6)
  %466 = icmp ne i8 %465, 0
  br i1 %466, label %467, label %479

; <label>:467                                     ; preds = %452
  %468 = bitcast [5 x [3 x i8]]* %l_761 to i8*
  call void @llvm.lifetime.start(i64 15, i8* %468) #1
  %469 = bitcast [5 x [3 x i8]]* %l_761 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %469, i8* getelementptr inbounds ([5 x [3 x i8]], [5 x [3 x i8]]* @func_63.l_761, i32 0, i32 0, i32 0), i64 15, i32 1, i1 false)
  %470 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %470) #1
  %471 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %471) #1
  %472 = getelementptr inbounds [5 x [3 x i8]], [5 x [3 x i8]]* %l_761, i32 0, i64 1
  %473 = getelementptr inbounds [3 x i8], [3 x i8]* %472, i32 0, i64 0
  %474 = load i8, i8* %473, align 1, !tbaa !9
  %475 = add i8 %474, 1
  store i8 %475, i8* %473, align 1, !tbaa !9
  %476 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %476) #1
  %477 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %477) #1
  %478 = bitcast [5 x [3 x i8]]* %l_761 to i8*
  call void @llvm.lifetime.end(i64 15, i8* %478) #1
  br label %619

; <label>:479                                     ; preds = %452
  %480 = bitcast i32* %l_782 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %480) #1
  store i32 1761944087, i32* %l_782, align 4, !tbaa !1
  store i8 3, i8* @g_245, align 1, !tbaa !9
  br label %481

; <label>:481                                     ; preds = %612, %479
  %482 = load i8, i8* @g_245, align 1, !tbaa !9
  %483 = sext i8 %482 to i32
  %484 = icmp sge i32 %483, 0
  br i1 %484, label %485, label %617

; <label>:485                                     ; preds = %481
  %486 = bitcast [8 x [9 x [2 x i16]]]* %l_774 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %486) #1
  %487 = bitcast [8 x [9 x [2 x i16]]]* %l_774 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %487, i8* bitcast ([8 x [9 x [2 x i16]]]* @func_63.l_774 to i8*), i64 288, i32 16, i1 false)
  %488 = bitcast i32* %l_783 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %488) #1
  store i32 -406824634, i32* %l_783, align 4, !tbaa !1
  %489 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %489) #1
  %490 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %490) #1
  %491 = bitcast i32* %k10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %491) #1
  %492 = load i8, i8* @g_245, align 1, !tbaa !9
  %493 = sext i8 %492 to i64
  %494 = getelementptr inbounds [4 x i64], [4 x i64]* @g_479, i32 0, i64 %493
  %495 = load i64, i64* %494, align 8, !tbaa !7
  %496 = load i32, i32* @g_530, align 4, !tbaa !1
  %497 = trunc i32 %496 to i8
  %498 = load i32, i32* %l_759, align 4, !tbaa !1
  %499 = xor i32 %498, -1
  %500 = load volatile i32*, i32** @g_625, align 8, !tbaa !5
  %501 = load volatile i32, i32* %500, align 4, !tbaa !1
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %552

; <label>:503                                     ; preds = %485
  %504 = load i32, i32* @g_530, align 4, !tbaa !1
  %505 = trunc i32 %504 to i16
  %506 = load i32, i32* %2, align 4, !tbaa !1
  %507 = trunc i32 %506 to i16
  %508 = load i16*, i16** %l_93, align 8, !tbaa !5
  store i16 %507, i16* %508, align 2, !tbaa !10
  %509 = zext i16 %507 to i32
  %510 = load i32, i32* %2, align 4, !tbaa !1
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %532

; <label>:512                                     ; preds = %503
  %513 = getelementptr inbounds [8 x [9 x [2 x i16]]], [8 x [9 x [2 x i16]]]* %l_774, i32 0, i64 5
  %514 = getelementptr inbounds [9 x [2 x i16]], [9 x [2 x i16]]* %513, i32 0, i64 3
  %515 = getelementptr inbounds [2 x i16], [2 x i16]* %514, i32 0, i64 0
  %516 = load i16, i16* %515, align 2, !tbaa !10
  %517 = add i16 %516, -1
  store i16 %517, i16* %515, align 2, !tbaa !10
  %518 = zext i16 %516 to i64
  %519 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @g_479, i32 0, i64 0), align 8, !tbaa !7
  %520 = trunc i64 %519 to i16
  %521 = load i32, i32* %2, align 4, !tbaa !1
  %522 = trunc i32 %521 to i16
  %523 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %520, i16 zeroext %522)
  %524 = trunc i16 %523 to i8
  %525 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %524, i32 7)
  %526 = icmp ne i8 %525, 0
  %527 = xor i1 %526, true
  %528 = zext i1 %527 to i32
  store i32 %528, i32* %l_782, align 4, !tbaa !1
  %529 = zext i32 %528 to i64
  %530 = call i64 @safe_add_func_uint64_t_u_u(i64 %518, i64 %529)
  %531 = icmp ne i64 %530, 0
  br label %532

; <label>:532                                     ; preds = %512, %503
  %533 = phi i1 [ false, %503 ], [ %531, %512 ]
  %534 = zext i1 %533 to i32
  %535 = icmp slt i32 %509, %534
  %536 = zext i1 %535 to i32
  %537 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %505, i32 %536)
  %538 = zext i16 %537 to i64
  %539 = load i8, i8* @g_245, align 1, !tbaa !9
  %540 = sext i8 %539 to i64
  %541 = getelementptr inbounds [4 x i64], [4 x i64]* @g_479, i32 0, i64 %540
  %542 = load i64, i64* %541, align 8, !tbaa !7
  %543 = icmp sle i64 %538, %542
  %544 = zext i1 %543 to i32
  %545 = sext i32 %544 to i64
  %546 = icmp sgt i64 %545, 110
  br i1 %546, label %547, label %550

; <label>:547                                     ; preds = %532
  %548 = load i32, i32* %2, align 4, !tbaa !1
  %549 = icmp ne i32 %548, 0
  br label %550

; <label>:550                                     ; preds = %547, %532
  %551 = phi i1 [ false, %532 ], [ %549, %547 ]
  br label %552

; <label>:552                                     ; preds = %550, %485
  %553 = phi i1 [ false, %485 ], [ %551, %550 ]
  %554 = zext i1 %553 to i32
  %555 = load i32, i32* %2, align 4, !tbaa !1
  %556 = icmp sle i32 %554, %555
  %557 = zext i1 %556 to i32
  %558 = sext i32 %557 to i64
  %559 = load i8, i8* @g_245, align 1, !tbaa !9
  %560 = sext i8 %559 to i64
  %561 = getelementptr inbounds [4 x i64], [4 x i64]* @g_479, i32 0, i64 %560
  %562 = load i64, i64* %561, align 8, !tbaa !7
  %563 = or i64 %558, %562
  %564 = icmp ule i64 -2052971597943729590, %563
  %565 = zext i1 %564 to i32
  %566 = sext i32 %565 to i64
  %567 = icmp sle i64 %566, 3409997172
  %568 = zext i1 %567 to i32
  %569 = icmp ne i32 %499, 0
  %570 = zext i1 %569 to i32
  %571 = load i16, i16* @g_23, align 2, !tbaa !10
  %572 = sext i16 %571 to i32
  %573 = icmp sge i32 %570, %572
  %574 = zext i1 %573 to i32
  %575 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %497, i32 %574)
  %576 = zext i8 %575 to i16
  %577 = load i16*, i16** @g_73, align 8, !tbaa !5
  %578 = load i16, i16* %577, align 2, !tbaa !10
  %579 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %576, i16 zeroext %578)
  %580 = zext i16 %579 to i32
  %581 = load i32, i32* %l_783, align 4, !tbaa !1
  %582 = and i32 %581, %580
  store i32 %582, i32* %l_783, align 4, !tbaa !1
  store i8 0, i8* @g_253, align 1, !tbaa !9
  br label %583

; <label>:583                                     ; preds = %601, %552
  %584 = load i8, i8* @g_253, align 1, !tbaa !9
  %585 = zext i8 %584 to i32
  %586 = icmp sle i32 %585, 3
  br i1 %586, label %587, label %606

; <label>:587                                     ; preds = %583
  %588 = bitcast i32** %l_784 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %588) #1
  store i32* %l_760, i32** %l_784, align 8, !tbaa !5
  %589 = bitcast i32*** %l_786 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %589) #1
  store i32** %l_784, i32*** %l_786, align 8, !tbaa !5
  store i32* %2, i32** %l_784, align 8, !tbaa !5
  %590 = load i32*, i32** %l_784, align 8, !tbaa !5
  %591 = load i32, i32* %590, align 4, !tbaa !1
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %594

; <label>:593                                     ; preds = %587
  store i32 32, i32* %4
  br label %597

; <label>:594                                     ; preds = %587
  %595 = load i32*, i32** %l_785, align 8, !tbaa !5
  %596 = load i32**, i32*** %l_786, align 8, !tbaa !5
  store i32* %595, i32** %596, align 8, !tbaa !5
  store i16** @g_73, i16*** getelementptr inbounds ([4 x [8 x i16**]], [4 x [8 x i16**]]* @g_72, i32 0, i64 1, i64 1), align 8, !tbaa !5
  store i32 0, i32* %4
  br label %597

; <label>:597                                     ; preds = %594, %593
  %598 = bitcast i32*** %l_786 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %598) #1
  %599 = bitcast i32** %l_784 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %599) #1
  %cleanup.dest.11 = load i32, i32* %4
  switch i32 %cleanup.dest.11, label %1946 [
    i32 0, label %600
    i32 32, label %606
  ]

; <label>:600                                     ; preds = %597
  br label %601

; <label>:601                                     ; preds = %600
  %602 = load i8, i8* @g_253, align 1, !tbaa !9
  %603 = zext i8 %602 to i32
  %604 = add nsw i32 %603, 1
  %605 = trunc i32 %604 to i8
  store i8 %605, i8* @g_253, align 1, !tbaa !9
  br label %583

; <label>:606                                     ; preds = %597, %583
  %607 = bitcast i32* %k10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %607) #1
  %608 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %608) #1
  %609 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %609) #1
  %610 = bitcast i32* %l_783 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %610) #1
  %611 = bitcast [8 x [9 x [2 x i16]]]* %l_774 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %611) #1
  br label %612

; <label>:612                                     ; preds = %606
  %613 = load i8, i8* @g_245, align 1, !tbaa !9
  %614 = sext i8 %613 to i32
  %615 = sub nsw i32 %614, 1
  %616 = trunc i32 %615 to i8
  store i8 %616, i8* @g_245, align 1, !tbaa !9
  br label %481

; <label>:617                                     ; preds = %481
  %618 = bitcast i32* %l_782 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %618) #1
  br label %619

; <label>:619                                     ; preds = %617, %467
  store i8 8, i8* @g_245, align 1, !tbaa !9
  br label %620

; <label>:620                                     ; preds = %680, %619
  %621 = load i8, i8* @g_245, align 1, !tbaa !9
  %622 = sext i8 %621 to i32
  %623 = icmp sgt i32 %622, 22
  br i1 %623, label %624, label %685

; <label>:624                                     ; preds = %620
  %625 = bitcast [2 x [2 x [9 x i64]]]* %l_795 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %625) #1
  %626 = bitcast [2 x [2 x [9 x i64]]]* %l_795 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %626, i8* bitcast ([2 x [2 x [9 x i64]]]* @func_63.l_795 to i8*), i64 288, i32 16, i1 false)
  %627 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %627) #1
  %628 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %628) #1
  %629 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %629) #1
  store i32 0, i32* @g_478, align 4, !tbaa !1
  br label %630

; <label>:630                                     ; preds = %638, %624
  %631 = load i32, i32* @g_478, align 4, !tbaa !1
  %632 = icmp sgt i32 %631, -2
  br i1 %632, label %633, label %641

; <label>:633                                     ; preds = %630
  %634 = load i32, i32* %2, align 4, !tbaa !1
  %635 = load i32*, i32** %l_785, align 8, !tbaa !5
  %636 = load i32, i32* %635, align 4, !tbaa !1
  %637 = xor i32 %636, %634
  store i32 %637, i32* %635, align 4, !tbaa !1
  br label %638

; <label>:638                                     ; preds = %633
  %639 = load i32, i32* @g_478, align 4, !tbaa !1
  %640 = add nsw i32 %639, -1
  store i32 %640, i32* @g_478, align 4, !tbaa !1
  br label %630

; <label>:641                                     ; preds = %630
  store i16 0, i16* @g_23, align 2, !tbaa !10
  br label %642

; <label>:642                                     ; preds = %668, %641
  %643 = load i16, i16* @g_23, align 2, !tbaa !10
  %644 = sext i16 %643 to i32
  %645 = icmp ne i32 %644, -21
  br i1 %645, label %646, label %673

; <label>:646                                     ; preds = %642
  store i8 -21, i8* @g_144, align 1, !tbaa !9
  br label %647

; <label>:647                                     ; preds = %660, %646
  %648 = load i8, i8* @g_144, align 1, !tbaa !9
  %649 = sext i8 %648 to i32
  %650 = icmp sle i32 %649, 14
  br i1 %650, label %651, label %663

; <label>:651                                     ; preds = %647
  %652 = getelementptr inbounds [2 x [2 x [9 x i64]]], [2 x [2 x [9 x i64]]]* %l_795, i32 0, i64 0
  %653 = getelementptr inbounds [2 x [9 x i64]], [2 x [9 x i64]]* %652, i32 0, i64 1
  %654 = getelementptr inbounds [9 x i64], [9 x i64]* %653, i32 0, i64 0
  %655 = load i64, i64* %654, align 8, !tbaa !7
  %656 = icmp ne i64 %655, 0
  br i1 %656, label %657, label %658

; <label>:657                                     ; preds = %651
  br label %663

; <label>:658                                     ; preds = %651
  %659 = load i16*, i16** %l_796, align 8, !tbaa !5
  store i16* %659, i16** %1
  store i32 1, i32* %4
  br label %675
                                                  ; No predecessors!
  %661 = load i8, i8* @g_144, align 1, !tbaa !9
  %662 = add i8 %661, 1
  store i8 %662, i8* @g_144, align 1, !tbaa !9
  br label %647

; <label>:663                                     ; preds = %657, %647
  %664 = load i32, i32* %2, align 4, !tbaa !1
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %667

; <label>:666                                     ; preds = %663
  br label %673

; <label>:667                                     ; preds = %663
  br label %668

; <label>:668                                     ; preds = %667
  %669 = load i16, i16* @g_23, align 2, !tbaa !10
  %670 = sext i16 %669 to i32
  %671 = call i32 @safe_sub_func_int32_t_s_s(i32 %670, i32 7)
  %672 = trunc i32 %671 to i16
  store i16 %672, i16* @g_23, align 2, !tbaa !10
  br label %642

; <label>:673                                     ; preds = %666, %642
  %674 = load i16*, i16** %l_797, align 8, !tbaa !5
  store i16* %674, i16** %1
  store i32 1, i32* %4
  br label %675

; <label>:675                                     ; preds = %673, %658
  %676 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %676) #1
  %677 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %677) #1
  %678 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %678) #1
  %679 = bitcast [2 x [2 x [9 x i64]]]* %l_795 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %679) #1
  br label %686
                                                  ; No predecessors!
  %681 = load i8, i8* @g_245, align 1, !tbaa !9
  %682 = sext i8 %681 to i16
  %683 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %682, i16 signext 4)
  %684 = trunc i16 %683 to i8
  store i8 %684, i8* @g_245, align 1, !tbaa !9
  br label %620

; <label>:685                                     ; preds = %620
  store i32 0, i32* %4
  br label %686

; <label>:686                                     ; preds = %685, %675
  %687 = bitcast i16** %l_796 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %687) #1
  %688 = bitcast i32** %l_785 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %688) #1
  %689 = bitcast i32* %l_760 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %689) #1
  %690 = bitcast i32* %l_759 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %690) #1
  %cleanup.dest.15 = load i32, i32* %4
  switch i32 %cleanup.dest.15, label %1874 [
    i32 0, label %691
  ]

; <label>:691                                     ; preds = %686
  br label %692

; <label>:692                                     ; preds = %691, %332
  %693 = load i32**, i32*** @g_624, align 8, !tbaa !5
  %694 = load volatile i32*, i32** %693, align 8, !tbaa !5
  %695 = load volatile i32, i32* %694, align 4, !tbaa !1
  %696 = call i32 @safe_mod_func_uint32_t_u_u(i32 %695, i32 -1)
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %698, label %1465

; <label>:698                                     ; preds = %692
  %699 = bitcast i16** %l_809 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %699) #1
  store i16* null, i16** %l_809, align 8, !tbaa !5
  %700 = bitcast i16** %l_810 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %700) #1
  store i16* getelementptr inbounds ([10 x [6 x i16]], [10 x [6 x i16]]* @g_577, i32 0, i64 7, i64 4), i16** %l_810, align 8, !tbaa !5
  %701 = bitcast i16** %l_816 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %701) #1
  store i16* getelementptr inbounds ([10 x [8 x i16]], [10 x [8 x i16]]* @g_817, i32 0, i64 2, i64 3), i16** %l_816, align 8, !tbaa !5
  %702 = bitcast i32* %l_818 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %702) #1
  store i32 -510725173, i32* %l_818, align 4, !tbaa !1
  %703 = bitcast i16* %l_906 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %703) #1
  store i16 31372, i16* %l_906, align 2, !tbaa !10
  %704 = bitcast i8** %l_910 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %704) #1
  store i8* @g_40, i8** %l_910, align 8, !tbaa !5
  %705 = bitcast %union.U0** %l_979 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %705) #1
  store %union.U0* getelementptr inbounds ([6 x [6 x [4 x %union.U0]]], [6 x [6 x [4 x %union.U0]]]* @g_581, i32 0, i64 5, i64 4, i64 3), %union.U0** %l_979, align 8, !tbaa !5
  br label %706

; <label>:706                                     ; preds = %934, %698
  %707 = load i32, i32* %2, align 4, !tbaa !1
  %708 = load i32, i32* %2, align 4, !tbaa !1
  %709 = load i32**, i32*** @g_624, align 8, !tbaa !5
  %710 = load volatile i32*, i32** %709, align 8, !tbaa !5
  %711 = load volatile i32, i32* %710, align 4, !tbaa !1
  %712 = icmp ugt i32 %708, %711
  %713 = zext i1 %712 to i32
  %714 = load i32, i32* %l_86, align 4, !tbaa !1
  %715 = and i32 %714, %713
  store i32 %715, i32* %l_86, align 4, !tbaa !1
  %716 = call i32 @safe_mod_func_int32_t_s_s(i32 %707, i32 %715)
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %734, label %718

; <label>:718                                     ; preds = %706
  %719 = load i16*, i16** @g_73, align 8, !tbaa !5
  %720 = load i16, i16* %719, align 2, !tbaa !10
  %721 = load i64***, i64**** @g_469, align 8, !tbaa !5
  %722 = load i64**, i64*** %721, align 8, !tbaa !5
  %723 = icmp ne i64** %722, null
  %724 = zext i1 %723 to i32
  %725 = load i16*, i16** %l_93, align 8, !tbaa !5
  %726 = load i16, i16* %725, align 2, !tbaa !10
  %727 = zext i16 %726 to i32
  %728 = xor i32 %727, %724
  %729 = trunc i32 %728 to i16
  store i16 %729, i16* %725, align 2, !tbaa !10
  %730 = zext i16 %729 to i32
  %731 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %720, i32 %730)
  %732 = sext i16 %731 to i32
  %733 = icmp ne i32 %732, 0
  br label %734

; <label>:734                                     ; preds = %718, %706
  %735 = phi i1 [ true, %706 ], [ %733, %718 ]
  %736 = zext i1 %735 to i32
  %737 = trunc i32 %736 to i16
  store i16 %737, i16* %l_806, align 2, !tbaa !10
  %738 = zext i16 %737 to i32
  %739 = load i32, i32* %2, align 4, !tbaa !1
  %740 = load i16*, i16** %l_810, align 8, !tbaa !5
  %741 = load i16, i16* %740, align 2, !tbaa !10
  %742 = zext i16 %741 to i32
  %743 = xor i32 %742, %739
  %744 = trunc i32 %743 to i16
  store i16 %744, i16* %740, align 2, !tbaa !10
  %745 = load i32, i32* %2, align 4, !tbaa !1
  %746 = sext i32 %745 to i64
  store i64 -2, i64* @g_119, align 8, !tbaa !7
  %747 = or i64 %746, -2
  %748 = load i32, i32* %2, align 4, !tbaa !1
  %749 = sext i32 %748 to i64
  %750 = icmp ule i64 %747, %749
  %751 = zext i1 %750 to i32
  %752 = sext i32 %751 to i64
  %753 = icmp sgt i64 %752, 1
  %754 = zext i1 %753 to i32
  %755 = load i16*, i16** %l_816, align 8, !tbaa !5
  %756 = load i16, i16* %755, align 2, !tbaa !10
  %757 = zext i16 %756 to i32
  %758 = and i32 %757, %754
  %759 = trunc i32 %758 to i16
  store i16 %759, i16* %755, align 2, !tbaa !10
  %760 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %759, i32 10)
  %761 = zext i16 %760 to i32
  %762 = load i8, i8* @g_40, align 1, !tbaa !9
  %763 = zext i8 %762 to i32
  %764 = icmp slt i32 %761, %763
  %765 = zext i1 %764 to i32
  %766 = sext i32 %765 to i64
  %767 = load i32, i32* %2, align 4, !tbaa !1
  %768 = sext i32 %767 to i64
  %769 = call i64 @safe_mod_func_uint64_t_u_u(i64 %766, i64 %768)
  %770 = trunc i64 %769 to i16
  %771 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %744, i16 zeroext %770)
  %772 = zext i16 %771 to i32
  %773 = or i32 %738, %772
  %774 = load i32, i32* %l_818, align 4, !tbaa !1
  %775 = xor i32 %774, %773
  store i32 %775, i32* %l_818, align 4, !tbaa !1
  %776 = load i32, i32* %l_818, align 4, !tbaa !1
  %777 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  %778 = load i32*, i32** %777, align 8, !tbaa !5
  %779 = load i32, i32* %778, align 4, !tbaa !1
  store i32 %779, i32* %2, align 4, !tbaa !1
  %780 = icmp ne i32 %779, 0
  br i1 %780, label %781, label %941

; <label>:781                                     ; preds = %734
  %782 = bitcast [5 x i8]* %l_836 to i8*
  call void @llvm.lifetime.start(i64 5, i8* %782) #1
  %783 = bitcast [5 x i8]* %l_836 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %783, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @func_63.l_836, i32 0, i32 0), i64 5, i32 1, i1 false)
  %784 = bitcast i32** %l_850 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %784) #1
  store i32* %l_86, i32** %l_850, align 8, !tbaa !5
  %785 = bitcast i32* %l_854 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %785) #1
  store i32 0, i32* %l_854, align 4, !tbaa !1
  %786 = bitcast i16** %l_859 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %786) #1
  store i16* @g_23, i16** %l_859, align 8, !tbaa !5
  %787 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %787) #1
  %788 = load i8, i8* @g_9, align 1, !tbaa !9
  %789 = load i32, i32* %2, align 4, !tbaa !1
  %790 = icmp ne i32 %789, 0
  br i1 %790, label %791, label %927

; <label>:791                                     ; preds = %781
  %792 = bitcast i32** %l_819 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %792) #1
  store i32* %l_818, i32** %l_819, align 8, !tbaa !5
  %793 = bitcast i8** %l_829 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %793) #1
  store i8* @g_40, i8** %l_829, align 8, !tbaa !5
  %794 = bitcast [9 x i32]* %l_843 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %794) #1
  %795 = bitcast [9 x i32]* %l_843 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %795, i8* bitcast ([9 x i32]* @func_63.l_843 to i8*), i64 36, i32 16, i1 false)
  %796 = bitcast i16* %l_844 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %796) #1
  store i16 -14803, i16* %l_844, align 2, !tbaa !10
  %797 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %797) #1
  %798 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  %799 = load i32*, i32** %798, align 8, !tbaa !5
  store i32* %799, i32** %l_819, align 8, !tbaa !5
  %800 = load i32, i32* %2, align 4, !tbaa !1
  %801 = icmp ne i32 %800, 0
  %802 = xor i1 %801, true
  %803 = zext i1 %802 to i32
  %804 = load i8*, i8** %l_829, align 8, !tbaa !5
  %805 = load i8, i8* %804, align 1, !tbaa !9
  %806 = zext i8 %805 to i32
  %807 = xor i32 %806, %803
  %808 = trunc i32 %807 to i8
  store i8 %808, i8* %804, align 1, !tbaa !9
  %809 = load i16***, i16**** %l_75, align 8, !tbaa !5
  %810 = load i16**, i16*** %809, align 8, !tbaa !5
  %811 = icmp ne i16** %810, @g_73
  %812 = zext i1 %811 to i32
  %813 = trunc i32 %812 to i8
  %814 = getelementptr inbounds [5 x i8], [5 x i8]* %l_836, i32 0, i64 0
  %815 = load i8, i8* %814, align 1, !tbaa !9
  %816 = zext i8 %815 to i16
  %817 = load i32, i32* %2, align 4, !tbaa !1
  %818 = trunc i32 %817 to i16
  %819 = load i32, i32* %2, align 4, !tbaa !1
  %820 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %818, i32 %819)
  %821 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %816, i16 signext %820)
  %822 = trunc i16 %821 to i8
  %823 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %813, i8 zeroext %822)
  %824 = load i32*, i32** @g_661, align 8, !tbaa !5
  %825 = load i32, i32* %824, align 4, !tbaa !1
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds [5 x i8], [5 x i8]* %l_836, i32 0, i64 3
  %828 = load i8, i8* %827, align 1, !tbaa !9
  %829 = zext i8 %828 to i32
  store i32 %829, i32* %l_818, align 4, !tbaa !1
  %830 = sext i32 %829 to i64
  %831 = xor i64 %830, 0
  %832 = trunc i64 %831 to i16
  %833 = load i16*, i16** @g_73, align 8, !tbaa !5
  store i16 %832, i16* %833, align 2, !tbaa !10
  %834 = sext i16 %832 to i32
  %835 = getelementptr inbounds [9 x i32], [9 x i32]* %l_843, i32 0, i64 1
  store i32 %834, i32* %835, align 4, !tbaa !1
  %836 = sext i32 %834 to i64
  %837 = icmp slt i64 %836, -9
  %838 = zext i1 %837 to i32
  %839 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_536, i32 0, i64 2), align 1, !tbaa !9
  %840 = sext i8 %839 to i32
  %841 = and i32 %838, %840
  %842 = sext i32 %841 to i64
  %843 = icmp ne i64 %842, 32512
  br i1 %843, label %847, label %844

; <label>:844                                     ; preds = %791
  %845 = load i32, i32* %2, align 4, !tbaa !1
  %846 = icmp ne i32 %845, 0
  br label %847

; <label>:847                                     ; preds = %844, %791
  %848 = phi i1 [ true, %791 ], [ %846, %844 ]
  %849 = zext i1 %848 to i32
  %850 = sext i32 %849 to i64
  %851 = xor i64 %850, 250
  %852 = load i32*, i32** %l_819, align 8, !tbaa !5
  %853 = load i32, i32* %852, align 4, !tbaa !1
  %854 = sext i32 %853 to i64
  %855 = call i64 @safe_add_func_int64_t_s_s(i64 %851, i64 %854)
  %856 = icmp ne i64 %826, %855
  %857 = zext i1 %856 to i32
  %858 = load i32, i32* %2, align 4, !tbaa !1
  %859 = icmp slt i32 %857, %858
  %860 = zext i1 %859 to i32
  %861 = sext i32 %860 to i64
  %862 = icmp ne i64 %861, 37631
  %863 = zext i1 %862 to i32
  %864 = sext i32 %863 to i64
  %865 = icmp sle i64 %864, 1487630802
  %866 = zext i1 %865 to i32
  %867 = sext i32 %866 to i64
  %868 = icmp sle i64 %867, 28922
  %869 = zext i1 %868 to i32
  %870 = trunc i32 %869 to i8
  %871 = load i16, i16* getelementptr inbounds ([10 x [8 x i16]], [10 x [8 x i16]]* @g_817, i32 0, i64 6, i64 6), align 2, !tbaa !10
  %872 = zext i16 %871 to i32
  %873 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %870, i32 %872)
  %874 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %823, i8 zeroext %873)
  %875 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %808, i8 zeroext %874)
  %876 = zext i8 %875 to i16
  %877 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %876, i32 2)
  %878 = trunc i16 %877 to i8
  %879 = load i16, i16* %l_844, align 2, !tbaa !10
  %880 = trunc i16 %879 to i8
  %881 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %878, i8 signext %880)
  %882 = sext i8 %881 to i16
  %883 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %882, i16 signext 0)
  %884 = sext i16 %883 to i32
  %885 = icmp ne i32 %884, 0
  br i1 %885, label %886, label %887

; <label>:886                                     ; preds = %847
  br label %887

; <label>:887                                     ; preds = %886, %847
  %888 = phi i1 [ false, %847 ], [ true, %886 ]
  %889 = zext i1 %888 to i32
  %890 = trunc i32 %889 to i8
  %891 = load i8, i8* bitcast (%union.U0* @g_556 to i8*), align 8
  %892 = and i8 %890, 63
  %893 = and i8 %891, -64
  %894 = or i8 %893, %892
  store i8 %894, i8* bitcast (%union.U0* @g_556 to i8*), align 8
  %895 = shl i8 %892, 2
  %896 = ashr i8 %895, 2
  %897 = sext i8 %896 to i32
  %898 = icmp ne i32 %897, 0
  br i1 %898, label %899, label %904

; <label>:899                                     ; preds = %887
  %900 = bitcast i16* %l_849 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %900) #1
  store i16 -8834, i16* %l_849, align 2, !tbaa !10
  %901 = load i16****, i16***** %l_845, align 8, !tbaa !5
  %902 = load volatile i16*****, i16****** @g_846, align 8, !tbaa !5
  store i16**** %901, i16***** %902, align 8, !tbaa !5
  store i16 -1, i16* %l_849, align 2, !tbaa !10
  %903 = bitcast i16* %l_849 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %903) #1
  br label %905

; <label>:904                                     ; preds = %887
  store i32* %l_818, i32** %l_850, align 8, !tbaa !5
  br label %905

; <label>:905                                     ; preds = %904, %899
  store i16 0, i16* %l_806, align 2, !tbaa !10
  br label %906

; <label>:906                                     ; preds = %916, %905
  %907 = load i16, i16* %l_806, align 2, !tbaa !10
  %908 = zext i16 %907 to i32
  %909 = icmp sgt i32 %908, 20
  br i1 %909, label %910, label %919

; <label>:910                                     ; preds = %906
  %911 = load i32, i32* @g_478, align 4, !tbaa !1
  %912 = icmp ne i32 %911, 0
  br i1 %912, label %913, label %914

; <label>:913                                     ; preds = %910
  store i32 47, i32* %4
  br label %920

; <label>:914                                     ; preds = %910
  %915 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  store i32* %2, i32** %915, align 8, !tbaa !5
  br label %916

; <label>:916                                     ; preds = %914
  %917 = load i16, i16* %l_806, align 2, !tbaa !10
  %918 = add i16 %917, 1
  store i16 %918, i16* %l_806, align 2, !tbaa !10
  br label %906

; <label>:919                                     ; preds = %906
  store i32 0, i32* %4
  br label %920

; <label>:920                                     ; preds = %919, %913
  %921 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %921) #1
  %922 = bitcast i16* %l_844 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %922) #1
  %923 = bitcast [9 x i32]* %l_843 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %923) #1
  %924 = bitcast i8** %l_829 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %924) #1
  %925 = bitcast i32** %l_819 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %925) #1
  %cleanup.dest.18 = load i32, i32* %4
  switch i32 %cleanup.dest.18, label %934 [
    i32 0, label %926
  ]

; <label>:926                                     ; preds = %920
  br label %933

; <label>:927                                     ; preds = %781
  %928 = bitcast i32* %l_856 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %928) #1
  store i32 -20664838, i32* %l_856, align 4, !tbaa !1
  %929 = load i32, i32* %l_856, align 4, !tbaa !1
  %930 = add i32 %929, -1
  store i32 %930, i32* %l_856, align 4, !tbaa !1
  %931 = load i16*, i16** %l_859, align 8, !tbaa !5
  store i16* %931, i16** %1
  store i32 1, i32* %4
  %932 = bitcast i32* %l_856 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %932) #1
  br label %934

; <label>:933                                     ; preds = %926
  store i32 0, i32* %4
  br label %934

; <label>:934                                     ; preds = %933, %927, %920
  %935 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %935) #1
  %936 = bitcast i16** %l_859 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %936) #1
  %937 = bitcast i32* %l_854 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %937) #1
  %938 = bitcast i32** %l_850 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %938) #1
  %939 = bitcast [5 x i8]* %l_836 to i8*
  call void @llvm.lifetime.end(i64 5, i8* %939) #1
  %cleanup.dest.19 = load i32, i32* %4
  switch i32 %cleanup.dest.19, label %1456 [
    i32 0, label %940
    i32 47, label %706
  ]

; <label>:940                                     ; preds = %934
  br label %1455

; <label>:941                                     ; preds = %734
  %942 = bitcast [4 x [10 x [1 x i32]]]* %l_885 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %942) #1
  %943 = bitcast [4 x [10 x [1 x i32]]]* %l_885 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %943, i8* bitcast ([4 x [10 x [1 x i32]]]* @func_63.l_885 to i8*), i64 160, i32 16, i1 false)
  %944 = bitcast i32* %l_891 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %944) #1
  store i32 8, i32* %l_891, align 4, !tbaa !1
  %945 = bitcast [4 x i32**]* %l_904 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %945) #1
  %946 = bitcast i64* %l_905 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %946) #1
  store i64 -7421216583584433408, i64* %l_905, align 8, !tbaa !7
  %947 = bitcast i32* %i20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %947) #1
  %948 = bitcast i32* %j21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %948) #1
  %949 = bitcast i32* %k22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %949) #1
  store i32 0, i32* %i20, align 4, !tbaa !1
  br label %950

; <label>:950                                     ; preds = %957, %941
  %951 = load i32, i32* %i20, align 4, !tbaa !1
  %952 = icmp slt i32 %951, 4
  br i1 %952, label %953, label %960

; <label>:953                                     ; preds = %950
  %954 = load i32, i32* %i20, align 4, !tbaa !1
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds [4 x i32**], [4 x i32**]* %l_904, i32 0, i64 %955
  store i32** @g_661, i32*** %956, align 8, !tbaa !5
  br label %957

; <label>:957                                     ; preds = %953
  %958 = load i32, i32* %i20, align 4, !tbaa !1
  %959 = add nsw i32 %958, 1
  store i32 %959, i32* %i20, align 4, !tbaa !1
  br label %950

; <label>:960                                     ; preds = %950
  store i16 21, i16* %l_806, align 2, !tbaa !10
  br label %961

; <label>:961                                     ; preds = %1035, %960
  %962 = load i16, i16* %l_806, align 2, !tbaa !10
  %963 = zext i16 %962 to i32
  %964 = icmp sle i32 %963, 17
  br i1 %964, label %965, label %1038

; <label>:965                                     ; preds = %961
  %966 = bitcast i8** %l_877 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %966) #1
  store i8* @g_40, i8** %l_877, align 8, !tbaa !5
  %967 = bitcast [10 x [1 x i32]]* %l_881 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %967) #1
  %968 = bitcast [10 x [1 x i32]]* %l_881 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %968, i8* bitcast ([10 x [1 x i32]]* @func_63.l_881 to i8*), i64 40, i32 16, i1 false)
  %969 = bitcast i32* %i23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %969) #1
  %970 = bitcast i32* %j24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %970) #1
  %971 = load i32, i32* %2, align 4, !tbaa !1
  %972 = trunc i32 %971 to i8
  %973 = load volatile i64, i64* @g_876, align 8, !tbaa !7
  %974 = trunc i64 %973 to i32
  %975 = call i32 @safe_unary_minus_func_uint32_t_u(i32 %974)
  %976 = load i8*, i8** %l_877, align 8, !tbaa !5
  %977 = load i8, i8* %976, align 1, !tbaa !9
  %978 = zext i8 %977 to i32
  %979 = xor i32 %978, %975
  %980 = trunc i32 %979 to i8
  store i8 %980, i8* %976, align 1, !tbaa !9
  %981 = load i32, i32* %2, align 4, !tbaa !1
  %982 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %980, i32 %981)
  %983 = zext i8 %982 to i32
  %984 = load i32, i32* getelementptr inbounds ([1 x [10 x i32]], [1 x [10 x i32]]* @g_200, i32 0, i64 0, i64 6), align 4, !tbaa !1
  %985 = or i32 %983, %984
  %986 = load i64**, i64*** %l_880, align 8, !tbaa !5
  %987 = load i64***, i64**** @g_469, align 8, !tbaa !5
  %988 = load i64**, i64*** %987, align 8, !tbaa !5
  %989 = icmp eq i64** %986, %988
  %990 = zext i1 %989 to i32
  %991 = sext i32 %990 to i64
  %992 = icmp ne i64 %991, 1712451678
  %993 = zext i1 %992 to i32
  %994 = load i32, i32* %2, align 4, !tbaa !1
  %995 = trunc i32 %994 to i8
  %996 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %995, i8 signext 76)
  %997 = sext i8 %996 to i32
  %998 = icmp ne i32 %997, 0
  %999 = zext i1 %998 to i32
  %1000 = trunc i32 %999 to i8
  %1001 = load i32, i32* %2, align 4, !tbaa !1
  %1002 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %1000, i32 %1001)
  %1003 = sext i8 %1002 to i32
  %1004 = call i32 @safe_div_func_int32_t_s_s(i32 %1003, i32 -3)
  %1005 = trunc i32 %1004 to i8
  %1006 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1005, i8 signext 101)
  %1007 = load i64, i64* getelementptr inbounds ([8 x [3 x [4 x i64]]], [8 x [3 x [4 x i64]]]* @g_122, i32 0, i64 5, i64 0, i64 2), align 8, !tbaa !7
  %1008 = trunc i64 %1007 to i8
  %1009 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %972, i8 zeroext %1008)
  %1010 = zext i8 %1009 to i32
  %1011 = trunc i32 %1010 to i8
  %1012 = load i32, i32* %2, align 4, !tbaa !1
  %1013 = trunc i32 %1012 to i8
  %1014 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %1011, i8 signext %1013)
  %1015 = sext i8 %1014 to i16
  %1016 = load i16*, i16** @g_73, align 8, !tbaa !5
  store i16 %1015, i16* %1016, align 2, !tbaa !10
  %1017 = sext i16 %1015 to i32
  %1018 = load i32, i32* %2, align 4, !tbaa !1
  %1019 = icmp slt i32 %1017, %1018
  %1020 = zext i1 %1019 to i32
  %1021 = sext i32 %1020 to i64
  %1022 = load i64*, i64** @g_472, align 8, !tbaa !5
  %1023 = load i64, i64* %1022, align 8, !tbaa !7
  %1024 = icmp sle i64 %1021, %1023
  %1025 = zext i1 %1024 to i32
  %1026 = getelementptr inbounds [10 x [1 x i32]], [10 x [1 x i32]]* %l_881, i32 0, i64 0
  %1027 = getelementptr inbounds [1 x i32], [1 x i32]* %1026, i32 0, i64 0
  %1028 = load i32, i32* %1027, align 4, !tbaa !1
  %1029 = xor i32 %1028, %1025
  store i32 %1029, i32* %1027, align 4, !tbaa !1
  %1030 = load i16*, i16** %l_797, align 8, !tbaa !5
  store i16* %1030, i16** %1
  store i32 1, i32* %4
  %1031 = bitcast i32* %j24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1031) #1
  %1032 = bitcast i32* %i23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1032) #1
  %1033 = bitcast [10 x [1 x i32]]* %l_881 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1033) #1
  %1034 = bitcast i8** %l_877 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1034) #1
  br label %1446
                                                  ; No predecessors!
  %1036 = load i16, i16* %l_806, align 2, !tbaa !10
  %1037 = add i16 %1036, -1
  store i16 %1037, i16* %l_806, align 2, !tbaa !10
  br label %961

; <label>:1038                                    ; preds = %961
  %1039 = load i32, i32* %2, align 4, !tbaa !1
  %1040 = trunc i32 %1039 to i8
  %1041 = load i8, i8* %l_717, align 1, !tbaa !9
  %1042 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1040, i8 signext %1041)
  %1043 = icmp ne i8 %1042, 0
  br i1 %1043, label %1044, label %1072

; <label>:1044                                    ; preds = %1038
  %1045 = bitcast i32* %l_884 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1045) #1
  store i32 -1354260582, i32* %l_884, align 4, !tbaa !1
  %1046 = load i32, i32* %2, align 4, !tbaa !1
  %1047 = load i32, i32* %l_884, align 4, !tbaa !1
  %1048 = xor i32 %1047, %1046
  store i32 %1048, i32* %l_884, align 4, !tbaa !1
  %1049 = getelementptr inbounds [4 x [10 x [1 x i32]]], [4 x [10 x [1 x i32]]]* %l_885, i32 0, i64 3
  %1050 = getelementptr inbounds [10 x [1 x i32]], [10 x [1 x i32]]* %1049, i32 0, i64 9
  %1051 = getelementptr inbounds [1 x i32], [1 x i32]* %1050, i32 0, i64 0
  %1052 = load i32, i32* %1051, align 4, !tbaa !1
  %1053 = zext i32 %1052 to i64
  %1054 = load i8**, i8*** @g_888, align 8, !tbaa !5
  %1055 = icmp eq i8** null, %1054
  br i1 %1055, label %1056, label %1058

; <label>:1056                                    ; preds = %1044
  %1057 = icmp eq i16* null, %l_806
  br label %1058

; <label>:1058                                    ; preds = %1056, %1044
  %1059 = phi i1 [ false, %1044 ], [ %1057, %1056 ]
  %1060 = zext i1 %1059 to i32
  %1061 = sext i32 %1060 to i64
  %1062 = load i64*, i64** @g_472, align 8, !tbaa !5
  store i64 %1061, i64* %1062, align 8, !tbaa !7
  %1063 = icmp slt i64 %1053, %1061
  %1064 = zext i1 %1063 to i32
  %1065 = sext i32 %1064 to i64
  %1066 = icmp ne i64 54787, %1065
  %1067 = zext i1 %1066 to i32
  %1068 = getelementptr inbounds [3 x i32], [3 x i32]* %l_889, i32 0, i64 0
  %1069 = load i32, i32* %1068, align 4, !tbaa !1
  %1070 = and i32 %1069, %1067
  store i32 %1070, i32* %1068, align 4, !tbaa !1
  %1071 = bitcast i32* %l_884 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1071) #1
  br label %1445

; <label>:1072                                    ; preds = %1038
  %1073 = bitcast i8** %l_903 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1073) #1
  store i8* @g_40, i8** %l_903, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_907) #1
  store i8 83, i8* %l_907, align 1, !tbaa !9
  %1074 = bitcast i32* %l_920 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1074) #1
  store i32 -132071832, i32* %l_920, align 4, !tbaa !1
  %1075 = bitcast i32* %l_948 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1075) #1
  store i32 5, i32* %l_948, align 4, !tbaa !1
  %1076 = bitcast %union.U0** %l_974 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1076) #1
  store %union.U0* @g_734, %union.U0** %l_974, align 8, !tbaa !5
  %1077 = load i8, i8* %l_890, align 1, !tbaa !9
  %1078 = sext i8 %1077 to i32
  store i32 %1078, i32* %l_891, align 4, !tbaa !1
  %1079 = sext i32 %1078 to i64
  %1080 = load i32, i32* %2, align 4, !tbaa !1
  %1081 = load i32*, i32** @g_661, align 8, !tbaa !5
  %1082 = load i32, i32* %1081, align 4, !tbaa !1
  %1083 = load i8*, i8** %l_903, align 8, !tbaa !5
  %1084 = load i8, i8* %1083, align 1, !tbaa !9
  %1085 = zext i8 %1084 to i64
  %1086 = xor i64 %1085, 187
  %1087 = trunc i64 %1086 to i8
  store i8 %1087, i8* %1083, align 1, !tbaa !9
  %1088 = getelementptr inbounds [4 x i32**], [4 x i32**]* %l_904, i32 0, i64 0
  %1089 = load i32**, i32*** %1088, align 8, !tbaa !5
  %1090 = icmp eq i32** %l_87, %1089
  %1091 = zext i1 %1090 to i32
  %1092 = load i64, i64* %l_905, align 8, !tbaa !7
  %1093 = load i32, i32* %2, align 4, !tbaa !1
  %1094 = sext i32 %1093 to i64
  %1095 = icmp ugt i64 %1092, %1094
  %1096 = zext i1 %1095 to i32
  %1097 = icmp sgt i32 %1091, %1096
  %1098 = zext i1 %1097 to i32
  %1099 = load i32, i32* @g_129, align 4, !tbaa !1
  %1100 = icmp ult i32 %1098, %1099
  %1101 = zext i1 %1100 to i32
  %1102 = trunc i32 %1101 to i8
  %1103 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %1087, i8 zeroext %1102)
  %1104 = zext i8 %1103 to i32
  %1105 = xor i32 %1104, -1
  %1106 = sext i32 %1105 to i64
  %1107 = call i64 @safe_div_func_int64_t_s_s(i64 %1106, i64 2340068902243302927)
  %1108 = load i16, i16* %l_906, align 2, !tbaa !10
  %1109 = sext i16 %1108 to i64
  %1110 = icmp sgt i64 %1107, %1109
  %1111 = zext i1 %1110 to i32
  %1112 = trunc i32 %1111 to i16
  %1113 = load i32, i32* %l_818, align 4, !tbaa !1
  %1114 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %1112, i32 %1113)
  %1115 = zext i16 %1114 to i32
  %1116 = sext i32 %1115 to i64
  %1117 = icmp sgt i64 59847, %1116
  %1118 = zext i1 %1117 to i32
  %1119 = load i32, i32* %2, align 4, !tbaa !1
  %1120 = trunc i32 %1119 to i16
  %1121 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %1120, i16 zeroext -7)
  %1122 = zext i16 %1121 to i32
  %1123 = load i8, i8* @g_245, align 1, !tbaa !9
  %1124 = sext i8 %1123 to i32
  %1125 = icmp sge i32 %1122, %1124
  %1126 = zext i1 %1125 to i32
  %1127 = xor i32 %1126, -1
  %1128 = load i8, i8* %l_907, align 1, !tbaa !9
  %1129 = zext i8 %1128 to i32
  %1130 = icmp ne i32 %1127, %1129
  %1131 = zext i1 %1130 to i32
  %1132 = load i8, i8* %l_907, align 1, !tbaa !9
  %1133 = zext i8 %1132 to i32
  %1134 = icmp sle i32 %1131, %1133
  %1135 = zext i1 %1134 to i32
  %1136 = load i8, i8* %l_907, align 1, !tbaa !9
  %1137 = zext i8 %1136 to i64
  %1138 = or i64 -9, %1137
  %1139 = icmp eq i64 %1079, %1138
  br i1 %1139, label %1140, label %1214

; <label>:1140                                    ; preds = %1072
  %1141 = bitcast i8** %l_911 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1141) #1
  store i8* null, i8** %l_911, align 8, !tbaa !5
  %1142 = bitcast i32*** %l_916 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1142) #1
  store i32** %l_915, i32*** %l_916, align 8, !tbaa !5
  %1143 = bitcast i32* %l_917 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1143) #1
  store i32 928934410, i32* %l_917, align 4, !tbaa !1
  %1144 = load i32*, i32** %l_915, align 8, !tbaa !5
  %1145 = load i32**, i32*** %l_916, align 8, !tbaa !5
  store i32* %1144, i32** %1145, align 8, !tbaa !5
  %1146 = icmp ne i32* @g_230, %1144
  %1147 = zext i1 %1146 to i32
  %1148 = load i16*, i16** @g_73, align 8, !tbaa !5
  %1149 = load i16, i16* %1148, align 2, !tbaa !10
  %1150 = sext i16 %1149 to i32
  %1151 = icmp sle i32 %1147, %1150
  %1152 = zext i1 %1151 to i32
  %1153 = sext i32 %1152 to i64
  %1154 = load i64*, i64** @g_472, align 8, !tbaa !5
  %1155 = load i64, i64* %1154, align 8, !tbaa !7
  %1156 = icmp ne i64 %1153, %1155
  %1157 = zext i1 %1156 to i32
  %1158 = sext i32 %1157 to i64
  %1159 = load i32, i32* %l_917, align 4, !tbaa !1
  %1160 = sext i32 %1159 to i64
  %1161 = call i64 @safe_sub_func_int64_t_s_s(i64 %1158, i64 %1160)
  %1162 = trunc i64 %1161 to i32
  %1163 = trunc i32 %1162 to i8
  %1164 = load i8, i8* bitcast (%union.U0* getelementptr inbounds ([6 x [6 x [4 x %union.U0]]], [6 x [6 x [4 x %union.U0]]]* @g_581, i32 0, i64 4, i64 0, i64 2) to i8*), align 8
  %1165 = and i8 %1163, 63
  %1166 = and i8 %1164, -64
  %1167 = or i8 %1166, %1165
  store i8 %1167, i8* bitcast (%union.U0* getelementptr inbounds ([6 x [6 x [4 x %union.U0]]], [6 x [6 x [4 x %union.U0]]]* @g_581, i32 0, i64 4, i64 0, i64 2) to i8*), align 8
  %1168 = shl i8 %1165, 2
  %1169 = ashr i8 %1168, 2
  %1170 = sext i8 %1169 to i32
  %1171 = load i32, i32* %2, align 4, !tbaa !1
  %1172 = trunc i32 %1171 to i8
  %1173 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext 121, i8 signext %1172)
  %1174 = load i8, i8* %l_907, align 1, !tbaa !9
  %1175 = zext i8 %1174 to i32
  store i32 %1175, i32* %l_920, align 4, !tbaa !1
  %1176 = load i32, i32* %l_917, align 4, !tbaa !1
  %1177 = trunc i32 %1176 to i16
  %1178 = load i16, i16* %l_906, align 2, !tbaa !10
  %1179 = load i16, i16* @g_914, align 2, !tbaa !10
  %1180 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %1177, i16 signext 20238)
  %1181 = trunc i16 %1180 to i8
  %1182 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %1181)
  %1183 = load volatile i64, i64* @g_876, align 8, !tbaa !7
  %1184 = load i32, i32* @g_478, align 4, !tbaa !1
  %1185 = load i64, i64* getelementptr inbounds ([9 x [7 x [4 x i64]]], [9 x [7 x [4 x i64]]]* @g_241, i32 0, i64 6, i64 5, i64 3), align 8, !tbaa !7
  %1186 = load i32, i32* %2, align 4, !tbaa !1
  %1187 = icmp sgt i32 %1184, %1186
  %1188 = zext i1 %1187 to i32
  %1189 = trunc i32 %1188 to i8
  %1190 = load i8*, i8** %l_95, align 8, !tbaa !5
  store i8 %1189, i8* %1190, align 1, !tbaa !9
  %1191 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext -20, i8 zeroext %1189)
  %1192 = zext i8 %1191 to i64
  %1193 = icmp ne i64 %1183, %1192
  %1194 = zext i1 %1193 to i32
  %1195 = trunc i32 %1194 to i8
  %1196 = load i32, i32* %2, align 4, !tbaa !1
  %1197 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %1195, i32 %1196)
  %1198 = sext i8 %1197 to i16
  %1199 = load i32, i32* %l_917, align 4, !tbaa !1
  %1200 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %1198, i32 %1199)
  %1201 = zext i16 %1200 to i32
  %1202 = load i32, i32* %2, align 4, !tbaa !1
  %1203 = icmp sle i32 %1201, %1202
  %1204 = zext i1 %1203 to i32
  %1205 = trunc i32 %1204 to i16
  %1206 = load i32, i32* %2, align 4, !tbaa !1
  %1207 = trunc i32 %1206 to i16
  %1208 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %1205, i16 zeroext %1207)
  %1209 = zext i16 %1208 to i32
  store i32 %1209, i32* %l_920, align 4, !tbaa !1
  %1210 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  store i32* %l_86, i32** %1210, align 8, !tbaa !5
  %1211 = bitcast i32* %l_917 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1211) #1
  %1212 = bitcast i32*** %l_916 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1212) #1
  %1213 = bitcast i8** %l_911 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1213) #1
  br label %1440

; <label>:1214                                    ; preds = %1072
  %1215 = bitcast [7 x i32]* %l_941 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %1215) #1
  %1216 = bitcast [7 x i32]* %l_941 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1216, i8* bitcast ([7 x i32]* @func_63.l_941 to i8*), i64 28, i32 16, i1 false)
  %1217 = bitcast i32** %l_947 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1217) #1
  store i32* getelementptr inbounds ([3 x [9 x i32]], [3 x [9 x i32]]* @g_653, i32 0, i64 2, i64 4), i32** %l_947, align 8, !tbaa !5
  %1218 = bitcast i32* %l_967 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1218) #1
  store i32 -174678738, i32* %l_967, align 4, !tbaa !1
  %1219 = bitcast i32* %l_973 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1219) #1
  store i32 -6, i32* %l_973, align 4, !tbaa !1
  %1220 = bitcast [5 x [8 x [6 x %union.U0*]]]* %l_981 to i8*
  call void @llvm.lifetime.start(i64 1920, i8* %1220) #1
  %1221 = bitcast [5 x [8 x [6 x %union.U0*]]]* %l_981 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1221, i8* bitcast ([5 x [8 x [6 x %union.U0*]]]* @func_63.l_981 to i8*), i64 1920, i32 16, i1 false)
  %1222 = bitcast %union.U0*** %l_980 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1222) #1
  %1223 = getelementptr inbounds [5 x [8 x [6 x %union.U0*]]], [5 x [8 x [6 x %union.U0*]]]* %l_981, i32 0, i64 1
  %1224 = getelementptr inbounds [8 x [6 x %union.U0*]], [8 x [6 x %union.U0*]]* %1223, i32 0, i64 2
  %1225 = getelementptr inbounds [6 x %union.U0*], [6 x %union.U0*]* %1224, i32 0, i64 0
  store %union.U0** %1225, %union.U0*** %l_980, align 8, !tbaa !5
  %1226 = bitcast i32* %i25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1226) #1
  %1227 = bitcast i32* %j26 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1227) #1
  %1228 = bitcast i32* %k27 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1228) #1
  %1229 = load i32, i32* %2, align 4, !tbaa !1
  %1230 = trunc i32 %1229 to i8
  %1231 = load i32, i32* %l_818, align 4, !tbaa !1
  %1232 = sext i32 %1231 to i64
  %1233 = icmp eq i64 190, %1232
  %1234 = zext i1 %1233 to i32
  %1235 = load i32, i32* %2, align 4, !tbaa !1
  %1236 = icmp sle i32 %1234, %1235
  %1237 = zext i1 %1236 to i32
  %1238 = trunc i32 %1237 to i16
  %1239 = getelementptr inbounds [7 x i32], [7 x i32]* %l_941, i32 0, i64 0
  %1240 = load i32, i32* %1239, align 4, !tbaa !1
  %1241 = trunc i32 %1240 to i8
  %1242 = getelementptr inbounds [7 x i32], [7 x i32]* %l_941, i32 0, i64 4
  %1243 = load i32, i32* %1242, align 4, !tbaa !1
  %1244 = trunc i32 %1243 to i16
  %1245 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext 10822, i16 zeroext %1244)
  %1246 = load i32, i32* %2, align 4, !tbaa !1
  %1247 = load i8*, i8** %l_95, align 8, !tbaa !5
  %1248 = load i8, i8* %1247, align 1, !tbaa !9
  %1249 = sext i8 %1248 to i32
  %1250 = and i32 %1249, %1246
  %1251 = trunc i32 %1250 to i8
  store i8 %1251, i8* %1247, align 1, !tbaa !9
  %1252 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %1251, i32 1)
  %1253 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1241, i8 signext %1252)
  %1254 = sext i8 %1253 to i32
  %1255 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_946, i32 0, i64 1), align 2, !tbaa !10
  %1256 = zext i16 %1255 to i32
  %1257 = icmp sge i32 %1254, %1256
  %1258 = zext i1 %1257 to i32
  %1259 = trunc i32 %1258 to i16
  %1260 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext 3, i16 zeroext %1259)
  %1261 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %1238, i16 signext %1260)
  %1262 = sext i16 %1261 to i32
  %1263 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %1230, i32 %1262)
  %1264 = sext i8 %1263 to i32
  %1265 = load i32*, i32** %l_947, align 8, !tbaa !5
  store i32 %1264, i32* %1265, align 4, !tbaa !1
  %1266 = load i32, i32* %l_948, align 4, !tbaa !1
  %1267 = xor i32 %1264, %1266
  %1268 = load i8, i8* %l_949, align 1, !tbaa !9
  %1269 = sext i8 %1268 to i32
  %1270 = icmp uge i32 %1267, %1269
  %1271 = zext i1 %1270 to i32
  %1272 = load i64*, i64** @g_472, align 8, !tbaa !5
  %1273 = load i64, i64* %1272, align 8, !tbaa !7
  %1274 = load i32, i32* %2, align 4, !tbaa !1
  %1275 = sext i32 %1274 to i64
  %1276 = icmp eq i64 %1273, %1275
  %1277 = zext i1 %1276 to i32
  %1278 = getelementptr inbounds [7 x i32], [7 x i32]* %l_941, i32 0, i64 5
  %1279 = load i32, i32* %1278, align 4, !tbaa !1
  %1280 = icmp eq i32 %1277, %1279
  %1281 = zext i1 %1280 to i32
  %1282 = sext i32 %1281 to i64
  %1283 = icmp ne i64 %1282, 1505666272314605227
  %1284 = zext i1 %1283 to i32
  %1285 = getelementptr inbounds [7 x i32], [7 x i32]* %l_941, i32 0, i64 3
  store i32 %1284, i32* %1285, align 4, !tbaa !1
  %1286 = bitcast %union.U0* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1286, i8* bitcast ([10 x [7 x %union.U0]]* @g_954 to i8*), i64 8, i32 8, i1 true), !tbaa.struct !12
  %1287 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  %1288 = load i32*, i32** %1287, align 8, !tbaa !5
  %1289 = icmp ne i32* null, %1288
  %1290 = zext i1 %1289 to i32
  %1291 = trunc i32 %1290 to i8
  %1292 = load i8*, i8** %l_903, align 8, !tbaa !5
  store i8 %1291, i8* %1292, align 1, !tbaa !9
  %1293 = zext i8 %1291 to i32
  %1294 = getelementptr inbounds [7 x i32], [7 x i32]* %l_941, i32 0, i64 6
  store i32 %1293, i32* %1294, align 4, !tbaa !1
  %1295 = trunc i32 %1293 to i8
  %1296 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %1295, i32 7)
  %1297 = zext i8 %1296 to i16
  %1298 = load i64*, i64** @g_472, align 8, !tbaa !5
  %1299 = load i64, i64* %1298, align 8, !tbaa !7
  %1300 = load i32, i32* %l_967, align 4, !tbaa !1
  %1301 = load i16, i16* %l_906, align 2, !tbaa !10
  %1302 = sext i16 %1301 to i32
  %1303 = icmp ne i32 %1302, 0
  br i1 %1303, label %1320, label %1304

; <label>:1304                                    ; preds = %1214
  %1305 = load i32, i32* %2, align 4, !tbaa !1
  %1306 = sext i32 %1305 to i64
  %1307 = icmp sle i64 3054747526986774176, %1306
  %1308 = zext i1 %1307 to i32
  %1309 = load i16*, i16** %l_93, align 8, !tbaa !5
  %1310 = load i16, i16* %1309, align 2, !tbaa !10
  %1311 = zext i16 %1310 to i32
  %1312 = xor i32 %1311, %1308
  %1313 = trunc i32 %1312 to i16
  store i16 %1313, i16* %1309, align 2, !tbaa !10
  %1314 = load i16, i16* getelementptr inbounds ([10 x [8 x i16]], [10 x [8 x i16]]* @g_817, i32 0, i64 9, i64 0), align 2, !tbaa !10
  %1315 = zext i16 %1314 to i32
  %1316 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %1313, i32 %1315)
  %1317 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %1316)
  %1318 = zext i16 %1317 to i32
  %1319 = icmp ne i32 %1318, 0
  br label %1320

; <label>:1320                                    ; preds = %1304, %1214
  %1321 = phi i1 [ true, %1214 ], [ %1319, %1304 ]
  %1322 = zext i1 %1321 to i32
  %1323 = load i32*, i32** @g_661, align 8, !tbaa !5
  %1324 = load i32, i32* %1323, align 4, !tbaa !1
  %1325 = icmp slt i32 %1322, %1324
  %1326 = zext i1 %1325 to i32
  %1327 = sext i32 %1326 to i64
  %1328 = icmp eq i64 41626, %1327
  %1329 = zext i1 %1328 to i32
  %1330 = load i16, i16* @g_971, align 2, !tbaa !10
  %1331 = zext i16 %1330 to i32
  %1332 = icmp slt i32 %1329, %1331
  %1333 = zext i1 %1332 to i32
  %1334 = icmp eq i16**** %l_74, @g_848
  %1335 = zext i1 %1334 to i32
  %1336 = trunc i32 %1335 to i16
  %1337 = load i8, i8* %l_907, align 1, !tbaa !9
  %1338 = zext i8 %1337 to i16
  %1339 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %1336, i16 signext %1338)
  %1340 = sext i16 %1339 to i32
  %1341 = icmp ne i32 %1340, 0
  br i1 %1341, label %1342, label %1343

; <label>:1342                                    ; preds = %1320
  br label %1343

; <label>:1343                                    ; preds = %1342, %1320
  %1344 = phi i1 [ false, %1320 ], [ true, %1342 ]
  %1345 = zext i1 %1344 to i32
  %1346 = sext i32 %1345 to i64
  %1347 = load i32, i32* %2, align 4, !tbaa !1
  %1348 = sext i32 %1347 to i64
  %1349 = call i64 @safe_sub_func_uint64_t_u_u(i64 %1346, i64 %1348)
  %1350 = load i32, i32* %2, align 4, !tbaa !1
  %1351 = sext i32 %1350 to i64
  %1352 = icmp eq i64 %1349, %1351
  %1353 = zext i1 %1352 to i32
  %1354 = sext i32 %1353 to i64
  %1355 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @g_479, i32 0, i64 0), align 8, !tbaa !7
  %1356 = icmp ne i64 %1354, %1355
  %1357 = zext i1 %1356 to i32
  %1358 = sext i32 %1357 to i64
  %1359 = call i64 @safe_sub_func_uint64_t_u_u(i64 %1358, i64 6586120446140703676)
  %1360 = icmp ne i64 %1359, 205
  %1361 = zext i1 %1360 to i32
  %1362 = sext i32 %1361 to i64
  %1363 = and i64 %1362, 45759
  %1364 = icmp sle i64 %1363, 1164056712
  %1365 = zext i1 %1364 to i32
  %1366 = load i32*, i32** @g_661, align 8, !tbaa !5
  %1367 = load i32, i32* %1366, align 4, !tbaa !1
  %1368 = icmp sgt i32 %1365, %1367
  br i1 %1368, label %1369, label %1372

; <label>:1369                                    ; preds = %1343
  %1370 = load i32, i32* %2, align 4, !tbaa !1
  %1371 = icmp ne i32 %1370, 0
  br label %1372

; <label>:1372                                    ; preds = %1369, %1343
  %1373 = phi i1 [ false, %1343 ], [ %1371, %1369 ]
  %1374 = zext i1 %1373 to i32
  %1375 = sext i32 %1374 to i64
  %1376 = or i64 %1375, 2534123675550901600
  %1377 = trunc i64 %1376 to i16
  %1378 = load i32, i32* %2, align 4, !tbaa !1
  %1379 = trunc i32 %1378 to i16
  %1380 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1377, i16 zeroext %1379)
  %1381 = load i32, i32* %2, align 4, !tbaa !1
  %1382 = trunc i32 %1381 to i16
  %1383 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1380, i16 zeroext %1382)
  %1384 = trunc i16 %1383 to i8
  %1385 = load i64, i64* getelementptr inbounds ([9 x [7 x [4 x i64]]], [9 x [7 x [4 x i64]]]* @g_241, i32 0, i64 6, i64 5, i64 3), align 8, !tbaa !7
  %1386 = trunc i64 %1385 to i8
  %1387 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %1384, i8 zeroext %1386)
  %1388 = zext i8 %1387 to i32
  %1389 = icmp ne i32 %1388, 0
  br i1 %1389, label %1390, label %1394

; <label>:1390                                    ; preds = %1372
  br i1 false, label %1391, label %1394

; <label>:1391                                    ; preds = %1390
  %1392 = load i64, i64* %l_972, align 8, !tbaa !7
  %1393 = icmp ne i64 %1392, 0
  br label %1394

; <label>:1394                                    ; preds = %1391, %1390, %1372
  %1395 = phi i1 [ false, %1390 ], [ false, %1372 ], [ %1393, %1391 ]
  %1396 = zext i1 %1395 to i32
  %1397 = sext i32 %1396 to i64
  %1398 = icmp sle i64 %1397, 3
  %1399 = zext i1 %1398 to i32
  %1400 = sext i32 %1399 to i64
  %1401 = xor i64 %1400, 7783964259138126820
  %1402 = load i32, i32* %l_973, align 4, !tbaa !1
  %1403 = sext i32 %1402 to i64
  %1404 = xor i64 %1403, %1401
  %1405 = trunc i64 %1404 to i32
  store i32 %1405, i32* %l_973, align 4, !tbaa !1
  %1406 = sext i32 %1405 to i64
  %1407 = load i64*, i64** @g_472, align 8, !tbaa !5
  %1408 = load i64, i64* %1407, align 8, !tbaa !7
  %1409 = and i64 %1406, %1408
  %1410 = load i32, i32* %2, align 4, !tbaa !1
  %1411 = trunc i32 %1410 to i16
  %1412 = load i16*, i16** %l_810, align 8, !tbaa !5
  store i16 %1411, i16* %1412, align 2, !tbaa !10
  %1413 = zext i16 %1411 to i32
  %1414 = icmp ne i32 %1413, 0
  br i1 %1414, label %1418, label %1415

; <label>:1415                                    ; preds = %1394
  %1416 = load i32, i32* %l_818, align 4, !tbaa !1
  %1417 = icmp ne i32 %1416, 0
  br label %1418

; <label>:1418                                    ; preds = %1415, %1394
  %1419 = phi i1 [ true, %1394 ], [ %1417, %1415 ]
  %1420 = zext i1 %1419 to i32
  %1421 = trunc i32 %1420 to i16
  %1422 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %1297, i16 signext %1421)
  %1423 = sext i16 %1422 to i32
  %1424 = load i32, i32* getelementptr inbounds ([1 x [10 x i32]], [1 x [10 x i32]]* @g_200, i32 0, i64 0, i64 1), align 4, !tbaa !1
  %1425 = and i32 %1423, %1424
  %1426 = load %union.U0*, %union.U0** %l_974, align 8, !tbaa !5
  store %union.U0* %1426, %union.U0** @g_975, align 8, !tbaa !5
  %1427 = load i64, i64* getelementptr inbounds ([6 x [10 x [3 x i64]]], [6 x [10 x [3 x i64]]]* @g_976, i32 0, i64 3, i64 6, i64 0), align 8, !tbaa !7
  %1428 = add i64 %1427, 1
  store i64 %1428, i64* getelementptr inbounds ([6 x [10 x [3 x i64]]], [6 x [10 x [3 x i64]]]* @g_976, i32 0, i64 3, i64 6, i64 0), align 8, !tbaa !7
  %1429 = load %union.U0*, %union.U0** %l_979, align 8, !tbaa !5
  %1430 = load %union.U0**, %union.U0*** %l_980, align 8, !tbaa !5
  store %union.U0* %1429, %union.U0** %1430, align 8, !tbaa !5
  %1431 = bitcast i32* %k27 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1431) #1
  %1432 = bitcast i32* %j26 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1432) #1
  %1433 = bitcast i32* %i25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1433) #1
  %1434 = bitcast %union.U0*** %l_980 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1434) #1
  %1435 = bitcast [5 x [8 x [6 x %union.U0*]]]* %l_981 to i8*
  call void @llvm.lifetime.end(i64 1920, i8* %1435) #1
  %1436 = bitcast i32* %l_973 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1436) #1
  %1437 = bitcast i32* %l_967 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1437) #1
  %1438 = bitcast i32** %l_947 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1438) #1
  %1439 = bitcast [7 x i32]* %l_941 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %1439) #1
  br label %1440

; <label>:1440                                    ; preds = %1418, %1140
  %1441 = bitcast %union.U0** %l_974 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1441) #1
  %1442 = bitcast i32* %l_948 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1442) #1
  %1443 = bitcast i32* %l_920 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1443) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_907) #1
  %1444 = bitcast i8** %l_903 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1444) #1
  br label %1445

; <label>:1445                                    ; preds = %1440, %1058
  store i32 0, i32* %4
  br label %1446

; <label>:1446                                    ; preds = %1445, %965
  %1447 = bitcast i32* %k22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1447) #1
  %1448 = bitcast i32* %j21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1448) #1
  %1449 = bitcast i32* %i20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1449) #1
  %1450 = bitcast i64* %l_905 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1450) #1
  %1451 = bitcast [4 x i32**]* %l_904 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1451) #1
  %1452 = bitcast i32* %l_891 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1452) #1
  %1453 = bitcast [4 x [10 x [1 x i32]]]* %l_885 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %1453) #1
  %cleanup.dest.28 = load i32, i32* %4
  switch i32 %cleanup.dest.28, label %1456 [
    i32 0, label %1454
  ]

; <label>:1454                                    ; preds = %1446
  br label %1455

; <label>:1455                                    ; preds = %1454, %940
  store i32 0, i32* %4
  br label %1456

; <label>:1456                                    ; preds = %1455, %1446, %934
  %1457 = bitcast %union.U0** %l_979 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1457) #1
  %1458 = bitcast i8** %l_910 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1458) #1
  %1459 = bitcast i16* %l_906 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1459) #1
  %1460 = bitcast i32* %l_818 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1460) #1
  %1461 = bitcast i16** %l_816 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1461) #1
  %1462 = bitcast i16** %l_810 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1462) #1
  %1463 = bitcast i16** %l_809 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1463) #1
  %cleanup.dest.29 = load i32, i32* %4
  switch i32 %cleanup.dest.29, label %1874 [
    i32 0, label %1464
  ]

; <label>:1464                                    ; preds = %1456
  br label %1520

; <label>:1465                                    ; preds = %692
  %1466 = bitcast i16** %l_994 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1466) #1
  store i16* null, i16** %l_994, align 8, !tbaa !5
  store i32 -7, i32* @g_530, align 4, !tbaa !1
  br label %1467

; <label>:1467                                    ; preds = %1515, %1465
  %1468 = load i32, i32* @g_530, align 4, !tbaa !1
  %1469 = icmp ne i32 %1468, 2
  br i1 %1469, label %1470, label %1518

; <label>:1470                                    ; preds = %1467
  %1471 = bitcast i32* %l_987 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1471) #1
  store i32 -2, i32* %l_987, align 4, !tbaa !1
  store i16 0, i16* @g_94, align 2, !tbaa !10
  br label %1472

; <label>:1472                                    ; preds = %1491, %1470
  %1473 = load i16, i16* @g_94, align 2, !tbaa !10
  %1474 = zext i16 %1473 to i32
  %1475 = icmp slt i32 %1474, 46
  br i1 %1475, label %1476, label %1494

; <label>:1476                                    ; preds = %1472
  store i8 1, i8* @g_40, align 1, !tbaa !9
  br label %1477

; <label>:1477                                    ; preds = %1483, %1476
  %1478 = load i8, i8* @g_40, align 1, !tbaa !9
  %1479 = zext i8 %1478 to i32
  %1480 = icmp sle i32 %1479, 4
  br i1 %1480, label %1481, label %1488

; <label>:1481                                    ; preds = %1477
  %1482 = getelementptr inbounds [3 x i32], [3 x i32]* %l_889, i32 0, i64 0
  store i32 -10, i32* %1482, align 4, !tbaa !1
  br label %1483

; <label>:1483                                    ; preds = %1481
  %1484 = load i8, i8* @g_40, align 1, !tbaa !9
  %1485 = zext i8 %1484 to i32
  %1486 = add nsw i32 %1485, 1
  %1487 = trunc i32 %1486 to i8
  store i8 %1487, i8* @g_40, align 1, !tbaa !9
  br label %1477

; <label>:1488                                    ; preds = %1477
  %1489 = load i32, i32* %l_987, align 4, !tbaa !1
  %1490 = add i32 %1489, -1
  store i32 %1490, i32* %l_987, align 4, !tbaa !1
  br label %1491

; <label>:1491                                    ; preds = %1488
  %1492 = load i16, i16* @g_94, align 2, !tbaa !10
  %1493 = add i16 %1492, 1
  store i16 %1493, i16* @g_94, align 2, !tbaa !10
  br label %1472

; <label>:1494                                    ; preds = %1472
  %1495 = load i32, i32* %2, align 4, !tbaa !1
  %1496 = sext i32 %1495 to i64
  %1497 = or i64 %1496, 1995452569
  %1498 = trunc i64 %1497 to i32
  store i32 %1498, i32* %2, align 4, !tbaa !1
  store i32 -7, i32* @g_478, align 4, !tbaa !1
  br label %1499

; <label>:1499                                    ; preds = %1508, %1494
  %1500 = load i32, i32* @g_478, align 4, !tbaa !1
  %1501 = icmp eq i32 %1500, 11
  br i1 %1501, label %1502, label %1513

; <label>:1502                                    ; preds = %1499
  %1503 = bitcast i64* %l_993 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1503) #1
  store i64 5930516076515514797, i64* %l_993, align 8, !tbaa !7
  %1504 = load i32*, i32** @g_661, align 8, !tbaa !5
  %1505 = load i32, i32* %1504, align 4, !tbaa !1
  %1506 = trunc i32 %1505 to i8
  store i8 %1506, i8* %l_992, align 1, !tbaa !9
  store i32 66, i32* %4
  %1507 = bitcast i64* %l_993 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1507) #1
  br label %1513
                                                  ; No predecessors!
  %1509 = load i32, i32* @g_478, align 4, !tbaa !1
  %1510 = sext i32 %1509 to i64
  %1511 = call i64 @safe_add_func_uint64_t_u_u(i64 %1510, i64 2)
  %1512 = trunc i64 %1511 to i32
  store i32 %1512, i32* @g_478, align 4, !tbaa !1
  br label %1499

; <label>:1513                                    ; preds = %1502, %1499
  %1514 = bitcast i32* %l_987 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1514) #1
  br label %1515

; <label>:1515                                    ; preds = %1513
  %1516 = load i32, i32* @g_530, align 4, !tbaa !1
  %1517 = add i32 %1516, 1
  store i32 %1517, i32* @g_530, align 4, !tbaa !1
  br label %1467

; <label>:1518                                    ; preds = %1467
  %1519 = bitcast i16** %l_994 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1519) #1
  br label %1520

; <label>:1520                                    ; preds = %1518, %1464
  store i64 0, i64* %l_754, align 8, !tbaa !7
  br label %1521

; <label>:1521                                    ; preds = %1868, %1520
  %1522 = load i64, i64* %l_754, align 8, !tbaa !7
  %1523 = icmp slt i64 %1522, 9
  br i1 %1523, label %1524, label %1873

; <label>:1524                                    ; preds = %1521
  %1525 = bitcast i16****** %l_1005 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1525) #1
  store i16***** @g_847, i16****** %l_1005, align 8, !tbaa !5
  %1526 = bitcast i32* %l_1006 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1526) #1
  store i32 943593699, i32* %l_1006, align 4, !tbaa !1
  %1527 = bitcast i32* %l_1007 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1527) #1
  store i32 1, i32* %l_1007, align 4, !tbaa !1
  %1528 = bitcast i32* %l_1022 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1528) #1
  store i32 1387738486, i32* %l_1022, align 4, !tbaa !1
  %1529 = bitcast i8** %l_1044 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1529) #1
  store i8* @g_40, i8** %l_1044, align 8, !tbaa !5
  %1530 = bitcast i32* %l_1058 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1530) #1
  store i32 -181656500, i32* %l_1058, align 4, !tbaa !1
  %1531 = bitcast i32* %l_1088 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1531) #1
  store i32 1875864763, i32* %l_1088, align 4, !tbaa !1
  %1532 = bitcast i32* %l_1090 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1532) #1
  store i32 -1, i32* %l_1090, align 4, !tbaa !1
  %1533 = bitcast i32* %l_1091 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1533) #1
  store i32 1880545034, i32* %l_1091, align 4, !tbaa !1
  %1534 = bitcast i16** %l_1104 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1534) #1
  store i16* @g_914, i16** %l_1104, align 8, !tbaa !5
  %1535 = load i32, i32* %2, align 4, !tbaa !1
  %1536 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  %1537 = load i32*, i32** %1536, align 8, !tbaa !5
  %1538 = load i32, i32* %1537, align 4, !tbaa !1
  %1539 = getelementptr inbounds [7 x i8], [7 x i8]* %l_986, i32 0, i64 5
  %1540 = load i8, i8* %1539, align 1, !tbaa !9
  %1541 = sext i8 %1540 to i32
  %1542 = icmp ne i32 %1541, 0
  br i1 %1542, label %1543, label %1544

; <label>:1543                                    ; preds = %1524
  br label %1544

; <label>:1544                                    ; preds = %1543, %1524
  %1545 = phi i1 [ false, %1524 ], [ true, %1543 ]
  %1546 = zext i1 %1545 to i32
  %1547 = load i16*****, i16****** %l_1005, align 8, !tbaa !5
  store i16**** @g_848, i16***** %1547, align 8, !tbaa !5
  %1548 = icmp eq i16**** @g_848, %l_75
  %1549 = zext i1 %1548 to i32
  %1550 = trunc i32 %1549 to i16
  %1551 = load i32, i32* %2, align 4, !tbaa !1
  %1552 = trunc i32 %1551 to i16
  %1553 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %1550, i16 signext %1552)
  %1554 = sext i16 %1553 to i32
  %1555 = or i32 %1546, %1554
  %1556 = load i32, i32* %2, align 4, !tbaa !1
  %1557 = sext i32 %1556 to i64
  %1558 = load i64, i64* getelementptr inbounds ([8 x [3 x [4 x i64]]], [8 x [3 x [4 x i64]]]* @g_122, i32 0, i64 5, i64 0, i64 2), align 8, !tbaa !7
  %1559 = icmp sle i64 %1557, %1558
  %1560 = zext i1 %1559 to i32
  %1561 = sext i32 %1560 to i64
  %1562 = load i32, i32* %2, align 4, !tbaa !1
  %1563 = sext i32 %1562 to i64
  %1564 = call i64 @safe_mod_func_uint64_t_u_u(i64 %1561, i64 %1563)
  %1565 = trunc i64 %1564 to i32
  store i32 %1565, i32* %l_1006, align 4, !tbaa !1
  %1566 = call i32 @safe_sub_func_int32_t_s_s(i32 %1538, i32 %1565)
  %1567 = sext i32 %1566 to i64
  %1568 = load i64*, i64** @g_472, align 8, !tbaa !5
  %1569 = load i64, i64* %1568, align 8, !tbaa !7
  %1570 = xor i64 %1569, %1567
  store i64 %1570, i64* %1568, align 8, !tbaa !7
  %1571 = call i64 @safe_sub_func_int64_t_s_s(i64 %1570, i64 3839679819956121754)
  %1572 = load i32, i32* %2, align 4, !tbaa !1
  %1573 = load i32, i32* %l_1007, align 4, !tbaa !1
  %1574 = and i32 %1572, %1573
  %1575 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_946, i32 0, i64 1), align 2, !tbaa !10
  %1576 = zext i16 %1575 to i32
  %1577 = or i32 %1574, %1576
  br i1 true, label %1578, label %1579

; <label>:1578                                    ; preds = %1544
  br label %1579

; <label>:1579                                    ; preds = %1578, %1544
  %1580 = phi i1 [ false, %1544 ], [ true, %1578 ]
  %1581 = zext i1 %1580 to i32
  %1582 = icmp eq i32 1, %1581
  %1583 = zext i1 %1582 to i32
  %1584 = load i32*, i32** @g_661, align 8, !tbaa !5
  %1585 = load i32, i32* %1584, align 4, !tbaa !1
  %1586 = and i32 %1583, %1585
  %1587 = icmp ne i32 %1586, 0
  br i1 %1587, label %1588, label %1599

; <label>:1588                                    ; preds = %1579
  %1589 = load i32, i32* %2, align 4, !tbaa !1
  %1590 = sext i32 %1589 to i64
  %1591 = icmp eq i64 106, %1590
  %1592 = zext i1 %1591 to i32
  %1593 = sext i32 %1592 to i64
  %1594 = icmp ult i64 %1593, 7
  %1595 = zext i1 %1594 to i32
  %1596 = getelementptr inbounds [3 x i32], [3 x i32]* %l_889, i32 0, i64 0
  %1597 = load i32, i32* %1596, align 4, !tbaa !1
  %1598 = and i32 %1597, %1595
  store i32 %1598, i32* %1596, align 4, !tbaa !1
  br label %1855

; <label>:1599                                    ; preds = %1579
  %1600 = bitcast i32* %l_1008 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1600) #1
  store i32 0, i32* %l_1008, align 4, !tbaa !1
  %1601 = bitcast i32* %l_1014 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1601) #1
  store i32 1, i32* %l_1014, align 4, !tbaa !1
  %1602 = bitcast [4 x [9 x i32]]* %l_1020 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1602) #1
  %1603 = bitcast [4 x [9 x i32]]* %l_1020 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1603, i8* bitcast ([4 x [9 x i32]]* @func_63.l_1020 to i8*), i64 144, i32 16, i1 false)
  %1604 = bitcast i32* %l_1087 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1604) #1
  store i32 1, i32* %l_1087, align 4, !tbaa !1
  %1605 = bitcast i16** %l_1103 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1605) #1
  store i16* %l_1089, i16** %l_1103, align 8, !tbaa !5
  %1606 = bitcast i32* %i30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1606) #1
  %1607 = bitcast i32* %j31 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1607) #1
  store i8 0, i8* @g_253, align 1, !tbaa !9
  br label %1608

; <label>:1608                                    ; preds = %1815, %1599
  %1609 = load i8, i8* @g_253, align 1, !tbaa !9
  %1610 = zext i8 %1609 to i32
  %1611 = icmp sle i32 %1610, 2
  br i1 %1611, label %1612, label %1820

; <label>:1612                                    ; preds = %1608
  %1613 = bitcast i32** %l_1047 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1613) #1
  store i32* %l_1008, i32** %l_1047, align 8, !tbaa !5
  %1614 = bitcast i32* %l_1059 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1614) #1
  store i32 -5, i32* %l_1059, align 4, !tbaa !1
  %1615 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1615) #1
  %1616 = load i32, i32* %l_1008, align 4, !tbaa !1
  %1617 = add i32 %1616, 1
  store i32 %1617, i32* %l_1008, align 4, !tbaa !1
  %1618 = load i8, i8* @g_253, align 1, !tbaa !9
  %1619 = zext i8 %1618 to i64
  %1620 = getelementptr inbounds [3 x i32], [3 x i32]* %l_889, i32 0, i64 %1619
  %1621 = load i32, i32* %1620, align 4, !tbaa !1
  %1622 = icmp ne i32 %1621, 0
  br i1 %1622, label %1623, label %1631

; <label>:1623                                    ; preds = %1612
  %1624 = load i32, i32* %2, align 4, !tbaa !1
  %1625 = icmp ne i32 %1624, 0
  br i1 %1625, label %1626, label %1627

; <label>:1626                                    ; preds = %1623
  store i32 72, i32* %4
  br label %1810

; <label>:1627                                    ; preds = %1623
  %1628 = getelementptr inbounds [9 x %union.U0*], [9 x %union.U0*]* %l_1011, i32 0, i64 8
  %1629 = load %union.U0*, %union.U0** %1628, align 8, !tbaa !5
  %1630 = load volatile %union.U0**, %union.U0*** @g_1012, align 8, !tbaa !5
  store %union.U0* %1629, %union.U0** %1630, align 8, !tbaa !5
  br label %1643

; <label>:1631                                    ; preds = %1612
  call void @llvm.lifetime.start(i64 1, i8* %l_1018) #1
  store i8 1, i8* %l_1018, align 1, !tbaa !9
  %1632 = bitcast [5 x i32]* %l_1019 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %1632) #1
  %1633 = bitcast [5 x i32]* %l_1019 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1633, i8 0, i64 20, i32 16, i1 false)
  %1634 = bitcast i32* %i33 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1634) #1
  %1635 = load i32, i32* %l_1008, align 4, !tbaa !1
  %1636 = load i32, i32* %l_1014, align 4, !tbaa !1
  %1637 = and i32 %1636, %1635
  store i32 %1637, i32* %l_1014, align 4, !tbaa !1
  %1638 = load volatile i32***, i32**** @g_1015, align 8, !tbaa !5
  store i32** %l_915, i32*** %1638, align 8, !tbaa !5
  %1639 = load volatile i8, i8* @g_1023, align 1, !tbaa !9
  %1640 = add i8 %1639, -1
  store volatile i8 %1640, i8* @g_1023, align 1, !tbaa !9
  %1641 = bitcast i32* %i33 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1641) #1
  %1642 = bitcast [5 x i32]* %l_1019 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %1642) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1018) #1
  br label %1643

; <label>:1643                                    ; preds = %1631, %1627
  %1644 = load i8, i8* @g_1026, align 1, !tbaa !9
  %1645 = add i8 %1644, 1
  store i8 %1645, i8* @g_1026, align 1, !tbaa !9
  %1646 = load i32, i32* %2, align 4, !tbaa !1
  %1647 = icmp ne i32 %1646, 0
  br i1 %1647, label %1728, label %1648

; <label>:1648                                    ; preds = %1643
  %1649 = load i8*, i8** %l_1041, align 8, !tbaa !5
  store i8* %1649, i8** @g_1042, align 8, !tbaa !5
  %1650 = load i8*, i8** %l_1044, align 8, !tbaa !5
  %1651 = icmp ne i8* %1649, %1650
  %1652 = zext i1 %1651 to i32
  %1653 = trunc i32 %1652 to i16
  %1654 = load i16*, i16** @g_73, align 8, !tbaa !5
  %1655 = load i16, i16* %1654, align 2, !tbaa !10
  %1656 = sext i16 %1655 to i32
  %1657 = getelementptr inbounds [4 x [9 x i32]], [4 x [9 x i32]]* %l_1020, i32 0, i64 1
  %1658 = getelementptr inbounds [9 x i32], [9 x i32]* %1657, i32 0, i64 0
  %1659 = load i32, i32* %1658, align 4, !tbaa !1
  %1660 = xor i32 %1659, %1656
  store i32 %1660, i32* %1658, align 4, !tbaa !1
  %1661 = trunc i32 %1660 to i16
  %1662 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %1661, i32 2)
  %1663 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %1653, i16 signext %1662)
  %1664 = sext i16 %1663 to i32
  %1665 = load i32*, i32** %l_1047, align 8, !tbaa !5
  store i32 %1664, i32* %1665, align 4, !tbaa !1
  %1666 = getelementptr inbounds [4 x [9 x i32]], [4 x [9 x i32]]* %l_1020, i32 0, i64 1
  %1667 = getelementptr inbounds [9 x i32], [9 x i32]* %1666, i32 0, i64 7
  %1668 = load i32, i32* %1667, align 4, !tbaa !1
  %1669 = load i32, i32* %2, align 4, !tbaa !1
  %1670 = trunc i32 %1669 to i8
  %1671 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %1670, i32 5)
  %1672 = sext i8 %1671 to i32
  %1673 = icmp slt i32 %1668, %1672
  %1674 = zext i1 %1673 to i32
  %1675 = load i32, i32* %2, align 4, !tbaa !1
  %1676 = sext i32 %1675 to i64
  %1677 = load i32, i32* %2, align 4, !tbaa !1
  %1678 = icmp sgt i64 %1676, -9
  %1679 = zext i1 %1678 to i32
  %1680 = getelementptr inbounds [10 x i16*****], [10 x i16*****]* %l_1056, i32 0, i64 7
  %1681 = load i16*****, i16****** %1680, align 8, !tbaa !5
  %1682 = icmp ne i16***** %1681, null
  %1683 = zext i1 %1682 to i32
  %1684 = load i32**, i32*** @g_624, align 8, !tbaa !5
  %1685 = load volatile i32*, i32** %1684, align 8, !tbaa !5
  %1686 = load volatile i32, i32* %1685, align 4, !tbaa !1
  %1687 = icmp ne i32 %1683, %1686
  %1688 = zext i1 %1687 to i32
  %1689 = load i32, i32* %2, align 4, !tbaa !1
  %1690 = or i32 %1688, %1689
  %1691 = icmp ne i32 %1690, 0
  br i1 %1691, label %1695, label %1692

; <label>:1692                                    ; preds = %1648
  %1693 = load i32, i32* %2, align 4, !tbaa !1
  %1694 = icmp ne i32 %1693, 0
  br label %1695

; <label>:1695                                    ; preds = %1692, %1648
  %1696 = phi i1 [ true, %1648 ], [ %1694, %1692 ]
  %1697 = zext i1 %1696 to i32
  %1698 = sext i32 %1697 to i64
  %1699 = icmp ult i64 %1698, 7
  %1700 = zext i1 %1699 to i32
  %1701 = trunc i32 %1700 to i8
  %1702 = load i32, i32* %2, align 4, !tbaa !1
  %1703 = trunc i32 %1702 to i8
  %1704 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1701, i8 zeroext %1703)
  %1705 = zext i8 %1704 to i64
  %1706 = call i64 @safe_sub_func_uint64_t_u_u(i64 %1705, i64 -2)
  %1707 = trunc i64 %1706 to i8
  %1708 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %1707, i8 zeroext 94)
  %1709 = load i64*, i64** @g_472, align 8, !tbaa !5
  %1710 = load i64, i64* %1709, align 8, !tbaa !7
  %1711 = and i64 %1710, -4232586143464220167
  store i64 %1711, i64* %1709, align 8, !tbaa !7
  %1712 = xor i64 %1711, -1
  %1713 = trunc i64 %1712 to i8
  %1714 = load i8*, i8** %l_95, align 8, !tbaa !5
  store i8 %1713, i8* %1714, align 1, !tbaa !9
  %1715 = sext i8 %1713 to i64
  %1716 = icmp slt i64 %1715, 55
  %1717 = zext i1 %1716 to i32
  %1718 = trunc i32 %1717 to i16
  %1719 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %1718, i16 signext -23962)
  %1720 = sext i16 %1719 to i64
  %1721 = load i32, i32* %2, align 4, !tbaa !1
  %1722 = sext i32 %1721 to i64
  %1723 = call i64 @safe_add_func_int64_t_s_s(i64 %1720, i64 %1722)
  %1724 = trunc i64 %1723 to i16
  %1725 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext 5811, i16 zeroext %1724)
  %1726 = zext i16 %1725 to i32
  %1727 = icmp ne i32 %1726, 0
  br label %1728

; <label>:1728                                    ; preds = %1695, %1643
  %1729 = phi i1 [ true, %1643 ], [ %1727, %1695 ]
  %1730 = zext i1 %1729 to i32
  %1731 = load i32, i32* %2, align 4, !tbaa !1
  %1732 = call i32 @safe_add_func_int32_t_s_s(i32 %1730, i32 %1731)
  %1733 = trunc i32 %1732 to i16
  %1734 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %1733, i32 12)
  %1735 = zext i16 %1734 to i32
  %1736 = load i32, i32* %l_1007, align 4, !tbaa !1
  %1737 = and i32 %1736, %1735
  store i32 %1737, i32* %l_1007, align 4, !tbaa !1
  store i8 0, i8* @g_328, align 1, !tbaa !9
  br label %1738

; <label>:1738                                    ; preds = %1804, %1728
  %1739 = load i8, i8* @g_328, align 1, !tbaa !9
  %1740 = sext i8 %1739 to i32
  %1741 = icmp sle i32 %1740, 3
  br i1 %1741, label %1742, label %1809

; <label>:1742                                    ; preds = %1738
  %1743 = bitcast [1 x [9 x [10 x i8]]]* %l_1057 to i8*
  call void @llvm.lifetime.start(i64 90, i8* %1743) #1
  %1744 = bitcast [1 x [9 x [10 x i8]]]* %l_1057 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1744, i8* getelementptr inbounds ([1 x [9 x [10 x i8]]], [1 x [9 x [10 x i8]]]* @func_63.l_1057, i32 0, i32 0, i32 0, i32 0), i64 90, i32 16, i1 false)
  %1745 = bitcast i32* %l_1060 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1745) #1
  store i32 -941074341, i32* %l_1060, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1084) #1
  store i8 0, i8* %l_1084, align 1, !tbaa !9
  %1746 = bitcast i32* %i34 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1746) #1
  %1747 = bitcast i32* %j35 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1747) #1
  %1748 = bitcast i32* %k36 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1748) #1
  %1749 = load volatile i32, i32* getelementptr inbounds ([10 x [4 x i32]], [10 x [4 x i32]]* @g_1063, i32 0, i64 5, i64 2), align 4, !tbaa !1
  %1750 = add i32 %1749, 1
  store volatile i32 %1750, i32* getelementptr inbounds ([10 x [4 x i32]], [10 x [4 x i32]]* @g_1063, i32 0, i64 5, i64 2), align 4, !tbaa !1
  %1751 = load i32**, i32*** @g_1068, align 8, !tbaa !5
  store i32** %1751, i32*** %l_1070, align 8, !tbaa !5
  %1752 = load i32**, i32*** %l_1071, align 8, !tbaa !5
  %1753 = icmp eq i32** %1751, %1752
  %1754 = zext i1 %1753 to i32
  %1755 = load i32, i32* %2, align 4, !tbaa !1
  %1756 = xor i32 %1755, -1
  %1757 = load i32, i32* %2, align 4, !tbaa !1
  %1758 = load i32, i32* %2, align 4, !tbaa !1
  %1759 = or i32 %1757, %1758
  %1760 = trunc i32 %1759 to i8
  %1761 = load i8, i8* %l_1084, align 1, !tbaa !9
  %1762 = add i8 %1761, 1
  store i8 %1762, i8* %l_1084, align 1, !tbaa !9
  %1763 = zext i8 %1762 to i32
  %1764 = load i32, i32* %2, align 4, !tbaa !1
  %1765 = icmp sle i32 %1763, %1764
  %1766 = zext i1 %1765 to i32
  %1767 = load i32, i32* %2, align 4, !tbaa !1
  %1768 = trunc i32 %1767 to i8
  %1769 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %1760, i8 signext %1768)
  %1770 = sext i8 %1769 to i64
  %1771 = icmp sgt i64 0, %1770
  %1772 = zext i1 %1771 to i32
  %1773 = call i32 @safe_add_func_uint32_t_u_u(i32 %1756, i32 %1772)
  %1774 = zext i32 %1773 to i64
  %1775 = load i32, i32* %2, align 4, !tbaa !1
  %1776 = sext i32 %1775 to i64
  %1777 = call i64 @safe_mod_func_int64_t_s_s(i64 %1774, i64 %1776)
  %1778 = trunc i64 %1777 to i8
  %1779 = load i32, i32* %l_1087, align 4, !tbaa !1
  %1780 = trunc i32 %1779 to i8
  %1781 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %1778, i8 signext %1780)
  %1782 = load i32, i32* %2, align 4, !tbaa !1
  %1783 = trunc i32 %1782 to i8
  %1784 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %1781, i8 zeroext %1783)
  %1785 = load i32, i32* %2, align 4, !tbaa !1
  %1786 = trunc i32 %1785 to i8
  %1787 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %1784, i8 signext %1786)
  %1788 = sext i8 %1787 to i32
  %1789 = load i32*, i32** @g_661, align 8, !tbaa !5
  %1790 = load i32, i32* %1789, align 4, !tbaa !1
  %1791 = icmp eq i32 %1788, %1790
  %1792 = zext i1 %1791 to i32
  store i32 %1792, i32* %2, align 4, !tbaa !1
  %1793 = load i8, i8* @g_1026, align 1, !tbaa !9
  %1794 = zext i8 %1793 to i32
  %1795 = icmp sle i32 %1792, %1794
  %1796 = zext i1 %1795 to i32
  %1797 = load i32, i32* %l_1088, align 4, !tbaa !1
  %1798 = or i32 %1797, %1796
  store i32 %1798, i32* %l_1088, align 4, !tbaa !1
  %1799 = bitcast i32* %k36 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1799) #1
  %1800 = bitcast i32* %j35 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1800) #1
  %1801 = bitcast i32* %i34 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1801) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1084) #1
  %1802 = bitcast i32* %l_1060 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1802) #1
  %1803 = bitcast [1 x [9 x [10 x i8]]]* %l_1057 to i8*
  call void @llvm.lifetime.end(i64 90, i8* %1803) #1
  br label %1804

; <label>:1804                                    ; preds = %1742
  %1805 = load i8, i8* @g_328, align 1, !tbaa !9
  %1806 = sext i8 %1805 to i32
  %1807 = add nsw i32 %1806, 1
  %1808 = trunc i32 %1807 to i8
  store i8 %1808, i8* @g_328, align 1, !tbaa !9
  br label %1738

; <label>:1809                                    ; preds = %1738
  store i32 0, i32* %4
  br label %1810

; <label>:1810                                    ; preds = %1809, %1626
  %1811 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1811) #1
  %1812 = bitcast i32* %l_1059 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1812) #1
  %1813 = bitcast i32** %l_1047 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1813) #1
  %cleanup.dest.37 = load i32, i32* %4
  switch i32 %cleanup.dest.37, label %1946 [
    i32 0, label %1814
    i32 72, label %1820
  ]

; <label>:1814                                    ; preds = %1810
  br label %1815

; <label>:1815                                    ; preds = %1814
  %1816 = load i8, i8* @g_253, align 1, !tbaa !9
  %1817 = zext i8 %1816 to i32
  %1818 = add nsw i32 %1817, 1
  %1819 = trunc i32 %1818 to i8
  store i8 %1819, i8* @g_253, align 1, !tbaa !9
  br label %1608

; <label>:1820                                    ; preds = %1810, %1608
  %1821 = load i32, i32* getelementptr inbounds ([2 x [4 x i32]], [2 x [4 x i32]]* @g_1095, i32 0, i64 1, i64 3), align 4, !tbaa !1
  %1822 = add i32 %1821, -1
  store i32 %1822, i32* getelementptr inbounds ([2 x [4 x i32]], [2 x [4 x i32]]* @g_1095, i32 0, i64 1, i64 3), align 4, !tbaa !1
  store i32 28, i32* @g_482, align 4, !tbaa !1
  br label %1823

; <label>:1823                                    ; preds = %1843, %1820
  %1824 = load i32, i32* @g_482, align 4, !tbaa !1
  %1825 = icmp slt i32 %1824, 28
  br i1 %1825, label %1826, label %1846

; <label>:1826                                    ; preds = %1823
  store i32 -1, i32* @g_129, align 4, !tbaa !1
  br label %1827

; <label>:1827                                    ; preds = %1839, %1826
  %1828 = load i32, i32* @g_129, align 4, !tbaa !1
  %1829 = icmp ule i32 %1828, 53
  br i1 %1829, label %1830, label %1842

; <label>:1830                                    ; preds = %1827
  %1831 = bitcast i32* %l_1102 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1831) #1
  store i32 -4, i32* %l_1102, align 4, !tbaa !1
  %1832 = load i32, i32* %l_1102, align 4, !tbaa !1
  %1833 = icmp ne i32 %1832, 0
  br i1 %1833, label %1834, label %1835

; <label>:1834                                    ; preds = %1830
  store i32 81, i32* %4
  br label %1836

; <label>:1835                                    ; preds = %1830
  store i32 0, i32* %4
  br label %1836

; <label>:1836                                    ; preds = %1835, %1834
  %1837 = bitcast i32* %l_1102 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1837) #1
  %cleanup.dest.38 = load i32, i32* %4
  switch i32 %cleanup.dest.38, label %1946 [
    i32 0, label %1838
    i32 81, label %1842
  ]

; <label>:1838                                    ; preds = %1836
  br label %1839

; <label>:1839                                    ; preds = %1838
  %1840 = load i32, i32* @g_129, align 4, !tbaa !1
  %1841 = add i32 %1840, 1
  store i32 %1841, i32* @g_129, align 4, !tbaa !1
  br label %1827

; <label>:1842                                    ; preds = %1836, %1827
  br label %1843

; <label>:1843                                    ; preds = %1842
  %1844 = load i32, i32* @g_482, align 4, !tbaa !1
  %1845 = call i32 @safe_add_func_uint32_t_u_u(i32 %1844, i32 2)
  store i32 %1845, i32* @g_482, align 4, !tbaa !1
  br label %1823

; <label>:1846                                    ; preds = %1823
  %1847 = load i16*, i16** %l_1104, align 8, !tbaa !5
  store i16* %1847, i16** %1
  store i32 1, i32* %4
  %1848 = bitcast i32* %j31 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1848) #1
  %1849 = bitcast i32* %i30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1849) #1
  %1850 = bitcast i16** %l_1103 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1850) #1
  %1851 = bitcast i32* %l_1087 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1851) #1
  %1852 = bitcast [4 x [9 x i32]]* %l_1020 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %1852) #1
  %1853 = bitcast i32* %l_1014 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1853) #1
  %1854 = bitcast i32* %l_1008 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1854) #1
  br label %1856

; <label>:1855                                    ; preds = %1588
  store i32 0, i32* %4
  br label %1856

; <label>:1856                                    ; preds = %1855, %1846
  %1857 = bitcast i16** %l_1104 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1857) #1
  %1858 = bitcast i32* %l_1091 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1858) #1
  %1859 = bitcast i32* %l_1090 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1859) #1
  %1860 = bitcast i32* %l_1088 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1860) #1
  %1861 = bitcast i32* %l_1058 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1861) #1
  %1862 = bitcast i8** %l_1044 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1862) #1
  %1863 = bitcast i32* %l_1022 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1863) #1
  %1864 = bitcast i32* %l_1007 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1864) #1
  %1865 = bitcast i32* %l_1006 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1865) #1
  %1866 = bitcast i16****** %l_1005 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1866) #1
  %cleanup.dest.39 = load i32, i32* %4
  switch i32 %cleanup.dest.39, label %1874 [
    i32 0, label %1867
  ]

; <label>:1867                                    ; preds = %1856
  br label %1868

; <label>:1868                                    ; preds = %1867
  %1869 = load i64, i64* %l_754, align 8, !tbaa !7
  %1870 = trunc i64 %1869 to i32
  %1871 = call i32 @safe_add_func_int32_t_s_s(i32 %1870, i32 5)
  %1872 = sext i32 %1871 to i64
  store i64 %1872, i64* %l_754, align 8, !tbaa !7
  br label %1521

; <label>:1873                                    ; preds = %1521
  store i32 0, i32* %4
  br label %1874

; <label>:1874                                    ; preds = %1873, %1856, %1456, %686
  %1875 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1875) #1
  %1876 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1876) #1
  %1877 = bitcast i16* %l_1089 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1877) #1
  %1878 = bitcast i32*** %l_1070 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1878) #1
  %1879 = bitcast i32** %l_915 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1879) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_890) #1
  %1880 = bitcast i64*** %l_880 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1880) #1
  %1881 = bitcast i16***** %l_845 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1881) #1
  %1882 = bitcast i16** %l_797 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1882) #1
  %1883 = bitcast i64* %l_754 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1883) #1
  %1884 = bitcast [5 x i32*]* %l_727 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1884) #1
  %1885 = bitcast [9 x [4 x i64*]]* %l_716 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %1885) #1
  %1886 = bitcast [7 x i32**]* %l_709 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %1886) #1
  %cleanup.dest.40 = load i32, i32* %4
  switch i32 %cleanup.dest.40, label %1921 [
    i32 0, label %1887
  ]

; <label>:1887                                    ; preds = %1874
  br label %1919

; <label>:1888                                    ; preds = %110
  %1889 = bitcast [10 x [1 x i32*]]* %l_1105 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1889) #1
  %1890 = bitcast i32* %i41 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1890) #1
  %1891 = bitcast i32* %j42 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1891) #1
  store i32 0, i32* %i41, align 4, !tbaa !1
  br label %1892

; <label>:1892                                    ; preds = %1910, %1888
  %1893 = load i32, i32* %i41, align 4, !tbaa !1
  %1894 = icmp slt i32 %1893, 10
  br i1 %1894, label %1895, label %1913

; <label>:1895                                    ; preds = %1892
  store i32 0, i32* %j42, align 4, !tbaa !1
  br label %1896

; <label>:1896                                    ; preds = %1906, %1895
  %1897 = load i32, i32* %j42, align 4, !tbaa !1
  %1898 = icmp slt i32 %1897, 1
  br i1 %1898, label %1899, label %1909

; <label>:1899                                    ; preds = %1896
  %1900 = load i32, i32* %j42, align 4, !tbaa !1
  %1901 = sext i32 %1900 to i64
  %1902 = load i32, i32* %i41, align 4, !tbaa !1
  %1903 = sext i32 %1902 to i64
  %1904 = getelementptr inbounds [10 x [1 x i32*]], [10 x [1 x i32*]]* %l_1105, i32 0, i64 %1903
  %1905 = getelementptr inbounds [1 x i32*], [1 x i32*]* %1904, i32 0, i64 %1901
  store i32* null, i32** %1905, align 8, !tbaa !5
  br label %1906

; <label>:1906                                    ; preds = %1899
  %1907 = load i32, i32* %j42, align 4, !tbaa !1
  %1908 = add nsw i32 %1907, 1
  store i32 %1908, i32* %j42, align 4, !tbaa !1
  br label %1896

; <label>:1909                                    ; preds = %1896
  br label %1910

; <label>:1910                                    ; preds = %1909
  %1911 = load i32, i32* %i41, align 4, !tbaa !1
  %1912 = add nsw i32 %1911, 1
  store i32 %1912, i32* %i41, align 4, !tbaa !1
  br label %1892

; <label>:1913                                    ; preds = %1892
  %1914 = load i32, i32* @g_1107, align 4, !tbaa !1
  %1915 = add i32 %1914, 1
  store i32 %1915, i32* @g_1107, align 4, !tbaa !1
  %1916 = bitcast i32* %j42 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1916) #1
  %1917 = bitcast i32* %i41 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1917) #1
  %1918 = bitcast [10 x [1 x i32*]]* %l_1105 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1918) #1
  br label %1919

; <label>:1919                                    ; preds = %1913, %1887
  %1920 = load i16*, i16** %l_1110, align 8, !tbaa !5
  store i16* %1920, i16** %1
  store i32 1, i32* %4
  br label %1921

; <label>:1921                                    ; preds = %1919, %1874
  %1922 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1922) #1
  %1923 = bitcast i16** %l_1110 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1923) #1
  %1924 = bitcast i64* %l_1106 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1924) #1
  %1925 = bitcast i32*** %l_1071 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1925) #1
  %1926 = bitcast [10 x i16*****]* %l_1056 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1926) #1
  %1927 = bitcast i8** %l_1041 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1927) #1
  %1928 = bitcast [9 x %union.U0*]* %l_1011 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %1928) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_992) #1
  %1929 = bitcast [7 x i8]* %l_986 to i8*
  call void @llvm.lifetime.end(i64 7, i8* %1929) #1
  %1930 = bitcast i64* %l_972 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1930) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_949) #1
  %1931 = bitcast [3 x i32]* %l_889 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1931) #1
  %1932 = bitcast i32* %l_855 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1932) #1
  %1933 = bitcast i16* %l_806 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1933) #1
  %1934 = bitcast i16* %l_726 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1934) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_717) #1
  %1935 = bitcast i8** %l_95 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1935) #1
  %1936 = bitcast i16** %l_93 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1936) #1
  %1937 = bitcast i16** %l_92 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1937) #1
  %1938 = bitcast [3 x i32]* %l_91 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1938) #1
  %1939 = bitcast i32** %l_87 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1939) #1
  %1940 = bitcast i32* %l_86 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1940) #1
  %1941 = bitcast i16**** %l_75 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1941) #1
  %1942 = bitcast [5 x i16**]* %l_76 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1942) #1
  %1943 = bitcast i16**** %l_74 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1943) #1
  %1944 = bitcast i8** %l_71 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1944) #1
  %1945 = load i16*, i16** %1
  ret i16* %1945

; <label>:1946                                    ; preds = %1836, %1810, %597, %446
  unreachable
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
define internal i32* @func_66(i32* %p_67, i8* %p_68, i8* %p_69, i16 zeroext %p_70) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %l_101 = alloca i16, align 2
  %l_114 = alloca i32, align 4
  %l_115 = alloca i32*, align 8
  %l_117 = alloca i32*, align 8
  %l_120 = alloca [2 x i32], align 4
  %l_121 = alloca i32, align 4
  %l_130 = alloca [9 x [10 x [1 x i16]]], align 16
  %l_176 = alloca [3 x [2 x [7 x i64*]]], align 16
  %l_180 = alloca i16, align 2
  %l_197 = alloca [8 x i32**], align 16
  %l_266 = alloca i32, align 4
  %l_273 = alloca [10 x [4 x i16]], align 16
  %l_276 = alloca i8*, align 8
  %l_379 = alloca i32, align 4
  %l_439 = alloca [10 x [2 x i16**]], align 16
  %l_448 = alloca i32**, align 8
  %l_535 = alloca i16, align 2
  %l_689 = alloca i64, align 8
  %l_690 = alloca i16, align 2
  %l_691 = alloca i32, align 4
  %l_692 = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_100 = alloca i32, align 4
  %l_109 = alloca i8, align 1
  %l_116 = alloca [2 x [6 x [10 x i32**]]], align 16
  %l_118 = alloca [8 x i64*], align 16
  %l_127 = alloca i8*, align 8
  %l_128 = alloca [3 x i8*], align 16
  %l_131 = alloca [10 x i64*], align 16
  %l_138 = alloca i8, align 1
  %l_158 = alloca i16*, align 8
  %l_172 = alloca i32, align 4
  %l_195 = alloca [8 x [7 x i8]], align 16
  %l_198 = alloca i16, align 2
  %l_212 = alloca i64, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %l_133 = alloca i64, align 8
  %i4 = alloca i32, align 4
  %l_145 = alloca [4 x i32], align 16
  %l_146 = alloca [6 x i16], align 2
  %l_147 = alloca i16*, align 8
  %l_153 = alloca i32**, align 8
  %l_154 = alloca [3 x [7 x i32]], align 16
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %l_161 = alloca i32, align 4
  %l_170 = alloca i16*, align 8
  %l_171 = alloca [9 x i16*], align 16
  %l_173 = alloca i32, align 4
  %l_196 = alloca i32**, align 8
  %l_219 = alloca i32, align 4
  %l_221 = alloca [3 x [6 x [8 x i32]]], align 16
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %k9 = alloca i32, align 4
  %l_179 = alloca [8 x [7 x i8]], align 16
  %l_199 = alloca i32, align 4
  %l_215 = alloca i32*, align 8
  %l_216 = alloca i32*, align 8
  %l_217 = alloca i64*, align 8
  %l_220 = alloca i32, align 4
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %l_178 = alloca i64*, align 8
  %l_182 = alloca i32*, align 8
  %l_187 = alloca i8*, align 8
  %6 = alloca i32
  %l_177 = alloca [3 x [2 x i64**]], align 16
  %l_181 = alloca i32, align 4
  %i12 = alloca i32, align 4
  %j13 = alloca i32, align 4
  %7 = alloca %union.U0, align 8
  %l_208 = alloca i32*, align 8
  %i14 = alloca i32, align 4
  %l_223 = alloca i32, align 4
  %l_218 = alloca i32, align 4
  %l_222 = alloca [6 x i32], align 16
  %i16 = alloca i32, align 4
  %l_228 = alloca i16, align 2
  %l_229 = alloca i32, align 4
  %l_239 = alloca i32*, align 8
  %l_240 = alloca i32*, align 8
  %l_242 = alloca i32*, align 8
  %l_244 = alloca [7 x [6 x i16*]], align 16
  %l_252 = alloca i64*, align 8
  %i17 = alloca i32, align 4
  %j18 = alloca i32, align 4
  %l_265 = alloca i8, align 1
  %l_277 = alloca i16, align 2
  %l_278 = alloca i32, align 4
  %l_281 = alloca i32, align 4
  %l_282 = alloca i32, align 4
  %l_294 = alloca i64**, align 8
  %l_329 = alloca i32*, align 8
  %l_357 = alloca i16**, align 8
  %l_360 = alloca i32, align 4
  %l_501 = alloca i64*, align 8
  %l_584 = alloca i64, align 8
  %l_644 = alloca [7 x [7 x [5 x i32]]], align 16
  %i24 = alloca i32, align 4
  %j25 = alloca i32, align 4
  %k26 = alloca i32, align 4
  store i32* %p_67, i32** %2, align 8, !tbaa !5
  store i8* %p_68, i8** %3, align 8, !tbaa !5
  store i8* %p_69, i8** %4, align 8, !tbaa !5
  store i16 %p_70, i16* %5, align 2, !tbaa !10
  %8 = bitcast i16* %l_101 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #1
  store i16 -8, i16* %l_101, align 2, !tbaa !10
  %9 = bitcast i32* %l_114 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -1105938120, i32* %l_114, align 4, !tbaa !1
  %10 = bitcast i32** %l_115 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), i32** %l_115, align 8, !tbaa !5
  %11 = bitcast i32** %l_117 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 1), i32** %l_117, align 8, !tbaa !5
  %12 = bitcast [2 x i32]* %l_120 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %l_121 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 999767617, i32* %l_121, align 4, !tbaa !1
  %14 = bitcast [9 x [10 x [1 x i16]]]* %l_130 to i8*
  call void @llvm.lifetime.start(i64 180, i8* %14) #1
  %15 = bitcast [9 x [10 x [1 x i16]]]* %l_130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast ([9 x [10 x [1 x i16]]]* @func_66.l_130 to i8*), i64 180, i32 16, i1 false)
  %16 = bitcast [3 x [2 x [7 x i64*]]]* %l_176 to i8*
  call void @llvm.lifetime.start(i64 336, i8* %16) #1
  %17 = bitcast [3 x [2 x [7 x i64*]]]* %l_176 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast ([3 x [2 x [7 x i64*]]]* @func_66.l_176 to i8*), i64 336, i32 16, i1 false)
  %18 = bitcast i16* %l_180 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %18) #1
  store i16 -4955, i16* %l_180, align 2, !tbaa !10
  %19 = bitcast [8 x i32**]* %l_197 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %19) #1
  %20 = bitcast [8 x i32**]* %l_197 to i8*
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 64, i32 16, i1 false)
  %21 = bitcast i32* %l_266 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 6, i32* %l_266, align 4, !tbaa !1
  %22 = bitcast [10 x [4 x i16]]* %l_273 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %22) #1
  %23 = bitcast [10 x [4 x i16]]* %l_273 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast ([10 x [4 x i16]]* @func_66.l_273 to i8*), i64 80, i32 16, i1 false)
  %24 = bitcast i8** %l_276 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i8* @g_40, i8** %l_276, align 8, !tbaa !5
  %25 = bitcast i32* %l_379 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 1, i32* %l_379, align 4, !tbaa !1
  %26 = bitcast [10 x [2 x i16**]]* %l_439 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %26) #1
  %27 = bitcast [10 x [2 x i16**]]* %l_439 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast ([10 x [2 x i16**]]* @func_66.l_439 to i8*), i64 160, i32 16, i1 false)
  %28 = bitcast i32*** %l_448 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i32** null, i32*** %l_448, align 8, !tbaa !5
  %29 = bitcast i16* %l_535 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %29) #1
  store i16 19065, i16* %l_535, align 2, !tbaa !10
  %30 = bitcast i64* %l_689 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i64 0, i64* %l_689, align 8, !tbaa !7
  %31 = bitcast i16* %l_690 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %31) #1
  store i16 -1, i16* %l_690, align 2, !tbaa !10
  %32 = bitcast i32* %l_691 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 2, i32* %l_691, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_692) #1
  store i8 -6, i8* %l_692, align 1, !tbaa !9
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %36

; <label>:36                                      ; preds = %43, %0
  %37 = load i32, i32* %i, align 4, !tbaa !1
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %46

; <label>:39                                      ; preds = %36
  %40 = load i32, i32* %i, align 4, !tbaa !1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %l_120, i32 0, i64 %41
  store i32 -1, i32* %42, align 4, !tbaa !1
  br label %43

; <label>:43                                      ; preds = %39
  %44 = load i32, i32* %i, align 4, !tbaa !1
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %i, align 4, !tbaa !1
  br label %36

; <label>:46                                      ; preds = %36
  store i8 24, i8* @g_9, align 1, !tbaa !9
  br label %47

; <label>:47                                      ; preds = %1050, %46
  %48 = load i8, i8* @g_9, align 1, !tbaa !9
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 19
  br i1 %50, label %51, label %1053

; <label>:51                                      ; preds = %47
  %52 = bitcast i32* %l_100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  store i32 -1, i32* %l_100, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_109) #1
  store i8 0, i8* %l_109, align 1, !tbaa !9
  %53 = bitcast [2 x [6 x [10 x i32**]]]* %l_116 to i8*
  call void @llvm.lifetime.start(i64 960, i8* %53) #1
  %54 = getelementptr inbounds [2 x [6 x [10 x i32**]]], [2 x [6 x [10 x i32**]]]* %l_116, i64 0, i64 0
  %55 = getelementptr inbounds [6 x [10 x i32**]], [6 x [10 x i32**]]* %54, i64 0, i64 0
  %56 = getelementptr inbounds [10 x i32**], [10 x i32**]* %55, i64 0, i64 0
  store i32** @g_18, i32*** %56, !tbaa !5
  %57 = getelementptr inbounds i32**, i32*** %56, i64 1
  store i32** %l_115, i32*** %57, !tbaa !5
  %58 = getelementptr inbounds i32**, i32*** %57, i64 1
  store i32** %l_115, i32*** %58, !tbaa !5
  %59 = getelementptr inbounds i32**, i32*** %58, i64 1
  store i32** %l_115, i32*** %59, !tbaa !5
  %60 = getelementptr inbounds i32**, i32*** %59, i64 1
  store i32** @g_18, i32*** %60, !tbaa !5
  %61 = getelementptr inbounds i32**, i32*** %60, i64 1
  store i32** @g_18, i32*** %61, !tbaa !5
  %62 = getelementptr inbounds i32**, i32*** %61, i64 1
  store i32** null, i32*** %62, !tbaa !5
  %63 = getelementptr inbounds i32**, i32*** %62, i64 1
  store i32** %l_115, i32*** %63, !tbaa !5
  %64 = getelementptr inbounds i32**, i32*** %63, i64 1
  store i32** null, i32*** %64, !tbaa !5
  %65 = getelementptr inbounds i32**, i32*** %64, i64 1
  store i32** @g_18, i32*** %65, !tbaa !5
  %66 = getelementptr inbounds [10 x i32**], [10 x i32**]* %55, i64 1
  %67 = getelementptr inbounds [10 x i32**], [10 x i32**]* %66, i64 0, i64 0
  store i32** null, i32*** %67, !tbaa !5
  %68 = getelementptr inbounds i32**, i32*** %67, i64 1
  store i32** @g_18, i32*** %68, !tbaa !5
  %69 = getelementptr inbounds i32**, i32*** %68, i64 1
  store i32** @g_18, i32*** %69, !tbaa !5
  %70 = getelementptr inbounds i32**, i32*** %69, i64 1
  store i32** null, i32*** %70, !tbaa !5
  %71 = getelementptr inbounds i32**, i32*** %70, i64 1
  store i32** null, i32*** %71, !tbaa !5
  %72 = getelementptr inbounds i32**, i32*** %71, i64 1
  store i32** @g_18, i32*** %72, !tbaa !5
  %73 = getelementptr inbounds i32**, i32*** %72, i64 1
  store i32** null, i32*** %73, !tbaa !5
  %74 = getelementptr inbounds i32**, i32*** %73, i64 1
  store i32** %l_115, i32*** %74, !tbaa !5
  %75 = getelementptr inbounds i32**, i32*** %74, i64 1
  store i32** @g_18, i32*** %75, !tbaa !5
  %76 = getelementptr inbounds i32**, i32*** %75, i64 1
  store i32** @g_18, i32*** %76, !tbaa !5
  %77 = getelementptr inbounds [10 x i32**], [10 x i32**]* %66, i64 1
  %78 = getelementptr inbounds [10 x i32**], [10 x i32**]* %77, i64 0, i64 0
  store i32** %l_115, i32*** %78, !tbaa !5
  %79 = getelementptr inbounds i32**, i32*** %78, i64 1
  store i32** null, i32*** %79, !tbaa !5
  %80 = getelementptr inbounds i32**, i32*** %79, i64 1
  store i32** %l_115, i32*** %80, !tbaa !5
  %81 = getelementptr inbounds i32**, i32*** %80, i64 1
  store i32** null, i32*** %81, !tbaa !5
  %82 = getelementptr inbounds i32**, i32*** %81, i64 1
  store i32** @g_18, i32*** %82, !tbaa !5
  %83 = getelementptr inbounds i32**, i32*** %82, i64 1
  store i32** @g_18, i32*** %83, !tbaa !5
  %84 = getelementptr inbounds i32**, i32*** %83, i64 1
  store i32** %l_115, i32*** %84, !tbaa !5
  %85 = getelementptr inbounds i32**, i32*** %84, i64 1
  store i32** @g_18, i32*** %85, !tbaa !5
  %86 = getelementptr inbounds i32**, i32*** %85, i64 1
  store i32** null, i32*** %86, !tbaa !5
  %87 = getelementptr inbounds i32**, i32*** %86, i64 1
  store i32** @g_18, i32*** %87, !tbaa !5
  %88 = getelementptr inbounds [10 x i32**], [10 x i32**]* %77, i64 1
  %89 = getelementptr inbounds [10 x i32**], [10 x i32**]* %88, i64 0, i64 0
  store i32** null, i32*** %89, !tbaa !5
  %90 = getelementptr inbounds i32**, i32*** %89, i64 1
  store i32** @g_18, i32*** %90, !tbaa !5
  %91 = getelementptr inbounds i32**, i32*** %90, i64 1
  store i32** @g_18, i32*** %91, !tbaa !5
  %92 = getelementptr inbounds i32**, i32*** %91, i64 1
  store i32** %l_115, i32*** %92, !tbaa !5
  %93 = getelementptr inbounds i32**, i32*** %92, i64 1
  store i32** %l_115, i32*** %93, !tbaa !5
  %94 = getelementptr inbounds i32**, i32*** %93, i64 1
  store i32** %l_115, i32*** %94, !tbaa !5
  %95 = getelementptr inbounds i32**, i32*** %94, i64 1
  store i32** @g_18, i32*** %95, !tbaa !5
  %96 = getelementptr inbounds i32**, i32*** %95, i64 1
  store i32** null, i32*** %96, !tbaa !5
  %97 = getelementptr inbounds i32**, i32*** %96, i64 1
  store i32** null, i32*** %97, !tbaa !5
  %98 = getelementptr inbounds i32**, i32*** %97, i64 1
  store i32** @g_18, i32*** %98, !tbaa !5
  %99 = getelementptr inbounds [10 x i32**], [10 x i32**]* %88, i64 1
  %100 = getelementptr inbounds [10 x i32**], [10 x i32**]* %99, i64 0, i64 0
  store i32** %l_115, i32*** %100, !tbaa !5
  %101 = getelementptr inbounds i32**, i32*** %100, i64 1
  store i32** %l_115, i32*** %101, !tbaa !5
  %102 = getelementptr inbounds i32**, i32*** %101, i64 1
  store i32** @g_18, i32*** %102, !tbaa !5
  %103 = getelementptr inbounds i32**, i32*** %102, i64 1
  store i32** @g_18, i32*** %103, !tbaa !5
  %104 = getelementptr inbounds i32**, i32*** %103, i64 1
  store i32** %l_115, i32*** %104, !tbaa !5
  %105 = getelementptr inbounds i32**, i32*** %104, i64 1
  store i32** %l_115, i32*** %105, !tbaa !5
  %106 = getelementptr inbounds i32**, i32*** %105, i64 1
  store i32** @g_18, i32*** %106, !tbaa !5
  %107 = getelementptr inbounds i32**, i32*** %106, i64 1
  store i32** @g_18, i32*** %107, !tbaa !5
  %108 = getelementptr inbounds i32**, i32*** %107, i64 1
  store i32** null, i32*** %108, !tbaa !5
  %109 = getelementptr inbounds i32**, i32*** %108, i64 1
  store i32** null, i32*** %109, !tbaa !5
  %110 = getelementptr inbounds [10 x i32**], [10 x i32**]* %99, i64 1
  %111 = getelementptr inbounds [10 x i32**], [10 x i32**]* %110, i64 0, i64 0
  store i32** @g_18, i32*** %111, !tbaa !5
  %112 = getelementptr inbounds i32**, i32*** %111, i64 1
  store i32** null, i32*** %112, !tbaa !5
  %113 = getelementptr inbounds i32**, i32*** %112, i64 1
  store i32** %l_115, i32*** %113, !tbaa !5
  %114 = getelementptr inbounds i32**, i32*** %113, i64 1
  store i32** @g_18, i32*** %114, !tbaa !5
  %115 = getelementptr inbounds i32**, i32*** %114, i64 1
  store i32** null, i32*** %115, !tbaa !5
  %116 = getelementptr inbounds i32**, i32*** %115, i64 1
  store i32** @g_18, i32*** %116, !tbaa !5
  %117 = getelementptr inbounds i32**, i32*** %116, i64 1
  store i32** %l_115, i32*** %117, !tbaa !5
  %118 = getelementptr inbounds i32**, i32*** %117, i64 1
  store i32** null, i32*** %118, !tbaa !5
  %119 = getelementptr inbounds i32**, i32*** %118, i64 1
  store i32** %l_115, i32*** %119, !tbaa !5
  %120 = getelementptr inbounds i32**, i32*** %119, i64 1
  store i32** @g_18, i32*** %120, !tbaa !5
  %121 = getelementptr inbounds [6 x [10 x i32**]], [6 x [10 x i32**]]* %54, i64 1
  %122 = getelementptr inbounds [6 x [10 x i32**]], [6 x [10 x i32**]]* %121, i64 0, i64 0
  %123 = getelementptr inbounds [10 x i32**], [10 x i32**]* %122, i64 0, i64 0
  store i32** @g_18, i32*** %123, !tbaa !5
  %124 = getelementptr inbounds i32**, i32*** %123, i64 1
  store i32** null, i32*** %124, !tbaa !5
  %125 = getelementptr inbounds i32**, i32*** %124, i64 1
  store i32** %l_115, i32*** %125, !tbaa !5
  %126 = getelementptr inbounds i32**, i32*** %125, i64 1
  store i32** null, i32*** %126, !tbaa !5
  %127 = getelementptr inbounds i32**, i32*** %126, i64 1
  store i32** %l_115, i32*** %127, !tbaa !5
  %128 = getelementptr inbounds i32**, i32*** %127, i64 1
  store i32** %l_115, i32*** %128, !tbaa !5
  %129 = getelementptr inbounds i32**, i32*** %128, i64 1
  store i32** @g_18, i32*** %129, !tbaa !5
  %130 = getelementptr inbounds i32**, i32*** %129, i64 1
  store i32** %l_115, i32*** %130, !tbaa !5
  %131 = getelementptr inbounds i32**, i32*** %130, i64 1
  store i32** %l_115, i32*** %131, !tbaa !5
  %132 = getelementptr inbounds i32**, i32*** %131, i64 1
  store i32** null, i32*** %132, !tbaa !5
  %133 = getelementptr inbounds [10 x i32**], [10 x i32**]* %122, i64 1
  %134 = getelementptr inbounds [10 x i32**], [10 x i32**]* %133, i64 0, i64 0
  store i32** %l_115, i32*** %134, !tbaa !5
  %135 = getelementptr inbounds i32**, i32*** %134, i64 1
  store i32** @g_18, i32*** %135, !tbaa !5
  %136 = getelementptr inbounds i32**, i32*** %135, i64 1
  store i32** %l_115, i32*** %136, !tbaa !5
  %137 = getelementptr inbounds i32**, i32*** %136, i64 1
  store i32** %l_115, i32*** %137, !tbaa !5
  %138 = getelementptr inbounds i32**, i32*** %137, i64 1
  store i32** null, i32*** %138, !tbaa !5
  %139 = getelementptr inbounds i32**, i32*** %138, i64 1
  store i32** %l_115, i32*** %139, !tbaa !5
  %140 = getelementptr inbounds i32**, i32*** %139, i64 1
  store i32** @g_18, i32*** %140, !tbaa !5
  %141 = getelementptr inbounds i32**, i32*** %140, i64 1
  store i32** null, i32*** %141, !tbaa !5
  %142 = getelementptr inbounds i32**, i32*** %141, i64 1
  store i32** null, i32*** %142, !tbaa !5
  %143 = getelementptr inbounds i32**, i32*** %142, i64 1
  store i32** null, i32*** %143, !tbaa !5
  %144 = getelementptr inbounds [10 x i32**], [10 x i32**]* %133, i64 1
  %145 = getelementptr inbounds [10 x i32**], [10 x i32**]* %144, i64 0, i64 0
  store i32** null, i32*** %145, !tbaa !5
  %146 = getelementptr inbounds i32**, i32*** %145, i64 1
  store i32** @g_18, i32*** %146, !tbaa !5
  %147 = getelementptr inbounds i32**, i32*** %146, i64 1
  store i32** @g_18, i32*** %147, !tbaa !5
  %148 = getelementptr inbounds i32**, i32*** %147, i64 1
  store i32** %l_115, i32*** %148, !tbaa !5
  %149 = getelementptr inbounds i32**, i32*** %148, i64 1
  store i32** @g_18, i32*** %149, !tbaa !5
  %150 = getelementptr inbounds i32**, i32*** %149, i64 1
  store i32** @g_18, i32*** %150, !tbaa !5
  %151 = getelementptr inbounds i32**, i32*** %150, i64 1
  store i32** null, i32*** %151, !tbaa !5
  %152 = getelementptr inbounds i32**, i32*** %151, i64 1
  store i32** %l_115, i32*** %152, !tbaa !5
  %153 = getelementptr inbounds i32**, i32*** %152, i64 1
  store i32** @g_18, i32*** %153, !tbaa !5
  %154 = getelementptr inbounds i32**, i32*** %153, i64 1
  store i32** @g_18, i32*** %154, !tbaa !5
  %155 = getelementptr inbounds [10 x i32**], [10 x i32**]* %144, i64 1
  %156 = getelementptr inbounds [10 x i32**], [10 x i32**]* %155, i64 0, i64 0
  store i32** %l_115, i32*** %156, !tbaa !5
  %157 = getelementptr inbounds i32**, i32*** %156, i64 1
  store i32** %l_115, i32*** %157, !tbaa !5
  %158 = getelementptr inbounds i32**, i32*** %157, i64 1
  store i32** @g_18, i32*** %158, !tbaa !5
  %159 = getelementptr inbounds i32**, i32*** %158, i64 1
  store i32** null, i32*** %159, !tbaa !5
  %160 = getelementptr inbounds i32**, i32*** %159, i64 1
  store i32** %l_115, i32*** %160, !tbaa !5
  %161 = getelementptr inbounds i32**, i32*** %160, i64 1
  store i32** @g_18, i32*** %161, !tbaa !5
  %162 = getelementptr inbounds i32**, i32*** %161, i64 1
  store i32** %l_115, i32*** %162, !tbaa !5
  %163 = getelementptr inbounds i32**, i32*** %162, i64 1
  store i32** %l_115, i32*** %163, !tbaa !5
  %164 = getelementptr inbounds i32**, i32*** %163, i64 1
  store i32** @g_18, i32*** %164, !tbaa !5
  %165 = getelementptr inbounds i32**, i32*** %164, i64 1
  store i32** %l_115, i32*** %165, !tbaa !5
  %166 = getelementptr inbounds [10 x i32**], [10 x i32**]* %155, i64 1
  %167 = getelementptr inbounds [10 x i32**], [10 x i32**]* %166, i64 0, i64 0
  store i32** null, i32*** %167, !tbaa !5
  %168 = getelementptr inbounds i32**, i32*** %167, i64 1
  store i32** %l_115, i32*** %168, !tbaa !5
  %169 = getelementptr inbounds i32**, i32*** %168, i64 1
  store i32** @g_18, i32*** %169, !tbaa !5
  %170 = getelementptr inbounds i32**, i32*** %169, i64 1
  store i32** %l_115, i32*** %170, !tbaa !5
  %171 = getelementptr inbounds i32**, i32*** %170, i64 1
  store i32** null, i32*** %171, !tbaa !5
  %172 = getelementptr inbounds i32**, i32*** %171, i64 1
  store i32** @g_18, i32*** %172, !tbaa !5
  %173 = getelementptr inbounds i32**, i32*** %172, i64 1
  store i32** null, i32*** %173, !tbaa !5
  %174 = getelementptr inbounds i32**, i32*** %173, i64 1
  store i32** @g_18, i32*** %174, !tbaa !5
  %175 = getelementptr inbounds i32**, i32*** %174, i64 1
  store i32** @g_18, i32*** %175, !tbaa !5
  %176 = getelementptr inbounds i32**, i32*** %175, i64 1
  store i32** %l_115, i32*** %176, !tbaa !5
  %177 = getelementptr inbounds [10 x i32**], [10 x i32**]* %166, i64 1
  %178 = getelementptr inbounds [10 x i32**], [10 x i32**]* %177, i64 0, i64 0
  store i32** @g_18, i32*** %178, !tbaa !5
  %179 = getelementptr inbounds i32**, i32*** %178, i64 1
  store i32** @g_18, i32*** %179, !tbaa !5
  %180 = getelementptr inbounds i32**, i32*** %179, i64 1
  store i32** %l_115, i32*** %180, !tbaa !5
  %181 = getelementptr inbounds i32**, i32*** %180, i64 1
  store i32** @g_18, i32*** %181, !tbaa !5
  %182 = getelementptr inbounds i32**, i32*** %181, i64 1
  store i32** null, i32*** %182, !tbaa !5
  %183 = getelementptr inbounds i32**, i32*** %182, i64 1
  store i32** @g_18, i32*** %183, !tbaa !5
  %184 = getelementptr inbounds i32**, i32*** %183, i64 1
  store i32** null, i32*** %184, !tbaa !5
  %185 = getelementptr inbounds i32**, i32*** %184, i64 1
  store i32** @g_18, i32*** %185, !tbaa !5
  %186 = getelementptr inbounds i32**, i32*** %185, i64 1
  store i32** null, i32*** %186, !tbaa !5
  %187 = getelementptr inbounds i32**, i32*** %186, i64 1
  store i32** null, i32*** %187, !tbaa !5
  %188 = bitcast [8 x i64*]* %l_118 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %188) #1
  %189 = bitcast [8 x i64*]* %l_118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %189, i8* bitcast ([8 x i64*]* @func_66.l_118 to i8*), i64 64, i32 16, i1 false)
  %190 = bitcast i8** %l_127 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %190) #1
  store i8* %l_109, i8** %l_127, align 8, !tbaa !5
  %191 = bitcast [3 x i8*]* %l_128 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %191) #1
  %192 = bitcast [10 x i64*]* %l_131 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %192) #1
  %193 = bitcast [10 x i64*]* %l_131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %193, i8* bitcast ([10 x i64*]* @func_66.l_131 to i8*), i64 80, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_138) #1
  store i8 50, i8* %l_138, align 1, !tbaa !9
  %194 = bitcast i16** %l_158 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %194) #1
  store i16* %l_101, i16** %l_158, align 8, !tbaa !5
  %195 = bitcast i32* %l_172 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %195) #1
  store i32 5, i32* %l_172, align 4, !tbaa !1
  %196 = bitcast [8 x [7 x i8]]* %l_195 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %196) #1
  %197 = bitcast [8 x [7 x i8]]* %l_195 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %197, i8* getelementptr inbounds ([8 x [7 x i8]], [8 x [7 x i8]]* @func_66.l_195, i32 0, i32 0, i32 0), i64 56, i32 16, i1 false)
  %198 = bitcast i16* %l_198 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %198) #1
  store i16 -1, i16* %l_198, align 2, !tbaa !10
  %199 = bitcast i64* %l_212 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %199) #1
  store i64 4, i64* %l_212, align 8, !tbaa !7
  %200 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %200) #1
  %201 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %201) #1
  %202 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %202) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %203

; <label>:203                                     ; preds = %210, %51
  %204 = load i32, i32* %i1, align 4, !tbaa !1
  %205 = icmp slt i32 %204, 3
  br i1 %205, label %206, label %213

; <label>:206                                     ; preds = %203
  %207 = load i32, i32* %i1, align 4, !tbaa !1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [3 x i8*], [3 x i8*]* %l_128, i32 0, i64 %208
  store i8* null, i8** %209, align 8, !tbaa !5
  br label %210

; <label>:210                                     ; preds = %206
  %211 = load i32, i32* %i1, align 4, !tbaa !1
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %i1, align 4, !tbaa !1
  br label %203

; <label>:213                                     ; preds = %203
  %214 = load i8*, i8** %3, align 8, !tbaa !5
  %215 = load i8, i8* %214, align 1, !tbaa !9
  %216 = load i32, i32* %l_100, align 4, !tbaa !1
  %217 = trunc i32 %216 to i8
  %218 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %215, i8 zeroext %217)
  %219 = zext i8 %218 to i32
  %220 = load i16, i16* %l_101, align 2, !tbaa !10
  %221 = zext i16 %220 to i32
  %222 = or i32 %221, %219
  %223 = trunc i32 %222 to i16
  store i16 %223, i16* %l_101, align 2, !tbaa !10
  %224 = zext i16 %223 to i32
  %225 = load i16, i16* %5, align 2, !tbaa !10
  %226 = load i8, i8* %l_109, align 1, !tbaa !9
  %227 = load i32, i32* %l_114, align 4, !tbaa !1
  %228 = sext i32 %227 to i64
  %229 = xor i64 %228, 0
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %l_114, align 4, !tbaa !1
  %231 = load i32*, i32** %2, align 8, !tbaa !5
  %232 = icmp eq i32* %231, getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3)
  %233 = zext i1 %232 to i32
  %234 = load i32*, i32** %l_115, align 8, !tbaa !5
  store i32* %234, i32** %l_115, align 8, !tbaa !5
  %235 = load i32*, i32** %l_117, align 8, !tbaa !5
  store i32* %235, i32** @g_18, align 8, !tbaa !5
  %236 = icmp eq i32* %234, %235
  %237 = zext i1 %236 to i32
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* @g_119, align 8, !tbaa !7
  %240 = or i64 %239, %238
  store i64 %240, i64* @g_119, align 8, !tbaa !7
  %241 = load i16, i16* %5, align 2, !tbaa !10
  %242 = zext i16 %241 to i32
  %243 = icmp sge i32 %233, %242
  %244 = zext i1 %243 to i32
  %245 = load i32*, i32** %2, align 8, !tbaa !5
  %246 = load i32, i32* %245, align 4, !tbaa !1
  %247 = or i32 %244, %246
  %248 = trunc i32 %247 to i16
  %249 = load i16, i16* %5, align 2, !tbaa !10
  %250 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %248, i16 signext %249)
  %251 = sext i16 %250 to i32
  %252 = getelementptr inbounds [2 x i32], [2 x i32]* %l_120, i32 0, i64 0
  store i32 %251, i32* %252, align 4, !tbaa !1
  %253 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), align 4, !tbaa !1
  %254 = call i32 @safe_mod_func_int32_t_s_s(i32 %251, i32 %253)
  %255 = load i32*, i32** %l_115, align 8, !tbaa !5
  %256 = load i32, i32* %255, align 4, !tbaa !1
  %257 = trunc i32 %256 to i8
  %258 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %226, i8 signext %257)
  %259 = sext i8 %258 to i64
  %260 = icmp uge i64 %259, -509922012125209303
  %261 = zext i1 %260 to i32
  %262 = trunc i32 %261 to i8
  %263 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %262, i32 2)
  %264 = sext i8 %263 to i16
  %265 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %225, i16 signext %264)
  %266 = sext i16 %265 to i32
  %267 = xor i32 %266, -1
  %268 = icmp ne i32 %224, %267
  %269 = zext i1 %268 to i32
  %270 = load i32, i32* %l_121, align 4, !tbaa !1
  %271 = or i32 %270, %269
  store i32 %271, i32* %l_121, align 4, !tbaa !1
  %272 = load i16, i16* %5, align 2, !tbaa !10
  %273 = zext i16 %272 to i64
  %274 = load i64, i64* @g_119, align 8, !tbaa !7
  %275 = or i64 %274, %273
  store i64 %275, i64* @g_119, align 8, !tbaa !7
  store i64 %275, i64* getelementptr inbounds ([8 x [3 x [4 x i64]]], [8 x [3 x [4 x i64]]]* @g_122, i32 0, i64 3, i64 2, i64 2), align 8, !tbaa !7
  %276 = load i32*, i32** %l_115, align 8, !tbaa !5
  %277 = load i32, i32* %276, align 4, !tbaa !1
  %278 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), align 4, !tbaa !1
  %279 = load i16, i16* %5, align 2, !tbaa !10
  %280 = trunc i16 %279 to i8
  %281 = load i8*, i8** %3, align 8, !tbaa !5
  %282 = load i8, i8* %281, align 1, !tbaa !9
  %283 = zext i8 %282 to i64
  %284 = trunc i64 %283 to i8
  store i8 %284, i8* %281, align 1, !tbaa !9
  %285 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %280, i8 signext %284)
  %286 = load i8*, i8** %l_127, align 8, !tbaa !5
  store i8 %285, i8* %286, align 1, !tbaa !9
  %287 = sext i8 %285 to i32
  %288 = load i16, i16* @g_94, align 2, !tbaa !10
  %289 = zext i16 %288 to i32
  %290 = icmp sge i32 %287, %289
  %291 = zext i1 %290 to i32
  %292 = load i16, i16* %5, align 2, !tbaa !10
  %293 = zext i16 %292 to i32
  %294 = and i32 %291, %293
  %295 = sext i32 %294 to i64
  %296 = icmp ult i64 1, %295
  %297 = zext i1 %296 to i32
  %298 = icmp sle i32 %278, %297
  %299 = zext i1 %298 to i32
  store i32 %299, i32* @g_129, align 4, !tbaa !1
  %300 = or i32 %277, %299
  %301 = zext i32 %300 to i64
  %302 = icmp eq i64 %301, -9
  %303 = zext i1 %302 to i32
  %304 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), align 4, !tbaa !1
  %305 = and i32 %303, %304
  %306 = trunc i32 %305 to i16
  %307 = load i16, i16* %5, align 2, !tbaa !10
  %308 = zext i16 %307 to i32
  %309 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %306, i32 %308)
  %310 = getelementptr inbounds [9 x [10 x [1 x i16]]], [9 x [10 x [1 x i16]]]* %l_130, i32 0, i64 0
  %311 = getelementptr inbounds [10 x [1 x i16]], [10 x [1 x i16]]* %310, i32 0, i64 0
  %312 = getelementptr inbounds [1 x i16], [1 x i16]* %311, i32 0, i64 0
  %313 = load i16, i16* %312, align 2, !tbaa !10
  %314 = sext i16 %313 to i64
  %315 = load i64, i64* @g_132, align 8, !tbaa !7
  %316 = or i64 %315, %314
  store i64 %316, i64* @g_132, align 8, !tbaa !7
  %317 = icmp sge i64 %275, %316
  %318 = zext i1 %317 to i32
  %319 = icmp sle i32 0, %318
  %320 = zext i1 %319 to i32
  %321 = load i16, i16* @g_23, align 2, !tbaa !10
  %322 = sext i16 %321 to i32
  %323 = and i32 %320, %322
  %324 = load i32*, i32** %l_117, align 8, !tbaa !5
  %325 = load i32, i32* %324, align 4, !tbaa !1
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %372

; <label>:327                                     ; preds = %213
  %328 = bitcast i64* %l_133 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %328) #1
  store i64 3380112984666966036, i64* %l_133, align 8, !tbaa !7
  store i16 0, i16* %5, align 2, !tbaa !10
  br label %329

; <label>:329                                     ; preds = %361, %327
  %330 = load i16, i16* %5, align 2, !tbaa !10
  %331 = zext i16 %330 to i32
  %332 = icmp sle i32 %331, 1
  br i1 %332, label %333, label %366

; <label>:333                                     ; preds = %329
  store i16 0, i16* @g_94, align 2, !tbaa !10
  br label %334

; <label>:334                                     ; preds = %351, %333
  %335 = load i16, i16* @g_94, align 2, !tbaa !10
  %336 = zext i16 %335 to i32
  %337 = icmp sle i32 %336, 1
  br i1 %337, label %338, label %356

; <label>:338                                     ; preds = %334
  store i64 0, i64* @g_119, align 8, !tbaa !7
  br label %339

; <label>:339                                     ; preds = %345, %338
  %340 = load i64, i64* @g_119, align 8, !tbaa !7
  %341 = icmp ule i64 %340, 1
  br i1 %341, label %342, label %348

; <label>:342                                     ; preds = %339
  %343 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %343) #1
  %344 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %344) #1
  br label %348
                                                  ; No predecessors!
  %346 = load i64, i64* @g_119, align 8, !tbaa !7
  %347 = add i64 %346, 1
  store i64 %347, i64* @g_119, align 8, !tbaa !7
  br label %339

; <label>:348                                     ; preds = %342, %339
  %349 = load volatile i8, i8* bitcast (%union.U0* @g_85 to i8*), align 8
  %350 = and i8 %349, -64
  store volatile i8 %350, i8* bitcast (%union.U0* @g_85 to i8*), align 8
  br label %351

; <label>:351                                     ; preds = %348
  %352 = load i16, i16* @g_94, align 2, !tbaa !10
  %353 = zext i16 %352 to i32
  %354 = add nsw i32 %353, 1
  %355 = trunc i32 %354 to i16
  store i16 %355, i16* @g_94, align 2, !tbaa !10
  br label %334

; <label>:356                                     ; preds = %334
  %357 = load i8, i8* %l_138, align 1, !tbaa !9
  %358 = icmp ne i8 %357, 0
  br i1 %358, label %359, label %360

; <label>:359                                     ; preds = %356
  br label %361

; <label>:360                                     ; preds = %356
  br label %361

; <label>:361                                     ; preds = %360, %359
  %362 = load i16, i16* %5, align 2, !tbaa !10
  %363 = zext i16 %362 to i32
  %364 = add nsw i32 %363, 1
  %365 = trunc i32 %364 to i16
  store i16 %365, i16* %5, align 2, !tbaa !10
  br label %329

; <label>:366                                     ; preds = %329
  %367 = load i32*, i32** %2, align 8, !tbaa !5
  %368 = load i32, i32* %367, align 4, !tbaa !1
  %369 = load i32, i32* %l_114, align 4, !tbaa !1
  %370 = and i32 %369, %368
  store i32 %370, i32* %l_114, align 4, !tbaa !1
  %371 = bitcast i64* %l_133 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %371) #1
  br label %477

; <label>:372                                     ; preds = %213
  store i32 0, i32* @g_129, align 4, !tbaa !1
  br label %373

; <label>:373                                     ; preds = %473, %372
  %374 = load i32, i32* @g_129, align 4, !tbaa !1
  %375 = icmp ule i32 %374, 7
  br i1 %375, label %376, label %476

; <label>:376                                     ; preds = %373
  %377 = bitcast [4 x i32]* %l_145 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %377) #1
  %378 = bitcast [4 x i32]* %l_145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %378, i8* bitcast ([4 x i32]* @func_66.l_145 to i8*), i64 16, i32 16, i1 false)
  %379 = bitcast [6 x i16]* %l_146 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %379) #1
  %380 = bitcast i16** %l_147 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %380) #1
  store i16* %l_101, i16** %l_147, align 8, !tbaa !5
  %381 = bitcast i32*** %l_153 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %381) #1
  store i32** %l_115, i32*** %l_153, align 8, !tbaa !5
  %382 = bitcast [3 x [7 x i32]]* %l_154 to i8*
  call void @llvm.lifetime.start(i64 84, i8* %382) #1
  %383 = bitcast [3 x [7 x i32]]* %l_154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %383, i8* bitcast ([3 x [7 x i32]]* @func_66.l_154 to i8*), i64 84, i32 16, i1 false)
  %384 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %384) #1
  %385 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %385) #1
  store i32 0, i32* %i5, align 4, !tbaa !1
  br label %386

; <label>:386                                     ; preds = %393, %376
  %387 = load i32, i32* %i5, align 4, !tbaa !1
  %388 = icmp slt i32 %387, 6
  br i1 %388, label %389, label %396

; <label>:389                                     ; preds = %386
  %390 = load i32, i32* %i5, align 4, !tbaa !1
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [6 x i16], [6 x i16]* %l_146, i32 0, i64 %391
  store i16 847, i16* %392, align 2, !tbaa !10
  br label %393

; <label>:393                                     ; preds = %389
  %394 = load i32, i32* %i5, align 4, !tbaa !1
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %i5, align 4, !tbaa !1
  br label %386

; <label>:396                                     ; preds = %386
  %397 = load i64, i64* @g_119, align 8, !tbaa !7
  %398 = load i32*, i32** %2, align 8, !tbaa !5
  %399 = load i32, i32* %398, align 4, !tbaa !1
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %405, label %401

; <label>:401                                     ; preds = %396
  %402 = load i8, i8* @g_144, align 1, !tbaa !9
  %403 = sext i8 %402 to i32
  %404 = icmp ne i32 %403, 0
  br label %405

; <label>:405                                     ; preds = %401, %396
  %406 = phi i1 [ true, %396 ], [ %404, %401 ]
  %407 = zext i1 %406 to i32
  %408 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 4), align 4, !tbaa !1
  %409 = getelementptr inbounds [4 x i32], [4 x i32]* %l_145, i32 0, i64 0
  %410 = load i32, i32* %409, align 4, !tbaa !1
  %411 = trunc i32 %410 to i16
  %412 = getelementptr inbounds [6 x i16], [6 x i16]* %l_146, i32 0, i64 5
  store i16 %411, i16* %412, align 2, !tbaa !10
  %413 = zext i16 %411 to i32
  %414 = xor i32 %408, %413
  %415 = load i16*, i16** %l_147, align 8, !tbaa !5
  %416 = load i16, i16* %415, align 2, !tbaa !10
  %417 = add i16 %416, -1
  store i16 %417, i16* %415, align 2, !tbaa !10
  %418 = zext i16 %416 to i32
  %419 = icmp sgt i32 %414, %418
  %420 = zext i1 %419 to i32
  %421 = icmp slt i32 %407, %420
  br i1 %421, label %429, label %422

; <label>:422                                     ; preds = %405
  %423 = load i16, i16* %5, align 2, !tbaa !10
  %424 = zext i16 %423 to i64
  %425 = icmp slt i64 %424, 1
  br i1 %425, label %429, label %426

; <label>:426                                     ; preds = %422
  %427 = load i64, i64* @g_119, align 8, !tbaa !7
  %428 = icmp ne i64 %427, 0
  br label %429

; <label>:429                                     ; preds = %426, %422, %405
  %430 = phi i1 [ true, %422 ], [ true, %405 ], [ %428, %426 ]
  %431 = zext i1 %430 to i32
  %432 = load i32**, i32*** %l_153, align 8, !tbaa !5
  %433 = icmp eq i32** %432, %2
  %434 = zext i1 %433 to i32
  %435 = load i32*, i32** @g_18, align 8, !tbaa !5
  %436 = load i32, i32* %435, align 4, !tbaa !1
  %437 = or i32 %434, %436
  %438 = sext i32 %437 to i64
  %439 = load i64, i64* @g_132, align 8, !tbaa !7
  %440 = xor i64 %438, %439
  %441 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), align 4, !tbaa !1
  %442 = sext i32 %441 to i64
  %443 = and i64 %440, %442
  %444 = trunc i64 %443 to i32
  %445 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext -29387, i32 %444)
  %446 = zext i16 %445 to i32
  %447 = call i32 @safe_add_func_uint32_t_u_u(i32 -2118812775, i32 %446)
  %448 = load i8, i8* @g_40, align 1, !tbaa !9
  %449 = zext i8 %448 to i32
  %450 = load i16, i16* %5, align 2, !tbaa !10
  %451 = zext i16 %450 to i32
  %452 = icmp slt i32 %449, %451
  %453 = zext i1 %452 to i32
  %454 = load i16, i16* %5, align 2, !tbaa !10
  %455 = zext i16 %454 to i32
  %456 = icmp ne i32 %453, %455
  %457 = zext i1 %456 to i32
  %458 = sext i32 %457 to i64
  %459 = or i64 %397, %458
  %460 = getelementptr inbounds [3 x [7 x i32]], [3 x [7 x i32]]* %l_154, i32 0, i64 1
  %461 = getelementptr inbounds [7 x i32], [7 x i32]* %460, i32 0, i64 0
  %462 = load i32, i32* %461, align 4, !tbaa !1
  %463 = sext i32 %462 to i64
  %464 = xor i64 %463, %459
  %465 = trunc i64 %464 to i32
  store i32 %465, i32* %461, align 4, !tbaa !1
  %466 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %466) #1
  %467 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %467) #1
  %468 = bitcast [3 x [7 x i32]]* %l_154 to i8*
  call void @llvm.lifetime.end(i64 84, i8* %468) #1
  %469 = bitcast i32*** %l_153 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %469) #1
  %470 = bitcast i16** %l_147 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %470) #1
  %471 = bitcast [6 x i16]* %l_146 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %471) #1
  %472 = bitcast [4 x i32]* %l_145 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %472) #1
  br label %473

; <label>:473                                     ; preds = %429
  %474 = load i32, i32* @g_129, align 4, !tbaa !1
  %475 = add i32 %474, 1
  store i32 %475, i32* @g_129, align 4, !tbaa !1
  br label %373

; <label>:476                                     ; preds = %373
  br label %477

; <label>:477                                     ; preds = %476, %366
  store i16 29, i16* @g_94, align 2, !tbaa !10
  br label %478

; <label>:478                                     ; preds = %1028, %477
  %479 = load i16, i16* @g_94, align 2, !tbaa !10
  %480 = zext i16 %479 to i32
  %481 = icmp slt i32 %480, 22
  br i1 %481, label %482, label %1033

; <label>:482                                     ; preds = %478
  %483 = bitcast i32* %l_161 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %483) #1
  store i32 -876080194, i32* %l_161, align 4, !tbaa !1
  %484 = bitcast i16** %l_170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %484) #1
  store i16* null, i16** %l_170, align 8, !tbaa !5
  %485 = bitcast [9 x i16*]* %l_171 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %485) #1
  %486 = bitcast i32* %l_173 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %486) #1
  store i32 86352980, i32* %l_173, align 4, !tbaa !1
  %487 = bitcast i32*** %l_196 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %487) #1
  store i32** @g_18, i32*** %l_196, align 8, !tbaa !5
  %488 = bitcast i32* %l_219 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %488) #1
  store i32 -7, i32* %l_219, align 4, !tbaa !1
  %489 = bitcast [3 x [6 x [8 x i32]]]* %l_221 to i8*
  call void @llvm.lifetime.start(i64 576, i8* %489) #1
  %490 = bitcast [3 x [6 x [8 x i32]]]* %l_221 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %490, i8* bitcast ([3 x [6 x [8 x i32]]]* @func_66.l_221 to i8*), i64 576, i32 16, i1 false)
  %491 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %491) #1
  %492 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %492) #1
  %493 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %493) #1
  store i32 0, i32* %i7, align 4, !tbaa !1
  br label %494

; <label>:494                                     ; preds = %504, %482
  %495 = load i32, i32* %i7, align 4, !tbaa !1
  %496 = icmp slt i32 %495, 9
  br i1 %496, label %497, label %507

; <label>:497                                     ; preds = %494
  %498 = getelementptr inbounds [9 x [10 x [1 x i16]]], [9 x [10 x [1 x i16]]]* %l_130, i32 0, i64 5
  %499 = getelementptr inbounds [10 x [1 x i16]], [10 x [1 x i16]]* %498, i32 0, i64 1
  %500 = getelementptr inbounds [1 x i16], [1 x i16]* %499, i32 0, i64 0
  %501 = load i32, i32* %i7, align 4, !tbaa !1
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [9 x i16*], [9 x i16*]* %l_171, i32 0, i64 %502
  store i16* %500, i16** %503, align 8, !tbaa !5
  br label %504

; <label>:504                                     ; preds = %497
  %505 = load i32, i32* %i7, align 4, !tbaa !1
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %i7, align 4, !tbaa !1
  br label %494

; <label>:507                                     ; preds = %494
  %508 = load i16*, i16** %l_158, align 8, !tbaa !5
  %509 = icmp ne i16* %l_101, %508
  br i1 %509, label %510, label %575

; <label>:510                                     ; preds = %507
  %511 = load i64, i64* getelementptr inbounds ([8 x [3 x [4 x i64]]], [8 x [3 x [4 x i64]]]* @g_122, i32 0, i64 3, i64 2, i64 2), align 8, !tbaa !7
  %512 = load i8*, i8** %3, align 8, !tbaa !5
  %513 = load i8, i8* %512, align 1, !tbaa !9
  %514 = load i16, i16* %5, align 2, !tbaa !10
  %515 = load i32*, i32** %l_117, align 8, !tbaa !5
  %516 = load i32, i32* %515, align 4, !tbaa !1
  %517 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %514, i32 %516)
  %518 = zext i16 %517 to i64
  %519 = icmp ult i64 %518, 4294967295
  %520 = zext i1 %519 to i32
  %521 = sext i32 %520 to i64
  %522 = load i32*, i32** %l_115, align 8, !tbaa !5
  %523 = load i32, i32* %522, align 4, !tbaa !1
  %524 = sext i32 %523 to i64
  %525 = call i64 @safe_div_func_uint64_t_u_u(i64 %521, i64 %524)
  %526 = trunc i64 %525 to i8
  %527 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %513, i8 zeroext %526)
  %528 = load i8*, i8** %l_127, align 8, !tbaa !5
  store i8 %527, i8* %528, align 1, !tbaa !9
  %529 = sext i8 %527 to i32
  %530 = load i8*, i8** %3, align 8, !tbaa !5
  %531 = load i8, i8* %530, align 1, !tbaa !9
  %532 = zext i8 %531 to i32
  %533 = or i32 %529, %532
  %534 = trunc i32 %533 to i8
  %535 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %534, i32 2)
  %536 = load i8, i8* @g_144, align 1, !tbaa !9
  %537 = load i8*, i8** %3, align 8, !tbaa !5
  store i8 %536, i8* %537, align 1, !tbaa !9
  %538 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), align 4, !tbaa !1
  %539 = sext i32 %538 to i64
  %540 = and i64 %539, 3
  %541 = icmp eq i64 %540, 1
  %542 = zext i1 %541 to i32
  %543 = icmp ult i32 -876080194, %542
  %544 = zext i1 %543 to i32
  %545 = load i16*, i16** @g_73, align 8, !tbaa !5
  %546 = load i16, i16* %545, align 2, !tbaa !10
  %547 = sext i16 %546 to i32
  %548 = and i32 %547, %544
  %549 = trunc i32 %548 to i16
  store i16 %549, i16* %545, align 2, !tbaa !10
  %550 = sext i16 %549 to i32
  %551 = load i32, i32* %l_172, align 4, !tbaa !1
  %552 = and i32 %551, %550
  store i32 %552, i32* %l_172, align 4, !tbaa !1
  %553 = zext i32 %552 to i64
  %554 = xor i64 %511, %553
  %555 = icmp sgt i64 0, %554
  %556 = zext i1 %555 to i32
  %557 = load i32*, i32** %l_117, align 8, !tbaa !5
  %558 = load i32, i32* %557, align 4, !tbaa !1
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %561, label %560

; <label>:560                                     ; preds = %510
  br label %561

; <label>:561                                     ; preds = %560, %510
  %562 = phi i1 [ true, %510 ], [ false, %560 ]
  %563 = zext i1 %562 to i32
  %564 = load i16, i16* %5, align 2, !tbaa !10
  %565 = zext i16 %564 to i32
  %566 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext 5054, i32 %565)
  %567 = sext i16 %566 to i32
  %568 = load i16, i16* %5, align 2, !tbaa !10
  %569 = zext i16 %568 to i32
  %570 = icmp sgt i32 %567, %569
  br i1 %570, label %571, label %575

; <label>:571                                     ; preds = %561
  %572 = load i16, i16* %5, align 2, !tbaa !10
  %573 = zext i16 %572 to i32
  %574 = icmp ne i32 %573, 0
  br label %575

; <label>:575                                     ; preds = %571, %561, %507
  %576 = phi i1 [ false, %561 ], [ false, %507 ], [ %574, %571 ]
  %577 = zext i1 %576 to i32
  %578 = load i32, i32* %l_114, align 4, !tbaa !1
  %579 = and i32 %578, %577
  store i32 %579, i32* %l_114, align 4, !tbaa !1
  store i16 0, i16* @g_23, align 2, !tbaa !10
  br label %580

; <label>:580                                     ; preds = %990, %575
  %581 = load i16, i16* @g_23, align 2, !tbaa !10
  %582 = sext i16 %581 to i32
  %583 = icmp sle i32 %582, 2
  br i1 %583, label %584, label %995

; <label>:584                                     ; preds = %580
  %585 = bitcast [8 x [7 x i8]]* %l_179 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %585) #1
  %586 = bitcast [8 x [7 x i8]]* %l_179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %586, i8* getelementptr inbounds ([8 x [7 x i8]], [8 x [7 x i8]]* @func_66.l_179, i32 0, i32 0, i32 0), i64 56, i32 16, i1 false)
  %587 = bitcast i32* %l_199 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %587) #1
  store i32 -899770645, i32* %l_199, align 4, !tbaa !1
  %588 = bitcast i32** %l_215 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %588) #1
  %589 = getelementptr inbounds [2 x i32], [2 x i32]* %l_120, i32 0, i64 0
  store i32* %589, i32** %l_215, align 8, !tbaa !5
  %590 = bitcast i32** %l_216 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %590) #1
  %591 = getelementptr inbounds [2 x i32], [2 x i32]* %l_120, i32 0, i64 0
  store i32* %591, i32** %l_216, align 8, !tbaa !5
  %592 = bitcast i64** %l_217 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %592) #1
  store i64* %l_212, i64** %l_217, align 8, !tbaa !5
  %593 = bitcast i32* %l_220 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %593) #1
  store i32 1, i32* %l_220, align 4, !tbaa !1
  %594 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %594) #1
  %595 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %595) #1
  store i32 0, i32* %l_121, align 4, !tbaa !1
  br label %596

; <label>:596                                     ; preds = %784, %584
  %597 = load i32, i32* %l_121, align 4, !tbaa !1
  %598 = icmp sle i32 %597, 2
  br i1 %598, label %599, label %787

; <label>:599                                     ; preds = %596
  %600 = bitcast i64** %l_178 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %600) #1
  store i64* @g_132, i64** %l_178, align 8, !tbaa !5
  %601 = bitcast i32** %l_182 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %601) #1
  %602 = getelementptr inbounds [2 x i32], [2 x i32]* %l_120, i32 0, i64 1
  store i32* %602, i32** %l_182, align 8, !tbaa !5
  %603 = bitcast i8** %l_187 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %603) #1
  store i8* null, i8** %l_187, align 8, !tbaa !5
  store i32 1299008435, i32* %l_173, align 4, !tbaa !1
  br i1 true, label %604, label %610

; <label>:604                                     ; preds = %599
  %605 = load i32*, i32** %2, align 8, !tbaa !5
  %606 = load i32, i32* %605, align 4, !tbaa !1
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %609

; <label>:608                                     ; preds = %604
  store i32 35, i32* %6
  br label %779

; <label>:609                                     ; preds = %604
  br label %683

; <label>:610                                     ; preds = %599
  %611 = bitcast [3 x [2 x i64**]]* %l_177 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %611) #1
  %612 = getelementptr inbounds [3 x [2 x i64**]], [3 x [2 x i64**]]* %l_177, i64 0, i64 0
  %613 = getelementptr inbounds [2 x i64**], [2 x i64**]* %612, i64 0, i64 0
  %614 = getelementptr inbounds [3 x [2 x [7 x i64*]]], [3 x [2 x [7 x i64*]]]* %l_176, i32 0, i64 0
  %615 = getelementptr inbounds [2 x [7 x i64*]], [2 x [7 x i64*]]* %614, i32 0, i64 1
  %616 = getelementptr inbounds [7 x i64*], [7 x i64*]* %615, i32 0, i64 2
  store i64** %616, i64*** %613, !tbaa !5
  %617 = getelementptr inbounds i64**, i64*** %613, i64 1
  %618 = getelementptr inbounds [10 x i64*], [10 x i64*]* %l_131, i32 0, i64 9
  store i64** %618, i64*** %617, !tbaa !5
  %619 = getelementptr inbounds [2 x i64**], [2 x i64**]* %612, i64 1
  %620 = getelementptr inbounds [2 x i64**], [2 x i64**]* %619, i64 0, i64 0
  %621 = getelementptr inbounds [3 x [2 x [7 x i64*]]], [3 x [2 x [7 x i64*]]]* %l_176, i32 0, i64 0
  %622 = getelementptr inbounds [2 x [7 x i64*]], [2 x [7 x i64*]]* %621, i32 0, i64 1
  %623 = getelementptr inbounds [7 x i64*], [7 x i64*]* %622, i32 0, i64 2
  store i64** %623, i64*** %620, !tbaa !5
  %624 = getelementptr inbounds i64**, i64*** %620, i64 1
  %625 = getelementptr inbounds [3 x [2 x [7 x i64*]]], [3 x [2 x [7 x i64*]]]* %l_176, i32 0, i64 0
  %626 = getelementptr inbounds [2 x [7 x i64*]], [2 x [7 x i64*]]* %625, i32 0, i64 1
  %627 = getelementptr inbounds [7 x i64*], [7 x i64*]* %626, i32 0, i64 2
  store i64** %627, i64*** %624, !tbaa !5
  %628 = getelementptr inbounds [2 x i64**], [2 x i64**]* %619, i64 1
  %629 = getelementptr inbounds [2 x i64**], [2 x i64**]* %628, i64 0, i64 0
  %630 = getelementptr inbounds [10 x i64*], [10 x i64*]* %l_131, i32 0, i64 9
  store i64** %630, i64*** %629, !tbaa !5
  %631 = getelementptr inbounds i64**, i64*** %629, i64 1
  %632 = getelementptr inbounds [3 x [2 x [7 x i64*]]], [3 x [2 x [7 x i64*]]]* %l_176, i32 0, i64 0
  %633 = getelementptr inbounds [2 x [7 x i64*]], [2 x [7 x i64*]]* %632, i32 0, i64 1
  %634 = getelementptr inbounds [7 x i64*], [7 x i64*]* %633, i32 0, i64 2
  store i64** %634, i64*** %631, !tbaa !5
  %635 = bitcast i32* %l_181 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %635) #1
  store i32 2, i32* %l_181, align 4, !tbaa !1
  %636 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %636) #1
  %637 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %637) #1
  %638 = load i16, i16* %5, align 2, !tbaa !10
  %639 = zext i16 %638 to i32
  %640 = icmp ne i32 %639, 0
  %641 = zext i1 %640 to i32
  %642 = load i32, i32* %l_173, align 4, !tbaa !1
  %643 = getelementptr inbounds [3 x [2 x [7 x i64*]]], [3 x [2 x [7 x i64*]]]* %l_176, i32 0, i64 0
  %644 = getelementptr inbounds [2 x [7 x i64*]], [2 x [7 x i64*]]* %643, i32 0, i64 1
  %645 = getelementptr inbounds [7 x i64*], [7 x i64*]* %644, i32 0, i64 2
  %646 = load i64*, i64** %645, align 8, !tbaa !5
  store i64* %646, i64** %l_178, align 8, !tbaa !5
  %647 = icmp ne i64* %646, null
  %648 = zext i1 %647 to i32
  %649 = xor i32 %642, %648
  %650 = getelementptr inbounds [8 x [7 x i8]], [8 x [7 x i8]]* %l_179, i32 0, i64 5
  %651 = getelementptr inbounds [7 x i8], [7 x i8]* %650, i32 0, i64 2
  %652 = load i8, i8* %651, align 1, !tbaa !9
  %653 = sext i8 %652 to i16
  store i16 %653, i16* %l_180, align 2, !tbaa !10
  %654 = load i8, i8* @g_9, align 1, !tbaa !9
  %655 = sext i8 %654 to i32
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %663, label %657

; <label>:657                                     ; preds = %610
  %658 = getelementptr inbounds [8 x [7 x i8]], [8 x [7 x i8]]* %l_179, i32 0, i64 5
  %659 = getelementptr inbounds [7 x i8], [7 x i8]* %658, i32 0, i64 2
  %660 = load i8, i8* %659, align 1, !tbaa !9
  %661 = sext i8 %660 to i32
  %662 = icmp ne i32 %661, 0
  br label %663

; <label>:663                                     ; preds = %657, %610
  %664 = phi i1 [ true, %610 ], [ %662, %657 ]
  %665 = zext i1 %664 to i32
  %666 = icmp sge i32 %649, %665
  %667 = zext i1 %666 to i32
  %668 = load i32*, i32** %l_117, align 8, !tbaa !5
  %669 = load i32, i32* %668, align 4, !tbaa !1
  %670 = load i16, i16* %5, align 2, !tbaa !10
  %671 = zext i16 %670 to i32
  %672 = icmp sge i32 %669, %671
  %673 = zext i1 %672 to i32
  %674 = load i32*, i32** @g_18, align 8, !tbaa !5
  %675 = load i32, i32* %674, align 4, !tbaa !1
  %676 = call i32 @safe_sub_func_uint32_t_u_u(i32 %673, i32 %675)
  %677 = load i32, i32* %l_181, align 4, !tbaa !1
  %678 = and i32 %677, %676
  store i32 %678, i32* %l_181, align 4, !tbaa !1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), i32** %1
  store i32 1, i32* %6
  %679 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %679) #1
  %680 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %680) #1
  %681 = bitcast i32* %l_181 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %681) #1
  %682 = bitcast [3 x [2 x i64**]]* %l_177 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %682) #1
  br label %779

; <label>:683                                     ; preds = %609
  %684 = load i16*, i16** @g_73, align 8, !tbaa !5
  %685 = load i16, i16* %684, align 2, !tbaa !10
  %686 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %685, i32 10)
  %687 = trunc i16 %686 to i8
  %688 = load i8*, i8** %l_127, align 8, !tbaa !5
  store i8 %687, i8* %688, align 1, !tbaa !9
  %689 = load i16, i16* %5, align 2, !tbaa !10
  %690 = zext i16 %689 to i32
  %691 = load i32*, i32** %l_182, align 8, !tbaa !5
  store i32 %690, i32* %691, align 4, !tbaa !1
  %692 = trunc i32 %690 to i8
  %693 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %687, i8 signext %692)
  %694 = getelementptr inbounds [8 x [7 x i8]], [8 x [7 x i8]]* %l_195, i32 0, i64 3
  %695 = getelementptr inbounds [7 x i8], [7 x i8]* %694, i32 0, i64 6
  %696 = load i8, i8* %695, align 1, !tbaa !9
  %697 = load i8*, i8** %l_127, align 8, !tbaa !5
  store i8 %696, i8* %697, align 1, !tbaa !9
  %698 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %696, i32 3)
  %699 = load i32**, i32*** %l_196, align 8, !tbaa !5
  %700 = getelementptr inbounds [8 x i32**], [8 x i32**]* %l_197, i32 0, i64 3
  store i32** %l_182, i32*** %700, align 8, !tbaa !5
  %701 = icmp ne i32** %699, %l_182
  %702 = zext i1 %701 to i32
  %703 = bitcast %union.U0* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %703, i8* bitcast (%union.U0* @g_85 to i8*), i64 8, i32 8, i1 true), !tbaa.struct !12
  %704 = call i32 @safe_sub_func_int32_t_s_s(i32 %702, i32 -150030860)
  %705 = sext i32 %704 to i64
  %706 = load i64*, i64** %l_178, align 8, !tbaa !5
  store i64 %705, i64* %706, align 8, !tbaa !7
  %707 = and i64 -5114573864554663876, %705
  %708 = load i16, i16* %l_198, align 2, !tbaa !10
  %709 = zext i16 %708 to i64
  %710 = call i64 @safe_unary_minus_func_int64_t_s(i64 %709)
  %711 = trunc i64 %710 to i16
  %712 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %711, i32 6)
  %713 = sext i16 %712 to i64
  %714 = or i64 -4, %713
  %715 = icmp sle i64 8, %714
  br i1 %715, label %716, label %771

; <label>:716                                     ; preds = %683
  %717 = bitcast i32** %l_208 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %717) #1
  store i32* %l_172, i32** %l_208, align 8, !tbaa !5
  %718 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %718) #1
  %719 = load i32*, i32** %l_182, align 8, !tbaa !5
  %720 = load i32**, i32*** %l_196, align 8, !tbaa !5
  store i32* %719, i32** %720, align 8, !tbaa !5
  %721 = load i32, i32* getelementptr inbounds ([1 x [10 x i32]], [1 x [10 x i32]]* @g_200, i32 0, i64 0, i64 8), align 4, !tbaa !1
  %722 = add i32 %721, 1
  store i32 %722, i32* getelementptr inbounds ([1 x [10 x i32]], [1 x [10 x i32]]* @g_200, i32 0, i64 0, i64 8), align 4, !tbaa !1
  %723 = load i32*, i32** @g_18, align 8, !tbaa !5
  %724 = load i32, i32* %723, align 4, !tbaa !1
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %727

; <label>:726                                     ; preds = %716
  store i32 37, i32* %6
  br label %767

; <label>:727                                     ; preds = %716
  store i64* @g_132, i64** @g_205, align 8, !tbaa !5
  %728 = load i64*, i64** %l_178, align 8, !tbaa !5
  %729 = icmp eq i64* @g_132, %728
  %730 = zext i1 %729 to i32
  %731 = sext i32 %730 to i64
  %732 = load i32, i32* getelementptr inbounds ([1 x [10 x i32]], [1 x [10 x i32]]* @g_200, i32 0, i64 0, i64 8), align 4, !tbaa !1
  %733 = trunc i32 %732 to i8
  %734 = load i16, i16* %5, align 2, !tbaa !10
  %735 = zext i16 %734 to i32
  %736 = load i32*, i32** %l_208, align 8, !tbaa !5
  store i32 %735, i32* %736, align 4, !tbaa !1
  %737 = load i16, i16* %5, align 2, !tbaa !10
  %738 = zext i16 %737 to i32
  %739 = xor i32 %738, -1
  %740 = sext i32 %739 to i64
  %741 = or i64 %740, 2
  %742 = trunc i64 %741 to i8
  %743 = load i64, i64* %l_212, align 8, !tbaa !7
  %744 = load i64, i64* @g_119, align 8, !tbaa !7
  %745 = load i16, i16* %5, align 2, !tbaa !10
  %746 = zext i16 %745 to i64
  %747 = call i64 @safe_mod_func_int64_t_s_s(i64 %744, i64 %746)
  %748 = icmp ugt i64 %743, %747
  %749 = zext i1 %748 to i32
  %750 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %742, i8 signext -115)
  %751 = sext i8 %750 to i32
  %752 = icmp uge i32 %735, %751
  %753 = zext i1 %752 to i32
  %754 = load i32, i32* getelementptr inbounds ([1 x [10 x i32]], [1 x [10 x i32]]* @g_200, i32 0, i64 0, i64 8), align 4, !tbaa !1
  %755 = icmp uge i32 %753, %754
  %756 = zext i1 %755 to i32
  %757 = trunc i32 %756 to i8
  %758 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %733, i8 zeroext %757)
  %759 = zext i8 %758 to i64
  %760 = call i64 @safe_add_func_int64_t_s_s(i64 %731, i64 %759)
  %761 = xor i64 -1252172169259219486, %760
  %762 = load i32*, i32** @g_18, align 8, !tbaa !5
  %763 = load i32, i32* %762, align 4, !tbaa !1
  %764 = sext i32 %763 to i64
  %765 = xor i64 %764, %761
  %766 = trunc i64 %765 to i32
  store i32 %766, i32* %762, align 4, !tbaa !1
  store i32 0, i32* %6
  br label %767

; <label>:767                                     ; preds = %727, %726
  %768 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %768) #1
  %769 = bitcast i32** %l_208 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %769) #1
  %cleanup.dest = load i32, i32* %6
  switch i32 %cleanup.dest, label %779 [
    i32 0, label %770
  ]

; <label>:770                                     ; preds = %767
  br label %778

; <label>:771                                     ; preds = %683
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), i32** %l_215, align 8, !tbaa !5
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 3), i32** %l_216, align 8, !tbaa !5
  %772 = load i64*, i64** %l_217, align 8, !tbaa !5
  %773 = icmp ne i64* null, %772
  %774 = zext i1 %773 to i32
  %775 = load i32*, i32** %l_182, align 8, !tbaa !5
  %776 = load i32, i32* %775, align 4, !tbaa !1
  %777 = xor i32 %776, %774
  store i32 %777, i32* %775, align 4, !tbaa !1
  br label %778

; <label>:778                                     ; preds = %771, %770
  store i32 0, i32* %6
  br label %779

; <label>:779                                     ; preds = %778, %767, %663, %608
  %780 = bitcast i8** %l_187 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %780) #1
  %781 = bitcast i32** %l_182 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %781) #1
  %782 = bitcast i64** %l_178 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %782) #1
  %cleanup.dest.15 = load i32, i32* %6
  switch i32 %cleanup.dest.15, label %980 [
    i32 0, label %783
    i32 35, label %787
    i32 37, label %784
  ]

; <label>:783                                     ; preds = %779
  br label %784

; <label>:784                                     ; preds = %783, %779
  %785 = load i32, i32* %l_121, align 4, !tbaa !1
  %786 = add nsw i32 %785, 1
  store i32 %786, i32* %l_121, align 4, !tbaa !1
  br label %596

; <label>:787                                     ; preds = %779, %596
  store i16 0, i16* %l_101, align 2, !tbaa !10
  br label %788

; <label>:788                                     ; preds = %974, %787
  %789 = load i16, i16* %l_101, align 2, !tbaa !10
  %790 = zext i16 %789 to i32
  %791 = icmp sle i32 %790, 0
  br i1 %791, label %792, label %979

; <label>:792                                     ; preds = %788
  %793 = bitcast i32* %l_223 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %793) #1
  store i32 -2, i32* %l_223, align 4, !tbaa !1
  store i64 0, i64* @g_119, align 8, !tbaa !7
  br label %794

; <label>:794                                     ; preds = %817, %792
  %795 = load i64, i64* @g_119, align 8, !tbaa !7
  %796 = icmp ule i64 %795, 0
  br i1 %796, label %797, label %820

; <label>:797                                     ; preds = %794
  %798 = bitcast i32* %l_218 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %798) #1
  store i32 539818200, i32* %l_218, align 4, !tbaa !1
  %799 = bitcast [6 x i32]* %l_222 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %799) #1
  %800 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %800) #1
  store i32 0, i32* %i16, align 4, !tbaa !1
  br label %801

; <label>:801                                     ; preds = %808, %797
  %802 = load i32, i32* %i16, align 4, !tbaa !1
  %803 = icmp slt i32 %802, 6
  br i1 %803, label %804, label %811

; <label>:804                                     ; preds = %801
  %805 = load i32, i32* %i16, align 4, !tbaa !1
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds [6 x i32], [6 x i32]* %l_222, i32 0, i64 %806
  store i32 -1989849082, i32* %807, align 4, !tbaa !1
  br label %808

; <label>:808                                     ; preds = %804
  %809 = load i32, i32* %i16, align 4, !tbaa !1
  %810 = add nsw i32 %809, 1
  store i32 %810, i32* %i16, align 4, !tbaa !1
  br label %801

; <label>:811                                     ; preds = %801
  %812 = load volatile i32, i32* getelementptr inbounds ([2 x [5 x [1 x i32]]], [2 x [5 x [1 x i32]]]* @g_224, i32 0, i64 1, i64 2, i64 0), align 4, !tbaa !1
  %813 = add i32 %812, -1
  store volatile i32 %813, i32* getelementptr inbounds ([2 x [5 x [1 x i32]]], [2 x [5 x [1 x i32]]]* @g_224, i32 0, i64 1, i64 2, i64 0), align 4, !tbaa !1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 4), i32** %1
  store i32 1, i32* %6
  %814 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %814) #1
  %815 = bitcast [6 x i32]* %l_222 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %815) #1
  %816 = bitcast i32* %l_218 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %816) #1
  br label %971
                                                  ; No predecessors!
  %818 = load i64, i64* @g_119, align 8, !tbaa !7
  %819 = add i64 %818, 1
  store i64 %819, i64* @g_119, align 8, !tbaa !7
  br label %794

; <label>:820                                     ; preds = %794
  store i64 0, i64* @g_119, align 8, !tbaa !7
  br label %821

; <label>:821                                     ; preds = %965, %820
  %822 = load i64, i64* @g_119, align 8, !tbaa !7
  %823 = icmp ule i64 %822, 8
  br i1 %823, label %824, label %968

; <label>:824                                     ; preds = %821
  %825 = bitcast i16* %l_228 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %825) #1
  store i16 -5, i16* %l_228, align 2, !tbaa !10
  %826 = bitcast i32* %l_229 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %826) #1
  store i32 650036171, i32* %l_229, align 4, !tbaa !1
  %827 = bitcast i32** %l_239 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %827) #1
  store i32* null, i32** %l_239, align 8, !tbaa !5
  %828 = bitcast i32** %l_240 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %828) #1
  store i32* @g_129, i32** %l_240, align 8, !tbaa !5
  %829 = bitcast i32** %l_242 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %829) #1
  store i32* null, i32** %l_242, align 8, !tbaa !5
  %830 = bitcast [7 x [6 x i16*]]* %l_244 to i8*
  call void @llvm.lifetime.start(i64 336, i8* %830) #1
  %831 = getelementptr inbounds [7 x [6 x i16*]], [7 x [6 x i16*]]* %l_244, i64 0, i64 0
  %832 = getelementptr inbounds [6 x i16*], [6 x i16*]* %831, i64 0, i64 0
  store i16* @g_94, i16** %832, !tbaa !5
  %833 = getelementptr inbounds i16*, i16** %832, i64 1
  store i16* @g_94, i16** %833, !tbaa !5
  %834 = getelementptr inbounds i16*, i16** %833, i64 1
  store i16* %l_198, i16** %834, !tbaa !5
  %835 = getelementptr inbounds i16*, i16** %834, i64 1
  store i16* null, i16** %835, !tbaa !5
  %836 = getelementptr inbounds i16*, i16** %835, i64 1
  store i16* %l_198, i16** %836, !tbaa !5
  %837 = getelementptr inbounds i16*, i16** %836, i64 1
  store i16* @g_94, i16** %837, !tbaa !5
  %838 = getelementptr inbounds [6 x i16*], [6 x i16*]* %831, i64 1
  %839 = getelementptr inbounds [6 x i16*], [6 x i16*]* %838, i64 0, i64 0
  store i16* %l_198, i16** %839, !tbaa !5
  %840 = getelementptr inbounds i16*, i16** %839, i64 1
  store i16* @g_94, i16** %840, !tbaa !5
  %841 = getelementptr inbounds i16*, i16** %840, i64 1
  store i16* null, i16** %841, !tbaa !5
  %842 = getelementptr inbounds i16*, i16** %841, i64 1
  store i16* null, i16** %842, !tbaa !5
  %843 = getelementptr inbounds i16*, i16** %842, i64 1
  store i16* @g_94, i16** %843, !tbaa !5
  %844 = getelementptr inbounds i16*, i16** %843, i64 1
  store i16* %l_198, i16** %844, !tbaa !5
  %845 = getelementptr inbounds [6 x i16*], [6 x i16*]* %838, i64 1
  %846 = getelementptr inbounds [6 x i16*], [6 x i16*]* %845, i64 0, i64 0
  store i16* @g_94, i16** %846, !tbaa !5
  %847 = getelementptr inbounds i16*, i16** %846, i64 1
  store i16* %l_198, i16** %847, !tbaa !5
  %848 = getelementptr inbounds i16*, i16** %847, i64 1
  store i16* null, i16** %848, !tbaa !5
  %849 = getelementptr inbounds i16*, i16** %848, i64 1
  store i16* %l_198, i16** %849, !tbaa !5
  %850 = getelementptr inbounds i16*, i16** %849, i64 1
  store i16* @g_94, i16** %850, !tbaa !5
  %851 = getelementptr inbounds i16*, i16** %850, i64 1
  store i16* @g_94, i16** %851, !tbaa !5
  %852 = getelementptr inbounds [6 x i16*], [6 x i16*]* %845, i64 1
  %853 = getelementptr inbounds [6 x i16*], [6 x i16*]* %852, i64 0, i64 0
  store i16* null, i16** %853, !tbaa !5
  %854 = getelementptr inbounds i16*, i16** %853, i64 1
  store i16* %l_198, i16** %854, !tbaa !5
  %855 = getelementptr inbounds i16*, i16** %854, i64 1
  store i16* %l_198, i16** %855, !tbaa !5
  %856 = getelementptr inbounds i16*, i16** %855, i64 1
  store i16* null, i16** %856, !tbaa !5
  %857 = getelementptr inbounds i16*, i16** %856, i64 1
  store i16* @g_94, i16** %857, !tbaa !5
  %858 = getelementptr inbounds i16*, i16** %857, i64 1
  store i16* null, i16** %858, !tbaa !5
  %859 = getelementptr inbounds [6 x i16*], [6 x i16*]* %852, i64 1
  %860 = getelementptr inbounds [6 x i16*], [6 x i16*]* %859, i64 0, i64 0
  store i16* null, i16** %860, !tbaa !5
  %861 = getelementptr inbounds i16*, i16** %860, i64 1
  store i16* @g_94, i16** %861, !tbaa !5
  %862 = getelementptr inbounds i16*, i16** %861, i64 1
  store i16* null, i16** %862, !tbaa !5
  %863 = getelementptr inbounds i16*, i16** %862, i64 1
  store i16* %l_198, i16** %863, !tbaa !5
  %864 = getelementptr inbounds i16*, i16** %863, i64 1
  store i16* %l_198, i16** %864, !tbaa !5
  %865 = getelementptr inbounds i16*, i16** %864, i64 1
  store i16* null, i16** %865, !tbaa !5
  %866 = getelementptr inbounds [6 x i16*], [6 x i16*]* %859, i64 1
  %867 = getelementptr inbounds [6 x i16*], [6 x i16*]* %866, i64 0, i64 0
  store i16* @g_94, i16** %867, !tbaa !5
  %868 = getelementptr inbounds i16*, i16** %867, i64 1
  store i16* @g_94, i16** %868, !tbaa !5
  %869 = getelementptr inbounds i16*, i16** %868, i64 1
  store i16* %l_198, i16** %869, !tbaa !5
  %870 = getelementptr inbounds i16*, i16** %869, i64 1
  store i16* null, i16** %870, !tbaa !5
  %871 = getelementptr inbounds i16*, i16** %870, i64 1
  store i16* %l_198, i16** %871, !tbaa !5
  %872 = getelementptr inbounds i16*, i16** %871, i64 1
  store i16* @g_94, i16** %872, !tbaa !5
  %873 = getelementptr inbounds [6 x i16*], [6 x i16*]* %866, i64 1
  %874 = getelementptr inbounds [6 x i16*], [6 x i16*]* %873, i64 0, i64 0
  store i16* %l_198, i16** %874, !tbaa !5
  %875 = getelementptr inbounds i16*, i16** %874, i64 1
  store i16* @g_94, i16** %875, !tbaa !5
  %876 = getelementptr inbounds i16*, i16** %875, i64 1
  store i16* null, i16** %876, !tbaa !5
  %877 = getelementptr inbounds i16*, i16** %876, i64 1
  store i16* null, i16** %877, !tbaa !5
  %878 = getelementptr inbounds i16*, i16** %877, i64 1
  store i16* @g_94, i16** %878, !tbaa !5
  %879 = getelementptr inbounds i16*, i16** %878, i64 1
  store i16* %l_198, i16** %879, !tbaa !5
  %880 = bitcast i64** %l_252 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %880) #1
  store i64* @g_119, i64** %l_252, align 8, !tbaa !5
  %881 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %881) #1
  %882 = bitcast i32* %j18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %882) #1
  %883 = load volatile i64*, i64** getelementptr inbounds ([4 x i64*], [4 x i64*]* @g_227, i32 0, i64 2), align 8, !tbaa !5
  %884 = icmp ne i64* null, %883
  %885 = zext i1 %884 to i32
  %886 = getelementptr inbounds [3 x [6 x [8 x i32]]], [3 x [6 x [8 x i32]]]* %l_221, i32 0, i64 0
  %887 = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* %886, i32 0, i64 2
  %888 = getelementptr inbounds [8 x i32], [8 x i32]* %887, i32 0, i64 6
  store i32 6, i32* %888, align 4, !tbaa !1
  %889 = load i32, i32* @g_230, align 4, !tbaa !1
  %890 = add i32 %889, 1
  store i32 %890, i32* @g_230, align 4, !tbaa !1
  %891 = load i16, i16* %5, align 2, !tbaa !10
  %892 = zext i16 %891 to i64
  %893 = load i16, i16* %5, align 2, !tbaa !10
  %894 = zext i16 %893 to i32
  %895 = load i32*, i32** %l_240, align 8, !tbaa !5
  store i32 %894, i32* %895, align 4, !tbaa !1
  %896 = load i16, i16* %5, align 2, !tbaa !10
  %897 = zext i16 %896 to i64
  store i64 %897, i64* getelementptr inbounds ([9 x [7 x [4 x i64]]], [9 x [7 x [4 x i64]]]* @g_241, i32 0, i64 6, i64 5, i64 3), align 8, !tbaa !7
  %898 = trunc i64 %897 to i8
  store i8 %898, i8* @g_243, align 1, !tbaa !9
  %899 = sext i8 %898 to i32
  %900 = icmp ne i32 %894, %899
  %901 = zext i1 %900 to i32
  %902 = load i8, i8* @g_245, align 1, !tbaa !9
  %903 = sext i8 %902 to i32
  %904 = and i32 %903, %901
  %905 = trunc i32 %904 to i8
  store i8 %905, i8* @g_245, align 1, !tbaa !9
  %906 = sext i8 %905 to i64
  %907 = icmp sge i64 0, %906
  %908 = zext i1 %907 to i32
  %909 = sext i32 %908 to i64
  %910 = call i64 @safe_sub_func_int64_t_s_s(i64 %892, i64 %909)
  %911 = load i32, i32* %l_223, align 4, !tbaa !1
  %912 = load i32*, i32** %l_215, align 8, !tbaa !5
  %913 = load i32, i32* %912, align 4, !tbaa !1
  %914 = trunc i32 %913 to i16
  %915 = load i64*, i64** %l_252, align 8, !tbaa !5
  %916 = load i64*, i64** %l_217, align 8, !tbaa !5
  %917 = icmp eq i64* %915, %916
  %918 = zext i1 %917 to i32
  %919 = trunc i32 %918 to i16
  %920 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %914, i16 signext %919)
  %921 = sext i16 %920 to i32
  %922 = and i32 %911, %921
  %923 = load i16, i16* %5, align 2, !tbaa !10
  %924 = zext i16 %923 to i32
  %925 = icmp sle i32 %922, %924
  %926 = zext i1 %925 to i32
  %927 = trunc i32 %926 to i16
  %928 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %927, i16 zeroext 12678)
  %929 = zext i16 %928 to i64
  %930 = call i64 @safe_mod_func_uint64_t_u_u(i64 %929, i64 -8103556033663707622)
  %931 = icmp ule i64 %910, %930
  %932 = zext i1 %931 to i32
  %933 = trunc i32 %932 to i8
  %934 = load i8*, i8** %3, align 8, !tbaa !5
  %935 = load i8, i8* %934, align 1, !tbaa !9
  %936 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %933, i8 signext %935)
  %937 = load i32*, i32** %2, align 8, !tbaa !5
  %938 = load i32*, i32** %2, align 8, !tbaa !5
  %939 = icmp eq i32* %937, %938
  %940 = zext i1 %939 to i32
  %941 = load i32*, i32** %2, align 8, !tbaa !5
  %942 = load i32, i32* %941, align 4, !tbaa !1
  %943 = call i32 @safe_div_func_int32_t_s_s(i32 %940, i32 %942)
  %944 = sext i32 %943 to i64
  %945 = icmp sle i64 -1, %944
  %946 = zext i1 %945 to i32
  %947 = load i32, i32* %l_229, align 4, !tbaa !1
  %948 = and i32 %947, %946
  store i32 %948, i32* %l_229, align 4, !tbaa !1
  %949 = load i32*, i32** %2, align 8, !tbaa !5
  %950 = load i32, i32* %949, align 4, !tbaa !1
  %951 = icmp ne i32 %950, 0
  br i1 %951, label %952, label %953

; <label>:952                                     ; preds = %824
  store i32 47, i32* %6
  br label %954

; <label>:953                                     ; preds = %824
  store i32 0, i32* %6
  br label %954

; <label>:954                                     ; preds = %953, %952
  %955 = bitcast i32* %j18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %955) #1
  %956 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %956) #1
  %957 = bitcast i64** %l_252 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %957) #1
  %958 = bitcast [7 x [6 x i16*]]* %l_244 to i8*
  call void @llvm.lifetime.end(i64 336, i8* %958) #1
  %959 = bitcast i32** %l_242 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %959) #1
  %960 = bitcast i32** %l_240 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %960) #1
  %961 = bitcast i32** %l_239 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %961) #1
  %962 = bitcast i32* %l_229 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %962) #1
  %963 = bitcast i16* %l_228 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %963) #1
  %cleanup.dest.19 = load i32, i32* %6
  switch i32 %cleanup.dest.19, label %1267 [
    i32 0, label %964
    i32 47, label %968
  ]

; <label>:964                                     ; preds = %954
  br label %965

; <label>:965                                     ; preds = %964
  %966 = load i64, i64* @g_119, align 8, !tbaa !7
  %967 = add i64 %966, 1
  store i64 %967, i64* @g_119, align 8, !tbaa !7
  br label %821

; <label>:968                                     ; preds = %954, %821
  %969 = load i8, i8* @g_253, align 1, !tbaa !9
  %970 = add i8 %969, -1
  store i8 %970, i8* @g_253, align 1, !tbaa !9
  store i32 0, i32* %6
  br label %971

; <label>:971                                     ; preds = %968, %811
  %972 = bitcast i32* %l_223 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %972) #1
  %cleanup.dest.20 = load i32, i32* %6
  switch i32 %cleanup.dest.20, label %980 [
    i32 0, label %973
  ]

; <label>:973                                     ; preds = %971
  br label %974

; <label>:974                                     ; preds = %973
  %975 = load i16, i16* %l_101, align 2, !tbaa !10
  %976 = zext i16 %975 to i32
  %977 = add nsw i32 %976, 1
  %978 = trunc i32 %977 to i16
  store i16 %978, i16* %l_101, align 2, !tbaa !10
  br label %788

; <label>:979                                     ; preds = %788
  store i32 0, i32* %6
  br label %980

; <label>:980                                     ; preds = %979, %971, %779
  %981 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %981) #1
  %982 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %982) #1
  %983 = bitcast i32* %l_220 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %983) #1
  %984 = bitcast i64** %l_217 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %984) #1
  %985 = bitcast i32** %l_216 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %985) #1
  %986 = bitcast i32** %l_215 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %986) #1
  %987 = bitcast i32* %l_199 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %987) #1
  %988 = bitcast [8 x [7 x i8]]* %l_179 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %988) #1
  %cleanup.dest.21 = load i32, i32* %6
  switch i32 %cleanup.dest.21, label %1016 [
    i32 0, label %989
  ]

; <label>:989                                     ; preds = %980
  br label %990

; <label>:990                                     ; preds = %989
  %991 = load i16, i16* @g_23, align 2, !tbaa !10
  %992 = sext i16 %991 to i32
  %993 = add nsw i32 %992, 1
  %994 = trunc i32 %993 to i16
  store i16 %994, i16* @g_23, align 2, !tbaa !10
  br label %580

; <label>:995                                     ; preds = %580
  %996 = load i32*, i32** %2, align 8, !tbaa !5
  %997 = load i32, i32* %996, align 4, !tbaa !1
  %998 = load i32, i32* %l_173, align 4, !tbaa !1
  %999 = and i32 %998, %997
  store i32 %999, i32* %l_173, align 4, !tbaa !1
  store i8 0, i8* %l_109, align 1, !tbaa !9
  br label %1000

; <label>:1000                                    ; preds = %1010, %995
  %1001 = load i8, i8* %l_109, align 1, !tbaa !9
  %1002 = sext i8 %1001 to i32
  %1003 = icmp eq i32 %1002, -5
  br i1 %1003, label %1004, label %1015

; <label>:1004                                    ; preds = %1000
  %1005 = load i32*, i32** @g_18, align 8, !tbaa !5
  %1006 = load i32, i32* %1005, align 4, !tbaa !1
  %1007 = icmp ne i32 %1006, 0
  br i1 %1007, label %1008, label %1009

; <label>:1008                                    ; preds = %1004
  br label %1015

; <label>:1009                                    ; preds = %1004
  br label %1010

; <label>:1010                                    ; preds = %1009
  %1011 = load i8, i8* %l_109, align 1, !tbaa !9
  %1012 = sext i8 %1011 to i64
  %1013 = call i64 @safe_sub_func_int64_t_s_s(i64 %1012, i64 3)
  %1014 = trunc i64 %1013 to i8
  store i8 %1014, i8* %l_109, align 1, !tbaa !9
  br label %1000

; <label>:1015                                    ; preds = %1008, %1000
  store i32 0, i32* %6
  br label %1016

; <label>:1016                                    ; preds = %1015, %980
  %1017 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1017) #1
  %1018 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1018) #1
  %1019 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1019) #1
  %1020 = bitcast [3 x [6 x [8 x i32]]]* %l_221 to i8*
  call void @llvm.lifetime.end(i64 576, i8* %1020) #1
  %1021 = bitcast i32* %l_219 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1021) #1
  %1022 = bitcast i32*** %l_196 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1022) #1
  %1023 = bitcast i32* %l_173 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1023) #1
  %1024 = bitcast [9 x i16*]* %l_171 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %1024) #1
  %1025 = bitcast i16** %l_170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1025) #1
  %1026 = bitcast i32* %l_161 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1026) #1
  %cleanup.dest.22 = load i32, i32* %6
  switch i32 %cleanup.dest.22, label %1034 [
    i32 0, label %1027
  ]

; <label>:1027                                    ; preds = %1016
  br label %1028

; <label>:1028                                    ; preds = %1027
  %1029 = load i16, i16* @g_94, align 2, !tbaa !10
  %1030 = trunc i16 %1029 to i8
  %1031 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %1030, i8 signext 1)
  %1032 = sext i8 %1031 to i16
  store i16 %1032, i16* @g_94, align 2, !tbaa !10
  br label %478

; <label>:1033                                    ; preds = %478
  store i32 0, i32* %6
  br label %1034

; <label>:1034                                    ; preds = %1033, %1016
  %1035 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1035) #1
  %1036 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1036) #1
  %1037 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1037) #1
  %1038 = bitcast i64* %l_212 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1038) #1
  %1039 = bitcast i16* %l_198 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1039) #1
  %1040 = bitcast [8 x [7 x i8]]* %l_195 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %1040) #1
  %1041 = bitcast i32* %l_172 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1041) #1
  %1042 = bitcast i16** %l_158 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1042) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_138) #1
  %1043 = bitcast [10 x i64*]* %l_131 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1043) #1
  %1044 = bitcast [3 x i8*]* %l_128 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1044) #1
  %1045 = bitcast i8** %l_127 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1045) #1
  %1046 = bitcast [8 x i64*]* %l_118 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1046) #1
  %1047 = bitcast [2 x [6 x [10 x i32**]]]* %l_116 to i8*
  call void @llvm.lifetime.end(i64 960, i8* %1047) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_109) #1
  %1048 = bitcast i32* %l_100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1048) #1
  %cleanup.dest.23 = load i32, i32* %6
  switch i32 %cleanup.dest.23, label %1242 [
    i32 0, label %1049
  ]

; <label>:1049                                    ; preds = %1034
  br label %1050

; <label>:1050                                    ; preds = %1049
  %1051 = load i8, i8* @g_9, align 1, !tbaa !9
  %1052 = add i8 %1051, -1
  store i8 %1052, i8* @g_9, align 1, !tbaa !9
  br label %47

; <label>:1053                                    ; preds = %47
  store i64 0, i64* @g_132, align 8, !tbaa !7
  br label %1054

; <label>:1054                                    ; preds = %1087, %1053
  %1055 = load i64, i64* @g_132, align 8, !tbaa !7
  %1056 = icmp eq i64 %1055, 8
  br i1 %1056, label %1057, label %1090

; <label>:1057                                    ; preds = %1054
  call void @llvm.lifetime.start(i64 1, i8* %l_265) #1
  store i8 -7, i8* %l_265, align 1, !tbaa !9
  %1058 = bitcast i16* %l_277 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1058) #1
  store i16 4, i16* %l_277, align 2, !tbaa !10
  %1059 = bitcast i32* %l_278 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1059) #1
  store i32 -4, i32* %l_278, align 4, !tbaa !1
  %1060 = bitcast i32* %l_281 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1060) #1
  store i32 0, i32* %l_281, align 4, !tbaa !1
  %1061 = bitcast i32* %l_282 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1061) #1
  store i32 0, i32* %l_282, align 4, !tbaa !1
  %1062 = bitcast i64*** %l_294 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1062) #1
  store i64** null, i64*** %l_294, align 8, !tbaa !5
  %1063 = bitcast i32** %l_329 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1063) #1
  store i32* null, i32** %l_329, align 8, !tbaa !5
  %1064 = bitcast i16*** %l_357 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1064) #1
  store i16** null, i16*** %l_357, align 8, !tbaa !5
  %1065 = bitcast i32* %l_360 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1065) #1
  store i32 404100404, i32* %l_360, align 4, !tbaa !1
  %1066 = bitcast i64** %l_501 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1066) #1
  store i64* @g_119, i64** %l_501, align 8, !tbaa !5
  %1067 = bitcast i64* %l_584 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1067) #1
  store i64 0, i64* %l_584, align 8, !tbaa !7
  %1068 = bitcast [7 x [7 x [5 x i32]]]* %l_644 to i8*
  call void @llvm.lifetime.start(i64 980, i8* %1068) #1
  %1069 = bitcast [7 x [7 x [5 x i32]]]* %l_644 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1069, i8* bitcast ([7 x [7 x [5 x i32]]]* @func_66.l_644 to i8*), i64 980, i32 16, i1 false)
  %1070 = bitcast i32* %i24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1070) #1
  %1071 = bitcast i32* %j25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1071) #1
  %1072 = bitcast i32* %k26 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1072) #1
  %1073 = bitcast i32* %k26 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1073) #1
  %1074 = bitcast i32* %j25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1074) #1
  %1075 = bitcast i32* %i24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1075) #1
  %1076 = bitcast [7 x [7 x [5 x i32]]]* %l_644 to i8*
  call void @llvm.lifetime.end(i64 980, i8* %1076) #1
  %1077 = bitcast i64* %l_584 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1077) #1
  %1078 = bitcast i64** %l_501 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1078) #1
  %1079 = bitcast i32* %l_360 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1079) #1
  %1080 = bitcast i16*** %l_357 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1080) #1
  %1081 = bitcast i32** %l_329 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1081) #1
  %1082 = bitcast i64*** %l_294 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1082) #1
  %1083 = bitcast i32* %l_282 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1083) #1
  %1084 = bitcast i32* %l_281 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1084) #1
  %1085 = bitcast i32* %l_278 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1085) #1
  %1086 = bitcast i16* %l_277 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1086) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_265) #1
  br label %1087

; <label>:1087                                    ; preds = %1057
  %1088 = load i64, i64* @g_132, align 8, !tbaa !7
  %1089 = add nsw i64 %1088, 1
  store i64 %1089, i64* @g_132, align 8, !tbaa !7
  br label %1054

; <label>:1090                                    ; preds = %1054
  %1091 = load i16, i16* %5, align 2, !tbaa !10
  %1092 = zext i16 %1091 to i64
  %1093 = load i16, i16* %5, align 2, !tbaa !10
  %1094 = load i16, i16* %5, align 2, !tbaa !10
  %1095 = zext i16 %1094 to i64
  %1096 = load i16, i16* %5, align 2, !tbaa !10
  %1097 = zext i16 %1096 to i64
  %1098 = load i32**, i32*** %l_448, align 8, !tbaa !5
  %1099 = icmp ne i32** @g_625, %1098
  %1100 = zext i1 %1099 to i32
  %1101 = sext i32 %1100 to i64
  %1102 = call i64 @safe_add_func_int64_t_s_s(i64 %1097, i64 %1101)
  %1103 = icmp ne i64 %1102, 0
  %1104 = zext i1 %1103 to i32
  %1105 = sext i32 %1104 to i64
  %1106 = call i64 @safe_add_func_uint64_t_u_u(i64 %1095, i64 %1105)
  %1107 = call i64 @safe_sub_func_uint64_t_u_u(i64 %1092, i64 -1879163073377476507)
  %1108 = load i32*, i32** %l_117, align 8, !tbaa !5
  %1109 = load i32, i32* %1108, align 4, !tbaa !1
  %1110 = trunc i32 %1109 to i8
  %1111 = load i8, i8* bitcast (%union.U0* getelementptr inbounds ([6 x [6 x [4 x %union.U0]]], [6 x [6 x [4 x %union.U0]]]* @g_581, i32 0, i64 4, i64 0, i64 2) to i8*), align 8
  %1112 = and i8 %1110, 63
  %1113 = and i8 %1111, -64
  %1114 = or i8 %1113, %1112
  store i8 %1114, i8* bitcast (%union.U0* getelementptr inbounds ([6 x [6 x [4 x %union.U0]]], [6 x [6 x [4 x %union.U0]]]* @g_581, i32 0, i64 4, i64 0, i64 2) to i8*), align 8
  %1115 = shl i8 %1112, 2
  %1116 = ashr i8 %1115, 2
  %1117 = sext i8 %1116 to i32
  %1118 = trunc i32 %1117 to i8
  %1119 = load i8, i8* bitcast (%union.U0* @g_363 to i8*), align 8
  %1120 = and i8 %1118, 63
  %1121 = and i8 %1119, -64
  %1122 = or i8 %1121, %1120
  store i8 %1122, i8* bitcast (%union.U0* @g_363 to i8*), align 8
  %1123 = shl i8 %1120, 2
  %1124 = ashr i8 %1123, 2
  %1125 = sext i8 %1124 to i32
  %1126 = load volatile i32*, i32** @g_625, align 8, !tbaa !5
  %1127 = load volatile i32, i32* %1126, align 4, !tbaa !1
  %1128 = icmp ule i32 %1125, %1127
  %1129 = zext i1 %1128 to i32
  %1130 = sext i32 %1129 to i64
  %1131 = icmp ule i64 %1130, 3
  %1132 = zext i1 %1131 to i32
  %1133 = sext i32 %1132 to i64
  %1134 = icmp ne i64 %1107, %1133
  %1135 = zext i1 %1134 to i32
  %1136 = load i16*, i16** @g_73, align 8, !tbaa !5
  %1137 = load i16, i16* %1136, align 2, !tbaa !10
  %1138 = sext i16 %1137 to i32
  %1139 = xor i32 %1138, %1135
  %1140 = trunc i32 %1139 to i16
  store i16 %1140, i16* %1136, align 2, !tbaa !10
  %1141 = sext i16 %1140 to i32
  %1142 = load i16, i16* %5, align 2, !tbaa !10
  %1143 = zext i16 %1142 to i32
  %1144 = icmp sle i32 %1141, %1143
  %1145 = zext i1 %1144 to i32
  %1146 = trunc i32 %1145 to i8
  %1147 = load volatile i8, i8* bitcast (%union.U0* @g_85 to i8*), align 8
  %1148 = and i8 %1146, 63
  %1149 = and i8 %1147, -64
  %1150 = or i8 %1149, %1148
  store volatile i8 %1150, i8* bitcast (%union.U0* @g_85 to i8*), align 8
  %1151 = shl i8 %1148, 2
  %1152 = ashr i8 %1151, 2
  %1153 = sext i8 %1152 to i32
  %1154 = load i8*, i8** %4, align 8, !tbaa !5
  %1155 = icmp eq i8* @g_243, %1154
  %1156 = zext i1 %1155 to i32
  %1157 = trunc i32 %1156 to i16
  %1158 = load i32*, i32** %l_117, align 8, !tbaa !5
  %1159 = load i32, i32* %1158, align 4, !tbaa !1
  %1160 = sext i32 %1159 to i64
  %1161 = icmp ne i64 %1160, 46
  %1162 = zext i1 %1161 to i32
  %1163 = load i32*, i32** %l_115, align 8, !tbaa !5
  %1164 = load i32, i32* %1163, align 4, !tbaa !1
  %1165 = xor i32 %1162, %1164
  %1166 = sext i32 %1165 to i64
  %1167 = load i64, i64* %l_689, align 8, !tbaa !7
  %1168 = icmp ult i64 139, %1167
  %1169 = zext i1 %1168 to i32
  %1170 = load i16, i16* %5, align 2, !tbaa !10
  %1171 = zext i16 %1170 to i32
  %1172 = call i32 @safe_sub_func_uint32_t_u_u(i32 %1169, i32 %1171)
  %1173 = zext i32 %1172 to i64
  %1174 = call i64 @safe_mod_func_int64_t_s_s(i64 8064317616287547636, i64 %1173)
  %1175 = xor i64 7116132952443008723, %1174
  %1176 = trunc i64 %1175 to i8
  %1177 = load i16, i16* %5, align 2, !tbaa !10
  %1178 = zext i16 %1177 to i32
  %1179 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %1176, i32 %1178)
  %1180 = zext i8 %1179 to i32
  %1181 = load i16, i16* %l_690, align 2, !tbaa !10
  %1182 = sext i16 %1181 to i32
  %1183 = call i32 @safe_div_func_int32_t_s_s(i32 %1180, i32 %1182)
  %1184 = icmp ne i32 %1183, 0
  br i1 %1184, label %1185, label %1189

; <label>:1185                                    ; preds = %1090
  %1186 = load i32*, i32** %2, align 8, !tbaa !5
  %1187 = load i32, i32* %1186, align 4, !tbaa !1
  %1188 = icmp ne i32 %1187, 0
  br label %1189

; <label>:1189                                    ; preds = %1185, %1090
  %1190 = phi i1 [ false, %1090 ], [ %1188, %1185 ]
  %1191 = zext i1 %1190 to i32
  %1192 = sext i32 %1191 to i64
  %1193 = xor i64 %1192, 4430131804343283405
  %1194 = load i32, i32* %l_691, align 4, !tbaa !1
  %1195 = zext i32 %1194 to i64
  %1196 = xor i64 %1195, %1193
  %1197 = trunc i64 %1196 to i32
  store i32 %1197, i32* %l_691, align 4, !tbaa !1
  %1198 = trunc i32 %1197 to i16
  %1199 = load i16*, i16** @g_73, align 8, !tbaa !5
  store i16 %1198, i16* %1199, align 2, !tbaa !10
  %1200 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %1198, i16 signext 0)
  %1201 = sext i16 %1200 to i32
  %1202 = load i16, i16* %5, align 2, !tbaa !10
  %1203 = zext i16 %1202 to i32
  %1204 = call i32 @safe_mod_func_int32_t_s_s(i32 %1201, i32 %1203)
  %1205 = load i8, i8* bitcast (%union.U0* @g_363 to i8*), align 8
  %1206 = shl i8 %1205, 2
  %1207 = ashr i8 %1206, 2
  %1208 = sext i8 %1207 to i32
  %1209 = xor i32 %1208, %1204
  %1210 = trunc i32 %1209 to i8
  %1211 = load i8, i8* bitcast (%union.U0* @g_363 to i8*), align 8
  %1212 = and i8 %1210, 63
  %1213 = and i8 %1211, -64
  %1214 = or i8 %1213, %1212
  store i8 %1214, i8* bitcast (%union.U0* @g_363 to i8*), align 8
  %1215 = shl i8 %1212, 2
  %1216 = ashr i8 %1215, 2
  %1217 = sext i8 %1216 to i32
  %1218 = load i32*, i32** %2, align 8, !tbaa !5
  %1219 = load i32, i32* %1218, align 4, !tbaa !1
  %1220 = and i32 %1217, %1219
  %1221 = load i8, i8* %l_692, align 1, !tbaa !9
  %1222 = zext i8 %1221 to i32
  %1223 = or i32 %1222, %1220
  %1224 = trunc i32 %1223 to i8
  store i8 %1224, i8* %l_692, align 1, !tbaa !9
  %1225 = call i64 @safe_add_func_int64_t_s_s(i64 %1166, i64 -10)
  %1226 = trunc i64 %1225 to i16
  %1227 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %1157, i16 zeroext %1226)
  %1228 = zext i16 %1227 to i32
  %1229 = load i32*, i32** %l_117, align 8, !tbaa !5
  %1230 = load i32, i32* %1229, align 4, !tbaa !1
  %1231 = icmp ne i32 %1228, %1230
  %1232 = zext i1 %1231 to i32
  %1233 = call i32 @safe_div_func_int32_t_s_s(i32 %1232, i32 767298261)
  %1234 = trunc i32 %1233 to i8
  %1235 = load i8, i8* bitcast (%union.U0* getelementptr inbounds ([6 x [6 x [4 x %union.U0]]], [6 x [6 x [4 x %union.U0]]]* @g_581, i32 0, i64 4, i64 0, i64 2) to i8*), align 8
  %1236 = and i8 %1234, 63
  %1237 = and i8 %1235, -64
  %1238 = or i8 %1237, %1236
  store i8 %1238, i8* bitcast (%union.U0* getelementptr inbounds ([6 x [6 x [4 x %union.U0]]], [6 x [6 x [4 x %union.U0]]]* @g_581, i32 0, i64 4, i64 0, i64 2) to i8*), align 8
  %1239 = shl i8 %1236, 2
  %1240 = ashr i8 %1239, 2
  %1241 = sext i8 %1240 to i32
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_49, i32 0, i64 0), i32** %1
  store i32 1, i32* %6
  br label %1242

; <label>:1242                                    ; preds = %1189, %1034
  %1243 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1243) #1
  %1244 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1244) #1
  %1245 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1245) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_692) #1
  %1246 = bitcast i32* %l_691 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1246) #1
  %1247 = bitcast i16* %l_690 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1247) #1
  %1248 = bitcast i64* %l_689 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1248) #1
  %1249 = bitcast i16* %l_535 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1249) #1
  %1250 = bitcast i32*** %l_448 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1250) #1
  %1251 = bitcast [10 x [2 x i16**]]* %l_439 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %1251) #1
  %1252 = bitcast i32* %l_379 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1252) #1
  %1253 = bitcast i8** %l_276 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1253) #1
  %1254 = bitcast [10 x [4 x i16]]* %l_273 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1254) #1
  %1255 = bitcast i32* %l_266 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1255) #1
  %1256 = bitcast [8 x i32**]* %l_197 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1256) #1
  %1257 = bitcast i16* %l_180 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1257) #1
  %1258 = bitcast [3 x [2 x [7 x i64*]]]* %l_176 to i8*
  call void @llvm.lifetime.end(i64 336, i8* %1258) #1
  %1259 = bitcast [9 x [10 x [1 x i16]]]* %l_130 to i8*
  call void @llvm.lifetime.end(i64 180, i8* %1259) #1
  %1260 = bitcast i32* %l_121 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1260) #1
  %1261 = bitcast [2 x i32]* %l_120 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1261) #1
  %1262 = bitcast i32** %l_117 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1262) #1
  %1263 = bitcast i32** %l_115 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1263) #1
  %1264 = bitcast i32* %l_114 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1264) #1
  %1265 = bitcast i16* %l_101 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1265) #1
  %1266 = load i32*, i32** %1
  ret i32* %1266

; <label>:1267                                    ; preds = %954
  unreachable
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
define internal i32 @safe_unary_minus_func_uint32_t_u(i32 %ui) #0 {
  %1 = alloca i32, align 4
  store i32 %ui, i32* %1, align 4, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !1
  %3 = sub i32 0, %2
  ret i32 %3
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
!12 = !{i64 0, i64 8, !5, i64 0, i64 4, !1}
