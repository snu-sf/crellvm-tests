; ModuleID = '00815.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global i32 -1055355369, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_38 = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"g_38\00", align 1
@g_43 = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"g_43\00", align 1
@g_70 = internal global i8 0, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"g_70\00", align 1
@g_75 = internal global %union.U0 zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"g_75.f1\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"g_75.f2\00", align 1
@g_82 = internal global i16 -25403, align 2
@.str.7 = private unnamed_addr constant [5 x i8] c"g_82\00", align 1
@g_83 = internal global [10 x i64] [i64 3298429787741490757, i64 0, i64 3298429787741490757, i64 3298429787741490757, i64 0, i64 3298429787741490757, i64 3298429787741490757, i64 0, i64 3298429787741490757, i64 3298429787741490757], align 16
@.str.8 = private unnamed_addr constant [8 x i8] c"g_83[i]\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_113 = internal global [10 x [6 x [4 x i16]]] [[6 x [4 x i16]] [[4 x i16] [i16 27914, i16 1, i16 32351, i16 -17161], [4 x i16] [i16 -19483, i16 26435, i16 5944, i16 32351], [4 x i16] [i16 -4086, i16 26435, i16 1, i16 -17161], [4 x i16] [i16 26435, i16 1, i16 29333, i16 32351], [4 x i16] [i16 1, i16 1, i16 19, i16 -17161], [4 x i16] [i16 -24895, i16 26435, i16 -14351, i16 32351]], [6 x [4 x i16]] [[4 x i16] [i16 0, i16 26435, i16 -17161, i16 -17161], [4 x i16] [i16 1, i16 1, i16 2701, i16 32351], [4 x i16] [i16 27914, i16 1, i16 32351, i16 -17161], [4 x i16] [i16 -19483, i16 26435, i16 5944, i16 32351], [4 x i16] [i16 -4086, i16 26435, i16 1, i16 -17161], [4 x i16] [i16 26435, i16 1, i16 29333, i16 32351]], [6 x [4 x i16]] [[4 x i16] [i16 1, i16 1, i16 19, i16 -17161], [4 x i16] [i16 -24895, i16 26435, i16 -14351, i16 32351], [4 x i16] [i16 0, i16 26435, i16 -17161, i16 -17161], [4 x i16] [i16 1, i16 1, i16 2701, i16 32351], [4 x i16] [i16 27914, i16 1, i16 32351, i16 -17161], [4 x i16] [i16 -19483, i16 26435, i16 5944, i16 32351]], [6 x [4 x i16]] [[4 x i16] [i16 -4086, i16 26435, i16 1, i16 -17161], [4 x i16] [i16 26435, i16 1, i16 29333, i16 32351], [4 x i16] [i16 1, i16 1, i16 19, i16 -17161], [4 x i16] [i16 -24895, i16 26435, i16 -14351, i16 32351], [4 x i16] [i16 0, i16 26435, i16 -17161, i16 -17161], [4 x i16] [i16 1, i16 1, i16 2701, i16 32351]], [6 x [4 x i16]] [[4 x i16] [i16 27914, i16 1, i16 32351, i16 -17161], [4 x i16] [i16 -19483, i16 26435, i16 5944, i16 32351], [4 x i16] [i16 -4086, i16 26435, i16 1, i16 -17161], [4 x i16] [i16 26435, i16 1, i16 29333, i16 32351], [4 x i16] [i16 1, i16 1, i16 19, i16 -17161], [4 x i16] [i16 -24895, i16 26435, i16 -14351, i16 32351]], [6 x [4 x i16]] [[4 x i16] [i16 0, i16 26435, i16 -17161, i16 -17161], [4 x i16] [i16 1, i16 1, i16 2701, i16 32351], [4 x i16] [i16 27914, i16 1, i16 32351, i16 -17161], [4 x i16] [i16 -19483, i16 26435, i16 5944, i16 32351], [4 x i16] [i16 -4086, i16 26435, i16 1, i16 -17161], [4 x i16] [i16 26435, i16 1, i16 29333, i16 32351]], [6 x [4 x i16]] [[4 x i16] [i16 1, i16 1, i16 19, i16 -17161], [4 x i16] [i16 -24895, i16 26435, i16 -14351, i16 32351], [4 x i16] [i16 0, i16 26435, i16 -17161, i16 -17161], [4 x i16] [i16 1, i16 1, i16 2701, i16 32351], [4 x i16] [i16 27914, i16 1, i16 32351, i16 -17161], [4 x i16] [i16 -19483, i16 26435, i16 5944, i16 32351]], [6 x [4 x i16]] [[4 x i16] [i16 -4086, i16 26435, i16 1, i16 -17161], [4 x i16] [i16 26435, i16 1, i16 29333, i16 32351], [4 x i16] [i16 1, i16 1, i16 19, i16 -17161], [4 x i16] [i16 -24895, i16 26435, i16 -14351, i16 32351], [4 x i16] [i16 0, i16 26435, i16 -17161, i16 -17161], [4 x i16] [i16 1, i16 1, i16 2701, i16 32351]], [6 x [4 x i16]] [[4 x i16] [i16 27914, i16 1, i16 32351, i16 -17161], [4 x i16] [i16 -19483, i16 26435, i16 5944, i16 32351], [4 x i16] [i16 -4086, i16 26435, i16 1, i16 -17161], [4 x i16] [i16 26435, i16 1, i16 29333, i16 32351], [4 x i16] [i16 1, i16 1, i16 19, i16 -17161], [4 x i16] [i16 -24895, i16 26435, i16 -14351, i16 32351]], [6 x [4 x i16]] [[4 x i16] [i16 0, i16 26435, i16 -17161, i16 -17161], [4 x i16] [i16 1, i16 1, i16 2701, i16 32351], [4 x i16] [i16 27914, i16 1, i16 32351, i16 -17161], [4 x i16] [i16 -19483, i16 26435, i16 5944, i16 32351], [4 x i16] [i16 -4086, i16 26435, i16 1, i16 -17161], [4 x i16] [i16 26435, i16 1, i16 29333, i16 32351]]], align 16
@.str.10 = private unnamed_addr constant [15 x i8] c"g_113[i][j][k]\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_125 = internal global i8 107, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_125\00", align 1
@g_129 = internal global i32 2011205665, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_129\00", align 1
@g_131 = internal global [2 x %union.U0] [%union.U0 { i64 -1464420606654813738 }, %union.U0 { i64 -1464420606654813738 }], align 16
@.str.14 = private unnamed_addr constant [12 x i8] c"g_131[i].f0\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"g_131[i].f1\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"g_131[i].f2\00", align 1
@g_133 = internal global %union.U0 { i64 990410705066111896 }, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"g_133.f0\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"g_133.f1\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"g_133.f2\00", align 1
@g_135 = internal global i8 93, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_135\00", align 1
@g_137 = internal global i32 1946552708, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"g_137\00", align 1
@g_141 = internal global i16 15484, align 2
@.str.22 = private unnamed_addr constant [6 x i8] c"g_141\00", align 1
@g_184 = internal global i8 60, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_184\00", align 1
@g_185 = internal global i64 1, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"g_185\00", align 1
@g_192 = internal global i8 -1, align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"g_192\00", align 1
@g_234 = internal global i32 1571886807, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_234\00", align 1
@g_305 = internal global %union.U0 { i64 3 }, align 8
@.str.27 = private unnamed_addr constant [9 x i8] c"g_305.f0\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"g_305.f1\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"g_305.f2\00", align 1
@g_319 = internal global [1 x i32] [i32 1647820939], align 4
@.str.30 = private unnamed_addr constant [9 x i8] c"g_319[i]\00", align 1
@g_348 = internal global i64 6034295368770227696, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"g_348\00", align 1
@g_349 = internal global i32 -1, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_349\00", align 1
@g_370 = internal global i32 501136498, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"g_370\00", align 1
@g_391 = internal global i32 -661747250, align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"g_391\00", align 1
@g_407 = internal global i64 4256163418394931619, align 8
@.str.35 = private unnamed_addr constant [6 x i8] c"g_407\00", align 1
@g_416 = internal global i16 30311, align 2
@.str.36 = private unnamed_addr constant [6 x i8] c"g_416\00", align 1
@g_417 = internal global i64 -10, align 8
@.str.37 = private unnamed_addr constant [6 x i8] c"g_417\00", align 1
@g_457 = internal global i8 -127, align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"g_457\00", align 1
@g_550 = internal global i8 113, align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"g_550\00", align 1
@g_580 = internal global i32 -853913517, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"g_580\00", align 1
@g_582 = internal global i8 -2, align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"g_582\00", align 1
@g_611 = internal global i32 -1376294554, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"g_611\00", align 1
@g_636 = internal global [10 x i32] [i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 -1], align 16
@.str.43 = private unnamed_addr constant [9 x i8] c"g_636[i]\00", align 1
@g_637 = internal global i32 1, align 4
@.str.44 = private unnamed_addr constant [6 x i8] c"g_637\00", align 1
@g_720 = internal global %union.U0 { i64 -803939686903746608 }, align 8
@.str.45 = private unnamed_addr constant [9 x i8] c"g_720.f0\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"g_720.f1\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"g_720.f2\00", align 1
@g_726 = internal global i16 0, align 2
@.str.48 = private unnamed_addr constant [6 x i8] c"g_726\00", align 1
@g_840 = internal global %union.U0 { i64 -1 }, align 8
@.str.49 = private unnamed_addr constant [9 x i8] c"g_840.f0\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"g_840.f1\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"g_840.f2\00", align 1
@g_955 = internal global i8 -1, align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"g_955\00", align 1
@g_966 = internal global [8 x [10 x [3 x i32]]] [[10 x [3 x i32]] [[3 x i32] [i32 0, i32 1, i32 976410882], [3 x i32] [i32 -1, i32 -840476347, i32 7], [3 x i32] [i32 0, i32 974586600, i32 -325926926], [3 x i32] [i32 823058382, i32 -1094534078, i32 -5], [3 x i32] [i32 914615408, i32 -1, i32 -744908815], [3 x i32] [i32 -1721650750, i32 -1, i32 -342387439], [3 x i32] [i32 -10, i32 2, i32 294087470], [3 x i32] [i32 9, i32 5, i32 -1721650750], [3 x i32] [i32 -444934157, i32 -1094534078, i32 -1], [3 x i32] [i32 3, i32 -990236413, i32 -1]], [10 x [3 x i32]] [[3 x i32] [i32 203823575, i32 -1524476056, i32 -1524476056], [3 x i32] [i32 -1, i32 0, i32 1763515091], [3 x i32] [i32 1686277303, i32 1604391532, i32 -789682174], [3 x i32] [i32 853510729, i32 -10, i32 -5], [3 x i32] [i32 3, i32 -444934157, i32 -8], [3 x i32] [i32 -9, i32 -10, i32 -2], [3 x i32] [i32 976410882, i32 1604391532, i32 -1601976389], [3 x i32] [i32 0, i32 0, i32 9], [3 x i32] [i32 682412514, i32 -1524476056, i32 7], [3 x i32] [i32 914615408, i32 -990236413, i32 -8]], [10 x [3 x i32]] [[3 x i32] [i32 0, i32 -1094534078, i32 -1], [3 x i32] [i32 -2, i32 5, i32 -1215422242], [3 x i32] [i32 -1721650750, i32 2, i32 8], [3 x i32] [i32 -956333679, i32 -1, i32 294087470], [3 x i32] [i32 -990236413, i32 -1, i32 -1], [3 x i32] [i32 -9, i32 -1094534078, i32 1], [3 x i32] [i32 -744908815, i32 974586600, i32 405606398], [3 x i32] [i32 203823575, i32 -840476347, i32 368432435], [3 x i32] [i32 -5, i32 1, i32 1763515091], [3 x i32] [i32 -5, i32 -10, i32 -744908815]], [10 x [3 x i32]] [[3 x i32] [i32 203823575, i32 -10, i32 -1], [3 x i32] [i32 -744908815, i32 1, i32 -1], [3 x i32] [i32 -9, i32 906481466, i32 0], [3 x i32] [i32 -990236413, i32 -342387439, i32 -1601976389], [3 x i32] [i32 -956333679, i32 823058382, i32 976410882], [3 x i32] [i32 -1721650750, i32 -1524476056, i32 -2], [3 x i32] [i32 -2, i32 974586600, i32 -1], [3 x i32] [i32 0, i32 115055456, i32 -1], [3 x i32] [i32 914615408, i32 -6, i32 -1215422242], [3 x i32] [i32 682412514, i32 682412514, i32 -342387439]], [10 x [3 x i32]] [[3 x i32] [i32 0, i32 -1, i32 -1524476056], [3 x i32] [i32 976410882, i32 5, i32 405606398], [3 x i32] [i32 -9, i32 115055456, i32 252392113], [3 x i32] [i32 3, i32 976410882, i32 405606398], [3 x i32] [i32 853510729, i32 2093594426, i32 -1524476056], [3 x i32] [i32 1686277303, i32 1, i32 -342387439], [3 x i32] [i32 -1, i32 1604391532, i32 -1215422242], [3 x i32] [i32 203823575, i32 906481466, i32 -1], [3 x i32] [i32 3, i32 -7, i32 -1], [3 x i32] [i32 -444934157, i32 -956333679, i32 -2]], [10 x [3 x i32]] [[3 x i32] [i32 862477653, i32 5, i32 -1], [3 x i32] [i32 368432435, i32 853510729, i32 0], [3 x i32] [i32 -1215422242, i32 -6, i32 -1601976389], [3 x i32] [i32 976410882, i32 -1, i32 1892633552], [3 x i32] [i32 0, i32 -7, i32 0], [3 x i32] [i32 -1601976389, i32 -1721650750, i32 0], [3 x i32] [i32 -789682174, i32 3, i32 115055456], [3 x i32] [i32 294087470, i32 3, i32 -1], [3 x i32] [i32 1184376165, i32 -1721650750, i32 -1083125175], [3 x i32] [i32 -6, i32 -7, i32 0]], [10 x [3 x i32]] [[3 x i32] [i32 1953536273, i32 -1, i32 -789682174], [3 x i32] [i32 1686277303, i32 -6, i32 637159725], [3 x i32] [i32 -5, i32 853510729, i32 2143987583], [3 x i32] [i32 -1, i32 5, i32 0], [3 x i32] [i32 -1, i32 -1524476056, i32 0], [3 x i32] [i32 1953536273, i32 2041105755, i32 252392113], [3 x i32] [i32 2041105755, i32 2093594426, i32 974586600], [3 x i32] [i32 862477653, i32 -1098372595, i32 862477653], [3 x i32] [i32 -1524476056, i32 203823575, i32 0], [3 x i32] [i32 -744908815, i32 -8, i32 9]], [10 x [3 x i32]] [[3 x i32] [i32 -1601976389, i32 -1, i32 252392113], [3 x i32] [i32 203823575, i32 -444934157, i32 906481466], [3 x i32] [i32 -1601976389, i32 682412514, i32 1953536273], [3 x i32] [i32 -744908815, i32 -789682174, i32 115055456], [3 x i32] [i32 -1524476056, i32 -744908815, i32 -325926926], [3 x i32] [i32 862477653, i32 -1721650750, i32 -789682174], [3 x i32] [i32 2041105755, i32 -444934157, i32 -110176532], [3 x i32] [i32 1953536273, i32 2111631289, i32 -1215422242], [3 x i32] [i32 -1, i32 -325926926, i32 637159725], [3 x i32] [i32 -1, i32 0, i32 5]]], align 16
@.str.53 = private unnamed_addr constant [15 x i8] c"g_966[i][j][k]\00", align 1
@g_1006 = internal global i32 9, align 4
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1006\00", align 1
@g_1008 = internal global [4 x i32] [i32 -1166553425, i32 -1166553425, i32 -1166553425, i32 -1166553425], align 16
@.str.55 = private unnamed_addr constant [10 x i8] c"g_1008[i]\00", align 1
@g_1021 = internal global i32 -447258454, align 4
@.str.56 = private unnamed_addr constant [7 x i8] c"g_1021\00", align 1
@g_1048 = internal global %union.U0 { i64 2670179110782765232 }, align 8
@.str.57 = private unnamed_addr constant [10 x i8] c"g_1048.f0\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"g_1048.f1\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"g_1048.f2\00", align 1
@g_1062 = internal global %union.U0 { i64 6951279925787974411 }, align 8
@.str.60 = private unnamed_addr constant [10 x i8] c"g_1062.f0\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"g_1062.f1\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"g_1062.f2\00", align 1
@g_1064 = internal global %union.U0 { i64 -2 }, align 8
@.str.63 = private unnamed_addr constant [10 x i8] c"g_1064.f1\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"g_1064.f2\00", align 1
@g_1077 = internal global i16 -18320, align 2
@.str.65 = private unnamed_addr constant [7 x i8] c"g_1077\00", align 1
@g_1386 = internal global %union.U0 { i64 -4640100907468677094 }, align 8
@.str.66 = private unnamed_addr constant [10 x i8] c"g_1386.f0\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"g_1386.f1\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"g_1386.f2\00", align 1
@g_1391 = internal global [5 x i8] c"\E2\E2\E2\E2\E2", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"g_1391[i]\00", align 1
@g_1480 = internal global %union.U0 { i64 1 }, align 8
@.str.70 = private unnamed_addr constant [10 x i8] c"g_1480.f0\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"g_1480.f1\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"g_1480.f2\00", align 1
@g_1573 = internal global %union.U0 { i64 8419447026370185940 }, align 8
@.str.73 = private unnamed_addr constant [10 x i8] c"g_1573.f0\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"g_1573.f1\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"g_1573.f2\00", align 1
@g_1625 = internal global %union.U0 { i64 2929674929872031948 }, align 8
@.str.76 = private unnamed_addr constant [10 x i8] c"g_1625.f0\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"g_1625.f1\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"g_1625.f2\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"g_1822\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2 = private unnamed_addr constant [1 x [3 x [6 x i64]]] [[3 x [6 x i64]] [[6 x i64] [i64 -6213620773935790765, i64 7, i64 -6213620773935790765, i64 -6213620773935790765, i64 7, i64 -6213620773935790765], [6 x i64] [i64 -6213620773935790765, i64 7, i64 -6213620773935790765, i64 -6213620773935790765, i64 7, i64 -6213620773935790765], [6 x i64] [i64 -6213620773935790765, i64 7, i64 -6213620773935790765, i64 -5474321265453382033, i64 -6213620773935790765, i64 -5474321265453382033]]], align 16
@g_130 = internal global %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x %union.U0]* @g_131 to i8*), i64 8) to %union.U0*), align 8
@func_1.l_1767 = private unnamed_addr constant [6 x i8] c"\02\02\02\02\02\02", align 1
@g_1161 = internal global i8** @g_262, align 8
@g_144 = internal global i32* null, align 8
@g_932 = internal global i32*** null, align 8
@g_587 = internal global i8* @g_125, align 8
@g_1158 = internal global i8***** @g_1159, align 8
@g_1106 = internal global i32**** null, align 8
@g_952 = internal global i8*** @g_953, align 8
@g_231 = internal global i32*** @g_232, align 8
@g_714 = internal global %union.U0*** @g_715, align 8
@g_232 = internal global i32** @g_233, align 8
@g_973 = internal global %union.U0**** @g_974, align 8
@g_233 = internal global i32* @g_234, align 8
@g_1634 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [4 x [5 x i32*]]]* @g_1635 to i8*), i64 128) to i32**), align 8
@func_1.l_1646 = private unnamed_addr constant [6 x i16] [i16 -10, i16 -10, i16 -10, i16 -10, i16 -10, i16 -10], align 2
@func_1.l_1884 = private unnamed_addr constant [3 x [7 x i32*]] [[7 x i32*] [i32* @g_580, i32* null, i32* null, i32* @g_580, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_1008 to i8*), i64 8) to i32*), i32* @g_580, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_1008 to i8*), i64 8) to i32*)], [7 x i32*] [i32* @g_580, i32* null, i32* null, i32* @g_580, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_1008 to i8*), i64 8) to i32*), i32* @g_580, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_1008 to i8*), i64 8) to i32*)], [7 x i32*] [i32* @g_580, i32* null, i32* null, i32* @g_580, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_1008 to i8*), i64 8) to i32*), i32* @g_580, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_1008 to i8*), i64 8) to i32*)]], align 16
@func_1.l_1913 = private unnamed_addr constant [5 x i32*] [i32* @g_137, i32* @g_137, i32* @g_137, i32* @g_137, i32* @g_137], align 16
@g_1638 = internal global i32** @g_144, align 8
@g_48 = internal global i32* @g_38, align 8
@g_262 = internal global i8* @g_192, align 8
@func_16.l_19 = private unnamed_addr constant [8 x [4 x [6 x i32]]] [[4 x [6 x i32]] [[6 x i32] [i32 2081729381, i32 475676031, i32 2081729381, i32 -897884943, i32 551392186, i32 2081729381], [6 x i32] [i32 -2112862617, i32 1, i32 -897884943, i32 -1, i32 551392186, i32 -2112862617], [6 x i32] [i32 -897884943, i32 475676031, i32 -1, i32 -1, i32 475676031, i32 -897884943], [6 x i32] [i32 -2112862617, i32 551392186, i32 -1, i32 -897884943, i32 1, i32 -2112862617]], [4 x [6 x i32]] [[6 x i32] [i32 2081729381, i32 551392186, i32 -897884943, i32 2081729381, i32 475676031, i32 2081729381], [6 x i32] [i32 2081729381, i32 475676031, i32 2081729381, i32 -897884943, i32 551392186, i32 2081729381], [6 x i32] [i32 -2112862617, i32 1, i32 -897884943, i32 -1, i32 551392186, i32 -2112862617], [6 x i32] [i32 -897884943, i32 475676031, i32 -1, i32 -1, i32 475676031, i32 -897884943]], [4 x [6 x i32]] [[6 x i32] [i32 -2112862617, i32 551392186, i32 -1, i32 -897884943, i32 1, i32 -2112862617], [6 x i32] [i32 2081729381, i32 551392186, i32 -897884943, i32 2081729381, i32 475676031, i32 2081729381], [6 x i32] [i32 2081729381, i32 475676031, i32 2081729381, i32 -897884943, i32 551392186, i32 2081729381], [6 x i32] [i32 -2112862617, i32 1, i32 -897884943, i32 -1, i32 551392186, i32 -2112862617]], [4 x [6 x i32]] [[6 x i32] [i32 -897884943, i32 475676031, i32 -1, i32 -1, i32 475676031, i32 -897884943], [6 x i32] [i32 -2112862617, i32 551392186, i32 -1, i32 -897884943, i32 1, i32 -2112862617], [6 x i32] [i32 2081729381, i32 551392186, i32 -897884943, i32 2081729381, i32 475676031, i32 2081729381], [6 x i32] [i32 2081729381, i32 475676031, i32 2081729381, i32 -897884943, i32 551392186, i32 2081729381]], [4 x [6 x i32]] [[6 x i32] [i32 -2112862617, i32 1, i32 -897884943, i32 -1, i32 551392186, i32 -2112862617], [6 x i32] [i32 -897884943, i32 475676031, i32 -1, i32 -1, i32 475676031, i32 -897884943], [6 x i32] [i32 -2112862617, i32 551392186, i32 -1, i32 -897884943, i32 1, i32 -2112862617], [6 x i32] [i32 2081729381, i32 551392186, i32 -897884943, i32 2081729381, i32 475676031, i32 2081729381]], [4 x [6 x i32]] [[6 x i32] [i32 2081729381, i32 475676031, i32 2081729381, i32 -897884943, i32 551392186, i32 2081729381], [6 x i32] [i32 -2112862617, i32 1, i32 -897884943, i32 -1, i32 551392186, i32 -2112862617], [6 x i32] [i32 -897884943, i32 475676031, i32 -1, i32 -1, i32 475676031, i32 -897884943], [6 x i32] [i32 -2112862617, i32 551392186, i32 -1, i32 -897884943, i32 1, i32 -2112862617]], [4 x [6 x i32]] [[6 x i32] [i32 2081729381, i32 551392186, i32 1, i32 401867678, i32 -2112862617, i32 401867678], [6 x i32] [i32 401867678, i32 -2112862617, i32 401867678, i32 1, i32 2081729381, i32 401867678], [6 x i32] [i32 -1272192617, i32 -897884943, i32 1, i32 -1420484700, i32 2081729381, i32 -1272192617], [6 x i32] [i32 1, i32 -2112862617, i32 -1420484700, i32 -1420484700, i32 -2112862617, i32 1]], [4 x [6 x i32]] [[6 x i32] [i32 -1272192617, i32 2081729381, i32 -1420484700, i32 1, i32 -897884943, i32 -1272192617], [6 x i32] [i32 401867678, i32 2081729381, i32 1, i32 401867678, i32 -2112862617, i32 401867678], [6 x i32] [i32 401867678, i32 -2112862617, i32 401867678, i32 1, i32 2081729381, i32 401867678], [6 x i32] [i32 -1272192617, i32 -897884943, i32 1, i32 -1420484700, i32 2081729381, i32 -1272192617]]], align 16
@func_16.l_1433 = private unnamed_addr constant [5 x [8 x [5 x i32]]] [[8 x [5 x i32]] [[5 x i32] [i32 4, i32 -10, i32 5, i32 -10, i32 4], [5 x i32] [i32 7, i32 4, i32 4, i32 7, i32 -963715261], [5 x i32] [i32 82361702, i32 -10, i32 82361702, i32 1106274324, i32 82361702], [5 x i32] [i32 7, i32 7, i32 1, i32 4, i32 -963715261], [5 x i32] [i32 4, i32 1106274324, i32 5, i32 1106274324, i32 4], [5 x i32] [i32 -963715261, i32 4, i32 1, i32 7, i32 7], [5 x i32] [i32 82361702, i32 1106274324, i32 82361702, i32 -10, i32 82361702], [5 x i32] [i32 -963715261, i32 7, i32 4, i32 4, i32 7]], [8 x [5 x i32]] [[5 x i32] [i32 4, i32 -10, i32 5, i32 -10, i32 4], [5 x i32] [i32 7, i32 4, i32 4, i32 7, i32 -963715261], [5 x i32] [i32 82361702, i32 -10, i32 82361702, i32 1106274324, i32 82361702], [5 x i32] [i32 7, i32 7, i32 1, i32 4, i32 -963715261], [5 x i32] [i32 4, i32 1106274324, i32 5, i32 1106274324, i32 4], [5 x i32] [i32 -963715261, i32 4, i32 1, i32 7, i32 7], [5 x i32] [i32 82361702, i32 1106274324, i32 82361702, i32 -10, i32 82361702], [5 x i32] [i32 -963715261, i32 7, i32 4, i32 4, i32 7]], [8 x [5 x i32]] [[5 x i32] [i32 4, i32 -10, i32 5, i32 -10, i32 4], [5 x i32] [i32 7, i32 4, i32 4, i32 7, i32 -963715261], [5 x i32] [i32 82361702, i32 -10, i32 82361702, i32 1106274324, i32 82361702], [5 x i32] [i32 7, i32 7, i32 1, i32 4, i32 -963715261], [5 x i32] [i32 4, i32 1106274324, i32 5, i32 1106274324, i32 4], [5 x i32] [i32 -963715261, i32 4, i32 1, i32 7, i32 7], [5 x i32] [i32 82361702, i32 1106274324, i32 82361702, i32 -10, i32 82361702], [5 x i32] [i32 -963715261, i32 7, i32 4, i32 4, i32 7]], [8 x [5 x i32]] [[5 x i32] [i32 4, i32 -10, i32 5, i32 -10, i32 4], [5 x i32] [i32 7, i32 4, i32 4, i32 7, i32 -963715261], [5 x i32] [i32 82361702, i32 -10, i32 82361702, i32 1106274324, i32 82361702], [5 x i32] [i32 7, i32 7, i32 1, i32 4, i32 -963715261], [5 x i32] [i32 4, i32 1106274324, i32 5, i32 1106274324, i32 4], [5 x i32] [i32 -963715261, i32 4, i32 1, i32 7, i32 7], [5 x i32] [i32 82361702, i32 1106274324, i32 82361702, i32 -10, i32 82361702], [5 x i32] [i32 -963715261, i32 7, i32 4, i32 4, i32 7]], [8 x [5 x i32]] [[5 x i32] [i32 4, i32 -10, i32 5, i32 -10, i32 4], [5 x i32] [i32 7, i32 4, i32 4, i32 7, i32 -963715261], [5 x i32] [i32 82361702, i32 -10, i32 82361702, i32 1106274324, i32 82361702], [5 x i32] [i32 7, i32 7, i32 1, i32 4, i32 -963715261], [5 x i32] [i32 4, i32 1106274324, i32 5, i32 1106274324, i32 4], [5 x i32] [i32 -963715261, i32 4, i32 1, i32 7, i32 7], [5 x i32] [i32 82361702, i32 1106274324, i32 82361702, i32 -10, i32 82361702], [5 x i32] [i32 -963715261, i32 7, i32 4, i32 4, i32 7]]], align 16
@func_16.l_1481 = private unnamed_addr constant [8 x %union.U0**] [%union.U0** @g_130, %union.U0** null, %union.U0** null, %union.U0** @g_130, %union.U0** null, %union.U0** null, %union.U0** @g_130, %union.U0** null], align 16
@g_928 = internal global i32* @g_637, align 8
@func_16.l_1542 = private unnamed_addr constant [9 x i64*] [i64* @g_43, i64* @g_43, i64* @g_43, i64* @g_43, i64* @g_43, i64* @g_43, i64* @g_43, i64* @g_43, i64* @g_43], align 16
@g_1160 = internal global i8*** @g_1161, align 8
@func_16.l_1567 = private unnamed_addr constant [5 x [6 x [8 x i32]]] [[6 x [8 x i32]] [[8 x i32] [i32 4, i32 484670453, i32 1, i32 -1022946939, i32 -844176440, i32 7, i32 6, i32 9], [8 x i32] [i32 -371974686, i32 0, i32 -8, i32 -1621151606, i32 7, i32 -1, i32 -1, i32 1520630552], [8 x i32] [i32 0, i32 -1, i32 -1474274103, i32 -10, i32 -1358375625, i32 0, i32 0, i32 -87742786], [8 x i32] [i32 -722030829, i32 -1, i32 -1621151606, i32 -10, i32 0, i32 0, i32 -1363014402, i32 974361712], [8 x i32] [i32 -1022946939, i32 -671683158, i32 -1, i32 -1, i32 1520630552, i32 1, i32 1019227164, i32 -371974686], [8 x i32] [i32 1, i32 -371974686, i32 3, i32 0, i32 0, i32 3, i32 -371974686, i32 1]], [6 x [8 x i32]] [[8 x i32] [i32 -1, i32 -10, i32 9, i32 8, i32 142694759, i32 -1, i32 -87742786, i32 -1172229174], [8 x i32] [i32 1, i32 -2109144035, i32 1019227164, i32 -844176440, i32 8, i32 -1, i32 4, i32 81627234], [8 x i32] [i32 -1358375625, i32 -10, i32 -671683158, i32 1, i32 0, i32 3, i32 484670453, i32 -1474274103], [8 x i32] [i32 81627234, i32 -371974686, i32 -10, i32 974361712, i32 1395335584, i32 1, i32 -671683158, i32 0], [8 x i32] [i32 -8, i32 -671683158, i32 166548648, i32 -4, i32 -1, i32 0, i32 1, i32 -722030829], [8 x i32] [i32 -1803773266, i32 -1, i32 -5, i32 1019227164, i32 -1, i32 0, i32 754227843, i32 0]], [6 x [8 x i32]] [[8 x i32] [i32 8, i32 -1, i32 -844176440, i32 4, i32 -8, i32 -1, i32 -8, i32 4], [8 x i32] [i32 -10, i32 0, i32 -10, i32 -1, i32 -1, i32 7, i32 5, i32 -4], [8 x i32] [i32 -1172229174, i32 484670453, i32 81627234, i32 -8, i32 -4, i32 -1910574134, i32 754227843, i32 0], [8 x i32] [i32 0, i32 -10, i32 0, i32 -1910574134, i32 754227843, i32 -4, i32 -1, i32 -1], [8 x i32] [i32 9, i32 -2109144035, i32 -5, i32 -671683158, i32 1520630552, i32 -1, i32 -1172229174, i32 -722030829], [8 x i32] [i32 -10, i32 -8, i32 0, i32 -1172229174, i32 -1474274103, i32 754227843, i32 -844176440, i32 -371974686]], [6 x [8 x i32]] [[8 x i32] [i32 -10, i32 1395335584, i32 -1910574134, i32 -1022946939, i32 -671683158, i32 -1, i32 -1, i32 1520630552], [8 x i32] [i32 1520630552, i32 -371974686, i32 -2109144035, i32 0, i32 0, i32 1395335584, i32 0, i32 0], [8 x i32] [i32 7, i32 81627234, i32 1395335584, i32 1395335584, i32 81627234, i32 7, i32 -1, i32 -10], [8 x i32] [i32 -8, i32 1520630552, i32 1698929203, i32 9, i32 -10, i32 1373087518, i32 -87742786, i32 166548648], [8 x i32] [i32 -1, i32 3, i32 -1621151606, i32 9, i32 -8, i32 1, i32 1495129082, i32 -10], [8 x i32] [i32 484670453, i32 -8, i32 -1, i32 1395335584, i32 -4, i32 9, i32 -1022946939, i32 0]], [6 x [8 x i32]] [[8 x i32] [i32 -1621151606, i32 -1, i32 -1363014402, i32 0, i32 -844176440, i32 -722030829, i32 1395335584, i32 1520630552], [8 x i32] [i32 6, i32 7, i32 -844176440, i32 -1022946939, i32 1, i32 484670453, i32 4, i32 -371974686], [8 x i32] [i32 -1022946939, i32 0, i32 -10, i32 -1172229174, i32 -8, i32 6, i32 3, i32 -722030829], [8 x i32] [i32 -4, i32 -1, i32 787118648, i32 -671683158, i32 0, i32 -671683158, i32 787118648, i32 -1], [8 x i32] [i32 -1358375625, i32 1, i32 -8, i32 -1910574134, i32 -1, i32 0, i32 142694759, i32 0], [8 x i32] [i32 -5, i32 484670453, i32 0, i32 1373087518, i32 -1358375625, i32 0, i32 142694759, i32 1019227164]]], align 16
@func_16.l_1580 = private unnamed_addr constant [9 x [9 x i32]] [[9 x i32] [i32 1158137974, i32 -1250992370, i32 -1, i32 -80223181, i32 1, i32 232159763, i32 2, i32 994498960, i32 2], [9 x i32] [i32 -80223181, i32 -246772077, i32 581088124, i32 581088124, i32 -246772077, i32 -80223181, i32 62552216, i32 1158137974, i32 -1930782614], [9 x i32] [i32 1, i32 -246772077, i32 994498960, i32 1, i32 2, i32 979345978, i32 581088124, i32 4, i32 4], [9 x i32] [i32 62552216, i32 -1250992370, i32 979345978, i32 0, i32 979345978, i32 -1250992370, i32 62552216, i32 581088124, i32 994498960], [9 x i32] [i32 232159763, i32 4, i32 979345978, i32 62552216, i32 0, i32 -1, i32 2, i32 -1250992370, i32 -80223181], [9 x i32] [i32 581088124, i32 232159763, i32 994498960, i32 -1250992370, i32 -1250992370, i32 994498960, i32 232159763, i32 581088124, i32 -9], [9 x i32] [i32 -1930782614, i32 0, i32 581088124, i32 -1250992370, i32 1, i32 -9, i32 -246772077, i32 4, i32 -1], [9 x i32] [i32 -9, i32 1158137974, i32 -1, i32 62552216, i32 -1930782614, i32 62552216, i32 62552216, i32 4, i32 -1354941384], [9 x i32] [i32 -1250992370, i32 994498960, i32 232159763, i32 581088124, i32 -9, i32 1, i32 -1930782614, i32 -80223181, i32 0]], align 16
@g_926 = internal global i32*** @g_927, align 8
@func_16.l_1557 = private unnamed_addr constant [7 x i32] [i32 -1160476801, i32 -1160476801, i32 1, i32 -1160476801, i32 -1160476801, i32 1, i32 -1160476801], align 16
@func_16.l_1569 = private unnamed_addr constant [9 x i32] [i32 -3, i32 -9, i32 -9, i32 -3, i32 -9, i32 -9, i32 -3, i32 -9, i32 -9], align 16
@g_927 = internal global i32** @g_928, align 8
@g_1159 = internal global i8**** @g_1160, align 8
@g_953 = internal global i8** @g_954, align 8
@g_954 = internal global i8* @g_955, align 8
@g_715 = internal global %union.U0** @g_716, align 8
@g_716 = internal global %union.U0* null, align 8
@g_974 = internal global %union.U0*** null, align 8
@g_1635 = internal global [1 x [4 x [5 x i32*]]] [[4 x [5 x i32*]] [[5 x i32*] [i32* @g_4, i32* @g_611, i32* null, i32* @g_4, i32* @g_4], [5 x i32*] [i32* @g_580, i32* @g_611, i32* @g_580, i32* null, i32* @g_611], [5 x i32*] [i32* @g_4, i32* @g_611, i32* null, i32* @g_4, i32* null], [5 x i32*] [i32* @g_4, i32* @g_4, i32* null, i32* @g_611, i32* @g_4]]], align 16
@.str.80 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %94 = load i32, i32* @g_38, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i64, i64* @g_43, align 8, !tbaa !7
  %98 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %98)
  %99 = load i8, i8* @g_70, align 1, !tbaa !9
  %100 = zext i8 %99 to i64
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %101)
  %102 = load volatile i16, i16* bitcast (%union.U0* @g_75 to i16*), align 8
  %103 = and i16 %102, 8191
  %104 = zext i16 %103 to i32
  %105 = zext i32 %104 to i64
  %106 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %106)
  %107 = load i32, i32* bitcast (%union.U0* @g_75 to i32*), align 4, !tbaa !1
  %108 = zext i32 %107 to i64
  %109 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %109)
  %110 = load i16, i16* @g_82, align 2, !tbaa !10
  %111 = zext i16 %110 to i64
  %112 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %112)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %113

