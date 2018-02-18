; ModuleID = '00847.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"g_15\00", align 1
@g_17 = internal global [4 x %union.U0] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [11 x i8] c"g_17[i].f0\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_27 = internal global i16 -14048, align 2
@.str.4 = private unnamed_addr constant [5 x i8] c"g_27\00", align 1
@g_40 = internal global i32 -288322027, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_40\00", align 1
@g_57 = internal global i8 66, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"g_57\00", align 1
@g_65 = internal global i32 1854946015, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_65\00", align 1
@g_71 = internal global i16 -28322, align 2
@.str.8 = private unnamed_addr constant [5 x i8] c"g_71\00", align 1
@g_98 = internal global i32 1656784130, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"g_98\00", align 1
@g_115 = internal global i8 -12, align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"g_115\00", align 1
@g_120 = internal global i8 0, align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"g_120\00", align 1
@g_122 = internal global i32 892793104, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"g_122\00", align 1
@g_124 = internal global i32 -427658139, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_124\00", align 1
@g_128 = internal global %union.U0 { i32 -65943248 }, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"g_128.f0\00", align 1
@g_142 = internal global i16 12741, align 2
@.str.15 = private unnamed_addr constant [6 x i8] c"g_142\00", align 1
@g_163 = internal global i8 1, align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"g_163\00", align 1
@g_172 = internal global i16 4860, align 2
@.str.17 = private unnamed_addr constant [6 x i8] c"g_172\00", align 1
@g_174 = internal global i64 0, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"g_174\00", align 1
@g_195 = internal global i16 -14130, align 2
@.str.19 = private unnamed_addr constant [6 x i8] c"g_195\00", align 1
@g_198 = internal global i32 -1, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_198\00", align 1
@g_199 = internal global i32 -561186492, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"g_199\00", align 1
@g_200 = internal global i8 1, align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_200\00", align 1
@g_216 = internal global [4 x i8] c"\F8\F8\F8\F8", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"g_216[i]\00", align 1
@g_290 = internal global [2 x [3 x i8]] [[3 x i8] c"000", [3 x i8] zeroinitializer], align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"g_290[i][j]\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_309 = internal global %union.U0 { i32 -2129214085 }, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"g_309.f0\00", align 1
@g_439 = internal global i16 -24887, align 2
@.str.27 = private unnamed_addr constant [6 x i8] c"g_439\00", align 1
@g_440 = internal global i32 97690726, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_440\00", align 1
@g_461 = internal global i32 -4, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_461\00", align 1
@g_466 = internal global [4 x [5 x [8 x i8]]] [[5 x [8 x i8]] [[8 x i8] c"\FF\01\01\FF\F9r\CF}", [8 x i8] c"\01\FF\F8\CF_\01\01I", [8 x i8] c"\02\FF\009\01r9\01", [8 x i8] c"\1D\01\01\D4r\F9\88\F9", [8 x i8] c"}C\01C}\FF\F9\00"], [5 x [8 x i8]] [[8 x i8] c"\FF\02Hb\F6H\F8C", [8 x i8] c"\01\01Hr\FE\FB\F9\00", [8 x i8] c"\F69\01\00r\88\F9\F9", [8 x i8] c"H\01\BB\BB\01H\00\F9", [8 x i8] c"\F9\F8\FF\01\00\01C\F8"], [5 x [8 x i8]] [[8 x i8] c"\F6C\88\01\F9\01\00\F9", [8 x i8] c"\BB\F9\FE\BB\F6\F8\FD\F9", [8 x i8] c"C\BB\FB\00\FB\BBC\00", [8 x i8] c"}\01\19r\02_rC", [8 x i8] c"\FE\F9\BBb\02\FDH\00"], [5 x [8 x i8]] [[8 x i8] c"}\FFbC\FB\01\F9\FD", [8 x i8] c"C\02\D4\F6\F6\D4\02C", [8 x i8] c"\BB\01H\00\F9\FB\FEr", [8 x i8] c"\F6\B6b\00\00\FB\F9H", [8 x i8] c"\F9\01\1D\01\01\D4r\F9"]], align 16
@.str.30 = private unnamed_addr constant [15 x i8] c"g_466[i][j][k]\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_510 = internal global i32 773575676, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_510\00", align 1
@g_559 = internal global i16 -4382, align 2
@.str.33 = private unnamed_addr constant [6 x i8] c"g_559\00", align 1
@g_562 = internal global i64 -7204374729195734789, align 8
@.str.34 = private unnamed_addr constant [6 x i8] c"g_562\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"g_567\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"g_570\00", align 1
@g_745 = internal global %union.U0 { i32 2067838128 }, align 4
@.str.37 = private unnamed_addr constant [9 x i8] c"g_745.f0\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"g_839\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"g_841\00", align 1
@g_870 = internal global i32 627945586, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"g_870\00", align 1
@g_915 = internal global [8 x [9 x i16]] [[9 x i16] [i16 23462, i16 27133, i16 23462, i16 -5, i16 -29279, i16 28208, i16 -26159, i16 -29279, i16 -11721], [9 x i16] [i16 23462, i16 -29279, i16 -3815, i16 -5, i16 -7928, i16 2, i16 -26159, i16 -7928, i16 -3], [9 x i16] [i16 23462, i16 -7928, i16 21252, i16 -5, i16 27133, i16 -26159, i16 -26159, i16 27133, i16 -5], [9 x i16] [i16 23462, i16 27133, i16 23462, i16 -5, i16 -29279, i16 28208, i16 -26159, i16 -29279, i16 -11721], [9 x i16] [i16 23462, i16 -29279, i16 -3815, i16 -5, i16 -7928, i16 2, i16 -26159, i16 -7928, i16 -3], [9 x i16] [i16 23462, i16 -7928, i16 21252, i16 -5, i16 27133, i16 -26159, i16 -26159, i16 27133, i16 -5], [9 x i16] [i16 23462, i16 27133, i16 23462, i16 -5, i16 -29279, i16 28208, i16 -26159, i16 -29279, i16 -11721], [9 x i16] [i16 23462, i16 -29279, i16 -3815, i16 -5, i16 -7928, i16 2, i16 -26159, i16 -7928, i16 -3]], align 16
@.str.41 = private unnamed_addr constant [12 x i8] c"g_915[i][j]\00", align 1
@g_978 = internal global [10 x [6 x [4 x i8]]] [[6 x [4 x i8]] [[4 x i8] c"\FF\F9\FF\01", [4 x i8] c"\82\AD\08\00", [4 x i8] c"\AD\91\91\AD", [4 x i8] c"\FF\FF\FF\96", [4 x i8] c"\91\01\00\16", [4 x i8] c"\00\08Z\16"], [6 x [4 x i8]] [[4 x i8] c"\02\01\FF\96", [4 x i8] c"\FF\FF\007", [4 x i8] c"X\FB\96\FF", [4 x i8] c"\027\02\FF", [4 x i8] c"\01\8A\00X", [4 x i8] c"\8A\FB\08\8A"], [6 x [4 x i8]] [[4 x i8] c"\01\FF\08\96", [4 x i8] c"\8A\16\00\01", [4 x i8] c"\01\08\02\00", [4 x i8] c"\02\00\96\96", [4 x i8] c"XX\00\91", [4 x i8] c"\FF\FB\FF\FF"], [6 x [4 x i8]] [[4 x i8] c"\02\91Z\FF", [4 x i8] c"\00\91\00\FF", [4 x i8] c"\91\FB\FF\91", [4 x i8] c"\01X\FB\96", [4 x i8] c"7\00\00\00", [4 x i8] c"\16\08\01\01"], [6 x [4 x i8]] [[4 x i8] c"\02\16\B3\96", [4 x i8] c"\FF\FF\00\8A", [4 x i8] c"\FF\FB\B3X", [4 x i8] c"\02\8A\01\FF", [4 x i8] c"\167\00\FF", [4 x i8] c"7\FB\FB7"], [6 x [4 x i8]] [[4 x i8] c"\01\FF\FF\96", [4 x i8] c"\91\01\00\16", [4 x i8] c"\00\08Z\16", [4 x i8] c"\02\01\FF\96", [4 x i8] c"\FF\FF\007", [4 x i8] c"X\FB\96\FF"], [6 x [4 x i8]] [[4 x i8] c"\027\02\FF", [4 x i8] c"\01\8A\00X", [4 x i8] c"\8A\FB\08\8A", [4 x i8] c"\01\FF\08\96", [4 x i8] c"\8A\16\00\01", [4 x i8] c"\01\08\02\00"], [6 x [4 x i8]] [[4 x i8] c"\02\00\96\96", [4 x i8] c"XX\00\91", [4 x i8] c"\FF\FB\FF\FF", [4 x i8] c"\02\91Z\FF", [4 x i8] c"\00\91\00\FF", [4 x i8] c"\91\FB\FF\91"], [6 x [4 x i8]] [[4 x i8] c"\01X\FB\96", [4 x i8] c"7\00\00\00", [4 x i8] c"\16\08\01\01", [4 x i8] c"\82\96\F9\AD", [4 x i8] c"\02\01\FF\08", [4 x i8] c"\02s\F9Z"], [6 x [4 x i8]] [[4 x i8] c"\82\08\03\08", [4 x i8] c"\96\FF\FF\01", [4 x i8] c"\FFss\FF", [4 x i8] c"\03\02\00\AD", [4 x i8] c"\FB\FF\FF\96", [4 x i8] c"\B3\00\01\96"]], align 16
@.str.42 = private unnamed_addr constant [15 x i8] c"g_978[i][j][k]\00", align 1
@g_1010 = internal global i64 1, align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1010\00", align 1
@g_1018 = internal global i8 -52, align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1018\00", align 1
@g_1019 = internal global i8 46, align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1019\00", align 1
@g_1023 = internal global i16 -9312, align 2
@.str.46 = private unnamed_addr constant [7 x i8] c"g_1023\00", align 1
@g_1029 = internal global [8 x [10 x i16]] [[10 x i16] [i16 -1, i16 -4, i16 -1, i16 23238, i16 8, i16 14593, i16 3556, i16 17117, i16 17117, i16 3556], [10 x i16] [i16 8, i16 4, i16 14593, i16 14593, i16 4, i16 8, i16 -3814, i16 17117, i16 1, i16 6268], [10 x i16] [i16 -4, i16 6268, i16 -1, i16 25619, i16 17117, i16 25619, i16 -1, i16 6268, i16 -4, i16 8], [10 x i16] [i16 -4, i16 14593, i16 -32516, i16 -3814, i16 25619, i16 8, i16 8, i16 25619, i16 -3814, i16 -32516], [10 x i16] [i16 8, i16 8, i16 25619, i16 -3814, i16 -32516, i16 14593, i16 -4, i16 3556, i16 -4, i16 14593], [10 x i16] [i16 -1, i16 25619, i16 17117, i16 25619, i16 -1, i16 6268, i16 -4, i16 8, i16 1, i16 1], [10 x i16] [i16 -3814, i16 8, i16 4, i16 14593, i16 14593, i16 4, i16 8, i16 -3814, i16 17117, i16 1], [10 x i16] [i16 3556, i16 14593, i16 8, i16 23238, i16 -1, i16 -4, i16 -1, i16 23238, i16 8, i16 14593]], align 16
@.str.47 = private unnamed_addr constant [13 x i8] c"g_1029[i][j]\00", align 1
@g_1031 = internal global i32 92698851, align 4
@.str.48 = private unnamed_addr constant [7 x i8] c"g_1031\00", align 1
@g_1071 = internal global [10 x i32] [i32 -1, i32 -1, i32 -1, i32 -2, i32 -2, i32 -1, i32 -1, i32 -1, i32 -2, i32 -2], align 16
@.str.49 = private unnamed_addr constant [10 x i8] c"g_1071[i]\00", align 1
@g_1102 = internal global i64 5567493038691995341, align 8
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1102\00", align 1
@g_1203 = internal global i16 -802, align 2
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1203\00", align 1
@g_1297 = internal global i32 -1108082727, align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"g_1297\00", align 1
@g_1298 = internal global i8 28, align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"g_1298\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1328\00", align 1
@g_1338 = internal global [8 x i64] [i64 -8, i64 -8, i64 -8, i64 -8, i64 -8, i64 -8, i64 -8, i64 -8], align 16
@.str.55 = private unnamed_addr constant [10 x i8] c"g_1338[i]\00", align 1
@g_1514 = internal global [3 x [9 x i8]] [[9 x i8] c"\C3\FF\FA\FF\C3\C3\FF\FA\FF", [9 x i8] c"\FF,\FA\FA,\FF,\FA\FA", [9 x i8] c"\C3\C3\FF\FA\FF\C3\C3\FF\FA"], align 16
@.str.56 = private unnamed_addr constant [13 x i8] c"g_1514[i][j]\00", align 1
@g_1515 = internal global i16 6, align 2
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1515\00", align 1
@g_1516 = internal global i32 0, align 4
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1516\00", align 1
@g_1570 = internal global [10 x [8 x [3 x i16]]] [[8 x [3 x i16]] [[3 x i16] [i16 6, i16 -23323, i16 -1], [3 x i16] [i16 -1, i16 5, i16 -14777], [3 x i16] [i16 -29195, i16 -28556, i16 16048], [3 x i16] [i16 -14777, i16 1834, i16 1834], [3 x i16] [i16 16048, i16 -18972, i16 27429], [3 x i16] [i16 -4, i16 -1, i16 27056], [3 x i16] [i16 26616, i16 16048, i16 0], [3 x i16] [i16 6420, i16 -31790, i16 -27083]], [8 x [3 x i16]] [[3 x i16] [i16 -19558, i16 16048, i16 -1], [3 x i16] [i16 1834, i16 -1, i16 -2], [3 x i16] [i16 -25486, i16 -18972, i16 -19558], [3 x i16] [i16 -1054, i16 1834, i16 -31450], [3 x i16] [i16 -18673, i16 -28556, i16 31033], [3 x i16] [i16 3, i16 -30395, i16 -1], [3 x i16] [i16 -30315, i16 -15242, i16 27429], [3 x i16] [i16 -11424, i16 8790, i16 -11424]], [8 x [3 x i16]] [[3 x i16] [i16 -29195, i16 -30315, i16 -22148], [3 x i16] [i16 6420, i16 22948, i16 1834], [3 x i16] [i16 1, i16 -1, i16 -10332], [3 x i16] [i16 -26475, i16 -1, i16 5], [3 x i16] [i16 1, i16 -30049, i16 22733], [3 x i16] [i16 6420, i16 -26475, i16 -31450], [3 x i16] [i16 -29195, i16 26616, i16 -1], [3 x i16] [i16 -11424, i16 0, i16 -30395]], [8 x [3 x i16]] [[3 x i16] [i16 -30315, i16 -18972, i16 -23323], [3 x i16] [i16 3, i16 1, i16 -7], [3 x i16] [i16 -18673, i16 -30315, i16 0], [3 x i16] [i16 -1054, i16 -1054, i16 -1], [3 x i16] [i16 -25486, i16 -1, i16 -10332], [3 x i16] [i16 1834, i16 8790, i16 -19845], [3 x i16] [i16 -19558, i16 6004, i16 1], [3 x i16] [i16 6420, i16 1834, i16 -19845]], [8 x [3 x i16]] [[3 x i16] [i16 26616, i16 -29195, i16 -10332], [3 x i16] [i16 -4, i16 0, i16 -1], [3 x i16] [i16 16048, i16 -30049, i16 0], [3 x i16] [i16 -14777, i16 -21762, i16 -7], [3 x i16] [i16 -29195, i16 16048, i16 -23323], [3 x i16] [i16 22948, i16 6420, i16 -30395], [3 x i16] [i16 -25486, i16 -1, i16 -1], [3 x i16] [i16 -30395, i16 1, i16 -31450]], [8 x [3 x i16]] [[3 x i16] [i16 32698, i16 6004, i16 22733], [3 x i16] [i16 -1054, i16 -30395, i16 5], [3 x i16] [i16 -28556, i16 -18673, i16 -10332], [3 x i16] [i16 -11424, i16 -30395, i16 1834], [3 x i16] [i16 -1, i16 6004, i16 -22148], [3 x i16] [i16 -14777, i16 1, i16 -11424], [3 x i16] [i16 26616, i16 -1, i16 27429], [3 x i16] [i16 -31790, i16 6420, i16 -1]], [8 x [3 x i16]] [[3 x i16] [i16 1, i16 16048, i16 31033], [3 x i16] [i16 0, i16 -21762, i16 -31450], [3 x i16] [i16 -19558, i16 -30049, i16 -19558], [3 x i16] [i16 22948, i16 0, i16 -2], [3 x i16] [i16 -28556, i16 -29195, i16 -1], [3 x i16] [i16 3, i16 1834, i16 -27083], [3 x i16] [i16 -1, i16 6004, i16 0], [3 x i16] [i16 3, i16 8790, i16 27056]], [8 x [3 x i16]] [[3 x i16] [i16 -28556, i16 -1, i16 27429], [3 x i16] [i16 22948, i16 -1054, i16 1834], [3 x i16] [i16 -19558, i16 -30315, i16 16048], [3 x i16] [i16 0, i16 1, i16 -19845], [3 x i16] [i16 1, i16 -18972, i16 -22509], [3 x i16] [i16 -31790, i16 0, i16 5], [3 x i16] [i16 26616, i16 26616, i16 31033], [3 x i16] [i16 -14777, i16 -26475, i16 -27083]], [8 x [3 x i16]] [[3 x i16] [i16 -1, i16 -30049, i16 -23323], [3 x i16] [i16 -11424, i16 -1, i16 20746], [3 x i16] [i16 -1, i16 32698, i16 -15242], [3 x i16] [i16 -6905, i16 -26475, i16 27056], [3 x i16] [i16 27429, i16 -19558, i16 1], [3 x i16] [i16 25797, i16 9, i16 8790], [3 x i16] [i16 -23323, i16 28689, i16 0], [3 x i16] [i16 -26475, i16 25797, i16 -21762]], [8 x [3 x i16]] [[3 x i16] [i16 -1, i16 -1, i16 1128], [3 x i16] [i16 -19845, i16 -4, i16 -4], [3 x i16] [i16 1128, i16 -18673, i16 -3], [3 x i16] [i16 -31450, i16 22948, i16 -2], [3 x i16] [i16 6, i16 1128, i16 -30049], [3 x i16] [i16 1834, i16 -27083, i16 27056], [3 x i16] [i16 14774, i16 1128, i16 32698], [3 x i16] [i16 -4, i16 22948, i16 -1]]], align 16
@.str.59 = private unnamed_addr constant [16 x i8] c"g_1570[i][j][k]\00", align 1
@g_1573 = internal global i32 -1, align 4
@.str.60 = private unnamed_addr constant [7 x i8] c"g_1573\00", align 1
@g_1603 = internal global [7 x i32] [i32 283944105, i32 283944105, i32 283944105, i32 283944105, i32 283944105, i32 283944105, i32 283944105], align 16
@.str.61 = private unnamed_addr constant [10 x i8] c"g_1603[i]\00", align 1
@g_1685 = internal global i32 -1666464826, align 4
@.str.62 = private unnamed_addr constant [7 x i8] c"g_1685\00", align 1
@g_1722 = internal global i16 5457, align 2
@.str.63 = private unnamed_addr constant [7 x i8] c"g_1722\00", align 1
@g_1738 = internal global i32 -1810705645, align 4
@.str.64 = private unnamed_addr constant [7 x i8] c"g_1738\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"g_1746\00", align 1
@g_1768 = internal global i16 -7, align 2
@.str.66 = private unnamed_addr constant [7 x i8] c"g_1768\00", align 1
@g_1770 = internal global i64 -7, align 8
@.str.67 = private unnamed_addr constant [7 x i8] c"g_1770\00", align 1
@g_1833 = internal global i64 1, align 8
@.str.68 = private unnamed_addr constant [7 x i8] c"g_1833\00", align 1
@g_1834 = internal global i64 -8200993788100514454, align 8
@.str.69 = private unnamed_addr constant [7 x i8] c"g_1834\00", align 1
@g_1835 = internal global i64 -375659530568836116, align 8
@.str.70 = private unnamed_addr constant [7 x i8] c"g_1835\00", align 1
@g_1836 = internal global i32 1612213977, align 4
@.str.71 = private unnamed_addr constant [7 x i8] c"g_1836\00", align 1
@g_1838 = internal global [8 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@.str.72 = private unnamed_addr constant [10 x i8] c"g_1838[i]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_1789 = private unnamed_addr constant [5 x [7 x %union.U0]] [[7 x %union.U0] [%union.U0 { i32 -8 }, %union.U0 { i32 9 }, %union.U0 { i32 9 }, %union.U0 { i32 -8 }, %union.U0 { i32 9 }, %union.U0 { i32 9 }, %union.U0 { i32 -8 }], [7 x %union.U0] [%union.U0 { i32 1 }, %union.U0 { i32 1103068545 }, %union.U0 { i32 1 }, %union.U0 zeroinitializer, %union.U0 zeroinitializer, %union.U0 zeroinitializer, %union.U0 { i32 1 }], [7 x %union.U0] [%union.U0 { i32 -8 }, %union.U0 { i32 -8 }, %union.U0 { i32 5 }, %union.U0 { i32 -8 }, %union.U0 { i32 -8 }, %union.U0 { i32 5 }, %union.U0 { i32 -8 }], [7 x %union.U0] [%union.U0 zeroinitializer, %union.U0 zeroinitializer, %union.U0 { i32 1 }, %union.U0 { i32 1103068545 }, %union.U0 { i32 1 }, %union.U0 zeroinitializer, %union.U0 zeroinitializer], [7 x %union.U0] [%union.U0 { i32 9 }, %union.U0 { i32 -8 }, %union.U0 { i32 9 }, %union.U0 { i32 9 }, %union.U0 { i32 -8 }, %union.U0 { i32 9 }, %union.U0 { i32 9 }]], align 16
@g_141 = internal global i16* @g_142, align 8
@g_1307 = internal global i64* @g_174, align 8
@g_126 = internal global %union.U0** @g_127, align 8
@g_1327 = internal global i32* @g_1328, align 8
@func_1.l_1793 = internal constant [3 x i32] zeroinitializer, align 4
@g_617 = internal global i8* @g_115, align 8
@func_1.l_1816 = private unnamed_addr constant [7 x [6 x %union.U0]] [[6 x %union.U0] [%union.U0 { i32 -1 }, %union.U0 { i32 -2059178931 }, %union.U0 { i32 -85214353 }, %union.U0 { i32 -2059178931 }, %union.U0 { i32 -1 }, %union.U0 { i32 -85214353 }], [6 x %union.U0] [%union.U0 { i32 -2059178931 }, %union.U0 { i32 -1 }, %union.U0 { i32 -85214353 }, %union.U0 { i32 -1325149211 }, %union.U0 { i32 -1325149211 }, %union.U0 { i32 -85214353 }], [6 x %union.U0] [%union.U0 { i32 -1325149211 }, %union.U0 { i32 -1325149211 }, %union.U0 { i32 -85214353 }, %union.U0 { i32 -1 }, %union.U0 { i32 -2059178931 }, %union.U0 { i32 -85214353 }], [6 x %union.U0] [%union.U0 { i32 -1 }, %union.U0 { i32 -2059178931 }, %union.U0 { i32 -85214353 }, %union.U0 { i32 -2059178931 }, %union.U0 { i32 -1 }, %union.U0 { i32 -85214353 }], [6 x %union.U0] [%union.U0 { i32 -2059178931 }, %union.U0 { i32 -1 }, %union.U0 { i32 -85214353 }, %union.U0 { i32 -1325149211 }, %union.U0 { i32 -1325149211 }, %union.U0 { i32 -85214353 }], [6 x %union.U0] [%union.U0 { i32 -1325149211 }, %union.U0 { i32 -1325149211 }, %union.U0 { i32 -85214353 }, %union.U0 { i32 -1 }, %union.U0 { i32 -2059178931 }, %union.U0 { i32 -85214353 }], [6 x %union.U0] [%union.U0 { i32 -1 }, %union.U0 { i32 -2059178931 }, %union.U0 { i32 -85214353 }, %union.U0 { i32 -2059178931 }, %union.U0 { i32 -1 }, %union.U0 { i32 -85214353 }]], align 16
@g_18 = internal global %union.U0** @g_16, align 8
@g_615 = internal global i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [9 x i8**]]* @g_616 to i8*), i64 272) to i8***), align 8
@g_1777 = internal global i8*** @g_1778, align 8
@g_1773 = internal global i32* @g_124, align 8
@g_443 = internal global i32*** @g_444, align 8
@func_1.l_1812 = private unnamed_addr constant [6 x i32] [i32 1, i32 1, i32 713981150, i32 1, i32 1, i32 713981150], align 16
@func_1.l_1813 = private unnamed_addr constant [8 x [6 x i16]] [[6 x i16] [i16 -1, i16 -2, i16 -2, i16 -1, i16 -1, i16 -2], [6 x i16] [i16 -1, i16 -1, i16 -2, i16 -2, i16 -1, i16 -1], [6 x i16] [i16 -1, i16 -2, i16 -2, i16 -1, i16 -1, i16 -2], [6 x i16] [i16 -1, i16 -1, i16 -2, i16 -2, i16 -1, i16 -1], [6 x i16] [i16 -1, i16 -2, i16 -2, i16 -1, i16 -1, i16 -2], [6 x i16] [i16 -1, i16 -1, i16 -2, i16 -2, i16 -1, i16 -1], [6 x i16] [i16 -1, i16 -2, i16 -2, i16 -1, i16 -1, i16 -2], [6 x i16] [i16 -1, i16 -1, i16 -2, i16 -2, i16 -1, i16 -1]], align 16
@g_288 = internal global i8** @g_289, align 8
@func_1.l_1811 = private unnamed_addr constant [8 x i32*] [i32* @g_124, i32* @g_124, i32* @g_124, i32* @g_124, i32* @g_124, i32* @g_124, i32* @g_124, i32* @g_124], align 16
@g_1801 = internal global i16**** @g_1802, align 8
@g_16 = internal global %union.U0* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x %union.U0]* @g_17 to i8*), i64 4) to %union.U0*), align 8
@g_676 = internal global %union.U0** @g_677, align 8
@g_1333 = internal constant i32* @g_510, align 8
@g_1802 = internal global i16*** @g_1803, align 8
@g_1543 = internal global i64* @g_1010, align 8
@g_444 = internal global i32** @g_152, align 8
@g_152 = internal global i32* @g_122, align 8
@g_289 = internal global i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @g_290, i32 0, i32 0, i32 0), align 8
@g_1803 = internal global i16** @g_141, align 8
@g_1875 = internal global i16** @g_141, align 8
@func_13.l_21 = private unnamed_addr constant [9 x i64] [i64 4, i64 4, i64 4, i64 4, i64 4, i64 4, i64 4, i64 4, i64 4], align 16
@func_13.l_26 = private unnamed_addr constant [4 x [4 x i16*]] [[4 x i16*] [i16* @g_27, i16* @g_27, i16* @g_27, i16* @g_27], [4 x i16*] [i16* @g_27, i16* @g_27, i16* null, i16* @g_27], [4 x i16*] [i16* @g_27, i16* @g_27, i16* @g_27, i16* @g_27], [4 x i16*] [i16* @g_27, i16* @g_27, i16* @g_27, i16* @g_27]], align 16
@g_127 = internal global %union.U0* @g_128, align 8
@g_1746 = internal constant i16 3808, align 2
@func_30.l_1255 = private unnamed_addr constant [10 x [4 x i16*]] [[4 x i16*] [i16* null, i16* null, i16* @g_27, i16* @g_1203], [4 x i16*] [i16* null, i16* @g_1203, i16* @g_27, i16* null], [4 x i16*] [i16* @g_559, i16* @g_1203, i16* @g_559, i16* @g_27], [4 x i16*] [i16* @g_1203, i16* @g_1203, i16* @g_27, i16* null], [4 x i16*] [i16* @g_1203, i16* @g_1203, i16* @g_1203, i16* @g_1203], [4 x i16*] [i16* @g_559, i16* null, i16* @g_1203, i16* @g_27], [4 x i16*] [i16* @g_1203, i16* @g_1203, i16* @g_27, i16* @g_1203], [4 x i16*] [i16* @g_1203, i16* @g_1203, i16* @g_559, i16* @g_1203], [4 x i16*] [i16* @g_559, i16* @g_1203, i16* @g_27, i16* @g_27], [4 x i16*] [i16* null, i16* null, i16* @g_27, i16* @g_1203]], align 16
@func_30.l_1288 = private unnamed_addr constant [1 x [10 x [8 x i16]]] [[10 x [8 x i16]] [[8 x i16] [i16 26107, i16 -5, i16 2, i16 8384, i16 -26089, i16 8, i16 -6, i16 1], [8 x i16] [i16 1, i16 -1, i16 5741, i16 8384, i16 6784, i16 13714, i16 9295, i16 8], [8 x i16] [i16 9295, i16 6784, i16 -4, i16 -31208, i16 -3076, i16 -10, i16 18906, i16 -10], [8 x i16] [i16 -4, i16 -1, i16 -6, i16 -1, i16 -4, i16 -12675, i16 1, i16 -1109], [8 x i16] [i16 8, i16 -1, i16 -16227, i16 -6, i16 2, i16 -6, i16 1, i16 -1], [8 x i16] [i16 -1, i16 -20934, i16 -16227, i16 1, i16 -1, i16 -1, i16 -20934, i16 26107], [8 x i16] [i16 1, i16 -32748, i16 -16227, i16 -3076, i16 18906, i16 8, i16 8, i16 18906], [8 x i16] [i16 -4, i16 13714, i16 13714, i16 -4, i16 26107, i16 -20934, i16 -1, i16 -1], [8 x i16] [i16 -1109, i16 -6, i16 26107, i16 2, i16 -1, i16 6784, i16 -16227, i16 1], [8 x i16] [i16 8, i16 -6, i16 1, i16 0, i16 -3076, i16 -20934, i16 -6, i16 13714]]], align 16
@g_1206 = internal global i8** @g_569, align 8
@func_30.l_1250 = private unnamed_addr constant [7 x [7 x i16]] [[7 x i16] [i16 24073, i16 -11139, i16 -11139, i16 24073, i16 -27643, i16 24073, i16 -11139], [7 x i16] [i16 30258, i16 30258, i16 -11139, i16 -8, i16 -11139, i16 30258, i16 30258], [7 x i16] [i16 30258, i16 -11139, i16 -8, i16 -11139, i16 30258, i16 30258, i16 -11139], [7 x i16] [i16 24073, i16 -27643, i16 24073, i16 -11139, i16 -11139, i16 24073, i16 -27643], [7 x i16] [i16 -11139, i16 -27643, i16 -8, i16 -8, i16 -27643, i16 -11139, i16 -27643], [7 x i16] [i16 24073, i16 -11139, i16 -11139, i16 24073, i16 -27643, i16 24073, i16 -11139], [7 x i16] [i16 30258, i16 30258, i16 -11139, i16 -8, i16 -11139, i16 30258, i16 30258]], align 16
@g_614 = internal global i8**** @g_615, align 8
@g_1048 = internal global i8**** @g_615, align 8
@g_683 = internal global i8** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [9 x i8*]]* @g_684 to i8*), i64 168) to i8**), align 8
@func_30.l_1261 = private unnamed_addr constant [5 x i32] [i32 5, i32 5, i32 5, i32 5, i32 5], align 16
@g_1306 = internal global i64** @g_1307, align 8
@g_504 = internal global [6 x [7 x i64*]] [[7 x i64*] [i64* @g_174, i64* @g_174, i64* @g_174, i64* @g_174, i64* @g_174, i64* @g_174, i64* @g_174], [7 x i64*] zeroinitializer, [7 x i64*] [i64* @g_174, i64* @g_174, i64* @g_174, i64* @g_174, i64* @g_174, i64* @g_174, i64* @g_174], [7 x i64*] zeroinitializer, [7 x i64*] [i64* @g_174, i64* @g_174, i64* @g_174, i64* @g_174, i64* @g_174, i64* @g_174, i64* @g_174], [7 x i64*] zeroinitializer], align 16
@g_677 = internal global %union.U0* @g_128, align 8
@g_569 = internal global i8* @g_570, align 8
@g_570 = internal constant i8 5, align 1
@g_684 = internal global [9 x [9 x i8*]] [[9 x i8*] [i8* @g_163, i8* @g_163, i8* @g_163, i8* @g_163, i8* null, i8* @g_200, i8* @g_200, i8* null, i8* @g_163], [9 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [5 x [8 x i8]]], [4 x [5 x [8 x i8]]]* @g_466, i32 0, i32 0, i32 0, i32 0), i64 75), i8* @g_200, i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [5 x [8 x i8]]], [4 x [5 x [8 x i8]]]* @g_466, i32 0, i32 0, i32 0, i32 0), i64 75), i8* @g_163, i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [5 x [8 x i8]]], [4 x [5 x [8 x i8]]]* @g_466, i32 0, i32 0, i32 0, i32 0), i64 75), i8* @g_200, i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [5 x [8 x i8]]], [4 x [5 x [8 x i8]]]* @g_466, i32 0, i32 0, i32 0, i32 0), i64 75), i8* @g_163, i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [5 x [8 x i8]]], [4 x [5 x [8 x i8]]]* @g_466, i32 0, i32 0, i32 0, i32 0), i64 75)], [9 x i8*] [i8* @g_163, i8* @g_163, i8* @g_200, i8* @g_163, i8* null, i8* null, i8* @g_163, i8* @g_200, i8* @g_163], [9 x i8*] [i8* null, i8* @g_163, i8* @g_163, i8* @g_163, i8* null, i8* @g_163, i8* @g_163, i8* @g_163, i8* null], [9 x i8*] [i8* null, i8* @g_163, i8* @g_200, i8* @g_163, i8* @g_163, i8* @g_200, i8* @g_163, i8* null, i8* null], [9 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [5 x [8 x i8]]], [4 x [5 x [8 x i8]]]* @g_466, i32 0, i32 0, i32 0, i32 0), i64 75), i8* @g_163, i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [5 x [8 x i8]]], [4 x [5 x [8 x i8]]]* @g_466, i32 0, i32 0, i32 0, i32 0), i64 75), i8* @g_200, i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [5 x [8 x i8]]], [4 x [5 x [8 x i8]]]* @g_466, i32 0, i32 0, i32 0, i32 0), i64 75), i8* @g_163, i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [5 x [8 x i8]]], [4 x [5 x [8 x i8]]]* @g_466, i32 0, i32 0, i32 0, i32 0), i64 75), i8* @g_200, i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [5 x [8 x i8]]], [4 x [5 x [8 x i8]]]* @g_466, i32 0, i32 0, i32 0, i32 0), i64 75)], [9 x i8*] [i8* null, i8* @g_163, i8* @g_163, i8* @g_163, i8* @g_163, i8* null, i8* @g_200, i8* @g_200, i8* null], [9 x i8*] [i8* null, i8* @g_200, i8* @g_163, i8* @g_200, i8* null, i8* @g_200, i8* @g_163, i8* @g_200, i8* null], [9 x i8*] [i8* @g_163, i8* @g_163, i8* @g_163, i8* @g_163, i8* null, i8* @g_200, i8* @g_200, i8* null, i8* @g_163]], align 16
@func_36.l_656 = private unnamed_addr constant [7 x [1 x [5 x i8]]] [[1 x [5 x i8]] [[5 x i8] c"\FA\FE^\FE\FA"], [1 x [5 x i8]] [[5 x i8] c"\FB<\FB\FB<"], [1 x [5 x i8]] [[5 x i8] c"\FA\F9v\FEv"], [1 x [5 x i8]] [[5 x i8] c"<<<\FB\FB"], [1 x [5 x i8]] [[5 x i8] c"^\F9^\00v"], [1 x [5 x i8]] [[5 x i8] c"\FB\01\01\FB\01"], [1 x [5 x i8]] [[5 x i8] c"v\F9\FA\F9v"]], align 16
@func_36.l_1118 = private unnamed_addr constant [6 x [6 x i32]] [[6 x i32] [i32 -1454210801, i32 1, i32 -1454210801, i32 6, i32 -1326249242, i32 -1326249242], [6 x i32] [i32 -2040987133, i32 -1454210801, i32 -1454210801, i32 -2040987133, i32 1, i32 4], [6 x i32] [i32 4, i32 -2040987133, i32 -1326249242, i32 -2040987133, i32 4, i32 6], [6 x i32] [i32 -2040987133, i32 4, i32 6, i32 6, i32 4, i32 -2040987133], [6 x i32] [i32 -1454210801, i32 -2040987133, i32 1, i32 4, i32 1, i32 -2040987133], [6 x i32] [i32 1, i32 -1454210801, i32 6, i32 -1326249242, i32 -1326249242, i32 6]], align 16
@g_1047 = internal global i8***** @g_1048, align 8
@func_45.l_1070 = private unnamed_addr constant [6 x [9 x [2 x i32*]]] [[9 x [2 x i32*]] [[2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* null], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* null], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* null]], [9 x [2 x i32*]] [[2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* null], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* null], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)]], [9 x [2 x i32*]] [[2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* null], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* null], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)]], [9 x [2 x i32*]] [[2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* null], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* null], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)]], [9 x [2 x i32*]] [[2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* null], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* null], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* null]], [9 x [2 x i32*]] [[2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* null], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* null], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_1071 to i8*), i64 28) to i32*)]]], align 16
@func_45.l_1051 = private unnamed_addr constant [10 x i8*****] [i8***** @g_1048, i8***** null, i8***** @g_1048, i8***** null, i8***** @g_1048, i8***** null, i8***** @g_1048, i8***** null, i8***** @g_1048, i8***** null], align 16
@func_45.l_996 = private unnamed_addr constant [9 x [7 x i64]] [[7 x i64] [i64 6799545710067227455, i64 1, i64 -6748121970266121241, i64 1, i64 -7052242500920558314, i64 4694830953865524393, i64 -812533184842023793], [7 x i64] [i64 -6, i64 -8566052547916361510, i64 -812533184842023793, i64 -6748121970266121241, i64 4, i64 -6748121970266121241, i64 -812533184842023793], [7 x i64] [i64 6106494103499435187, i64 6106494103499435187, i64 7137890448686455678, i64 -8963121025202721193, i64 -812533184842023793, i64 9, i64 1], [7 x i64] [i64 2, i64 8777247299271303679, i64 1, i64 1, i64 1, i64 -1485405332184521081, i64 6799545710067227455], [7 x i64] [i64 -8963121025202721193, i64 9, i64 -1, i64 6111543548020547389, i64 -812533184842023793, i64 1, i64 7317344130894610478], [7 x i64] [i64 -1, i64 7416033691405611476, i64 -1485405332184521081, i64 -812533184842023793, i64 4, i64 -8963121025202721193, i64 -8963121025202721193], [7 x i64] [i64 -7052242500920558314, i64 -8425473979347218169, i64 -1485405332184521081, i64 -8425473979347218169, i64 -7052242500920558314, i64 7317344130894610478, i64 1], [7 x i64] [i64 7416033691405611476, i64 1, i64 -1, i64 7961082400216598014, i64 6111543548020547389, i64 6799545710067227455, i64 -1485405332184521081], [7 x i64] [i64 -8566052547916361510, i64 -4939994854824396876, i64 1, i64 2, i64 5652716256687777061, i64 1, i64 9]], align 16
@g_1050 = internal global [8 x [3 x i8*****]] [[3 x i8*****] [i8***** @g_1048, i8***** @g_1048, i8***** @g_1048], [3 x i8*****] [i8***** @g_1048, i8***** @g_1048, i8***** null], [3 x i8*****] [i8***** @g_1048, i8***** @g_1048, i8***** @g_1048], [3 x i8*****] [i8***** @g_1048, i8***** @g_1048, i8***** null], [3 x i8*****] [i8***** @g_1048, i8***** @g_1048, i8***** @g_1048], [3 x i8*****] [i8***** @g_1048, i8***** @g_1048, i8***** null], [3 x i8*****] [i8***** @g_1048, i8***** @g_1048, i8***** @g_1048], [3 x i8*****] [i8***** @g_1048, i8***** @g_1048, i8***** null]], align 16
@g_616 = internal global [4 x [9 x i8**]] [[9 x i8**] [i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617], [9 x i8**] [i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617], [9 x i8**] [i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617], [9 x i8**] [i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617, i8** @g_617]], align 16
@func_50.l_789 = private unnamed_addr constant [9 x [8 x i32]] [[8 x i32] [i32 1533742652, i32 1131305082, i32 1533742652, i32 0, i32 8, i32 0, i32 1533742652, i32 1131305082], [8 x i32] [i32 8, i32 0, i32 1533742652, i32 1131305082, i32 1533742652, i32 0, i32 8, i32 0], [8 x i32] [i32 8, i32 1131305082, i32 8, i32 1131305082, i32 8, i32 1, i32 8, i32 1131305082], [8 x i32] [i32 1533742652, i32 1131305082, i32 1533742652, i32 0, i32 8, i32 0, i32 1533742652, i32 1131305082], [8 x i32] [i32 8, i32 0, i32 1533742652, i32 1131305082, i32 1533742652, i32 0, i32 8, i32 0], [8 x i32] [i32 8, i32 1131305082, i32 8, i32 1131305082, i32 8, i32 1, i32 8, i32 1131305082], [8 x i32] [i32 1533742652, i32 1131305082, i32 1533742652, i32 0, i32 8, i32 0, i32 1533742652, i32 1131305082], [8 x i32] [i32 8, i32 0, i32 1533742652, i32 1131305082, i32 1533742652, i32 0, i32 8, i32 0], [8 x i32] [i32 8, i32 1131305082, i32 8, i32 1131305082, i32 8, i32 1, i32 8, i32 1131305082]], align 16
@g_841 = internal constant i16 -22092, align 2
@g_690 = internal global [9 x i8***] [i8*** @g_691, i8*** @g_691, i8*** @g_691, i8*** @g_691, i8*** @g_691, i8*** @g_691, i8*** @g_691, i8*** @g_691, i8*** @g_691], align 16
@func_50.l_779 = private unnamed_addr constant [5 x [5 x i8]] [[5 x i8] c"\B4\8E\8E\B4\00", [5 x i8] c"\B4\D4\01\01\D4", [5 x i8] c"\00\8E\01YY", [5 x i8] c"\8E\00\8E\01Y", [5 x i8] c"\D4\B4Y\B4\D4"], align 16
@func_50.l_768 = private unnamed_addr constant [10 x [1 x i32]] [[1 x i32] [i32 -1237891856], [1 x i32] [i32 -1237891856], [1 x i32] [i32 5], [1 x i32] [i32 -1], [1 x i32] [i32 5], [1 x i32] [i32 -1237891856], [1 x i32] [i32 -1237891856], [1 x i32] [i32 5], [1 x i32] [i32 -1], [1 x i32] [i32 5]], align 16
@func_50.l_732 = private unnamed_addr constant [8 x [7 x [2 x i64*]]] [[7 x [2 x i64*]] [[2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* @g_174, i64* null], [2 x i64*] [i64* null, i64* @g_174], [2 x i64*] [i64* null, i64* @g_174], [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* @g_174, i64* null], [2 x i64*] zeroinitializer], [7 x [2 x i64*]] [[2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* null, i64* @g_174], [2 x i64*] zeroinitializer, [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* @g_174, i64* null], [2 x i64*] [i64* null, i64* @g_174]], [7 x [2 x i64*]] [[2 x i64*] [i64* null, i64* @g_174], [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* @g_174, i64* null], [2 x i64*] zeroinitializer, [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* null, i64* @g_174]], [7 x [2 x i64*]] [[2 x i64*] zeroinitializer, [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* @g_174, i64* null], [2 x i64*] [i64* null, i64* @g_174], [2 x i64*] [i64* null, i64* @g_174], [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* @g_174, i64* null]], [7 x [2 x i64*]] [[2 x i64*] zeroinitializer, [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* null, i64* @g_174], [2 x i64*] zeroinitializer, [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* @g_174, i64* null]], [7 x [2 x i64*]] [[2 x i64*] [i64* null, i64* @g_174], [2 x i64*] [i64* @g_174, i64* null], [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* null, i64* @g_174], [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* null, i64* @g_174], [2 x i64*] [i64* @g_174, i64* null]], [7 x [2 x i64*]] [[2 x i64*] [i64* @g_174, i64* null], [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* @g_174, i64* null], [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* @g_174, i64* null], [2 x i64*] [i64* @g_174, i64* null], [2 x i64*] [i64* @g_174, i64* @g_174]], [7 x [2 x i64*]] [[2 x i64*] [i64* null, i64* @g_174], [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* null, i64* @g_174], [2 x i64*] [i64* @g_174, i64* null], [2 x i64*] [i64* @g_174, i64* null], [2 x i64*] [i64* @g_174, i64* @g_174], [2 x i64*] [i64* @g_174, i64* null]]], align 16
@func_50.l_749 = private unnamed_addr constant [10 x [7 x i32]] [[7 x i32] [i32 822925753, i32 8, i32 822925753, i32 822925753, i32 8, i32 822925753, i32 822925753], [7 x i32] [i32 706468993, i32 -258807655, i32 7, i32 -258807655, i32 706468993, i32 1, i32 706468993], [7 x i32] [i32 8, i32 822925753, i32 822925753, i32 8, i32 822925753, i32 822925753, i32 8], [7 x i32] [i32 -1, i32 -258807655, i32 -1, i32 1, i32 706468993, i32 1, i32 -1], [7 x i32] [i32 8, i32 8, i32 1025517741, i32 8, i32 8, i32 1025517741, i32 8], [7 x i32] [i32 706468993, i32 1, i32 -1, i32 -258807655, i32 -1, i32 1, i32 706468993], [7 x i32] [i32 822925753, i32 8, i32 822925753, i32 822925753, i32 8, i32 822925753, i32 822925753], [7 x i32] [i32 706468993, i32 -258807655, i32 7, i32 -258807655, i32 706468993, i32 1, i32 706468993], [7 x i32] [i32 8, i32 822925753, i32 822925753, i32 8, i32 822925753, i32 822925753, i32 8], [7 x i32] [i32 -1, i32 -258807655, i32 -1, i32 1, i32 706468993, i32 1, i32 -1]], align 16
@func_50.l_836 = private unnamed_addr constant %union.U0 { i32 -1320152568 }, align 4
@func_50.l_913 = private unnamed_addr constant [3 x [4 x [10 x i32]]] [[4 x [10 x i32]] [[10 x i32] [i32 6, i32 -3, i32 -829794100, i32 -3, i32 6, i32 1762322614, i32 -3, i32 570311682, i32 -1, i32 1045190363], [10 x i32] [i32 1045190363, i32 0, i32 -666555538, i32 1, i32 1, i32 1, i32 1, i32 -666555538, i32 0, i32 1045190363], [10 x i32] [i32 1, i32 1, i32 -666555538, i32 0, i32 1045190363, i32 1, i32 0, i32 1, i32 0, i32 1], [10 x i32] [i32 1045190363, i32 1, i32 -1, i32 1, i32 1045190363, i32 -3, i32 1, i32 1, i32 -1, i32 1045190363]], [4 x [10 x i32]] [[10 x i32] [i32 1045190363, i32 0, i32 -666555538, i32 1, i32 1, i32 1, i32 1, i32 -666555538, i32 0, i32 1045190363], [10 x i32] [i32 1, i32 1, i32 -666555538, i32 0, i32 1045190363, i32 1, i32 0, i32 1, i32 0, i32 1], [10 x i32] [i32 1045190363, i32 1, i32 -1, i32 1, i32 1045190363, i32 -3, i32 1, i32 1, i32 -1, i32 1045190363], [10 x i32] [i32 1045190363, i32 0, i32 -666555538, i32 1, i32 1, i32 1, i32 1, i32 -666555538, i32 0, i32 1045190363]], [4 x [10 x i32]] [[10 x i32] [i32 1, i32 1, i32 -666555538, i32 0, i32 1045190363, i32 1, i32 0, i32 1, i32 0, i32 1], [10 x i32] [i32 1045190363, i32 1, i32 -1, i32 1, i32 1045190363, i32 -3, i32 1, i32 1, i32 -1, i32 1045190363], [10 x i32] [i32 1045190363, i32 0, i32 -666555538, i32 1, i32 1, i32 1, i32 1, i32 -666555538, i32 0, i32 1045190363], [10 x i32] [i32 1, i32 1, i32 -666555538, i32 0, i32 1045190363, i32 1, i32 0, i32 1, i32 0, i32 1]]], align 16
@func_50.l_823 = private unnamed_addr constant [8 x [4 x i32*]] [[4 x i32*] [i32* @g_124, i32* @g_124, i32* @g_98, i32* @g_124], [4 x i32*] [i32* @g_124, i32* @g_124, i32* @g_124, i32* @g_124], [4 x i32*] [i32* @g_124, i32* @g_124, i32* @g_124, i32* @g_98], [4 x i32*] [i32* @g_124, i32* @g_124, i32* @g_124, i32* @g_98], [4 x i32*] [i32* @g_124, i32* @g_98, i32* @g_98, i32* @g_98], [4 x i32*] [i32* @g_124, i32* @g_124, i32* @g_124, i32* @g_98], [4 x i32*] [i32* @g_98, i32* @g_124, i32* @g_124, i32* @g_124], [4 x i32*] [i32* @g_124, i32* @g_124, i32* @g_98, i32* @g_124]], align 16
@g_839 = internal constant i16 4011, align 2
@func_50.l_881 = internal constant %union.U0 { i32 40805240 }, align 4
@g_503 = internal constant i64** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [7 x i64*]]* @g_504 to i8*), i64 208) to i64**), align 8
@g_691 = internal constant i8** null, align 8
@func_60.l_355 = private unnamed_addr constant [10 x [5 x [5 x i32**]]] [[5 x [5 x i32**]] [[5 x i32**] [i32** null, i32** @g_152, i32** @g_152, i32** null, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** null, i32** @g_152, i32** @g_152]], [5 x [5 x i32**]] [[5 x i32**] [i32** null, i32** @g_152, i32** @g_152, i32** null, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** null, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** null], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152]], [5 x [5 x i32**]] [[5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** null, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** null], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152]], [5 x [5 x i32**]] [[5 x i32**] [i32** @g_152, i32** null, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** null, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** null]], [5 x [5 x i32**]] [[5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** null], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** null, i32** @g_152, i32** null, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152]], [5 x [5 x i32**]] [[5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** null], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** null], [5 x i32**] [i32** @g_152, i32** null, i32** @g_152, i32** null, i32** @g_152]], [5 x [5 x i32**]] [[5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** null, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** null]], [5 x [5 x i32**]] [[5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** null, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** null, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152]], [5 x [5 x i32**]] [[5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** null], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** null], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** null, i32** @g_152, i32** null, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152]], [5 x [5 x i32**]] [[5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152], [5 x i32**] [i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152, i32** @g_152]]], align 16
@func_60.l_644 = private unnamed_addr constant [1 x [6 x [3 x i8]]] [[6 x [3 x i8]] [[3 x i8] c"&\B7\0C", [3 x i8] c"gg\0C", [3 x i8] c"\B7&\0C", [3 x i8] c"&\B7\0C", [3 x i8] c"gg\0C", [3 x i8] c"\B7&\0C"]], align 16
@func_60.l_94 = private unnamed_addr constant [7 x i32] [i32 771031235, i32 771031235, i32 771031235, i32 771031235, i32 771031235, i32 771031235, i32 771031235], align 16
@func_60.l_252 = private unnamed_addr constant [8 x i32*] [i32* @g_122, i32* null, i32* @g_122, i32* null, i32* @g_122, i32* null, i32* @g_122, i32* null], align 16
@func_60.l_464 = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@g_567 = internal constant i8 -58, align 1
@g_1328 = internal constant i32 1465322859, align 4
@g_1778 = internal global i8** null, align 8
@.str.73 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %6 = alloca %union.U0, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %print_hash_value, align 4, !tbaa !1
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %90

; <label>:13                                      ; preds = %0
  %14 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %16, label %78

; <label>:16                                      ; preds = %13
  store i64 1, i64* %__s2_len, align 8, !tbaa !7
  %17 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %78

; <label>:19                                      ; preds = %16
  %20 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i8**, i8*** %3, align 8, !tbaa !5
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8, !tbaa !5
  store i8* %23, i8** %__s1, align 8, !tbaa !5
  %24 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i8*, i8** %__s1, align 8, !tbaa !5
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1, !tbaa !9
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %30 = zext i8 %29 to i32
  %31 = sub nsw i32 %28, %30
  store i32 %31, i32* %__result, align 4, !tbaa !1
  %32 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %73

; <label>:34                                      ; preds = %19
  %35 = load i32, i32* %__result, align 4, !tbaa !1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %73

; <label>:37                                      ; preds = %34
  %38 = load i8*, i8** %__s1, align 8, !tbaa !5
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !9
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %43 = zext i8 %42 to i32
  %44 = sub nsw i32 %41, %43
  store i32 %44, i32* %__result, align 4, !tbaa !1
  %45 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %46 = icmp ugt i64 %45, 1
  br i1 %46, label %47, label %72

; <label>:47                                      ; preds = %37
  %48 = load i32, i32* %__result, align 4, !tbaa !1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %72

; <label>:50                                      ; preds = %47
  %51 = load i8*, i8** %__s1, align 8, !tbaa !5
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1, !tbaa !9
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !9
  %56 = zext i8 %55 to i32
  %57 = sub nsw i32 %54, %56
  store i32 %57, i32* %__result, align 4, !tbaa !1
  %58 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %59 = icmp ugt i64 %58, 2
  br i1 %59, label %60, label %71

; <label>:60                                      ; preds = %50
  %61 = load i32, i32* %__result, align 4, !tbaa !1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

; <label>:63                                      ; preds = %60
  %64 = load i8*, i8** %__s1, align 8, !tbaa !5
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  %66 = load i8, i8* %65, align 1, !tbaa !9
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %69 = zext i8 %68 to i32
  %70 = sub nsw i32 %67, %69
  store i32 %70, i32* %__result, align 4, !tbaa !1
  br label %71

; <label>:71                                      ; preds = %63, %60, %50
  br label %72

; <label>:72                                      ; preds = %71, %47, %37
  br label %73

; <label>:73                                      ; preds = %72, %34, %19
  %74 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %74, i32* %5, !tbaa !1
  %75 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load i32, i32* %5, !tbaa !1
  br label %83

; <label>:78                                      ; preds = %16, %13
  %79 = load i8**, i8*** %3, align 8, !tbaa !5
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8, !tbaa !5
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %83

; <label>:83                                      ; preds = %78, %73
  %84 = phi i32 [ %77, %73 ], [ %82, %78 ]
  store i32 %84, i32* %4, !tbaa !1
  %85 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = load i32, i32* %4, !tbaa !1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

; <label>:89                                      ; preds = %83
  store i32 1, i32* %print_hash_value, align 4, !tbaa !1
  br label %90

; <label>:90                                      ; preds = %89, %83, %0
  call void @platform_main_begin()
  call void @crc32_gentab()
  %91 = call i32 @func_1()
  %92 = getelementptr %union.U0, %union.U0* %6, i32 0, i32 0
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %111, %90
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %97, label %114

; <label>:97                                      ; preds = %94
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x %union.U0], [4 x %union.U0]* @g_17, i32 0, i64 %99
  %101 = bitcast %union.U0* %100 to i32*
  %102 = load volatile i32, i32* %101, align 4, !tbaa !1
  %103 = sext i32 %102 to i64
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 %104)
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

; <label>:107                                     ; preds = %97
  %108 = load i32, i32* %i, align 4, !tbaa !1
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %108)
  br label %110

; <label>:110                                     ; preds = %107, %97
  br label %111

; <label>:111                                     ; preds = %110
  %112 = load i32, i32* %i, align 4, !tbaa !1
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:114                                     ; preds = %94
  %115 = load i16, i16* @g_27, align 2, !tbaa !10
  %116 = sext i16 %115 to i64
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %117)
  %118 = load i32, i32* @g_40, align 4, !tbaa !1
  %119 = sext i32 %118 to i64
  %120 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %120)
  %121 = load i8, i8* @g_57, align 1, !tbaa !9
  %122 = zext i8 %121 to i64
  %123 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %123)
  %124 = load i32, i32* @g_65, align 4, !tbaa !1
  %125 = zext i32 %124 to i64
  %126 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %126)
  %127 = load i16, i16* @g_71, align 2, !tbaa !10
  %128 = zext i16 %127 to i64
  %129 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %129)
  %130 = load i32, i32* @g_98, align 4, !tbaa !1
  %131 = sext i32 %130 to i64
  %132 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %132)
  %133 = load i8, i8* @g_115, align 1, !tbaa !9
  %134 = zext i8 %133 to i64
  %135 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %135)
  %136 = load i8, i8* @g_120, align 1, !tbaa !9
  %137 = zext i8 %136 to i64
  %138 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %138)
  %139 = load i32, i32* @g_122, align 4, !tbaa !1
  %140 = sext i32 %139 to i64
  %141 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %141)
  %142 = load i32, i32* @g_124, align 4, !tbaa !1
  %143 = sext i32 %142 to i64
  %144 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %144)
  %145 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_128, i32 0, i32 0), align 4, !tbaa !1
  %146 = sext i32 %145 to i64
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %147)
  %148 = load i16, i16* @g_142, align 2, !tbaa !10
  %149 = zext i16 %148 to i64
  %150 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %150)
  %151 = load i8, i8* @g_163, align 1, !tbaa !9
  %152 = sext i8 %151 to i64
  %153 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %153)
  %154 = load i16, i16* @g_172, align 2, !tbaa !10
  %155 = zext i16 %154 to i64
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %156)
  %157 = load i64, i64* @g_174, align 8, !tbaa !7
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %158)
  %159 = load i16, i16* @g_195, align 2, !tbaa !10
  %160 = zext i16 %159 to i64
  %161 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %161)
  %162 = load i32, i32* @g_198, align 4, !tbaa !1
  %163 = sext i32 %162 to i64
  %164 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %164)
  %165 = load volatile i32, i32* @g_199, align 4, !tbaa !1
  %166 = sext i32 %165 to i64
  %167 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %167)
  %168 = load i8, i8* @g_200, align 1, !tbaa !9
  %169 = sext i8 %168 to i64
  %170 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %170)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %171

; <label>:171                                     ; preds = %187, %114
  %172 = load i32, i32* %i, align 4, !tbaa !1
  %173 = icmp slt i32 %172, 4
  br i1 %173, label %174, label %190

; <label>:174                                     ; preds = %171
  %175 = load i32, i32* %i, align 4, !tbaa !1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i8], [4 x i8]* @g_216, i32 0, i64 %176
  %178 = load volatile i8, i8* %177, align 1, !tbaa !9
  %179 = zext i8 %178 to i64
  %180 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %179, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %180)
  %181 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

; <label>:183                                     ; preds = %174
  %184 = load i32, i32* %i, align 4, !tbaa !1
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %184)
  br label %186

; <label>:186                                     ; preds = %183, %174
  br label %187

; <label>:187                                     ; preds = %186
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %i, align 4, !tbaa !1
  br label %171

; <label>:190                                     ; preds = %171
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %191

; <label>:191                                     ; preds = %219, %190
  %192 = load i32, i32* %i, align 4, !tbaa !1
  %193 = icmp slt i32 %192, 2
  br i1 %193, label %194, label %222

; <label>:194                                     ; preds = %191
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %195

; <label>:195                                     ; preds = %215, %194
  %196 = load i32, i32* %j, align 4, !tbaa !1
  %197 = icmp slt i32 %196, 3
  br i1 %197, label %198, label %218

; <label>:198                                     ; preds = %195
  %199 = load i32, i32* %j, align 4, !tbaa !1
  %200 = sext i32 %199 to i64
  %201 = load i32, i32* %i, align 4, !tbaa !1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* @g_290, i32 0, i64 %202
  %204 = getelementptr inbounds [3 x i8], [3 x i8]* %203, i32 0, i64 %200
  %205 = load volatile i8, i8* %204, align 1, !tbaa !9
  %206 = sext i8 %205 to i64
  %207 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %206, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 %207)
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

; <label>:210                                     ; preds = %198
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = load i32, i32* %j, align 4, !tbaa !1
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 %211, i32 %212)
  br label %214

; <label>:214                                     ; preds = %210, %198
  br label %215

; <label>:215                                     ; preds = %214
  %216 = load i32, i32* %j, align 4, !tbaa !1
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %j, align 4, !tbaa !1
  br label %195

; <label>:218                                     ; preds = %195
  br label %219

; <label>:219                                     ; preds = %218
  %220 = load i32, i32* %i, align 4, !tbaa !1
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %i, align 4, !tbaa !1
  br label %191

; <label>:222                                     ; preds = %191
  %223 = load volatile i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_309, i32 0, i32 0), align 4, !tbaa !1
  %224 = sext i32 %223 to i64
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %225)
  %226 = load i16, i16* @g_439, align 2, !tbaa !10
  %227 = sext i16 %226 to i64
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %228)
  %229 = load i32, i32* @g_440, align 4, !tbaa !1
  %230 = zext i32 %229 to i64
  %231 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %231)
  %232 = load i32, i32* @g_461, align 4, !tbaa !1
  %233 = sext i32 %232 to i64
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %234)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %235

; <label>:235                                     ; preds = %275, %222
  %236 = load i32, i32* %i, align 4, !tbaa !1
  %237 = icmp slt i32 %236, 4
  br i1 %237, label %238, label %278

; <label>:238                                     ; preds = %235
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %239

; <label>:239                                     ; preds = %271, %238
  %240 = load i32, i32* %j, align 4, !tbaa !1
  %241 = icmp slt i32 %240, 5
  br i1 %241, label %242, label %274

; <label>:242                                     ; preds = %239
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %243

; <label>:243                                     ; preds = %267, %242
  %244 = load i32, i32* %k, align 4, !tbaa !1
  %245 = icmp slt i32 %244, 8
  br i1 %245, label %246, label %270

; <label>:246                                     ; preds = %243
  %247 = load i32, i32* %k, align 4, !tbaa !1
  %248 = sext i32 %247 to i64
  %249 = load i32, i32* %j, align 4, !tbaa !1
  %250 = sext i32 %249 to i64
  %251 = load i32, i32* %i, align 4, !tbaa !1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [4 x [5 x [8 x i8]]], [4 x [5 x [8 x i8]]]* @g_466, i32 0, i64 %252
  %254 = getelementptr inbounds [5 x [8 x i8]], [5 x [8 x i8]]* %253, i32 0, i64 %250
  %255 = getelementptr inbounds [8 x i8], [8 x i8]* %254, i32 0, i64 %248
  %256 = load i8, i8* %255, align 1, !tbaa !9
  %257 = sext i8 %256 to i64
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i32 %258)
  %259 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %266

; <label>:261                                     ; preds = %246
  %262 = load i32, i32* %i, align 4, !tbaa !1
  %263 = load i32, i32* %j, align 4, !tbaa !1
  %264 = load i32, i32* %k, align 4, !tbaa !1
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), i32 %262, i32 %263, i32 %264)
  br label %266

; <label>:266                                     ; preds = %261, %246
  br label %267

; <label>:267                                     ; preds = %266
  %268 = load i32, i32* %k, align 4, !tbaa !1
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %k, align 4, !tbaa !1
  br label %243

; <label>:270                                     ; preds = %243
  br label %271

; <label>:271                                     ; preds = %270
  %272 = load i32, i32* %j, align 4, !tbaa !1
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %j, align 4, !tbaa !1
  br label %239

; <label>:274                                     ; preds = %239
  br label %275

; <label>:275                                     ; preds = %274
  %276 = load i32, i32* %i, align 4, !tbaa !1
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %i, align 4, !tbaa !1
  br label %235

; <label>:278                                     ; preds = %235
  %279 = load volatile i32, i32* @g_510, align 4, !tbaa !1
  %280 = zext i32 %279 to i64
  %281 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %280, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %281)
  %282 = load i16, i16* @g_559, align 2, !tbaa !10
  %283 = sext i16 %282 to i64
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %283, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %284)
  %285 = load i64, i64* @g_562, align 8, !tbaa !7
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %286)
  %287 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %287)
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %288)
  %289 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_745, i32 0, i32 0), align 4, !tbaa !1
  %290 = sext i32 %289 to i64
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %290, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %291)
  %292 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 4011, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %292)
  %293 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 43444, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %293)
  %294 = load volatile i32, i32* @g_870, align 4, !tbaa !1
  %295 = zext i32 %294 to i64
  %296 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %295, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %296)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %297

; <label>:297                                     ; preds = %325, %278
  %298 = load i32, i32* %i, align 4, !tbaa !1
  %299 = icmp slt i32 %298, 8
  br i1 %299, label %300, label %328

; <label>:300                                     ; preds = %297
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %301

; <label>:301                                     ; preds = %321, %300
  %302 = load i32, i32* %j, align 4, !tbaa !1
  %303 = icmp slt i32 %302, 9
  br i1 %303, label %304, label %324

; <label>:304                                     ; preds = %301
  %305 = load i32, i32* %j, align 4, !tbaa !1
  %306 = sext i32 %305 to i64
  %307 = load i32, i32* %i, align 4, !tbaa !1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [8 x [9 x i16]], [8 x [9 x i16]]* @g_915, i32 0, i64 %308
  %310 = getelementptr inbounds [9 x i16], [9 x i16]* %309, i32 0, i64 %306
  %311 = load i16, i16* %310, align 2, !tbaa !10
  %312 = zext i16 %311 to i64
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 %313)
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %320

; <label>:316                                     ; preds = %304
  %317 = load i32, i32* %i, align 4, !tbaa !1
  %318 = load i32, i32* %j, align 4, !tbaa !1
  %319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 %317, i32 %318)
  br label %320

; <label>:320                                     ; preds = %316, %304
  br label %321

; <label>:321                                     ; preds = %320
  %322 = load i32, i32* %j, align 4, !tbaa !1
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %j, align 4, !tbaa !1
  br label %301

; <label>:324                                     ; preds = %301
  br label %325

; <label>:325                                     ; preds = %324
  %326 = load i32, i32* %i, align 4, !tbaa !1
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %i, align 4, !tbaa !1
  br label %297

; <label>:328                                     ; preds = %297
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %329

; <label>:329                                     ; preds = %369, %328
  %330 = load i32, i32* %i, align 4, !tbaa !1
  %331 = icmp slt i32 %330, 10
  br i1 %331, label %332, label %372

; <label>:332                                     ; preds = %329
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %333

; <label>:333                                     ; preds = %365, %332
  %334 = load i32, i32* %j, align 4, !tbaa !1
  %335 = icmp slt i32 %334, 6
  br i1 %335, label %336, label %368

; <label>:336                                     ; preds = %333
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %337

; <label>:337                                     ; preds = %361, %336
  %338 = load i32, i32* %k, align 4, !tbaa !1
  %339 = icmp slt i32 %338, 4
  br i1 %339, label %340, label %364

; <label>:340                                     ; preds = %337
  %341 = load i32, i32* %k, align 4, !tbaa !1
  %342 = sext i32 %341 to i64
  %343 = load i32, i32* %j, align 4, !tbaa !1
  %344 = sext i32 %343 to i64
  %345 = load i32, i32* %i, align 4, !tbaa !1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [10 x [6 x [4 x i8]]], [10 x [6 x [4 x i8]]]* @g_978, i32 0, i64 %346
  %348 = getelementptr inbounds [6 x [4 x i8]], [6 x [4 x i8]]* %347, i32 0, i64 %344
  %349 = getelementptr inbounds [4 x i8], [4 x i8]* %348, i32 0, i64 %342
  %350 = load i8, i8* %349, align 1, !tbaa !9
  %351 = zext i8 %350 to i64
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i32 %352)
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %360

; <label>:355                                     ; preds = %340
  %356 = load i32, i32* %i, align 4, !tbaa !1
  %357 = load i32, i32* %j, align 4, !tbaa !1
  %358 = load i32, i32* %k, align 4, !tbaa !1
  %359 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), i32 %356, i32 %357, i32 %358)
  br label %360

; <label>:360                                     ; preds = %355, %340
  br label %361

; <label>:361                                     ; preds = %360
  %362 = load i32, i32* %k, align 4, !tbaa !1
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %k, align 4, !tbaa !1
  br label %337

; <label>:364                                     ; preds = %337
  br label %365

; <label>:365                                     ; preds = %364
  %366 = load i32, i32* %j, align 4, !tbaa !1
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %j, align 4, !tbaa !1
  br label %333

; <label>:368                                     ; preds = %333
  br label %369

; <label>:369                                     ; preds = %368
  %370 = load i32, i32* %i, align 4, !tbaa !1
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %i, align 4, !tbaa !1
  br label %329

; <label>:372                                     ; preds = %329
  %373 = load i64, i64* @g_1010, align 8, !tbaa !7
  %374 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %373, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %374)
  %375 = load i8, i8* @g_1018, align 1, !tbaa !9
  %376 = sext i8 %375 to i64
  %377 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %376, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %377)
  %378 = load volatile i8, i8* @g_1019, align 1, !tbaa !9
  %379 = zext i8 %378 to i64
  %380 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %379, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %380)
  %381 = load volatile i16, i16* @g_1023, align 2, !tbaa !10
  %382 = sext i16 %381 to i64
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %382, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %383)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %384

; <label>:384                                     ; preds = %412, %372
  %385 = load i32, i32* %i, align 4, !tbaa !1
  %386 = icmp slt i32 %385, 8
  br i1 %386, label %387, label %415

; <label>:387                                     ; preds = %384
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %388

; <label>:388                                     ; preds = %408, %387
  %389 = load i32, i32* %j, align 4, !tbaa !1
  %390 = icmp slt i32 %389, 10
  br i1 %390, label %391, label %411

; <label>:391                                     ; preds = %388
  %392 = load i32, i32* %j, align 4, !tbaa !1
  %393 = sext i32 %392 to i64
  %394 = load i32, i32* %i, align 4, !tbaa !1
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [8 x [10 x i16]], [8 x [10 x i16]]* @g_1029, i32 0, i64 %395
  %397 = getelementptr inbounds [10 x i16], [10 x i16]* %396, i32 0, i64 %393
  %398 = load volatile i16, i16* %397, align 2, !tbaa !10
  %399 = sext i16 %398 to i64
  %400 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %399, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i32 %400)
  %401 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %407

; <label>:403                                     ; preds = %391
  %404 = load i32, i32* %i, align 4, !tbaa !1
  %405 = load i32, i32* %j, align 4, !tbaa !1
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 %404, i32 %405)
  br label %407

; <label>:407                                     ; preds = %403, %391
  br label %408

; <label>:408                                     ; preds = %407
  %409 = load i32, i32* %j, align 4, !tbaa !1
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %j, align 4, !tbaa !1
  br label %388

; <label>:411                                     ; preds = %388
  br label %412

; <label>:412                                     ; preds = %411
  %413 = load i32, i32* %i, align 4, !tbaa !1
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %i, align 4, !tbaa !1
  br label %384

; <label>:415                                     ; preds = %384
  %416 = load i32, i32* @g_1031, align 4, !tbaa !1
  %417 = zext i32 %416 to i64
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %417, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %418)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %419

; <label>:419                                     ; preds = %435, %415
  %420 = load i32, i32* %i, align 4, !tbaa !1
  %421 = icmp slt i32 %420, 10
  br i1 %421, label %422, label %438

; <label>:422                                     ; preds = %419
  %423 = load i32, i32* %i, align 4, !tbaa !1
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [10 x i32], [10 x i32]* @g_1071, i32 0, i64 %424
  %426 = load i32, i32* %425, align 4, !tbaa !1
  %427 = zext i32 %426 to i64
  %428 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %427, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 %428)
  %429 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %434

; <label>:431                                     ; preds = %422
  %432 = load i32, i32* %i, align 4, !tbaa !1
  %433 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %432)
  br label %434

; <label>:434                                     ; preds = %431, %422
  br label %435

; <label>:435                                     ; preds = %434
  %436 = load i32, i32* %i, align 4, !tbaa !1
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %i, align 4, !tbaa !1
  br label %419

; <label>:438                                     ; preds = %419
  %439 = load i64, i64* @g_1102, align 8, !tbaa !7
  %440 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %439, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %440)
  %441 = load i16, i16* @g_1203, align 2, !tbaa !10
  %442 = sext i16 %441 to i64
  %443 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %442, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %443)
  %444 = load volatile i32, i32* @g_1297, align 4, !tbaa !1
  %445 = sext i32 %444 to i64
  %446 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %445, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %446)
  %447 = load i8, i8* @g_1298, align 1, !tbaa !9
  %448 = zext i8 %447 to i64
  %449 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %448, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %449)
  %450 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1465322859, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %450)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %451

; <label>:451                                     ; preds = %466, %438
  %452 = load i32, i32* %i, align 4, !tbaa !1
  %453 = icmp slt i32 %452, 8
  br i1 %453, label %454, label %469

; <label>:454                                     ; preds = %451
  %455 = load i32, i32* %i, align 4, !tbaa !1
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [8 x i64], [8 x i64]* @g_1338, i32 0, i64 %456
  %458 = load volatile i64, i64* %457, align 8, !tbaa !7
  %459 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %458, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 %459)
  %460 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %465

; <label>:462                                     ; preds = %454
  %463 = load i32, i32* %i, align 4, !tbaa !1
  %464 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %463)
  br label %465

; <label>:465                                     ; preds = %462, %454
  br label %466

; <label>:466                                     ; preds = %465
  %467 = load i32, i32* %i, align 4, !tbaa !1
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %i, align 4, !tbaa !1
  br label %451

; <label>:469                                     ; preds = %451
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %470

; <label>:470                                     ; preds = %498, %469
  %471 = load i32, i32* %i, align 4, !tbaa !1
  %472 = icmp slt i32 %471, 3
  br i1 %472, label %473, label %501

; <label>:473                                     ; preds = %470
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %474

; <label>:474                                     ; preds = %494, %473
  %475 = load i32, i32* %j, align 4, !tbaa !1
  %476 = icmp slt i32 %475, 9
  br i1 %476, label %477, label %497

; <label>:477                                     ; preds = %474
  %478 = load i32, i32* %j, align 4, !tbaa !1
  %479 = sext i32 %478 to i64
  %480 = load i32, i32* %i, align 4, !tbaa !1
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [3 x [9 x i8]], [3 x [9 x i8]]* @g_1514, i32 0, i64 %481
  %483 = getelementptr inbounds [9 x i8], [9 x i8]* %482, i32 0, i64 %479
  %484 = load volatile i8, i8* %483, align 1, !tbaa !9
  %485 = sext i8 %484 to i64
  %486 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %485, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i32 %486)
  %487 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %493

; <label>:489                                     ; preds = %477
  %490 = load i32, i32* %i, align 4, !tbaa !1
  %491 = load i32, i32* %j, align 4, !tbaa !1
  %492 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 %490, i32 %491)
  br label %493

; <label>:493                                     ; preds = %489, %477
  br label %494

; <label>:494                                     ; preds = %493
  %495 = load i32, i32* %j, align 4, !tbaa !1
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %j, align 4, !tbaa !1
  br label %474

; <label>:497                                     ; preds = %474
  br label %498

; <label>:498                                     ; preds = %497
  %499 = load i32, i32* %i, align 4, !tbaa !1
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %i, align 4, !tbaa !1
  br label %470

; <label>:501                                     ; preds = %470
  %502 = load volatile i16, i16* @g_1515, align 2, !tbaa !10
  %503 = sext i16 %502 to i64
  %504 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %503, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %504)
  %505 = load i32, i32* @g_1516, align 4, !tbaa !1
  %506 = zext i32 %505 to i64
  %507 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %506, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %507)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %508

; <label>:508                                     ; preds = %548, %501
  %509 = load i32, i32* %i, align 4, !tbaa !1
  %510 = icmp slt i32 %509, 10
  br i1 %510, label %511, label %551

; <label>:511                                     ; preds = %508
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %512

; <label>:512                                     ; preds = %544, %511
  %513 = load i32, i32* %j, align 4, !tbaa !1
  %514 = icmp slt i32 %513, 8
  br i1 %514, label %515, label %547

; <label>:515                                     ; preds = %512
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %516

; <label>:516                                     ; preds = %540, %515
  %517 = load i32, i32* %k, align 4, !tbaa !1
  %518 = icmp slt i32 %517, 3
  br i1 %518, label %519, label %543

; <label>:519                                     ; preds = %516
  %520 = load i32, i32* %k, align 4, !tbaa !1
  %521 = sext i32 %520 to i64
  %522 = load i32, i32* %j, align 4, !tbaa !1
  %523 = sext i32 %522 to i64
  %524 = load i32, i32* %i, align 4, !tbaa !1
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [10 x [8 x [3 x i16]]], [10 x [8 x [3 x i16]]]* @g_1570, i32 0, i64 %525
  %527 = getelementptr inbounds [8 x [3 x i16]], [8 x [3 x i16]]* %526, i32 0, i64 %523
  %528 = getelementptr inbounds [3 x i16], [3 x i16]* %527, i32 0, i64 %521
  %529 = load volatile i16, i16* %528, align 2, !tbaa !10
  %530 = zext i16 %529 to i64
  %531 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %530, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), i32 %531)
  %532 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %539

; <label>:534                                     ; preds = %519
  %535 = load i32, i32* %i, align 4, !tbaa !1
  %536 = load i32, i32* %j, align 4, !tbaa !1
  %537 = load i32, i32* %k, align 4, !tbaa !1
  %538 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), i32 %535, i32 %536, i32 %537)
  br label %539

; <label>:539                                     ; preds = %534, %519
  br label %540

; <label>:540                                     ; preds = %539
  %541 = load i32, i32* %k, align 4, !tbaa !1
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %k, align 4, !tbaa !1
  br label %516

; <label>:543                                     ; preds = %516
  br label %544

; <label>:544                                     ; preds = %543
  %545 = load i32, i32* %j, align 4, !tbaa !1
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %j, align 4, !tbaa !1
  br label %512

; <label>:547                                     ; preds = %512
  br label %548

; <label>:548                                     ; preds = %547
  %549 = load i32, i32* %i, align 4, !tbaa !1
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %i, align 4, !tbaa !1
  br label %508

; <label>:551                                     ; preds = %508
  %552 = load volatile i32, i32* @g_1573, align 4, !tbaa !1
  %553 = zext i32 %552 to i64
  %554 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %553, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %554)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %555

; <label>:555                                     ; preds = %571, %551
  %556 = load i32, i32* %i, align 4, !tbaa !1
  %557 = icmp slt i32 %556, 7
  br i1 %557, label %558, label %574

; <label>:558                                     ; preds = %555
  %559 = load i32, i32* %i, align 4, !tbaa !1
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds [7 x i32], [7 x i32]* @g_1603, i32 0, i64 %560
  %562 = load volatile i32, i32* %561, align 4, !tbaa !1
  %563 = zext i32 %562 to i64
  %564 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %563, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 %564)
  %565 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %570

; <label>:567                                     ; preds = %558
  %568 = load i32, i32* %i, align 4, !tbaa !1
  %569 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %568)
  br label %570

; <label>:570                                     ; preds = %567, %558
  br label %571

; <label>:571                                     ; preds = %570
  %572 = load i32, i32* %i, align 4, !tbaa !1
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %i, align 4, !tbaa !1
  br label %555

; <label>:574                                     ; preds = %555
  %575 = load i32, i32* @g_1685, align 4, !tbaa !1
  %576 = sext i32 %575 to i64
  %577 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %576, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 %577)
  %578 = load i16, i16* @g_1722, align 2, !tbaa !10
  %579 = sext i16 %578 to i64
  %580 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %579, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 %580)
  %581 = load volatile i32, i32* @g_1738, align 4, !tbaa !1
  %582 = zext i32 %581 to i64
  %583 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %582, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %583)
  %584 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 3808, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 %584)
  %585 = load i16, i16* @g_1768, align 2, !tbaa !10
  %586 = zext i16 %585 to i64
  %587 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %586, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %587)
  %588 = load i64, i64* @g_1770, align 8, !tbaa !7
  %589 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %588, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 %589)
  %590 = load volatile i64, i64* @g_1833, align 8, !tbaa !7
  %591 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %590, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 %591)
  %592 = load i64, i64* @g_1834, align 8, !tbaa !7
  %593 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %592, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 %593)
  %594 = load volatile i64, i64* @g_1835, align 8, !tbaa !7
  %595 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %594, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 %595)
  %596 = load volatile i32, i32* @g_1836, align 4, !tbaa !1
  %597 = sext i32 %596 to i64
  %598 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %597, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 %598)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %599

; <label>:599                                     ; preds = %615, %574
  %600 = load i32, i32* %i, align 4, !tbaa !1
  %601 = icmp slt i32 %600, 8
  br i1 %601, label %602, label %618

; <label>:602                                     ; preds = %599
  %603 = load i32, i32* %i, align 4, !tbaa !1
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds [8 x i32], [8 x i32]* @g_1838, i32 0, i64 %604
  %606 = load i32, i32* %605, align 4, !tbaa !1
  %607 = zext i32 %606 to i64
  %608 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %607, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 %608)
  %609 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %614

; <label>:611                                     ; preds = %602
  %612 = load i32, i32* %i, align 4, !tbaa !1
  %613 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %612)
  br label %614

; <label>:614                                     ; preds = %611, %602
  br label %615

; <label>:615                                     ; preds = %614
  %616 = load i32, i32* %i, align 4, !tbaa !1
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* %i, align 4, !tbaa !1
  br label %599

; <label>:618                                     ; preds = %599
  %619 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %620 = zext i32 %619 to i64
  %621 = xor i64 %620, 4294967295
  %622 = trunc i64 %621 to i32
  %623 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %622, i32 %623)
  %624 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %624) #1
  %625 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %625) #1
  %626 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %626) #1
  %627 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %627) #1
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
  %1 = alloca %union.U0, align 4
  %l_9 = alloca i8, align 1
  %l_1766 = alloca i64*, align 8
  %l_1767 = alloca [1 x i8*], align 8
  %l_1769 = alloca i64*, align 8
  %l_1771 = alloca i32, align 4
  %l_1774 = alloca i32*, align 8
  %l_1775 = alloca i32*, align 8
  %l_1789 = alloca [5 x [7 x %union.U0]], align 16
  %l_1829 = alloca i32, align 4
  %l_1830 = alloca i8, align 1
  %l_1831 = alloca i8, align 1
  %l_1832 = alloca i32, align 4
  %l_1837 = alloca i32, align 4
  %l_1872 = alloca i16**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_1817 = alloca i32*, align 8
  %l_1818 = alloca i32*, align 8
  %l_1819 = alloca i32*, align 8
  %l_1820 = alloca i32*, align 8
  %l_1821 = alloca i32*, align 8
  %l_1822 = alloca i32*, align 8
  %l_1823 = alloca i32*, align 8
  %l_1824 = alloca i32*, align 8
  %l_1825 = alloca i32*, align 8
  %l_1826 = alloca i32*, align 8
  %l_1827 = alloca [2 x i32*], align 16
  %l_1828 = alloca i64, align 8
  %i1 = alloca i32, align 4
  %l_1776 = alloca i8**, align 8
  %l_1786 = alloca [1 x i32], align 4
  %l_1796 = alloca i32, align 4
  %l_1800 = alloca i16**, align 8
  %l_1799 = alloca i16***, align 8
  %l_1816 = alloca [7 x [6 x %union.U0]], align 16
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %2 = alloca i32
  %l_1779 = alloca i64, align 8
  %l_1788 = alloca i32*, align 8
  %l_1780 = alloca i32, align 4
  %l_1787 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %l_1792 = alloca i16, align 2
  %l_1812 = alloca [6 x i32], align 16
  %i7 = alloca i32, align 4
  %l_1813 = alloca [8 x [6 x i16]], align 16
  %i8 = alloca i32, align 4
  %j9 = alloca i32, align 4
  %l_1794 = alloca i32****, align 8
  %l_1795 = alloca i16*, align 8
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %l_1804 = alloca i32*, align 8
  %l_1805 = alloca i32*, align 8
  %l_1806 = alloca i32*, align 8
  %l_1807 = alloca i32*, align 8
  %l_1808 = alloca i32*, align 8
  %l_1809 = alloca i32*, align 8
  %l_1810 = alloca i32*, align 8
  %l_1811 = alloca [8 x i32*], align 16
  %i12 = alloca i32, align 4
  %l_1866 = alloca i8, align 1
  %l_1869 = alloca i16*, align 8
  %l_1870 = alloca i16*, align 8
  %l_1871 = alloca i32*, align 8
  %l_1873 = alloca i16**, align 8
  %l_1874 = alloca [5 x [2 x i16***]], align 16
  %i15 = alloca i32, align 4
  %j16 = alloca i32, align 4
  call void @llvm.lifetime.start(i64 1, i8* %l_9) #1
  store i8 -4, i8* %l_9, align 1, !tbaa !9
  %3 = bitcast i64** %l_1766 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64* null, i64** %l_1766, align 8, !tbaa !5
  %4 = bitcast [1 x i8*]* %l_1767 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64** %l_1769 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64* @g_1770, i64** %l_1769, align 8, !tbaa !5
  %6 = bitcast i32* %l_1771 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 1, i32* %l_1771, align 4, !tbaa !1
  %7 = bitcast i32** %l_1774 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* @g_122, i32** %l_1774, align 8, !tbaa !5
  %8 = bitcast i32** %l_1775 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_40, i32** %l_1775, align 8, !tbaa !5
  %9 = bitcast [5 x [7 x %union.U0]]* %l_1789 to i8*
  call void @llvm.lifetime.start(i64 140, i8* %9) #1
  %10 = bitcast [5 x [7 x %union.U0]]* %l_1789 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([5 x [7 x %union.U0]]* @func_1.l_1789 to i8*), i64 140, i32 16, i1 false)
  %11 = bitcast i32* %l_1829 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 202456102, i32* %l_1829, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1830) #1
  store i8 -40, i8* %l_1830, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %l_1831) #1
  store i8 -42, i8* %l_1831, align 1, !tbaa !9
  %12 = bitcast i32* %l_1832 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -1022038347, i32* %l_1832, align 4, !tbaa !1
  %13 = bitcast i32* %l_1837 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 -1, i32* %l_1837, align 4, !tbaa !1
  %14 = bitcast i16*** %l_1872 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i16** @g_141, i16*** %l_1872, align 8, !tbaa !5
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:17                                      ; preds = %24, %0
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %27

; <label>:20                                      ; preds = %17
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1 x i8*], [1 x i8*]* %l_1767, i32 0, i64 %22
  store i8* %l_9, i8** %23, align 8, !tbaa !5
  br label %24

; <label>:24                                      ; preds = %20
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:27                                      ; preds = %17
  %28 = load i8, i8* %l_9, align 1, !tbaa !9
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %115

; <label>:31                                      ; preds = %27
  %32 = call i32 @func_13(i32 1)
  %33 = call i32 @safe_unary_minus_func_uint32_t_u(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = load i8, i8* %l_9, align 1, !tbaa !9
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* %l_9, align 1, !tbaa !9
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %72, label %40

; <label>:40                                      ; preds = %31
  %41 = load i32, i32* @g_1516, align 4, !tbaa !1
  %42 = zext i32 %41 to i64
  %43 = load i8, i8* %l_9, align 1, !tbaa !9
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* %l_9, align 1, !tbaa !9
  %46 = sext i8 %45 to i32
  %47 = call i32 @safe_unary_minus_func_int32_t_s(i32 %46)
  %48 = load i8, i8* %l_9, align 1, !tbaa !9
  %49 = sext i8 %48 to i32
  %50 = icmp sle i32 %47, %49
  %51 = zext i1 %50 to i32
  %52 = load i8, i8* %l_9, align 1, !tbaa !9
  %53 = sext i8 %52 to i32
  %54 = or i32 %51, %53
  %55 = load i8, i8* %l_9, align 1, !tbaa !9
  %56 = sext i8 %55 to i32
  %57 = icmp sge i32 %54, %56
  %58 = zext i1 %57 to i32
  %59 = load i8, i8* getelementptr inbounds ([10 x [6 x [4 x i8]]], [10 x [6 x [4 x i8]]]* @g_978, i32 0, i64 7, i64 3, i64 2), align 1, !tbaa !9
  %60 = zext i8 %59 to i32
  %61 = or i32 %58, %60
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 1, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @safe_sub_func_uint32_t_u_u(i32 %44, i32 %64)
  %66 = zext i32 %65 to i64
  %67 = call i64 @safe_div_func_int64_t_s_s(i64 %66, i64 3)
  %68 = and i64 %42, %67
  %69 = load i64*, i64** %l_1766, align 8, !tbaa !5
  %70 = load i64*, i64** @g_1307, align 8, !tbaa !5
  %71 = icmp ne i64* %69, %70
  br label %72

; <label>:72                                      ; preds = %40, %31
  %73 = phi i1 [ true, %31 ], [ %71, %40 ]
  %74 = zext i1 %73 to i32
  %75 = trunc i32 %74 to i16
  %76 = load i8, i8* %l_9, align 1, !tbaa !9
  %77 = sext i8 %76 to i16
  %78 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %75, i16 signext %77)
  %79 = sext i16 %78 to i64
  %80 = icmp ne i64 %79, -2
  %81 = zext i1 %80 to i32
  %82 = xor i32 %36, %81
  %83 = sext i32 %82 to i64
  %84 = load i8, i8* %l_9, align 1, !tbaa !9
  %85 = sext i8 %84 to i64
  %86 = call i64 @safe_add_func_int64_t_s_s(i64 %83, i64 %85)
  %87 = trunc i64 %86 to i16
  store i16 %87, i16* @g_1768, align 2, !tbaa !10
  %88 = trunc i16 %87 to i8
  %89 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %88, i8 signext -4)
  %90 = load i8, i8* %l_9, align 1, !tbaa !9
  %91 = sext i8 %90 to i32
  %92 = load i8, i8* %l_9, align 1, !tbaa !9
  %93 = sext i8 %92 to i32
  %94 = and i32 %91, %93
  %95 = sext i32 %94 to i64
  %96 = load i64*, i64** %l_1769, align 8, !tbaa !5
  store i64 %95, i64* %96, align 8, !tbaa !7
  %97 = trunc i64 %95 to i32
  store i32 %97, i32* %l_1771, align 4, !tbaa !1
  %98 = load i8, i8* %l_9, align 1, !tbaa !9
  %99 = sext i8 %98 to i32
  %100 = or i32 %97, %99
  %101 = trunc i32 %100 to i8
  %102 = load i8, i8* getelementptr inbounds ([10 x [6 x [4 x i8]]], [10 x [6 x [4 x i8]]]* @g_978, i32 0, i64 7, i64 3, i64 2), align 1, !tbaa !9
  %103 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %101, i8 signext %102)
  %104 = sext i8 %103 to i32
  %105 = load i8, i8* %l_9, align 1, !tbaa !9
  %106 = sext i8 %105 to i32
  %107 = xor i32 %104, %106
  %108 = trunc i32 %107 to i16
  %109 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @g_1071, i32 0, i64 7), align 4, !tbaa !1
  %110 = trunc i32 %109 to i16
  %111 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %108, i16 signext %110)
  %112 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %34, i8 zeroext 1)
  %113 = zext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br label %115

; <label>:115                                     ; preds = %72, %27
  %116 = phi i1 [ false, %27 ], [ %114, %72 ]
  %117 = zext i1 %116 to i32
  %118 = load i16, i16* @g_1203, align 2, !tbaa !10
  %119 = sext i16 %118 to i32
  %120 = load i8, i8* %l_9, align 1, !tbaa !9
  %121 = sext i8 %120 to i64
  %122 = load %union.U0**, %union.U0*** @g_126, align 8, !tbaa !5
  %123 = load %union.U0*, %union.U0** %122, align 8, !tbaa !5
  %124 = getelementptr %union.U0, %union.U0* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call zeroext i16 @func_4(i32 %117, i32 %119, i64 %121, i32 %125)
  %127 = zext i16 %126 to i32
  %128 = load i8, i8* %l_9, align 1, !tbaa !9
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %127, %129
  %131 = zext i1 %130 to i32
  %132 = load i32*, i32** %l_1774, align 8, !tbaa !5
  store i32 %131, i32* %132, align 4, !tbaa !1
  %133 = load i32*, i32** %l_1775, align 8, !tbaa !5
  store i32 %131, i32* %133, align 4, !tbaa !1
  %134 = call i32 @safe_add_func_int32_t_s_s(i32 %131, i32 4011)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

; <label>:136                                     ; preds = %115
  %137 = load i32*, i32** %l_1774, align 8, !tbaa !5
  %138 = load i32, i32* %137, align 4, !tbaa !1
  %139 = icmp ne i32 %138, 0
  br label %140

; <label>:140                                     ; preds = %136, %115
  %141 = phi i1 [ false, %115 ], [ %139, %136 ]
  %142 = zext i1 %141 to i32
  %143 = load i32*, i32** @g_1327, align 8, !tbaa !5
  %144 = load i32, i32* %143, align 4, !tbaa !1
  %145 = icmp ne i32 %142, %144
  br i1 %145, label %146, label %147

; <label>:146                                     ; preds = %140
  br label %147

; <label>:147                                     ; preds = %146, %140
  %148 = phi i1 [ false, %140 ], [ true, %146 ]
  %149 = zext i1 %148 to i32
  br i1 true, label %150, label %487

; <label>:150                                     ; preds = %147
  %151 = bitcast i32** %l_1817 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %151) #1
  store i32* %l_1771, i32** %l_1817, align 8, !tbaa !5
  %152 = bitcast i32** %l_1818 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %152) #1
  store i32* @g_40, i32** %l_1818, align 8, !tbaa !5
  %153 = bitcast i32** %l_1819 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #1
  store i32* @g_98, i32** %l_1819, align 8, !tbaa !5
  %154 = bitcast i32** %l_1820 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %154) #1
  store i32* null, i32** %l_1820, align 8, !tbaa !5
  %155 = bitcast i32** %l_1821 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %155) #1
  store i32* @g_124, i32** %l_1821, align 8, !tbaa !5
  %156 = bitcast i32** %l_1822 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %156) #1
  store i32* @g_98, i32** %l_1822, align 8, !tbaa !5
  %157 = bitcast i32** %l_1823 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #1
  store i32* @g_98, i32** %l_1823, align 8, !tbaa !5
  %158 = bitcast i32** %l_1824 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %158) #1
  store i32* null, i32** %l_1824, align 8, !tbaa !5
  %159 = bitcast i32** %l_1825 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %159) #1
  store i32* @g_40, i32** %l_1825, align 8, !tbaa !5
  %160 = bitcast i32** %l_1826 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %160) #1
  store i32* %l_1771, i32** %l_1826, align 8, !tbaa !5
  %161 = bitcast [2 x i32*]* %l_1827 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %161) #1
  %162 = bitcast i64* %l_1828 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %162) #1
  store i64 0, i64* %l_1828, align 8, !tbaa !7
  %163 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %163) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %164

; <label>:164                                     ; preds = %171, %150
  %165 = load i32, i32* %i1, align 4, !tbaa !1
  %166 = icmp slt i32 %165, 2
  br i1 %166, label %167, label %174

; <label>:167                                     ; preds = %164
  %168 = load i32, i32* %i1, align 4, !tbaa !1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_1827, i32 0, i64 %169
  store i32* @g_122, i32** %170, align 8, !tbaa !5
  br label %171

; <label>:171                                     ; preds = %167
  %172 = load i32, i32* %i1, align 4, !tbaa !1
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %i1, align 4, !tbaa !1
  br label %164

; <label>:174                                     ; preds = %164
  store i16 0, i16* @g_1722, align 2, !tbaa !10
  br label %175

; <label>:175                                     ; preds = %459, %174
  %176 = load i16, i16* @g_1722, align 2, !tbaa !10
  %177 = sext i16 %176 to i32
  %178 = icmp sle i32 %177, 3
  br i1 %178, label %179, label %464

; <label>:179                                     ; preds = %175
  %180 = bitcast i8*** %l_1776 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %180) #1
  store i8** @g_617, i8*** %l_1776, align 8, !tbaa !5
  %181 = bitcast [1 x i32]* %l_1786 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #1
  %182 = bitcast i32* %l_1796 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %182) #1
  store i32 -10, i32* %l_1796, align 4, !tbaa !1
  %183 = bitcast i16*** %l_1800 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %183) #1
  store i16** @g_141, i16*** %l_1800, align 8, !tbaa !5
  %184 = bitcast i16**** %l_1799 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %184) #1
  store i16*** %l_1800, i16**** %l_1799, align 8, !tbaa !5
  %185 = bitcast [7 x [6 x %union.U0]]* %l_1816 to i8*
  call void @llvm.lifetime.start(i64 168, i8* %185) #1
  %186 = bitcast [7 x [6 x %union.U0]]* %l_1816 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %186, i8* bitcast ([7 x [6 x %union.U0]]* @func_1.l_1816 to i8*), i64 168, i32 16, i1 false)
  %187 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %187) #1
  %188 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %188) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %189

; <label>:189                                     ; preds = %196, %179
  %190 = load i32, i32* %i2, align 4, !tbaa !1
  %191 = icmp slt i32 %190, 1
  br i1 %191, label %192, label %199

; <label>:192                                     ; preds = %189
  %193 = load i32, i32* %i2, align 4, !tbaa !1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1786, i32 0, i64 %194
  store i32 1323204144, i32* %195, align 4, !tbaa !1
  br label %196

; <label>:196                                     ; preds = %192
  %197 = load i32, i32* %i2, align 4, !tbaa !1
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %i2, align 4, !tbaa !1
  br label %189

; <label>:199                                     ; preds = %189
  store i32 3, i32* @g_1685, align 4, !tbaa !1
  br label %200

; <label>:200                                     ; preds = %312, %199
  %201 = load i32, i32* @g_1685, align 4, !tbaa !1
  %202 = icmp sge i32 %201, 0
  br i1 %202, label %203, label %315

; <label>:203                                     ; preds = %200
  store i16 0, i16* @g_172, align 2, !tbaa !10
  br label %204

; <label>:204                                     ; preds = %213, %203
  %205 = load i16, i16* @g_172, align 2, !tbaa !10
  %206 = zext i16 %205 to i32
  %207 = icmp sle i32 %206, 7
  br i1 %207, label %208, label %218

; <label>:208                                     ; preds = %204
  %209 = load volatile %union.U0**, %union.U0*** @g_18, align 8, !tbaa !5
  %210 = load volatile %union.U0*, %union.U0** %209, align 8, !tbaa !5
  %211 = bitcast %union.U0* %1 to i8*
  %212 = bitcast %union.U0* %210 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %211, i8* %212, i64 4, i32 4, i1 true), !tbaa.struct !12
  store i32 1, i32* %2
  br label %449
                                                  ; No predecessors!
  %214 = load i16, i16* @g_172, align 2, !tbaa !10
  %215 = zext i16 %214 to i32
  %216 = add nsw i32 %215, 1
  %217 = trunc i32 %216 to i16
  store i16 %217, i16* @g_172, align 2, !tbaa !10
  br label %204

; <label>:218                                     ; preds = %204
  store i16 0, i16* @g_142, align 2, !tbaa !10
  br label %219

; <label>:219                                     ; preds = %226, %218
  %220 = load i16, i16* @g_142, align 2, !tbaa !10
  %221 = zext i16 %220 to i32
  %222 = icmp sle i32 %221, 7
  br i1 %222, label %223, label %231

; <label>:223                                     ; preds = %219
  store i8** null, i8*** %l_1776, align 8, !tbaa !5
  %224 = load i8***, i8**** @g_615, align 8, !tbaa !5
  store i8** null, i8*** %224, align 8, !tbaa !5
  %225 = load volatile i8***, i8**** @g_1777, align 8, !tbaa !5
  store i8** null, i8*** %225, align 8, !tbaa !5
  br label %226

; <label>:226                                     ; preds = %223
  %227 = load i16, i16* @g_142, align 2, !tbaa !10
  %228 = zext i16 %227 to i32
  %229 = add nsw i32 %228, 1
  %230 = trunc i32 %229 to i16
  store i16 %230, i16* @g_142, align 2, !tbaa !10
  br label %219

; <label>:231                                     ; preds = %219
  store i32 1, i32* @g_65, align 4, !tbaa !1
  br label %232

; <label>:232                                     ; preds = %308, %231
  %233 = load i32, i32* @g_65, align 4, !tbaa !1
  %234 = icmp ule i32 %233, 7
  br i1 %234, label %235, label %311

; <label>:235                                     ; preds = %232
  %236 = bitcast i64* %l_1779 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %236) #1
  store i64 -8006564994473014158, i64* %l_1779, align 8, !tbaa !7
  %237 = bitcast i32** %l_1788 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %237) #1
  store i32* @g_98, i32** %l_1788, align 8, !tbaa !5
  store i64 7, i64* %l_1779, align 8, !tbaa !7
  store i16 1, i16* @g_1203, align 2, !tbaa !10
  br label %238

; <label>:238                                     ; preds = %286, %235
  %239 = load i16, i16* @g_1203, align 2, !tbaa !10
  %240 = sext i16 %239 to i32
  %241 = icmp sle i32 %240, 7
  br i1 %241, label %242, label %291

; <label>:242                                     ; preds = %238
  %243 = bitcast i32* %l_1780 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %243) #1
  store i32 -259116213, i32* %l_1780, align 4, !tbaa !1
  %244 = bitcast i32* %l_1787 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %244) #1
  store i32 1390664110, i32* %l_1787, align 4, !tbaa !1
  %245 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %245) #1
  %246 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %246) #1
  %247 = load i32, i32* @g_65, align 4, !tbaa !1
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds [8 x i64], [8 x i64]* @g_1338, i32 0, i64 %248
  %250 = load volatile i64, i64* %249, align 8, !tbaa !7
  %251 = load i32, i32* %l_1780, align 4, !tbaa !1
  %252 = load i8*, i8** @g_617, align 8, !tbaa !5
  %253 = load i8, i8* %252, align 1, !tbaa !9
  %254 = add i8 %253, 1
  store i8 %254, i8* %252, align 1, !tbaa !9
  %255 = zext i8 %254 to i32
  %256 = xor i32 %255, -1
  %257 = sext i32 %256 to i64
  %258 = icmp ult i64 %250, %257
  %259 = zext i1 %258 to i32
  %260 = load i32*, i32** %l_1774, align 8, !tbaa !5
  %261 = load i32, i32* %260, align 4, !tbaa !1
  %262 = xor i32 %261, %259
  store i32 %262, i32* %260, align 4, !tbaa !1
  %263 = load volatile i32*, i32** @g_1773, align 8, !tbaa !5
  %264 = load i32, i32* %263, align 4, !tbaa !1
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

; <label>:266                                     ; preds = %242
  store i32 26, i32* %2
  br label %280

; <label>:267                                     ; preds = %242
  %268 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1786, i32 0, i64 0
  %269 = load i32, i32* %268, align 4, !tbaa !1
  %270 = trunc i32 %269 to i8
  %271 = load i32, i32* %l_1787, align 4, !tbaa !1
  %272 = trunc i32 %271 to i8
  %273 = load i8*, i8** @g_617, align 8, !tbaa !5
  store i8 %272, i8* %273, align 1, !tbaa !9
  %274 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %270, i8 zeroext %272)
  %275 = zext i8 %274 to i32
  %276 = load i32*, i32** %l_1775, align 8, !tbaa !5
  store i32 %275, i32* %276, align 4, !tbaa !1
  %277 = load i32*, i32** %l_1788, align 8, !tbaa !5
  %278 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %279 = load i32**, i32*** %278, align 8, !tbaa !5
  store i32* %277, i32** %279, align 8, !tbaa !5
  store i32 0, i32* %2
  br label %280

; <label>:280                                     ; preds = %267, %266
  %281 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #1
  %282 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %283 = bitcast i32* %l_1787 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #1
  %284 = bitcast i32* %l_1780 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %699 [
    i32 0, label %285
    i32 26, label %291
  ]

; <label>:285                                     ; preds = %280
  br label %286

; <label>:286                                     ; preds = %285
  %287 = load i16, i16* @g_1203, align 2, !tbaa !10
  %288 = sext i16 %287 to i32
  %289 = add nsw i32 %288, 1
  %290 = trunc i32 %289 to i16
  store i16 %290, i16* @g_1203, align 2, !tbaa !10
  br label %238

; <label>:291                                     ; preds = %280, %238
  store i64 0, i64* @g_174, align 8, !tbaa !7
  br label %292

; <label>:292                                     ; preds = %300, %291
  %293 = load i64, i64* @g_174, align 8, !tbaa !7
  %294 = icmp sle i64 %293, 5
  br i1 %294, label %295, label %303

; <label>:295                                     ; preds = %292
  %296 = getelementptr inbounds [5 x [7 x %union.U0]], [5 x [7 x %union.U0]]* %l_1789, i32 0, i64 4
  %297 = getelementptr inbounds [7 x %union.U0], [7 x %union.U0]* %296, i32 0, i64 1
  %298 = bitcast %union.U0* %1 to i8*
  %299 = bitcast %union.U0* %297 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %298, i8* %299, i64 4, i32 4, i1 false), !tbaa.struct !12
  store i32 1, i32* %2
  br label %304
                                                  ; No predecessors!
  %301 = load i64, i64* @g_174, align 8, !tbaa !7
  %302 = add nsw i64 %301, 1
  store i64 %302, i64* @g_174, align 8, !tbaa !7
  br label %292

; <label>:303                                     ; preds = %292
  store i32 0, i32* %2
  br label %304

; <label>:304                                     ; preds = %303, %295
  %305 = bitcast i32** %l_1788 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #1
  %306 = bitcast i64* %l_1779 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  %cleanup.dest.6 = load i32, i32* %2
  switch i32 %cleanup.dest.6, label %449 [
    i32 0, label %307
  ]

; <label>:307                                     ; preds = %304
  br label %308

; <label>:308                                     ; preds = %307
  %309 = load i32, i32* @g_65, align 4, !tbaa !1
  %310 = add i32 %309, 1
  store i32 %310, i32* @g_65, align 4, !tbaa !1
  br label %232

; <label>:311                                     ; preds = %232
  br label %312

; <label>:312                                     ; preds = %311
  %313 = load i32, i32* @g_1685, align 4, !tbaa !1
  %314 = sub nsw i32 %313, 1
  store i32 %314, i32* @g_1685, align 4, !tbaa !1
  br label %200

; <label>:315                                     ; preds = %200
  %316 = load i16, i16* @g_1722, align 2, !tbaa !10
  %317 = sext i16 %316 to i32
  %318 = add nsw i32 %317, 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [8 x i64], [8 x i64]* @g_1338, i32 0, i64 %319
  %321 = load volatile i64, i64* %320, align 8, !tbaa !7
  %322 = trunc i64 %321 to i32
  %323 = load i32*, i32** %l_1775, align 8, !tbaa !5
  store i32 %322, i32* %323, align 4, !tbaa !1
  %324 = load i32*, i32** %l_1775, align 8, !tbaa !5
  store i32 -3, i32* %324, align 4, !tbaa !1
  store i8 0, i8* @g_120, align 1, !tbaa !9
  br label %325

; <label>:325                                     ; preds = %443, %315
  %326 = load i8, i8* @g_120, align 1, !tbaa !9
  %327 = zext i8 %326 to i32
  %328 = icmp sle i32 %327, 7
  br i1 %328, label %329, label %448

; <label>:329                                     ; preds = %325
  %330 = bitcast i16* %l_1792 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %330) #1
  store i16 -3, i16* %l_1792, align 2, !tbaa !10
  %331 = bitcast [6 x i32]* %l_1812 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %331) #1
  %332 = bitcast [6 x i32]* %l_1812 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %332, i8* bitcast ([6 x i32]* @func_1.l_1812 to i8*), i64 24, i32 16, i1 false)
  %333 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %333) #1
  store i32 7, i32* @g_461, align 4, !tbaa !1
  br label %334

; <label>:334                                     ; preds = %432, %329
  %335 = load i32, i32* @g_461, align 4, !tbaa !1
  %336 = icmp sge i32 %335, 0
  br i1 %336, label %337, label %435

; <label>:337                                     ; preds = %334
  %338 = bitcast [8 x [6 x i16]]* %l_1813 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %338) #1
  %339 = bitcast [8 x [6 x i16]]* %l_1813 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %339, i8* bitcast ([8 x [6 x i16]]* @func_1.l_1813 to i8*), i64 96, i32 16, i1 false)
  %340 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %340) #1
  %341 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %341) #1
  store i8 7, i8* %l_9, align 1, !tbaa !9
  br label %342

; <label>:342                                     ; preds = %392, %337
  %343 = load i8, i8* %l_9, align 1, !tbaa !9
  %344 = sext i8 %343 to i32
  %345 = icmp sge i32 %344, 0
  br i1 %345, label %346, label %397

; <label>:346                                     ; preds = %342
  %347 = bitcast i32***** %l_1794 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %347) #1
  store i32**** null, i32***** %l_1794, align 8, !tbaa !5
  %348 = bitcast i16** %l_1795 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %348) #1
  store i16* null, i16** %l_1795, align 8, !tbaa !5
  %349 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %349) #1
  %350 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %350) #1
  %351 = load i16, i16* %l_1792, align 2, !tbaa !10
  %352 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @func_1.l_1793, i32 0, i64 2), align 4, !tbaa !1
  %353 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1786, i32 0, i64 0
  %354 = load i32, i32* %353, align 4, !tbaa !1
  %355 = load i8**, i8*** @g_288, align 8, !tbaa !5
  %356 = load volatile i8*, i8** %355, align 8, !tbaa !5
  %357 = load volatile i8, i8* %356, align 1, !tbaa !9
  %358 = sext i8 %357 to i32
  %359 = load i32*, i32** @g_1327, align 8, !tbaa !5
  %360 = load i32, i32* %359, align 4, !tbaa !1
  %361 = load i32****, i32***** %l_1794, align 8, !tbaa !5
  %362 = icmp ne i32**** %361, @g_443
  %363 = zext i1 %362 to i32
  %364 = icmp eq i32 %358, %363
  %365 = zext i1 %364 to i32
  %366 = and i32 %354, %365
  %367 = icmp uge i32 %352, %366
  %368 = zext i1 %367 to i32
  %369 = sext i32 %368 to i64
  %370 = or i64 %369, 1
  %371 = load i32, i32* %l_1796, align 4, !tbaa !1
  %372 = sext i32 %371 to i64
  %373 = xor i64 %372, %370
  %374 = trunc i64 %373 to i32
  store i32 %374, i32* %l_1796, align 4, !tbaa !1
  %375 = load i16, i16* %l_1792, align 2, !tbaa !10
  %376 = trunc i16 %375 to i8
  %377 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @func_1.l_1793, i32 0, i64 2), align 4, !tbaa !1
  %378 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %376, i32 %377)
  %379 = zext i8 %378 to i32
  %380 = icmp slt i32 %374, %379
  %381 = zext i1 %380 to i32
  %382 = trunc i32 %381 to i8
  %383 = load i16, i16* %l_1792, align 2, !tbaa !10
  %384 = trunc i16 %383 to i8
  %385 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %382, i8 signext %384)
  %386 = sext i8 %385 to i32
  %387 = load i32*, i32** %l_1775, align 8, !tbaa !5
  store i32 %386, i32* %387, align 4, !tbaa !1
  %388 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %388) #1
  %389 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %389) #1
  %390 = bitcast i16** %l_1795 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %390) #1
  %391 = bitcast i32***** %l_1794 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %391) #1
  br label %392

; <label>:392                                     ; preds = %346
  %393 = load i8, i8* %l_9, align 1, !tbaa !9
  %394 = sext i8 %393 to i32
  %395 = sub nsw i32 %394, 1
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %l_9, align 1, !tbaa !9
  br label %342

; <label>:397                                     ; preds = %342
  %398 = bitcast i32** %l_1804 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %398) #1
  %399 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1786, i32 0, i64 0
  store i32* %399, i32** %l_1804, align 8, !tbaa !5
  %400 = bitcast i32** %l_1805 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %400) #1
  store i32* null, i32** %l_1805, align 8, !tbaa !5
  %401 = bitcast i32** %l_1806 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %401) #1
  store i32* null, i32** %l_1806, align 8, !tbaa !5
  %402 = bitcast i32** %l_1807 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %402) #1
  store i32* null, i32** %l_1807, align 8, !tbaa !5
  %403 = bitcast i32** %l_1808 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %403) #1
  store i32* %l_1771, i32** %l_1808, align 8, !tbaa !5
  %404 = bitcast i32** %l_1809 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %404) #1
  %405 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1786, i32 0, i64 0
  store i32* %405, i32** %l_1809, align 8, !tbaa !5
  %406 = bitcast i32** %l_1810 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %406) #1
  store i32* @g_98, i32** %l_1810, align 8, !tbaa !5
  %407 = bitcast [8 x i32*]* %l_1811 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %407) #1
  %408 = bitcast [8 x i32*]* %l_1811 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %408, i8* bitcast ([8 x i32*]* @func_1.l_1811 to i8*), i64 64, i32 16, i1 false)
  %409 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %409) #1
  %410 = load i16***, i16**** %l_1799, align 8, !tbaa !5
  %411 = load volatile i16****, i16***** @g_1801, align 8, !tbaa !5
  store i16*** %410, i16**** %411, align 8, !tbaa !5
  %412 = getelementptr inbounds [8 x [6 x i16]], [8 x [6 x i16]]* %l_1813, i32 0, i64 3
  %413 = getelementptr inbounds [6 x i16], [6 x i16]* %412, i32 0, i64 4
  %414 = load i16, i16* %413, align 2, !tbaa !10
  %415 = add i16 %414, -1
  store i16 %415, i16* %413, align 2, !tbaa !10
  %416 = getelementptr inbounds [7 x [6 x %union.U0]], [7 x [6 x %union.U0]]* %l_1816, i32 0, i64 5
  %417 = getelementptr inbounds [6 x %union.U0], [6 x %union.U0]* %416, i32 0, i64 0
  %418 = bitcast %union.U0* %1 to i8*
  %419 = bitcast %union.U0* %417 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %418, i8* %419, i64 4, i32 4, i1 false), !tbaa.struct !12
  store i32 1, i32* %2
  %420 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %420) #1
  %421 = bitcast [8 x i32*]* %l_1811 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %421) #1
  %422 = bitcast i32** %l_1810 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %422) #1
  %423 = bitcast i32** %l_1809 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %423) #1
  %424 = bitcast i32** %l_1808 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %424) #1
  %425 = bitcast i32** %l_1807 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %425) #1
  %426 = bitcast i32** %l_1806 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %426) #1
  %427 = bitcast i32** %l_1805 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %427) #1
  %428 = bitcast i32** %l_1804 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %428) #1
  %429 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %429) #1
  %430 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %430) #1
  %431 = bitcast [8 x [6 x i16]]* %l_1813 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %431) #1
  br label %439
                                                  ; No predecessors!
  %433 = load i32, i32* @g_461, align 4, !tbaa !1
  %434 = sub nsw i32 %433, 1
  store i32 %434, i32* @g_461, align 4, !tbaa !1
  br label %334

; <label>:435                                     ; preds = %334
  %436 = load volatile %union.U0*, %union.U0** @g_16, align 8, !tbaa !5
  %437 = bitcast %union.U0* %1 to i8*
  %438 = bitcast %union.U0* %436 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %437, i8* %438, i64 4, i32 4, i1 true), !tbaa.struct !12
  store i32 1, i32* %2
  br label %439

; <label>:439                                     ; preds = %435, %397
  %440 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %440) #1
  %441 = bitcast [6 x i32]* %l_1812 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %441) #1
  %442 = bitcast i16* %l_1792 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %442) #1
  br label %449
                                                  ; No predecessors!
  %444 = load i8, i8* @g_120, align 1, !tbaa !9
  %445 = zext i8 %444 to i32
  %446 = add nsw i32 %445, 1
  %447 = trunc i32 %446 to i8
  store i8 %447, i8* @g_120, align 1, !tbaa !9
  br label %325

; <label>:448                                     ; preds = %325
  store i32 0, i32* %2
  br label %449

; <label>:449                                     ; preds = %448, %439, %304, %208
  %450 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %450) #1
  %451 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %451) #1
  %452 = bitcast [7 x [6 x %union.U0]]* %l_1816 to i8*
  call void @llvm.lifetime.end(i64 168, i8* %452) #1
  %453 = bitcast i16**** %l_1799 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %453) #1
  %454 = bitcast i16*** %l_1800 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %454) #1
  %455 = bitcast i32* %l_1796 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %455) #1
  %456 = bitcast [1 x i32]* %l_1786 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %456) #1
  %457 = bitcast i8*** %l_1776 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %457) #1
  %cleanup.dest.13 = load i32, i32* %2
  switch i32 %cleanup.dest.13, label %472 [
    i32 0, label %458
  ]

; <label>:458                                     ; preds = %449
  br label %459

; <label>:459                                     ; preds = %458
  %460 = load i16, i16* @g_1722, align 2, !tbaa !10
  %461 = sext i16 %460 to i32
  %462 = add nsw i32 %461, 1
  %463 = trunc i32 %462 to i16
  store i16 %463, i16* @g_1722, align 2, !tbaa !10
  br label %175

; <label>:464                                     ; preds = %175
  %465 = load %union.U0**, %union.U0*** @g_676, align 8, !tbaa !5
  store %union.U0* null, %union.U0** %465, align 8, !tbaa !5
  %466 = load i32*, i32** %l_1774, align 8, !tbaa !5
  %467 = load i32, i32* %466, align 4, !tbaa !1
  %468 = load i32*, i32** %l_1774, align 8, !tbaa !5
  store i32 %467, i32* %468, align 4, !tbaa !1
  %469 = load i32*, i32** %l_1775, align 8, !tbaa !5
  store i32 %467, i32* %469, align 4, !tbaa !1
  %470 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_1838, i32 0, i64 1), align 4, !tbaa !1
  %471 = add i32 %470, 1
  store i32 %471, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_1838, i32 0, i64 1), align 4, !tbaa !1
  store i32 0, i32* %2
  br label %472

; <label>:472                                     ; preds = %464, %449
  %473 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %473) #1
  %474 = bitcast i64* %l_1828 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %474) #1
  %475 = bitcast [2 x i32*]* %l_1827 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %475) #1
  %476 = bitcast i32** %l_1826 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %476) #1
  %477 = bitcast i32** %l_1825 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %477) #1
  %478 = bitcast i32** %l_1824 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %478) #1
  %479 = bitcast i32** %l_1823 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %479) #1
  %480 = bitcast i32** %l_1822 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %480) #1
  %481 = bitcast i32** %l_1821 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %481) #1
  %482 = bitcast i32** %l_1820 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %482) #1
  %483 = bitcast i32** %l_1819 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %483) #1
  %484 = bitcast i32** %l_1818 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %484) #1
  %485 = bitcast i32** %l_1817 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %485) #1
  %cleanup.dest.14 = load i32, i32* %2
  switch i32 %cleanup.dest.14, label %683 [
    i32 0, label %486
  ]

; <label>:486                                     ; preds = %472
  br label %676

; <label>:487                                     ; preds = %147
  call void @llvm.lifetime.start(i64 1, i8* %l_1866) #1
  store i8 -2, i8* %l_1866, align 1, !tbaa !9
  %488 = bitcast i16** %l_1869 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %488) #1
  store i16* null, i16** %l_1869, align 8, !tbaa !5
  %489 = bitcast i16** %l_1870 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %489) #1
  store i16* null, i16** %l_1870, align 8, !tbaa !5
  %490 = bitcast i32** %l_1871 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %490) #1
  store i32* @g_124, i32** %l_1871, align 8, !tbaa !5
  %491 = bitcast i16*** %l_1873 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %491) #1
  store i16** @g_141, i16*** %l_1873, align 8, !tbaa !5
  %492 = bitcast [5 x [2 x i16***]]* %l_1874 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %492) #1
  %493 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %493) #1
  %494 = bitcast i32* %j16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %494) #1
  store i32 0, i32* %i15, align 4, !tbaa !1
  br label %495

; <label>:495                                     ; preds = %513, %487
  %496 = load i32, i32* %i15, align 4, !tbaa !1
  %497 = icmp slt i32 %496, 5
  br i1 %497, label %498, label %516

; <label>:498                                     ; preds = %495
  store i32 0, i32* %j16, align 4, !tbaa !1
  br label %499

; <label>:499                                     ; preds = %509, %498
  %500 = load i32, i32* %j16, align 4, !tbaa !1
  %501 = icmp slt i32 %500, 2
  br i1 %501, label %502, label %512

; <label>:502                                     ; preds = %499
  %503 = load i32, i32* %j16, align 4, !tbaa !1
  %504 = sext i32 %503 to i64
  %505 = load i32, i32* %i15, align 4, !tbaa !1
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [5 x [2 x i16***]], [5 x [2 x i16***]]* %l_1874, i32 0, i64 %506
  %508 = getelementptr inbounds [2 x i16***], [2 x i16***]* %507, i32 0, i64 %504
  store i16*** %l_1873, i16**** %508, align 8, !tbaa !5
  br label %509

; <label>:509                                     ; preds = %502
  %510 = load i32, i32* %j16, align 4, !tbaa !1
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %j16, align 4, !tbaa !1
  br label %499

; <label>:512                                     ; preds = %499
  br label %513

; <label>:513                                     ; preds = %512
  %514 = load i32, i32* %i15, align 4, !tbaa !1
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %i15, align 4, !tbaa !1
  br label %495

; <label>:516                                     ; preds = %495
  %517 = load i64*, i64** @g_1307, align 8, !tbaa !5
  %518 = load i64, i64* %517, align 8, !tbaa !7
  %519 = load i32*, i32** %l_1775, align 8, !tbaa !5
  %520 = load i32, i32* %519, align 4, !tbaa !1
  %521 = load i64*, i64** @g_1307, align 8, !tbaa !5
  %522 = load i64, i64* %521, align 8, !tbaa !7
  %523 = load i32*, i32** @g_1333, align 8, !tbaa !5
  %524 = load volatile i32, i32* %523, align 4, !tbaa !1
  %525 = call i32 @safe_div_func_uint32_t_u_u(i32 -1236494434, i32 %524)
  %526 = zext i32 %525 to i64
  %527 = and i64 %522, %526
  %528 = and i64 -1, %527
  %529 = load i8, i8* %l_1866, align 1, !tbaa !9
  %530 = zext i8 %529 to i16
  %531 = load i8, i8* %l_1866, align 1, !tbaa !9
  %532 = load i32*, i32** %l_1775, align 8, !tbaa !5
  %533 = load i32, i32* %532, align 4, !tbaa !1
  %534 = load i32*, i32** %l_1774, align 8, !tbaa !5
  store i32 %533, i32* %534, align 4, !tbaa !1
  %535 = load i8, i8* %l_1866, align 1, !tbaa !9
  %536 = zext i8 %535 to i32
  %537 = xor i32 %533, %536
  %538 = trunc i32 %537 to i16
  %539 = load i8, i8* %l_1866, align 1, !tbaa !9
  %540 = zext i8 %539 to i16
  %541 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %538, i16 zeroext %540)
  %542 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %530, i16 signext %541)
  %543 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %542, i16 signext -1)
  %544 = trunc i16 %543 to i8
  %545 = load i32*, i32** %l_1775, align 8, !tbaa !5
  %546 = load i32, i32* %545, align 4, !tbaa !1
  %547 = trunc i32 %546 to i8
  %548 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %544, i8 signext %547)
  %549 = sext i8 %548 to i64
  %550 = icmp eq i64 %528, %549
  %551 = zext i1 %550 to i32
  %552 = trunc i32 %551 to i16
  %553 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %552, i16 zeroext -9)
  %554 = icmp ne i16 %553, 0
  %555 = xor i1 %554, true
  %556 = zext i1 %555 to i32
  %557 = load i32*, i32** @g_1327, align 8, !tbaa !5
  %558 = load i32, i32* %557, align 4, !tbaa !1
  %559 = call i32 @safe_sub_func_int32_t_s_s(i32 %556, i32 %558)
  %560 = trunc i32 %559 to i8
  %561 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %560, i32 1)
  %562 = zext i8 %561 to i64
  %563 = icmp ugt i64 -6485008270676098068, %562
  %564 = zext i1 %563 to i32
  %565 = call i32 @safe_add_func_int32_t_s_s(i32 %520, i32 %564)
  %566 = load i16***, i16**** @g_1802, align 8, !tbaa !5
  %567 = load i16**, i16*** %566, align 8, !tbaa !5
  %568 = load i16*, i16** %567, align 8, !tbaa !5
  %569 = load i16, i16* %568, align 2, !tbaa !10
  %570 = zext i16 %569 to i32
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %573, label %572

; <label>:572                                     ; preds = %516
  br i1 true, label %573, label %577

; <label>:573                                     ; preds = %572, %516
  %574 = load i8, i8* %l_1866, align 1, !tbaa !9
  %575 = zext i8 %574 to i32
  %576 = icmp ne i32 %575, 0
  br label %577

; <label>:577                                     ; preds = %573, %572
  %578 = phi i1 [ false, %572 ], [ %576, %573 ]
  %579 = zext i1 %578 to i32
  %580 = sext i32 %579 to i64
  %581 = load i64*, i64** @g_1307, align 8, !tbaa !5
  %582 = load i64, i64* %581, align 8, !tbaa !7
  %583 = icmp slt i64 %580, %582
  %584 = zext i1 %583 to i32
  %585 = sext i32 %584 to i64
  %586 = or i64 %518, %585
  %587 = icmp sle i64 %586, 228
  %588 = zext i1 %587 to i32
  %589 = trunc i32 %588 to i8
  %590 = load i8, i8* %l_1866, align 1, !tbaa !9
  %591 = zext i8 %590 to i32
  %592 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %589, i32 %591)
  %593 = sext i8 %592 to i16
  store i16 %593, i16* @g_559, align 2, !tbaa !10
  %594 = load i64*, i64** @g_1543, align 8, !tbaa !5
  %595 = load i64, i64* %594, align 8, !tbaa !7
  %596 = icmp ugt i64 5354783003684062013, %595
  %597 = zext i1 %596 to i32
  %598 = trunc i32 %597 to i8
  %599 = load i8, i8* %l_1866, align 1, !tbaa !9
  %600 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %598, i8 zeroext %599)
  %601 = zext i8 %600 to i16
  %602 = load i32*, i32** %l_1775, align 8, !tbaa !5
  %603 = load i32, i32* %602, align 4, !tbaa !1
  %604 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %601, i32 %603)
  %605 = trunc i16 %604 to i8
  %606 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %605, i8 zeroext -1)
  %607 = load i32*, i32** %l_1871, align 8, !tbaa !5
  %608 = load i32**, i32*** @g_444, align 8, !tbaa !5
  store i32* %607, i32** %608, align 8, !tbaa !5
  %609 = load i32*, i32** @g_152, align 8, !tbaa !5
  store i32 -9, i32* %609, align 4, !tbaa !1
  %610 = load volatile i8*, i8** @g_289, align 8, !tbaa !5
  %611 = load volatile i8, i8* %610, align 1, !tbaa !9
  %612 = sext i8 %611 to i32
  %613 = load i16**, i16*** %l_1872, align 8, !tbaa !5
  %614 = load i16**, i16*** %l_1873, align 8, !tbaa !5
  store i16** %614, i16*** @g_1803, align 8, !tbaa !5
  store i16** %614, i16*** @g_1875, align 8, !tbaa !5
  %615 = icmp ne i16** %613, %614
  %616 = zext i1 %615 to i32
  %617 = sext i32 %616 to i64
  %618 = load i64*, i64** @g_1543, align 8, !tbaa !5
  %619 = load i64, i64* %618, align 8, !tbaa !7
  %620 = icmp ne i64 %617, %619
  %621 = zext i1 %620 to i32
  %622 = xor i32 %612, %621
  %623 = load i32*, i32** %l_1871, align 8, !tbaa !5
  %624 = load i32, i32* %623, align 4, !tbaa !1
  %625 = trunc i32 %624 to i8
  %626 = load i32*, i32** %l_1871, align 8, !tbaa !5
  %627 = load i32, i32* %626, align 4, !tbaa !1
  %628 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %629 = load i32**, i32*** %628, align 8, !tbaa !5
  %630 = load i32*, i32** %629, align 8, !tbaa !5
  %631 = load i32**, i32*** @g_444, align 8, !tbaa !5
  store i32* %630, i32** %631, align 8, !tbaa !5
  %632 = icmp ne i32* %630, @g_40
  %633 = zext i1 %632 to i32
  %634 = load volatile i8*, i8** @g_289, align 8, !tbaa !5
  %635 = load volatile i8, i8* %634, align 1, !tbaa !9
  %636 = sext i8 %635 to i64
  %637 = icmp uge i64 251, %636
  %638 = zext i1 %637 to i32
  %639 = load volatile i16****, i16***** @g_1801, align 8, !tbaa !5
  %640 = load i16***, i16**** %639, align 8, !tbaa !5
  %641 = load i16**, i16*** %640, align 8, !tbaa !5
  %642 = load i16***, i16**** @g_1802, align 8, !tbaa !5
  %643 = load i16**, i16*** %642, align 8, !tbaa !5
  %644 = icmp eq i16** %641, %643
  %645 = zext i1 %644 to i32
  %646 = xor i32 %645, -1
  %647 = sext i32 %646 to i64
  %648 = icmp ne i64 %647, -2
  %649 = zext i1 %648 to i32
  %650 = load i32*, i32** %l_1871, align 8, !tbaa !5
  %651 = load i32, i32* %650, align 4, !tbaa !1
  %652 = icmp eq i32 %649, %651
  %653 = zext i1 %652 to i32
  %654 = icmp sgt i32 %627, %653
  %655 = zext i1 %654 to i32
  %656 = sext i32 %655 to i64
  %657 = and i64 %656, 1
  %658 = trunc i64 %657 to i8
  %659 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %625, i8 zeroext %658)
  %660 = zext i8 %659 to i64
  %661 = xor i64 %660, 1034378638
  %662 = call i64 @safe_sub_func_int64_t_s_s(i64 %661, i64 -6744693856697288243)
  %663 = icmp ne i64 %662, 0
  br i1 %663, label %665, label %664

; <label>:664                                     ; preds = %577
  br label %665

; <label>:665                                     ; preds = %664, %577
  %666 = phi i1 [ true, %577 ], [ true, %664 ]
  %667 = zext i1 %666 to i32
  %668 = load i32*, i32** %l_1774, align 8, !tbaa !5
  store i32 %667, i32* %668, align 4, !tbaa !1
  %669 = bitcast i32* %j16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %669) #1
  %670 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %670) #1
  %671 = bitcast [5 x [2 x i16***]]* %l_1874 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %671) #1
  %672 = bitcast i16*** %l_1873 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %672) #1
  %673 = bitcast i32** %l_1871 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %673) #1
  %674 = bitcast i16** %l_1870 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %674) #1
  %675 = bitcast i16** %l_1869 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %675) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1866) #1
  br label %676

; <label>:676                                     ; preds = %665, %486
  %677 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %678 = load i32**, i32*** %677, align 8, !tbaa !5
  store i32* %l_1829, i32** %678, align 8, !tbaa !5
  %679 = load %union.U0**, %union.U0*** @g_126, align 8, !tbaa !5
  %680 = load %union.U0*, %union.U0** %679, align 8, !tbaa !5
  %681 = bitcast %union.U0* %1 to i8*
  %682 = bitcast %union.U0* %680 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %681, i8* %682, i64 4, i32 4, i1 false), !tbaa.struct !12
  store i32 1, i32* %2
  br label %683

; <label>:683                                     ; preds = %676, %472
  %684 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %684) #1
  %685 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %685) #1
  %686 = bitcast i16*** %l_1872 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %686) #1
  %687 = bitcast i32* %l_1837 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %687) #1
  %688 = bitcast i32* %l_1832 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %688) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1831) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1830) #1
  %689 = bitcast i32* %l_1829 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %689) #1
  %690 = bitcast [5 x [7 x %union.U0]]* %l_1789 to i8*
  call void @llvm.lifetime.end(i64 140, i8* %690) #1
  %691 = bitcast i32** %l_1775 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %691) #1
  %692 = bitcast i32** %l_1774 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %692) #1
  %693 = bitcast i32* %l_1771 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %693) #1
  %694 = bitcast i64** %l_1769 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %694) #1
  %695 = bitcast [1 x i8*]* %l_1767 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %695) #1
  %696 = bitcast i64** %l_1766 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %696) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_9) #1
  %697 = getelementptr %union.U0, %union.U0* %1, i32 0, i32 0
  %698 = load i32, i32* %697, align 4
  ret i32 %698

; <label>:699                                     ; preds = %280
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.73, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
define internal zeroext i16 @func_4(i32 %p_5, i32 %p_6, i64 %p_7, i32 %p_8.coerce) #0 {
  %p_8 = alloca %union.U0, align 4
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %l_1772 = alloca i16, align 2
  %4 = getelementptr %union.U0, %union.U0* %p_8, i32 0, i32 0
  store i32 %p_8.coerce, i32* %4, align 4
  store i32 %p_5, i32* %1, align 4, !tbaa !1
  store i32 %p_6, i32* %2, align 4, !tbaa !1
  store i64 %p_7, i64* %3, align 8, !tbaa !7
  %5 = bitcast i16* %l_1772 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  store i16 5, i16* %l_1772, align 2, !tbaa !10
  %6 = load i16, i16* %l_1772, align 2, !tbaa !10
  %7 = zext i16 %6 to i32
  %8 = load volatile i32*, i32** @g_1773, align 8, !tbaa !5
  %9 = load i32, i32* %8, align 4, !tbaa !1
  %10 = and i32 %9, %7
  store i32 %10, i32* %8, align 4, !tbaa !1
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = trunc i32 %11 to i16
  %13 = bitcast i16* %l_1772 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %13) #1
  ret i16 %12
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
define internal i32 @safe_unary_minus_func_uint32_t_u(i32 %ui) #0 {
  %1 = alloca i32, align 4
  store i32 %ui, i32* %1, align 4, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !1
  %3 = sub i32 0, %2
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @func_13(i32 %p_14) #0 {
  %1 = alloca i32, align 4
  %l_21 = alloca [9 x i64], align 16
  %l_26 = alloca [4 x [4 x i16*]], align 16
  %l_28 = alloca i32, align 4
  %l_29 = alloca i32, align 4
  %l_1185 = alloca %union.U0**, align 8
  %l_1745 = alloca i16*, align 8
  %l_1744 = alloca i16**, align 8
  %l_1747 = alloca i8*, align 8
  %l_1748 = alloca i8*, align 8
  %l_1749 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %p_14, i32* %1, align 4, !tbaa !1
  %2 = bitcast [9 x i64]* %l_21 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %2) #1
  %3 = bitcast [9 x i64]* %l_21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([9 x i64]* @func_13.l_21 to i8*), i64 72, i32 16, i1 false)
  %4 = bitcast [4 x [4 x i16*]]* %l_26 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  %5 = bitcast [4 x [4 x i16*]]* %l_26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([4 x [4 x i16*]]* @func_13.l_26 to i8*), i64 128, i32 16, i1 false)
  %6 = bitcast i32* %l_28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %l_28, align 4, !tbaa !1
  %7 = bitcast i32* %l_29 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -1, i32* %l_29, align 4, !tbaa !1
  %8 = bitcast %union.U0*** %l_1185 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %union.U0** @g_127, %union.U0*** %l_1185, align 8, !tbaa !5
  %9 = bitcast i16** %l_1745 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i16* @g_1746, i16** %l_1745, align 8, !tbaa !5
  %10 = bitcast i16*** %l_1744 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i16** %l_1745, i16*** %l_1744, align 8, !tbaa !5
  %11 = bitcast i8** %l_1747 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8* null, i8** %l_1747, align 8, !tbaa !5
  %12 = bitcast i8** %l_1748 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i8* @g_1018, i8** %l_1748, align 8, !tbaa !5
  %13 = bitcast i32* %l_1749 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %l_1749, align 4, !tbaa !1
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load volatile %union.U0*, %union.U0** @g_16, align 8, !tbaa !5
  %17 = load volatile %union.U0**, %union.U0*** @g_18, align 8, !tbaa !5
  store volatile %union.U0* %16, %union.U0** %17, align 8, !tbaa !5
  %18 = getelementptr inbounds [9 x i64], [9 x i64]* %l_21, i32 0, i64 2
  %19 = load i64, i64* %18, align 8, !tbaa !7
  %20 = add i64 %19, 1
  store i64 %20, i64* %18, align 8, !tbaa !7
  %21 = trunc i64 %20 to i8
  %22 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext -73, i32 5)
  %23 = sext i8 %22 to i32
  %24 = load i32, i32* %l_28, align 4, !tbaa !1
  %25 = xor i32 %24, %23
  store i32 %25, i32* %l_28, align 4, !tbaa !1
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, 30082
  %28 = load i32, i32* %1, align 4, !tbaa !1
  %29 = zext i32 %28 to i64
  %30 = icmp sgt i64 %27, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %l_29, align 4, !tbaa !1
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %1, align 4, !tbaa !1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %69, label %37

; <label>:37                                      ; preds = %0
  %38 = load i32, i32* %1, align 4, !tbaa !1
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds [4 x [4 x i16*]], [4 x [4 x i16*]]* %l_26, i32 0, i64 1
  %41 = getelementptr inbounds [4 x i16*], [4 x i16*]* %40, i32 0, i64 1
  %42 = load i16*, i16** %41, align 8, !tbaa !5
  %43 = call signext i16 @func_36(i16 zeroext %39, i16* %42)
  %44 = sext i16 %43 to i32
  %45 = load i32, i32* %1, align 4, !tbaa !1
  %46 = icmp ne i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = trunc i32 %47 to i8
  %49 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %48, i32 2)
  %50 = sext i8 %49 to i32
  %51 = load i32, i32* %l_29, align 4, !tbaa !1
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %56, label %53

; <label>:53                                      ; preds = %37
  %54 = load i32, i32* %l_28, align 4, !tbaa !1
  %55 = icmp ne i32 %54, 0
  br label %56

; <label>:56                                      ; preds = %53, %37
  %57 = phi i1 [ true, %37 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %1, align 4, !tbaa !1
  %60 = load i16, i16* @g_195, align 2, !tbaa !10
  %61 = zext i16 %60 to i32
  %62 = load %union.U0**, %union.U0*** %l_1185, align 8, !tbaa !5
  %63 = call i16* @func_30(i32 %59, i32 %61, %union.U0** %62)
  %64 = load i16**, i16*** %l_1744, align 8, !tbaa !5
  store i16* %63, i16** %64, align 8, !tbaa !5
  %65 = icmp ne i16* %63, null
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %1, align 4, !tbaa !1
  %68 = icmp ne i32 %67, 0
  br label %69

; <label>:69                                      ; preds = %56, %0
  %70 = phi i1 [ true, %0 ], [ %68, %56 ]
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %l_29, align 4, !tbaa !1
  %73 = xor i32 %71, %72
  %74 = load i32, i32* %l_29, align 4, !tbaa !1
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %1, align 4, !tbaa !1
  %78 = or i32 %76, %77
  %79 = trunc i32 %78 to i8
  %80 = load i8*, i8** %l_1748, align 8, !tbaa !5
  store i8 %79, i8* %80, align 1, !tbaa !9
  %81 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %21, i8 zeroext %79)
  %82 = zext i8 %81 to i32
  %83 = load i32, i32* %l_1749, align 4, !tbaa !1
  %84 = and i32 %83, %82
  store i32 %84, i32* %l_1749, align 4, !tbaa !1
  %85 = getelementptr inbounds [9 x i64], [9 x i64]* %l_21, i32 0, i64 2
  %86 = load i64, i64* %85, align 8, !tbaa !7
  %87 = trunc i64 %86 to i32
  %88 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %l_1749 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i8** %l_1748 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i8** %l_1747 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i16*** %l_1744 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i16** %l_1745 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast %union.U0*** %l_1185 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i32* %l_29 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %l_28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast [4 x [4 x i16*]]* %l_26 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %98) #1
  %99 = bitcast [9 x i64]* %l_21 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %99) #1
  ret i32 %87
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
define internal i16* @func_30(i32 %p_31, i32 %p_32, %union.U0** %p_33) #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.U0**, align 8
  %l_1191 = alloca i32*, align 8
  %l_1192 = alloca [4 x i32*], align 16
  %l_1197 = alloca i8*, align 8
  %l_1199 = alloca [8 x i16**], align 16
  %l_1200 = alloca i64*, align 8
  %l_1201 = alloca i32, align 4
  %l_1202 = alloca i32, align 4
  %l_1204 = alloca i64*, align 8
  %l_1205 = alloca i32*, align 8
  %l_1227 = alloca i8****, align 8
  %l_1235 = alloca i32*, align 8
  %l_1234 = alloca [3 x [3 x [8 x i32**]]], align 16
  %l_1249 = alloca i8, align 1
  %l_1255 = alloca [10 x [4 x i16*]], align 16
  %l_1266 = alloca i32, align 4
  %l_1288 = alloca [1 x [10 x [8 x i16]]], align 16
  %l_1296 = alloca [3 x [1 x [5 x i32]]], align 16
  %l_1311 = alloca i32, align 4
  %l_1430 = alloca i32*, align 8
  %l_1564 = alloca i64, align 8
  %l_1669 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1207 = alloca i32*, align 8
  %l_1220 = alloca i8*, align 8
  %l_1226 = alloca i32*, align 8
  %l_1243 = alloca i16*, align 8
  %l_1250 = alloca [7 x [7 x i16]], align 16
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %l_1253 = alloca i8***, align 8
  %l_1265 = alloca i32, align 4
  %l_1287 = alloca i32****, align 8
  %l_1289 = alloca i8, align 1
  %l_1295 = alloca i64, align 8
  %l_1254 = alloca i8***, align 8
  %l_1261 = alloca [5 x i32], align 16
  %l_1290 = alloca i32*, align 8
  %l_1291 = alloca i32*, align 8
  %l_1292 = alloca i32*, align 8
  %l_1293 = alloca i32*, align 8
  %l_1294 = alloca [5 x [2 x [7 x i32*]]], align 16
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k5 = alloca i32, align 4
  %5 = alloca i32
  %l_1256 = alloca i32*, align 8
  %l_1257 = alloca i32*, align 8
  %l_1258 = alloca i32*, align 8
  %l_1259 = alloca i32*, align 8
  %l_1260 = alloca i32*, align 8
  %l_1262 = alloca i32, align 4
  %l_1263 = alloca i32*, align 8
  %l_1264 = alloca [3 x i32*], align 16
  %i6 = alloca i32, align 4
  %l_1276 = alloca i16, align 2
  %l_1305 = alloca [2 x i32], align 4
  %l_1308 = alloca i64***, align 8
  %l_1310 = alloca i64**, align 8
  %l_1309 = alloca i64***, align 8
  %l_1335 = alloca [1 x i32], align 4
  %l_1434 = alloca i32, align 4
  %l_1450 = alloca %union.U0**, align 8
  %l_1494 = alloca i64*, align 8
  %l_1530 = alloca i32**, align 8
  %l_1532 = alloca i32, align 4
  %l_1550 = alloca i8****, align 8
  %l_1576 = alloca i8, align 1
  %l_1648 = alloca [6 x i64], align 16
  %l_1682 = alloca i32, align 4
  %l_1706 = alloca i32, align 4
  %l_1723 = alloca [8 x %union.U0****], align 16
  %i9 = alloca i32, align 4
  store i32 %p_31, i32* %2, align 4, !tbaa !1
  store i32 %p_32, i32* %3, align 4, !tbaa !1
  store %union.U0** %p_33, %union.U0*** %4, align 8, !tbaa !5
  %6 = bitcast i32** %l_1191 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @g_1071, i32 0, i64 7), i32** %l_1191, align 8, !tbaa !5
  %7 = bitcast [4 x i32*]* %l_1192 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast i8** %l_1197 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8* @g_57, i8** %l_1197, align 8, !tbaa !5
  %9 = bitcast [8 x i16**]* %l_1199 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %9) #1
  %10 = bitcast i64** %l_1200 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64* null, i64** %l_1200, align 8, !tbaa !5
  %11 = bitcast i32* %l_1201 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 33943300, i32* %l_1201, align 4, !tbaa !1
  %12 = bitcast i32* %l_1202 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -1, i32* %l_1202, align 4, !tbaa !1
  %13 = bitcast i64** %l_1204 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i64* @g_562, i64** %l_1204, align 8, !tbaa !5
  %14 = bitcast i32** %l_1205 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32* @g_461, i32** %l_1205, align 8, !tbaa !5
  %15 = bitcast i8***** %l_1227 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i8**** @g_615, i8***** %l_1227, align 8, !tbaa !5
  %16 = bitcast i32** %l_1235 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32* @g_122, i32** %l_1235, align 8, !tbaa !5
  %17 = bitcast [3 x [3 x [8 x i32**]]]* %l_1234 to i8*
  call void @llvm.lifetime.start(i64 576, i8* %17) #1
  %18 = getelementptr inbounds [3 x [3 x [8 x i32**]]], [3 x [3 x [8 x i32**]]]* %l_1234, i64 0, i64 0
  %19 = getelementptr inbounds [3 x [8 x i32**]], [3 x [8 x i32**]]* %18, i64 0, i64 0
  %20 = getelementptr inbounds [8 x i32**], [8 x i32**]* %19, i64 0, i64 0
  store i32** %l_1235, i32*** %20, !tbaa !5
  %21 = getelementptr inbounds i32**, i32*** %20, i64 1
  store i32** %l_1235, i32*** %21, !tbaa !5
  %22 = getelementptr inbounds i32**, i32*** %21, i64 1
  store i32** %l_1235, i32*** %22, !tbaa !5
  %23 = getelementptr inbounds i32**, i32*** %22, i64 1
  store i32** %l_1235, i32*** %23, !tbaa !5
  %24 = getelementptr inbounds i32**, i32*** %23, i64 1
  store i32** %l_1235, i32*** %24, !tbaa !5
  %25 = getelementptr inbounds i32**, i32*** %24, i64 1
  store i32** null, i32*** %25, !tbaa !5
  %26 = getelementptr inbounds i32**, i32*** %25, i64 1
  store i32** %l_1235, i32*** %26, !tbaa !5
  %27 = getelementptr inbounds i32**, i32*** %26, i64 1
  store i32** %l_1235, i32*** %27, !tbaa !5
  %28 = getelementptr inbounds [8 x i32**], [8 x i32**]* %19, i64 1
  %29 = getelementptr inbounds [8 x i32**], [8 x i32**]* %28, i64 0, i64 0
  store i32** %l_1235, i32*** %29, !tbaa !5
  %30 = getelementptr inbounds i32**, i32*** %29, i64 1
  store i32** %l_1235, i32*** %30, !tbaa !5
  %31 = getelementptr inbounds i32**, i32*** %30, i64 1
  store i32** %l_1235, i32*** %31, !tbaa !5
  %32 = getelementptr inbounds i32**, i32*** %31, i64 1
  store i32** %l_1235, i32*** %32, !tbaa !5
  %33 = getelementptr inbounds i32**, i32*** %32, i64 1
  store i32** null, i32*** %33, !tbaa !5
  %34 = getelementptr inbounds i32**, i32*** %33, i64 1
  store i32** null, i32*** %34, !tbaa !5
  %35 = getelementptr inbounds i32**, i32*** %34, i64 1
  store i32** %l_1235, i32*** %35, !tbaa !5
  %36 = getelementptr inbounds i32**, i32*** %35, i64 1
  store i32** %l_1235, i32*** %36, !tbaa !5
  %37 = getelementptr inbounds [8 x i32**], [8 x i32**]* %28, i64 1
  %38 = getelementptr inbounds [8 x i32**], [8 x i32**]* %37, i64 0, i64 0
  store i32** %l_1235, i32*** %38, !tbaa !5
  %39 = getelementptr inbounds i32**, i32*** %38, i64 1
  store i32** %l_1235, i32*** %39, !tbaa !5
  %40 = getelementptr inbounds i32**, i32*** %39, i64 1
  store i32** null, i32*** %40, !tbaa !5
  %41 = getelementptr inbounds i32**, i32*** %40, i64 1
  store i32** null, i32*** %41, !tbaa !5
  %42 = getelementptr inbounds i32**, i32*** %41, i64 1
  store i32** %l_1235, i32*** %42, !tbaa !5
  %43 = getelementptr inbounds i32**, i32*** %42, i64 1
  store i32** null, i32*** %43, !tbaa !5
  %44 = getelementptr inbounds i32**, i32*** %43, i64 1
  store i32** null, i32*** %44, !tbaa !5
  %45 = getelementptr inbounds i32**, i32*** %44, i64 1
  store i32** %l_1235, i32*** %45, !tbaa !5
  %46 = getelementptr inbounds [3 x [8 x i32**]], [3 x [8 x i32**]]* %18, i64 1
  %47 = getelementptr inbounds [3 x [8 x i32**]], [3 x [8 x i32**]]* %46, i64 0, i64 0
  %48 = getelementptr inbounds [8 x i32**], [8 x i32**]* %47, i64 0, i64 0
  store i32** %l_1235, i32*** %48, !tbaa !5
  %49 = getelementptr inbounds i32**, i32*** %48, i64 1
  store i32** %l_1235, i32*** %49, !tbaa !5
  %50 = getelementptr inbounds i32**, i32*** %49, i64 1
  store i32** %l_1235, i32*** %50, !tbaa !5
  %51 = getelementptr inbounds i32**, i32*** %50, i64 1
  store i32** null, i32*** %51, !tbaa !5
  %52 = getelementptr inbounds i32**, i32*** %51, i64 1
  store i32** null, i32*** %52, !tbaa !5
  %53 = getelementptr inbounds i32**, i32*** %52, i64 1
  store i32** %l_1235, i32*** %53, !tbaa !5
  %54 = getelementptr inbounds i32**, i32*** %53, i64 1
  store i32** %l_1235, i32*** %54, !tbaa !5
  %55 = getelementptr inbounds i32**, i32*** %54, i64 1
  store i32** %l_1235, i32*** %55, !tbaa !5
  %56 = getelementptr inbounds [8 x i32**], [8 x i32**]* %47, i64 1
  %57 = getelementptr inbounds [8 x i32**], [8 x i32**]* %56, i64 0, i64 0
  store i32** %l_1235, i32*** %57, !tbaa !5
  %58 = getelementptr inbounds i32**, i32*** %57, i64 1
  store i32** %l_1235, i32*** %58, !tbaa !5
  %59 = getelementptr inbounds i32**, i32*** %58, i64 1
  store i32** %l_1235, i32*** %59, !tbaa !5
  %60 = getelementptr inbounds i32**, i32*** %59, i64 1
  store i32** null, i32*** %60, !tbaa !5
  %61 = getelementptr inbounds i32**, i32*** %60, i64 1
  store i32** %l_1235, i32*** %61, !tbaa !5
  %62 = getelementptr inbounds i32**, i32*** %61, i64 1
  store i32** %l_1235, i32*** %62, !tbaa !5
  %63 = getelementptr inbounds i32**, i32*** %62, i64 1
  store i32** %l_1235, i32*** %63, !tbaa !5
  %64 = getelementptr inbounds i32**, i32*** %63, i64 1
  store i32** %l_1235, i32*** %64, !tbaa !5
  %65 = getelementptr inbounds [8 x i32**], [8 x i32**]* %56, i64 1
  %66 = getelementptr inbounds [8 x i32**], [8 x i32**]* %65, i64 0, i64 0
  store i32** %l_1235, i32*** %66, !tbaa !5
  %67 = getelementptr inbounds i32**, i32*** %66, i64 1
  store i32** null, i32*** %67, !tbaa !5
  %68 = getelementptr inbounds i32**, i32*** %67, i64 1
  store i32** %l_1235, i32*** %68, !tbaa !5
  %69 = getelementptr inbounds i32**, i32*** %68, i64 1
  store i32** %l_1235, i32*** %69, !tbaa !5
  %70 = getelementptr inbounds i32**, i32*** %69, i64 1
  store i32** null, i32*** %70, !tbaa !5
  %71 = getelementptr inbounds i32**, i32*** %70, i64 1
  store i32** %l_1235, i32*** %71, !tbaa !5
  %72 = getelementptr inbounds i32**, i32*** %71, i64 1
  store i32** null, i32*** %72, !tbaa !5
  %73 = getelementptr inbounds i32**, i32*** %72, i64 1
  store i32** %l_1235, i32*** %73, !tbaa !5
  %74 = getelementptr inbounds [3 x [8 x i32**]], [3 x [8 x i32**]]* %46, i64 1
  %75 = getelementptr inbounds [3 x [8 x i32**]], [3 x [8 x i32**]]* %74, i64 0, i64 0
  %76 = getelementptr inbounds [8 x i32**], [8 x i32**]* %75, i64 0, i64 0
  store i32** null, i32*** %76, !tbaa !5
  %77 = getelementptr inbounds i32**, i32*** %76, i64 1
  store i32** %l_1235, i32*** %77, !tbaa !5
  %78 = getelementptr inbounds i32**, i32*** %77, i64 1
  store i32** null, i32*** %78, !tbaa !5
  %79 = getelementptr inbounds i32**, i32*** %78, i64 1
  store i32** %l_1235, i32*** %79, !tbaa !5
  %80 = getelementptr inbounds i32**, i32*** %79, i64 1
  store i32** null, i32*** %80, !tbaa !5
  %81 = getelementptr inbounds i32**, i32*** %80, i64 1
  store i32** %l_1235, i32*** %81, !tbaa !5
  %82 = getelementptr inbounds i32**, i32*** %81, i64 1
  store i32** %l_1235, i32*** %82, !tbaa !5
  %83 = getelementptr inbounds i32**, i32*** %82, i64 1
  store i32** null, i32*** %83, !tbaa !5
  %84 = getelementptr inbounds [8 x i32**], [8 x i32**]* %75, i64 1
  %85 = getelementptr inbounds [8 x i32**], [8 x i32**]* %84, i64 0, i64 0
  store i32** %l_1235, i32*** %85, !tbaa !5
  %86 = getelementptr inbounds i32**, i32*** %85, i64 1
  store i32** %l_1235, i32*** %86, !tbaa !5
  %87 = getelementptr inbounds i32**, i32*** %86, i64 1
  store i32** %l_1235, i32*** %87, !tbaa !5
  %88 = getelementptr inbounds i32**, i32*** %87, i64 1
  store i32** %l_1235, i32*** %88, !tbaa !5
  %89 = getelementptr inbounds i32**, i32*** %88, i64 1
  store i32** %l_1235, i32*** %89, !tbaa !5
  %90 = getelementptr inbounds i32**, i32*** %89, i64 1
  store i32** null, i32*** %90, !tbaa !5
  %91 = getelementptr inbounds i32**, i32*** %90, i64 1
  store i32** %l_1235, i32*** %91, !tbaa !5
  %92 = getelementptr inbounds i32**, i32*** %91, i64 1
  store i32** %l_1235, i32*** %92, !tbaa !5
  %93 = getelementptr inbounds [8 x i32**], [8 x i32**]* %84, i64 1
  %94 = getelementptr inbounds [8 x i32**], [8 x i32**]* %93, i64 0, i64 0
  store i32** %l_1235, i32*** %94, !tbaa !5
  %95 = getelementptr inbounds i32**, i32*** %94, i64 1
  store i32** %l_1235, i32*** %95, !tbaa !5
  %96 = getelementptr inbounds i32**, i32*** %95, i64 1
  store i32** %l_1235, i32*** %96, !tbaa !5
  %97 = getelementptr inbounds i32**, i32*** %96, i64 1
  store i32** %l_1235, i32*** %97, !tbaa !5
  %98 = getelementptr inbounds i32**, i32*** %97, i64 1
  store i32** null, i32*** %98, !tbaa !5
  %99 = getelementptr inbounds i32**, i32*** %98, i64 1
  store i32** null, i32*** %99, !tbaa !5
  %100 = getelementptr inbounds i32**, i32*** %99, i64 1
  store i32** %l_1235, i32*** %100, !tbaa !5
  %101 = getelementptr inbounds i32**, i32*** %100, i64 1
  store i32** %l_1235, i32*** %101, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1249) #1
  store i8 1, i8* %l_1249, align 1, !tbaa !9
  %102 = bitcast [10 x [4 x i16*]]* %l_1255 to i8*
  call void @llvm.lifetime.start(i64 320, i8* %102) #1
  %103 = bitcast [10 x [4 x i16*]]* %l_1255 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* bitcast ([10 x [4 x i16*]]* @func_30.l_1255 to i8*), i64 320, i32 16, i1 false)
  %104 = bitcast i32* %l_1266 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  store i32 275669808, i32* %l_1266, align 4, !tbaa !1
  %105 = bitcast [1 x [10 x [8 x i16]]]* %l_1288 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %105) #1
  %106 = bitcast [1 x [10 x [8 x i16]]]* %l_1288 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* bitcast ([1 x [10 x [8 x i16]]]* @func_30.l_1288 to i8*), i64 160, i32 16, i1 false)
  %107 = bitcast [3 x [1 x [5 x i32]]]* %l_1296 to i8*
  call void @llvm.lifetime.start(i64 60, i8* %107) #1
  %108 = bitcast i32* %l_1311 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #1
  store i32 -5, i32* %l_1311, align 4, !tbaa !1
  %109 = bitcast i32** %l_1430 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  store i32* @g_124, i32** %l_1430, align 8, !tbaa !5
  %110 = bitcast i64* %l_1564 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  store i64 -1, i64* %l_1564, align 8, !tbaa !7
  %111 = bitcast i16* %l_1669 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %111) #1
  store i16 8192, i16* %l_1669, align 2, !tbaa !10
  %112 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #1
  %113 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  %114 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %115

; <label>:115                                     ; preds = %122, %0
  %116 = load i32, i32* %i, align 4, !tbaa !1
  %117 = icmp slt i32 %116, 4
  br i1 %117, label %118, label %125

; <label>:118                                     ; preds = %115
  %119 = load i32, i32* %i, align 4, !tbaa !1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [4 x i32*], [4 x i32*]* %l_1192, i32 0, i64 %120
  store i32* null, i32** %121, align 8, !tbaa !5
  br label %122

; <label>:122                                     ; preds = %118
  %123 = load i32, i32* %i, align 4, !tbaa !1
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %i, align 4, !tbaa !1
  br label %115

; <label>:125                                     ; preds = %115
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %126

; <label>:126                                     ; preds = %133, %125
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %128 = icmp slt i32 %127, 8
  br i1 %128, label %129, label %136

; <label>:129                                     ; preds = %126
  %130 = load i32, i32* %i, align 4, !tbaa !1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [8 x i16**], [8 x i16**]* %l_1199, i32 0, i64 %131
  store i16** @g_141, i16*** %132, align 8, !tbaa !5
  br label %133

; <label>:133                                     ; preds = %129
  %134 = load i32, i32* %i, align 4, !tbaa !1
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %i, align 4, !tbaa !1
  br label %126

; <label>:136                                     ; preds = %126
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %137

; <label>:137                                     ; preds = %166, %136
  %138 = load i32, i32* %i, align 4, !tbaa !1
  %139 = icmp slt i32 %138, 3
  br i1 %139, label %140, label %169

; <label>:140                                     ; preds = %137
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %141

; <label>:141                                     ; preds = %162, %140
  %142 = load i32, i32* %j, align 4, !tbaa !1
  %143 = icmp slt i32 %142, 1
  br i1 %143, label %144, label %165

; <label>:144                                     ; preds = %141
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %145

; <label>:145                                     ; preds = %158, %144
  %146 = load i32, i32* %k, align 4, !tbaa !1
  %147 = icmp slt i32 %146, 5
  br i1 %147, label %148, label %161

; <label>:148                                     ; preds = %145
  %149 = load i32, i32* %k, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = load i32, i32* %j, align 4, !tbaa !1
  %152 = sext i32 %151 to i64
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [3 x [1 x [5 x i32]]], [3 x [1 x [5 x i32]]]* %l_1296, i32 0, i64 %154
  %156 = getelementptr inbounds [1 x [5 x i32]], [1 x [5 x i32]]* %155, i32 0, i64 %152
  %157 = getelementptr inbounds [5 x i32], [5 x i32]* %156, i32 0, i64 %150
  store i32 -1978704634, i32* %157, align 4, !tbaa !1
  br label %158

; <label>:158                                     ; preds = %148
  %159 = load i32, i32* %k, align 4, !tbaa !1
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %k, align 4, !tbaa !1
  br label %145

; <label>:161                                     ; preds = %145
  br label %162

; <label>:162                                     ; preds = %161
  %163 = load i32, i32* %j, align 4, !tbaa !1
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %j, align 4, !tbaa !1
  br label %141

; <label>:165                                     ; preds = %141
  br label %166

; <label>:166                                     ; preds = %165
  %167 = load i32, i32* %i, align 4, !tbaa !1
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %i, align 4, !tbaa !1
  br label %137

; <label>:169                                     ; preds = %137
  %170 = load i32, i32* %2, align 4, !tbaa !1
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %240

; <label>:172                                     ; preds = %169
  %173 = load i32*, i32** %l_1191, align 8, !tbaa !5
  %174 = icmp ne i32* %173, getelementptr inbounds ([10 x i32], [10 x i32]* @g_1071, i32 0, i64 1)
  %175 = zext i1 %174 to i32
  %176 = trunc i32 %175 to i8
  %177 = call signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %176)
  %178 = sext i8 %177 to i64
  %179 = icmp slt i64 35599, %178
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* @g_440, align 4, !tbaa !1
  %182 = and i32 %181, %180
  store i32 %182, i32* @g_440, align 4, !tbaa !1
  %183 = load i8*, i8** %l_1197, align 8, !tbaa !5
  %184 = load i8***, i8**** @g_615, align 8, !tbaa !5
  %185 = load i8**, i8*** %184, align 8, !tbaa !5
  %186 = load i8*, i8** %185, align 8, !tbaa !5
  %187 = icmp eq i8* %183, %186
  br i1 %187, label %188, label %191

; <label>:188                                     ; preds = %172
  %189 = load i32, i32* %2, align 4, !tbaa !1
  %190 = icmp ne i32 %189, 0
  br label %191

; <label>:191                                     ; preds = %188, %172
  %192 = phi i1 [ false, %172 ], [ %190, %188 ]
  %193 = zext i1 %192 to i32
  %194 = sext i32 %193 to i64
  %195 = icmp eq i64 0, %194
  br i1 %195, label %214, label %196

; <label>:196                                     ; preds = %191
  %197 = getelementptr inbounds [8 x i16**], [8 x i16**]* %l_1199, i32 0, i64 2
  %198 = load i16**, i16*** %197, align 8, !tbaa !5
  %199 = icmp ne i16** null, %198
  br i1 %199, label %200, label %203

; <label>:200                                     ; preds = %196
  %201 = load i32, i32* %2, align 4, !tbaa !1
  %202 = icmp ne i32 %201, 0
  br label %203

; <label>:203                                     ; preds = %200, %196
  %204 = phi i1 [ false, %196 ], [ %202, %200 ]
  %205 = zext i1 %204 to i32
  %206 = xor i32 %205, -1
  %207 = sext i32 %206 to i64
  %208 = or i64 %207, 4294967286
  %209 = load i32, i32* %l_1201, align 4, !tbaa !1
  %210 = sext i32 %209 to i64
  %211 = or i64 %210, %208
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %l_1201, align 4, !tbaa !1
  %213 = icmp ne i32 %212, 0
  br label %214

; <label>:214                                     ; preds = %203, %191
  %215 = phi i1 [ true, %191 ], [ %213, %203 ]
  %216 = zext i1 %215 to i32
  %217 = load i32, i32* %l_1202, align 4, !tbaa !1
  %218 = icmp slt i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = load i32, i32* %2, align 4, !tbaa !1
  %221 = icmp eq i32 %219, %220
  %222 = zext i1 %221 to i32
  %223 = trunc i32 %222 to i16
  %224 = load i16*, i16** @g_141, align 8, !tbaa !5
  %225 = load i16, i16* %224, align 2, !tbaa !10
  %226 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %223, i16 zeroext %225)
  %227 = load i16, i16* @g_1203, align 2, !tbaa !10
  %228 = sext i16 %227 to i64
  %229 = icmp ult i64 0, %228
  %230 = zext i1 %229 to i32
  %231 = load i32, i32* %3, align 4, !tbaa !1
  %232 = sext i32 %231 to i64
  %233 = call i64 @safe_mod_func_uint64_t_u_u(i64 -7, i64 %232)
  %234 = or i64 %233, 31384
  %235 = load i64*, i64** %l_1204, align 8, !tbaa !5
  store i64 %234, i64* %235, align 8, !tbaa !7
  %236 = load i32, i32* %l_1202, align 4, !tbaa !1
  %237 = sext i32 %236 to i64
  %238 = call i64 @safe_add_func_uint64_t_u_u(i64 %234, i64 %237)
  %239 = icmp ne i64 %238, 0
  br label %240

; <label>:240                                     ; preds = %214, %169
  %241 = phi i1 [ false, %169 ], [ %239, %214 ]
  %242 = zext i1 %241 to i32
  %243 = load volatile i16, i16* getelementptr inbounds ([8 x [10 x i16]], [8 x [10 x i16]]* @g_1029, i32 0, i64 1, i64 3), align 2, !tbaa !10
  %244 = sext i16 %243 to i32
  %245 = xor i32 %242, %244
  %246 = trunc i32 %245 to i16
  %247 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %246, i16 zeroext 1)
  %248 = zext i16 %247 to i32
  %249 = load i32*, i32** %l_1205, align 8, !tbaa !5
  store i32 %248, i32* %249, align 4, !tbaa !1
  store i8** %l_1197, i8*** @g_1206, align 8, !tbaa !5
  %250 = load i32, i32* %l_1201, align 4, !tbaa !1
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %424

; <label>:252                                     ; preds = %240
  %253 = bitcast i32** %l_1207 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %253) #1
  store i32* %l_1201, i32** %l_1207, align 8, !tbaa !5
  %254 = bitcast i8** %l_1220 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %254) #1
  store i8* @g_57, i8** %l_1220, align 8, !tbaa !5
  %255 = bitcast i32** %l_1226 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %255) #1
  store i32* @g_122, i32** %l_1226, align 8, !tbaa !5
  %256 = bitcast i16** %l_1243 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %256) #1
  store i16* @g_559, i16** %l_1243, align 8, !tbaa !5
  %257 = bitcast [7 x [7 x i16]]* %l_1250 to i8*
  call void @llvm.lifetime.start(i64 98, i8* %257) #1
  %258 = bitcast [7 x [7 x i16]]* %l_1250 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %258, i8* bitcast ([7 x [7 x i16]]* @func_30.l_1250 to i8*), i64 98, i32 16, i1 false)
  %259 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %259) #1
  %260 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %260) #1
  %261 = load i32*, i32** %l_1207, align 8, !tbaa !5
  %262 = load i32, i32* %261, align 4, !tbaa !1
  %263 = sext i32 %262 to i64
  %264 = or i64 %263, -1
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %261, align 4, !tbaa !1
  %266 = load i32, i32* %2, align 4, !tbaa !1
  %267 = load i32, i32* %l_1201, align 4, !tbaa !1
  %268 = load volatile i8****, i8***** @g_614, align 8, !tbaa !5
  %269 = load i8***, i8**** %268, align 8, !tbaa !5
  %270 = load i8**, i8*** %269, align 8, !tbaa !5
  %271 = load i8*, i8** %270, align 8, !tbaa !5
  %272 = load i8, i8* %271, align 1, !tbaa !9
  %273 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %272, i32 1)
  %274 = zext i8 %273 to i16
  %275 = load i8*, i8** %l_1220, align 8, !tbaa !5
  %276 = load i8, i8* %275, align 1, !tbaa !9
  %277 = zext i8 %276 to i64
  %278 = and i64 %277, 123
  %279 = trunc i64 %278 to i8
  store i8 %279, i8* %275, align 1, !tbaa !9
  %280 = load i32, i32* %l_1201, align 4, !tbaa !1
  %281 = sext i32 %280 to i64
  %282 = icmp ult i64 %281, 1
  %283 = zext i1 %282 to i32
  %284 = trunc i32 %283 to i16
  %285 = load i32, i32* %3, align 4, !tbaa !1
  %286 = load i16, i16* @g_1203, align 2, !tbaa !10
  %287 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %284, i16 signext %286)
  %288 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %287, i32 6)
  %289 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext 6)
  %290 = sext i16 %289 to i32
  %291 = load i32*, i32** %l_1207, align 8, !tbaa !5
  %292 = load i32, i32* %291, align 4, !tbaa !1
  %293 = and i32 %290, %292
  %294 = trunc i32 %293 to i8
  %295 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %279, i8 zeroext %294)
  %296 = zext i8 %295 to i16
  %297 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %274, i16 signext %296)
  %298 = sext i16 %297 to i32
  %299 = call i32 @safe_add_func_int32_t_s_s(i32 %267, i32 %298)
  %300 = sext i32 %299 to i64
  %301 = icmp sge i64 %300, -1
  %302 = zext i1 %301 to i32
  %303 = xor i32 %266, %302
  %304 = load i32*, i32** %l_1207, align 8, !tbaa !5
  %305 = load i32, i32* %304, align 4, !tbaa !1
  %306 = icmp sgt i32 %303, %305
  %307 = zext i1 %306 to i32
  %308 = trunc i32 %307 to i8
  %309 = load i8****, i8***** @g_1048, align 8, !tbaa !5
  %310 = load i8***, i8**** %309, align 8, !tbaa !5
  %311 = load i8**, i8*** %310, align 8, !tbaa !5
  %312 = load i8*, i8** %311, align 8, !tbaa !5
  %313 = load i8, i8* %312, align 1, !tbaa !9
  %314 = zext i8 %313 to i32
  %315 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %308, i32 %314)
  %316 = sext i8 %315 to i64
  %317 = icmp ne i64 %316, -4
  %318 = zext i1 %317 to i32
  %319 = sext i32 %318 to i64
  %320 = icmp sle i64 %319, 1
  %321 = zext i1 %320 to i32
  %322 = load i32, i32* %3, align 4, !tbaa !1
  %323 = icmp ne i32 %321, %322
  %324 = zext i1 %323 to i32
  %325 = load i32*, i32** %l_1226, align 8, !tbaa !5
  %326 = load i32, i32* %325, align 4, !tbaa !1
  %327 = and i32 %326, %324
  store i32 %327, i32* %325, align 4, !tbaa !1
  %328 = load i32, i32* %l_1201, align 4, !tbaa !1
  %329 = load i8****, i8***** %l_1227, align 8, !tbaa !5
  %330 = bitcast i8**** %329 to i8*
  %331 = icmp eq i8* null, %330
  br i1 %331, label %332, label %340

; <label>:332                                     ; preds = %252
  %333 = load i32, i32* %l_1202, align 4, !tbaa !1
  %334 = trunc i32 %333 to i8
  %335 = load i8***, i8**** @g_615, align 8, !tbaa !5
  %336 = load i8**, i8*** %335, align 8, !tbaa !5
  %337 = load i8*, i8** %336, align 8, !tbaa !5
  store i8 %334, i8* %337, align 1, !tbaa !9
  %338 = zext i8 %334 to i32
  %339 = icmp ne i32 %338, 0
  br label %340

; <label>:340                                     ; preds = %332, %252
  %341 = phi i1 [ false, %252 ], [ %339, %332 ]
  %342 = zext i1 %341 to i32
  %343 = load i32*, i32** %l_1207, align 8, !tbaa !5
  store i32 %342, i32* %343, align 4, !tbaa !1
  %344 = load i8*, i8** %l_1220, align 8, !tbaa !5
  %345 = load i8***, i8**** @g_615, align 8, !tbaa !5
  %346 = load i8**, i8*** %345, align 8, !tbaa !5
  store i8* %344, i8** %346, align 8, !tbaa !5
  %347 = load i8*, i8** %l_1220, align 8, !tbaa !5
  %348 = icmp eq i8* %344, %347
  %349 = zext i1 %348 to i32
  %350 = getelementptr inbounds [3 x [3 x [8 x i32**]]], [3 x [3 x [8 x i32**]]]* %l_1234, i32 0, i64 2
  %351 = getelementptr inbounds [3 x [8 x i32**]], [3 x [8 x i32**]]* %350, i32 0, i64 0
  %352 = getelementptr inbounds [8 x i32**], [8 x i32**]* %351, i32 0, i64 5
  %353 = load i32**, i32*** %352, align 8, !tbaa !5
  %354 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %355 = load i32**, i32*** %354, align 8, !tbaa !5
  %356 = icmp eq i32** %353, %355
  %357 = zext i1 %356 to i32
  %358 = load i32*, i32** %l_1207, align 8, !tbaa !5
  %359 = load i32, i32* %358, align 4, !tbaa !1
  %360 = load i16*, i16** %l_1243, align 8, !tbaa !5
  %361 = icmp eq i16* %360, @g_27
  %362 = zext i1 %361 to i32
  %363 = trunc i32 %362 to i16
  store i32 2, i32* %l_1202, align 4, !tbaa !1
  %364 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext 2, i32 0)
  %365 = trunc i16 %364 to i8
  %366 = load i32, i32* %2, align 4, !tbaa !1
  %367 = trunc i32 %366 to i8
  %368 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %365, i8 zeroext %367)
  %369 = zext i8 %368 to i32
  %370 = icmp sge i32 %369, 1
  %371 = zext i1 %370 to i32
  %372 = xor i32 %371, -1
  %373 = sext i32 %372 to i64
  %374 = icmp ne i64 %373, 4294967295
  %375 = zext i1 %374 to i32
  %376 = trunc i32 %375 to i16
  %377 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %363, i16 signext %376)
  %378 = sext i16 %377 to i32
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %384, label %380

; <label>:380                                     ; preds = %340
  br i1 true, label %384, label %381

; <label>:381                                     ; preds = %380
  %382 = load i32, i32* %3, align 4, !tbaa !1
  %383 = icmp ne i32 %382, 0
  br label %384

; <label>:384                                     ; preds = %381, %380, %340
  %385 = phi i1 [ true, %380 ], [ true, %340 ], [ %383, %381 ]
  %386 = zext i1 %385 to i32
  %387 = getelementptr inbounds [7 x [7 x i16]], [7 x [7 x i16]]* %l_1250, i32 0, i64 4
  %388 = getelementptr inbounds [7 x i16], [7 x i16]* %387, i32 0, i64 3
  %389 = load i16, i16* %388, align 2, !tbaa !10
  %390 = sext i16 %389 to i32
  %391 = xor i32 %386, %390
  %392 = icmp ne i32 %391, 0
  %393 = xor i1 %392, true
  %394 = zext i1 %393 to i32
  %395 = trunc i32 %394 to i16
  %396 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %395, i16 zeroext 3)
  %397 = zext i16 %396 to i32
  %398 = load i32, i32* @g_65, align 4, !tbaa !1
  %399 = or i32 %397, %398
  %400 = call i32 @safe_mod_func_uint32_t_u_u(i32 %399, i32 -343767909)
  %401 = and i32 %357, %400
  %402 = trunc i32 %401 to i8
  %403 = load i32*, i32** %l_1207, align 8, !tbaa !5
  %404 = load i32, i32* %403, align 4, !tbaa !1
  %405 = trunc i32 %404 to i8
  %406 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %402, i8 zeroext %405)
  %407 = zext i8 %406 to i64
  %408 = icmp eq i64 %407, 1
  %409 = zext i1 %408 to i32
  %410 = icmp slt i32 %349, %409
  %411 = zext i1 %410 to i32
  %412 = load i32, i32* %2, align 4, !tbaa !1
  %413 = icmp sle i32 %411, %412
  %414 = zext i1 %413 to i32
  %415 = call i32 @safe_add_func_int32_t_s_s(i32 209499302, i32 %414)
  %416 = load i32*, i32** %l_1207, align 8, !tbaa !5
  store i32 %415, i32* %416, align 4, !tbaa !1
  %417 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %417) #1
  %418 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %418) #1
  %419 = bitcast [7 x [7 x i16]]* %l_1250 to i8*
  call void @llvm.lifetime.end(i64 98, i8* %419) #1
  %420 = bitcast i16** %l_1243 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %420) #1
  %421 = bitcast i32** %l_1226 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %421) #1
  %422 = bitcast i8** %l_1220 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %422) #1
  %423 = bitcast i32** %l_1207 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %423) #1
  br label %690

; <label>:424                                     ; preds = %240
  %425 = bitcast i8**** %l_1253 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %425) #1
  store i8*** @g_683, i8**** %l_1253, align 8, !tbaa !5
  %426 = bitcast i32* %l_1265 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %426) #1
  store i32 0, i32* %l_1265, align 4, !tbaa !1
  %427 = bitcast i32***** %l_1287 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %427) #1
  store i32**** @g_443, i32***** %l_1287, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1289) #1
  store i8 -7, i8* %l_1289, align 1, !tbaa !9
  %428 = bitcast i64* %l_1295 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %428) #1
  store i64 5209616701221403304, i64* %l_1295, align 8, !tbaa !7
  store i16 0, i16* @g_142, align 2, !tbaa !10
  br label %429

; <label>:429                                     ; preds = %678, %424
  %430 = load i16, i16* @g_142, align 2, !tbaa !10
  %431 = zext i16 %430 to i32
  %432 = icmp slt i32 %431, 23
  br i1 %432, label %433, label %683

; <label>:433                                     ; preds = %429
  %434 = bitcast i8**** %l_1254 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %434) #1
  store i8*** @g_683, i8**** %l_1254, align 8, !tbaa !5
  %435 = bitcast [5 x i32]* %l_1261 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %435) #1
  %436 = bitcast [5 x i32]* %l_1261 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %436, i8* bitcast ([5 x i32]* @func_30.l_1261 to i8*), i64 20, i32 16, i1 false)
  %437 = bitcast i32** %l_1290 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %437) #1
  %438 = getelementptr inbounds [5 x i32], [5 x i32]* %l_1261, i32 0, i64 0
  store i32* %438, i32** %l_1290, align 8, !tbaa !5
  %439 = bitcast i32** %l_1291 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %439) #1
  store i32* %l_1201, i32** %l_1291, align 8, !tbaa !5
  %440 = bitcast i32** %l_1292 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %440) #1
  store i32* null, i32** %l_1292, align 8, !tbaa !5
  %441 = bitcast i32** %l_1293 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %441) #1
  store i32* null, i32** %l_1293, align 8, !tbaa !5
  %442 = bitcast [5 x [2 x [7 x i32*]]]* %l_1294 to i8*
  call void @llvm.lifetime.start(i64 560, i8* %442) #1
  %443 = getelementptr inbounds [5 x [2 x [7 x i32*]]], [5 x [2 x [7 x i32*]]]* %l_1294, i64 0, i64 0
  %444 = getelementptr inbounds [2 x [7 x i32*]], [2 x [7 x i32*]]* %443, i64 0, i64 0
  %445 = getelementptr inbounds [7 x i32*], [7 x i32*]* %444, i64 0, i64 0
  store i32* %l_1201, i32** %445, !tbaa !5
  %446 = getelementptr inbounds i32*, i32** %445, i64 1
  store i32* @g_98, i32** %446, !tbaa !5
  %447 = getelementptr inbounds i32*, i32** %446, i64 1
  store i32* @g_98, i32** %447, !tbaa !5
  %448 = getelementptr inbounds i32*, i32** %447, i64 1
  store i32* @g_40, i32** %448, !tbaa !5
  %449 = getelementptr inbounds i32*, i32** %448, i64 1
  store i32* @g_40, i32** %449, !tbaa !5
  %450 = getelementptr inbounds i32*, i32** %449, i64 1
  store i32* @g_98, i32** %450, !tbaa !5
  %451 = getelementptr inbounds i32*, i32** %450, i64 1
  store i32* @g_98, i32** %451, !tbaa !5
  %452 = getelementptr inbounds [7 x i32*], [7 x i32*]* %444, i64 1
  %453 = getelementptr inbounds [7 x i32*], [7 x i32*]* %452, i64 0, i64 0
  store i32* %l_1201, i32** %453, !tbaa !5
  %454 = getelementptr inbounds i32*, i32** %453, i64 1
  store i32* %l_1265, i32** %454, !tbaa !5
  %455 = getelementptr inbounds i32*, i32** %454, i64 1
  store i32* null, i32** %455, !tbaa !5
  %456 = getelementptr inbounds i32*, i32** %455, i64 1
  store i32* %l_1201, i32** %456, !tbaa !5
  %457 = getelementptr inbounds i32*, i32** %456, i64 1
  store i32* null, i32** %457, !tbaa !5
  %458 = getelementptr inbounds i32*, i32** %457, i64 1
  store i32* %l_1201, i32** %458, !tbaa !5
  %459 = getelementptr inbounds i32*, i32** %458, i64 1
  store i32* %l_1201, i32** %459, !tbaa !5
  %460 = getelementptr inbounds [2 x [7 x i32*]], [2 x [7 x i32*]]* %443, i64 1
  %461 = getelementptr inbounds [2 x [7 x i32*]], [2 x [7 x i32*]]* %460, i64 0, i64 0
  %462 = getelementptr inbounds [7 x i32*], [7 x i32*]* %461, i64 0, i64 0
  %463 = getelementptr inbounds [5 x i32], [5 x i32]* %l_1261, i32 0, i64 1
  store i32* %463, i32** %462, !tbaa !5
  %464 = getelementptr inbounds i32*, i32** %462, i64 1
  store i32* null, i32** %464, !tbaa !5
  %465 = getelementptr inbounds i32*, i32** %464, i64 1
  %466 = getelementptr inbounds [5 x i32], [5 x i32]* %l_1261, i32 0, i64 2
  store i32* %466, i32** %465, !tbaa !5
  %467 = getelementptr inbounds i32*, i32** %465, i64 1
  store i32* %l_1201, i32** %467, !tbaa !5
  %468 = getelementptr inbounds i32*, i32** %467, i64 1
  store i32* @g_40, i32** %468, !tbaa !5
  %469 = getelementptr inbounds i32*, i32** %468, i64 1
  store i32* %l_1265, i32** %469, !tbaa !5
  %470 = getelementptr inbounds i32*, i32** %469, i64 1
  store i32* %l_1265, i32** %470, !tbaa !5
  %471 = getelementptr inbounds [7 x i32*], [7 x i32*]* %461, i64 1
  %472 = getelementptr inbounds [7 x i32*], [7 x i32*]* %471, i64 0, i64 0
  store i32* @g_40, i32** %472, !tbaa !5
  %473 = getelementptr inbounds i32*, i32** %472, i64 1
  store i32* %l_1201, i32** %473, !tbaa !5
  %474 = getelementptr inbounds i32*, i32** %473, i64 1
  store i32* @g_98, i32** %474, !tbaa !5
  %475 = getelementptr inbounds i32*, i32** %474, i64 1
  store i32* %l_1201, i32** %475, !tbaa !5
  %476 = getelementptr inbounds i32*, i32** %475, i64 1
  store i32* null, i32** %476, !tbaa !5
  %477 = getelementptr inbounds i32*, i32** %476, i64 1
  %478 = getelementptr inbounds [5 x i32], [5 x i32]* %l_1261, i32 0, i64 1
  store i32* %478, i32** %477, !tbaa !5
  %479 = getelementptr inbounds i32*, i32** %477, i64 1
  store i32* %l_1201, i32** %479, !tbaa !5
  %480 = getelementptr inbounds [2 x [7 x i32*]], [2 x [7 x i32*]]* %460, i64 1
  %481 = getelementptr inbounds [2 x [7 x i32*]], [2 x [7 x i32*]]* %480, i64 0, i64 0
  %482 = getelementptr inbounds [7 x i32*], [7 x i32*]* %481, i64 0, i64 0
  store i32* %l_1201, i32** %482, !tbaa !5
  %483 = getelementptr inbounds i32*, i32** %482, i64 1
  store i32* %l_1265, i32** %483, !tbaa !5
  %484 = getelementptr inbounds i32*, i32** %483, i64 1
  store i32* null, i32** %484, !tbaa !5
  %485 = getelementptr inbounds i32*, i32** %484, i64 1
  store i32* @g_40, i32** %485, !tbaa !5
  %486 = getelementptr inbounds i32*, i32** %485, i64 1
  store i32* null, i32** %486, !tbaa !5
  %487 = getelementptr inbounds i32*, i32** %486, i64 1
  store i32* %l_1265, i32** %487, !tbaa !5
  %488 = getelementptr inbounds i32*, i32** %487, i64 1
  store i32* %l_1201, i32** %488, !tbaa !5
  %489 = getelementptr inbounds [7 x i32*], [7 x i32*]* %481, i64 1
  %490 = getelementptr inbounds [7 x i32*], [7 x i32*]* %489, i64 0, i64 0
  store i32* null, i32** %490, !tbaa !5
  %491 = getelementptr inbounds i32*, i32** %490, i64 1
  store i32* %l_1201, i32** %491, !tbaa !5
  %492 = getelementptr inbounds i32*, i32** %491, i64 1
  store i32* %l_1201, i32** %492, !tbaa !5
  %493 = getelementptr inbounds i32*, i32** %492, i64 1
  store i32* null, i32** %493, !tbaa !5
  %494 = getelementptr inbounds i32*, i32** %493, i64 1
  store i32* %l_1201, i32** %494, !tbaa !5
  %495 = getelementptr inbounds i32*, i32** %494, i64 1
  store i32* %l_1202, i32** %495, !tbaa !5
  %496 = getelementptr inbounds i32*, i32** %495, i64 1
  store i32* %l_1265, i32** %496, !tbaa !5
  %497 = getelementptr inbounds [2 x [7 x i32*]], [2 x [7 x i32*]]* %480, i64 1
  %498 = getelementptr inbounds [2 x [7 x i32*]], [2 x [7 x i32*]]* %497, i64 0, i64 0
  %499 = getelementptr inbounds [7 x i32*], [7 x i32*]* %498, i64 0, i64 0
  store i32* %l_1201, i32** %499, !tbaa !5
  %500 = getelementptr inbounds i32*, i32** %499, i64 1
  store i32* @g_40, i32** %500, !tbaa !5
  %501 = getelementptr inbounds i32*, i32** %500, i64 1
  %502 = getelementptr inbounds [5 x i32], [5 x i32]* %l_1261, i32 0, i64 1
  store i32* %502, i32** %501, !tbaa !5
  %503 = getelementptr inbounds i32*, i32** %501, i64 1
  store i32* @g_40, i32** %503, !tbaa !5
  %504 = getelementptr inbounds i32*, i32** %503, i64 1
  store i32* %l_1201, i32** %504, !tbaa !5
  %505 = getelementptr inbounds i32*, i32** %504, i64 1
  store i32* @g_98, i32** %505, !tbaa !5
  %506 = getelementptr inbounds i32*, i32** %505, i64 1
  store i32* %l_1201, i32** %506, !tbaa !5
  %507 = getelementptr inbounds [7 x i32*], [7 x i32*]* %498, i64 1
  %508 = getelementptr inbounds [7 x i32*], [7 x i32*]* %507, i64 0, i64 0
  store i32* null, i32** %508, !tbaa !5
  %509 = getelementptr inbounds i32*, i32** %508, i64 1
  store i32* %l_1265, i32** %509, !tbaa !5
  %510 = getelementptr inbounds i32*, i32** %509, i64 1
  store i32* %l_1201, i32** %510, !tbaa !5
  %511 = getelementptr inbounds i32*, i32** %510, i64 1
  store i32* null, i32** %511, !tbaa !5
  %512 = getelementptr inbounds i32*, i32** %511, i64 1
  store i32* %l_1201, i32** %512, !tbaa !5
  %513 = getelementptr inbounds i32*, i32** %512, i64 1
  %514 = getelementptr inbounds [5 x i32], [5 x i32]* %l_1261, i32 0, i64 1
  store i32* %514, i32** %513, !tbaa !5
  %515 = getelementptr inbounds i32*, i32** %513, i64 1
  store i32* @g_98, i32** %515, !tbaa !5
  %516 = getelementptr inbounds [2 x [7 x i32*]], [2 x [7 x i32*]]* %497, i64 1
  %517 = getelementptr inbounds [2 x [7 x i32*]], [2 x [7 x i32*]]* %516, i64 0, i64 0
  %518 = getelementptr inbounds [7 x i32*], [7 x i32*]* %517, i64 0, i64 0
  %519 = getelementptr inbounds [5 x i32], [5 x i32]* %l_1261, i32 0, i64 1
  store i32* %519, i32** %518, !tbaa !5
  %520 = getelementptr inbounds i32*, i32** %518, i64 1
  store i32* null, i32** %520, !tbaa !5
  %521 = getelementptr inbounds i32*, i32** %520, i64 1
  store i32* null, i32** %521, !tbaa !5
  %522 = getelementptr inbounds i32*, i32** %521, i64 1
  store i32* null, i32** %522, !tbaa !5
  %523 = getelementptr inbounds i32*, i32** %522, i64 1
  store i32* null, i32** %523, !tbaa !5
  %524 = getelementptr inbounds i32*, i32** %523, i64 1
  %525 = getelementptr inbounds [5 x i32], [5 x i32]* %l_1261, i32 0, i64 1
  store i32* %525, i32** %524, !tbaa !5
  %526 = getelementptr inbounds i32*, i32** %524, i64 1
  store i32* %l_1265, i32** %526, !tbaa !5
  %527 = getelementptr inbounds [7 x i32*], [7 x i32*]* %517, i64 1
  %528 = getelementptr inbounds [7 x i32*], [7 x i32*]* %527, i64 0, i64 0
  store i32* %l_1201, i32** %528, !tbaa !5
  %529 = getelementptr inbounds i32*, i32** %528, i64 1
  store i32* @g_40, i32** %529, !tbaa !5
  %530 = getelementptr inbounds i32*, i32** %529, i64 1
  store i32* @g_98, i32** %530, !tbaa !5
  %531 = getelementptr inbounds i32*, i32** %530, i64 1
  store i32* %l_1201, i32** %531, !tbaa !5
  %532 = getelementptr inbounds i32*, i32** %531, i64 1
  store i32* %l_1201, i32** %532, !tbaa !5
  %533 = getelementptr inbounds i32*, i32** %532, i64 1
  store i32* @g_98, i32** %533, !tbaa !5
  %534 = getelementptr inbounds i32*, i32** %533, i64 1
  store i32* null, i32** %534, !tbaa !5
  %535 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %535) #1
  %536 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %536) #1
  %537 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %537) #1
  %538 = load i8***, i8**** %l_1253, align 8, !tbaa !5
  %539 = load i8***, i8**** %l_1254, align 8, !tbaa !5
  %540 = icmp ne i8*** %538, %539
  br i1 %540, label %541, label %545

; <label>:541                                     ; preds = %433
  %542 = getelementptr inbounds [10 x [4 x i16*]], [10 x [4 x i16*]]* %l_1255, i32 0, i64 1
  %543 = getelementptr inbounds [4 x i16*], [4 x i16*]* %542, i32 0, i64 2
  %544 = load i16*, i16** %543, align 8, !tbaa !5
  store i16* %544, i16** %1
  store i32 1, i32* %5
  br label %666

; <label>:545                                     ; preds = %433
  %546 = bitcast i32** %l_1256 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %546) #1
  store i32* null, i32** %l_1256, align 8, !tbaa !5
  %547 = bitcast i32** %l_1257 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %547) #1
  store i32* @g_124, i32** %l_1257, align 8, !tbaa !5
  %548 = bitcast i32** %l_1258 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %548) #1
  store i32* null, i32** %l_1258, align 8, !tbaa !5
  %549 = bitcast i32** %l_1259 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %549) #1
  store i32* @g_124, i32** %l_1259, align 8, !tbaa !5
  %550 = bitcast i32** %l_1260 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %550) #1
  store i32* @g_98, i32** %l_1260, align 8, !tbaa !5
  %551 = bitcast i32* %l_1262 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %551) #1
  store i32 -1, i32* %l_1262, align 4, !tbaa !1
  %552 = bitcast i32** %l_1263 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %552) #1
  store i32* @g_40, i32** %l_1263, align 8, !tbaa !5
  %553 = bitcast [3 x i32*]* %l_1264 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %553) #1
  %554 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %554) #1
  store i32 0, i32* %i6, align 4, !tbaa !1
  br label %555

; <label>:555                                     ; preds = %562, %545
  %556 = load i32, i32* %i6, align 4, !tbaa !1
  %557 = icmp slt i32 %556, 3
  br i1 %557, label %558, label %565

; <label>:558                                     ; preds = %555
  %559 = load i32, i32* %i6, align 4, !tbaa !1
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds [3 x i32*], [3 x i32*]* %l_1264, i32 0, i64 %560
  store i32* null, i32** %561, align 8, !tbaa !5
  br label %562

; <label>:562                                     ; preds = %558
  %563 = load i32, i32* %i6, align 4, !tbaa !1
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %i6, align 4, !tbaa !1
  br label %555

; <label>:565                                     ; preds = %555
  %566 = load i32**, i32*** @g_444, align 8, !tbaa !5
  %567 = load i32*, i32** %566, align 8, !tbaa !5
  store i32* %567, i32** %l_1256, align 8, !tbaa !5
  %568 = load i32, i32* %l_1266, align 4, !tbaa !1
  %569 = add i32 %568, -1
  store i32 %569, i32* %l_1266, align 4, !tbaa !1
  store i16 0, i16* @g_439, align 2, !tbaa !10
  br label %570

; <label>:570                                     ; preds = %575, %565
  %571 = load i16, i16* @g_439, align 2, !tbaa !10
  %572 = sext i16 %571 to i32
  %573 = icmp sge i32 %572, 8
  br i1 %573, label %574, label %578

; <label>:574                                     ; preds = %570
  store i16* @g_439, i16** %1
  store i32 1, i32* %5
  br label %583
                                                  ; No predecessors!
  %576 = load i16, i16* @g_439, align 2, !tbaa !10
  %577 = add i16 %576, 1
  store i16 %577, i16* @g_439, align 2, !tbaa !10
  br label %570

; <label>:578                                     ; preds = %570
  %579 = load i32**, i32*** @g_444, align 8, !tbaa !5
  %580 = load i32*, i32** %579, align 8, !tbaa !5
  %581 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %582 = load i32**, i32*** %581, align 8, !tbaa !5
  store i32* %580, i32** %582, align 8, !tbaa !5
  store i32 0, i32* %5
  br label %583

; <label>:583                                     ; preds = %578, %574
  %584 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %584) #1
  %585 = bitcast [3 x i32*]* %l_1264 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %585) #1
  %586 = bitcast i32** %l_1263 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %586) #1
  %587 = bitcast i32* %l_1262 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %587) #1
  %588 = bitcast i32** %l_1260 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %588) #1
  %589 = bitcast i32** %l_1259 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %589) #1
  %590 = bitcast i32** %l_1258 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %590) #1
  %591 = bitcast i32** %l_1257 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %591) #1
  %592 = bitcast i32** %l_1256 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %592) #1
  %cleanup.dest = load i32, i32* %5
  switch i32 %cleanup.dest, label %666 [
    i32 0, label %593
  ]

; <label>:593                                     ; preds = %583
  br label %594

; <label>:594                                     ; preds = %593
  store i16 0, i16* @g_71, align 2, !tbaa !10
  br label %595

; <label>:595                                     ; preds = %660, %594
  %596 = load i16, i16* @g_71, align 2, !tbaa !10
  %597 = zext i16 %596 to i32
  %598 = icmp slt i32 %597, 17
  br i1 %598, label %599, label %663

; <label>:599                                     ; preds = %595
  %600 = bitcast i16* %l_1276 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %600) #1
  store i16 -6, i16* %l_1276, align 2, !tbaa !10
  %601 = load i16, i16* %l_1276, align 2, !tbaa !10
  %602 = trunc i16 %601 to i8
  %603 = getelementptr inbounds [5 x i32], [5 x i32]* %l_1261, i32 0, i64 2
  %604 = load i32, i32* %603, align 4, !tbaa !1
  %605 = load i32, i32* %l_1265, align 4, !tbaa !1
  %606 = load %union.U0**, %union.U0*** %4, align 8, !tbaa !5
  %607 = load %union.U0*, %union.U0** %606, align 8, !tbaa !5
  %608 = load i32****, i32***** %l_1287, align 8, !tbaa !5
  %609 = icmp eq i32**** @g_443, %608
  br i1 %609, label %611, label %610

; <label>:610                                     ; preds = %599
  br label %611

; <label>:611                                     ; preds = %610, %599
  %612 = phi i1 [ true, %599 ], [ true, %610 ]
  %613 = zext i1 %612 to i32
  %614 = load i32, i32* %2, align 4, !tbaa !1
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %622

; <label>:616                                     ; preds = %611
  %617 = load i32*, i32** %l_1235, align 8, !tbaa !5
  %618 = load i32, i32* %617, align 4, !tbaa !1
  %619 = sext i32 %618 to i64
  %620 = and i64 %619, 36325
  %621 = icmp ne i64 %620, 0
  br label %622

; <label>:622                                     ; preds = %616, %611
  %623 = phi i1 [ false, %611 ], [ %621, %616 ]
  %624 = zext i1 %623 to i32
  %625 = or i32 %613, %624
  %626 = getelementptr inbounds [1 x [10 x [8 x i16]]], [1 x [10 x [8 x i16]]]* %l_1288, i32 0, i64 0
  %627 = getelementptr inbounds [10 x [8 x i16]], [10 x [8 x i16]]* %626, i32 0, i64 0
  %628 = getelementptr inbounds [8 x i16], [8 x i16]* %627, i32 0, i64 7
  %629 = load i16, i16* %628, align 2, !tbaa !10
  %630 = zext i16 %629 to i32
  %631 = icmp sge i32 %625, %630
  %632 = zext i1 %631 to i32
  %633 = trunc i32 %632 to i16
  %634 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %633, i32 14)
  %635 = zext i16 %634 to i64
  %636 = call i64 @safe_sub_func_uint64_t_u_u(i64 %635, i64 3652636538267399875)
  %637 = call i64 @safe_add_func_int64_t_s_s(i64 %636, i64 8522589096254200995)
  %638 = load i32, i32* %2, align 4, !tbaa !1
  %639 = sext i32 %638 to i64
  %640 = icmp sge i64 %637, %639
  %641 = zext i1 %640 to i32
  %642 = load i8, i8* %l_1289, align 1, !tbaa !9
  %643 = zext i8 %642 to i32
  %644 = icmp sle i32 %641, %643
  %645 = zext i1 %644 to i32
  %646 = trunc i32 %645 to i8
  %647 = load i32, i32* %3, align 4, !tbaa !1
  %648 = trunc i32 %647 to i8
  %649 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %646, i8 signext %648)
  %650 = sext i8 %649 to i16
  %651 = load i32, i32* %3, align 4, !tbaa !1
  %652 = trunc i32 %651 to i16
  %653 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %650, i16 zeroext %652)
  %654 = zext i16 %653 to i32
  %655 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %602, i32 %654)
  %656 = icmp ne i8 %655, 0
  %657 = xor i1 %656, true
  %658 = zext i1 %657 to i32
  store i32 %658, i32* %2, align 4, !tbaa !1
  %659 = bitcast i16* %l_1276 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %659) #1
  br label %660

; <label>:660                                     ; preds = %622
  %661 = load i16, i16* @g_71, align 2, !tbaa !10
  %662 = add i16 %661, 1
  store i16 %662, i16* @g_71, align 2, !tbaa !10
  br label %595

; <label>:663                                     ; preds = %595
  %664 = load i8, i8* @g_1298, align 1, !tbaa !9
  %665 = add i8 %664, -1
  store i8 %665, i8* @g_1298, align 1, !tbaa !9
  store i32 0, i32* %5
  br label %666

; <label>:666                                     ; preds = %663, %583, %541
  %667 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %667) #1
  %668 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %668) #1
  %669 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %669) #1
  %670 = bitcast [5 x [2 x [7 x i32*]]]* %l_1294 to i8*
  call void @llvm.lifetime.end(i64 560, i8* %670) #1
  %671 = bitcast i32** %l_1293 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %671) #1
  %672 = bitcast i32** %l_1292 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %672) #1
  %673 = bitcast i32** %l_1291 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %673) #1
  %674 = bitcast i32** %l_1290 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %674) #1
  %675 = bitcast [5 x i32]* %l_1261 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %675) #1
  %676 = bitcast i8**** %l_1254 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %676) #1
  %cleanup.dest.7 = load i32, i32* %5
  switch i32 %cleanup.dest.7, label %684 [
    i32 0, label %677
  ]

; <label>:677                                     ; preds = %666
  br label %678

; <label>:678                                     ; preds = %677
  %679 = load i16, i16* @g_142, align 2, !tbaa !10
  %680 = zext i16 %679 to i32
  %681 = call i32 @safe_add_func_int32_t_s_s(i32 %680, i32 6)
  %682 = trunc i32 %681 to i16
  store i16 %682, i16* @g_142, align 2, !tbaa !10
  br label %429

; <label>:683                                     ; preds = %429
  store i32 0, i32* %5
  br label %684

; <label>:684                                     ; preds = %683, %666
  %685 = bitcast i64* %l_1295 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %685) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1289) #1
  %686 = bitcast i32***** %l_1287 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %686) #1
  %687 = bitcast i32* %l_1265 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %687) #1
  %688 = bitcast i8**** %l_1253 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %688) #1
  %cleanup.dest.8 = load i32, i32* %5
  switch i32 %cleanup.dest.8, label %767 [
    i32 0, label %689
  ]

; <label>:689                                     ; preds = %684
  br label %690

; <label>:690                                     ; preds = %689, %384
  store i16 0, i16* @g_71, align 2, !tbaa !10
  br label %691

; <label>:691                                     ; preds = %761, %690
  %692 = load i16, i16* @g_71, align 2, !tbaa !10
  %693 = zext i16 %692 to i32
  %694 = icmp sle i32 %693, 7
  br i1 %694, label %695, label %766

; <label>:695                                     ; preds = %691
  %696 = bitcast [2 x i32]* %l_1305 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %696) #1
  %697 = bitcast i64**** %l_1308 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %697) #1
  store i64*** @g_1306, i64**** %l_1308, align 8, !tbaa !5
  %698 = bitcast i64*** %l_1310 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %698) #1
  store i64** getelementptr inbounds ([6 x [7 x i64*]], [6 x [7 x i64*]]* @g_504, i32 0, i64 3, i64 5), i64*** %l_1310, align 8, !tbaa !5
  %699 = bitcast i64**** %l_1309 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %699) #1
  store i64*** %l_1310, i64**** %l_1309, align 8, !tbaa !5
  %700 = bitcast [1 x i32]* %l_1335 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %700) #1
  %701 = bitcast i32* %l_1434 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %701) #1
  store i32 1024184992, i32* %l_1434, align 4, !tbaa !1
  %702 = bitcast %union.U0*** %l_1450 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %702) #1
  store %union.U0** @g_677, %union.U0*** %l_1450, align 8, !tbaa !5
  %703 = bitcast i64** %l_1494 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %703) #1
  store i64* @g_1010, i64** %l_1494, align 8, !tbaa !5
  %704 = bitcast i32*** %l_1530 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %704) #1
  store i32** @g_152, i32*** %l_1530, align 8, !tbaa !5
  %705 = bitcast i32* %l_1532 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %705) #1
  store i32 -9, i32* %l_1532, align 4, !tbaa !1
  %706 = bitcast i8***** %l_1550 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %706) #1
  store i8**** @g_615, i8***** %l_1550, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1576) #1
  store i8 -1, i8* %l_1576, align 1, !tbaa !9
  %707 = bitcast [6 x i64]* %l_1648 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %707) #1
  %708 = bitcast [6 x i64]* %l_1648 to i8*
  call void @llvm.memset.p0i8.i64(i8* %708, i8 0, i64 48, i32 16, i1 false)
  %709 = bitcast i8* %708 to [6 x i64]*
  %710 = getelementptr [6 x i64], [6 x i64]* %709, i32 0, i32 0
  store i64 -1, i64* %710
  %711 = getelementptr [6 x i64], [6 x i64]* %709, i32 0, i32 1
  store i64 -8303282737355498370, i64* %711
  %712 = getelementptr [6 x i64], [6 x i64]* %709, i32 0, i32 2
  store i64 -8303282737355498370, i64* %712
  %713 = getelementptr [6 x i64], [6 x i64]* %709, i32 0, i32 3
  store i64 -1, i64* %713
  %714 = getelementptr [6 x i64], [6 x i64]* %709, i32 0, i32 4
  store i64 -8303282737355498370, i64* %714
  %715 = getelementptr [6 x i64], [6 x i64]* %709, i32 0, i32 5
  store i64 -8303282737355498370, i64* %715
  %716 = bitcast i32* %l_1682 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %716) #1
  store i32 585632218, i32* %l_1682, align 4, !tbaa !1
  %717 = bitcast i32* %l_1706 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %717) #1
  store i32 1852212295, i32* %l_1706, align 4, !tbaa !1
  %718 = bitcast [8 x %union.U0****]* %l_1723 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %718) #1
  %719 = bitcast [8 x %union.U0****]* %l_1723 to i8*
  call void @llvm.memset.p0i8.i64(i8* %719, i8 0, i64 64, i32 16, i1 false)
  %720 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %720) #1
  store i32 0, i32* %i9, align 4, !tbaa !1
  br label %721

; <label>:721                                     ; preds = %728, %695
  %722 = load i32, i32* %i9, align 4, !tbaa !1
  %723 = icmp slt i32 %722, 2
  br i1 %723, label %724, label %731

; <label>:724                                     ; preds = %721
  %725 = load i32, i32* %i9, align 4, !tbaa !1
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds [2 x i32], [2 x i32]* %l_1305, i32 0, i64 %726
  store i32 741166064, i32* %727, align 4, !tbaa !1
  br label %728

; <label>:728                                     ; preds = %724
  %729 = load i32, i32* %i9, align 4, !tbaa !1
  %730 = add nsw i32 %729, 1
  store i32 %730, i32* %i9, align 4, !tbaa !1
  br label %721

; <label>:731                                     ; preds = %721
  store i32 0, i32* %i9, align 4, !tbaa !1
  br label %732

; <label>:732                                     ; preds = %739, %731
  %733 = load i32, i32* %i9, align 4, !tbaa !1
  %734 = icmp slt i32 %733, 1
  br i1 %734, label %735, label %742

; <label>:735                                     ; preds = %732
  %736 = load i32, i32* %i9, align 4, !tbaa !1
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1335, i32 0, i64 %737
  store i32 942284585, i32* %738, align 4, !tbaa !1
  br label %739

; <label>:739                                     ; preds = %735
  %740 = load i32, i32* %i9, align 4, !tbaa !1
  %741 = add nsw i32 %740, 1
  store i32 %741, i32* %i9, align 4, !tbaa !1
  br label %732

; <label>:742                                     ; preds = %732
  %743 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %744 = load i32**, i32*** %743, align 8, !tbaa !5
  store i32* %2, i32** %744, align 8, !tbaa !5
  %745 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %745) #1
  %746 = bitcast [8 x %union.U0****]* %l_1723 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %746) #1
  %747 = bitcast i32* %l_1706 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %747) #1
  %748 = bitcast i32* %l_1682 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %748) #1
  %749 = bitcast [6 x i64]* %l_1648 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %749) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1576) #1
  %750 = bitcast i8***** %l_1550 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %750) #1
  %751 = bitcast i32* %l_1532 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %751) #1
  %752 = bitcast i32*** %l_1530 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %752) #1
  %753 = bitcast i64** %l_1494 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %753) #1
  %754 = bitcast %union.U0*** %l_1450 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %754) #1
  %755 = bitcast i32* %l_1434 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %755) #1
  %756 = bitcast [1 x i32]* %l_1335 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %756) #1
  %757 = bitcast i64**** %l_1309 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %757) #1
  %758 = bitcast i64*** %l_1310 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %758) #1
  %759 = bitcast i64**** %l_1308 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %759) #1
  %760 = bitcast [2 x i32]* %l_1305 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %760) #1
  br label %761

; <label>:761                                     ; preds = %742
  %762 = load i16, i16* @g_71, align 2, !tbaa !10
  %763 = zext i16 %762 to i32
  %764 = add nsw i32 %763, 1
  %765 = trunc i32 %764 to i16
  store i16 %765, i16* @g_71, align 2, !tbaa !10
  br label %691

; <label>:766                                     ; preds = %691
  store i16* @g_1722, i16** %1
  store i32 1, i32* %5
  br label %767

; <label>:767                                     ; preds = %766, %684
  %768 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %768) #1
  %769 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %769) #1
  %770 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %770) #1
  %771 = bitcast i16* %l_1669 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %771) #1
  %772 = bitcast i64* %l_1564 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %772) #1
  %773 = bitcast i32** %l_1430 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %773) #1
  %774 = bitcast i32* %l_1311 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %774) #1
  %775 = bitcast [3 x [1 x [5 x i32]]]* %l_1296 to i8*
  call void @llvm.lifetime.end(i64 60, i8* %775) #1
  %776 = bitcast [1 x [10 x [8 x i16]]]* %l_1288 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %776) #1
  %777 = bitcast i32* %l_1266 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %777) #1
  %778 = bitcast [10 x [4 x i16*]]* %l_1255 to i8*
  call void @llvm.lifetime.end(i64 320, i8* %778) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1249) #1
  %779 = bitcast [3 x [3 x [8 x i32**]]]* %l_1234 to i8*
  call void @llvm.lifetime.end(i64 576, i8* %779) #1
  %780 = bitcast i32** %l_1235 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %780) #1
  %781 = bitcast i8***** %l_1227 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %781) #1
  %782 = bitcast i32** %l_1205 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %782) #1
  %783 = bitcast i64** %l_1204 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %783) #1
  %784 = bitcast i32* %l_1202 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %784) #1
  %785 = bitcast i32* %l_1201 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %785) #1
  %786 = bitcast i64** %l_1200 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %786) #1
  %787 = bitcast [8 x i16**]* %l_1199 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %787) #1
  %788 = bitcast i8** %l_1197 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %788) #1
  %789 = bitcast [4 x i32*]* %l_1192 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %789) #1
  %790 = bitcast i32** %l_1191 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %790) #1
  %791 = load i16*, i16** %1
  ret i16* %791
}

; Function Attrs: nounwind uwtable
define internal signext i16 @func_36(i16 zeroext %p_37, i16* %p_38) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16*, align 8
  %l_39 = alloca i32*, align 8
  %l_56 = alloca i8*, align 8
  %l_64 = alloca i32*, align 8
  %l_653 = alloca i8*, align 8
  %l_654 = alloca %union.U0**, align 8
  %l_655 = alloca i64, align 8
  %l_656 = alloca [7 x [1 x [5 x i8]]], align 16
  %l_1073 = alloca i32, align 4
  %l_1074 = alloca i8, align 1
  %l_1097 = alloca %union.U0***, align 8
  %l_1098 = alloca %union.U0****, align 8
  %l_1099 = alloca i8*, align 8
  %l_1100 = alloca i8*, align 8
  %l_1101 = alloca i64*, align 8
  %l_1121 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1118 = alloca [6 x [6 x i32]], align 16
  %l_1122 = alloca i32*, align 8
  %l_1123 = alloca [6 x [3 x [7 x i32*]]], align 16
  %l_1124 = alloca i64, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %l_1133 = alloca i64, align 8
  %l_1134 = alloca i8****, align 8
  %l_1143 = alloca i32, align 4
  %l_1168 = alloca i16, align 2
  %l_1160 = alloca i16*, align 8
  %l_1170 = alloca [3 x i16], align 2
  %i4 = alloca i32, align 4
  %l_1169 = alloca i16*, align 8
  %l_1171 = alloca %union.U0*, align 8
  %l_1172 = alloca i32*, align 8
  %l_1184 = alloca i32*, align 8
  store i16 %p_37, i16* %1, align 2, !tbaa !10
  store i16* %p_38, i16** %2, align 8, !tbaa !5
  %3 = bitcast i32** %l_39 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* @g_40, i32** %l_39, align 8, !tbaa !5
  %4 = bitcast i8** %l_56 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* @g_57, i8** %l_56, align 8, !tbaa !5
  %5 = bitcast i32** %l_64 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_65, i32** %l_64, align 8, !tbaa !5
  %6 = bitcast i8** %l_653 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* @g_120, i8** %l_653, align 8, !tbaa !5
  %7 = bitcast %union.U0*** %l_654 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %union.U0** @g_127, %union.U0*** %l_654, align 8, !tbaa !5
  %8 = bitcast i64* %l_655 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64 -7928493886149207752, i64* %l_655, align 8, !tbaa !7
  %9 = bitcast [7 x [1 x [5 x i8]]]* %l_656 to i8*
  call void @llvm.lifetime.start(i64 35, i8* %9) #1
  %10 = bitcast [7 x [1 x [5 x i8]]]* %l_656 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* getelementptr inbounds ([7 x [1 x [5 x i8]]], [7 x [1 x [5 x i8]]]* @func_36.l_656, i32 0, i32 0, i32 0, i32 0), i64 35, i32 16, i1 false)
  %11 = bitcast i32* %l_1073 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 964780390, i32* %l_1073, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1074) #1
  store i8 -12, i8* %l_1074, align 1, !tbaa !9
  %12 = bitcast %union.U0**** %l_1097 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store %union.U0*** @g_676, %union.U0**** %l_1097, align 8, !tbaa !5
  %13 = bitcast %union.U0***** %l_1098 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store %union.U0**** null, %union.U0***** %l_1098, align 8, !tbaa !5
  %14 = bitcast i8** %l_1099 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i8* @g_1018, i8** %l_1099, align 8, !tbaa !5
  %15 = bitcast i8** %l_1100 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i8* @g_200, i8** %l_1100, align 8, !tbaa !5
  %16 = bitcast i64** %l_1101 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64* @g_562, i64** %l_1101, align 8, !tbaa !5
  %17 = bitcast i16* %l_1121 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #1
  store i16 5, i16* %l_1121, align 2, !tbaa !10
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32*, i32** %l_39, align 8, !tbaa !5
  store i32 -739253409, i32* %21, align 4, !tbaa !1
  %22 = load i16, i16* %1, align 2, !tbaa !10
  %23 = zext i16 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %93, label %25

; <label>:25                                      ; preds = %0
  %26 = load i8*, i8** %l_56, align 8, !tbaa !5
  %27 = load i8, i8* %26, align 1, !tbaa !9
  %28 = add i8 %27, -1
  store i8 %28, i8* %26, align 1, !tbaa !9
  %29 = load i32*, i32** %l_39, align 8, !tbaa !5
  store i32 892579862, i32* %29, align 4, !tbaa !1
  %30 = load i32*, i32** %l_64, align 8, !tbaa !5
  %31 = load i32, i32* %30, align 4, !tbaa !1
  %32 = add i32 %31, -1
  store i32 %32, i32* %30, align 4, !tbaa !1
  %33 = load i8*, i8** %l_56, align 8, !tbaa !5
  %34 = call i32 @func_60(i32 %32, i8* %33, i16* @g_27)
  %35 = icmp eq i32 892579862, %34
  %36 = zext i1 %35 to i32
  %37 = load i16*, i16** %2, align 8, !tbaa !5
  %38 = load i8*, i8** %l_653, align 8, !tbaa !5
  store i8 0, i8* %38, align 1, !tbaa !9
  %39 = load %union.U0**, %union.U0*** %l_654, align 8, !tbaa !5
  %40 = icmp ne %union.U0** @g_127, %39
  br i1 %40, label %42, label %41

; <label>:41                                      ; preds = %25
  br label %42

; <label>:42                                      ; preds = %41, %25
  %43 = phi i1 [ true, %25 ], [ true, %41 ]
  %44 = zext i1 %43 to i32
  %45 = trunc i32 %44 to i16
  %46 = load i16, i16* %1, align 2, !tbaa !10
  %47 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %45, i16 zeroext %46)
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* %1, align 2, !tbaa !10
  %50 = zext i16 %49 to i32
  %51 = call i32 @safe_mod_func_int32_t_s_s(i32 %48, i32 %50)
  %52 = load i16, i16* %1, align 2, !tbaa !10
  %53 = zext i16 %52 to i32
  %54 = load i16, i16* %1, align 2, !tbaa !10
  %55 = zext i16 %54 to i32
  %56 = call i32 @safe_div_func_uint32_t_u_u(i32 %53, i32 %55)
  %57 = zext i32 %56 to i64
  %58 = and i64 %57, 190
  %59 = trunc i64 %58 to i16
  %60 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %59, i16 zeroext 22840)
  %61 = zext i16 %60 to i64
  %62 = icmp eq i64 %61, 22506
  %63 = zext i1 %62 to i32
  %64 = load i16, i16* %1, align 2, !tbaa !10
  %65 = zext i16 %64 to i32
  %66 = load i16, i16* %1, align 2, !tbaa !10
  %67 = zext i16 %66 to i32
  %68 = icmp sge i32 %65, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* @g_461, align 4, !tbaa !1
  %71 = and i32 %69, %70
  %72 = getelementptr inbounds [7 x [1 x [5 x i8]]], [7 x [1 x [5 x i8]]]* %l_656, i32 0, i64 1
  %73 = getelementptr inbounds [1 x [5 x i8]], [1 x [5 x i8]]* %72, i32 0, i64 0
  %74 = getelementptr inbounds [5 x i8], [5 x i8]* %73, i32 0, i64 3
  %75 = load i8, i8* %74, align 1, !tbaa !9
  %76 = zext i8 %75 to i32
  %77 = call %union.U0* @func_50(i8 zeroext %28, i32 %36, i16* %37, i32 %71, i32 %76)
  %78 = load i16, i16* %1, align 2, !tbaa !10
  %79 = zext i16 %78 to i32
  %80 = call zeroext i16 @func_45(%union.U0* %77, i32 %79, i16* @g_27, %union.U0** @g_127)
  %81 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext -7, i32 4)
  %82 = zext i16 %81 to i64
  %83 = and i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext 1, i32 %84)
  %86 = sext i8 %85 to i32
  %87 = load i8, i8* @g_200, align 1, !tbaa !9
  %88 = sext i8 %87 to i32
  %89 = xor i32 %86, %88
  %90 = load i16, i16* %1, align 2, !tbaa !10
  %91 = zext i16 %90 to i32
  %92 = icmp ne i32 %91, 0
  br label %93

; <label>:93                                      ; preds = %42, %0
  %94 = phi i1 [ true, %0 ], [ %92, %42 ]
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %l_1073, align 4, !tbaa !1
  %97 = xor i32 %96, %95
  store i32 %97, i32* %l_1073, align 4, !tbaa !1
  %98 = load i8, i8* %l_1074, align 1, !tbaa !9
  %99 = sext i8 %98 to i32
  %100 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext 6, i32 6)
  %101 = sext i8 %100 to i32
  %102 = load i32*, i32** %l_64, align 8, !tbaa !5
  store i32 %101, i32* %102, align 4, !tbaa !1
  %103 = load i32*, i32** %l_39, align 8, !tbaa !5
  %104 = load i32, i32* %103, align 4, !tbaa !1
  %105 = load %union.U0*, %union.U0** @g_677, align 8, !tbaa !5
  %106 = load i32*, i32** %l_39, align 8, !tbaa !5
  %107 = load i32, i32* %106, align 4, !tbaa !1
  %108 = load i16, i16* %1, align 2, !tbaa !10
  %109 = trunc i16 %108 to i8
  %110 = load i16, i16* %1, align 2, !tbaa !10
  %111 = zext i16 %110 to i32
  %112 = load i16, i16* @g_142, align 2, !tbaa !10
  %113 = zext i16 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %161, label %115

; <label>:115                                     ; preds = %93
  %116 = load %union.U0***, %union.U0**** %l_1097, align 8, !tbaa !5
  store %union.U0*** %116, %union.U0**** %l_1097, align 8, !tbaa !5
  %117 = icmp ne %union.U0*** %116, %l_654
  %118 = zext i1 %117 to i32
  %119 = trunc i32 %118 to i8
  %120 = load i16, i16* %1, align 2, !tbaa !10
  %121 = trunc i16 %120 to i8
  %122 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %119, i8 zeroext %121)
  %123 = zext i8 %122 to i32
  %124 = load i32**, i32*** @g_444, align 8, !tbaa !5
  %125 = load i32*, i32** %124, align 8, !tbaa !5
  %126 = load i32, i32* %125, align 4, !tbaa !1
  %127 = xor i32 %123, %126
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %l_1099, align 8, !tbaa !5
  store i8 %128, i8* %129, align 1, !tbaa !9
  %130 = sext i8 %128 to i32
  %131 = load i8*, i8** %l_1100, align 8, !tbaa !5
  %132 = load i8, i8* %131, align 1, !tbaa !9
  %133 = sext i8 %132 to i32
  %134 = or i32 %133, %130
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %131, align 1, !tbaa !9
  %136 = load volatile i8*, i8** @g_289, align 8, !tbaa !5
  %137 = load volatile i8, i8* %136, align 1, !tbaa !9
  %138 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %135, i8 signext %137)
  %139 = load i8***, i8**** @g_615, align 8, !tbaa !5
  %140 = load i8**, i8*** %139, align 8, !tbaa !5
  %141 = load i8*, i8** %140, align 8, !tbaa !5
  %142 = load i8, i8* %141, align 1, !tbaa !9
  %143 = zext i8 %142 to i32
  %144 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %138, i32 %143)
  %145 = zext i8 %144 to i32
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

; <label>:147                                     ; preds = %115
  %148 = load i32*, i32** %l_39, align 8, !tbaa !5
  %149 = load i32, i32* %148, align 4, !tbaa !1
  %150 = icmp ne i32 %149, 0
  br label %151

; <label>:151                                     ; preds = %147, %115
  %152 = phi i1 [ true, %115 ], [ %150, %147 ]
  %153 = zext i1 %152 to i32
  %154 = load i32*, i32** %l_39, align 8, !tbaa !5
  %155 = load i32, i32* %154, align 4, !tbaa !1
  %156 = sext i32 %155 to i64
  %157 = load i64*, i64** %l_1101, align 8, !tbaa !5
  store i64 %156, i64* %157, align 8, !tbaa !7
  %158 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_745, i32 0, i32 0), align 4, !tbaa !1
  %159 = sext i32 %158 to i64
  %160 = icmp ugt i64 %156, %159
  br label %161

; <label>:161                                     ; preds = %151, %93
  %162 = phi i1 [ true, %93 ], [ %160, %151 ]
  %163 = zext i1 %162 to i32
  %164 = sext i32 %163 to i64
  %165 = call i64 @safe_mod_func_uint64_t_u_u(i64 %164, i64 2506908958513456233)
  %166 = load i32, i32* %l_1073, align 4, !tbaa !1
  %167 = sext i32 %166 to i64
  %168 = and i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %l_1073, align 4, !tbaa !1
  %170 = load i16, i16* %1, align 2, !tbaa !10
  %171 = zext i16 %170 to i32
  %172 = icmp ne i32 %169, %171
  %173 = zext i1 %172 to i32
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* @g_1102, align 8, !tbaa !7
  %176 = icmp sge i64 %174, %175
  %177 = zext i1 %176 to i32
  %178 = load i32*, i32** %l_39, align 8, !tbaa !5
  %179 = load i32, i32* %178, align 4, !tbaa !1
  %180 = icmp sge i32 %177, %179
  %181 = zext i1 %180 to i32
  %182 = icmp eq i32 %111, %181
  %183 = zext i1 %182 to i32
  %184 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %109, i32 %183)
  %185 = zext i8 %184 to i32
  %186 = load i32**, i32*** @g_444, align 8, !tbaa !5
  %187 = load i32*, i32** %186, align 8, !tbaa !5
  %188 = load i32, i32* %187, align 4, !tbaa !1
  %189 = icmp slt i32 %185, %188
  %190 = zext i1 %189 to i32
  %191 = trunc i32 %190 to i8
  %192 = load i16, i16* %1, align 2, !tbaa !10
  %193 = trunc i16 %192 to i8
  %194 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %191, i8 zeroext %193)
  %195 = zext i8 %194 to i32
  %196 = icmp slt i32 %107, %195
  %197 = zext i1 %196 to i32
  %198 = sext i32 %197 to i64
  %199 = icmp ne i64 %198, -7431177077268481820
  %200 = zext i1 %199 to i32
  %201 = load i8*, i8** %l_56, align 8, !tbaa !5
  %202 = load i8, i8* %201, align 1, !tbaa !9
  %203 = zext i8 %202 to i32
  %204 = or i32 %203, %200
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %201, align 1, !tbaa !9
  %206 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %205, i8 zeroext -127)
  %207 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %208 = load i32**, i32*** %207, align 8, !tbaa !5
  %209 = icmp ne i32** %208, %l_39
  %210 = zext i1 %209 to i32
  %211 = trunc i32 %210 to i16
  %212 = load i16, i16* %1, align 2, !tbaa !10
  %213 = zext i16 %212 to i32
  %214 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %211, i32 %213)
  %215 = load i16, i16* %1, align 2, !tbaa !10
  %216 = zext i16 %215 to i32
  %217 = call i32 @safe_div_func_uint32_t_u_u(i32 %101, i32 %216)
  %218 = xor i32 %99, %217
  %219 = load i32*, i32** %l_39, align 8, !tbaa !5
  %220 = load i32, i32* %219, align 4, !tbaa !1
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %474

; <label>:222                                     ; preds = %161
  %223 = bitcast [6 x [6 x i32]]* %l_1118 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %223) #1
  %224 = bitcast [6 x [6 x i32]]* %l_1118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %224, i8* bitcast ([6 x [6 x i32]]* @func_36.l_1118 to i8*), i64 144, i32 16, i1 false)
  %225 = bitcast i32** %l_1122 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %225) #1
  store i32* null, i32** %l_1122, align 8, !tbaa !5
  %226 = bitcast [6 x [3 x [7 x i32*]]]* %l_1123 to i8*
  call void @llvm.lifetime.start(i64 1008, i8* %226) #1
  %227 = getelementptr inbounds [6 x [3 x [7 x i32*]]], [6 x [3 x [7 x i32*]]]* %l_1123, i64 0, i64 0
  %228 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %227, i64 0, i64 0
  %229 = bitcast [7 x i32*]* %228 to i8*
  call void @llvm.memset.p0i8.i64(i8* %229, i8 0, i64 56, i32 8, i1 false)
  %230 = getelementptr inbounds [7 x i32*], [7 x i32*]* %228, i64 0, i64 0
  %231 = getelementptr inbounds i32*, i32** %230, i64 1
  store i32* %l_1073, i32** %231, !tbaa !5
  %232 = getelementptr inbounds i32*, i32** %231, i64 1
  %233 = getelementptr inbounds i32*, i32** %232, i64 1
  %234 = getelementptr inbounds i32*, i32** %233, i64 1
  %235 = getelementptr inbounds i32*, i32** %234, i64 1
  %236 = getelementptr inbounds i32*, i32** %235, i64 1
  %237 = getelementptr inbounds [7 x i32*], [7 x i32*]* %228, i64 1
  %238 = getelementptr inbounds [7 x i32*], [7 x i32*]* %237, i64 0, i64 0
  store i32* %l_1073, i32** %238, !tbaa !5
  %239 = getelementptr inbounds i32*, i32** %238, i64 1
  store i32* @g_124, i32** %239, !tbaa !5
  %240 = getelementptr inbounds i32*, i32** %239, i64 1
  store i32* %l_1073, i32** %240, !tbaa !5
  %241 = getelementptr inbounds i32*, i32** %240, i64 1
  store i32* %l_1073, i32** %241, !tbaa !5
  %242 = getelementptr inbounds i32*, i32** %241, i64 1
  store i32* @g_124, i32** %242, !tbaa !5
  %243 = getelementptr inbounds i32*, i32** %242, i64 1
  store i32* @g_124, i32** %243, !tbaa !5
  %244 = getelementptr inbounds i32*, i32** %243, i64 1
  store i32* @g_124, i32** %244, !tbaa !5
  %245 = getelementptr inbounds [7 x i32*], [7 x i32*]* %237, i64 1
  %246 = getelementptr inbounds [7 x i32*], [7 x i32*]* %245, i64 0, i64 0
  store i32* %l_1073, i32** %246, !tbaa !5
  %247 = getelementptr inbounds i32*, i32** %246, i64 1
  store i32* %l_1073, i32** %247, !tbaa !5
  %248 = getelementptr inbounds i32*, i32** %247, i64 1
  store i32* null, i32** %248, !tbaa !5
  %249 = getelementptr inbounds i32*, i32** %248, i64 1
  store i32* @g_124, i32** %249, !tbaa !5
  %250 = getelementptr inbounds i32*, i32** %249, i64 1
  store i32* null, i32** %250, !tbaa !5
  %251 = getelementptr inbounds i32*, i32** %250, i64 1
  store i32* null, i32** %251, !tbaa !5
  %252 = getelementptr inbounds i32*, i32** %251, i64 1
  store i32* %l_1073, i32** %252, !tbaa !5
  %253 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %227, i64 1
  %254 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %253, i64 0, i64 0
  %255 = getelementptr inbounds [7 x i32*], [7 x i32*]* %254, i64 0, i64 0
  store i32* %l_1073, i32** %255, !tbaa !5
  %256 = getelementptr inbounds i32*, i32** %255, i64 1
  store i32* %l_1073, i32** %256, !tbaa !5
  %257 = getelementptr inbounds i32*, i32** %256, i64 1
  store i32* null, i32** %257, !tbaa !5
  %258 = getelementptr inbounds i32*, i32** %257, i64 1
  store i32* @g_124, i32** %258, !tbaa !5
  %259 = getelementptr inbounds i32*, i32** %258, i64 1
  store i32* @g_124, i32** %259, !tbaa !5
  %260 = getelementptr inbounds i32*, i32** %259, i64 1
  store i32* @g_124, i32** %260, !tbaa !5
  %261 = getelementptr inbounds i32*, i32** %260, i64 1
  store i32* null, i32** %261, !tbaa !5
  %262 = getelementptr inbounds [7 x i32*], [7 x i32*]* %254, i64 1
  %263 = getelementptr inbounds [7 x i32*], [7 x i32*]* %262, i64 0, i64 0
  store i32* null, i32** %263, !tbaa !5
  %264 = getelementptr inbounds i32*, i32** %263, i64 1
  store i32* null, i32** %264, !tbaa !5
  %265 = getelementptr inbounds i32*, i32** %264, i64 1
  store i32* null, i32** %265, !tbaa !5
  %266 = getelementptr inbounds i32*, i32** %265, i64 1
  store i32* null, i32** %266, !tbaa !5
  %267 = getelementptr inbounds i32*, i32** %266, i64 1
  store i32* %l_1073, i32** %267, !tbaa !5
  %268 = getelementptr inbounds i32*, i32** %267, i64 1
  store i32* null, i32** %268, !tbaa !5
  %269 = getelementptr inbounds i32*, i32** %268, i64 1
  store i32* @g_124, i32** %269, !tbaa !5
  %270 = getelementptr inbounds [7 x i32*], [7 x i32*]* %262, i64 1
  %271 = getelementptr inbounds [7 x i32*], [7 x i32*]* %270, i64 0, i64 0
  store i32* null, i32** %271, !tbaa !5
  %272 = getelementptr inbounds i32*, i32** %271, i64 1
  store i32* %l_1073, i32** %272, !tbaa !5
  %273 = getelementptr inbounds i32*, i32** %272, i64 1
  store i32* @g_124, i32** %273, !tbaa !5
  %274 = getelementptr inbounds i32*, i32** %273, i64 1
  store i32* %l_1073, i32** %274, !tbaa !5
  %275 = getelementptr inbounds i32*, i32** %274, i64 1
  store i32* null, i32** %275, !tbaa !5
  %276 = getelementptr inbounds i32*, i32** %275, i64 1
  store i32* @g_124, i32** %276, !tbaa !5
  %277 = getelementptr inbounds i32*, i32** %276, i64 1
  store i32* @g_124, i32** %277, !tbaa !5
  %278 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %253, i64 1
  %279 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %278, i64 0, i64 0
  %280 = getelementptr inbounds [7 x i32*], [7 x i32*]* %279, i64 0, i64 0
  store i32* @g_124, i32** %280, !tbaa !5
  %281 = getelementptr inbounds i32*, i32** %280, i64 1
  store i32* %l_1073, i32** %281, !tbaa !5
  %282 = getelementptr inbounds i32*, i32** %281, i64 1
  store i32* %l_1073, i32** %282, !tbaa !5
  %283 = getelementptr inbounds i32*, i32** %282, i64 1
  store i32* %l_1073, i32** %283, !tbaa !5
  %284 = getelementptr inbounds i32*, i32** %283, i64 1
  store i32* %l_1073, i32** %284, !tbaa !5
  %285 = getelementptr inbounds i32*, i32** %284, i64 1
  store i32* %l_1073, i32** %285, !tbaa !5
  %286 = getelementptr inbounds i32*, i32** %285, i64 1
  store i32* %l_1073, i32** %286, !tbaa !5
  %287 = getelementptr inbounds [7 x i32*], [7 x i32*]* %279, i64 1
  %288 = getelementptr inbounds [7 x i32*], [7 x i32*]* %287, i64 0, i64 0
  store i32* null, i32** %288, !tbaa !5
  %289 = getelementptr inbounds i32*, i32** %288, i64 1
  store i32* @g_124, i32** %289, !tbaa !5
  %290 = getelementptr inbounds i32*, i32** %289, i64 1
  store i32* @g_124, i32** %290, !tbaa !5
  %291 = getelementptr inbounds i32*, i32** %290, i64 1
  store i32* null, i32** %291, !tbaa !5
  %292 = getelementptr inbounds i32*, i32** %291, i64 1
  store i32* @g_124, i32** %292, !tbaa !5
  %293 = getelementptr inbounds i32*, i32** %292, i64 1
  store i32* %l_1073, i32** %293, !tbaa !5
  %294 = getelementptr inbounds i32*, i32** %293, i64 1
  store i32* @g_124, i32** %294, !tbaa !5
  %295 = getelementptr inbounds [7 x i32*], [7 x i32*]* %287, i64 1
  %296 = getelementptr inbounds [7 x i32*], [7 x i32*]* %295, i64 0, i64 0
  store i32* @g_124, i32** %296, !tbaa !5
  %297 = getelementptr inbounds i32*, i32** %296, i64 1
  store i32* %l_1073, i32** %297, !tbaa !5
  %298 = getelementptr inbounds i32*, i32** %297, i64 1
  store i32* null, i32** %298, !tbaa !5
  %299 = getelementptr inbounds i32*, i32** %298, i64 1
  store i32* %l_1073, i32** %299, !tbaa !5
  %300 = getelementptr inbounds i32*, i32** %299, i64 1
  store i32* null, i32** %300, !tbaa !5
  %301 = getelementptr inbounds i32*, i32** %300, i64 1
  store i32* @g_124, i32** %301, !tbaa !5
  %302 = getelementptr inbounds i32*, i32** %301, i64 1
  store i32* null, i32** %302, !tbaa !5
  %303 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %278, i64 1
  %304 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %303, i64 0, i64 0
  %305 = getelementptr inbounds [7 x i32*], [7 x i32*]* %304, i64 0, i64 0
  store i32* null, i32** %305, !tbaa !5
  %306 = getelementptr inbounds i32*, i32** %305, i64 1
  store i32* @g_124, i32** %306, !tbaa !5
  %307 = getelementptr inbounds i32*, i32** %306, i64 1
  store i32* @g_124, i32** %307, !tbaa !5
  %308 = getelementptr inbounds i32*, i32** %307, i64 1
  store i32* null, i32** %308, !tbaa !5
  %309 = getelementptr inbounds i32*, i32** %308, i64 1
  store i32* @g_124, i32** %309, !tbaa !5
  %310 = getelementptr inbounds i32*, i32** %309, i64 1
  store i32* @g_124, i32** %310, !tbaa !5
  %311 = getelementptr inbounds i32*, i32** %310, i64 1
  store i32* null, i32** %311, !tbaa !5
  %312 = getelementptr inbounds [7 x i32*], [7 x i32*]* %304, i64 1
  %313 = getelementptr inbounds [7 x i32*], [7 x i32*]* %312, i64 0, i64 0
  store i32* null, i32** %313, !tbaa !5
  %314 = getelementptr inbounds i32*, i32** %313, i64 1
  store i32* null, i32** %314, !tbaa !5
  %315 = getelementptr inbounds i32*, i32** %314, i64 1
  store i32* null, i32** %315, !tbaa !5
  %316 = getelementptr inbounds i32*, i32** %315, i64 1
  store i32* %l_1073, i32** %316, !tbaa !5
  %317 = getelementptr inbounds i32*, i32** %316, i64 1
  store i32* null, i32** %317, !tbaa !5
  %318 = getelementptr inbounds i32*, i32** %317, i64 1
  store i32* @g_124, i32** %318, !tbaa !5
  %319 = getelementptr inbounds i32*, i32** %318, i64 1
  store i32* null, i32** %319, !tbaa !5
  %320 = getelementptr inbounds [7 x i32*], [7 x i32*]* %312, i64 1
  %321 = getelementptr inbounds [7 x i32*], [7 x i32*]* %320, i64 0, i64 0
  store i32* %l_1073, i32** %321, !tbaa !5
  %322 = getelementptr inbounds i32*, i32** %321, i64 1
  store i32* @g_124, i32** %322, !tbaa !5
  %323 = getelementptr inbounds i32*, i32** %322, i64 1
  store i32* %l_1073, i32** %323, !tbaa !5
  %324 = getelementptr inbounds i32*, i32** %323, i64 1
  store i32* %l_1073, i32** %324, !tbaa !5
  %325 = getelementptr inbounds i32*, i32** %324, i64 1
  store i32* null, i32** %325, !tbaa !5
  %326 = getelementptr inbounds i32*, i32** %325, i64 1
  store i32* @g_124, i32** %326, !tbaa !5
  %327 = getelementptr inbounds i32*, i32** %326, i64 1
  store i32* @g_124, i32** %327, !tbaa !5
  %328 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %303, i64 1
  %329 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %328, i64 0, i64 0
  %330 = getelementptr inbounds [7 x i32*], [7 x i32*]* %329, i64 0, i64 0
  store i32* %l_1073, i32** %330, !tbaa !5
  %331 = getelementptr inbounds i32*, i32** %330, i64 1
  store i32* null, i32** %331, !tbaa !5
  %332 = getelementptr inbounds i32*, i32** %331, i64 1
  store i32* null, i32** %332, !tbaa !5
  %333 = getelementptr inbounds i32*, i32** %332, i64 1
  store i32* null, i32** %333, !tbaa !5
  %334 = getelementptr inbounds i32*, i32** %333, i64 1
  store i32* null, i32** %334, !tbaa !5
  %335 = getelementptr inbounds i32*, i32** %334, i64 1
  store i32* %l_1073, i32** %335, !tbaa !5
  %336 = getelementptr inbounds i32*, i32** %335, i64 1
  store i32* %l_1073, i32** %336, !tbaa !5
  %337 = getelementptr inbounds [7 x i32*], [7 x i32*]* %329, i64 1
  %338 = getelementptr inbounds [7 x i32*], [7 x i32*]* %337, i64 0, i64 0
  store i32* %l_1073, i32** %338, !tbaa !5
  %339 = getelementptr inbounds i32*, i32** %338, i64 1
  store i32* %l_1073, i32** %339, !tbaa !5
  %340 = getelementptr inbounds i32*, i32** %339, i64 1
  store i32* @g_124, i32** %340, !tbaa !5
  %341 = getelementptr inbounds i32*, i32** %340, i64 1
  store i32* @g_124, i32** %341, !tbaa !5
  %342 = getelementptr inbounds i32*, i32** %341, i64 1
  store i32* @g_124, i32** %342, !tbaa !5
  %343 = getelementptr inbounds i32*, i32** %342, i64 1
  store i32* @g_124, i32** %343, !tbaa !5
  %344 = getelementptr inbounds i32*, i32** %343, i64 1
  store i32* @g_124, i32** %344, !tbaa !5
  %345 = getelementptr inbounds [7 x i32*], [7 x i32*]* %337, i64 1
  %346 = getelementptr inbounds [7 x i32*], [7 x i32*]* %345, i64 0, i64 0
  store i32* null, i32** %346, !tbaa !5
  %347 = getelementptr inbounds i32*, i32** %346, i64 1
  store i32* @g_124, i32** %347, !tbaa !5
  %348 = getelementptr inbounds i32*, i32** %347, i64 1
  store i32* null, i32** %348, !tbaa !5
  %349 = getelementptr inbounds i32*, i32** %348, i64 1
  store i32* @g_124, i32** %349, !tbaa !5
  %350 = getelementptr inbounds i32*, i32** %349, i64 1
  store i32* %l_1073, i32** %350, !tbaa !5
  %351 = getelementptr inbounds i32*, i32** %350, i64 1
  store i32* @g_124, i32** %351, !tbaa !5
  %352 = getelementptr inbounds i32*, i32** %351, i64 1
  store i32* @g_124, i32** %352, !tbaa !5
  %353 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %328, i64 1
  %354 = getelementptr inbounds [3 x [7 x i32*]], [3 x [7 x i32*]]* %353, i64 0, i64 0
  %355 = getelementptr inbounds [7 x i32*], [7 x i32*]* %354, i64 0, i64 0
  store i32* @g_124, i32** %355, !tbaa !5
  %356 = getelementptr inbounds i32*, i32** %355, i64 1
  store i32* %l_1073, i32** %356, !tbaa !5
  %357 = getelementptr inbounds i32*, i32** %356, i64 1
  store i32* @g_124, i32** %357, !tbaa !5
  %358 = getelementptr inbounds i32*, i32** %357, i64 1
  store i32* %l_1073, i32** %358, !tbaa !5
  %359 = getelementptr inbounds i32*, i32** %358, i64 1
  store i32* @g_124, i32** %359, !tbaa !5
  %360 = getelementptr inbounds i32*, i32** %359, i64 1
  store i32* @g_124, i32** %360, !tbaa !5
  %361 = getelementptr inbounds i32*, i32** %360, i64 1
  store i32* null, i32** %361, !tbaa !5
  %362 = getelementptr inbounds [7 x i32*], [7 x i32*]* %354, i64 1
  %363 = getelementptr inbounds [7 x i32*], [7 x i32*]* %362, i64 0, i64 0
  store i32* @g_124, i32** %363, !tbaa !5
  %364 = getelementptr inbounds i32*, i32** %363, i64 1
  store i32* null, i32** %364, !tbaa !5
  %365 = getelementptr inbounds i32*, i32** %364, i64 1
  store i32* %l_1073, i32** %365, !tbaa !5
  %366 = getelementptr inbounds i32*, i32** %365, i64 1
  store i32* null, i32** %366, !tbaa !5
  %367 = getelementptr inbounds i32*, i32** %366, i64 1
  store i32* %l_1073, i32** %367, !tbaa !5
  %368 = getelementptr inbounds i32*, i32** %367, i64 1
  store i32* @g_124, i32** %368, !tbaa !5
  %369 = getelementptr inbounds i32*, i32** %368, i64 1
  store i32* %l_1073, i32** %369, !tbaa !5
  %370 = getelementptr inbounds [7 x i32*], [7 x i32*]* %362, i64 1
  %371 = getelementptr inbounds [7 x i32*], [7 x i32*]* %370, i64 0, i64 0
  store i32* @g_124, i32** %371, !tbaa !5
  %372 = getelementptr inbounds i32*, i32** %371, i64 1
  store i32* @g_124, i32** %372, !tbaa !5
  %373 = getelementptr inbounds i32*, i32** %372, i64 1
  store i32* @g_124, i32** %373, !tbaa !5
  %374 = getelementptr inbounds i32*, i32** %373, i64 1
  store i32* null, i32** %374, !tbaa !5
  %375 = getelementptr inbounds i32*, i32** %374, i64 1
  store i32* @g_124, i32** %375, !tbaa !5
  %376 = getelementptr inbounds i32*, i32** %375, i64 1
  store i32* %l_1073, i32** %376, !tbaa !5
  %377 = getelementptr inbounds i32*, i32** %376, i64 1
  store i32* @g_124, i32** %377, !tbaa !5
  %378 = bitcast i64* %l_1124 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %378) #1
  store i64 5459914731805389694, i64* %l_1124, align 8, !tbaa !7
  %379 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %379) #1
  %380 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %380) #1
  %381 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %381) #1
  %382 = load i16, i16* %1, align 2, !tbaa !10
  %383 = trunc i16 %382 to i8
  %384 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %383, i32 2)
  %385 = sext i8 %384 to i32
  %386 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %l_1118, i32 0, i64 4
  %387 = getelementptr inbounds [6 x i32], [6 x i32]* %386, i32 0, i64 3
  %388 = load i32, i32* %387, align 4, !tbaa !1
  %389 = trunc i32 %388 to i16
  %390 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %389, i16 signext -9)
  %391 = sext i16 %390 to i32
  %392 = load i32*, i32** @g_152, align 8, !tbaa !5
  %393 = load i32, i32* %392, align 4, !tbaa !1
  %394 = xor i32 %393, %391
  store i32 %394, i32* %392, align 4, !tbaa !1
  %395 = load i8, i8* @g_200, align 1, !tbaa !9
  %396 = sext i8 %395 to i32
  %397 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %l_1118, i32 0, i64 3
  %398 = getelementptr inbounds [6 x i32], [6 x i32]* %397, i32 0, i64 2
  %399 = load i32, i32* %398, align 4, !tbaa !1
  %400 = load i16, i16* %1, align 2, !tbaa !10
  %401 = zext i16 %400 to i32
  %402 = load i32*, i32** %l_39, align 8, !tbaa !5
  %403 = load i32, i32* %402, align 4, !tbaa !1
  %404 = and i32 %403, %401
  store i32 %404, i32* %402, align 4, !tbaa !1
  %405 = and i32 %399, %404
  %406 = call i32 @safe_mod_func_uint32_t_u_u(i32 0, i32 %405)
  %407 = icmp eq i32 %396, %406
  %408 = zext i1 %407 to i32
  %409 = icmp sge i32 %394, %408
  %410 = zext i1 %409 to i32
  %411 = load volatile i8, i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @g_290, i32 0, i64 0, i64 0), align 1, !tbaa !9
  %412 = sext i8 %411 to i32
  %413 = icmp ne i32 %410, %412
  %414 = xor i1 %413, true
  %415 = zext i1 %414 to i32
  %416 = trunc i32 %415 to i8
  %417 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %416, i32 0)
  %418 = sext i8 %417 to i64
  %419 = or i64 %418, -1
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %425, label %421

; <label>:421                                     ; preds = %222
  %422 = load i16, i16* %1, align 2, !tbaa !10
  %423 = zext i16 %422 to i32
  %424 = icmp ne i32 %423, 0
  br label %425

; <label>:425                                     ; preds = %421, %222
  %426 = phi i1 [ true, %222 ], [ %424, %421 ]
  %427 = zext i1 %426 to i32
  %428 = sext i32 %427 to i64
  %429 = icmp uge i64 %428, 0
  %430 = zext i1 %429 to i32
  %431 = load i16, i16* %1, align 2, !tbaa !10
  %432 = trunc i16 %431 to i8
  %433 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %l_1118, i32 0, i64 4
  %434 = getelementptr inbounds [6 x i32], [6 x i32]* %433, i32 0, i64 3
  %435 = load i32, i32* %434, align 4, !tbaa !1
  %436 = trunc i32 %435 to i8
  %437 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %432, i8 zeroext %436)
  %438 = zext i8 %437 to i16
  %439 = load i16, i16* %l_1121, align 2, !tbaa !10
  %440 = zext i16 %439 to i32
  %441 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %438, i32 %440)
  %442 = sext i16 %441 to i64
  %443 = icmp sge i64 %442, 1
  %444 = zext i1 %443 to i32
  %445 = xor i32 %385, %444
  %446 = sext i32 %445 to i64
  %447 = icmp slt i64 125, %446
  %448 = zext i1 %447 to i32
  %449 = sext i32 %448 to i64
  %450 = icmp sgt i64 %449, 64159
  %451 = zext i1 %450 to i32
  %452 = load i8, i8* getelementptr inbounds ([4 x [5 x [8 x i8]]], [4 x [5 x [8 x i8]]]* @g_466, i32 0, i64 2, i64 3, i64 4), align 1, !tbaa !9
  %453 = sext i8 %452 to i32
  %454 = icmp eq i32 %451, %453
  %455 = zext i1 %454 to i32
  %456 = getelementptr inbounds [7 x [1 x [5 x i8]]], [7 x [1 x [5 x i8]]]* %l_656, i32 0, i64 0
  %457 = getelementptr inbounds [1 x [5 x i8]], [1 x [5 x i8]]* %456, i32 0, i64 0
  %458 = getelementptr inbounds [5 x i8], [5 x i8]* %457, i32 0, i64 4
  %459 = load i8, i8* %458, align 1, !tbaa !9
  %460 = zext i8 %459 to i32
  %461 = icmp sle i32 %455, %460
  %462 = zext i1 %461 to i32
  %463 = load i16, i16* %l_1121, align 2, !tbaa !10
  %464 = zext i16 %463 to i32
  %465 = call i32 @safe_div_func_uint32_t_u_u(i32 %462, i32 %464)
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %l_1124, align 8, !tbaa !7
  %467 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %467) #1
  %468 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %468) #1
  %469 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %469) #1
  %470 = bitcast i64* %l_1124 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %470) #1
  %471 = bitcast [6 x [3 x [7 x i32*]]]* %l_1123 to i8*
  call void @llvm.lifetime.end(i64 1008, i8* %471) #1
  %472 = bitcast i32** %l_1122 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %472) #1
  %473 = bitcast [6 x [6 x i32]]* %l_1118 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %473) #1
  br label %701

; <label>:474                                     ; preds = %161
  %475 = bitcast i64* %l_1133 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %475) #1
  store i64 -4545057753472721064, i64* %l_1133, align 8, !tbaa !7
  %476 = bitcast i8***** %l_1134 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %476) #1
  store i8**** @g_615, i8***** %l_1134, align 8, !tbaa !5
  %477 = bitcast i32* %l_1143 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %477) #1
  store i32 1, i32* %l_1143, align 4, !tbaa !1
  %478 = bitcast i16* %l_1168 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %478) #1
  store i16 0, i16* %l_1168, align 2, !tbaa !10
  %479 = load i64, i64* %l_1133, align 8, !tbaa !7
  %480 = trunc i64 %479 to i32
  %481 = call i32 @safe_add_func_int32_t_s_s(i32 1142211618, i32 %480)
  %482 = sext i32 %481 to i64
  %483 = load i8****, i8***** %l_1134, align 8, !tbaa !5
  %484 = load i8*****, i8****** @g_1047, align 8, !tbaa !5
  %485 = load i8****, i8***** %484, align 8, !tbaa !5
  %486 = icmp ne i8**** %483, %485
  %487 = zext i1 %486 to i32
  %488 = sext i32 %487 to i64
  %489 = xor i64 %488, 1
  %490 = icmp uge i64 %482, %489
  %491 = zext i1 %490 to i32
  %492 = trunc i32 %491 to i8
  %493 = load i32*, i32** %l_39, align 8, !tbaa !5
  %494 = load i32, i32* %493, align 4, !tbaa !1
  %495 = trunc i32 %494 to i16
  %496 = load i16, i16* %1, align 2, !tbaa !10
  %497 = add i16 %496, -1
  store i16 %497, i16* %1, align 2, !tbaa !10
  %498 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %495, i16 signext %497)
  %499 = sext i16 %498 to i32
  %500 = load i64, i64* %l_1133, align 8, !tbaa !7
  %501 = and i64 1, %500
  %502 = trunc i64 %501 to i32
  %503 = call i32 @safe_div_func_int32_t_s_s(i32 %499, i32 %502)
  %504 = sext i32 %503 to i64
  %505 = icmp eq i64 52738500, %504
  %506 = zext i1 %505 to i32
  %507 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %492, i32 %506)
  %508 = load i8, i8* getelementptr inbounds ([10 x [6 x [4 x i8]]], [10 x [6 x [4 x i8]]]* @g_978, i32 0, i64 1, i64 0, i64 0), align 1, !tbaa !9
  %509 = zext i8 %508 to i32
  %510 = call i32 @safe_sub_func_int32_t_s_s(i32 -3, i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = load i8****, i8***** %l_1134, align 8, !tbaa !5
  %513 = load i8***, i8**** %512, align 8, !tbaa !5
  %514 = load i8**, i8*** %513, align 8, !tbaa !5
  %515 = load i8*, i8** %514, align 8, !tbaa !5
  store i8 %511, i8* %515, align 1, !tbaa !9
  %516 = zext i8 %511 to i32
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %524, label %518

; <label>:518                                     ; preds = %474
  %519 = load i8**, i8*** @g_288, align 8, !tbaa !5
  %520 = load volatile i8*, i8** %519, align 8, !tbaa !5
  %521 = load volatile i8, i8* %520, align 1, !tbaa !9
  %522 = sext i8 %521 to i32
  %523 = icmp ne i32 %522, 0
  br label %524

; <label>:524                                     ; preds = %518, %474
  %525 = phi i1 [ true, %474 ], [ %523, %518 ]
  %526 = zext i1 %525 to i32
  %527 = load i32*, i32** %l_39, align 8, !tbaa !5
  store i32 %526, i32* %527, align 4, !tbaa !1
  %528 = sext i32 %526 to i64
  %529 = load i64, i64* %l_1133, align 8, !tbaa !7
  %530 = icmp ule i64 %528, %529
  %531 = zext i1 %530 to i32
  %532 = load i32*, i32** %l_39, align 8, !tbaa !5
  %533 = load i32, i32* %532, align 4, !tbaa !1
  %534 = sext i32 %533 to i64
  %535 = load i64*, i64** %l_1101, align 8, !tbaa !5
  %536 = load i64, i64* %535, align 8, !tbaa !7
  %537 = and i64 %536, %534
  store i64 %537, i64* %535, align 8, !tbaa !7
  %538 = load i64, i64* %l_1133, align 8, !tbaa !7
  %539 = trunc i64 %538 to i8
  %540 = load i64, i64* %l_1133, align 8, !tbaa !7
  %541 = trunc i64 %540 to i8
  %542 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %539, i8 signext %541)
  %543 = sext i8 %542 to i64
  %544 = load i64, i64* %l_1133, align 8, !tbaa !7
  %545 = and i64 %543, %544
  %546 = icmp ugt i64 %545, -7928493886149207752
  br i1 %546, label %547, label %609

; <label>:547                                     ; preds = %524
  %548 = bitcast i16** %l_1160 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %548) #1
  store i16* @g_559, i16** %l_1160, align 8, !tbaa !5
  %549 = load i16, i16* %1, align 2, !tbaa !10
  %550 = zext i16 %549 to i32
  %551 = load i32, i32* %l_1143, align 4, !tbaa !1
  %552 = and i32 %551, %550
  store i32 %552, i32* %l_1143, align 4, !tbaa !1
  %553 = trunc i32 %552 to i16
  %554 = load i16, i16* %1, align 2, !tbaa !10
  %555 = zext i16 %554 to i32
  %556 = load i16*, i16** @g_141, align 8, !tbaa !5
  %557 = load i16, i16* %556, align 2, !tbaa !10
  %558 = load i16, i16* %1, align 2, !tbaa !10
  %559 = trunc i16 %558 to i8
  %560 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %559, i8 signext 1)
  %561 = load i16, i16* %1, align 2, !tbaa !10
  %562 = trunc i16 %561 to i8
  %563 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %560, i8 zeroext %562)
  %564 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext 54, i8 signext -73)
  %565 = sext i8 %564 to i64
  %566 = xor i64 %565, -4
  %567 = trunc i64 %566 to i16
  %568 = load i16*, i16** %l_1160, align 8, !tbaa !5
  store i16 %567, i16* %568, align 2, !tbaa !10
  %569 = load i32*, i32** %l_39, align 8, !tbaa !5
  %570 = load i32, i32* %569, align 4, !tbaa !1
  %571 = trunc i32 %570 to i16
  %572 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %567, i16 signext %571)
  %573 = sext i16 %572 to i32
  %574 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %563, i32 %573)
  %575 = zext i8 %574 to i32
  %576 = load i16*, i16** @g_141, align 8, !tbaa !5
  %577 = load i16, i16* %576, align 2, !tbaa !10
  %578 = zext i16 %577 to i32
  %579 = icmp slt i32 %575, %578
  %580 = zext i1 %579 to i32
  %581 = trunc i32 %580 to i16
  %582 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %557, i16 zeroext %581)
  %583 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext 5, i16 zeroext %582)
  %584 = zext i16 %583 to i32
  %585 = load i32*, i32** %l_39, align 8, !tbaa !5
  %586 = load i32, i32* %585, align 4, !tbaa !1
  %587 = and i32 %584, %586
  %588 = icmp sge i32 %555, %587
  %589 = zext i1 %588 to i32
  %590 = load i16, i16* %1, align 2, !tbaa !10
  %591 = zext i16 %590 to i32
  %592 = xor i32 %589, %591
  %593 = trunc i32 %592 to i16
  %594 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %553, i16 zeroext %593)
  %595 = zext i16 %594 to i32
  %596 = load i16*, i16** @g_141, align 8, !tbaa !5
  %597 = load i16, i16* %596, align 2, !tbaa !10
  %598 = zext i16 %597 to i32
  %599 = icmp sge i32 %595, %598
  %600 = zext i1 %599 to i32
  %601 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %602 = load i32**, i32*** %601, align 8, !tbaa !5
  store i32* null, i32** %602, align 8, !tbaa !5
  %603 = load i16, i16* %1, align 2, !tbaa !10
  %604 = zext i16 %603 to i32
  %605 = load i32*, i32** %l_39, align 8, !tbaa !5
  %606 = load i32, i32* %605, align 4, !tbaa !1
  %607 = xor i32 %606, %604
  store i32 %607, i32* %605, align 4, !tbaa !1
  %608 = bitcast i16** %l_1160 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %608) #1
  br label %696

; <label>:609                                     ; preds = %524
  %610 = bitcast [3 x i16]* %l_1170 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %610) #1
  %611 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %611) #1
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %612

; <label>:612                                     ; preds = %619, %609
  %613 = load i32, i32* %i4, align 4, !tbaa !1
  %614 = icmp slt i32 %613, 3
  br i1 %614, label %615, label %622

; <label>:615                                     ; preds = %612
  %616 = load i32, i32* %i4, align 4, !tbaa !1
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [3 x i16], [3 x i16]* %l_1170, i32 0, i64 %617
  store i16 0, i16* %618, align 2, !tbaa !10
  br label %619

; <label>:619                                     ; preds = %615
  %620 = load i32, i32* %i4, align 4, !tbaa !1
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %i4, align 4, !tbaa !1
  br label %612

; <label>:622                                     ; preds = %612
  store i16 0, i16* @g_71, align 2, !tbaa !10
  br label %623

; <label>:623                                     ; preds = %688, %622
  %624 = load i16, i16* @g_71, align 2, !tbaa !10
  %625 = zext i16 %624 to i32
  %626 = icmp ne i32 %625, 54
  br i1 %626, label %627, label %693

; <label>:627                                     ; preds = %623
  %628 = bitcast i16** %l_1169 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %628) #1
  store i16* %l_1121, i16** %l_1169, align 8, !tbaa !5
  %629 = bitcast %union.U0** %l_1171 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %629) #1
  store %union.U0* @g_745, %union.U0** %l_1171, align 8, !tbaa !5
  %630 = bitcast i32** %l_1172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %630) #1
  store i32* @g_40, i32** %l_1172, align 8, !tbaa !5
  %631 = bitcast i32** %l_1184 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %631) #1
  store i32* @g_98, i32** %l_1184, align 8, !tbaa !5
  %632 = load %union.U0*, %union.U0** %l_1171, align 8, !tbaa !5
  %633 = load %union.U0**, %union.U0*** @g_676, align 8, !tbaa !5
  store %union.U0* %632, %union.U0** %633, align 8, !tbaa !5
  %634 = load i32*, i32** %l_1172, align 8, !tbaa !5
  %635 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %636 = load i32**, i32*** %635, align 8, !tbaa !5
  store i32* %634, i32** %636, align 8, !tbaa !5
  %637 = load i32*, i32** %l_39, align 8, !tbaa !5
  %638 = load i32, i32* %637, align 4, !tbaa !1
  %639 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext -1, i16 zeroext -14657)
  %640 = trunc i16 %639 to i8
  %641 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext -113, i8 zeroext %640)
  %642 = zext i8 %641 to i16
  %643 = load i16, i16* %1, align 2, !tbaa !10
  %644 = zext i16 %643 to i32
  %645 = load volatile i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @g_216, i32 0, i64 3), align 1, !tbaa !9
  %646 = zext i8 %645 to i32
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %648, label %652

; <label>:648                                     ; preds = %627
  %649 = load i8, i8* getelementptr inbounds ([10 x [6 x [4 x i8]]], [10 x [6 x [4 x i8]]]* @g_978, i32 0, i64 9, i64 4, i64 3), align 1, !tbaa !9
  %650 = zext i8 %649 to i32
  %651 = icmp ne i32 %650, 0
  br label %652

; <label>:652                                     ; preds = %648, %627
  %653 = phi i1 [ false, %627 ], [ %651, %648 ]
  %654 = zext i1 %653 to i32
  %655 = call i32 @safe_sub_func_uint32_t_u_u(i32 %644, i32 %654)
  %656 = load i32*, i32** %l_1184, align 8, !tbaa !5
  store i32 %655, i32* %656, align 4, !tbaa !1
  %657 = load i16, i16* %1, align 2, !tbaa !10
  %658 = zext i16 %657 to i32
  %659 = load i8****, i8***** @g_1048, align 8, !tbaa !5
  %660 = load i8***, i8**** %659, align 8, !tbaa !5
  %661 = load i8**, i8*** %660, align 8, !tbaa !5
  %662 = load i8*, i8** %661, align 8, !tbaa !5
  %663 = load i8, i8* %662, align 1, !tbaa !9
  %664 = zext i8 %663 to i32
  %665 = load i16, i16* %1, align 2, !tbaa !10
  %666 = zext i16 %665 to i32
  %667 = icmp sge i32 %664, %666
  %668 = zext i1 %667 to i32
  %669 = icmp sge i32 %658, %668
  %670 = zext i1 %669 to i32
  %671 = and i32 %655, %670
  %672 = load i32, i32* %l_1143, align 4, !tbaa !1
  %673 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %642, i32 %672)
  %674 = zext i16 %673 to i32
  %675 = icmp sge i32 %638, %674
  %676 = zext i1 %675 to i32
  %677 = trunc i32 %676 to i8
  %678 = load i8***, i8**** @g_615, align 8, !tbaa !5
  %679 = load i8**, i8*** %678, align 8, !tbaa !5
  %680 = load i8*, i8** %679, align 8, !tbaa !5
  store i8 %677, i8* %680, align 1, !tbaa !9
  %681 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %677, i32 4)
  %682 = zext i8 %681 to i32
  %683 = load i32*, i32** %l_39, align 8, !tbaa !5
  store i32 %682, i32* %683, align 4, !tbaa !1
  %684 = bitcast i32** %l_1184 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %684) #1
  %685 = bitcast i32** %l_1172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %685) #1
  %686 = bitcast %union.U0** %l_1171 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %686) #1
  %687 = bitcast i16** %l_1169 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %687) #1
  br label %688

; <label>:688                                     ; preds = %652
  %689 = load i16, i16* @g_71, align 2, !tbaa !10
  %690 = zext i16 %689 to i32
  %691 = call i32 @safe_add_func_uint32_t_u_u(i32 %690, i32 2)
  %692 = trunc i32 %691 to i16
  store i16 %692, i16* @g_71, align 2, !tbaa !10
  br label %623

; <label>:693                                     ; preds = %623
  %694 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %694) #1
  %695 = bitcast [3 x i16]* %l_1170 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %695) #1
  br label %696

; <label>:696                                     ; preds = %693, %547
  %697 = bitcast i16* %l_1168 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %697) #1
  %698 = bitcast i32* %l_1143 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %698) #1
  %699 = bitcast i8***** %l_1134 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %699) #1
  %700 = bitcast i64* %l_1133 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %700) #1
  br label %701

; <label>:701                                     ; preds = %696, %425
  %702 = load i32*, i32** %l_39, align 8, !tbaa !5
  %703 = load i32, i32* %702, align 4, !tbaa !1
  %704 = trunc i32 %703 to i16
  %705 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %705) #1
  %706 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %706) #1
  %707 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %707) #1
  %708 = bitcast i16* %l_1121 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %708) #1
  %709 = bitcast i64** %l_1101 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %709) #1
  %710 = bitcast i8** %l_1100 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %710) #1
  %711 = bitcast i8** %l_1099 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %711) #1
  %712 = bitcast %union.U0***** %l_1098 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %712) #1
  %713 = bitcast %union.U0**** %l_1097 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %713) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1074) #1
  %714 = bitcast i32* %l_1073 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %714) #1
  %715 = bitcast [7 x [1 x [5 x i8]]]* %l_656 to i8*
  call void @llvm.lifetime.end(i64 35, i8* %715) #1
  %716 = bitcast i64* %l_655 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %716) #1
  %717 = bitcast %union.U0*** %l_654 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %717) #1
  %718 = bitcast i8** %l_653 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %718) #1
  %719 = bitcast i32** %l_64 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %719) #1
  %720 = bitcast i8** %l_56 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %720) #1
  %721 = bitcast i32** %l_39 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %721) #1
  ret i16 %704
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
define internal signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %si) #0 {
  %1 = alloca i8, align 1
  store i8 %si, i8* %1, align 1, !tbaa !9
  %2 = load i8, i8* %1, align 1, !tbaa !9
  %3 = sext i8 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i8
  ret i8 %5
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
define internal signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %si) #0 {
  %1 = alloca i16, align 2
  store i16 %si, i16* %1, align 2, !tbaa !10
  %2 = load i16, i16* %1, align 2, !tbaa !10
  %3 = sext i16 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i16
  ret i16 %5
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal zeroext i16 @func_45(%union.U0* %p_46, i32 %p_47, i16* %p_48, %union.U0** %p_49) #0 {
  %1 = alloca i16, align 2
  %2 = alloca %union.U0*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca %union.U0**, align 8
  %l_982 = alloca i8, align 1
  %l_983 = alloca i32*, align 8
  %l_986 = alloca i32, align 4
  %l_1024 = alloca i32, align 4
  %l_1025 = alloca i32, align 4
  %l_1026 = alloca i32, align 4
  %6 = alloca i32
  %l_988 = alloca i32, align 4
  %l_1014 = alloca i32, align 4
  %l_1017 = alloca i32, align 4
  %l_1027 = alloca i32, align 4
  %l_1028 = alloca i32, align 4
  %l_1030 = alloca i32, align 4
  %l_1069 = alloca i32*, align 8
  %l_999 = alloca [6 x i32], align 16
  %l_1011 = alloca i16, align 2
  %l_1022 = alloca [1 x i32], align 4
  %l_1070 = alloca [6 x [9 x [2 x i32*]]], align 16
  %l_1072 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_987 = alloca [7 x i32*], align 16
  %l_1000 = alloca [9 x [1 x i8*]], align 16
  %l_1049 = alloca i8*****, align 8
  %l_1051 = alloca [10 x i8*****], align 16
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %l_1007 = alloca i64, align 8
  %l_1012 = alloca i32, align 4
  %l_1013 = alloca i32, align 4
  %l_1015 = alloca i32, align 4
  %l_1016 = alloca i32, align 4
  %l_1042 = alloca i16*, align 8
  %l_1052 = alloca i64*, align 8
  %l_1053 = alloca i64*, align 8
  %l_1056 = alloca i16*, align 8
  %l_996 = alloca [9 x [7 x i64]], align 16
  %l_1008 = alloca i32, align 4
  %l_1009 = alloca [1 x i64*], align 8
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %7 = alloca %union.U0, align 4
  store %union.U0* %p_46, %union.U0** %2, align 8, !tbaa !5
  store i32 %p_47, i32* %3, align 4, !tbaa !1
  store i16* %p_48, i16** %4, align 8, !tbaa !5
  store %union.U0** %p_49, %union.U0*** %5, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_982) #1
  store i8 15, i8* %l_982, align 1, !tbaa !9
  %8 = bitcast i32** %l_983 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_98, i32** %l_983, align 8, !tbaa !5
  %9 = bitcast i32* %l_986 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -1772371912, i32* %l_986, align 4, !tbaa !1
  %10 = bitcast i32* %l_1024 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 1007543197, i32* %l_1024, align 4, !tbaa !1
  %11 = bitcast i32* %l_1025 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %l_1025, align 4, !tbaa !1
  %12 = bitcast i32* %l_1026 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -1577358157, i32* %l_1026, align 4, !tbaa !1
  store i8 0, i8* @g_115, align 1, !tbaa !9
  br label %13

; <label>:13                                      ; preds = %30, %0
  %14 = load i8, i8* @g_115, align 1, !tbaa !9
  %15 = zext i8 %14 to i32
  %16 = icmp sle i32 %15, 3
  br i1 %16, label %17, label %35

; <label>:17                                      ; preds = %13
  store i64 0, i64* @g_562, align 8, !tbaa !7
  br label %18

; <label>:18                                      ; preds = %24, %17
  %19 = load i64, i64* @g_562, align 8, !tbaa !7
  %20 = icmp ule i64 %19, 3
  br i1 %20, label %21, label %27

; <label>:21                                      ; preds = %18
  %22 = load i8, i8* %l_982, align 1, !tbaa !9
  %23 = sext i8 %22 to i16
  store i16 %23, i16* %1
  store i32 1, i32* %6
  br label %497
                                                  ; No predecessors!
  %25 = load i64, i64* @g_562, align 8, !tbaa !7
  %26 = add i64 %25, 1
  store i64 %26, i64* @g_562, align 8, !tbaa !7
  br label %18

; <label>:27                                      ; preds = %18
  %28 = load i32, i32* %3, align 4, !tbaa !1
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %1
  store i32 1, i32* %6
  br label %497
                                                  ; No predecessors!
  %31 = load i8, i8* @g_115, align 1, !tbaa !9
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %32, 1
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* @g_115, align 1, !tbaa !9
  br label %13

; <label>:35                                      ; preds = %13
  %36 = load i32*, i32** %l_983, align 8, !tbaa !5
  %37 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %38 = load i32**, i32*** %37, align 8, !tbaa !5
  store i32* %36, i32** %38, align 8, !tbaa !5
  %39 = load i32*, i32** %l_983, align 8, !tbaa !5
  %40 = load i32, i32* %39, align 4, !tbaa !1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %490

; <label>:42                                      ; preds = %35
  %43 = bitcast i32* %l_988 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 6, i32* %l_988, align 4, !tbaa !1
  %44 = bitcast i32* %l_1014 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 1382518191, i32* %l_1014, align 4, !tbaa !1
  %45 = bitcast i32* %l_1017 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  store i32 751712602, i32* %l_1017, align 4, !tbaa !1
  %46 = bitcast i32* %l_1027 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  store i32 -377733998, i32* %l_1027, align 4, !tbaa !1
  %47 = bitcast i32* %l_1028 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  store i32 8, i32* %l_1028, align 4, !tbaa !1
  %48 = bitcast i32* %l_1030 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  store i32 -1411034777, i32* %l_1030, align 4, !tbaa !1
  %49 = bitcast i32** %l_1069 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i32* null, i32** %l_1069, align 8, !tbaa !5
  store i16 2, i16* @g_142, align 2, !tbaa !10
  br label %50

; <label>:50                                      ; preds = %477, %42
  %51 = load i16, i16* @g_142, align 2, !tbaa !10
  %52 = zext i16 %51 to i32
  %53 = icmp sle i32 %52, 1
  br i1 %53, label %54, label %480

; <label>:54                                      ; preds = %50
  %55 = bitcast [6 x i32]* %l_999 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %55) #1
  %56 = bitcast i16* %l_1011 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %56) #1
  store i16 -18582, i16* %l_1011, align 2, !tbaa !10
  %57 = bitcast [1 x i32]* %l_1022 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = bitcast [6 x [9 x [2 x i32*]]]* %l_1070 to i8*
  call void @llvm.lifetime.start(i64 864, i8* %58) #1
  %59 = bitcast [6 x [9 x [2 x i32*]]]* %l_1070 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* bitcast ([6 x [9 x [2 x i32*]]]* @func_45.l_1070 to i8*), i64 864, i32 16, i1 false)
  %60 = bitcast i32** %l_1072 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  store i32* %l_1017, i32** %l_1072, align 8, !tbaa !5
  %61 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %64

; <label>:64                                      ; preds = %71, %54
  %65 = load i32, i32* %i, align 4, !tbaa !1
  %66 = icmp slt i32 %65, 6
  br i1 %66, label %67, label %74

; <label>:67                                      ; preds = %64
  %68 = load i32, i32* %i, align 4, !tbaa !1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %l_999, i32 0, i64 %69
  store i32 -1, i32* %70, align 4, !tbaa !1
  br label %71

; <label>:71                                      ; preds = %67
  %72 = load i32, i32* %i, align 4, !tbaa !1
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %i, align 4, !tbaa !1
  br label %64

; <label>:74                                      ; preds = %64
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %75

; <label>:75                                      ; preds = %82, %74
  %76 = load i32, i32* %i, align 4, !tbaa !1
  %77 = icmp slt i32 %76, 1
  br i1 %77, label %78, label %85

; <label>:78                                      ; preds = %75
  %79 = load i32, i32* %i, align 4, !tbaa !1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1022, i32 0, i64 %80
  store i32 0, i32* %81, align 4, !tbaa !1
  br label %82

; <label>:82                                      ; preds = %78
  %83 = load i32, i32* %i, align 4, !tbaa !1
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %i, align 4, !tbaa !1
  br label %75

; <label>:85                                      ; preds = %75
  store i32 1, i32* @g_124, align 4, !tbaa !1
  br label %86

; <label>:86                                      ; preds = %367, %85
  %87 = load i32, i32* @g_124, align 4, !tbaa !1
  %88 = icmp sle i32 %87, 8
  br i1 %88, label %89, label %370

; <label>:89                                      ; preds = %86
  %90 = bitcast [7 x i32*]* %l_987 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %90) #1
  %91 = bitcast [7 x i32*]* %l_987 to i8*
  call void @llvm.memset.p0i8.i64(i8* %91, i8 0, i64 56, i32 16, i1 false)
  %92 = bitcast [9 x [1 x i8*]]* %l_1000 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %92) #1
  %93 = bitcast i8****** %l_1049 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  store i8***** @g_1048, i8****** %l_1049, align 8, !tbaa !5
  %94 = bitcast [10 x i8*****]* %l_1051 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %94) #1
  %95 = bitcast [10 x i8*****]* %l_1051 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* bitcast ([10 x i8*****]* @func_45.l_1051 to i8*), i64 80, i32 16, i1 false)
  %96 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  %97 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %116, %89
  %99 = load i32, i32* %i1, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 9
  br i1 %100, label %101, label %119

; <label>:101                                     ; preds = %98
  store i32 0, i32* %j2, align 4, !tbaa !1
  br label %102

; <label>:102                                     ; preds = %112, %101
  %103 = load i32, i32* %j2, align 4, !tbaa !1
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %105, label %115

; <label>:105                                     ; preds = %102
  %106 = load i32, i32* %j2, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %i1, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [9 x [1 x i8*]], [9 x [1 x i8*]]* %l_1000, i32 0, i64 %109
  %111 = getelementptr inbounds [1 x i8*], [1 x i8*]* %110, i32 0, i64 %107
  store i8* @g_200, i8** %111, align 8, !tbaa !5
  br label %112

; <label>:112                                     ; preds = %105
  %113 = load i32, i32* %j2, align 4, !tbaa !1
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %j2, align 4, !tbaa !1
  br label %102

; <label>:115                                     ; preds = %102
  br label %116

; <label>:116                                     ; preds = %115
  %117 = load i32, i32* %i1, align 4, !tbaa !1
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %i1, align 4, !tbaa !1
  br label %98

; <label>:119                                     ; preds = %98
  %120 = load i32, i32* %3, align 4, !tbaa !1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

; <label>:122                                     ; preds = %119
  store i32 17, i32* %6
  br label %359

; <label>:123                                     ; preds = %119
  %124 = load i32, i32* %l_988, align 4, !tbaa !1
  %125 = add i32 %124, 1
  store i32 %125, i32* %l_988, align 4, !tbaa !1
  store i64 2, i64* @g_562, align 8, !tbaa !7
  br label %126

; <label>:126                                     ; preds = %355, %123
  %127 = load i64, i64* @g_562, align 8, !tbaa !7
  %128 = icmp ule i64 %127, 8
  br i1 %128, label %129, label %358

; <label>:129                                     ; preds = %126
  %130 = bitcast i64* %l_1007 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #1
  store i64 6777475107641309467, i64* %l_1007, align 8, !tbaa !7
  %131 = bitcast i32* %l_1012 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #1
  store i32 1, i32* %l_1012, align 4, !tbaa !1
  %132 = bitcast i32* %l_1013 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #1
  store i32 675455681, i32* %l_1013, align 4, !tbaa !1
  %133 = bitcast i32* %l_1015 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #1
  store i32 -1045579432, i32* %l_1015, align 4, !tbaa !1
  %134 = bitcast i32* %l_1016 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #1
  store i32 -1623819698, i32* %l_1016, align 4, !tbaa !1
  %135 = bitcast i16** %l_1042 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #1
  store i16* getelementptr inbounds ([8 x [9 x i16]], [8 x [9 x i16]]* @g_915, i32 0, i64 7, i64 7), i16** %l_1042, align 8, !tbaa !5
  %136 = bitcast i64** %l_1052 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %136) #1
  store i64* null, i64** %l_1052, align 8, !tbaa !5
  %137 = bitcast i64** %l_1053 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %137) #1
  store i64* @g_1010, i64** %l_1053, align 8, !tbaa !5
  %138 = bitcast i16** %l_1056 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %138) #1
  store i16* @g_559, i16** %l_1056, align 8, !tbaa !5
  store i16 0, i16* @g_172, align 2, !tbaa !10
  br label %139

; <label>:139                                     ; preds = %270, %129
  %140 = load i16, i16* @g_172, align 2, !tbaa !10
  %141 = zext i16 %140 to i32
  %142 = icmp sle i32 %141, 8
  br i1 %142, label %143, label %275

; <label>:143                                     ; preds = %139
  %144 = bitcast [9 x [7 x i64]]* %l_996 to i8*
  call void @llvm.lifetime.start(i64 504, i8* %144) #1
  %145 = bitcast [9 x [7 x i64]]* %l_996 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* bitcast ([9 x [7 x i64]]* @func_45.l_996 to i8*), i64 504, i32 16, i1 false)
  %146 = bitcast i32* %l_1008 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #1
  store i32 -1015893144, i32* %l_1008, align 4, !tbaa !1
  %147 = bitcast [1 x i64*]* %l_1009 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %147) #1
  %148 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %148) #1
  %149 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %149) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %150

; <label>:150                                     ; preds = %157, %143
  %151 = load i32, i32* %i3, align 4, !tbaa !1
  %152 = icmp slt i32 %151, 1
  br i1 %152, label %153, label %160

; <label>:153                                     ; preds = %150
  %154 = load i32, i32* %i3, align 4, !tbaa !1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [1 x i64*], [1 x i64*]* %l_1009, i32 0, i64 %155
  store i64* @g_1010, i64** %156, align 8, !tbaa !5
  br label %157

; <label>:157                                     ; preds = %153
  %158 = load i32, i32* %i3, align 4, !tbaa !1
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %i3, align 4, !tbaa !1
  br label %150

; <label>:160                                     ; preds = %150
  %161 = load volatile i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_309, i32 0, i32 0), align 4, !tbaa !1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [9 x [7 x i64]], [9 x [7 x i64]]* %l_996, i32 0, i64 8
  %164 = getelementptr inbounds [7 x i64], [7 x i64]* %163, i32 0, i64 5
  %165 = load i64, i64* %164, align 8, !tbaa !7
  %166 = getelementptr inbounds [6 x i32], [6 x i32]* %l_999, i32 0, i64 4
  %167 = load i32, i32* %166, align 4, !tbaa !1
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds [6 x i32], [6 x i32]* %l_999, i32 0, i64 4
  %170 = load i32, i32* %169, align 4, !tbaa !1
  %171 = load i16, i16* @g_172, align 2, !tbaa !10
  %172 = zext i16 %171 to i64
  %173 = load i16, i16* @g_172, align 2, !tbaa !10
  %174 = zext i16 %173 to i64
  %175 = getelementptr inbounds [9 x [9 x i8*]], [9 x [9 x i8*]]* @g_684, i32 0, i64 %174
  %176 = getelementptr inbounds [9 x i8*], [9 x i8*]* %175, i32 0, i64 %172
  store i8* null, i8** %176, align 8, !tbaa !5
  %177 = getelementptr inbounds [9 x [1 x i8*]], [9 x [1 x i8*]]* %l_1000, i32 0, i64 7
  %178 = getelementptr inbounds [1 x i8*], [1 x i8*]* %177, i32 0, i64 0
  %179 = load i8*, i8** %178, align 8, !tbaa !5
  %180 = icmp eq i8* null, %179
  %181 = zext i1 %180 to i32
  %182 = load i32, i32* %3, align 4, !tbaa !1
  %183 = sext i32 %182 to i64
  %184 = call i64 @safe_sub_func_uint64_t_u_u(i64 1, i64 %183)
  %185 = trunc i64 %184 to i8
  store i8 %185, i8* @g_163, align 1, !tbaa !9
  %186 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %185, i32 0)
  %187 = sext i8 %186 to i32
  %188 = load i32*, i32** @g_152, align 8, !tbaa !5
  %189 = load i32, i32* %188, align 4, !tbaa !1
  %190 = and i32 %187, %189
  %191 = trunc i32 %190 to i16
  %192 = load i32, i32* %3, align 4, !tbaa !1
  %193 = trunc i32 %192 to i16
  %194 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %191, i16 zeroext %193)
  %195 = zext i16 %194 to i64
  %196 = getelementptr inbounds [9 x [7 x i64]], [9 x [7 x i64]]* %l_996, i32 0, i64 7
  %197 = getelementptr inbounds [7 x i64], [7 x i64]* %196, i32 0, i64 2
  %198 = load i64, i64* %197, align 8, !tbaa !7
  %199 = icmp ule i64 %195, %198
  %200 = zext i1 %199 to i32
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* %l_1007, align 8, !tbaa !7
  %203 = icmp sgt i64 %201, %202
  br i1 %203, label %204, label %209

; <label>:204                                     ; preds = %160
  %205 = getelementptr inbounds [9 x [7 x i64]], [9 x [7 x i64]]* %l_996, i32 0, i64 6
  %206 = getelementptr inbounds [7 x i64], [7 x i64]* %205, i32 0, i64 0
  %207 = load i64, i64* %206, align 8, !tbaa !7
  %208 = icmp ne i64 %207, 0
  br label %209

; <label>:209                                     ; preds = %204, %160
  %210 = phi i1 [ false, %160 ], [ %208, %204 ]
  %211 = zext i1 %210 to i32
  %212 = xor i32 %211, -1015893144
  %213 = getelementptr inbounds [6 x i32], [6 x i32]* %l_999, i32 0, i64 0
  %214 = load i32, i32* %213, align 4, !tbaa !1
  %215 = or i32 %212, %214
  %216 = icmp eq i32 %181, %215
  %217 = zext i1 %216 to i32
  %218 = load i32, i32* %3, align 4, !tbaa !1
  %219 = or i32 %217, %218
  %220 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %221 = load i32**, i32*** %220, align 8, !tbaa !5
  %222 = load i32*, i32** %221, align 8, !tbaa !5
  %223 = load i32, i32* %222, align 4, !tbaa !1
  %224 = or i32 %219, %223
  %225 = xor i32 %170, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

; <label>:227                                     ; preds = %209
  br label %228

; <label>:228                                     ; preds = %227, %209
  %229 = phi i1 [ true, %209 ], [ true, %227 ]
  %230 = zext i1 %229 to i32
  %231 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %168, i32 %230)
  %232 = zext i8 %231 to i64
  %233 = or i64 %165, %232
  %234 = load %union.U0*, %union.U0** %2, align 8, !tbaa !5
  %235 = load i32, i32* %l_988, align 4, !tbaa !1
  %236 = load i32, i32* @g_40, align 4, !tbaa !1
  %237 = sext i32 %236 to i64
  %238 = load i64, i64* @g_1010, align 8, !tbaa !7
  %239 = xor i64 %238, %237
  store i64 %239, i64* @g_1010, align 8, !tbaa !7
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %244, label %241

; <label>:241                                     ; preds = %228
  %242 = load i64, i64* %l_1007, align 8, !tbaa !7
  %243 = icmp ne i64 %242, 0
  br label %244

; <label>:244                                     ; preds = %241, %228
  %245 = phi i1 [ true, %228 ], [ %243, %241 ]
  %246 = zext i1 %245 to i32
  %247 = xor i32 %246, -1
  %248 = sext i32 %247 to i64
  %249 = call i64 @safe_mod_func_uint64_t_u_u(i64 4, i64 %248)
  %250 = xor i64 %162, %249
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

; <label>:252                                     ; preds = %244
  br label %253

; <label>:253                                     ; preds = %252, %244
  %254 = phi i1 [ false, %244 ], [ true, %252 ]
  %255 = zext i1 %254 to i32
  %256 = trunc i32 %255 to i8
  %257 = load i16, i16* %l_1011, align 2, !tbaa !10
  %258 = trunc i16 %257 to i8
  %259 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %256, i8 zeroext %258)
  %260 = zext i8 %259 to i32
  %261 = load i32, i32* %l_986, align 4, !tbaa !1
  %262 = or i32 %261, %260
  store i32 %262, i32* %l_986, align 4, !tbaa !1
  %263 = load volatile i8, i8* @g_1019, align 1, !tbaa !9
  %264 = add i8 %263, -1
  store volatile i8 %264, i8* @g_1019, align 1, !tbaa !9
  %265 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #1
  %266 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = bitcast [1 x i64*]* %l_1009 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %267) #1
  %268 = bitcast i32* %l_1008 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  %269 = bitcast [9 x [7 x i64]]* %l_996 to i8*
  call void @llvm.lifetime.end(i64 504, i8* %269) #1
  br label %270

; <label>:270                                     ; preds = %253
  %271 = load i16, i16* @g_172, align 2, !tbaa !10
  %272 = zext i16 %271 to i32
  %273 = add nsw i32 %272, 1
  %274 = trunc i32 %273 to i16
  store i16 %274, i16* @g_172, align 2, !tbaa !10
  br label %139

; <label>:275                                     ; preds = %139
  %276 = load i16, i16* %l_1011, align 2, !tbaa !10
  %277 = icmp ne i16 %276, 0
  br i1 %277, label %278, label %279

; <label>:278                                     ; preds = %275
  store i32 28, i32* %6
  br label %344

; <label>:279                                     ; preds = %275
  %280 = load i32, i32* @g_1031, align 4, !tbaa !1
  %281 = add i32 %280, 1
  store i32 %281, i32* @g_1031, align 4, !tbaa !1
  %282 = load volatile %union.U0*, %union.U0** @g_16, align 8, !tbaa !5
  %283 = bitcast %union.U0* %7 to i8*
  %284 = bitcast %union.U0* %282 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %283, i8* %284, i64 4, i32 4, i1 true), !tbaa.struct !12
  %285 = load i16*, i16** @g_141, align 8, !tbaa !5
  %286 = load i16, i16* %285, align 2, !tbaa !10
  %287 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %286, i32 9)
  %288 = load i16*, i16** %l_1042, align 8, !tbaa !5
  store i16 %287, i16* %288, align 2, !tbaa !10
  %289 = load i8*****, i8****** @g_1047, align 8, !tbaa !5
  store i8***** %289, i8****** %l_1049, align 8, !tbaa !5
  store i8***** %289, i8****** @g_1047, align 8, !tbaa !5
  store i8***** %289, i8****** getelementptr inbounds ([8 x [3 x i8*****]], [8 x [3 x i8*****]]* @g_1050, i32 0, i64 6, i64 1), align 8, !tbaa !5
  %290 = getelementptr inbounds [10 x i8*****], [10 x i8*****]* %l_1051, i32 0, i64 8
  %291 = load i8*****, i8****** %290, align 8, !tbaa !5
  %292 = getelementptr inbounds [10 x i8*****], [10 x i8*****]* %l_1051, i32 0, i64 9
  store i8***** %291, i8****** %292, align 8, !tbaa !5
  %293 = icmp eq i8***** %289, %291
  %294 = zext i1 %293 to i32
  %295 = load i32*, i32** %l_983, align 8, !tbaa !5
  %296 = load i32, i32* %295, align 4, !tbaa !1
  %297 = icmp sgt i32 %294, %296
  %298 = zext i1 %297 to i32
  %299 = sext i32 %298 to i64
  %300 = load i64*, i64** %l_1053, align 8, !tbaa !5
  store i64 %299, i64* %300, align 8, !tbaa !7
  %301 = load i32, i32* %l_1013, align 4, !tbaa !1
  %302 = load i16*, i16** @g_141, align 8, !tbaa !5
  %303 = load i16, i16* %302, align 2, !tbaa !10
  %304 = load i32, i32* @g_65, align 4, !tbaa !1
  %305 = zext i32 %304 to i64
  %306 = and i64 %305, 1
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* @g_65, align 4, !tbaa !1
  %308 = load i16, i16* @g_27, align 2, !tbaa !10
  %309 = sext i16 %308 to i32
  %310 = xor i32 %307, %309
  %311 = load i16*, i16** %l_1056, align 8, !tbaa !5
  %312 = load i16, i16* %311, align 2, !tbaa !10
  %313 = sext i16 %312 to i32
  %314 = xor i32 %313, %310
  %315 = trunc i32 %314 to i16
  store i16 %315, i16* %311, align 2, !tbaa !10
  %316 = load i16*, i16** %4, align 8, !tbaa !5
  store i16 %315, i16* %316, align 2, !tbaa !10
  %317 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %303, i16 zeroext %315)
  %318 = zext i16 %317 to i32
  %319 = icmp sgt i32 %301, %318
  %320 = zext i1 %319 to i32
  %321 = sext i32 %320 to i64
  %322 = icmp ugt i64 %299, %321
  %323 = zext i1 %322 to i32
  %324 = trunc i32 %323 to i8
  %325 = load i32, i32* %3, align 4, !tbaa !1
  %326 = trunc i32 %325 to i8
  %327 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %324, i8 zeroext %326)
  %328 = zext i8 %327 to i16
  %329 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %328, i16 signext 1)
  %330 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %287, i16 zeroext %329)
  %331 = trunc i16 %330 to i8
  %332 = load i32, i32* %3, align 4, !tbaa !1
  %333 = trunc i32 %332 to i8
  %334 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %331, i8 zeroext %333)
  %335 = load i32, i32* %3, align 4, !tbaa !1
  %336 = trunc i32 %335 to i8
  %337 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %334, i8 zeroext %336)
  %338 = zext i8 %337 to i32
  %339 = load i32, i32* %l_1013, align 4, !tbaa !1
  %340 = icmp slt i32 %338, %339
  %341 = zext i1 %340 to i32
  %342 = load i32, i32* %l_1015, align 4, !tbaa !1
  %343 = or i32 %342, %341
  store i32 %343, i32* %l_1015, align 4, !tbaa !1
  store i32 0, i32* %6
  br label %344

; <label>:344                                     ; preds = %279, %278
  %345 = bitcast i16** %l_1056 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #1
  %346 = bitcast i64** %l_1053 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #1
  %347 = bitcast i64** %l_1052 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %347) #1
  %348 = bitcast i16** %l_1042 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #1
  %349 = bitcast i32* %l_1016 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %349) #1
  %350 = bitcast i32* %l_1015 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %350) #1
  %351 = bitcast i32* %l_1013 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %351) #1
  %352 = bitcast i32* %l_1012 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %352) #1
  %353 = bitcast i64* %l_1007 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %353) #1
  %cleanup.dest = load i32, i32* %6
  switch i32 %cleanup.dest, label %504 [
    i32 0, label %354
    i32 28, label %355
  ]

; <label>:354                                     ; preds = %344
  br label %355

; <label>:355                                     ; preds = %354, %344
  %356 = load i64, i64* @g_562, align 8, !tbaa !7
  %357 = add i64 %356, 1
  store i64 %357, i64* @g_562, align 8, !tbaa !7
  br label %126

; <label>:358                                     ; preds = %126
  store i32 0, i32* %6
  br label %359

; <label>:359                                     ; preds = %358, %122
  %360 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %360) #1
  %361 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %361) #1
  %362 = bitcast [10 x i8*****]* %l_1051 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %362) #1
  %363 = bitcast i8****** %l_1049 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %363) #1
  %364 = bitcast [9 x [1 x i8*]]* %l_1000 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %364) #1
  %365 = bitcast [7 x i32*]* %l_987 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %365) #1
  %cleanup.dest.5 = load i32, i32* %6
  switch i32 %cleanup.dest.5, label %504 [
    i32 0, label %366
    i32 17, label %370
  ]

; <label>:366                                     ; preds = %359
  br label %367

; <label>:367                                     ; preds = %366
  %368 = load i32, i32* @g_124, align 4, !tbaa !1
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* @g_124, align 4, !tbaa !1
  br label %86

; <label>:370                                     ; preds = %359, %86
  %371 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %372 = load i32**, i32*** %371, align 8, !tbaa !5
  %373 = load i32***, i32**** @g_443, align 8, !tbaa !5
  store i32** %372, i32*** %373, align 8, !tbaa !5
  %374 = icmp eq i32** %372, %l_983
  %375 = zext i1 %374 to i32
  %376 = load i32, i32* %l_1014, align 4, !tbaa !1
  %377 = trunc i32 %376 to i16
  %378 = load i32, i32* %3, align 4, !tbaa !1
  %379 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1022, i32 0, i64 0
  %380 = load i32, i32* %379, align 4, !tbaa !1
  %381 = trunc i32 %380 to i16
  %382 = load i32, i32* %l_1027, align 4, !tbaa !1
  %383 = trunc i32 %382 to i16
  %384 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %381, i16 zeroext %383)
  %385 = trunc i16 %384 to i8
  %386 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1022, i32 0, i64 0
  %387 = load i32, i32* %386, align 4, !tbaa !1
  %388 = load i16*, i16** %4, align 8, !tbaa !5
  %389 = load i16, i16* %388, align 2, !tbaa !10
  %390 = sext i16 %389 to i32
  %391 = load i32, i32* %3, align 4, !tbaa !1
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %397, label %393

; <label>:393                                     ; preds = %370
  %394 = load volatile i8, i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @g_290, i32 0, i64 0, i64 1), align 1, !tbaa !9
  %395 = sext i8 %394 to i32
  %396 = icmp ne i32 %395, 0
  br label %397

; <label>:397                                     ; preds = %393, %370
  %398 = phi i1 [ true, %370 ], [ %396, %393 ]
  %399 = zext i1 %398 to i32
  %400 = trunc i32 %399 to i16
  %401 = load i16*, i16** @g_141, align 8, !tbaa !5
  %402 = load i16, i16* %401, align 2, !tbaa !10
  %403 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %400, i16 signext %402)
  %404 = sext i16 %403 to i32
  %405 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1022, i32 0, i64 0
  %406 = load i32, i32* %405, align 4, !tbaa !1
  %407 = icmp eq i32 %404, %406
  %408 = zext i1 %407 to i32
  %409 = and i32 %390, %408
  %410 = trunc i32 %409 to i8
  %411 = load i32, i32* %3, align 4, !tbaa !1
  %412 = trunc i32 %411 to i8
  %413 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %410, i8 signext %412)
  %414 = sext i8 %413 to i32
  %415 = icmp eq i32 %387, %414
  %416 = zext i1 %415 to i32
  %417 = getelementptr inbounds [6 x i32], [6 x i32]* %l_999, i32 0, i64 4
  %418 = load i32, i32* %417, align 4, !tbaa !1
  %419 = zext i32 %418 to i64
  %420 = icmp sgt i64 2102321277644047410, %419
  %421 = zext i1 %420 to i32
  %422 = trunc i32 %421 to i8
  %423 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %385, i8 signext %422)
  %424 = sext i8 %423 to i32
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %427

; <label>:426                                     ; preds = %397
  br label %427

; <label>:427                                     ; preds = %426, %397
  %428 = phi i1 [ false, %397 ], [ true, %426 ]
  %429 = zext i1 %428 to i32
  %430 = or i32 %378, %429
  %431 = sext i32 %430 to i64
  %432 = icmp slt i64 %431, -1
  %433 = zext i1 %432 to i32
  %434 = load i32, i32* %l_1014, align 4, !tbaa !1
  %435 = icmp ne i32 %433, %434
  %436 = zext i1 %435 to i32
  %437 = load i32*, i32** %l_983, align 8, !tbaa !5
  %438 = load i32, i32* %437, align 4, !tbaa !1
  %439 = icmp slt i32 %436, %438
  %440 = zext i1 %439 to i32
  %441 = icmp sle i32 %440, 4011
  %442 = zext i1 %441 to i32
  %443 = sext i32 %442 to i64
  %444 = icmp eq i64 %443, 2413386588
  %445 = zext i1 %444 to i32
  %446 = sext i32 %445 to i64
  %447 = xor i64 %446, 556509309
  %448 = load i32*, i32** %l_1069, align 8, !tbaa !5
  %449 = getelementptr inbounds [6 x [9 x [2 x i32*]]], [6 x [9 x [2 x i32*]]]* %l_1070, i32 0, i64 4
  %450 = getelementptr inbounds [9 x [2 x i32*]], [9 x [2 x i32*]]* %449, i32 0, i64 2
  %451 = getelementptr inbounds [2 x i32*], [2 x i32*]* %450, i32 0, i64 1
  %452 = load i32*, i32** %451, align 8, !tbaa !5
  %453 = icmp ne i32* %448, %452
  %454 = zext i1 %453 to i32
  store i32 %454, i32* %3, align 4, !tbaa !1
  %455 = load i32, i32* %l_1030, align 4, !tbaa !1
  %456 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1022, i32 0, i64 0
  store i32 %455, i32* %456, align 4, !tbaa !1
  %457 = trunc i32 %455 to i16
  %458 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %377, i16 signext %457)
  %459 = load i32, i32* %3, align 4, !tbaa !1
  %460 = sext i32 %459 to i64
  %461 = call i64 @safe_sub_func_int64_t_s_s(i64 %460, i64 7539817525225332050)
  %462 = load i32*, i32** %l_1072, align 8, !tbaa !5
  %463 = load i32, i32* %462, align 4, !tbaa !1
  %464 = sext i32 %463 to i64
  %465 = or i64 %464, %461
  %466 = trunc i64 %465 to i32
  store i32 %466, i32* %462, align 4, !tbaa !1
  %467 = load i32, i32* %3, align 4, !tbaa !1
  %468 = trunc i32 %467 to i16
  store i16 %468, i16* %1
  store i32 1, i32* %6
  %469 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %469) #1
  %470 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %470) #1
  %471 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %471) #1
  %472 = bitcast i32** %l_1072 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %472) #1
  %473 = bitcast [6 x [9 x [2 x i32*]]]* %l_1070 to i8*
  call void @llvm.lifetime.end(i64 864, i8* %473) #1
  %474 = bitcast [1 x i32]* %l_1022 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %474) #1
  %475 = bitcast i16* %l_1011 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %475) #1
  %476 = bitcast [6 x i32]* %l_999 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %476) #1
  br label %481
                                                  ; No predecessors!
  %478 = load i16, i16* @g_142, align 2, !tbaa !10
  %479 = add i16 %478, -1
  store i16 %479, i16* @g_142, align 2, !tbaa !10
  br label %50

; <label>:480                                     ; preds = %50
  store i32 0, i32* %6
  br label %481

; <label>:481                                     ; preds = %480, %427
  %482 = bitcast i32** %l_1069 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %482) #1
  %483 = bitcast i32* %l_1030 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %483) #1
  %484 = bitcast i32* %l_1028 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %484) #1
  %485 = bitcast i32* %l_1027 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %485) #1
  %486 = bitcast i32* %l_1017 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %486) #1
  %487 = bitcast i32* %l_1014 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %487) #1
  %488 = bitcast i32* %l_988 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %488) #1
  %cleanup.dest.6 = load i32, i32* %6
  switch i32 %cleanup.dest.6, label %497 [
    i32 0, label %489
  ]

; <label>:489                                     ; preds = %481
  br label %494

; <label>:490                                     ; preds = %35
  %491 = load i32*, i32** %l_983, align 8, !tbaa !5
  %492 = load i32, i32* %491, align 4, !tbaa !1
  %493 = trunc i32 %492 to i16
  store i16 %493, i16* %1
  store i32 1, i32* %6
  br label %497

; <label>:494                                     ; preds = %489
  %495 = load i32, i32* %3, align 4, !tbaa !1
  %496 = trunc i32 %495 to i16
  store i16 %496, i16* %1
  store i32 1, i32* %6
  br label %497

; <label>:497                                     ; preds = %494, %490, %481, %27, %21
  %498 = bitcast i32* %l_1026 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %498) #1
  %499 = bitcast i32* %l_1025 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %499) #1
  %500 = bitcast i32* %l_1024 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %500) #1
  %501 = bitcast i32* %l_986 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %501) #1
  %502 = bitcast i32** %l_983 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %502) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_982) #1
  %503 = load i16, i16* %1
  ret i16 %503

; <label>:504                                     ; preds = %359, %344
  unreachable
}

; Function Attrs: nounwind uwtable
define internal %union.U0* @func_50(i8 zeroext %p_51, i32 %p_52, i16* %p_53, i32 %p_54, i32 %p_55) #0 {
  %1 = alloca %union.U0*, align 8
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %l_657 = alloca i8, align 1
  %l_675 = alloca %union.U0*, align 8
  %l_674 = alloca %union.U0**, align 8
  %l_678 = alloca %union.U0***, align 8
  %l_680 = alloca [9 x %union.U0**], align 16
  %l_679 = alloca %union.U0***, align 8
  %l_682 = alloca i8*, align 8
  %l_681 = alloca i8**, align 8
  %l_685 = alloca i8***, align 8
  %l_688 = alloca i8***, align 8
  %l_689 = alloca [1 x [1 x [10 x i8****]]], align 16
  %l_692 = alloca i8, align 1
  %l_693 = alloca i8*, align 8
  %l_694 = alloca i8*, align 8
  %l_713 = alloca i32***, align 8
  %l_715 = alloca i32***, align 8
  %l_716 = alloca [3 x i16], align 2
  %l_766 = alloca i32*, align 8
  %l_785 = alloca i64, align 8
  %l_789 = alloca [9 x [8 x i32]], align 16
  %l_840 = alloca i16*, align 8
  %l_890 = alloca i32, align 4
  %l_912 = alloca i16, align 2
  %l_975 = alloca i32, align 4
  %l_976 = alloca i32, align 4
  %l_977 = alloca i32, align 4
  %l_981 = alloca %union.U0*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_701 = alloca [6 x i8***], align 16
  %l_714 = alloca i32***, align 8
  %l_717 = alloca i16*, align 8
  %l_718 = alloca i16*, align 8
  %l_719 = alloca i16*, align 8
  %l_743 = alloca %union.U0*, align 8
  %l_779 = alloca [5 x [5 x i8]], align 16
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %l_723 = alloca i16, align 2
  %l_744 = alloca %union.U0*, align 8
  %l_746 = alloca %union.U0*, align 8
  %l_750 = alloca [1 x i8*], align 8
  %l_751 = alloca i32, align 4
  %l_768 = alloca [10 x [1 x i32]], align 16
  %l_775 = alloca i16*, align 8
  %l_776 = alloca i16*, align 8
  %l_786 = alloca i64, align 8
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %l_732 = alloca [8 x [7 x [2 x i64*]]], align 16
  %l_739 = alloca i8***, align 8
  %l_740 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %k7 = alloca i32, align 4
  %l_749 = alloca [10 x [7 x i32]], align 16
  %l_760 = alloca i32*, align 8
  %l_761 = alloca i32*, align 8
  %l_764 = alloca i64, align 8
  %l_765 = alloca [1 x [2 x i32]], align 4
  %l_767 = alloca i64*, align 8
  %i8 = alloca i32, align 4
  %j9 = alloca i32, align 4
  %7 = alloca i32
  %l_790 = alloca [8 x [9 x i32****]], align 16
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %l_814 = alloca i16, align 2
  %l_836 = alloca %union.U0, align 4
  %l_913 = alloca [3 x [4 x [10 x i32]]], align 16
  %l_935 = alloca i32****, align 8
  %l_972 = alloca i32*, align 8
  %i13 = alloca i32, align 4
  %j14 = alloca i32, align 4
  %k15 = alloca i32, align 4
  %l_815 = alloca i8****, align 8
  %l_818 = alloca i32, align 4
  %l_819 = alloca i16*, align 8
  %l_820 = alloca i16*, align 8
  %l_821 = alloca i32*, align 8
  %l_822 = alloca i32*, align 8
  %l_823 = alloca [8 x [4 x i32*]], align 16
  %l_824 = alloca i64*, align 8
  %l_838 = alloca i16*, align 8
  %l_837 = alloca [3 x i16**], align 16
  %l_842 = alloca i32*, align 8
  %l_875 = alloca i8**, align 8
  %i16 = alloca i32, align 4
  %j17 = alloca i32, align 4
  store i8 %p_51, i8* %2, align 1, !tbaa !9
  store i32 %p_52, i32* %3, align 4, !tbaa !1
  store i16* %p_53, i16** %4, align 8, !tbaa !5
  store i32 %p_54, i32* %5, align 4, !tbaa !1
  store i32 %p_55, i32* %6, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_657) #1
  store i8 1, i8* %l_657, align 1, !tbaa !9
  %8 = bitcast %union.U0** %l_675 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %union.U0* null, %union.U0** %l_675, align 8, !tbaa !5
  %9 = bitcast %union.U0*** %l_674 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %union.U0** %l_675, %union.U0*** %l_674, align 8, !tbaa !5
  %10 = bitcast %union.U0**** %l_678 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %union.U0*** @g_676, %union.U0**** %l_678, align 8, !tbaa !5
  %11 = bitcast [9 x %union.U0**]* %l_680 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %11) #1
  %12 = bitcast [9 x %union.U0**]* %l_680 to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 72, i32 16, i1 false)
  %13 = bitcast %union.U0**** %l_679 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = getelementptr inbounds [9 x %union.U0**], [9 x %union.U0**]* %l_680, i32 0, i64 5
  store %union.U0*** %14, %union.U0**** %l_679, align 8, !tbaa !5
  %15 = bitcast i8** %l_682 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i8* @g_163, i8** %l_682, align 8, !tbaa !5
  %16 = bitcast i8*** %l_681 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i8** %l_682, i8*** %l_681, align 8, !tbaa !5
  %17 = bitcast i8**** %l_685 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i8*** @g_683, i8**** %l_685, align 8, !tbaa !5
  %18 = bitcast i8**** %l_688 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i8*** getelementptr inbounds ([4 x [9 x i8**]], [4 x [9 x i8**]]* @g_616, i32 0, i64 3, i64 7), i8**** %l_688, align 8, !tbaa !5
  %19 = bitcast [1 x [1 x [10 x i8****]]]* %l_689 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %19) #1
  %20 = getelementptr inbounds [1 x [1 x [10 x i8****]]], [1 x [1 x [10 x i8****]]]* %l_689, i64 0, i64 0
  %21 = getelementptr inbounds [1 x [10 x i8****]], [1 x [10 x i8****]]* %20, i64 0, i64 0
  %22 = getelementptr inbounds [10 x i8****], [10 x i8****]* %21, i64 0, i64 0
  store i8**** %l_688, i8***** %22, !tbaa !5
  %23 = getelementptr inbounds i8****, i8***** %22, i64 1
  store i8**** %l_688, i8***** %23, !tbaa !5
  %24 = getelementptr inbounds i8****, i8***** %23, i64 1
  store i8**** %l_688, i8***** %24, !tbaa !5
  %25 = getelementptr inbounds i8****, i8***** %24, i64 1
  store i8**** null, i8***** %25, !tbaa !5
  %26 = getelementptr inbounds i8****, i8***** %25, i64 1
  store i8**** %l_688, i8***** %26, !tbaa !5
  %27 = getelementptr inbounds i8****, i8***** %26, i64 1
  store i8**** %l_688, i8***** %27, !tbaa !5
  %28 = getelementptr inbounds i8****, i8***** %27, i64 1
  store i8**** %l_688, i8***** %28, !tbaa !5
  %29 = getelementptr inbounds i8****, i8***** %28, i64 1
  store i8**** %l_688, i8***** %29, !tbaa !5
  %30 = getelementptr inbounds i8****, i8***** %29, i64 1
  store i8**** %l_688, i8***** %30, !tbaa !5
  %31 = getelementptr inbounds i8****, i8***** %30, i64 1
  store i8**** %l_688, i8***** %31, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_692) #1
  store i8 0, i8* %l_692, align 1, !tbaa !9
  %32 = bitcast i8** %l_693 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  store i8* null, i8** %l_693, align 8, !tbaa !5
  %33 = bitcast i8** %l_694 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  store i8* getelementptr inbounds ([4 x [5 x [8 x i8]]], [4 x [5 x [8 x i8]]]* @g_466, i32 0, i64 2, i64 3, i64 4), i8** %l_694, align 8, !tbaa !5
  %34 = bitcast i32**** %l_713 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  store i32*** null, i32**** %l_713, align 8, !tbaa !5
  %35 = bitcast i32**** %l_715 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store i32*** null, i32**** %l_715, align 8, !tbaa !5
  %36 = bitcast [3 x i16]* %l_716 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %36) #1
  %37 = bitcast i32** %l_766 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store i32* null, i32** %l_766, align 8, !tbaa !5
  %38 = bitcast i64* %l_785 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store i64 0, i64* %l_785, align 8, !tbaa !7
  %39 = bitcast [9 x [8 x i32]]* %l_789 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %39) #1
  %40 = bitcast [9 x [8 x i32]]* %l_789 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* bitcast ([9 x [8 x i32]]* @func_50.l_789 to i8*), i64 288, i32 16, i1 false)
  %41 = bitcast i16** %l_840 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  store i16* @g_841, i16** %l_840, align 8, !tbaa !5
  %42 = bitcast i32* %l_890 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 -685982972, i32* %l_890, align 4, !tbaa !1
  %43 = bitcast i16* %l_912 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %43) #1
  store i16 -9689, i16* %l_912, align 2, !tbaa !10
  %44 = bitcast i32* %l_975 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 -7, i32* %l_975, align 4, !tbaa !1
  %45 = bitcast i32* %l_976 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  store i32 0, i32* %l_976, align 4, !tbaa !1
  %46 = bitcast i32* %l_977 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  store i32 5, i32* %l_977, align 4, !tbaa !1
  %47 = bitcast %union.U0** %l_981 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  store %union.U0* @g_745, %union.U0** %l_981, align 8, !tbaa !5
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %51

; <label>:51                                      ; preds = %58, %0
  %52 = load i32, i32* %i, align 4, !tbaa !1
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %61

; <label>:54                                      ; preds = %51
  %55 = load i32, i32* %i, align 4, !tbaa !1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x i16], [3 x i16]* %l_716, i32 0, i64 %56
  store i16 -1, i16* %57, align 2, !tbaa !10
  br label %58

; <label>:58                                      ; preds = %54
  %59 = load i32, i32* %i, align 4, !tbaa !1
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %i, align 4, !tbaa !1
  br label %51

; <label>:61                                      ; preds = %51
  %62 = load i8, i8* %2, align 1, !tbaa !9
  %63 = zext i8 %62 to i32
  %64 = load i32*, i32** @g_152, align 8, !tbaa !5
  %65 = load i32, i32* %64, align 4, !tbaa !1
  %66 = xor i32 %65, %63
  store i32 %66, i32* %64, align 4, !tbaa !1
  %67 = load i8, i8* %l_657, align 1, !tbaa !9
  %68 = add i8 %67, 1
  store i8 %68, i8* %l_657, align 1, !tbaa !9
  %69 = load i32**, i32*** @g_444, align 8, !tbaa !5
  %70 = load i32*, i32** %69, align 8, !tbaa !5
  store i32 -7, i32* %70, align 4, !tbaa !1
  %71 = load i32, i32* %5, align 4, !tbaa !1
  %72 = or i32 %71, -7
  store i32 %72, i32* %5, align 4, !tbaa !1
  %73 = load i8, i8* %l_657, align 1, !tbaa !9
  %74 = load %union.U0**, %union.U0*** %l_674, align 8, !tbaa !5
  %75 = load %union.U0**, %union.U0*** @g_676, align 8, !tbaa !5
  %76 = load %union.U0***, %union.U0**** %l_678, align 8, !tbaa !5
  store %union.U0** %75, %union.U0*** %76, align 8, !tbaa !5
  %77 = load %union.U0***, %union.U0**** %l_679, align 8, !tbaa !5
  store %union.U0** %75, %union.U0*** %77, align 8, !tbaa !5
  %78 = icmp eq %union.U0** %74, %75
  %79 = zext i1 %78 to i32
  %80 = load i8**, i8*** %l_681, align 8, !tbaa !5
  %81 = load i8**, i8*** @g_683, align 8, !tbaa !5
  %82 = load i8***, i8**** %l_685, align 8, !tbaa !5
  store i8** %81, i8*** %82, align 8, !tbaa !5
  %83 = icmp eq i8** %80, %81
  %84 = zext i1 %83 to i32
  %85 = sext i32 %84 to i64
  %86 = load i8, i8* %l_657, align 1, !tbaa !9
  %87 = zext i8 %86 to i32
  %88 = load i8***, i8**** %l_688, align 8, !tbaa !5
  store i8*** %88, i8**** getelementptr inbounds ([9 x i8***], [9 x i8***]* @g_690, i32 0, i64 3), align 8, !tbaa !5
  %89 = icmp ne i8*** %88, null
  %90 = zext i1 %89 to i32
  %91 = icmp eq i32 %87, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %5, align 4, !tbaa !1
  %94 = icmp sge i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = load i32, i32* %6, align 4, !tbaa !1
  %98 = zext i32 %97 to i64
  %99 = call i64 @safe_mod_func_uint64_t_u_u(i64 %96, i64 %98)
  %100 = xor i64 %99, 1
  %101 = load i8, i8* %l_692, align 1, !tbaa !9
  %102 = sext i8 %101 to i64
  %103 = and i64 %100, %102
  %104 = icmp eq i64 %85, %103
  %105 = zext i1 %104 to i32
  %106 = sext i32 %105 to i64
  %107 = icmp uge i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = sext i32 %108 to i64
  %110 = icmp sle i64 161, %109
  %111 = zext i1 %110 to i32
  %112 = load i8, i8* %l_692, align 1, !tbaa !9
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

; <label>:115                                     ; preds = %61
  %116 = load i8, i8* %l_657, align 1, !tbaa !9
  %117 = zext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br label %119

; <label>:119                                     ; preds = %115, %61
  %120 = phi i1 [ false, %61 ], [ %118, %115 ]
  %121 = zext i1 %120 to i32
  %122 = trunc i32 %121 to i16
  %123 = load i16*, i16** @g_141, align 8, !tbaa !5
  %124 = load i16, i16* %123, align 2, !tbaa !10
  %125 = zext i16 %124 to i32
  %126 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %122, i32 %125)
  %127 = sext i16 %126 to i64
  %128 = icmp ne i64 %127, 1
  %129 = zext i1 %128 to i32
  %130 = trunc i32 %129 to i16
  %131 = load i8, i8* %l_657, align 1, !tbaa !9
  %132 = zext i8 %131 to i16
  %133 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %130, i16 zeroext %132)
  %134 = load i16*, i16** @g_141, align 8, !tbaa !5
  %135 = load i16, i16* %134, align 2, !tbaa !10
  %136 = load i32, i32* %3, align 4, !tbaa !1
  %137 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %135, i32 %136)
  %138 = trunc i16 %137 to i8
  %139 = load i8**, i8*** %l_681, align 8, !tbaa !5
  %140 = load i8*, i8** %139, align 8, !tbaa !5
  store i8 %138, i8* %140, align 1, !tbaa !9
  %141 = sext i8 %138 to i32
  %142 = load i8*, i8** %l_694, align 8, !tbaa !5
  %143 = load i8, i8* %142, align 1, !tbaa !9
  %144 = sext i8 %143 to i32
  %145 = xor i32 %144, %141
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %142, align 1, !tbaa !9
  %147 = sext i8 %146 to i32
  %148 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %73, i32 %147)
  %149 = load i8, i8* %l_692, align 1, !tbaa !9
  %150 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext 1, i8 signext %149)
  %151 = sext i8 %150 to i32
  %152 = load i8, i8* %l_657, align 1, !tbaa !9
  %153 = zext i8 %152 to i32
  %154 = and i32 %151, %153
  %155 = load i32, i32* %6, align 4, !tbaa !1
  %156 = call i32 @safe_add_func_int32_t_s_s(i32 %154, i32 %155)
  %157 = load i8***, i8**** @g_615, align 8, !tbaa !5
  %158 = load i8**, i8*** %157, align 8, !tbaa !5
  %159 = load i8*, i8** %158, align 8, !tbaa !5
  %160 = load i8, i8* %159, align 1, !tbaa !9
  %161 = load i32, i32* %3, align 4, !tbaa !1
  %162 = trunc i32 %161 to i8
  %163 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %160, i8 zeroext %162)
  %164 = icmp ne i8 %163, 0
  br i1 %164, label %165, label %860

; <label>:165                                     ; preds = %119
  %166 = bitcast [6 x i8***]* %l_701 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %166) #1
  %167 = bitcast [6 x i8***]* %l_701 to i8*
  call void @llvm.memset.p0i8.i64(i8* %167, i8 0, i64 48, i32 16, i1 false)
  %168 = bitcast i8* %167 to [6 x i8***]*
  %169 = getelementptr [6 x i8***], [6 x i8***]* %168, i32 0, i32 0
  store i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [9 x i8**]]* @g_616 to i8*), i64 272) to i8***), i8**** %169
  %170 = getelementptr [6 x i8***], [6 x i8***]* %168, i32 0, i32 2
  store i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [9 x i8**]]* @g_616 to i8*), i64 272) to i8***), i8**** %170
  %171 = getelementptr [6 x i8***], [6 x i8***]* %168, i32 0, i32 3
  store i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [9 x i8**]]* @g_616 to i8*), i64 272) to i8***), i8**** %171
  %172 = getelementptr [6 x i8***], [6 x i8***]* %168, i32 0, i32 5
  store i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [9 x i8**]]* @g_616 to i8*), i64 272) to i8***), i8**** %172
  %173 = bitcast i32**** %l_714 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %173) #1
  store i32*** @g_444, i32**** %l_714, align 8, !tbaa !5
  %174 = bitcast i16** %l_717 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %174) #1
  store i16* null, i16** %l_717, align 8, !tbaa !5
  %175 = bitcast i16** %l_718 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #1
  store i16* null, i16** %l_718, align 8, !tbaa !5
  %176 = bitcast i16** %l_719 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %176) #1
  %177 = getelementptr inbounds [3 x i16], [3 x i16]* %l_716, i32 0, i64 1
  store i16* %177, i16** %l_719, align 8, !tbaa !5
  %178 = bitcast %union.U0** %l_743 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %178) #1
  store %union.U0* @g_128, %union.U0** %l_743, align 8, !tbaa !5
  %179 = bitcast [5 x [5 x i8]]* %l_779 to i8*
  call void @llvm.lifetime.start(i64 25, i8* %179) #1
  %180 = bitcast [5 x [5 x i8]]* %l_779 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* getelementptr inbounds ([5 x [5 x i8]], [5 x [5 x i8]]* @func_50.l_779, i32 0, i32 0, i32 0), i64 25, i32 16, i1 false)
  %181 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #1
  %182 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %182) #1
  %183 = getelementptr inbounds [6 x i8***], [6 x i8***]* %l_701, i32 0, i64 2
  %184 = load i8***, i8**** %183, align 8, !tbaa !5
  %185 = icmp ne i8*** %184, null
  %186 = zext i1 %185 to i32
  %187 = load i32*, i32** @g_152, align 8, !tbaa !5
  %188 = load i32, i32* %187, align 4, !tbaa !1
  %189 = load i8, i8* %2, align 1, !tbaa !9
  %190 = zext i8 %189 to i32
  %191 = call i32 @safe_unary_minus_func_int32_t_s(i32 %190)
  %192 = call i32 @safe_sub_func_int32_t_s_s(i32 %188, i32 %191)
  %193 = load i8, i8* %l_657, align 1, !tbaa !9
  %194 = load i8**, i8*** @g_288, align 8, !tbaa !5
  %195 = load volatile i8*, i8** %194, align 8, !tbaa !5
  %196 = load volatile i8, i8* %195, align 1, !tbaa !9
  %197 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %193, i8 signext %196)
  %198 = load i32***, i32**** %l_713, align 8, !tbaa !5
  %199 = load i32***, i32**** %l_714, align 8, !tbaa !5
  store i32*** %199, i32**** %l_715, align 8, !tbaa !5
  %200 = icmp eq i32*** %198, %199
  %201 = zext i1 %200 to i32
  %202 = trunc i32 %201 to i8
  %203 = load volatile i8*, i8** @g_289, align 8, !tbaa !5
  %204 = load volatile i8, i8* %203, align 1, !tbaa !9
  %205 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %202, i8 zeroext %204)
  %206 = load i32**, i32*** @g_444, align 8, !tbaa !5
  %207 = load i32*, i32** %206, align 8, !tbaa !5
  %208 = load i32, i32* %207, align 4, !tbaa !1
  %209 = sext i32 %208 to i64
  %210 = or i64 %209, 4216936562
  %211 = load i8, i8* @g_115, align 1, !tbaa !9
  %212 = zext i8 %211 to i64
  %213 = icmp sle i64 %210, %212
  %214 = zext i1 %213 to i32
  %215 = load i16, i16* @g_142, align 2, !tbaa !10
  %216 = zext i16 %215 to i32
  %217 = load i16*, i16** @g_141, align 8, !tbaa !5
  %218 = load i16, i16* %217, align 2, !tbaa !10
  %219 = zext i16 %218 to i32
  %220 = and i32 %216, %219
  %221 = trunc i32 %220 to i8
  %222 = load i32, i32* %3, align 4, !tbaa !1
  %223 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %221, i32 %222)
  %224 = sext i8 %223 to i32
  %225 = icmp sle i32 %192, %224
  %226 = zext i1 %225 to i32
  %227 = sext i32 %226 to i64
  %228 = or i64 7, %227
  %229 = getelementptr inbounds [3 x i16], [3 x i16]* %l_716, i32 0, i64 2
  %230 = load i16, i16* %229, align 2, !tbaa !10
  %231 = sext i16 %230 to i64
  %232 = or i64 %228, %231
  %233 = trunc i64 %232 to i32
  %234 = call i32 @safe_div_func_int32_t_s_s(i32 %186, i32 %233)
  %235 = trunc i32 %234 to i16
  %236 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %235, i16 zeroext -28086)
  %237 = zext i16 %236 to i32
  %238 = load i32***, i32**** %l_714, align 8, !tbaa !5
  %239 = load i32**, i32*** %238, align 8, !tbaa !5
  %240 = load i32*, i32** %239, align 8, !tbaa !5
  %241 = load i32, i32* %240, align 4, !tbaa !1
  %242 = and i32 %237, %241
  %243 = trunc i32 %242 to i16
  %244 = load i16*, i16** %l_719, align 8, !tbaa !5
  store i16 %243, i16* %244, align 2, !tbaa !10
  %245 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %243, i32 8)
  %246 = icmp ne i16 %245, 0
  br i1 %246, label %247, label %659

; <label>:247                                     ; preds = %165
  %248 = bitcast i16* %l_723 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %248) #1
  store i16 9, i16* %l_723, align 2, !tbaa !10
  %249 = bitcast %union.U0** %l_744 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %249) #1
  store %union.U0* @g_745, %union.U0** %l_744, align 8, !tbaa !5
  %250 = bitcast %union.U0** %l_746 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %250) #1
  store %union.U0* @g_128, %union.U0** %l_746, align 8, !tbaa !5
  %251 = bitcast [1 x i8*]* %l_750 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %251) #1
  %252 = bitcast i32* %l_751 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %252) #1
  store i32 269865456, i32* %l_751, align 4, !tbaa !1
  %253 = bitcast [10 x [1 x i32]]* %l_768 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %253) #1
  %254 = bitcast [10 x [1 x i32]]* %l_768 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %254, i8* bitcast ([10 x [1 x i32]]* @func_50.l_768 to i8*), i64 40, i32 16, i1 false)
  %255 = bitcast i16** %l_775 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %255) #1
  store i16* null, i16** %l_775, align 8, !tbaa !5
  %256 = bitcast i16** %l_776 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %256) #1
  store i16* @g_172, i16** %l_776, align 8, !tbaa !5
  %257 = bitcast i64* %l_786 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %257) #1
  store i64 9202473256906589899, i64* %l_786, align 8, !tbaa !7
  %258 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %258) #1
  %259 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %259) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %260

; <label>:260                                     ; preds = %267, %247
  %261 = load i32, i32* %i3, align 4, !tbaa !1
  %262 = icmp slt i32 %261, 1
  br i1 %262, label %263, label %270

; <label>:263                                     ; preds = %260
  %264 = load i32, i32* %i3, align 4, !tbaa !1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [1 x i8*], [1 x i8*]* %l_750, i32 0, i64 %265
  store i8* null, i8** %266, align 8, !tbaa !5
  br label %267

; <label>:267                                     ; preds = %263
  %268 = load i32, i32* %i3, align 4, !tbaa !1
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %i3, align 4, !tbaa !1
  br label %260

; <label>:270                                     ; preds = %260
  store i16 0, i16* @g_439, align 2, !tbaa !10
  br label %271

; <label>:271                                     ; preds = %371, %270
  %272 = load i16, i16* @g_439, align 2, !tbaa !10
  %273 = sext i16 %272 to i32
  %274 = icmp sle i32 %273, -23
  br i1 %274, label %275, label %376

; <label>:275                                     ; preds = %271
  %276 = bitcast [8 x [7 x [2 x i64*]]]* %l_732 to i8*
  call void @llvm.lifetime.start(i64 896, i8* %276) #1
  %277 = bitcast [8 x [7 x [2 x i64*]]]* %l_732 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %277, i8* bitcast ([8 x [7 x [2 x i64*]]]* @func_50.l_732 to i8*), i64 896, i32 16, i1 false)
  %278 = bitcast i8**** %l_739 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %278) #1
  store i8*** getelementptr inbounds ([4 x [9 x i8**]], [4 x [9 x i8**]]* @g_616, i32 0, i64 3, i64 7), i8**** %l_739, align 8, !tbaa !5
  %279 = bitcast i32* %l_740 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %279) #1
  store i32 -1, i32* %l_740, align 4, !tbaa !1
  %280 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %280) #1
  %281 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %281) #1
  %282 = bitcast i32* %k7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %282) #1
  %283 = load i16, i16* %l_723, align 2, !tbaa !10
  %284 = sext i16 %283 to i32
  %285 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %286 = load i32**, i32*** %285, align 8, !tbaa !5
  %287 = load i32*, i32** %286, align 8, !tbaa !5
  store i32 %284, i32* %287, align 4, !tbaa !1
  %288 = load i16*, i16** @g_141, align 8, !tbaa !5
  %289 = load i16, i16* %288, align 2, !tbaa !10
  %290 = load i32, i32* @g_65, align 4, !tbaa !1
  %291 = add i32 %290, 1
  store i32 %291, i32* @g_65, align 4, !tbaa !1
  %292 = load i8**, i8*** @g_288, align 8, !tbaa !5
  %293 = load volatile i8*, i8** %292, align 8, !tbaa !5
  %294 = load volatile i8, i8* %293, align 1, !tbaa !9
  %295 = sext i8 %294 to i32
  %296 = load i32***, i32**** %l_714, align 8, !tbaa !5
  %297 = load i32**, i32*** %296, align 8, !tbaa !5
  %298 = load i32*, i32** %297, align 8, !tbaa !5
  %299 = load i32, i32* %298, align 4, !tbaa !1
  %300 = trunc i32 %299 to i8
  %301 = load i8**, i8*** %l_681, align 8, !tbaa !5
  %302 = load i8*, i8** %301, align 8, !tbaa !5
  store i8 %300, i8* %302, align 1, !tbaa !9
  %303 = sext i8 %300 to i32
  %304 = icmp eq i32 %295, %303
  %305 = zext i1 %304 to i32
  %306 = load i32***, i32**** %l_714, align 8, !tbaa !5
  %307 = load i32**, i32*** %306, align 8, !tbaa !5
  %308 = load i32*, i32** %307, align 8, !tbaa !5
  store i32 %305, i32* %308, align 4, !tbaa !1
  %309 = sext i32 %305 to i64
  %310 = load i32, i32* @g_40, align 4, !tbaa !1
  %311 = load i8***, i8**** @g_615, align 8, !tbaa !5
  %312 = load i8**, i8*** %311, align 8, !tbaa !5
  %313 = load i8*, i8** %312, align 8, !tbaa !5
  %314 = icmp ne i8* %2, %313
  %315 = zext i1 %314 to i32
  %316 = sext i32 %315 to i64
  %317 = load i8***, i8**** %l_739, align 8, !tbaa !5
  %318 = icmp ne i8*** %317, null
  %319 = zext i1 %318 to i32
  %320 = load i32, i32* %l_740, align 4, !tbaa !1
  %321 = icmp sle i32 %319, %320
  %322 = zext i1 %321 to i32
  %323 = sext i32 %322 to i64
  %324 = icmp eq i64 2, %323
  %325 = zext i1 %324 to i32
  %326 = load i32, i32* %6, align 4, !tbaa !1
  %327 = icmp ne i32 %325, %326
  %328 = zext i1 %327 to i32
  %329 = sext i32 %328 to i64
  %330 = call i64 @safe_add_func_int64_t_s_s(i64 %316, i64 %329)
  %331 = trunc i64 %330 to i8
  %332 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %331, i32 5)
  %333 = sext i8 %332 to i32
  %334 = and i32 %310, %333
  %335 = load i16*, i16** @g_141, align 8, !tbaa !5
  %336 = load i16, i16* %335, align 2, !tbaa !10
  %337 = zext i16 %336 to i32
  %338 = icmp sle i32 %334, %337
  %339 = zext i1 %338 to i32
  %340 = load i32, i32* @g_98, align 4, !tbaa !1
  %341 = icmp ne i32 %339, %340
  %342 = zext i1 %341 to i32
  %343 = sext i32 %342 to i64
  %344 = call i64 @safe_unary_minus_func_int64_t_s(i64 %343)
  %345 = xor i64 %344, -1
  %346 = icmp eq i64 %309, %345
  %347 = zext i1 %346 to i32
  %348 = trunc i32 %347 to i16
  %349 = load i32, i32* @g_198, align 4, !tbaa !1
  %350 = trunc i32 %349 to i16
  %351 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %348, i16 zeroext %350)
  %352 = load i32, i32* %l_740, align 4, !tbaa !1
  %353 = icmp slt i32 1, %352
  br i1 %353, label %354, label %355

; <label>:354                                     ; preds = %275
  br label %355

; <label>:355                                     ; preds = %354, %275
  %356 = phi i1 [ false, %275 ], [ false, %354 ]
  %357 = zext i1 %356 to i32
  %358 = icmp uge i32 %290, %357
  %359 = zext i1 %358 to i32
  %360 = trunc i32 %359 to i16
  %361 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %289, i16 zeroext %360)
  %362 = trunc i16 %361 to i8
  %363 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %362, i32 3)
  %364 = sext i8 %363 to i32
  store i32 %364, i32* %5, align 4, !tbaa !1
  %365 = bitcast i32* %k7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %365) #1
  %366 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %366) #1
  %367 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %367) #1
  %368 = bitcast i32* %l_740 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %368) #1
  %369 = bitcast i8**** %l_739 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %369) #1
  %370 = bitcast [8 x [7 x [2 x i64*]]]* %l_732 to i8*
  call void @llvm.lifetime.end(i64 896, i8* %370) #1
  br label %371

; <label>:371                                     ; preds = %355
  %372 = load i16, i16* @g_439, align 2, !tbaa !10
  %373 = sext i16 %372 to i64
  %374 = call i64 @safe_sub_func_int64_t_s_s(i64 %373, i64 9)
  %375 = trunc i64 %374 to i16
  store i16 %375, i16* @g_439, align 2, !tbaa !10
  br label %271

; <label>:376                                     ; preds = %271
  store i16 0, i16* @g_142, align 2, !tbaa !10
  br label %377

; <label>:377                                     ; preds = %575, %376
  %378 = load i16, i16* @g_142, align 2, !tbaa !10
  %379 = zext i16 %378 to i32
  %380 = icmp sgt i32 %379, 33
  br i1 %380, label %381, label %578

; <label>:381                                     ; preds = %377
  %382 = bitcast [10 x [7 x i32]]* %l_749 to i8*
  call void @llvm.lifetime.start(i64 280, i8* %382) #1
  %383 = bitcast [10 x [7 x i32]]* %l_749 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %383, i8* bitcast ([10 x [7 x i32]]* @func_50.l_749 to i8*), i64 280, i32 16, i1 false)
  %384 = bitcast i32** %l_760 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %384) #1
  store i32* null, i32** %l_760, align 8, !tbaa !5
  %385 = bitcast i32** %l_761 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %385) #1
  %386 = getelementptr inbounds [10 x [7 x i32]], [10 x [7 x i32]]* %l_749, i32 0, i64 5
  %387 = getelementptr inbounds [7 x i32], [7 x i32]* %386, i32 0, i64 5
  store i32* %387, i32** %l_761, align 8, !tbaa !5
  %388 = bitcast i64* %l_764 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %388) #1
  store i64 1, i64* %l_764, align 8, !tbaa !7
  %389 = bitcast [1 x [2 x i32]]* %l_765 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %389) #1
  %390 = bitcast i64** %l_767 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %390) #1
  store i64* @g_174, i64** %l_767, align 8, !tbaa !5
  %391 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %391) #1
  %392 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %392) #1
  store i32 0, i32* %i8, align 4, !tbaa !1
  br label %393

; <label>:393                                     ; preds = %411, %381
  %394 = load i32, i32* %i8, align 4, !tbaa !1
  %395 = icmp slt i32 %394, 1
  br i1 %395, label %396, label %414

; <label>:396                                     ; preds = %393
  store i32 0, i32* %j9, align 4, !tbaa !1
  br label %397

; <label>:397                                     ; preds = %407, %396
  %398 = load i32, i32* %j9, align 4, !tbaa !1
  %399 = icmp slt i32 %398, 2
  br i1 %399, label %400, label %410

; <label>:400                                     ; preds = %397
  %401 = load i32, i32* %j9, align 4, !tbaa !1
  %402 = sext i32 %401 to i64
  %403 = load i32, i32* %i8, align 4, !tbaa !1
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [1 x [2 x i32]], [1 x [2 x i32]]* %l_765, i32 0, i64 %404
  %406 = getelementptr inbounds [2 x i32], [2 x i32]* %405, i32 0, i64 %402
  store i32 -1187300074, i32* %406, align 4, !tbaa !1
  br label %407

; <label>:407                                     ; preds = %400
  %408 = load i32, i32* %j9, align 4, !tbaa !1
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %j9, align 4, !tbaa !1
  br label %397

; <label>:410                                     ; preds = %397
  br label %411

; <label>:411                                     ; preds = %410
  %412 = load i32, i32* %i8, align 4, !tbaa !1
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %i8, align 4, !tbaa !1
  br label %393

; <label>:414                                     ; preds = %393
  %415 = load %union.U0*, %union.U0** %l_743, align 8, !tbaa !5
  store %union.U0* %415, %union.U0** %l_744, align 8, !tbaa !5
  %416 = load %union.U0*, %union.U0** %l_746, align 8, !tbaa !5
  %417 = icmp eq %union.U0* %415, %416
  %418 = zext i1 %417 to i32
  %419 = load i8***, i8**** @g_615, align 8, !tbaa !5
  %420 = load i8**, i8*** %419, align 8, !tbaa !5
  %421 = load i8*, i8** %420, align 8, !tbaa !5
  %422 = load i8, i8* %421, align 1, !tbaa !9
  %423 = add i8 %422, 1
  store i8 %423, i8* %421, align 1, !tbaa !9
  %424 = zext i8 %423 to i32
  %425 = icmp eq i32 1, %424
  %426 = zext i1 %425 to i32
  %427 = getelementptr inbounds [10 x [7 x i32]], [10 x [7 x i32]]* %l_749, i32 0, i64 9
  %428 = getelementptr inbounds [7 x i32], [7 x i32]* %427, i32 0, i64 3
  %429 = load i32, i32* %428, align 4, !tbaa !1
  %430 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %431 = load i32**, i32*** %430, align 8, !tbaa !5
  %432 = load i32*, i32** %431, align 8, !tbaa !5
  store i32 %429, i32* %432, align 4, !tbaa !1
  %433 = load i32, i32* %6, align 4, !tbaa !1
  %434 = load i16, i16* @g_195, align 2, !tbaa !10
  %435 = zext i16 %434 to i32
  %436 = getelementptr inbounds [1 x i8*], [1 x i8*]* %l_750, i32 0, i64 0
  %437 = load i8*, i8** %436, align 8, !tbaa !5
  %438 = load i8**, i8*** @g_683, align 8, !tbaa !5
  store i8* %437, i8** %438, align 8, !tbaa !5
  %439 = load i8**, i8*** @g_288, align 8, !tbaa !5
  %440 = load volatile i8*, i8** %439, align 8, !tbaa !5
  %441 = icmp ne i8* %437, %440
  %442 = zext i1 %441 to i32
  %443 = icmp slt i32 %435, %442
  %444 = zext i1 %443 to i32
  %445 = icmp eq i32 %433, %444
  %446 = zext i1 %445 to i32
  %447 = load volatile i32, i32* @g_510, align 4, !tbaa !1
  %448 = zext i32 %447 to i64
  %449 = or i64 %448, 1
  %450 = icmp ult i64 %449, 2
  %451 = zext i1 %450 to i32
  %452 = load i32, i32* %6, align 4, !tbaa !1
  %453 = icmp ult i32 %451, %452
  %454 = zext i1 %453 to i32
  %455 = load i32, i32* %5, align 4, !tbaa !1
  %456 = icmp slt i32 %454, %455
  %457 = zext i1 %456 to i32
  %458 = icmp ne i32 %429, %457
  %459 = zext i1 %458 to i32
  %460 = load i32, i32* %l_751, align 4, !tbaa !1
  %461 = and i32 %460, %459
  store i32 %461, i32* %l_751, align 4, !tbaa !1
  %462 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_745, i32 0, i32 0), align 4, !tbaa !1
  %463 = trunc i32 %462 to i16
  %464 = load volatile %union.U0**, %union.U0*** @g_18, align 8, !tbaa !5
  %465 = load volatile %union.U0*, %union.U0** %464, align 8, !tbaa !5
  %466 = icmp eq %union.U0* %465, null
  %467 = zext i1 %466 to i32
  %468 = load i32*, i32** %l_761, align 8, !tbaa !5
  %469 = load i32, i32* %468, align 4, !tbaa !1
  %470 = add i32 %469, -1
  store i32 %470, i32* %468, align 4, !tbaa !1
  %471 = load i32, i32* %3, align 4, !tbaa !1
  %472 = load i64, i64* %l_764, align 8, !tbaa !7
  %473 = xor i64 %472, 18
  %474 = icmp sle i64 %473, 3065734439
  %475 = zext i1 %474 to i32
  %476 = getelementptr inbounds [1 x [2 x i32]], [1 x [2 x i32]]* %l_765, i32 0, i64 0
  %477 = getelementptr inbounds [2 x i32], [2 x i32]* %476, i32 0, i64 1
  store i32 %475, i32* %477, align 4, !tbaa !1
  %478 = or i32 %471, %475
  %479 = load i32, i32* %3, align 4, !tbaa !1
  %480 = icmp slt i32 %478, %479
  %481 = zext i1 %480 to i32
  %482 = sext i32 %481 to i64
  %483 = icmp eq i64 %482, -1
  %484 = zext i1 %483 to i32
  %485 = sext i32 %484 to i64
  %486 = load i64, i64* %l_764, align 8, !tbaa !7
  %487 = icmp slt i64 %485, %486
  %488 = zext i1 %487 to i32
  %489 = sext i32 %488 to i64
  %490 = and i64 %489, 3877501135
  %491 = load i32*, i32** %l_766, align 8, !tbaa !5
  %492 = icmp eq i32* @g_65, %491
  %493 = zext i1 %492 to i32
  %494 = load i32, i32* %l_751, align 4, !tbaa !1
  %495 = call i32 @safe_mod_func_int32_t_s_s(i32 %493, i32 %494)
  %496 = or i32 %467, %495
  %497 = sext i32 %496 to i64
  %498 = load i64, i64* %l_764, align 8, !tbaa !7
  %499 = icmp slt i64 %497, %498
  %500 = zext i1 %499 to i32
  %501 = load i32, i32* %6, align 4, !tbaa !1
  %502 = load i8, i8* getelementptr inbounds ([4 x [5 x [8 x i8]]], [4 x [5 x [8 x i8]]]* @g_466, i32 0, i64 3, i64 0, i64 2), align 1, !tbaa !9
  %503 = sext i8 %502 to i64
  %504 = icmp slt i64 31557, %503
  %505 = zext i1 %504 to i32
  %506 = load i32, i32* %6, align 4, !tbaa !1
  %507 = icmp ult i32 %505, %506
  %508 = zext i1 %507 to i32
  %509 = trunc i32 %508 to i8
  %510 = load i8, i8* %2, align 1, !tbaa !9
  %511 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %509, i8 signext %510)
  %512 = sext i8 %511 to i32
  %513 = load i32***, i32**** %l_715, align 8, !tbaa !5
  %514 = load i32**, i32*** %513, align 8, !tbaa !5
  %515 = load i32*, i32** %514, align 8, !tbaa !5
  %516 = load i32, i32* %515, align 4, !tbaa !1
  %517 = icmp slt i32 %512, %516
  %518 = zext i1 %517 to i32
  %519 = trunc i32 %518 to i16
  %520 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %463, i16 signext %519)
  %521 = sext i16 %520 to i64
  %522 = icmp sge i64 %521, 1
  %523 = zext i1 %522 to i32
  %524 = load i32, i32* %l_751, align 4, !tbaa !1
  %525 = sext i32 %524 to i64
  %526 = load i64*, i64** %l_767, align 8, !tbaa !5
  store i64 %525, i64* %526, align 8, !tbaa !7
  %527 = icmp ne i64 %525, 0
  br i1 %527, label %531, label %528

; <label>:528                                     ; preds = %414
  %529 = load i32, i32* %3, align 4, !tbaa !1
  %530 = icmp ne i32 %529, 0
  br label %531

; <label>:531                                     ; preds = %528, %414
  %532 = phi i1 [ true, %414 ], [ %530, %528 ]
  %533 = zext i1 %532 to i32
  %534 = load i8, i8* %2, align 1, !tbaa !9
  %535 = zext i8 %534 to i32
  %536 = or i32 %533, %535
  %537 = load i8*, i8** @g_617, align 8, !tbaa !5
  %538 = load i8, i8* %537, align 1, !tbaa !9
  %539 = zext i8 %538 to i32
  %540 = and i32 %539, %536
  %541 = trunc i32 %540 to i8
  store i8 %541, i8* %537, align 1, !tbaa !9
  %542 = load i32***, i32**** %l_714, align 8, !tbaa !5
  %543 = load i32**, i32*** %542, align 8, !tbaa !5
  %544 = load i32*, i32** %543, align 8, !tbaa !5
  %545 = load i32, i32* %544, align 4, !tbaa !1
  %546 = sext i32 %545 to i64
  %547 = icmp ne i64 1, %546
  %548 = zext i1 %547 to i32
  %549 = sext i32 %548 to i64
  %550 = icmp eq i64 26363, %549
  %551 = zext i1 %550 to i32
  %552 = load i16*, i16** @g_141, align 8, !tbaa !5
  %553 = load i16, i16* %552, align 2, !tbaa !10
  %554 = zext i16 %553 to i32
  %555 = icmp ne i32 %551, %554
  %556 = zext i1 %555 to i32
  %557 = load i32, i32* %6, align 4, !tbaa !1
  %558 = call i32 @safe_div_func_int32_t_s_s(i32 %556, i32 %557)
  store i32 %558, i32* %l_751, align 4, !tbaa !1
  %559 = load i16, i16* %l_723, align 2, !tbaa !10
  %560 = sext i16 %559 to i32
  %561 = icmp ne i32 %558, %560
  %562 = zext i1 %561 to i32
  %563 = getelementptr inbounds [10 x [1 x i32]], [10 x [1 x i32]]* %l_768, i32 0, i64 3
  %564 = getelementptr inbounds [1 x i32], [1 x i32]* %563, i32 0, i64 0
  %565 = load i32, i32* %564, align 4, !tbaa !1
  %566 = or i32 %565, %562
  store i32 %566, i32* %564, align 4, !tbaa !1
  store %union.U0* @g_745, %union.U0** %1
  store i32 1, i32* %7
  %567 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %567) #1
  %568 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %568) #1
  %569 = bitcast i64** %l_767 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %569) #1
  %570 = bitcast [1 x [2 x i32]]* %l_765 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %570) #1
  %571 = bitcast i64* %l_764 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %571) #1
  %572 = bitcast i32** %l_761 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %572) #1
  %573 = bitcast i32** %l_760 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %573) #1
  %574 = bitcast [10 x [7 x i32]]* %l_749 to i8*
  call void @llvm.lifetime.end(i64 280, i8* %574) #1
  br label %646
                                                  ; No predecessors!
  %576 = load i16, i16* @g_142, align 2, !tbaa !10
  %577 = add i16 %576, 1
  store i16 %577, i16* @g_142, align 2, !tbaa !10
  br label %377

; <label>:578                                     ; preds = %377
  %579 = load i8, i8* @g_200, align 1, !tbaa !9
  %580 = sext i8 %579 to i32
  %581 = load i32, i32* %3, align 4, !tbaa !1
  %582 = trunc i32 %581 to i16
  %583 = load i16*, i16** @g_141, align 8, !tbaa !5
  store i16 %582, i16* %583, align 2, !tbaa !10
  %584 = zext i16 %582 to i32
  %585 = icmp sle i32 %580, %584
  %586 = zext i1 %585 to i32
  %587 = getelementptr inbounds [10 x [1 x i32]], [10 x [1 x i32]]* %l_768, i32 0, i64 8
  %588 = getelementptr inbounds [1 x i32], [1 x i32]* %587, i32 0, i64 0
  %589 = load i32, i32* %588, align 4, !tbaa !1
  %590 = trunc i32 %589 to i8
  %591 = load i32, i32* %l_751, align 4, !tbaa !1
  %592 = trunc i32 %591 to i16
  %593 = load i16*, i16** %l_776, align 8, !tbaa !5
  store i16 %592, i16* %593, align 2, !tbaa !10
  %594 = load %union.U0*, %union.U0** %l_744, align 8, !tbaa !5
  %595 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %l_779, i32 0, i64 3
  %596 = getelementptr inbounds [5 x i8], [5 x i8]* %595, i32 0, i64 1
  %597 = load i8, i8* %596, align 1, !tbaa !9
  %598 = icmp ne %union.U0* %594, null
  %599 = zext i1 %598 to i32
  %600 = load i32, i32* %3, align 4, !tbaa !1
  %601 = trunc i32 %600 to i8
  %602 = load i8*, i8** @g_617, align 8, !tbaa !5
  store i8 %601, i8* %602, align 1, !tbaa !9
  %603 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %601)
  %604 = zext i8 %603 to i16
  %605 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %604, i32 13)
  %606 = sext i16 %605 to i32
  %607 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %592, i32 %606)
  %608 = trunc i16 %607 to i8
  %609 = load i32***, i32**** %l_714, align 8, !tbaa !5
  %610 = load i32**, i32*** %609, align 8, !tbaa !5
  %611 = load i32*, i32** %610, align 8, !tbaa !5
  %612 = load i32, i32* %611, align 4, !tbaa !1
  %613 = trunc i32 %612 to i8
  %614 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %613, i32 6)
  %615 = sext i8 %614 to i16
  %616 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %615, i16 signext -16950)
  br i1 true, label %620, label %617

; <label>:617                                     ; preds = %578
  %618 = load i64, i64* %l_785, align 8, !tbaa !7
  %619 = icmp ne i64 %618, 0
  br label %620

; <label>:620                                     ; preds = %617, %578
  %621 = phi i1 [ true, %578 ], [ %619, %617 ]
  %622 = zext i1 %621 to i32
  %623 = trunc i32 %622 to i8
  store i8 %623, i8* %2, align 1, !tbaa !9
  %624 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %608, i8 zeroext %623)
  %625 = zext i8 %624 to i32
  %626 = load i32***, i32**** %l_714, align 8, !tbaa !5
  %627 = load i32**, i32*** %626, align 8, !tbaa !5
  %628 = load i32*, i32** %627, align 8, !tbaa !5
  store i32 %625, i32* %628, align 4, !tbaa !1
  %629 = sext i32 %625 to i64
  %630 = load i64, i64* %l_786, align 8, !tbaa !7
  %631 = icmp uge i64 %629, %630
  br i1 %631, label %632, label %633

; <label>:632                                     ; preds = %620
  br label %633

; <label>:633                                     ; preds = %632, %620
  %634 = phi i1 [ false, %620 ], [ true, %632 ]
  %635 = zext i1 %634 to i32
  %636 = trunc i32 %635 to i8
  %637 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %590, i8 signext %636)
  %638 = sext i8 %637 to i32
  %639 = icmp eq i32 %586, %638
  %640 = zext i1 %639 to i32
  %641 = load i32, i32* %3, align 4, !tbaa !1
  %642 = icmp ne i32 %640, %641
  %643 = zext i1 %642 to i32
  %644 = load i32, i32* %5, align 4, !tbaa !1
  %645 = xor i32 %644, %643
  store i32 %645, i32* %5, align 4, !tbaa !1
  store i32 0, i32* %7
  br label %646

; <label>:646                                     ; preds = %633, %531
  %647 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %647) #1
  %648 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %648) #1
  %649 = bitcast i64* %l_786 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %649) #1
  %650 = bitcast i16** %l_776 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %650) #1
  %651 = bitcast i16** %l_775 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %651) #1
  %652 = bitcast [10 x [1 x i32]]* %l_768 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %652) #1
  %653 = bitcast i32* %l_751 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %653) #1
  %654 = bitcast [1 x i8*]* %l_750 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %654) #1
  %655 = bitcast %union.U0** %l_746 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %655) #1
  %656 = bitcast %union.U0** %l_744 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %656) #1
  %657 = bitcast i16* %l_723 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %657) #1
  %cleanup.dest = load i32, i32* %7
  switch i32 %cleanup.dest, label %849 [
    i32 0, label %658
  ]

; <label>:658                                     ; preds = %646
  br label %777

; <label>:659                                     ; preds = %165
  %660 = load i32*, i32** @g_152, align 8, !tbaa !5
  %661 = load i32, i32* %660, align 4, !tbaa !1
  %662 = sext i32 %661 to i64
  %663 = xor i64 %662, 2460361561
  %664 = trunc i64 %663 to i32
  store i32 %664, i32* %660, align 4, !tbaa !1
  %665 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %666 = load i32**, i32*** %665, align 8, !tbaa !5
  %667 = load i32*, i32** %666, align 8, !tbaa !5
  %668 = load i32***, i32**** %l_714, align 8, !tbaa !5
  %669 = load i32**, i32*** %668, align 8, !tbaa !5
  store i32* %667, i32** %669, align 8, !tbaa !5
  store i32 0, i32* @g_461, align 4, !tbaa !1
  br label %670

; <label>:670                                     ; preds = %769, %659
  %671 = load i32, i32* @g_461, align 4, !tbaa !1
  %672 = icmp eq i32 %671, -30
  br i1 %672, label %673, label %772

; <label>:673                                     ; preds = %670
  %674 = bitcast [8 x [9 x i32****]]* %l_790 to i8*
  call void @llvm.lifetime.start(i64 576, i8* %674) #1
  %675 = getelementptr inbounds [8 x [9 x i32****]], [8 x [9 x i32****]]* %l_790, i64 0, i64 0
  %676 = getelementptr inbounds [9 x i32****], [9 x i32****]* %675, i64 0, i64 0
  store i32**** %l_714, i32***** %676, !tbaa !5
  %677 = getelementptr inbounds i32****, i32***** %676, i64 1
  store i32**** %l_714, i32***** %677, !tbaa !5
  %678 = getelementptr inbounds i32****, i32***** %677, i64 1
  store i32**** %l_715, i32***** %678, !tbaa !5
  %679 = getelementptr inbounds i32****, i32***** %678, i64 1
  store i32**** %l_715, i32***** %679, !tbaa !5
  %680 = getelementptr inbounds i32****, i32***** %679, i64 1
  store i32**** @g_443, i32***** %680, !tbaa !5
  %681 = getelementptr inbounds i32****, i32***** %680, i64 1
  store i32**** %l_715, i32***** %681, !tbaa !5
  %682 = getelementptr inbounds i32****, i32***** %681, i64 1
  store i32**** %l_714, i32***** %682, !tbaa !5
  %683 = getelementptr inbounds i32****, i32***** %682, i64 1
  store i32**** @g_443, i32***** %683, !tbaa !5
  %684 = getelementptr inbounds i32****, i32***** %683, i64 1
  store i32**** %l_715, i32***** %684, !tbaa !5
  %685 = getelementptr inbounds [9 x i32****], [9 x i32****]* %675, i64 1
  %686 = getelementptr inbounds [9 x i32****], [9 x i32****]* %685, i64 0, i64 0
  store i32**** %l_715, i32***** %686, !tbaa !5
  %687 = getelementptr inbounds i32****, i32***** %686, i64 1
  store i32**** @g_443, i32***** %687, !tbaa !5
  %688 = getelementptr inbounds i32****, i32***** %687, i64 1
  store i32**** null, i32***** %688, !tbaa !5
  %689 = getelementptr inbounds i32****, i32***** %688, i64 1
  store i32**** @g_443, i32***** %689, !tbaa !5
  %690 = getelementptr inbounds i32****, i32***** %689, i64 1
  store i32**** @g_443, i32***** %690, !tbaa !5
  %691 = getelementptr inbounds i32****, i32***** %690, i64 1
  store i32**** null, i32***** %691, !tbaa !5
  %692 = getelementptr inbounds i32****, i32***** %691, i64 1
  store i32**** @g_443, i32***** %692, !tbaa !5
  %693 = getelementptr inbounds i32****, i32***** %692, i64 1
  store i32**** %l_715, i32***** %693, !tbaa !5
  %694 = getelementptr inbounds i32****, i32***** %693, i64 1
  store i32**** %l_715, i32***** %694, !tbaa !5
  %695 = getelementptr inbounds [9 x i32****], [9 x i32****]* %685, i64 1
  %696 = getelementptr inbounds [9 x i32****], [9 x i32****]* %695, i64 0, i64 0
  store i32**** %l_715, i32***** %696, !tbaa !5
  %697 = getelementptr inbounds i32****, i32***** %696, i64 1
  store i32**** @g_443, i32***** %697, !tbaa !5
  %698 = getelementptr inbounds i32****, i32***** %697, i64 1
  store i32**** %l_715, i32***** %698, !tbaa !5
  %699 = getelementptr inbounds i32****, i32***** %698, i64 1
  store i32**** %l_715, i32***** %699, !tbaa !5
  %700 = getelementptr inbounds i32****, i32***** %699, i64 1
  store i32**** @g_443, i32***** %700, !tbaa !5
  %701 = getelementptr inbounds i32****, i32***** %700, i64 1
  store i32**** null, i32***** %701, !tbaa !5
  %702 = getelementptr inbounds i32****, i32***** %701, i64 1
  store i32**** @g_443, i32***** %702, !tbaa !5
  %703 = getelementptr inbounds i32****, i32***** %702, i64 1
  store i32**** @g_443, i32***** %703, !tbaa !5
  %704 = getelementptr inbounds i32****, i32***** %703, i64 1
  store i32**** null, i32***** %704, !tbaa !5
  %705 = getelementptr inbounds [9 x i32****], [9 x i32****]* %695, i64 1
  %706 = getelementptr inbounds [9 x i32****], [9 x i32****]* %705, i64 0, i64 0
  store i32**** %l_714, i32***** %706, !tbaa !5
  %707 = getelementptr inbounds i32****, i32***** %706, i64 1
  store i32**** @g_443, i32***** %707, !tbaa !5
  %708 = getelementptr inbounds i32****, i32***** %707, i64 1
  store i32**** %l_715, i32***** %708, !tbaa !5
  %709 = getelementptr inbounds i32****, i32***** %708, i64 1
  store i32**** @g_443, i32***** %709, !tbaa !5
  %710 = getelementptr inbounds i32****, i32***** %709, i64 1
  store i32**** %l_714, i32***** %710, !tbaa !5
  %711 = getelementptr inbounds i32****, i32***** %710, i64 1
  store i32**** %l_715, i32***** %711, !tbaa !5
  %712 = getelementptr inbounds i32****, i32***** %711, i64 1
  store i32**** @g_443, i32***** %712, !tbaa !5
  %713 = getelementptr inbounds i32****, i32***** %712, i64 1
  store i32**** %l_715, i32***** %713, !tbaa !5
  %714 = getelementptr inbounds i32****, i32***** %713, i64 1
  store i32**** %l_715, i32***** %714, !tbaa !5
  %715 = getelementptr inbounds [9 x i32****], [9 x i32****]* %705, i64 1
  %716 = getelementptr inbounds [9 x i32****], [9 x i32****]* %715, i64 0, i64 0
  store i32**** @g_443, i32***** %716, !tbaa !5
  %717 = getelementptr inbounds i32****, i32***** %716, i64 1
  store i32**** @g_443, i32***** %717, !tbaa !5
  %718 = getelementptr inbounds i32****, i32***** %717, i64 1
  store i32**** %l_715, i32***** %718, !tbaa !5
  %719 = getelementptr inbounds i32****, i32***** %718, i64 1
  store i32**** %l_715, i32***** %719, !tbaa !5
  %720 = getelementptr inbounds i32****, i32***** %719, i64 1
  store i32**** @g_443, i32***** %720, !tbaa !5
  %721 = getelementptr inbounds i32****, i32***** %720, i64 1
  store i32**** %l_715, i32***** %721, !tbaa !5
  %722 = getelementptr inbounds i32****, i32***** %721, i64 1
  store i32**** @g_443, i32***** %722, !tbaa !5
  %723 = getelementptr inbounds i32****, i32***** %722, i64 1
  store i32**** %l_715, i32***** %723, !tbaa !5
  %724 = getelementptr inbounds i32****, i32***** %723, i64 1
  store i32**** %l_715, i32***** %724, !tbaa !5
  %725 = getelementptr inbounds [9 x i32****], [9 x i32****]* %715, i64 1
  %726 = getelementptr inbounds [9 x i32****], [9 x i32****]* %725, i64 0, i64 0
  store i32**** %l_714, i32***** %726, !tbaa !5
  %727 = getelementptr inbounds i32****, i32***** %726, i64 1
  store i32**** %l_714, i32***** %727, !tbaa !5
  %728 = getelementptr inbounds i32****, i32***** %727, i64 1
  store i32**** %l_715, i32***** %728, !tbaa !5
  %729 = getelementptr inbounds i32****, i32***** %728, i64 1
  store i32**** %l_715, i32***** %729, !tbaa !5
  %730 = getelementptr inbounds i32****, i32***** %729, i64 1
  store i32**** @g_443, i32***** %730, !tbaa !5
  %731 = getelementptr inbounds i32****, i32***** %730, i64 1
  store i32**** %l_715, i32***** %731, !tbaa !5
  %732 = getelementptr inbounds i32****, i32***** %731, i64 1
  store i32**** %l_714, i32***** %732, !tbaa !5
  %733 = getelementptr inbounds i32****, i32***** %732, i64 1
  store i32**** @g_443, i32***** %733, !tbaa !5
  %734 = getelementptr inbounds i32****, i32***** %733, i64 1
  store i32**** %l_715, i32***** %734, !tbaa !5
  %735 = getelementptr inbounds [9 x i32****], [9 x i32****]* %725, i64 1
  %736 = getelementptr inbounds [9 x i32****], [9 x i32****]* %735, i64 0, i64 0
  store i32**** %l_715, i32***** %736, !tbaa !5
  %737 = getelementptr inbounds i32****, i32***** %736, i64 1
  store i32**** @g_443, i32***** %737, !tbaa !5
  %738 = getelementptr inbounds i32****, i32***** %737, i64 1
  store i32**** null, i32***** %738, !tbaa !5
  %739 = getelementptr inbounds i32****, i32***** %738, i64 1
  store i32**** @g_443, i32***** %739, !tbaa !5
  %740 = getelementptr inbounds i32****, i32***** %739, i64 1
  store i32**** @g_443, i32***** %740, !tbaa !5
  %741 = getelementptr inbounds i32****, i32***** %740, i64 1
  store i32**** null, i32***** %741, !tbaa !5
  %742 = getelementptr inbounds i32****, i32***** %741, i64 1
  store i32**** @g_443, i32***** %742, !tbaa !5
  %743 = getelementptr inbounds i32****, i32***** %742, i64 1
  store i32**** %l_715, i32***** %743, !tbaa !5
  %744 = getelementptr inbounds i32****, i32***** %743, i64 1
  store i32**** %l_715, i32***** %744, !tbaa !5
  %745 = getelementptr inbounds [9 x i32****], [9 x i32****]* %735, i64 1
  %746 = getelementptr inbounds [9 x i32****], [9 x i32****]* %745, i64 0, i64 0
  store i32**** %l_715, i32***** %746, !tbaa !5
  %747 = getelementptr inbounds i32****, i32***** %746, i64 1
  store i32**** @g_443, i32***** %747, !tbaa !5
  %748 = getelementptr inbounds i32****, i32***** %747, i64 1
  store i32**** %l_715, i32***** %748, !tbaa !5
  %749 = getelementptr inbounds i32****, i32***** %748, i64 1
  store i32**** %l_715, i32***** %749, !tbaa !5
  %750 = getelementptr inbounds i32****, i32***** %749, i64 1
  store i32**** @g_443, i32***** %750, !tbaa !5
  %751 = getelementptr inbounds i32****, i32***** %750, i64 1
  store i32**** null, i32***** %751, !tbaa !5
  %752 = getelementptr inbounds i32****, i32***** %751, i64 1
  store i32**** @g_443, i32***** %752, !tbaa !5
  %753 = getelementptr inbounds i32****, i32***** %752, i64 1
  store i32**** @g_443, i32***** %753, !tbaa !5
  %754 = getelementptr inbounds i32****, i32***** %753, i64 1
  store i32**** null, i32***** %754, !tbaa !5
  %755 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %755) #1
  %756 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %756) #1
  %757 = load i32, i32* %6, align 4, !tbaa !1
  %758 = getelementptr inbounds [9 x [8 x i32]], [9 x [8 x i32]]* %l_789, i32 0, i64 3
  %759 = getelementptr inbounds [8 x i32], [8 x i32]* %758, i32 0, i64 2
  %760 = load i32, i32* %759, align 4, !tbaa !1
  %761 = icmp uge i32 %757, %760
  %762 = zext i1 %761 to i32
  %763 = sext i32 %762 to i64
  %764 = icmp eq i64 %763, 914166133
  %765 = zext i1 %764 to i32
  store i32*** @g_444, i32**** @g_443, align 8, !tbaa !5
  %766 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %766) #1
  %767 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %767) #1
  %768 = bitcast [8 x [9 x i32****]]* %l_790 to i8*
  call void @llvm.lifetime.end(i64 576, i8* %768) #1
  br label %769

; <label>:769                                     ; preds = %673
  %770 = load i32, i32* @g_461, align 4, !tbaa !1
  %771 = add nsw i32 %770, -1
  store i32 %771, i32* @g_461, align 4, !tbaa !1
  br label %670

; <label>:772                                     ; preds = %670
  %773 = load i32*, i32** @g_152, align 8, !tbaa !5
  %774 = load i32, i32* %773, align 4, !tbaa !1
  %775 = load i32, i32* %5, align 4, !tbaa !1
  %776 = and i32 %775, %774
  store i32 %776, i32* %5, align 4, !tbaa !1
  br label %777

; <label>:777                                     ; preds = %772, %658
  %778 = load i32***, i32**** %l_714, align 8, !tbaa !5
  %779 = load i32**, i32*** %778, align 8, !tbaa !5
  %780 = load i32*, i32** %779, align 8, !tbaa !5
  %781 = load i32, i32* %780, align 4, !tbaa !1
  %782 = load i32, i32* %5, align 4, !tbaa !1
  %783 = call i32 @safe_mod_func_uint32_t_u_u(i32 %781, i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %784, i32 5)
  %786 = load i8*, i8** @g_617, align 8, !tbaa !5
  %787 = load i8, i8* %786, align 1, !tbaa !9
  %788 = zext i8 %787 to i64
  %789 = icmp ne i64 %788, 187
  br i1 %789, label %809, label %790

; <label>:790                                     ; preds = %777
  %791 = load i32***, i32**** %l_714, align 8, !tbaa !5
  %792 = load i32**, i32*** %791, align 8, !tbaa !5
  %793 = load i32*, i32** %792, align 8, !tbaa !5
  %794 = load i32, i32* %793, align 4, !tbaa !1
  %795 = load volatile i8****, i8***** @g_614, align 8, !tbaa !5
  %796 = load i8***, i8**** %795, align 8, !tbaa !5
  %797 = load i8**, i8*** %796, align 8, !tbaa !5
  %798 = load i8***, i8**** @g_615, align 8, !tbaa !5
  %799 = load i8**, i8*** %798, align 8, !tbaa !5
  %800 = icmp eq i8** %797, %799
  %801 = xor i1 %800, true
  %802 = zext i1 %801 to i32
  %803 = icmp sle i32 %794, %802
  %804 = zext i1 %803 to i32
  %805 = trunc i32 %804 to i16
  %806 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %805, i16 zeroext 0)
  %807 = zext i16 %806 to i32
  %808 = icmp ne i32 %807, 0
  br label %809

; <label>:809                                     ; preds = %790, %777
  %810 = phi i1 [ true, %777 ], [ %808, %790 ]
  %811 = zext i1 %810 to i32
  %812 = sext i32 %811 to i64
  %813 = load i32, i32* %5, align 4, !tbaa !1
  %814 = sext i32 %813 to i64
  %815 = call i64 @safe_mod_func_uint64_t_u_u(i64 %812, i64 %814)
  %816 = icmp ne i64 %815, 1
  %817 = zext i1 %816 to i32
  %818 = sext i32 %817 to i64
  %819 = load i32***, i32**** %l_714, align 8, !tbaa !5
  %820 = load i32**, i32*** %819, align 8, !tbaa !5
  %821 = load i32*, i32** %820, align 8, !tbaa !5
  %822 = load i32, i32* %821, align 4, !tbaa !1
  %823 = sext i32 %822 to i64
  %824 = call i64 @safe_mod_func_uint64_t_u_u(i64 %818, i64 %823)
  %825 = load i32***, i32**** %l_715, align 8, !tbaa !5
  %826 = load i32**, i32*** %825, align 8, !tbaa !5
  %827 = load i32*, i32** %826, align 8, !tbaa !5
  %828 = load i32, i32* %827, align 4, !tbaa !1
  %829 = sext i32 %828 to i64
  %830 = or i64 %824, %829
  %831 = trunc i64 %830 to i8
  %832 = load i8*, i8** %l_694, align 8, !tbaa !5
  store i8 %831, i8* %832, align 1, !tbaa !9
  %833 = sext i8 %831 to i32
  %834 = load i32, i32* %3, align 4, !tbaa !1
  %835 = icmp sle i32 %833, %834
  %836 = zext i1 %835 to i32
  %837 = load i32***, i32**** %l_714, align 8, !tbaa !5
  %838 = load i32**, i32*** %837, align 8, !tbaa !5
  %839 = load i32*, i32** %838, align 8, !tbaa !5
  %840 = load i32, i32* %839, align 4, !tbaa !1
  %841 = trunc i32 %840 to i8
  %842 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %785, i8 zeroext %841)
  %843 = zext i8 %842 to i32
  %844 = icmp ne i32 %843, 0
  %845 = zext i1 %844 to i32
  %846 = load i32***, i32**** @g_443, align 8, !tbaa !5
  %847 = load i32**, i32*** %846, align 8, !tbaa !5
  %848 = load i32*, i32** %847, align 8, !tbaa !5
  store i32 %845, i32* %848, align 4, !tbaa !1
  store i32 0, i32* %7
  br label %849

; <label>:849                                     ; preds = %809, %646
  %850 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %850) #1
  %851 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %851) #1
  %852 = bitcast [5 x [5 x i8]]* %l_779 to i8*
  call void @llvm.lifetime.end(i64 25, i8* %852) #1
  %853 = bitcast %union.U0** %l_743 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %853) #1
  %854 = bitcast i16** %l_719 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %854) #1
  %855 = bitcast i16** %l_718 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %855) #1
  %856 = bitcast i16** %l_717 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %856) #1
  %857 = bitcast i32**** %l_714 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %857) #1
  %858 = bitcast [6 x i8***]* %l_701 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %858) #1
  %cleanup.dest.12 = load i32, i32* %7
  switch i32 %cleanup.dest.12, label %1023 [
    i32 0, label %859
  ]

; <label>:859                                     ; preds = %849
  br label %1021

; <label>:860                                     ; preds = %119
  %861 = bitcast i16* %l_814 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %861) #1
  store i16 -12683, i16* %l_814, align 2, !tbaa !10
  %862 = bitcast %union.U0* %l_836 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %862) #1
  %863 = bitcast %union.U0* %l_836 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %863, i8* bitcast (%union.U0* @func_50.l_836 to i8*), i64 4, i32 4, i1 false)
  %864 = bitcast [3 x [4 x [10 x i32]]]* %l_913 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %864) #1
  %865 = bitcast [3 x [4 x [10 x i32]]]* %l_913 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %865, i8* bitcast ([3 x [4 x [10 x i32]]]* @func_50.l_913 to i8*), i64 480, i32 16, i1 false)
  %866 = bitcast i32***** %l_935 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %866) #1
  store i32**** @g_443, i32***** %l_935, align 8, !tbaa !5
  %867 = bitcast i32** %l_972 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %867) #1
  store i32* @g_65, i32** %l_972, align 8, !tbaa !5
  %868 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %868) #1
  %869 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %869) #1
  %870 = bitcast i32* %k15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %870) #1
  store i32 -2, i32* %6, align 4, !tbaa !1
  br label %871

; <label>:871                                     ; preds = %1007, %860
  %872 = load i32, i32* %6, align 4, !tbaa !1
  %873 = icmp ugt i32 %872, 17
  br i1 %873, label %874, label %1012

; <label>:874                                     ; preds = %871
  %875 = bitcast i8***** %l_815 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %875) #1
  store i8**** @g_615, i8***** %l_815, align 8, !tbaa !5
  %876 = bitcast i32* %l_818 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %876) #1
  store i32 0, i32* %l_818, align 4, !tbaa !1
  %877 = bitcast i16** %l_819 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %877) #1
  store i16* @g_439, i16** %l_819, align 8, !tbaa !5
  %878 = bitcast i16** %l_820 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %878) #1
  %879 = getelementptr inbounds [3 x i16], [3 x i16]* %l_716, i32 0, i64 1
  store i16* %879, i16** %l_820, align 8, !tbaa !5
  %880 = bitcast i32** %l_821 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %880) #1
  store i32* @g_40, i32** %l_821, align 8, !tbaa !5
  %881 = bitcast i32** %l_822 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %881) #1
  store i32* %l_818, i32** %l_822, align 8, !tbaa !5
  %882 = bitcast [8 x [4 x i32*]]* %l_823 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %882) #1
  %883 = bitcast [8 x [4 x i32*]]* %l_823 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %883, i8* bitcast ([8 x [4 x i32*]]* @func_50.l_823 to i8*), i64 256, i32 16, i1 false)
  %884 = bitcast i64** %l_824 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %884) #1
  store i64* @g_562, i64** %l_824, align 8, !tbaa !5
  %885 = bitcast i16** %l_838 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %885) #1
  store i16* @g_839, i16** %l_838, align 8, !tbaa !5
  %886 = bitcast [3 x i16**]* %l_837 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %886) #1
  %887 = bitcast i32** %l_842 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %887) #1
  %888 = getelementptr inbounds [9 x [8 x i32]], [9 x [8 x i32]]* %l_789, i32 0, i64 3
  %889 = getelementptr inbounds [8 x i32], [8 x i32]* %888, i32 0, i64 2
  store i32* %889, i32** %l_842, align 8, !tbaa !5
  %890 = bitcast i8*** %l_875 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %890) #1
  store i8** getelementptr inbounds ([9 x [9 x i8*]], [9 x [9 x i8*]]* @g_684, i32 0, i64 2, i64 3), i8*** %l_875, align 8, !tbaa !5
  %891 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %891) #1
  %892 = bitcast i32* %j17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %892) #1
  store i32 0, i32* %i16, align 4, !tbaa !1
  br label %893

; <label>:893                                     ; preds = %900, %874
  %894 = load i32, i32* %i16, align 4, !tbaa !1
  %895 = icmp slt i32 %894, 3
  br i1 %895, label %896, label %903

; <label>:896                                     ; preds = %893
  %897 = load i32, i32* %i16, align 4, !tbaa !1
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds [3 x i16**], [3 x i16**]* %l_837, i32 0, i64 %898
  store i16** %l_838, i16*** %899, align 8, !tbaa !5
  br label %900

; <label>:900                                     ; preds = %896
  %901 = load i32, i32* %i16, align 4, !tbaa !1
  %902 = add nsw i32 %901, 1
  store i32 %902, i32* %i16, align 4, !tbaa !1
  br label %893

; <label>:903                                     ; preds = %893
  %904 = load volatile i64**, i64*** @g_503, align 8, !tbaa !5
  %905 = load i64*, i64** %904, align 8, !tbaa !5
  %906 = icmp eq i64* %905, @g_174
  br i1 %906, label %966, label %907

; <label>:907                                     ; preds = %903
  %908 = load i32, i32* @g_198, align 4, !tbaa !1
  %909 = load i16, i16* %l_814, align 2, !tbaa !10
  %910 = load i8****, i8***** %l_815, align 8, !tbaa !5
  %911 = load i16, i16* %l_814, align 2, !tbaa !10
  %912 = zext i16 %911 to i32
  %913 = icmp ne i32 %912, 0
  br i1 %913, label %914, label %917

; <label>:914                                     ; preds = %907
  %915 = load i32, i32* %l_818, align 4, !tbaa !1
  %916 = icmp ne i32 %915, 0
  br label %917

; <label>:917                                     ; preds = %914, %907
  %918 = phi i1 [ false, %907 ], [ %916, %914 ]
  %919 = zext i1 %918 to i32
  %920 = load i32, i32* %l_818, align 4, !tbaa !1
  %921 = icmp sge i32 %919, %920
  %922 = zext i1 %921 to i32
  %923 = load i32*, i32** @g_152, align 8, !tbaa !5
  %924 = load i32, i32* %923, align 4, !tbaa !1
  %925 = sext i32 %924 to i64
  %926 = icmp uge i64 4294967295, %925
  %927 = zext i1 %926 to i32
  %928 = load i32*, i32** @g_152, align 8, !tbaa !5
  %929 = load i32, i32* %928, align 4, !tbaa !1
  %930 = icmp slt i32 %927, %929
  %931 = zext i1 %930 to i32
  %932 = sext i32 %931 to i64
  %933 = icmp sge i64 1072143226, %932
  %934 = zext i1 %933 to i32
  %935 = trunc i32 %934 to i8
  %936 = load i32, i32* %5, align 4, !tbaa !1
  %937 = trunc i32 %936 to i8
  %938 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %935, i8 zeroext %937)
  %939 = icmp eq i8**** %910, getelementptr inbounds ([9 x i8***], [9 x i8***]* @g_690, i32 0, i64 3)
  %940 = zext i1 %939 to i32
  %941 = sext i32 %940 to i64
  %942 = xor i64 4, %941
  %943 = load i16*, i16** @g_141, align 8, !tbaa !5
  %944 = load i16, i16* %943, align 2, !tbaa !10
  %945 = zext i16 %944 to i64
  %946 = and i64 %942, %945
  %947 = trunc i64 %946 to i16
  %948 = load i16*, i16** %l_819, align 8, !tbaa !5
  store i16 %947, i16* %948, align 2, !tbaa !10
  %949 = load i16*, i16** %l_820, align 8, !tbaa !5
  store i16 %947, i16* %949, align 2, !tbaa !10
  %950 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %947, i32 5)
  %951 = load i32, i32* %6, align 4, !tbaa !1
  %952 = load i32**, i32*** @g_444, align 8, !tbaa !5
  %953 = load i32*, i32** %952, align 8, !tbaa !5
  store i32 %951, i32* %953, align 4, !tbaa !1
  %954 = icmp sle i32 %908, %951
  %955 = zext i1 %954 to i32
  %956 = load i32, i32* %l_818, align 4, !tbaa !1
  %957 = load i32, i32* %6, align 4, !tbaa !1
  %958 = icmp ne i32 %956, %957
  %959 = zext i1 %958 to i32
  %960 = load i32, i32* %3, align 4, !tbaa !1
  %961 = icmp sgt i32 %959, %960
  %962 = zext i1 %961 to i32
  %963 = load i8, i8* %2, align 1, !tbaa !9
  %964 = zext i8 %963 to i32
  %965 = icmp slt i32 %962, %964
  br i1 %965, label %966, label %967

; <label>:966                                     ; preds = %917, %903
  br label %967

; <label>:967                                     ; preds = %966, %917
  %968 = phi i1 [ false, %917 ], [ false, %966 ]
  %969 = zext i1 %968 to i32
  %970 = load i32, i32* @g_124, align 4, !tbaa !1
  %971 = icmp slt i32 %969, %970
  %972 = zext i1 %971 to i32
  %973 = trunc i32 %972 to i8
  %974 = load i16, i16* %l_814, align 2, !tbaa !10
  %975 = zext i16 %974 to i32
  %976 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %973, i32 %975)
  %977 = zext i8 %976 to i64
  %978 = icmp ugt i64 -7, %977
  %979 = zext i1 %978 to i32
  %980 = load i32*, i32** %l_821, align 8, !tbaa !5
  %981 = load i32, i32* %980, align 4, !tbaa !1
  %982 = xor i32 %981, %979
  store i32 %982, i32* %980, align 4, !tbaa !1
  %983 = load i32*, i32** %l_822, align 8, !tbaa !5
  store i32 %982, i32* %983, align 4, !tbaa !1
  %984 = load i32, i32* @g_98, align 4, !tbaa !1
  %985 = or i32 %984, %982
  store i32 %985, i32* @g_98, align 4, !tbaa !1
  %986 = load i32, i32* %5, align 4, !tbaa !1
  %987 = sext i32 %986 to i64
  %988 = load i64*, i64** %l_824, align 8, !tbaa !5
  store i64 %987, i64* %988, align 8, !tbaa !7
  %989 = icmp ne i64 1, %987
  %990 = zext i1 %989 to i32
  %991 = load i32**, i32*** @g_444, align 8, !tbaa !5
  %992 = load i32*, i32** %991, align 8, !tbaa !5
  store i32 %990, i32* %992, align 4, !tbaa !1
  %993 = bitcast i32* %j17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %993) #1
  %994 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %994) #1
  %995 = bitcast i8*** %l_875 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %995) #1
  %996 = bitcast i32** %l_842 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %996) #1
  %997 = bitcast [3 x i16**]* %l_837 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %997) #1
  %998 = bitcast i16** %l_838 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %998) #1
  %999 = bitcast i64** %l_824 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %999) #1
  %1000 = bitcast [8 x [4 x i32*]]* %l_823 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %1000) #1
  %1001 = bitcast i32** %l_822 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1001) #1
  %1002 = bitcast i32** %l_821 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1002) #1
  %1003 = bitcast i16** %l_820 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1003) #1
  %1004 = bitcast i16** %l_819 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1004) #1
  %1005 = bitcast i32* %l_818 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1005) #1
  %1006 = bitcast i8***** %l_815 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1006) #1
  br label %1007

; <label>:1007                                    ; preds = %967
  %1008 = load i32, i32* %6, align 4, !tbaa !1
  %1009 = zext i32 %1008 to i64
  %1010 = call i64 @safe_add_func_uint64_t_u_u(i64 %1009, i64 7)
  %1011 = trunc i64 %1010 to i32
  store i32 %1011, i32* %6, align 4, !tbaa !1
  br label %871

; <label>:1012                                    ; preds = %871
  %1013 = bitcast i32* %k15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1013) #1
  %1014 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1014) #1
  %1015 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1015) #1
  %1016 = bitcast i32** %l_972 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1016) #1
  %1017 = bitcast i32***** %l_935 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1017) #1
  %1018 = bitcast [3 x [4 x [10 x i32]]]* %l_913 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %1018) #1
  %1019 = bitcast %union.U0* %l_836 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1019) #1
  %1020 = bitcast i16* %l_814 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1020) #1
  br label %1021

; <label>:1021                                    ; preds = %1012, %859
  %1022 = load %union.U0*, %union.U0** %l_981, align 8, !tbaa !5
  store %union.U0* %1022, %union.U0** %1
  store i32 1, i32* %7
  br label %1023

; <label>:1023                                    ; preds = %1021, %849
  %1024 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1024) #1
  %1025 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1025) #1
  %1026 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1026) #1
  %1027 = bitcast %union.U0** %l_981 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1027) #1
  %1028 = bitcast i32* %l_977 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1028) #1
  %1029 = bitcast i32* %l_976 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1029) #1
  %1030 = bitcast i32* %l_975 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1030) #1
  %1031 = bitcast i16* %l_912 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1031) #1
  %1032 = bitcast i32* %l_890 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1032) #1
  %1033 = bitcast i16** %l_840 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1033) #1
  %1034 = bitcast [9 x [8 x i32]]* %l_789 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %1034) #1
  %1035 = bitcast i64* %l_785 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1035) #1
  %1036 = bitcast i32** %l_766 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1036) #1
  %1037 = bitcast [3 x i16]* %l_716 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %1037) #1
  %1038 = bitcast i32**** %l_715 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1038) #1
  %1039 = bitcast i32**** %l_713 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1039) #1
  %1040 = bitcast i8** %l_694 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1040) #1
  %1041 = bitcast i8** %l_693 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1041) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_692) #1
  %1042 = bitcast [1 x [1 x [10 x i8****]]]* %l_689 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1042) #1
  %1043 = bitcast i8**** %l_688 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1043) #1
  %1044 = bitcast i8**** %l_685 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1044) #1
  %1045 = bitcast i8*** %l_681 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1045) #1
  %1046 = bitcast i8** %l_682 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1046) #1
  %1047 = bitcast %union.U0**** %l_679 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1047) #1
  %1048 = bitcast [9 x %union.U0**]* %l_680 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %1048) #1
  %1049 = bitcast %union.U0**** %l_678 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1049) #1
  %1050 = bitcast %union.U0*** %l_674 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1050) #1
  %1051 = bitcast %union.U0** %l_675 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1051) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_657) #1
  %1052 = load %union.U0*, %union.U0** %1
  ret %union.U0* %1052
}

; Function Attrs: nounwind uwtable
define internal i32 @func_60(i32 %p_61, i8* %p_62, i16* %p_63) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i16*, align 8
  %l_83 = alloca i16, align 2
  %l_214 = alloca i32, align 4
  %l_259 = alloca i8*, align 8
  %l_274 = alloca [4 x %union.U0*], align 16
  %l_305 = alloca i16, align 2
  %l_326 = alloca i64*, align 8
  %l_340 = alloca i32, align 4
  %l_355 = alloca [10 x [5 x [5 x i32**]]], align 16
  %l_412 = alloca i8, align 1
  %l_441 = alloca i8, align 1
  %l_540 = alloca i32, align 4
  %l_624 = alloca i8**, align 8
  %l_623 = alloca i8***, align 8
  %l_622 = alloca [8 x [3 x i8****]], align 16
  %l_633 = alloca i32*, align 8
  %l_638 = alloca i8, align 1
  %l_644 = alloca [1 x [6 x [3 x i8]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_70 = alloca i16*, align 8
  %l_94 = alloca [7 x i32], align 16
  %l_241 = alloca i64*, align 8
  %l_251 = alloca i32*, align 8
  %l_252 = alloca [8 x i32*], align 16
  %l_404 = alloca i16, align 2
  %l_405 = alloca i32, align 4
  %l_415 = alloca i32*, align 8
  %l_464 = alloca [4 x i32], align 16
  %l_566 = alloca i8*, align 8
  %l_610 = alloca [1 x [1 x i64]], align 8
  %l_613 = alloca i8***, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  store i32 %p_61, i32* %1, align 4, !tbaa !1
  store i8* %p_62, i8** %2, align 8, !tbaa !5
  store i16* %p_63, i16** %3, align 8, !tbaa !5
  %4 = bitcast i16* %l_83 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #1
  store i16 -24863, i16* %l_83, align 2, !tbaa !10
  %5 = bitcast i32* %l_214 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %l_214, align 4, !tbaa !1
  %6 = bitcast i8** %l_259 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* null, i8** %l_259, align 8, !tbaa !5
  %7 = bitcast [4 x %union.U0*]* %l_274 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast i16* %l_305 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #1
  store i16 -16601, i16* %l_305, align 2, !tbaa !10
  %9 = bitcast i64** %l_326 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64* null, i64** %l_326, align 8, !tbaa !5
  %10 = bitcast i32* %l_340 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 -1, i32* %l_340, align 4, !tbaa !1
  %11 = bitcast [10 x [5 x [5 x i32**]]]* %l_355 to i8*
  call void @llvm.lifetime.start(i64 2000, i8* %11) #1
  %12 = bitcast [10 x [5 x [5 x i32**]]]* %l_355 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast ([10 x [5 x [5 x i32**]]]* @func_60.l_355 to i8*), i64 2000, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_412) #1
  store i8 0, i8* %l_412, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %l_441) #1
  store i8 -1, i8* %l_441, align 1, !tbaa !9
  %13 = bitcast i32* %l_540 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 -963935403, i32* %l_540, align 4, !tbaa !1
  %14 = bitcast i8*** %l_624 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i8** @g_617, i8*** %l_624, align 8, !tbaa !5
  %15 = bitcast i8**** %l_623 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i8*** %l_624, i8**** %l_623, align 8, !tbaa !5
  %16 = bitcast [8 x [3 x i8****]]* %l_622 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %16) #1
  %17 = getelementptr inbounds [8 x [3 x i8****]], [8 x [3 x i8****]]* %l_622, i64 0, i64 0
  %18 = getelementptr inbounds [3 x i8****], [3 x i8****]* %17, i64 0, i64 0
  store i8**** %l_623, i8***** %18, !tbaa !5
  %19 = getelementptr inbounds i8****, i8***** %18, i64 1
  store i8**** %l_623, i8***** %19, !tbaa !5
  %20 = getelementptr inbounds i8****, i8***** %19, i64 1
  store i8**** %l_623, i8***** %20, !tbaa !5
  %21 = getelementptr inbounds [3 x i8****], [3 x i8****]* %17, i64 1
  %22 = getelementptr inbounds [3 x i8****], [3 x i8****]* %21, i64 0, i64 0
  store i8**** %l_623, i8***** %22, !tbaa !5
  %23 = getelementptr inbounds i8****, i8***** %22, i64 1
  store i8**** %l_623, i8***** %23, !tbaa !5
  %24 = getelementptr inbounds i8****, i8***** %23, i64 1
  store i8**** %l_623, i8***** %24, !tbaa !5
  %25 = getelementptr inbounds [3 x i8****], [3 x i8****]* %21, i64 1
  %26 = getelementptr inbounds [3 x i8****], [3 x i8****]* %25, i64 0, i64 0
  store i8**** %l_623, i8***** %26, !tbaa !5
  %27 = getelementptr inbounds i8****, i8***** %26, i64 1
  store i8**** %l_623, i8***** %27, !tbaa !5
  %28 = getelementptr inbounds i8****, i8***** %27, i64 1
  store i8**** %l_623, i8***** %28, !tbaa !5
  %29 = getelementptr inbounds [3 x i8****], [3 x i8****]* %25, i64 1
  %30 = getelementptr inbounds [3 x i8****], [3 x i8****]* %29, i64 0, i64 0
  store i8**** %l_623, i8***** %30, !tbaa !5
  %31 = getelementptr inbounds i8****, i8***** %30, i64 1
  store i8**** %l_623, i8***** %31, !tbaa !5
  %32 = getelementptr inbounds i8****, i8***** %31, i64 1
  store i8**** %l_623, i8***** %32, !tbaa !5
  %33 = getelementptr inbounds [3 x i8****], [3 x i8****]* %29, i64 1
  %34 = getelementptr inbounds [3 x i8****], [3 x i8****]* %33, i64 0, i64 0
  store i8**** %l_623, i8***** %34, !tbaa !5
  %35 = getelementptr inbounds i8****, i8***** %34, i64 1
  store i8**** %l_623, i8***** %35, !tbaa !5
  %36 = getelementptr inbounds i8****, i8***** %35, i64 1
  store i8**** %l_623, i8***** %36, !tbaa !5
  %37 = getelementptr inbounds [3 x i8****], [3 x i8****]* %33, i64 1
  %38 = getelementptr inbounds [3 x i8****], [3 x i8****]* %37, i64 0, i64 0
  store i8**** %l_623, i8***** %38, !tbaa !5
  %39 = getelementptr inbounds i8****, i8***** %38, i64 1
  store i8**** %l_623, i8***** %39, !tbaa !5
  %40 = getelementptr inbounds i8****, i8***** %39, i64 1
  store i8**** %l_623, i8***** %40, !tbaa !5
  %41 = getelementptr inbounds [3 x i8****], [3 x i8****]* %37, i64 1
  %42 = getelementptr inbounds [3 x i8****], [3 x i8****]* %41, i64 0, i64 0
  store i8**** %l_623, i8***** %42, !tbaa !5
  %43 = getelementptr inbounds i8****, i8***** %42, i64 1
  store i8**** %l_623, i8***** %43, !tbaa !5
  %44 = getelementptr inbounds i8****, i8***** %43, i64 1
  store i8**** %l_623, i8***** %44, !tbaa !5
  %45 = getelementptr inbounds [3 x i8****], [3 x i8****]* %41, i64 1
  %46 = getelementptr inbounds [3 x i8****], [3 x i8****]* %45, i64 0, i64 0
  store i8**** %l_623, i8***** %46, !tbaa !5
  %47 = getelementptr inbounds i8****, i8***** %46, i64 1
  store i8**** %l_623, i8***** %47, !tbaa !5
  %48 = getelementptr inbounds i8****, i8***** %47, i64 1
  store i8**** %l_623, i8***** %48, !tbaa !5
  %49 = bitcast i32** %l_633 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i32* @g_440, i32** %l_633, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_638) #1
  store i8 -6, i8* %l_638, align 1, !tbaa !9
  %50 = bitcast [1 x [6 x [3 x i8]]]* %l_644 to i8*
  call void @llvm.lifetime.start(i64 18, i8* %50) #1
  %51 = bitcast [1 x [6 x [3 x i8]]]* %l_644 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* getelementptr inbounds ([1 x [6 x [3 x i8]]], [1 x [6 x [3 x i8]]]* @func_60.l_644, i32 0, i32 0, i32 0, i32 0), i64 18, i32 16, i1 false)
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %55

; <label>:55                                      ; preds = %62, %0
  %56 = load i32, i32* %i, align 4, !tbaa !1
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %65

; <label>:58                                      ; preds = %55
  %59 = load i32, i32* %i, align 4, !tbaa !1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x %union.U0*], [4 x %union.U0*]* %l_274, i32 0, i64 %60
  store %union.U0* @g_128, %union.U0** %61, align 8, !tbaa !5
  br label %62

; <label>:62                                      ; preds = %58
  %63 = load i32, i32* %i, align 4, !tbaa !1
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %i, align 4, !tbaa !1
  br label %55

; <label>:65                                      ; preds = %55
  store i32 0, i32* @g_65, align 4, !tbaa !1
  br label %66

; <label>:66                                      ; preds = %124, %65
  %67 = load i32, i32* @g_65, align 4, !tbaa !1
  %68 = icmp ugt i32 %67, 35
  br i1 %68, label %69, label %129

; <label>:69                                      ; preds = %66
  %70 = bitcast i16** %l_70 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  store i16* @g_71, i16** %l_70, align 8, !tbaa !5
  %71 = bitcast [7 x i32]* %l_94 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %71) #1
  %72 = bitcast [7 x i32]* %l_94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* bitcast ([7 x i32]* @func_60.l_94 to i8*), i64 28, i32 16, i1 false)
  %73 = bitcast i64** %l_241 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  store i64* @g_174, i64** %l_241, align 8, !tbaa !5
  %74 = bitcast i32** %l_251 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = getelementptr inbounds [7 x i32], [7 x i32]* %l_94, i32 0, i64 1
  store i32* %75, i32** %l_251, align 8, !tbaa !5
  %76 = bitcast [8 x i32*]* %l_252 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %76) #1
  %77 = bitcast [8 x i32*]* %l_252 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* bitcast ([8 x i32*]* @func_60.l_252 to i8*), i64 64, i32 16, i1 false)
  %78 = bitcast i16* %l_404 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %78) #1
  store i16 -7, i16* %l_404, align 2, !tbaa !10
  %79 = bitcast i32* %l_405 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  store i32 -157775234, i32* %l_405, align 4, !tbaa !1
  %80 = bitcast i32** %l_415 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  store i32* @g_124, i32** %l_415, align 8, !tbaa !5
  %81 = bitcast [4 x i32]* %l_464 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %81) #1
  %82 = bitcast [4 x i32]* %l_464 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* bitcast ([4 x i32]* @func_60.l_464 to i8*), i64 16, i32 16, i1 false)
  %83 = bitcast i8** %l_566 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  store i8* @g_567, i8** %l_566, align 8, !tbaa !5
  %84 = bitcast [1 x [1 x i64]]* %l_610 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  %85 = bitcast i8**** %l_613 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  store i8*** null, i8**** %l_613, align 8, !tbaa !5
  %86 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  %87 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %88

; <label>:88                                      ; preds = %106, %69
  %89 = load i32, i32* %i1, align 4, !tbaa !1
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %109

; <label>:91                                      ; preds = %88
  store i32 0, i32* %j2, align 4, !tbaa !1
  br label %92

; <label>:92                                      ; preds = %102, %91
  %93 = load i32, i32* %j2, align 4, !tbaa !1
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %95, label %105

; <label>:95                                      ; preds = %92
  %96 = load i32, i32* %j2, align 4, !tbaa !1
  %97 = sext i32 %96 to i64
  %98 = load i32, i32* %i1, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [1 x [1 x i64]], [1 x [1 x i64]]* %l_610, i32 0, i64 %99
  %101 = getelementptr inbounds [1 x i64], [1 x i64]* %100, i32 0, i64 %97
  store i64 0, i64* %101, align 8, !tbaa !7
  br label %102

; <label>:102                                     ; preds = %95
  %103 = load i32, i32* %j2, align 4, !tbaa !1
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %j2, align 4, !tbaa !1
  br label %92

; <label>:105                                     ; preds = %92
  br label %106

; <label>:106                                     ; preds = %105
  %107 = load i32, i32* %i1, align 4, !tbaa !1
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %i1, align 4, !tbaa !1
  br label %88

; <label>:109                                     ; preds = %88
  %110 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i8**** %l_613 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast [1 x [1 x i64]]* %l_610 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i8** %l_566 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast [4 x i32]* %l_464 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %115) #1
  %116 = bitcast i32** %l_415 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast i32* %l_405 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i16* %l_404 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %118) #1
  %119 = bitcast [8 x i32*]* %l_252 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %119) #1
  %120 = bitcast i32** %l_251 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i64** %l_241 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast [7 x i32]* %l_94 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %122) #1
  %123 = bitcast i16** %l_70 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  br label %124

; <label>:124                                     ; preds = %109
  %125 = load i32, i32* @g_65, align 4, !tbaa !1
  %126 = trunc i32 %125 to i8
  %127 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %126, i8 zeroext 3)
  %128 = zext i8 %127 to i32
  store i32 %128, i32* @g_65, align 4, !tbaa !1
  br label %66

; <label>:129                                     ; preds = %66
  %130 = getelementptr inbounds [8 x [3 x i8****]], [8 x [3 x i8****]]* %l_622, i32 0, i64 2
  %131 = getelementptr inbounds [3 x i8****], [3 x i8****]* %130, i32 0, i64 0
  %132 = load i8****, i8***** %131, align 8, !tbaa !5
  %133 = icmp ne i8**** @g_615, %132
  %134 = zext i1 %133 to i32
  %135 = trunc i32 %134 to i8
  %136 = load volatile i8, i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @g_290, i32 0, i64 0, i64 0), align 1, !tbaa !9
  %137 = sext i8 %136 to i32
  %138 = load i32*, i32** %l_633, align 8, !tbaa !5
  store i32 %137, i32* %138, align 4, !tbaa !1
  %139 = call i32 @safe_mod_func_uint32_t_u_u(i32 %137, i32 1531786083)
  %140 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext 0, i16 zeroext -23793)
  %141 = zext i16 %140 to i32
  %142 = load i8***, i8**** %l_623, align 8, !tbaa !5
  %143 = load i8**, i8*** %142, align 8, !tbaa !5
  %144 = load i8*, i8** %143, align 8, !tbaa !5
  %145 = load i8, i8* %144, align 1, !tbaa !9
  %146 = add i8 %145, -1
  store i8 %146, i8* %144, align 1, !tbaa !9
  %147 = load volatile i8*, i8** @g_289, align 8, !tbaa !5
  %148 = load volatile i8, i8* %147, align 1, !tbaa !9
  %149 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %145, i8 zeroext %148)
  %150 = zext i8 %149 to i32
  %151 = icmp ne i32 %141, %150
  %152 = zext i1 %151 to i32
  %153 = load i16*, i16** %3, align 8, !tbaa !5
  %154 = load i16, i16* %153, align 2, !tbaa !10
  %155 = sext i16 %154 to i32
  %156 = load i32, i32* %1, align 4, !tbaa !1
  %157 = getelementptr inbounds [1 x [6 x [3 x i8]]], [1 x [6 x [3 x i8]]]* %l_644, i32 0, i64 0
  %158 = getelementptr inbounds [6 x [3 x i8]], [6 x [3 x i8]]* %157, i32 0, i64 4
  %159 = getelementptr inbounds [3 x i8], [3 x i8]* %158, i32 0, i64 0
  %160 = load i8, i8* %159, align 1, !tbaa !9
  %161 = zext i8 %160 to i32
  %162 = xor i32 %156, %161
  %163 = trunc i32 %162 to i8
  %164 = load i8***, i8**** @g_615, align 8, !tbaa !5
  %165 = load i8**, i8*** %164, align 8, !tbaa !5
  %166 = load i8*, i8** %165, align 8, !tbaa !5
  store i8 %163, i8* %166, align 1, !tbaa !9
  %167 = zext i8 %163 to i32
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

; <label>:169                                     ; preds = %129
  %170 = load i32, i32* %1, align 4, !tbaa !1
  %171 = icmp ne i32 %170, 0
  br label %172

; <label>:172                                     ; preds = %169, %129
  %173 = phi i1 [ false, %129 ], [ %171, %169 ]
  %174 = zext i1 %173 to i32
  %175 = trunc i32 %174 to i16
  %176 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %175, i16 zeroext -3)
  %177 = zext i16 %176 to i32
  %178 = call i32 @safe_sub_func_int32_t_s_s(i32 1, i32 %177)
  %179 = load i32, i32* %1, align 4, !tbaa !1
  %180 = trunc i32 %179 to i8
  %181 = load i32, i32* @g_124, align 4, !tbaa !1
  %182 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %180, i32 %181)
  %183 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %135, i8 zeroext %182)
  %184 = zext i8 %183 to i32
  %185 = load i32, i32* %1, align 4, !tbaa !1
  %186 = xor i32 %184, %185
  %187 = load i32**, i32*** @g_444, align 8, !tbaa !5
  %188 = load i32*, i32** %187, align 8, !tbaa !5
  %189 = load i32, i32* %188, align 4, !tbaa !1
  %190 = xor i32 %189, %186
  store i32 %190, i32* %188, align 4, !tbaa !1
  %191 = load i32, i32* @g_98, align 4, !tbaa !1
  %192 = and i32 %191, %190
  store i32 %192, i32* @g_98, align 4, !tbaa !1
  %193 = load i32, i32* %1, align 4, !tbaa !1
  %194 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast [1 x [6 x [3 x i8]]]* %l_644 to i8*
  call void @llvm.lifetime.end(i64 18, i8* %197) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_638) #1
  %198 = bitcast i32** %l_633 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast [8 x [3 x i8****]]* %l_622 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %199) #1
  %200 = bitcast i8**** %l_623 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast i8*** %l_624 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast i32* %l_540 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_441) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_412) #1
  %203 = bitcast [10 x [5 x [5 x i32**]]]* %l_355 to i8*
  call void @llvm.lifetime.end(i64 2000, i8* %203) #1
  %204 = bitcast i32* %l_340 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i64** %l_326 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i16* %l_305 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %206) #1
  %207 = bitcast [4 x %union.U0*]* %l_274 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %207) #1
  %208 = bitcast i8** %l_259 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i32* %l_214 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i16* %l_83 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %210) #1
  ret i32 %193
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