; <label>:113                                     ; preds = %128, %89
  %114 = load i32, i32* %i, align 4, !tbaa !1
  %115 = icmp slt i32 %114, 10
  br i1 %115, label %116, label %131

; <label>:116                                     ; preds = %113
  %117 = load i32, i32* %i, align 4, !tbaa !1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [10 x i64], [10 x i64]* @g_83, i32 0, i64 %118
  %120 = load i64, i64* %119, align 8, !tbaa !7
  %121 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %121)
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

; <label>:124                                     ; preds = %116
  %125 = load i32, i32* %i, align 4, !tbaa !1
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %125)
  br label %127

; <label>:127                                     ; preds = %124, %116
  br label %128

; <label>:128                                     ; preds = %127
  %129 = load i32, i32* %i, align 4, !tbaa !1
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %i, align 4, !tbaa !1
  br label %113

; <label>:131                                     ; preds = %113
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %132

; <label>:132                                     ; preds = %172, %131
  %133 = load i32, i32* %i, align 4, !tbaa !1
  %134 = icmp slt i32 %133, 10
  br i1 %134, label %135, label %175

; <label>:135                                     ; preds = %132
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %136

; <label>:136                                     ; preds = %168, %135
  %137 = load i32, i32* %j, align 4, !tbaa !1
  %138 = icmp slt i32 %137, 6
  br i1 %138, label %139, label %171

; <label>:139                                     ; preds = %136
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %140

; <label>:140                                     ; preds = %164, %139
  %141 = load i32, i32* %k, align 4, !tbaa !1
  %142 = icmp slt i32 %141, 4
  br i1 %142, label %143, label %167

; <label>:143                                     ; preds = %140
  %144 = load i32, i32* %k, align 4, !tbaa !1
  %145 = sext i32 %144 to i64
  %146 = load i32, i32* %j, align 4, !tbaa !1
  %147 = sext i32 %146 to i64
  %148 = load i32, i32* %i, align 4, !tbaa !1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [10 x [6 x [4 x i16]]], [10 x [6 x [4 x i16]]]* @g_113, i32 0, i64 %149
  %151 = getelementptr inbounds [6 x [4 x i16]], [6 x [4 x i16]]* %150, i32 0, i64 %147
  %152 = getelementptr inbounds [4 x i16], [4 x i16]* %151, i32 0, i64 %145
  %153 = load i16, i16* %152, align 2, !tbaa !10
  %154 = zext i16 %153 to i64
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %154, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 %155)
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

; <label>:158                                     ; preds = %143
  %159 = load i32, i32* %i, align 4, !tbaa !1
  %160 = load i32, i32* %j, align 4, !tbaa !1
  %161 = load i32, i32* %k, align 4, !tbaa !1
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %159, i32 %160, i32 %161)
  br label %163

; <label>:163                                     ; preds = %158, %143
  br label %164

; <label>:164                                     ; preds = %163
  %165 = load i32, i32* %k, align 4, !tbaa !1
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %k, align 4, !tbaa !1
  br label %140

; <label>:167                                     ; preds = %140
  br label %168

; <label>:168                                     ; preds = %167
  %169 = load i32, i32* %j, align 4, !tbaa !1
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %j, align 4, !tbaa !1
  br label %136

; <label>:171                                     ; preds = %136
  br label %172

; <label>:172                                     ; preds = %171
  %173 = load i32, i32* %i, align 4, !tbaa !1
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %i, align 4, !tbaa !1
  br label %132

; <label>:175                                     ; preds = %132
  %176 = load i8, i8* @g_125, align 1, !tbaa !9
  %177 = sext i8 %176 to i64
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %178)
  %179 = load i32, i32* @g_129, align 4, !tbaa !1
  %180 = sext i32 %179 to i64
  %181 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %181)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %182

; <label>:182                                     ; preds = %214, %175
  %183 = load i32, i32* %i, align 4, !tbaa !1
  %184 = icmp slt i32 %183, 2
  br i1 %184, label %185, label %217

; <label>:185                                     ; preds = %182
  %186 = load i32, i32* %i, align 4, !tbaa !1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [2 x %union.U0], [2 x %union.U0]* @g_131, i32 0, i64 %187
  %189 = bitcast %union.U0* %188 to i64*
  %190 = load i64, i64* %189, align 8, !tbaa !7
  %191 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %190, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 %191)
  %192 = load i32, i32* %i, align 4, !tbaa !1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [2 x %union.U0], [2 x %union.U0]* @g_131, i32 0, i64 %193
  %195 = bitcast %union.U0* %194 to i16*
  %196 = load volatile i16, i16* %195, align 8
  %197 = and i16 %196, 8191
  %198 = zext i16 %197 to i32
  %199 = zext i32 %198 to i64
  %200 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %199, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 %200)
  %201 = load i32, i32* %i, align 4, !tbaa !1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [2 x %union.U0], [2 x %union.U0]* @g_131, i32 0, i64 %202
  %204 = bitcast %union.U0* %203 to i32*
  %205 = load i32, i32* %204, align 4, !tbaa !1
  %206 = zext i32 %205 to i64
  %207 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %206, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 %207)
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

; <label>:210                                     ; preds = %185
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %211)
  br label %213

; <label>:213                                     ; preds = %210, %185
  br label %214

; <label>:214                                     ; preds = %213
  %215 = load i32, i32* %i, align 4, !tbaa !1
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %i, align 4, !tbaa !1
  br label %182

; <label>:217                                     ; preds = %182
  %218 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_133, i32 0, i32 0), align 8, !tbaa !7
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %219)
  %220 = load volatile i16, i16* bitcast (%union.U0* @g_133 to i16*), align 8
  %221 = and i16 %220, 8191
  %222 = zext i16 %221 to i32
  %223 = zext i32 %222 to i64
  %224 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %224)
  %225 = load i32, i32* bitcast (%union.U0* @g_133 to i32*), align 4, !tbaa !1
  %226 = zext i32 %225 to i64
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %226, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %227)
  %228 = load i8, i8* @g_135, align 1, !tbaa !9
  %229 = sext i8 %228 to i64
  %230 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %230)
  %231 = load i32, i32* @g_137, align 4, !tbaa !1
  %232 = sext i32 %231 to i64
  %233 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %233)
  %234 = load i16, i16* @g_141, align 2, !tbaa !10
  %235 = zext i16 %234 to i64
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %236)
  %237 = load i8, i8* @g_184, align 1, !tbaa !9
  %238 = zext i8 %237 to i64
  %239 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %239)
  %240 = load i64, i64* @g_185, align 8, !tbaa !7
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %241)
  %242 = load i8, i8* @g_192, align 1, !tbaa !9
  %243 = zext i8 %242 to i64
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %243, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %244)
  %245 = load volatile i32, i32* @g_234, align 4, !tbaa !1
  %246 = sext i32 %245 to i64
  %247 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %247)
  %248 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_305, i32 0, i32 0), align 8, !tbaa !7
  %249 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %249)
  %250 = load volatile i16, i16* bitcast (%union.U0* @g_305 to i16*), align 8
  %251 = and i16 %250, 8191
  %252 = zext i16 %251 to i32
  %253 = zext i32 %252 to i64
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %254)
  %255 = load i32, i32* bitcast (%union.U0* @g_305 to i32*), align 4, !tbaa !1
  %256 = zext i32 %255 to i64
  %257 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %257)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %258

; <label>:258                                     ; preds = %274, %217
  %259 = load i32, i32* %i, align 4, !tbaa !1
  %260 = icmp slt i32 %259, 1
  br i1 %260, label %261, label %277

; <label>:261                                     ; preds = %258
  %262 = load i32, i32* %i, align 4, !tbaa !1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [1 x i32], [1 x i32]* @g_319, i32 0, i64 %263
  %265 = load i32, i32* %264, align 4, !tbaa !1
  %266 = zext i32 %265 to i64
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 %267)
  %268 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

; <label>:270                                     ; preds = %261
  %271 = load i32, i32* %i, align 4, !tbaa !1
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %271)
  br label %273

; <label>:273                                     ; preds = %270, %261
  br label %274

; <label>:274                                     ; preds = %273
  %275 = load i32, i32* %i, align 4, !tbaa !1
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %i, align 4, !tbaa !1
  br label %258

; <label>:277                                     ; preds = %258
  %278 = load i64, i64* @g_348, align 8, !tbaa !7
  %279 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %278, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %279)
  %280 = load i32, i32* @g_349, align 4, !tbaa !1
  %281 = zext i32 %280 to i64
  %282 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %281, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %282)
  %283 = load i32, i32* @g_370, align 4, !tbaa !1
  %284 = zext i32 %283 to i64
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %284, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %285)
  %286 = load i32, i32* @g_391, align 4, !tbaa !1
  %287 = zext i32 %286 to i64
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %287, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %288)
  %289 = load i64, i64* @g_407, align 8, !tbaa !7
  %290 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %289, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %290)
  %291 = load i16, i16* @g_416, align 2, !tbaa !10
  %292 = sext i16 %291 to i64
  %293 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %293)
  %294 = load i64, i64* @g_417, align 8, !tbaa !7
  %295 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %294, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %295)
  %296 = load i8, i8* @g_457, align 1, !tbaa !9
  %297 = zext i8 %296 to i64
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %298)
  %299 = load volatile i8, i8* @g_550, align 1, !tbaa !9
  %300 = zext i8 %299 to i64
  %301 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %300, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %301)
  %302 = load i32, i32* @g_580, align 4, !tbaa !1
  %303 = sext i32 %302 to i64
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %304)
  %305 = load i8, i8* @g_582, align 1, !tbaa !9
  %306 = zext i8 %305 to i64
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %307)
  %308 = load i32, i32* @g_611, align 4, !tbaa !1
  %309 = sext i32 %308 to i64
  %310 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %309, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %310)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %311

; <label>:311                                     ; preds = %327, %277
  %312 = load i32, i32* %i, align 4, !tbaa !1
  %313 = icmp slt i32 %312, 10
  br i1 %313, label %314, label %330

; <label>:314                                     ; preds = %311
  %315 = load i32, i32* %i, align 4, !tbaa !1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [10 x i32], [10 x i32]* @g_636, i32 0, i64 %316
  %318 = load i32, i32* %317, align 4, !tbaa !1
  %319 = zext i32 %318 to i64
  %320 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %319, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %320)
  %321 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

; <label>:323                                     ; preds = %314
  %324 = load i32, i32* %i, align 4, !tbaa !1
  %325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %324)
  br label %326

; <label>:326                                     ; preds = %323, %314
  br label %327

; <label>:327                                     ; preds = %326
  %328 = load i32, i32* %i, align 4, !tbaa !1
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %i, align 4, !tbaa !1
  br label %311

; <label>:330                                     ; preds = %311
  %331 = load i32, i32* @g_637, align 4, !tbaa !1
  %332 = zext i32 %331 to i64
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %332, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %333)
  %334 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_720, i32 0, i32 0), align 8, !tbaa !7
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %334, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 %335)
  %336 = load volatile i16, i16* bitcast (%union.U0* @g_720 to i16*), align 8
  %337 = and i16 %336, 8191
  %338 = zext i16 %337 to i32
  %339 = zext i32 %338 to i64
  %340 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %339, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 %340)
  %341 = load i32, i32* bitcast (%union.U0* @g_720 to i32*), align 4, !tbaa !1
  %342 = zext i32 %341 to i64
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %342, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 %343)
  %344 = load i16, i16* @g_726, align 2, !tbaa !10
  %345 = sext i16 %344 to i64
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %345, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %346)
  %347 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_840, i32 0, i32 0), align 8, !tbaa !7
  %348 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %347, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 %348)
  %349 = load volatile i16, i16* bitcast (%union.U0* @g_840 to i16*), align 8
  %350 = and i16 %349, 8191
  %351 = zext i16 %350 to i32
  %352 = zext i32 %351 to i64
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %352, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 %353)
  %354 = load i32, i32* bitcast (%union.U0* @g_840 to i32*), align 4, !tbaa !1
  %355 = zext i32 %354 to i64
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %355, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %356)
  %357 = load volatile i8, i8* @g_955, align 1, !tbaa !9
  %358 = sext i8 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 %359)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %360

; <label>:360                                     ; preds = %400, %330
  %361 = load i32, i32* %i, align 4, !tbaa !1
  %362 = icmp slt i32 %361, 8
  br i1 %362, label %363, label %403

; <label>:363                                     ; preds = %360
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %364

; <label>:364                                     ; preds = %396, %363
  %365 = load i32, i32* %j, align 4, !tbaa !1
  %366 = icmp slt i32 %365, 10
  br i1 %366, label %367, label %399

; <label>:367                                     ; preds = %364
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %368

; <label>:368                                     ; preds = %392, %367
  %369 = load i32, i32* %k, align 4, !tbaa !1
  %370 = icmp slt i32 %369, 3
  br i1 %370, label %371, label %395

; <label>:371                                     ; preds = %368
  %372 = load i32, i32* %k, align 4, !tbaa !1
  %373 = sext i32 %372 to i64
  %374 = load i32, i32* %j, align 4, !tbaa !1
  %375 = sext i32 %374 to i64
  %376 = load i32, i32* %i, align 4, !tbaa !1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [8 x [10 x [3 x i32]]], [8 x [10 x [3 x i32]]]* @g_966, i32 0, i64 %377
  %379 = getelementptr inbounds [10 x [3 x i32]], [10 x [3 x i32]]* %378, i32 0, i64 %375
  %380 = getelementptr inbounds [3 x i32], [3 x i32]* %379, i32 0, i64 %373
  %381 = load i32, i32* %380, align 4, !tbaa !1
  %382 = sext i32 %381 to i64
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %382, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0), i32 %383)
  %384 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %391

; <label>:386                                     ; preds = %371
  %387 = load i32, i32* %i, align 4, !tbaa !1
  %388 = load i32, i32* %j, align 4, !tbaa !1
  %389 = load i32, i32* %k, align 4, !tbaa !1
  %390 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %387, i32 %388, i32 %389)
  br label %391

; <label>:391                                     ; preds = %386, %371
  br label %392

; <label>:392                                     ; preds = %391
  %393 = load i32, i32* %k, align 4, !tbaa !1
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %k, align 4, !tbaa !1
  br label %368

; <label>:395                                     ; preds = %368
  br label %396

; <label>:396                                     ; preds = %395
  %397 = load i32, i32* %j, align 4, !tbaa !1
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %j, align 4, !tbaa !1
  br label %364

; <label>:399                                     ; preds = %364
  br label %400

; <label>:400                                     ; preds = %399
  %401 = load i32, i32* %i, align 4, !tbaa !1
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %i, align 4, !tbaa !1
  br label %360

; <label>:403                                     ; preds = %360
  %404 = load i32, i32* @g_1006, align 4, !tbaa !1
  %405 = sext i32 %404 to i64
  %406 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %405, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %406)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %407

; <label>:407                                     ; preds = %423, %403
  %408 = load i32, i32* %i, align 4, !tbaa !1
  %409 = icmp slt i32 %408, 4
  br i1 %409, label %410, label %426

; <label>:410                                     ; preds = %407
  %411 = load i32, i32* %i, align 4, !tbaa !1
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [4 x i32], [4 x i32]* @g_1008, i32 0, i64 %412
  %414 = load i32, i32* %413, align 4, !tbaa !1
  %415 = sext i32 %414 to i64
  %416 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %415, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 %416)
  %417 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %422

; <label>:419                                     ; preds = %410
  %420 = load i32, i32* %i, align 4, !tbaa !1
  %421 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %420)
  br label %422

; <label>:422                                     ; preds = %419, %410
  br label %423

; <label>:423                                     ; preds = %422
  %424 = load i32, i32* %i, align 4, !tbaa !1
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %i, align 4, !tbaa !1
  br label %407

; <label>:426                                     ; preds = %407
  %427 = load i32, i32* @g_1021, align 4, !tbaa !1
  %428 = zext i32 %427 to i64
  %429 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %428, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %429)
  %430 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1048, i32 0, i32 0), align 8, !tbaa !7
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i32 %431)
  %432 = load volatile i16, i16* bitcast (%union.U0* @g_1048 to i16*), align 8
  %433 = and i16 %432, 8191
  %434 = zext i16 %433 to i32
  %435 = zext i32 %434 to i64
  %436 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %435, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i32 %436)
  %437 = load i32, i32* bitcast (%union.U0* @g_1048 to i32*), align 4, !tbaa !1
  %438 = zext i32 %437 to i64
  %439 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %438, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 %439)
  %440 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1062, i32 0, i32 0), align 8, !tbaa !7
  %441 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %440, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 %441)
  %442 = load volatile i16, i16* bitcast (%union.U0* @g_1062 to i16*), align 8
  %443 = and i16 %442, 8191
  %444 = zext i16 %443 to i32
  %445 = zext i32 %444 to i64
  %446 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %445, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 %446)
  %447 = load i32, i32* bitcast (%union.U0* @g_1062 to i32*), align 4, !tbaa !1
  %448 = zext i32 %447 to i64
  %449 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %448, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 %449)
  %450 = load volatile i16, i16* bitcast (%union.U0* @g_1064 to i16*), align 8
  %451 = and i16 %450, 8191
  %452 = zext i16 %451 to i32
  %453 = zext i32 %452 to i64
  %454 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %453, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 %454)
  %455 = load i32, i32* bitcast (%union.U0* @g_1064 to i32*), align 4, !tbaa !1
  %456 = zext i32 %455 to i64
  %457 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %456, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 %457)
  %458 = load i16, i16* @g_1077, align 2, !tbaa !10
  %459 = zext i16 %458 to i64
  %460 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %459, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 %460)
  %461 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1386, i32 0, i32 0), align 8, !tbaa !7
  %462 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %461, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 %462)
  %463 = load volatile i16, i16* bitcast (%union.U0* @g_1386 to i16*), align 8
  %464 = and i16 %463, 8191
  %465 = zext i16 %464 to i32
  %466 = zext i32 %465 to i64
  %467 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %466, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 %467)
  %468 = load i32, i32* bitcast (%union.U0* @g_1386 to i32*), align 4, !tbaa !1
  %469 = zext i32 %468 to i64
  %470 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %469, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i32 %470)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %471

; <label>:471                                     ; preds = %487, %426
  %472 = load i32, i32* %i, align 4, !tbaa !1
  %473 = icmp slt i32 %472, 5
  br i1 %473, label %474, label %490

; <label>:474                                     ; preds = %471
  %475 = load i32, i32* %i, align 4, !tbaa !1
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [5 x i8], [5 x i8]* @g_1391, i32 0, i64 %476
  %478 = load i8, i8* %477, align 1, !tbaa !9
  %479 = zext i8 %478 to i64
  %480 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %479, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 %480)
  %481 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %486

; <label>:483                                     ; preds = %474
  %484 = load i32, i32* %i, align 4, !tbaa !1
  %485 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %484)
  br label %486

; <label>:486                                     ; preds = %483, %474
  br label %487

; <label>:487                                     ; preds = %486
  %488 = load i32, i32* %i, align 4, !tbaa !1
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %i, align 4, !tbaa !1
  br label %471

; <label>:490                                     ; preds = %471
  %491 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1480, i32 0, i32 0), align 8, !tbaa !7
  %492 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %491, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 %492)
  %493 = load volatile i16, i16* bitcast (%union.U0* @g_1480 to i16*), align 8
  %494 = and i16 %493, 8191
  %495 = zext i16 %494 to i32
  %496 = zext i32 %495 to i64
  %497 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %496, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 %497)
  %498 = load volatile i32, i32* bitcast (%union.U0* @g_1480 to i32*), align 4, !tbaa !1
  %499 = zext i32 %498 to i64
  %500 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %499, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 %500)
  %501 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1573, i32 0, i32 0), align 8, !tbaa !7
  %502 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %501, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i32 %502)
  %503 = load volatile i16, i16* bitcast (%union.U0* @g_1573 to i16*), align 8
  %504 = and i16 %503, 8191
  %505 = zext i16 %504 to i32
  %506 = zext i32 %505 to i64
  %507 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %506, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i32 %507)
  %508 = load i32, i32* bitcast (%union.U0* @g_1573 to i32*), align 4, !tbaa !1
  %509 = zext i32 %508 to i64
  %510 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %509, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32 %510)
  %511 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1625, i32 0, i32 0), align 8, !tbaa !7
  %512 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %511, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i32 %512)
  %513 = load volatile i16, i16* bitcast (%union.U0* @g_1625 to i16*), align 8
  %514 = and i16 %513, 8191
  %515 = zext i16 %514 to i32
  %516 = zext i32 %515 to i64
  %517 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %516, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 %517)
  %518 = load i32, i32* bitcast (%union.U0* @g_1625 to i32*), align 4, !tbaa !1
  %519 = zext i32 %518 to i64
  %520 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %519, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 %520)
  %521 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 255, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i32 %521)
  %522 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %523 = zext i32 %522 to i64
  %524 = xor i64 %523, 4294967295
  %525 = trunc i64 %524 to i32
  %526 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %525, i32 %526)
  %527 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %527) #1
  %528 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %528) #1
  %529 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %529) #1
  %530 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %530) #1
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
  %1 = alloca i32, align 4
  %l_2 = alloca [1 x [3 x [6 x i64]]], align 16
  %l_3 = alloca [4 x i32], align 16
  %l_1604 = alloca i64, align 8
  %l_1623 = alloca %union.U0**, align 8
  %l_1622 = alloca %union.U0***, align 8
  %l_1621 = alloca %union.U0****, align 8
  %l_1620 = alloca %union.U0*****, align 8
  %l_1624 = alloca %union.U0*****, align 8
  %l_1631 = alloca i32, align 4
  %l_1720 = alloca %union.U0****, align 8
  %l_1728 = alloca i16, align 2
  %l_1767 = alloca [6 x i8], align 1
  %l_1796 = alloca i8***, align 8
  %l_1807 = alloca i64, align 8
  %l_1861 = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_18 = alloca i16, align 2
  %l_1606 = alloca i32****, align 8
  %l_1605 = alloca i32*****, align 8
  %l_1607 = alloca i16, align 2
  %l_1626 = alloca i32*, align 8
  %l_1595 = alloca i32, align 4
  %l_1608 = alloca i64*, align 8
  %l_1613 = alloca i8**, align 8
  %2 = alloca i32
  %l_1633 = alloca i32*, align 8
  %l_1641 = alloca i32, align 4
  %l_1646 = alloca [6 x i16], align 2
  %l_1659 = alloca i16*, align 8
  %l_1660 = alloca i32, align 4
  %l_1661 = alloca i32*, align 8
  %l_1664 = alloca i32**, align 8
  %l_1663 = alloca i32***, align 8
  %l_1695 = alloca %union.U0*, align 8
  %l_1708 = alloca i32, align 4
  %l_1709 = alloca i32, align 4
  %l_1710 = alloca i32, align 4
  %l_1712 = alloca i32, align 4
  %l_1717 = alloca %union.U0***, align 8
  %l_1727 = alloca i64*, align 8
  %l_1735 = alloca i8, align 1
  %l_1764 = alloca i8, align 1
  %l_1813 = alloca i8*, align 8
  %l_1812 = alloca i8**, align 8
  %l_1811 = alloca i8***, align 8
  %l_1810 = alloca [10 x i8****], align 16
  %l_1884 = alloca [3 x [7 x i32*]], align 16
  %l_1913 = alloca [5 x i32*], align 16
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %3 = bitcast [1 x [3 x [6 x i64]]]* %l_2 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %3) #1
  %4 = bitcast [1 x [3 x [6 x i64]]]* %l_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([1 x [3 x [6 x i64]]]* @func_1.l_2 to i8*), i64 144, i32 16, i1 false)
  %5 = bitcast [4 x i32]* %l_3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast [4 x i32]* %l_3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 16, i1 false)
  %7 = bitcast i64* %l_1604 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64 6418114299454280776, i64* %l_1604, align 8, !tbaa !7
  %8 = bitcast %union.U0*** %l_1623 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %union.U0** @g_130, %union.U0*** %l_1623, align 8, !tbaa !5
  %9 = bitcast %union.U0**** %l_1622 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %union.U0*** %l_1623, %union.U0**** %l_1622, align 8, !tbaa !5
  %10 = bitcast %union.U0***** %l_1621 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %union.U0**** %l_1622, %union.U0***** %l_1621, align 8, !tbaa !5
  %11 = bitcast %union.U0****** %l_1620 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %union.U0***** %l_1621, %union.U0****** %l_1620, align 8, !tbaa !5
  %12 = bitcast %union.U0****** %l_1624 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store %union.U0***** %l_1621, %union.U0****** %l_1624, align 8, !tbaa !5
  %13 = bitcast i32* %l_1631 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 356164171, i32* %l_1631, align 4, !tbaa !1
  %14 = bitcast %union.U0***** %l_1720 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store %union.U0**** %l_1622, %union.U0***** %l_1720, align 8, !tbaa !5
  %15 = bitcast i16* %l_1728 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #1
  store i16 1, i16* %l_1728, align 2, !tbaa !10
  %16 = bitcast [6 x i8]* %l_1767 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %16) #1
  %17 = bitcast [6 x i8]* %l_1767 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @func_1.l_1767, i32 0, i32 0), i64 6, i32 1, i1 false)
  %18 = bitcast i8**** %l_1796 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i8*** @g_1161, i8**** %l_1796, align 8, !tbaa !5
  %19 = bitcast i64* %l_1807 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64 0, i64* %l_1807, align 8, !tbaa !7
  %20 = bitcast i32*** %l_1861 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i32** @g_144, i32*** %l_1861, align 8, !tbaa !5
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = getelementptr inbounds [1 x [3 x [6 x i64]]], [1 x [3 x [6 x i64]]]* %l_2, i32 0, i64 0
  %25 = getelementptr inbounds [3 x [6 x i64]], [3 x [6 x i64]]* %24, i32 0, i64 0
  %26 = getelementptr inbounds [6 x i64], [6 x i64]* %25, i32 0, i64 5
  %27 = load i64, i64* %26, align 8, !tbaa !7
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %l_3, i32 0, i64 3
  store i32 %28, i32* %29, align 4, !tbaa !1
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %254

; <label>:31                                      ; preds = %0
  %32 = bitcast i16* %l_18 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %32) #1
  store i16 6, i16* %l_18, align 2, !tbaa !10
  %33 = bitcast i32***** %l_1606 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  store i32**** @g_932, i32***** %l_1606, align 8, !tbaa !5
  %34 = bitcast i32****** %l_1605 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  store i32***** %l_1606, i32****** %l_1605, align 8, !tbaa !5
  %35 = bitcast i16* %l_1607 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %35) #1
  store i16 -24246, i16* %l_1607, align 2, !tbaa !10
  %36 = bitcast i32** %l_1626 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %l_3, i32 0, i64 3
  store i32* %37, i32** %l_1626, align 8, !tbaa !5
  store i32 0, i32* @g_4, align 4, !tbaa !1
  br label %38

; <label>:38                                      ; preds = %168, %31
  %39 = load i32, i32* @g_4, align 4, !tbaa !1
  %40 = icmp eq i32 %39, -22
  br i1 %40, label %41, label %171

; <label>:41                                      ; preds = %38
  %42 = bitcast i32* %l_1595 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 -9, i32* %l_1595, align 4, !tbaa !1
  %43 = bitcast i64** %l_1608 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  store i64* @g_185, i64** %l_1608, align 8, !tbaa !5
  %44 = bitcast i8*** %l_1613 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  store i8** @g_587, i8*** %l_1613, align 8, !tbaa !5
  %45 = load i32, i32* @g_4, align 4, !tbaa !1
  %46 = load i32, i32* @g_4, align 4, !tbaa !1
  %47 = sext i32 %46 to i64
  %48 = call i64 @safe_sub_func_int64_t_s_s(i64 1, i64 %47)
  %49 = trunc i64 %48 to i32
  %50 = load i16, i16* %l_18, align 2, !tbaa !10
  %51 = trunc i16 %50 to i8
  %52 = call i32 @func_16(i8 signext %51)
  %53 = call i32 @safe_add_func_int32_t_s_s(i32 %49, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = call i64 @safe_sub_func_int64_t_s_s(i64 -9, i64 %57)
  %59 = load i32, i32* %l_1595, align 4, !tbaa !1
  %60 = load i32, i32* @g_38, align 4, !tbaa !1
  %61 = trunc i32 %60 to i16
  %62 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %61, i32 11)
  %63 = sext i16 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

; <label>:65                                      ; preds = %41
  %66 = load i8*****, i8****** @g_1158, align 8, !tbaa !5
  %67 = load i8****, i8***** %66, align 8, !tbaa !5
  %68 = load i8***, i8**** %67, align 8, !tbaa !5
  %69 = load i8**, i8*** %68, align 8, !tbaa !5
  %70 = load i8*, i8** %69, align 8, !tbaa !5
  %71 = load i8, i8* %70, align 1, !tbaa !9
  %72 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %71, i32 6)
  %73 = zext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br label %75

; <label>:75                                      ; preds = %65, %41
  %76 = phi i1 [ true, %41 ], [ %74, %65 ]
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %l_1604, align 8, !tbaa !7
  %80 = icmp sgt i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32*****, i32****** %l_1605, align 8, !tbaa !5
  %83 = icmp ne i32***** @g_1106, %82
  %84 = zext i1 %83 to i32
  %85 = load i16, i16* %l_1607, align 2, !tbaa !10
  %86 = sext i16 %85 to i32
  %87 = icmp eq i32 %84, %86
  %88 = zext i1 %87 to i32
  %89 = trunc i32 %88 to i8
  %90 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %89, i8 signext -70)
  %91 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %90, i32 5)
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

; <label>:94                                      ; preds = %75
  %95 = load i64, i64* getelementptr inbounds ([2 x %union.U0], [2 x %union.U0]* @g_131, i32 0, i64 1, i32 0), align 8, !tbaa !7
  %96 = icmp ne i64 %95, 0
  br label %97

; <label>:97                                      ; preds = %94, %75
  %98 = phi i1 [ false, %75 ], [ %96, %94 ]
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %l_1595, align 4, !tbaa !1
  %101 = zext i32 %100 to i64
  %102 = icmp sle i64 %101, 1
  %103 = zext i1 %102 to i32
  %104 = sext i32 %103 to i64
  %105 = load i64*, i64** %l_1608, align 8, !tbaa !5
  store i64 %104, i64* %105, align 8, !tbaa !7
  %106 = and i64 %104, -7
  %107 = icmp eq i64 %58, %106
  %108 = zext i1 %107 to i32
  %109 = trunc i32 %108 to i8
  %110 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %109, i32 5)
  %111 = zext i8 %110 to i32
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %l_3, i32 0, i64 3
  %113 = load i32, i32* %112, align 4, !tbaa !1
  %114 = or i32 %113, %111
  store i32 %114, i32* %112, align 4, !tbaa !1
  %115 = load i8*, i8** @g_587, align 8, !tbaa !5
  %116 = load i8, i8* %115, align 1, !tbaa !9
  %117 = load i64, i64* %l_1604, align 8, !tbaa !7
  %118 = trunc i64 %117 to i8
  %119 = load i32, i32* %l_1595, align 4, !tbaa !1
  %120 = zext i32 %119 to i64
  %121 = or i64 %120, 49503
  %122 = trunc i64 %121 to i32
  %123 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %118, i32 %122)
  %124 = zext i8 %123 to i32
  %125 = load i16, i16* @g_1077, align 2, !tbaa !10
  %126 = zext i16 %125 to i32
  %127 = icmp ne i32 %124, %126
  br i1 %127, label %128, label %133

; <label>:128                                     ; preds = %97
  %129 = load i8**, i8*** %l_1613, align 8, !tbaa !5
  %130 = load i8***, i8**** @g_952, align 8, !tbaa !5
  %131 = load i8**, i8*** %130, align 8, !tbaa !5
  %132 = icmp eq i8** %129, %131
  br label %133

; <label>:133                                     ; preds = %128, %97
  %134 = phi i1 [ false, %97 ], [ %132, %128 ]
  %135 = zext i1 %134 to i32
  %136 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %116, i32 %135)
  %137 = sext i8 %136 to i32
  %138 = load i32***, i32**** @g_231, align 8, !tbaa !5
  %139 = load i32**, i32*** %138, align 8, !tbaa !5
  %140 = load i32*, i32** %139, align 8, !tbaa !5
  store volatile i32 %137, i32* %140, align 4, !tbaa !1
  %141 = load %union.U0***, %union.U0**** @g_714, align 8, !tbaa !5
  %142 = load volatile %union.U0**, %union.U0*** %141, align 8, !tbaa !5
  store %union.U0* null, %union.U0** %142, align 8, !tbaa !5
  store i32 0, i32* @g_1006, align 4, !tbaa !1
  br label %143

; <label>:143                                     ; preds = %159, %133
  %144 = load i32, i32* @g_1006, align 4, !tbaa !1
  %145 = icmp ne i32 %144, -24
  br i1 %145, label %146, label %162

; <label>:146                                     ; preds = %143
  %147 = load i32**, i32*** @g_232, align 8, !tbaa !5
  %148 = load i32*, i32** %147, align 8, !tbaa !5
  %149 = load volatile i32, i32* %148, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = or i64 %150, 2145239156
  %152 = trunc i64 %151 to i32
  store volatile i32 %152, i32* %148, align 4, !tbaa !1
  %153 = load i8, i8* @g_192, align 1, !tbaa !9
  %154 = icmp ne i8 %153, 0
  br i1 %154, label %155, label %156

; <label>:155                                     ; preds = %146
  store i32 8, i32* %2
  br label %163

; <label>:156                                     ; preds = %146
  %157 = load i64, i64* @g_407, align 8, !tbaa !7
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %1
  store i32 1, i32* %2
  br label %163
                                                  ; No predecessors!
  %160 = load i32, i32* @g_1006, align 4, !tbaa !1
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* @g_1006, align 4, !tbaa !1
  br label %143

; <label>:162                                     ; preds = %143
  store i32 0, i32* %2
  br label %163

; <label>:163                                     ; preds = %155, %162, %156
  %164 = bitcast i8*** %l_1613 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast i64** %l_1608 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast i32* %l_1595 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %247 [
    i32 0, label %167
    i32 8, label %172
  ]

; <label>:167                                     ; preds = %163
  br label %168

; <label>:168                                     ; preds = %167
  %169 = load i32, i32* @g_4, align 4, !tbaa !1
  %170 = call i32 @safe_sub_func_uint32_t_u_u(i32 %169, i32 1)
  store i32 %170, i32* @g_4, align 4, !tbaa !1
  br label %38

; <label>:171                                     ; preds = %38
  br label %172

; <label>:172                                     ; preds = %171, %163
  %173 = load i8*, i8** @g_587, align 8, !tbaa !5
  %174 = load i8, i8* %173, align 1, !tbaa !9
  %175 = load %union.U0*****, %union.U0****** %l_1620, align 8, !tbaa !5
  store %union.U0***** %175, %union.U0****** %l_1624, align 8, !tbaa !5
  %176 = load i16, i16* %l_1607, align 2, !tbaa !10
  %177 = sext i16 %176 to i32
  %178 = load i16, i16* %l_1607, align 2, !tbaa !10
  %179 = sext i16 %178 to i32
  %180 = icmp ne i32 %177, %179
  %181 = zext i1 %180 to i32
  %182 = load i32*, i32** %l_1626, align 8, !tbaa !5
  %183 = load i32, i32* %182, align 4, !tbaa !1
  %184 = and i32 %183, %181
  store i32 %184, i32* %182, align 4, !tbaa !1
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %l_1604, align 8, !tbaa !7
  %187 = xor i64 %185, %186
  %188 = icmp ne %union.U0***** %175, @g_973
  %189 = zext i1 %188 to i32
  %190 = load i16, i16* %l_18, align 2, !tbaa !10
  %191 = load i8*****, i8****** @g_1158, align 8, !tbaa !5
  %192 = load i8****, i8***** %191, align 8, !tbaa !5
  %193 = load i8***, i8**** %192, align 8, !tbaa !5
  %194 = load i8**, i8*** %193, align 8, !tbaa !5
  %195 = load i8*, i8** %194, align 8, !tbaa !5
  %196 = load i8, i8* %195, align 1, !tbaa !9
  %197 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %196, i8 zeroext -45)
  %198 = zext i8 %197 to i32
  %199 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %190, i32 %198)
  %200 = zext i16 %199 to i32
  %201 = and i32 %189, %200
  %202 = trunc i32 %201 to i8
  %203 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %174, i8 signext %202)
  %204 = sext i8 %203 to i16
  %205 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %204, i16 signext -18932)
  %206 = sext i16 %205 to i32
  store i32 %206, i32* %l_1631, align 4, !tbaa !1
  %207 = load i32***, i32**** @g_231, align 8, !tbaa !5
  %208 = load i32**, i32*** %207, align 8, !tbaa !5
  %209 = load i32*, i32** %208, align 8, !tbaa !5
  %210 = load volatile i32, i32* %209, align 4, !tbaa !1
  %211 = load i32*, i32** @g_233, align 8, !tbaa !5
  store volatile i32 %210, i32* %211, align 4, !tbaa !1
  %212 = load i32, i32* @g_580, align 4, !tbaa !1
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

; <label>:214                                     ; preds = %172
  store i32 9, i32* %2
  br label %247

; <label>:215                                     ; preds = %172
  store i16 0, i16* @g_416, align 2, !tbaa !10
  br label %216

; <label>:216                                     ; preds = %241, %215
  %217 = load i16, i16* @g_416, align 2, !tbaa !10
  %218 = sext i16 %217 to i32
  %219 = icmp sle i32 %218, 4
  br i1 %219, label %220, label %246

; <label>:220                                     ; preds = %216
  store i32 1, i32* bitcast (%union.U0* @g_75 to i32*), align 4, !tbaa !1
  br label %221

; <label>:221                                     ; preds = %237, %220
  %222 = load i32, i32* bitcast (%union.U0* @g_75 to i32*), align 4, !tbaa !1
  %223 = icmp ule i32 %222, 9
  br i1 %223, label %224, label %240

; <label>:224                                     ; preds = %221
  store i32 0, i32* bitcast (%union.U0* @g_1064 to i32*), align 4, !tbaa !1
  br label %225

; <label>:225                                     ; preds = %233, %224
  %226 = load i32, i32* bitcast (%union.U0* @g_1064 to i32*), align 4, !tbaa !1
  %227 = icmp ule i32 %226, 4
  br i1 %227, label %228, label %236

; <label>:228                                     ; preds = %225
  %229 = bitcast i32** %l_1633 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %229) #1
  store i32* @g_611, i32** %l_1633, align 8, !tbaa !5
  %230 = load i32*, i32** %l_1633, align 8, !tbaa !5
  %231 = load volatile i32**, i32*** @g_1634, align 8, !tbaa !5
  store i32* %230, i32** %231, align 8, !tbaa !5
  %232 = bitcast i32** %l_1633 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #1
  br label %233

; <label>:233                                     ; preds = %228
  %234 = load i32, i32* bitcast (%union.U0* @g_1064 to i32*), align 4, !tbaa !1
  %235 = add i32 %234, 1
  store i32 %235, i32* bitcast (%union.U0* @g_1064 to i32*), align 4, !tbaa !1
  br label %225

; <label>:236                                     ; preds = %225
  br label %237

; <label>:237                                     ; preds = %236
  %238 = load i32, i32* bitcast (%union.U0* @g_75 to i32*), align 4, !tbaa !1
  %239 = add i32 %238, 1
  store i32 %239, i32* bitcast (%union.U0* @g_75 to i32*), align 4, !tbaa !1
  br label %221

; <label>:240                                     ; preds = %221
  br label %241

; <label>:241                                     ; preds = %240
  %242 = load i16, i16* @g_416, align 2, !tbaa !10
  %243 = sext i16 %242 to i32
  %244 = add nsw i32 %243, 1
  %245 = trunc i32 %244 to i16
  store i16 %245, i16* @g_416, align 2, !tbaa !10
  br label %216

; <label>:246                                     ; preds = %216
  store i32 0, i32* %2
  br label %247

; <label>:247                                     ; preds = %214, %246, %163
  %248 = bitcast i32** %l_1626 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %249 = bitcast i16* %l_1607 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %249) #1
  %250 = bitcast i32****** %l_1605 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #1
  %251 = bitcast i32***** %l_1606 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #1
  %252 = bitcast i16* %l_18 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %252) #1
  %cleanup.dest.1 = load i32, i32* %2
  switch i32 %cleanup.dest.1, label %333 [
    i32 0, label %253
    i32 9, label %258
  ]

; <label>:253                                     ; preds = %247
  br label %257

; <label>:254                                     ; preds = %0
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %l_3, i32 0, i64 3
  %256 = load i32, i32* %255, align 4, !tbaa !1
  store i32 %256, i32* %1
  store i32 1, i32* %2
  br label %333

; <label>:257                                     ; preds = %253
  br label %258

; <label>:258                                     ; preds = %257, %247
  store i32 16, i32* @g_1021, align 4, !tbaa !1
  br label %259

; <label>:259                                     ; preds = %323, %258
  %260 = load i32, i32* @g_1021, align 4, !tbaa !1
  %261 = icmp ne i32 %260, 30
  br i1 %261, label %262, label %326

; <label>:262                                     ; preds = %259
  %263 = bitcast i32* %l_1641 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %263) #1
  store i32 -5, i32* %l_1641, align 4, !tbaa !1
  %264 = bitcast [6 x i16]* %l_1646 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %264) #1
  %265 = bitcast [6 x i16]* %l_1646 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %265, i8* bitcast ([6 x i16]* @func_1.l_1646 to i8*), i64 12, i32 2, i1 false)
  %266 = bitcast i16** %l_1659 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %266) #1
  store i16* @g_726, i16** %l_1659, align 8, !tbaa !5
  %267 = bitcast i32* %l_1660 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %267) #1
  store i32 1821381415, i32* %l_1660, align 4, !tbaa !1
  %268 = bitcast i32** %l_1661 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %268) #1
  store i32* %l_1631, i32** %l_1661, align 8, !tbaa !5
  %269 = bitcast i32*** %l_1664 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %269) #1
  store i32** null, i32*** %l_1664, align 8, !tbaa !5
  %270 = bitcast i32**** %l_1663 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %270) #1
  store i32*** %l_1664, i32**** %l_1663, align 8, !tbaa !5
  %271 = bitcast %union.U0** %l_1695 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %271) #1
  store %union.U0* @g_133, %union.U0** %l_1695, align 8, !tbaa !5
  %272 = bitcast i32* %l_1708 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %272) #1
  store i32 -776512598, i32* %l_1708, align 4, !tbaa !1
  %273 = bitcast i32* %l_1709 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %273) #1
  store i32 667541167, i32* %l_1709, align 4, !tbaa !1
  %274 = bitcast i32* %l_1710 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %274) #1
  store i32 -2, i32* %l_1710, align 4, !tbaa !1
  %275 = bitcast i32* %l_1712 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %275) #1
  store i32 1636393442, i32* %l_1712, align 4, !tbaa !1
  %276 = bitcast %union.U0**** %l_1717 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %276) #1
  store %union.U0*** %l_1623, %union.U0**** %l_1717, align 8, !tbaa !5
  %277 = bitcast i64** %l_1727 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %277) #1
  store i64* getelementptr inbounds ([10 x i64], [10 x i64]* @g_83, i32 0, i64 8), i64** %l_1727, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1735) #1
  store i8 -10, i8* %l_1735, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %l_1764) #1
  store i8 1, i8* %l_1764, align 1, !tbaa !9
  %278 = bitcast i8** %l_1813 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %278) #1
  store i8* @g_135, i8** %l_1813, align 8, !tbaa !5
  %279 = bitcast i8*** %l_1812 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %279) #1
  store i8** %l_1813, i8*** %l_1812, align 8, !tbaa !5
  %280 = bitcast i8**** %l_1811 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %280) #1
  store i8*** %l_1812, i8**** %l_1811, align 8, !tbaa !5
  %281 = bitcast [10 x i8****]* %l_1810 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %281) #1
  %282 = bitcast [3 x [7 x i32*]]* %l_1884 to i8*
  call void @llvm.lifetime.start(i64 168, i8* %282) #1
  %283 = bitcast [3 x [7 x i32*]]* %l_1884 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %283, i8* bitcast ([3 x [7 x i32*]]* @func_1.l_1884 to i8*), i64 168, i32 16, i1 false)
  %284 = bitcast [5 x i32*]* %l_1913 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %284) #1
  %285 = bitcast [5 x i32*]* %l_1913 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %285, i8* bitcast ([5 x i32*]* @func_1.l_1913 to i8*), i64 40, i32 16, i1 false)
  %286 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %286) #1
  %287 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %287) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %288

; <label>:288                                     ; preds = %295, %262
  %289 = load i32, i32* %i2, align 4, !tbaa !1
  %290 = icmp slt i32 %289, 10
  br i1 %290, label %291, label %298

; <label>:291                                     ; preds = %288
  %292 = load i32, i32* %i2, align 4, !tbaa !1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [10 x i8****], [10 x i8****]* %l_1810, i32 0, i64 %293
  store i8**** %l_1811, i8***** %294, align 8, !tbaa !5
  br label %295

; <label>:295                                     ; preds = %291
  %296 = load i32, i32* %i2, align 4, !tbaa !1
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %i2, align 4, !tbaa !1
  br label %288

; <label>:298                                     ; preds = %288
  %299 = getelementptr inbounds [4 x i32], [4 x i32]* %l_3, i32 0, i64 3
  %300 = load volatile i32**, i32*** @g_1638, align 8, !tbaa !5
  store i32* %299, i32** %300, align 8, !tbaa !5
  %301 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #1
  %302 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast [5 x i32*]* %l_1913 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %303) #1
  %304 = bitcast [3 x [7 x i32*]]* %l_1884 to i8*
  call void @llvm.lifetime.end(i64 168, i8* %304) #1
  %305 = bitcast [10 x i8****]* %l_1810 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %305) #1
  %306 = bitcast i8**** %l_1811 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  %307 = bitcast i8*** %l_1812 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %307) #1
  %308 = bitcast i8** %l_1813 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %308) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1764) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1735) #1
  %309 = bitcast i64** %l_1727 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #1
  %310 = bitcast %union.U0**** %l_1717 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %311 = bitcast i32* %l_1712 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #1
  %312 = bitcast i32* %l_1710 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #1
  %313 = bitcast i32* %l_1709 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %314 = bitcast i32* %l_1708 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #1
  %315 = bitcast %union.U0** %l_1695 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #1
  %316 = bitcast i32**** %l_1663 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #1
  %317 = bitcast i32*** %l_1664 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #1
  %318 = bitcast i32** %l_1661 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %318) #1
  %319 = bitcast i32* %l_1660 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast i16** %l_1659 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %320) #1
  %321 = bitcast [6 x i16]* %l_1646 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %321) #1
  %322 = bitcast i32* %l_1641 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  br label %323

; <label>:323                                     ; preds = %298
  %324 = load i32, i32* @g_1021, align 4, !tbaa !1
  %325 = add i32 %324, 1
  store i32 %325, i32* @g_1021, align 4, !tbaa !1
  br label %259

; <label>:326                                     ; preds = %259
  %327 = load volatile i32*, i32** @g_48, align 8, !tbaa !5
  %328 = load i32, i32* %327, align 4, !tbaa !1
  %329 = load i32, i32* %l_1631, align 4, !tbaa !1
  %330 = xor i32 %329, %328
  store i32 %330, i32* %l_1631, align 4, !tbaa !1
  %331 = load i16, i16* getelementptr inbounds ([10 x [6 x [4 x i16]]], [10 x [6 x [4 x i16]]]* @g_113, i32 0, i64 8, i64 3, i64 1), align 2, !tbaa !10
  %332 = zext i16 %331 to i32
  store i32 %332, i32* %1
  store i32 1, i32* %2
  br label %333

; <label>:333                                     ; preds = %326, %254, %247
  %334 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #1
  %335 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %335) #1
  %336 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %336) #1
  %337 = bitcast i32*** %l_1861 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %337) #1
  %338 = bitcast i64* %l_1807 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %338) #1
  %339 = bitcast i8**** %l_1796 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %339) #1
  %340 = bitcast [6 x i8]* %l_1767 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %340) #1
  %341 = bitcast i16* %l_1728 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %341) #1
  %342 = bitcast %union.U0***** %l_1720 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %342) #1
  %343 = bitcast i32* %l_1631 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %343) #1
  %344 = bitcast %union.U0****** %l_1624 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %344) #1
  %345 = bitcast %union.U0****** %l_1620 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #1
  %346 = bitcast %union.U0***** %l_1621 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #1
  %347 = bitcast %union.U0**** %l_1622 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %347) #1
  %348 = bitcast %union.U0*** %l_1623 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #1
  %349 = bitcast i64* %l_1604 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %349) #1
  %350 = bitcast [4 x i32]* %l_3 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %350) #1
  %351 = bitcast [1 x [3 x [6 x i64]]]* %l_2 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %351) #1
  %352 = load i32, i32* %1
  ret i32 %352
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.80, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal i32 @func_16(i8 signext %p_17) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %l_19 = alloca [8 x [4 x [6 x i32]]], align 16
  %l_65 = alloca i32*, align 8
  %l_1433 = alloca [5 x [8 x [5 x i32]]], align 16
  %l_1435 = alloca i32, align 4
  %l_1445 = alloca i32, align 4
  %l_1473 = alloca i8, align 1
  %l_1496 = alloca i32, align 4
  %l_1546 = alloca i32**, align 8
  %l_1545 = alloca i32***, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_29 = alloca i16, align 2
  %l_1432 = alloca [3 x i32*], align 16
  %l_1434 = alloca i32, align 4
  %l_1481 = alloca [8 x %union.U0**], align 16
  %i1 = alloca i32, align 4
  %l_1544 = alloca i32**, align 8
  %l_1543 = alloca i32***, align 8
  %l_1547 = alloca i32, align 4
  %l_1548 = alloca i32**, align 8
  %l_1541 = alloca i64*, align 8
  %l_1542 = alloca [9 x i64*], align 16
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k5 = alloca i32, align 4
  %3 = alloca i32
  %l_1551 = alloca i32*, align 8
  %l_1567 = alloca [5 x [6 x [8 x i32]]], align 16
  %l_1568 = alloca i64, align 8
  %l_1580 = alloca [9 x [9 x i32]], align 16
  %l_1589 = alloca i8, align 1
  %l_1593 = alloca i8**, align 8
  %l_1592 = alloca i8***, align 8
  %l_1591 = alloca [2 x i8****], align 16
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %k9 = alloca i32, align 4
  %l_1557 = alloca [7 x i32], align 16
  %l_1569 = alloca [9 x i32], align 16
  %l_1570 = alloca i32, align 4
  %i10 = alloca i32, align 4
  %l_1558 = alloca i32*, align 8
  %l_1559 = alloca i32*, align 8
  %l_1560 = alloca i32*, align 8
  %l_1561 = alloca i32*, align 8
  %l_1562 = alloca i32*, align 8
  %l_1563 = alloca i32*, align 8
  %l_1564 = alloca i32*, align 8
  %l_1565 = alloca i32*, align 8
  %l_1566 = alloca [6 x i32*], align 16
  %i11 = alloca i32, align 4
  %l_1587 = alloca i64*, align 8
  %l_1588 = alloca i64*, align 8
  %l_1590 = alloca i32, align 4
  %l_1594 = alloca i8****, align 8
  store i8 %p_17, i8* %2, align 1, !tbaa !9
  %4 = bitcast [8 x [4 x [6 x i32]]]* %l_19 to i8*
  call void @llvm.lifetime.start(i64 768, i8* %4) #1
  %5 = bitcast [8 x [4 x [6 x i32]]]* %l_19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([8 x [4 x [6 x i32]]]* @func_16.l_19 to i8*), i64 768, i32 16, i1 false)
  %6 = bitcast i32** %l_65 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_4, i32** %l_65, align 8, !tbaa !5
  %7 = bitcast [5 x [8 x [5 x i32]]]* %l_1433 to i8*
  call void @llvm.lifetime.start(i64 800, i8* %7) #1
  %8 = bitcast [5 x [8 x [5 x i32]]]* %l_1433 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([5 x [8 x [5 x i32]]]* @func_16.l_1433 to i8*), i64 800, i32 16, i1 false)
  %9 = bitcast i32* %l_1435 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -116433891, i32* %l_1435, align 4, !tbaa !1
  %10 = bitcast i32* %l_1445 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 -1, i32* %l_1445, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1473) #1
  store i8 4, i8* %l_1473, align 1, !tbaa !9
  %11 = bitcast i32* %l_1496 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 677536760, i32* %l_1496, align 4, !tbaa !1
  %12 = bitcast i32*** %l_1546 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32** @g_144, i32*** %l_1546, align 8, !tbaa !5
  %13 = bitcast i32**** %l_1545 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32*** %l_1546, i32**** %l_1545, align 8, !tbaa !5
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  br label %17

; <label>:17                                      ; preds = %411, %0
  store i8 3, i8* %2, align 1, !tbaa !9
  br label %18

; <label>:18                                      ; preds = %45, %17
  %19 = load i8, i8* %2, align 1, !tbaa !9
  %20 = sext i8 %19 to i32
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %50

; <label>:22                                      ; preds = %18
  %23 = bitcast i16* %l_29 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %23) #1
  store i16 -27069, i16* %l_29, align 2, !tbaa !10
  %24 = bitcast [3 x i32*]* %l_1432 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %24) #1
  %25 = bitcast i32* %l_1434 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 865313162, i32* %l_1434, align 4, !tbaa !1
  %26 = bitcast [8 x %union.U0**]* %l_1481 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %26) #1
  %27 = bitcast [8 x %union.U0**]* %l_1481 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast ([8 x %union.U0**]* @func_16.l_1481 to i8*), i64 64, i32 16, i1 false)
  %28 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %29

; <label>:29                                      ; preds = %36, %22
  %30 = load i32, i32* %i1, align 4, !tbaa !1
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %39

; <label>:32                                      ; preds = %29
  %33 = load i32, i32* %i1, align 4, !tbaa !1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x i32*], [3 x i32*]* %l_1432, i32 0, i64 %34
  store i32* null, i32** %35, align 8, !tbaa !5
  br label %36

; <label>:36                                      ; preds = %32
  %37 = load i32, i32* %i1, align 4, !tbaa !1
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %i1, align 4, !tbaa !1
  br label %29

; <label>:39                                      ; preds = %29
  %40 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast [8 x %union.U0**]* %l_1481 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %41) #1
  %42 = bitcast i32* %l_1434 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast [3 x i32*]* %l_1432 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %43) #1
  %44 = bitcast i16* %l_29 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %44) #1
  br label %45

; <label>:45                                      ; preds = %39
  %46 = load i8, i8* %2, align 1, !tbaa !9
  %47 = sext i8 %46 to i32
  %48 = sub nsw i32 %47, 1
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %2, align 1, !tbaa !9
  br label %18

; <label>:50                                      ; preds = %18
  store i16 0, i16* @g_416, align 2, !tbaa !10
  br label %51

; <label>:51                                      ; preds = %210, %50
  %52 = load i16, i16* @g_416, align 2, !tbaa !10
  %53 = sext i16 %52 to i32
  %54 = icmp sge i32 %53, 11
  br i1 %54, label %55, label %213

; <label>:55                                      ; preds = %51
  %56 = bitcast i32*** %l_1544 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  store i32** @g_144, i32*** %l_1544, align 8, !tbaa !5
  %57 = bitcast i32**** %l_1543 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  store i32*** %l_1544, i32**** %l_1543, align 8, !tbaa !5
  %58 = bitcast i32* %l_1547 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  store i32 -2, i32* %l_1547, align 4, !tbaa !1
  %59 = bitcast i32*** %l_1548 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  store i32** @g_928, i32*** %l_1548, align 8, !tbaa !5
  store i32 3, i32* @g_1006, align 4, !tbaa !1
  br label %60

; <label>:60                                      ; preds = %199, %55
  %61 = load i32, i32* @g_1006, align 4, !tbaa !1
  %62 = icmp sle i32 %61, 9
  br i1 %62, label %63, label %202

; <label>:63                                      ; preds = %60
  %64 = bitcast i64** %l_1541 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  store i64* @g_348, i64** %l_1541, align 8, !tbaa !5
  %65 = bitcast [9 x i64*]* %l_1542 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %65) #1
  %66 = bitcast [9 x i64*]* %l_1542 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* bitcast ([9 x i64*]* @func_16.l_1542 to i8*), i64 72, i32 16, i1 false)
  %67 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = load i32, i32* @g_1006, align 4, !tbaa !1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [10 x i64], [10 x i64]* @g_83, i32 0, i64 %69
  %71 = load i64, i64* %70, align 8, !tbaa !7
  %72 = trunc i64 %71 to i32
  %73 = load i8***, i8**** @g_1160, align 8, !tbaa !5
  %74 = load i8**, i8*** %73, align 8, !tbaa !5
  %75 = icmp ne i8** %74, null
  %76 = zext i1 %75 to i32
  %77 = load i8, i8* %2, align 1, !tbaa !9
  %78 = sext i8 %77 to i32
  %79 = load i8***, i8**** @g_952, align 8, !tbaa !5
  %80 = load i8**, i8*** %79, align 8, !tbaa !5
  %81 = load volatile i8*, i8** %80, align 8, !tbaa !5
  %82 = load volatile i8, i8* %81, align 1, !tbaa !9
  %83 = sext i8 %82 to i32
  %84 = load i8, i8* %2, align 1, !tbaa !9
  %85 = sext i8 %84 to i32
  %86 = load i8*, i8** @g_587, align 8, !tbaa !5
  %87 = load i8, i8* %86, align 1, !tbaa !9
  %88 = sext i8 %87 to i32
  %89 = and i32 %88, %85
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %86, align 1, !tbaa !9
  store i8 %90, i8* @g_135, align 1, !tbaa !9
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %83, %91
  %93 = zext i1 %92 to i32
  %94 = and i32 %78, %93
  %95 = load i8, i8* %2, align 1, !tbaa !9
  %96 = sext i8 %95 to i32
  %97 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @g_83, i32 0, i64 6), align 8, !tbaa !7
  %98 = load i8, i8* %2, align 1, !tbaa !9
  %99 = sext i8 %98 to i64
  %100 = icmp sge i64 62395, %99
  %101 = zext i1 %100 to i32
  %102 = sext i32 %101 to i64
  %103 = load i64*, i64** %l_1541, align 8, !tbaa !5
  store i64 %102, i64* %103, align 8, !tbaa !7
  store i64 %102, i64* @g_417, align 8, !tbaa !7
  br i1 true, label %104, label %107

; <label>:104                                     ; preds = %63
  %105 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_75, i32 0, i32 0), align 8, !tbaa !7
  %106 = icmp ne i64 %105, 0
  br label %107

; <label>:107                                     ; preds = %104, %63
  %108 = phi i1 [ false, %63 ], [ %106, %104 ]
  %109 = zext i1 %108 to i32
  %110 = sext i32 %109 to i64
  %111 = icmp sle i64 %97, %110
  %112 = zext i1 %111 to i32
  %113 = sext i32 %112 to i64
  %114 = icmp ugt i64 %113, 9
  %115 = zext i1 %114 to i32
  %116 = trunc i32 %115 to i16
  %117 = load i8, i8* %2, align 1, !tbaa !9
  %118 = sext i8 %117 to i16
  %119 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %116, i16 zeroext %118)
  %120 = trunc i16 %119 to i8
  %121 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %120, i8 zeroext 1)
  %122 = zext i8 %121 to i32
  %123 = and i32 %96, %122
  %124 = sext i32 %123 to i64
  %125 = icmp sle i64 %124, 13338
  %126 = zext i1 %125 to i32
  %127 = load i8, i8* %2, align 1, !tbaa !9
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %126, %128
  %130 = zext i1 %129 to i32
  %131 = xor i32 %94, %130
  %132 = call i32 @safe_add_func_int32_t_s_s(i32 %131, i32 1481413931)
  %133 = call i32 @safe_add_func_int32_t_s_s(i32 %132, i32 -850183891)
  %134 = call i32 @safe_mod_func_uint32_t_u_u(i32 %72, i32 %133)
  %135 = load i32*, i32** %l_65, align 8, !tbaa !5
  %136 = load i32, i32* %135, align 4, !tbaa !1
  %137 = call i32 @safe_mod_func_int32_t_s_s(i32 %134, i32 %136)
  %138 = load i32***, i32**** %l_1543, align 8, !tbaa !5
  %139 = load i32***, i32**** %l_1545, align 8, !tbaa !5
  %140 = icmp eq i32*** %138, %139
  %141 = zext i1 %140 to i32
  %142 = sext i32 %141 to i64
  %143 = xor i64 %142, 2424429836
  %144 = load i8, i8* %2, align 1, !tbaa !9
  %145 = sext i8 %144 to i64
  %146 = call i64 @safe_div_func_int64_t_s_s(i64 %143, i64 %145)
  %147 = load i32, i32* %l_1547, align 4, !tbaa !1
  %148 = sext i32 %147 to i64
  %149 = and i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %l_1547, align 4, !tbaa !1
  store i32 2, i32* %l_1496, align 4, !tbaa !1
  br label %151

; <label>:151                                     ; preds = %190, %107
  %152 = load i32, i32* %l_1496, align 4, !tbaa !1
  %153 = icmp sle i32 %152, 9
  br i1 %153, label %154, label %193

; <label>:154                                     ; preds = %151
  store i16 0, i16* @g_1077, align 2, !tbaa !10
  br label %155

; <label>:155                                     ; preds = %177, %154
  %156 = load i16, i16* @g_1077, align 2, !tbaa !10
  %157 = zext i16 %156 to i32
  %158 = icmp sle i32 %157, 4
  br i1 %158, label %159, label %182

; <label>:159                                     ; preds = %155
  %160 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %160) #1
  %161 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #1
  %162 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #1
  %163 = load i16, i16* @g_1077, align 2, !tbaa !10
  %164 = zext i16 %163 to i64
  %165 = load i16, i16* @g_1077, align 2, !tbaa !10
  %166 = zext i16 %165 to i32
  %167 = add nsw i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = load i16, i16* @g_1077, align 2, !tbaa !10
  %170 = zext i16 %169 to i64
  %171 = getelementptr inbounds [5 x [8 x [5 x i32]]], [5 x [8 x [5 x i32]]]* %l_1433, i32 0, i64 %170
  %172 = getelementptr inbounds [8 x [5 x i32]], [8 x [5 x i32]]* %171, i32 0, i64 %168
  %173 = getelementptr inbounds [5 x i32], [5 x i32]* %172, i32 0, i64 %164
  store i32 1909372670, i32* %173, align 4, !tbaa !1
  %174 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  br label %177

; <label>:177                                     ; preds = %159
  %178 = load i16, i16* @g_1077, align 2, !tbaa !10
  %179 = zext i16 %178 to i32
  %180 = add nsw i32 %179, 1
  %181 = trunc i32 %180 to i16
  store i16 %181, i16* @g_1077, align 2, !tbaa !10
  br label %155

; <label>:182                                     ; preds = %155
  %183 = load i32***, i32**** %l_1545, align 8, !tbaa !5
  %184 = load i32**, i32*** %183, align 8, !tbaa !5
  %185 = load i32*, i32** %184, align 8, !tbaa !5
  %186 = load i32***, i32**** %l_1545, align 8, !tbaa !5
  %187 = load i32**, i32*** %186, align 8, !tbaa !5
  store i32* %185, i32** %187, align 8, !tbaa !5
  %188 = load i8, i8* %2, align 1, !tbaa !9
  %189 = sext i8 %188 to i32
  store i32 %189, i32* %1
  store i32 1, i32* %3
  br label %194
                                                  ; No predecessors!
  %191 = load i32, i32* %l_1496, align 4, !tbaa !1
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %l_1496, align 4, !tbaa !1
  br label %151

; <label>:193                                     ; preds = %151
  store i32 0, i32* %3
  br label %194

; <label>:194                                     ; preds = %193, %182
  %195 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast [9 x i64*]* %l_1542 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %196) #1
  %197 = bitcast i64** %l_1541 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %cleanup.dest = load i32, i32* %3
  switch i32 %cleanup.dest, label %204 [
    i32 0, label %198
  ]

; <label>:198                                     ; preds = %194
  br label %199

; <label>:199                                     ; preds = %198
  %200 = load i32, i32* @g_1006, align 4, !tbaa !1
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* @g_1006, align 4, !tbaa !1
  br label %60

; <label>:202                                     ; preds = %60
  %203 = load i32**, i32*** %l_1548, align 8, !tbaa !5
  store i32** %203, i32*** %l_1548, align 8, !tbaa !5
  store i32 0, i32* %3
  br label %204

; <label>:204                                     ; preds = %202, %194
  %205 = bitcast i32*** %l_1548 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i32* %l_1547 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32**** %l_1543 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast i32*** %l_1544 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %cleanup.dest.6 = load i32, i32* %3
  switch i32 %cleanup.dest.6, label %429 [
    i32 0, label %209
  ]

; <label>:209                                     ; preds = %204
  br label %210

; <label>:210                                     ; preds = %209
  %211 = load i16, i16* @g_416, align 2, !tbaa !10
  %212 = add i16 %211, 1
  store i16 %212, i16* @g_416, align 2, !tbaa !10
  br label %51

; <label>:213                                     ; preds = %51
  store i8 0, i8* @g_70, align 1, !tbaa !9
  br label %214

; <label>:214                                     ; preds = %423, %213
  %215 = load i8, i8* @g_70, align 1, !tbaa !9
  %216 = zext i8 %215 to i32
  %217 = icmp sge i32 %216, 8
  br i1 %217, label %218, label %426

; <label>:218                                     ; preds = %214
  %219 = bitcast i32** %l_1551 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %219) #1
  store i32* @g_580, i32** %l_1551, align 8, !tbaa !5
  %220 = bitcast [5 x [6 x [8 x i32]]]* %l_1567 to i8*
  call void @llvm.lifetime.start(i64 960, i8* %220) #1
  %221 = bitcast [5 x [6 x [8 x i32]]]* %l_1567 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %221, i8* bitcast ([5 x [6 x [8 x i32]]]* @func_16.l_1567 to i8*), i64 960, i32 16, i1 false)
  %222 = bitcast i64* %l_1568 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %222) #1
  store i64 -3668399884431525843, i64* %l_1568, align 8, !tbaa !7
  %223 = bitcast [9 x [9 x i32]]* %l_1580 to i8*
  call void @llvm.lifetime.start(i64 324, i8* %223) #1
  %224 = bitcast [9 x [9 x i32]]* %l_1580 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %224, i8* bitcast ([9 x [9 x i32]]* @func_16.l_1580 to i8*), i64 324, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_1589) #1
  store i8 -28, i8* %l_1589, align 1, !tbaa !9
  %225 = bitcast i8*** %l_1593 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %225) #1
  store i8** @g_587, i8*** %l_1593, align 8, !tbaa !5
  %226 = bitcast i8**** %l_1592 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %226) #1
  store i8*** %l_1593, i8**** %l_1592, align 8, !tbaa !5
  %227 = bitcast [2 x i8****]* %l_1591 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %227) #1
  %228 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %228) #1
  %229 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %229) #1
  %230 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %230) #1
  store i32 0, i32* %i7, align 4, !tbaa !1
  br label %231

; <label>:231                                     ; preds = %238, %218
  %232 = load i32, i32* %i7, align 4, !tbaa !1
  %233 = icmp slt i32 %232, 2
  br i1 %233, label %234, label %241

; <label>:234                                     ; preds = %231
  %235 = load i32, i32* %i7, align 4, !tbaa !1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [2 x i8****], [2 x i8****]* %l_1591, i32 0, i64 %236
  store i8**** %l_1592, i8***** %237, align 8, !tbaa !5
  br label %238

; <label>:238                                     ; preds = %234
  %239 = load i32, i32* %i7, align 4, !tbaa !1
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %i7, align 4, !tbaa !1
  br label %231

; <label>:241                                     ; preds = %231
  %242 = load i32*, i32** %l_1551, align 8, !tbaa !5
  %243 = load i32**, i32*** %l_1546, align 8, !tbaa !5
  store i32* %242, i32** %243, align 8, !tbaa !5
  %244 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext 9, i32 4)
  %245 = getelementptr inbounds [8 x [4 x [6 x i32]]], [8 x [4 x [6 x i32]]]* %l_19, i32 0, i64 7
  %246 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %245, i32 0, i64 1
  %247 = getelementptr inbounds [6 x i32], [6 x i32]* %246, i32 0, i64 2
  %248 = load i32***, i32**** @g_926, align 8, !tbaa !5
  %249 = load i32**, i32*** %248, align 8, !tbaa !5
  %250 = load i32*, i32** %249, align 8, !tbaa !5
  %251 = icmp ne i32* %247, %250
  br i1 %251, label %252, label %323

; <label>:252                                     ; preds = %241
  %253 = bitcast [7 x i32]* %l_1557 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %253) #1
  %254 = bitcast [7 x i32]* %l_1557 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %254, i8* bitcast ([7 x i32]* @func_16.l_1557 to i8*), i64 28, i32 16, i1 false)
  %255 = bitcast [9 x i32]* %l_1569 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %255) #1
  %256 = bitcast [9 x i32]* %l_1569 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %256, i8* bitcast ([9 x i32]* @func_16.l_1569 to i8*), i64 36, i32 16, i1 false)
  %257 = bitcast i32* %l_1570 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %257) #1
  store i32 625439635, i32* %l_1570, align 4, !tbaa !1
  %258 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %258) #1
  store i8 23, i8* @g_184, align 1, !tbaa !9
  br label %259

; <label>:259                                     ; preds = %311, %252
  %260 = load i8, i8* @g_184, align 1, !tbaa !9
  %261 = zext i8 %260 to i32
  %262 = icmp slt i32 %261, 2
  br i1 %262, label %263, label %316

; <label>:263                                     ; preds = %259
  %264 = bitcast i32** %l_1558 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %264) #1
  store i32* %l_1435, i32** %l_1558, align 8, !tbaa !5
  %265 = bitcast i32** %l_1559 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %265) #1
  %266 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1557, i32 0, i64 2
  store i32* %266, i32** %l_1559, align 8, !tbaa !5
  %267 = bitcast i32** %l_1560 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %267) #1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_1008, i32 0, i64 2), i32** %l_1560, align 8, !tbaa !5
  %268 = bitcast i32** %l_1561 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %268) #1
  store i32* null, i32** %l_1561, align 8, !tbaa !5
  %269 = bitcast i32** %l_1562 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %269) #1
  store i32* %l_1435, i32** %l_1562, align 8, !tbaa !5
  %270 = bitcast i32** %l_1563 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %270) #1
  %271 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1557, i32 0, i64 2
  store i32* %271, i32** %l_1563, align 8, !tbaa !5
  %272 = bitcast i32** %l_1564 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %272) #1
  %273 = getelementptr inbounds [5 x [8 x [5 x i32]]], [5 x [8 x [5 x i32]]]* %l_1433, i32 0, i64 3
  %274 = getelementptr inbounds [8 x [5 x i32]], [8 x [5 x i32]]* %273, i32 0, i64 1
  %275 = getelementptr inbounds [5 x i32], [5 x i32]* %274, i32 0, i64 2
  store i32* %275, i32** %l_1564, align 8, !tbaa !5
  %276 = bitcast i32** %l_1565 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %276) #1
  %277 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1557, i32 0, i64 6
  store i32* %277, i32** %l_1565, align 8, !tbaa !5
  %278 = bitcast [6 x i32*]* %l_1566 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %278) #1
  %279 = getelementptr inbounds [6 x i32*], [6 x i32*]* %l_1566, i64 0, i64 0
  %280 = getelementptr inbounds [5 x [8 x [5 x i32]]], [5 x [8 x [5 x i32]]]* %l_1433, i32 0, i64 3
  %281 = getelementptr inbounds [8 x [5 x i32]], [8 x [5 x i32]]* %280, i32 0, i64 1
  %282 = getelementptr inbounds [5 x i32], [5 x i32]* %281, i32 0, i64 2
  store i32* %282, i32** %279, !tbaa !5
  %283 = getelementptr inbounds i32*, i32** %279, i64 1
  store i32* @g_580, i32** %283, !tbaa !5
  %284 = getelementptr inbounds i32*, i32** %283, i64 1
  store i32* @g_580, i32** %284, !tbaa !5
  %285 = getelementptr inbounds i32*, i32** %284, i64 1
  %286 = getelementptr inbounds [5 x [8 x [5 x i32]]], [5 x [8 x [5 x i32]]]* %l_1433, i32 0, i64 3
  %287 = getelementptr inbounds [8 x [5 x i32]], [8 x [5 x i32]]* %286, i32 0, i64 1
  %288 = getelementptr inbounds [5 x i32], [5 x i32]* %287, i32 0, i64 2
  store i32* %288, i32** %285, !tbaa !5
  %289 = getelementptr inbounds i32*, i32** %285, i64 1
  store i32* @g_580, i32** %289, !tbaa !5
  %290 = getelementptr inbounds i32*, i32** %289, i64 1
  store i32* @g_580, i32** %290, !tbaa !5
  %291 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %291) #1
  %292 = load i8, i8* %2, align 1, !tbaa !9
  %293 = icmp ne i8 %292, 0
  br i1 %293, label %294, label %295

; <label>:294                                     ; preds = %263
  store i32 2, i32* %3
  br label %300

; <label>:295                                     ; preds = %263
  %296 = load i32, i32* %l_1570, align 4, !tbaa !1
  %297 = add i32 %296, -1
  store i32 %297, i32* %l_1570, align 4, !tbaa !1
  %298 = load i8, i8* %2, align 1, !tbaa !9
  %299 = sext i8 %298 to i32
  store i32 %299, i32* %1
  store i32 1, i32* %3
  br label %300

; <label>:300                                     ; preds = %295, %294
  %301 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #1
  %302 = bitcast [6 x i32*]* %l_1566 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %302) #1
  %303 = bitcast i32** %l_1565 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #1
  %304 = bitcast i32** %l_1564 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #1
  %305 = bitcast i32** %l_1563 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #1
  %306 = bitcast i32** %l_1562 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  %307 = bitcast i32** %l_1561 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %307) #1
  %308 = bitcast i32** %l_1560 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %308) #1
  %309 = bitcast i32** %l_1559 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #1
  %310 = bitcast i32** %l_1558 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  br label %317
                                                  ; No predecessors!
  %312 = load i8, i8* @g_184, align 1, !tbaa !9
  %313 = zext i8 %312 to i64
  %314 = call i64 @safe_sub_func_uint64_t_u_u(i64 %313, i64 1)
  %315 = trunc i64 %314 to i8
  store i8 %315, i8* @g_184, align 1, !tbaa !9
  br label %259

; <label>:316                                     ; preds = %259
  store i32 0, i32* %3
  br label %317

; <label>:317                                     ; preds = %316, %300
  %318 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast i32* %l_1570 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast [9 x i32]* %l_1569 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %320) #1
  %321 = bitcast [7 x i32]* %l_1557 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %321) #1
  %cleanup.dest.12 = load i32, i32* %3
  switch i32 %cleanup.dest.12, label %411 [
    i32 0, label %322
  ]

; <label>:322                                     ; preds = %317
  br label %410

; <label>:323                                     ; preds = %241
  %324 = bitcast i64** %l_1587 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %324) #1
  store i64* @g_407, i64** %l_1587, align 8, !tbaa !5
  %325 = bitcast i64** %l_1588 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %325) #1
  store i64* getelementptr inbounds ([10 x i64], [10 x i64]* @g_83, i32 0, i64 3), i64** %l_1588, align 8, !tbaa !5
  %326 = bitcast i32* %l_1590 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %326) #1
  store i32 -310710234, i32* %l_1590, align 4, !tbaa !1
  %327 = bitcast i8***** %l_1594 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %327) #1
  store i8**** %l_1592, i8***** %l_1594, align 8, !tbaa !5
  %328 = load i8, i8* %2, align 1, !tbaa !9
  %329 = sext i8 %328 to i32
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %396

; <label>:331                                     ; preds = %323
  %332 = getelementptr inbounds [9 x [9 x i32]], [9 x [9 x i32]]* %l_1580, i32 0, i64 8
  %333 = getelementptr inbounds [9 x i32], [9 x i32]* %332, i32 0, i64 7
  %334 = load i32, i32* %333, align 4, !tbaa !1
  %335 = load i8, i8* %2, align 1, !tbaa !9
  %336 = sext i8 %335 to i32
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %373, label %338

; <label>:338                                     ; preds = %331
  %339 = load volatile i16, i16* bitcast (%union.U0* @g_840 to i16*), align 8
  %340 = and i16 %339, 8191
  %341 = zext i16 %340 to i32
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %364

; <label>:343                                     ; preds = %338
  %344 = load i32, i32* @g_637, align 4, !tbaa !1
  %345 = zext i32 %344 to i64
  %346 = load i64*, i64** %l_1587, align 8, !tbaa !5
  store i64 %345, i64* %346, align 8, !tbaa !7
  %347 = xor i64 %345, -1
  %348 = load i8, i8* %2, align 1, !tbaa !9
  %349 = sext i8 %348 to i64
  %350 = and i64 %347, %349
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %357

; <label>:352                                     ; preds = %343
  %353 = load volatile i16, i16* bitcast (%union.U0* @g_840 to i16*), align 8
  %354 = and i16 %353, 8191
  %355 = zext i16 %354 to i32
  %356 = icmp ne i32 %355, 0
  br label %357

; <label>:357                                     ; preds = %352, %343
  %358 = phi i1 [ true, %343 ], [ %356, %352 ]
  %359 = zext i1 %358 to i32
  %360 = load i32*, i32** @g_144, align 8, !tbaa !5
  %361 = load i32, i32* %360, align 4, !tbaa !1
  %362 = call i32 @safe_mod_func_uint32_t_u_u(i32 %359, i32 %361)
  %363 = icmp ne i32 %362, 0
  br label %364

; <label>:364                                     ; preds = %357, %338
  %365 = phi i1 [ false, %338 ], [ %363, %357 ]
  %366 = zext i1 %365 to i32
  %367 = sext i32 %366 to i64
  %368 = load i64*, i64** %l_1588, align 8, !tbaa !5
  store i64 %367, i64* %368, align 8, !tbaa !7
  %369 = icmp sgt i64 %367, -28
  %370 = zext i1 %369 to i32
  %371 = sext i32 %370 to i64
  %372 = icmp sge i64 3610003638, %371
  br label %373

; <label>:373                                     ; preds = %364, %331
  %374 = phi i1 [ true, %331 ], [ %372, %364 ]
  %375 = zext i1 %374 to i32
  %376 = sext i32 %375 to i64
  %377 = and i64 %376, 32395
  %378 = load i32*, i32** %l_1551, align 8, !tbaa !5
  %379 = load i32, i32* %378, align 4, !tbaa !1
  %380 = sext i32 %379 to i64
  %381 = icmp eq i64 %377, %380
  %382 = zext i1 %381 to i32
  %383 = and i32 %334, %382
  %384 = trunc i32 %383 to i8
  %385 = load i32, i32* %l_1590, align 4, !tbaa !1
  %386 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %384, i32 %385)
  %387 = getelementptr inbounds [2 x i8****], [2 x i8****]* %l_1591, i32 0, i64 0
  %388 = load i8****, i8***** %387, align 8, !tbaa !5
  %389 = load i8****, i8***** %l_1594, align 8, !tbaa !5
  %390 = icmp eq i8**** %388, %389
  %391 = zext i1 %390 to i32
  %392 = trunc i32 %391 to i8
  %393 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %392, i8 zeroext -9)
  %394 = zext i8 %393 to i32
  %395 = icmp ne i32 %394, 0
  br label %396

; <label>:396                                     ; preds = %373, %323
  %397 = phi i1 [ false, %323 ], [ %395, %373 ]
  %398 = zext i1 %397 to i32
  %399 = sext i32 %398 to i64
  %400 = icmp uge i64 248, %399
  %401 = zext i1 %400 to i32
  %402 = load i32*, i32** @g_144, align 8, !tbaa !5
  store i32 %401, i32* %402, align 4, !tbaa !1
  %403 = load i32*, i32** @g_233, align 8, !tbaa !5
  store volatile i32 %401, i32* %403, align 4, !tbaa !1
  %404 = load i32*, i32** @g_928, align 8, !tbaa !5
  %405 = load i32, i32* %404, align 4, !tbaa !1
  store i32 %405, i32* %1
  store i32 1, i32* %3
  %406 = bitcast i8***** %l_1594 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %406) #1
  %407 = bitcast i32* %l_1590 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %407) #1
  %408 = bitcast i64** %l_1588 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %408) #1
  %409 = bitcast i64** %l_1587 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %409) #1
  br label %411

; <label>:410                                     ; preds = %322
  store i32 0, i32* %3
  br label %411

; <label>:411                                     ; preds = %410, %396, %317
  %412 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %412) #1
  %413 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %413) #1
  %414 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %414) #1
  %415 = bitcast [2 x i8****]* %l_1591 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %415) #1
  %416 = bitcast i8**** %l_1592 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %416) #1
  %417 = bitcast i8*** %l_1593 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %417) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1589) #1
  %418 = bitcast [9 x [9 x i32]]* %l_1580 to i8*
  call void @llvm.lifetime.end(i64 324, i8* %418) #1
  %419 = bitcast i64* %l_1568 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %419) #1
  %420 = bitcast [5 x [6 x [8 x i32]]]* %l_1567 to i8*
  call void @llvm.lifetime.end(i64 960, i8* %420) #1
  %421 = bitcast i32** %l_1551 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %421) #1
  %cleanup.dest.13 = load i32, i32* %3
  switch i32 %cleanup.dest.13, label %429 [
    i32 0, label %422
    i32 2, label %17
  ]

; <label>:422                                     ; preds = %411
  br label %423

; <label>:423                                     ; preds = %422
  %424 = load i8, i8* @g_70, align 1, !tbaa !9
  %425 = add i8 %424, 1
  store i8 %425, i8* @g_70, align 1, !tbaa !9
  br label %214

; <label>:426                                     ; preds = %214
  %427 = load i32*, i32** @g_928, align 8, !tbaa !5
  %428 = load i32, i32* %427, align 4, !tbaa !1
  store i32 %428, i32* %1
  store i32 1, i32* %3
  br label %429

; <label>:429                                     ; preds = %426, %411, %204
  %430 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %430) #1
  %431 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %431) #1
  %432 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %432) #1
  %433 = bitcast i32**** %l_1545 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %433) #1
  %434 = bitcast i32*** %l_1546 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %434) #1
  %435 = bitcast i32* %l_1496 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %435) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1473) #1
  %436 = bitcast i32* %l_1445 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %436) #1
  %437 = bitcast i32* %l_1435 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %437) #1
  %438 = bitcast [5 x [8 x [5 x i32]]]* %l_1433 to i8*
  call void @llvm.lifetime.end(i64 800, i8* %438) #1
  %439 = bitcast i32** %l_65 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %439) #1
  %440 = bitcast [8 x [4 x [6 x i32]]]* %l_19 to i8*
  call void @llvm.lifetime.end(i64 768, i8* %440) #1
  %441 = load i32, i32* %1
  ret i32 %441
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
