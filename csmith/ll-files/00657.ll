; ModuleID = '00657.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i32 }
%union.U1 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 -1314302370, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_4 = internal global i32 1992627795, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_15 = internal global i16 0, align 2
@.str.3 = private unnamed_addr constant [5 x i8] c"g_15\00", align 1
@g_26 = internal global i16 1, align 2
@.str.4 = private unnamed_addr constant [5 x i8] c"g_26\00", align 1
@g_66 = internal global i8 53, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"g_66\00", align 1
@g_75 = internal global i32 -1, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_75\00", align 1
@g_77 = internal global [9 x [9 x [3 x i32]]] [[9 x [3 x i32]] [[3 x i32] [i32 384162981, i32 -7, i32 -1], [3 x i32] [i32 -1, i32 1, i32 1779594022], [3 x i32] [i32 -1833208313, i32 211406891, i32 -1411124942], [3 x i32] [i32 -1, i32 -112206167, i32 -571693426], [3 x i32] [i32 706008463, i32 -4, i32 -4], [3 x i32] [i32 843713494, i32 -8, i32 1500306711], [3 x i32] [i32 973956931, i32 -867987284, i32 706008463], [3 x i32] [i32 822679773, i32 1, i32 0], [3 x i32] [i32 -653540844, i32 -63971092, i32 211406891]], [9 x [3 x i32]] [[3 x i32] [i32 -1314564591, i32 1, i32 -6], [3 x i32] [i32 384162981, i32 -867987284, i32 1119763561], [3 x i32] [i32 1061648708, i32 -8, i32 1779594022], [3 x i32] [i32 -63971092, i32 -4, i32 819256816], [3 x i32] [i32 1, i32 -112206167, i32 843713494], [3 x i32] [i32 6, i32 211406891, i32 -1905289767], [3 x i32] [i32 843713494, i32 0, i32 -598706869], [3 x i32] [i32 -1411124942, i32 -653540844, i32 -1], [3 x i32] [i32 -1318167268, i32 2135165690, i32 -598706869]], [9 x [3 x i32]] [[3 x i32] [i32 211406891, i32 384162981, i32 -1145565522], [3 x i32] [i32 0, i32 -644216312, i32 -1314564591], [3 x i32] [i32 1, i32 -63971092, i32 2], [3 x i32] [i32 0, i32 -112206167, i32 0], [3 x i32] [i32 -2, i32 6, i32 -7], [3 x i32] [i32 -571693426, i32 0, i32 1061648708], [3 x i32] [i32 819256816, i32 1, i32 973956931], [3 x i32] [i32 -1314564591, i32 -1224941262, i32 -1586417345], [3 x i32] [i32 819256816, i32 -1, i32 -1]], [9 x [3 x i32]] [[3 x i32] [i32 -571693426, i32 9, i32 -1], [3 x i32] [i32 -2, i32 384162981, i32 706008463], [3 x i32] [i32 0, i32 -457143765, i32 1779594022], [3 x i32] [i32 1, i32 383293133, i32 -815540277], [3 x i32] [i32 0, i32 -140620999, i32 0], [3 x i32] [i32 211406891, i32 -1145565522, i32 471249691], [3 x i32] [i32 -1318167268, i32 0, i32 698462456], [3 x i32] [i32 -1411124942, i32 -1145565522, i32 6], [3 x i32] [i32 -1314564591, i32 -140620999, i32 0]], [9 x [3 x i32]] [[3 x i32] [i32 1119763561, i32 383293133, i32 -1], [3 x i32] [i32 843713494, i32 -457143765, i32 6], [3 x i32] [i32 384162981, i32 384162981, i32 1], [3 x i32] [i32 -3, i32 9, i32 -1], [3 x i32] [i32 1, i32 -1, i32 -867987284], [3 x i32] [i32 1500306711, i32 -1224941262, i32 0], [3 x i32] [i32 -1905289767, i32 1, i32 -867987284], [3 x i32] [i32 -1428353229, i32 0, i32 -1], [3 x i32] [i32 -716481599, i32 6, i32 1]], [9 x [3 x i32]] [[3 x i32] [i32 -1314564591, i32 -112206167, i32 6], [3 x i32] [i32 -1, i32 -63971092, i32 -1], [3 x i32] [i32 -6, i32 -644216312, i32 0], [3 x i32] [i32 -4, i32 384162981, i32 6], [3 x i32] [i32 -6, i32 2135165690, i32 698462456], [3 x i32] [i32 1, i32 -653540844, i32 471249691], [3 x i32] [i32 -6, i32 0, i32 0], [3 x i32] [i32 -4, i32 973956931, i32 -815540277], [3 x i32] [i32 -6, i32 0, i32 1779594022]], [9 x [3 x i32]] [[3 x i32] [i32 -1, i32 706008463, i32 706008463], [3 x i32] [i32 -1314564591, i32 -1641454882, i32 -1], [3 x i32] [i32 -716481599, i32 -1833208313, i32 -1], [3 x i32] [i32 -1428353229, i32 1350290778, i32 -1586417345], [3 x i32] [i32 -1905289767, i32 384162981, i32 973956931], [3 x i32] [i32 1500306711, i32 1350290778, i32 1061648708], [3 x i32] [i32 1, i32 -1833208313, i32 -7], [3 x i32] [i32 -3, i32 -1641454882, i32 0], [3 x i32] [i32 384162981, i32 706008463, i32 2]], [9 x [3 x i32]] [[3 x i32] [i32 843713494, i32 0, i32 -1314564591], [3 x i32] [i32 1119763561, i32 973956931, i32 -1145565522], [3 x i32] [i32 -1314564591, i32 0, i32 -598706869], [3 x i32] [i32 -1411124942, i32 -653540844, i32 -1], [3 x i32] [i32 -1318167268, i32 2135165690, i32 -598706869], [3 x i32] [i32 211406891, i32 384162981, i32 -1145565522], [3 x i32] [i32 0, i32 -644216312, i32 -1314564591], [3 x i32] [i32 1, i32 -63971092, i32 2], [3 x i32] [i32 0, i32 -112206167, i32 0]], [9 x [3 x i32]] [[3 x i32] [i32 -2, i32 6, i32 -7], [3 x i32] [i32 -571693426, i32 0, i32 1061648708], [3 x i32] [i32 819256816, i32 1, i32 973956931], [3 x i32] [i32 -1314564591, i32 -1224941262, i32 -1586417345], [3 x i32] [i32 819256816, i32 -1, i32 -1], [3 x i32] [i32 -571693426, i32 9, i32 -1], [3 x i32] [i32 -2, i32 384162981, i32 706008463], [3 x i32] [i32 -1586417345, i32 -1350179195, i32 0], [3 x i32] [i32 -1411124942, i32 -2, i32 -1]]], align 16
@.str.7 = private unnamed_addr constant [14 x i8] c"g_77[i][j][k]\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_82 = internal global [1 x [1 x [8 x %union.U0]]] [[1 x [8 x %union.U0]] [[8 x %union.U0] [%union.U0 { i32 -815546103 }, %union.U0 { i32 961065725 }, %union.U0 { i32 -815546103 }, %union.U0 { i32 -815546103 }, %union.U0 { i32 961065725 }, %union.U0 { i32 -815546103 }, %union.U0 { i32 -815546103 }, %union.U0 { i32 961065725 }]]], align 16
@.str.9 = private unnamed_addr constant [17 x i8] c"g_82[i][j][k].f0\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"g_82[i][j][k].f1\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"g_82[i][j][k].f2\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"g_82[i][j][k].f3\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"g_82[i][j][k].f4\00", align 1
@g_101 = internal global i16 -5802, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_101\00", align 1
@g_129 = internal global i32 569131356, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_129\00", align 1
@g_149 = internal global %union.U1 { i64 8620807132222182613 }, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"g_149.f0\00", align 1
@g_163 = internal global %union.U1 { i64 -8312906334176797830 }, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"g_163.f0\00", align 1
@g_177 = internal global [5 x %union.U1] [%union.U1 { i64 -6924653269084899463 }, %union.U1 { i64 -6924653269084899463 }, %union.U1 { i64 -6924653269084899463 }, %union.U1 { i64 -6924653269084899463 }, %union.U1 { i64 -6924653269084899463 }], align 16
@.str.18 = private unnamed_addr constant [12 x i8] c"g_177[i].f0\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_178 = internal global %union.U1 { i64 -3 }, align 8
@.str.20 = private unnamed_addr constant [9 x i8] c"g_178.f0\00", align 1
@g_193 = internal global i16 27550, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_193\00", align 1
@g_225 = internal global [7 x [4 x i16]] [[4 x i16] [i16 9, i16 1, i16 -7467, i16 1], [4 x i16] [i16 -7467, i16 1, i16 -7467, i16 1], [4 x i16] [i16 9, i16 1, i16 11759, i16 1], [4 x i16] [i16 9, i16 1, i16 -7467, i16 1], [4 x i16] [i16 -7467, i16 1, i16 -7467, i16 1], [4 x i16] [i16 9, i16 1, i16 11759, i16 1], [4 x i16] [i16 9, i16 1, i16 -7467, i16 1]], align 16
@.str.22 = private unnamed_addr constant [12 x i8] c"g_225[i][j]\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_252 = internal global i64 0, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"g_252\00", align 1
@g_275 = internal constant %union.U1 zeroinitializer, align 8
@.str.25 = private unnamed_addr constant [9 x i8] c"g_275.f0\00", align 1
@g_284 = internal global i32 792238079, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_284\00", align 1
@g_298 = internal global i32 8, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_298\00", align 1
@g_334 = internal global i32 -1273981813, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_334\00", align 1
@g_380 = internal global [3 x %union.U0] [%union.U0 { i32 201169099 }, %union.U0 { i32 201169099 }, %union.U0 { i32 201169099 }], align 4
@.str.29 = private unnamed_addr constant [12 x i8] c"g_380[i].f0\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"g_380[i].f1\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"g_380[i].f2\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"g_380[i].f3\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"g_380[i].f4\00", align 1
@g_425 = internal global %union.U0 { i32 23178056 }, align 4
@.str.34 = private unnamed_addr constant [9 x i8] c"g_425.f0\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"g_425.f1\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"g_425.f2\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"g_425.f3\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"g_425.f4\00", align 1
@g_433 = internal global i16 24666, align 2
@.str.39 = private unnamed_addr constant [6 x i8] c"g_433\00", align 1
@g_498 = internal global i32 2139366946, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"g_498\00", align 1
@g_552 = internal global i32 0, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"g_552\00", align 1
@g_597 = internal global i32 -2, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"g_597\00", align 1
@g_668 = internal global [5 x i8] c"\FF\FF\FF\FF\FF", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"g_668[i]\00", align 1
@g_741 = internal global [3 x i8] c"\F8\F8\F8", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"g_741[i]\00", align 1
@g_747 = internal global i64 -1, align 8
@.str.45 = private unnamed_addr constant [6 x i8] c"g_747\00", align 1
@g_757 = internal global %union.U1 { i64 1 }, align 8
@.str.46 = private unnamed_addr constant [9 x i8] c"g_757.f0\00", align 1
@g_773 = internal global i8 0, align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"g_773\00", align 1
@g_782 = internal constant %union.U1 { i64 -2338262198587627333 }, align 8
@.str.48 = private unnamed_addr constant [9 x i8] c"g_782.f0\00", align 1
@g_786 = internal global i16 20986, align 2
@.str.49 = private unnamed_addr constant [6 x i8] c"g_786\00", align 1
@g_795 = internal global %union.U0 { i32 -279146365 }, align 4
@.str.50 = private unnamed_addr constant [9 x i8] c"g_795.f0\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"g_795.f1\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"g_795.f2\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"g_795.f3\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"g_795.f4\00", align 1
@g_822 = internal constant %union.U1 { i64 -1007481128770394350 }, align 8
@.str.55 = private unnamed_addr constant [9 x i8] c"g_822.f0\00", align 1
@g_850 = internal global %union.U1 { i64 -1 }, align 8
@.str.56 = private unnamed_addr constant [9 x i8] c"g_850.f0\00", align 1
@g_863 = internal global [5 x i64] zeroinitializer, align 16
@.str.57 = private unnamed_addr constant [9 x i8] c"g_863[i]\00", align 1
@g_871 = internal global %union.U1 { i64 -5722357993625459865 }, align 8
@.str.58 = private unnamed_addr constant [9 x i8] c"g_871.f0\00", align 1
@g_917 = internal constant %union.U1 { i64 -450687431888783659 }, align 8
@.str.59 = private unnamed_addr constant [9 x i8] c"g_917.f0\00", align 1
@g_973 = internal global i16 8, align 2
@.str.60 = private unnamed_addr constant [6 x i8] c"g_973\00", align 1
@g_997 = internal constant %union.U1 { i64 2615781129948399032 }, align 8
@.str.61 = private unnamed_addr constant [9 x i8] c"g_997.f0\00", align 1
@g_1037 = internal global %union.U1 { i64 -1 }, align 8
@.str.62 = private unnamed_addr constant [10 x i8] c"g_1037.f0\00", align 1
@g_1055 = internal global [5 x i8] c"\03\03\03\03\03", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"g_1055[i]\00", align 1
@g_1064 = internal global i16 0, align 2
@.str.64 = private unnamed_addr constant [7 x i8] c"g_1064\00", align 1
@g_1065 = internal global i64 -5, align 8
@.str.65 = private unnamed_addr constant [7 x i8] c"g_1065\00", align 1
@g_1090 = internal constant %union.U1 zeroinitializer, align 8
@.str.66 = private unnamed_addr constant [10 x i8] c"g_1090.f0\00", align 1
@g_1121 = internal global %union.U1 { i64 -5 }, align 8
@.str.67 = private unnamed_addr constant [10 x i8] c"g_1121.f0\00", align 1
@g_1159 = internal global i64 4948863906890395389, align 8
@.str.68 = private unnamed_addr constant [7 x i8] c"g_1159\00", align 1
@g_1175 = internal global i8 74, align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"g_1175\00", align 1
@g_1279 = internal global %union.U1 { i64 1791989783002743417 }, align 8
@.str.70 = private unnamed_addr constant [10 x i8] c"g_1279.f0\00", align 1
@g_1280 = internal global %union.U0 { i32 8 }, align 4
@.str.71 = private unnamed_addr constant [10 x i8] c"g_1280.f0\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"g_1280.f1\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"g_1280.f2\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"g_1280.f3\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"g_1280.f4\00", align 1
@g_1304 = internal global %union.U1 { i64 6044304537296016770 }, align 8
@.str.76 = private unnamed_addr constant [10 x i8] c"g_1304.f0\00", align 1
@g_1350 = internal global %union.U1 zeroinitializer, align 8
@.str.77 = private unnamed_addr constant [10 x i8] c"g_1350.f0\00", align 1
@g_1359 = internal global %union.U1 { i64 9032253124953537368 }, align 8
@.str.78 = private unnamed_addr constant [10 x i8] c"g_1359.f0\00", align 1
@g_1396 = internal global %union.U1 { i64 2689133665099429827 }, align 8
@.str.79 = private unnamed_addr constant [10 x i8] c"g_1396.f0\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"g_1501\00", align 1
@g_1517 = internal global %union.U1 { i64 2919688490380221746 }, align 8
@.str.81 = private unnamed_addr constant [10 x i8] c"g_1517.f0\00", align 1
@g_1553 = internal global [4 x %union.U1] [%union.U1 { i64 -4474954446682519159 }, %union.U1 { i64 -4474954446682519159 }, %union.U1 { i64 -4474954446682519159 }, %union.U1 { i64 -4474954446682519159 }], align 16
@.str.82 = private unnamed_addr constant [13 x i8] c"g_1553[i].f0\00", align 1
@g_1567 = internal global [3 x %union.U1] [%union.U1 { i64 5 }, %union.U1 { i64 5 }, %union.U1 { i64 5 }], align 16
@.str.83 = private unnamed_addr constant [13 x i8] c"g_1567[i].f0\00", align 1
@g_1586 = internal global i16 -9095, align 2
@.str.84 = private unnamed_addr constant [7 x i8] c"g_1586\00", align 1
@g_1591 = internal global [6 x i32] [i32 329101607, i32 0, i32 0, i32 329101607, i32 0, i32 0], align 16
@.str.85 = private unnamed_addr constant [10 x i8] c"g_1591[i]\00", align 1
@g_1654 = internal global %union.U1 { i64 -6 }, align 8
@.str.86 = private unnamed_addr constant [10 x i8] c"g_1654.f0\00", align 1
@g_1665 = internal global [7 x [1 x [6 x i8]]] [[1 x [6 x i8]] [[6 x i8] c"\00U\00\00\FD\FD"], [1 x [6 x i8]] [[6 x i8] c"AUUA\FD\00"], [1 x [6 x i8]] [[6 x i8] c"iU\FDi\FDU"], [1 x [6 x i8]] [[6 x i8] c"\00U\00\00\FD\FD"], [1 x [6 x i8]] [[6 x i8] c"AUUA\FD\00"], [1 x [6 x i8]] [[6 x i8] c"iU\FDi\FDU"], [1 x [6 x i8]] [[6 x i8] c"\00U\00\00\FD\FD"]], align 16
@.str.87 = private unnamed_addr constant [16 x i8] c"g_1665[i][j][k]\00", align 1
@g_1705 = internal global i64 -1, align 8
@.str.88 = private unnamed_addr constant [7 x i8] c"g_1705\00", align 1
@g_1724 = internal global %union.U1 { i64 9 }, align 8
@.str.89 = private unnamed_addr constant [10 x i8] c"g_1724.f0\00", align 1
@g_1743 = internal constant [6 x [4 x [10 x %union.U1]]] [[4 x [10 x %union.U1]] [[10 x %union.U1] [%union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }], [10 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 -1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 -1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }], [10 x %union.U1] [%union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }], [10 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 -1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 -1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }]], [4 x [10 x %union.U1]] [[10 x %union.U1] [%union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }], [10 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 -1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 -1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }], [10 x %union.U1] [%union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }], [10 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 -1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 -1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }]], [4 x [10 x %union.U1]] [[10 x %union.U1] [%union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }], [10 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 -1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 -1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }], [10 x %union.U1] [%union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }], [10 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 -1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 -1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }]], [4 x [10 x %union.U1]] [[10 x %union.U1] [%union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }], [10 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 -1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 -1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }], [10 x %union.U1] [%union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }], [10 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 -1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 -1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }]], [4 x [10 x %union.U1]] [[10 x %union.U1] [%union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }], [10 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 -1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 -1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }], [10 x %union.U1] [%union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }], [10 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 -1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 -1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }]], [4 x [10 x %union.U1]] [[10 x %union.U1] [%union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }], [10 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 -1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 -1 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 1 }, %union.U1 { i64 867813807302503338 }], [10 x %union.U1] [%union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 7044648839551931453 }, %union.U1 { i64 867813807302503338 }], [10 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 -1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 -1 }, %union.U1 { i64 2866512314375857034 }, %union.U1 { i64 1 }, %union.U1 { i64 2866512314375857034 }]]], align 16
@.str.90 = private unnamed_addr constant [19 x i8] c"g_1743[i][j][k].f0\00", align 1
@g_1749 = internal global %union.U1 zeroinitializer, align 8
@.str.91 = private unnamed_addr constant [10 x i8] c"g_1749.f0\00", align 1
@g_1794 = internal global %union.U1 { i64 -1 }, align 8
@.str.92 = private unnamed_addr constant [10 x i8] c"g_1794.f0\00", align 1
@g_1839 = internal global %union.U1 { i64 5 }, align 8
@.str.93 = private unnamed_addr constant [10 x i8] c"g_1839.f0\00", align 1
@g_1848 = internal constant %union.U1 zeroinitializer, align 8
@.str.94 = private unnamed_addr constant [10 x i8] c"g_1848.f0\00", align 1
@g_1849 = internal global i32 0, align 4
@.str.95 = private unnamed_addr constant [7 x i8] c"g_1849\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2 = private unnamed_addr constant [6 x i32] [i32 1914856210, i32 1914856210, i32 1914856210, i32 1914856210, i32 1914856210, i32 1914856210], align 16
@func_1.l_14 = private unnamed_addr constant [8 x [9 x [3 x i16*]]] [[9 x [3 x i16*]] [[3 x i16*] [i16* @g_15, i16* @g_15, i16* null], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* null, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15]], [9 x [3 x i16*]] [[3 x i16*] [i16* @g_15, i16* @g_15, i16* null], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* null], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15]], [9 x [3 x i16*]] [[3 x i16*] [i16* null, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* null], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* null, i16* @g_15], [3 x i16*] [i16* @g_15, i16* null, i16* @g_15], [3 x i16*] [i16* @g_15, i16* null, i16* @g_15]], [9 x [3 x i16*]] [[3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* null, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* null, i16* @g_15]], [9 x [3 x i16*]] [[3 x i16*] [i16* @g_15, i16* null, i16* @g_15], [3 x i16*] [i16* @g_15, i16* null, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* null, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15]], [9 x [3 x i16*]] [[3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* null, i16* @g_15], [3 x i16*] [i16* @g_15, i16* null, i16* @g_15], [3 x i16*] [i16* @g_15, i16* null, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* null, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15]], [9 x [3 x i16*]] [[3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* null, i16* @g_15], [3 x i16*] [i16* @g_15, i16* null, i16* @g_15], [3 x i16*] [i16* @g_15, i16* null, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* null, i16* @g_15, i16* @g_15]], [9 x [3 x i16*]] [[3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15], [3 x i16*] [i16* @g_15, i16* null, i16* @g_15], [3 x i16*] [i16* @g_15, i16* null, i16* @g_15], [3 x i16*] [i16* @g_15, i16* null, i16* @g_15], [3 x i16*] [i16* @g_15, i16* @g_15, i16* @g_15]]], align 16
@.str.96 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i32, i32* @g_3, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_4, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i16, i16* @g_15, align 2, !tbaa !10
  %98 = zext i16 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i16, i16* @g_26, align 2, !tbaa !10
  %101 = zext i16 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  %103 = load i8, i8* @g_66, align 1, !tbaa !9
  %104 = sext i8 %103 to i64
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %105)
  %106 = load i32, i32* @g_75, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %108)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %109

; <label>:109                                     ; preds = %149, %89
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = icmp slt i32 %110, 9
  br i1 %111, label %112, label %152

; <label>:112                                     ; preds = %109
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %113

; <label>:113                                     ; preds = %145, %112
  %114 = load i32, i32* %j, align 4, !tbaa !1
  %115 = icmp slt i32 %114, 9
  br i1 %115, label %116, label %148

; <label>:116                                     ; preds = %113
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %117

; <label>:117                                     ; preds = %141, %116
  %118 = load i32, i32* %k, align 4, !tbaa !1
  %119 = icmp slt i32 %118, 3
  br i1 %119, label %120, label %144

; <label>:120                                     ; preds = %117
  %121 = load i32, i32* %k, align 4, !tbaa !1
  %122 = sext i32 %121 to i64
  %123 = load i32, i32* %j, align 4, !tbaa !1
  %124 = sext i32 %123 to i64
  %125 = load i32, i32* %i, align 4, !tbaa !1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [9 x [9 x [3 x i32]]], [9 x [9 x [3 x i32]]]* @g_77, i32 0, i64 %126
  %128 = getelementptr inbounds [9 x [3 x i32]], [9 x [3 x i32]]* %127, i32 0, i64 %124
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %128, i32 0, i64 %122
  %130 = load i32, i32* %129, align 4, !tbaa !1
  %131 = zext i32 %130 to i64
  %132 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 %132)
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

; <label>:135                                     ; preds = %120
  %136 = load i32, i32* %i, align 4, !tbaa !1
  %137 = load i32, i32* %j, align 4, !tbaa !1
  %138 = load i32, i32* %k, align 4, !tbaa !1
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %136, i32 %137, i32 %138)
  br label %140

; <label>:140                                     ; preds = %135, %120
  br label %141

; <label>:141                                     ; preds = %140
  %142 = load i32, i32* %k, align 4, !tbaa !1
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %k, align 4, !tbaa !1
  br label %117

; <label>:144                                     ; preds = %117
  br label %145

; <label>:145                                     ; preds = %144
  %146 = load i32, i32* %j, align 4, !tbaa !1
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %j, align 4, !tbaa !1
  br label %113

; <label>:148                                     ; preds = %113
  br label %149

; <label>:149                                     ; preds = %148
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %i, align 4, !tbaa !1
  br label %109

; <label>:152                                     ; preds = %109
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %153

; <label>:153                                     ; preds = %249, %152
  %154 = load i32, i32* %i, align 4, !tbaa !1
  %155 = icmp slt i32 %154, 1
  br i1 %155, label %156, label %252

; <label>:156                                     ; preds = %153
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %157

; <label>:157                                     ; preds = %245, %156
  %158 = load i32, i32* %j, align 4, !tbaa !1
  %159 = icmp slt i32 %158, 1
  br i1 %159, label %160, label %248

; <label>:160                                     ; preds = %157
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %161

; <label>:161                                     ; preds = %241, %160
  %162 = load i32, i32* %k, align 4, !tbaa !1
  %163 = icmp slt i32 %162, 8
  br i1 %163, label %164, label %244

; <label>:164                                     ; preds = %161
  %165 = load i32, i32* %k, align 4, !tbaa !1
  %166 = sext i32 %165 to i64
  %167 = load i32, i32* %j, align 4, !tbaa !1
  %168 = sext i32 %167 to i64
  %169 = load i32, i32* %i, align 4, !tbaa !1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [1 x [1 x [8 x %union.U0]]], [1 x [1 x [8 x %union.U0]]]* @g_82, i32 0, i64 %170
  %172 = getelementptr inbounds [1 x [8 x %union.U0]], [1 x [8 x %union.U0]]* %171, i32 0, i64 %168
  %173 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* %172, i32 0, i64 %166
  %174 = bitcast %union.U0* %173 to i32*
  %175 = load i32, i32* %174, align 4, !tbaa !1
  %176 = sext i32 %175 to i64
  %177 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 %177)
  %178 = load i32, i32* %k, align 4, !tbaa !1
  %179 = sext i32 %178 to i64
  %180 = load i32, i32* %j, align 4, !tbaa !1
  %181 = sext i32 %180 to i64
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [1 x [1 x [8 x %union.U0]]], [1 x [1 x [8 x %union.U0]]]* @g_82, i32 0, i64 %183
  %185 = getelementptr inbounds [1 x [8 x %union.U0]], [1 x [8 x %union.U0]]* %184, i32 0, i64 %181
  %186 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* %185, i32 0, i64 %179
  %187 = bitcast %union.U0* %186 to i8*
  %188 = load volatile i8, i8* %187, align 1, !tbaa !9
  %189 = zext i8 %188 to i64
  %190 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %189, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 %190)
  %191 = load i32, i32* %k, align 4, !tbaa !1
  %192 = sext i32 %191 to i64
  %193 = load i32, i32* %j, align 4, !tbaa !1
  %194 = sext i32 %193 to i64
  %195 = load i32, i32* %i, align 4, !tbaa !1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [1 x [1 x [8 x %union.U0]]], [1 x [1 x [8 x %union.U0]]]* @g_82, i32 0, i64 %196
  %198 = getelementptr inbounds [1 x [8 x %union.U0]], [1 x [8 x %union.U0]]* %197, i32 0, i64 %194
  %199 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* %198, i32 0, i64 %192
  %200 = bitcast %union.U0* %199 to i16*
  %201 = load volatile i16, i16* %200, align 2, !tbaa !10
  %202 = zext i16 %201 to i64
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %202, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 %203)
  %204 = load i32, i32* %k, align 4, !tbaa !1
  %205 = sext i32 %204 to i64
  %206 = load i32, i32* %j, align 4, !tbaa !1
  %207 = sext i32 %206 to i64
  %208 = load i32, i32* %i, align 4, !tbaa !1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [1 x [1 x [8 x %union.U0]]], [1 x [1 x [8 x %union.U0]]]* @g_82, i32 0, i64 %209
  %211 = getelementptr inbounds [1 x [8 x %union.U0]], [1 x [8 x %union.U0]]* %210, i32 0, i64 %207
  %212 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* %211, i32 0, i64 %205
  %213 = bitcast %union.U0* %212 to i8*
  %214 = load i8, i8* %213, align 4
  %215 = shl i8 %214, 6
  %216 = ashr i8 %215, 6
  %217 = sext i8 %216 to i32
  %218 = sext i32 %217 to i64
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i32 %219)
  %220 = load i32, i32* %k, align 4, !tbaa !1
  %221 = sext i32 %220 to i64
  %222 = load i32, i32* %j, align 4, !tbaa !1
  %223 = sext i32 %222 to i64
  %224 = load i32, i32* %i, align 4, !tbaa !1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [1 x [1 x [8 x %union.U0]]], [1 x [1 x [8 x %union.U0]]]* @g_82, i32 0, i64 %225
  %227 = getelementptr inbounds [1 x [8 x %union.U0]], [1 x [8 x %union.U0]]* %226, i32 0, i64 %223
  %228 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* %227, i32 0, i64 %221
  %229 = bitcast %union.U0* %228 to i32*
  %230 = load i32, i32* %229, align 4, !tbaa !1
  %231 = zext i32 %230 to i64
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %231, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i32 %232)
  %233 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

; <label>:235                                     ; preds = %164
  %236 = load i32, i32* %i, align 4, !tbaa !1
  %237 = load i32, i32* %j, align 4, !tbaa !1
  %238 = load i32, i32* %k, align 4, !tbaa !1
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %236, i32 %237, i32 %238)
  br label %240

; <label>:240                                     ; preds = %235, %164
  br label %241

; <label>:241                                     ; preds = %240
  %242 = load i32, i32* %k, align 4, !tbaa !1
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %k, align 4, !tbaa !1
  br label %161

; <label>:244                                     ; preds = %161
  br label %245

; <label>:245                                     ; preds = %244
  %246 = load i32, i32* %j, align 4, !tbaa !1
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %j, align 4, !tbaa !1
  br label %157

; <label>:248                                     ; preds = %157
  br label %249

; <label>:249                                     ; preds = %248
  %250 = load i32, i32* %i, align 4, !tbaa !1
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %i, align 4, !tbaa !1
  br label %153

; <label>:252                                     ; preds = %153
  %253 = load i16, i16* @g_101, align 2, !tbaa !10
  %254 = sext i16 %253 to i64
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %254, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %255)
  %256 = load i32, i32* @g_129, align 4, !tbaa !1
  %257 = zext i32 %256 to i64
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %258)
  %259 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_149, i32 0, i32 0), align 8, !tbaa !7
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %259, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %260)
  %261 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_163, i32 0, i32 0), align 8, !tbaa !7
  %262 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %261, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %262)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %263

; <label>:263                                     ; preds = %279, %252
  %264 = load i32, i32* %i, align 4, !tbaa !1
  %265 = icmp slt i32 %264, 5
  br i1 %265, label %266, label %282

; <label>:266                                     ; preds = %263
  %267 = load i32, i32* %i, align 4, !tbaa !1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [5 x %union.U1], [5 x %union.U1]* @g_177, i32 0, i64 %268
  %270 = bitcast %union.U1* %269 to i64*
  %271 = load volatile i64, i64* %270, align 8, !tbaa !7
  %272 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %271, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 %272)
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

; <label>:275                                     ; preds = %266
  %276 = load i32, i32* %i, align 4, !tbaa !1
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %276)
  br label %278

; <label>:278                                     ; preds = %275, %266
  br label %279

; <label>:279                                     ; preds = %278
  %280 = load i32, i32* %i, align 4, !tbaa !1
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %i, align 4, !tbaa !1
  br label %263

; <label>:282                                     ; preds = %263
  %283 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_178, i32 0, i32 0), align 8, !tbaa !7
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %283, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %284)
  %285 = load i16, i16* @g_193, align 2, !tbaa !10
  %286 = zext i16 %285 to i64
  %287 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %286, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %287)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %288

; <label>:288                                     ; preds = %316, %282
  %289 = load i32, i32* %i, align 4, !tbaa !1
  %290 = icmp slt i32 %289, 7
  br i1 %290, label %291, label %319

; <label>:291                                     ; preds = %288
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %292

; <label>:292                                     ; preds = %312, %291
  %293 = load i32, i32* %j, align 4, !tbaa !1
  %294 = icmp slt i32 %293, 4
  br i1 %294, label %295, label %315

; <label>:295                                     ; preds = %292
  %296 = load i32, i32* %j, align 4, !tbaa !1
  %297 = sext i32 %296 to i64
  %298 = load i32, i32* %i, align 4, !tbaa !1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [7 x [4 x i16]], [7 x [4 x i16]]* @g_225, i32 0, i64 %299
  %301 = getelementptr inbounds [4 x i16], [4 x i16]* %300, i32 0, i64 %297
  %302 = load volatile i16, i16* %301, align 2, !tbaa !10
  %303 = sext i16 %302 to i64
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %303, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 %304)
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %311

; <label>:307                                     ; preds = %295
  %308 = load i32, i32* %i, align 4, !tbaa !1
  %309 = load i32, i32* %j, align 4, !tbaa !1
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 %308, i32 %309)
  br label %311

; <label>:311                                     ; preds = %307, %295
  br label %312

; <label>:312                                     ; preds = %311
  %313 = load i32, i32* %j, align 4, !tbaa !1
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %j, align 4, !tbaa !1
  br label %292

; <label>:315                                     ; preds = %292
  br label %316

; <label>:316                                     ; preds = %315
  %317 = load i32, i32* %i, align 4, !tbaa !1
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %i, align 4, !tbaa !1
  br label %288

; <label>:319                                     ; preds = %288
  %320 = load i64, i64* @g_252, align 8, !tbaa !7
  %321 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %320, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %321)
  %322 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_275, i32 0, i32 0), align 8, !tbaa !7
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %322, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %323)
  %324 = load i32, i32* @g_284, align 4, !tbaa !1
  %325 = sext i32 %324 to i64
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %326)
  %327 = load i32, i32* @g_298, align 4, !tbaa !1
  %328 = zext i32 %327 to i64
  %329 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %328, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %329)
  %330 = load volatile i32, i32* @g_334, align 4, !tbaa !1
  %331 = sext i32 %330 to i64
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %331, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %332)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %333

; <label>:333                                     ; preds = %381, %319
  %334 = load i32, i32* %i, align 4, !tbaa !1
  %335 = icmp slt i32 %334, 3
  br i1 %335, label %336, label %384

; <label>:336                                     ; preds = %333
  %337 = load i32, i32* %i, align 4, !tbaa !1
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* @g_380, i32 0, i64 %338
  %340 = bitcast %union.U0* %339 to i32*
  %341 = load i32, i32* %340, align 4, !tbaa !1
  %342 = sext i32 %341 to i64
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %342, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i32 %343)
  %344 = load i32, i32* %i, align 4, !tbaa !1
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* @g_380, i32 0, i64 %345
  %347 = bitcast %union.U0* %346 to i8*
  %348 = load volatile i8, i8* %347, align 1, !tbaa !9
  %349 = zext i8 %348 to i64
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 %350)
  %351 = load i32, i32* %i, align 4, !tbaa !1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* @g_380, i32 0, i64 %352
  %354 = bitcast %union.U0* %353 to i16*
  %355 = load volatile i16, i16* %354, align 2, !tbaa !10
  %356 = zext i16 %355 to i64
  %357 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %356, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i32 %357)
  %358 = load i32, i32* %i, align 4, !tbaa !1
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* @g_380, i32 0, i64 %359
  %361 = bitcast %union.U0* %360 to i8*
  %362 = load i8, i8* %361, align 4
  %363 = shl i8 %362, 6
  %364 = ashr i8 %363, 6
  %365 = sext i8 %364 to i32
  %366 = sext i32 %365 to i64
  %367 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %366, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 %367)
  %368 = load i32, i32* %i, align 4, !tbaa !1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* @g_380, i32 0, i64 %369
  %371 = bitcast %union.U0* %370 to i32*
  %372 = load i32, i32* %371, align 4, !tbaa !1
  %373 = zext i32 %372 to i64
  %374 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %373, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 %374)
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %380

; <label>:377                                     ; preds = %336
  %378 = load i32, i32* %i, align 4, !tbaa !1
  %379 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %378)
  br label %380

; <label>:380                                     ; preds = %377, %336
  br label %381

; <label>:381                                     ; preds = %380
  %382 = load i32, i32* %i, align 4, !tbaa !1
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %i, align 4, !tbaa !1
  br label %333

; <label>:384                                     ; preds = %333
  %385 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_425, i32 0, i32 0), align 4, !tbaa !1
  %386 = sext i32 %385 to i64
  %387 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %386, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %387)
  %388 = load volatile i8, i8* bitcast (%union.U0* @g_425 to i8*), align 1, !tbaa !9
  %389 = zext i8 %388 to i64
  %390 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %389, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %390)
  %391 = load volatile i16, i16* bitcast (%union.U0* @g_425 to i16*), align 2, !tbaa !10
  %392 = zext i16 %391 to i64
  %393 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %392, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %393)
  %394 = load i8, i8* bitcast (%union.U0* @g_425 to i8*), align 4
  %395 = shl i8 %394, 6
  %396 = ashr i8 %395, 6
  %397 = sext i8 %396 to i32
  %398 = sext i32 %397 to i64
  %399 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %398, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %399)
  %400 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_425, i32 0, i32 0), align 4, !tbaa !1
  %401 = zext i32 %400 to i64
  %402 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %401, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %402)
  %403 = load i16, i16* @g_433, align 2, !tbaa !10
  %404 = sext i16 %403 to i64
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %404, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %405)
  %406 = load i32, i32* @g_498, align 4, !tbaa !1
  %407 = zext i32 %406 to i64
  %408 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %407, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %408)
  %409 = load i32, i32* @g_552, align 4, !tbaa !1
  %410 = zext i32 %409 to i64
  %411 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %410, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %411)
  %412 = load i32, i32* @g_597, align 4, !tbaa !1
  %413 = sext i32 %412 to i64
  %414 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %413, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %414)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %415

; <label>:415                                     ; preds = %431, %384
  %416 = load i32, i32* %i, align 4, !tbaa !1
  %417 = icmp slt i32 %416, 5
  br i1 %417, label %418, label %434

; <label>:418                                     ; preds = %415
  %419 = load i32, i32* %i, align 4, !tbaa !1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [5 x i8], [5 x i8]* @g_668, i32 0, i64 %420
  %422 = load i8, i8* %421, align 1, !tbaa !9
  %423 = sext i8 %422 to i64
  %424 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %423, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %424)
  %425 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %430

; <label>:427                                     ; preds = %418
  %428 = load i32, i32* %i, align 4, !tbaa !1
  %429 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %428)
  br label %430

; <label>:430                                     ; preds = %427, %418
  br label %431

; <label>:431                                     ; preds = %430
  %432 = load i32, i32* %i, align 4, !tbaa !1
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %i, align 4, !tbaa !1
  br label %415

; <label>:434                                     ; preds = %415
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %435

; <label>:435                                     ; preds = %451, %434
  %436 = load i32, i32* %i, align 4, !tbaa !1
  %437 = icmp slt i32 %436, 3
  br i1 %437, label %438, label %454

; <label>:438                                     ; preds = %435
  %439 = load i32, i32* %i, align 4, !tbaa !1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [3 x i8], [3 x i8]* @g_741, i32 0, i64 %440
  %442 = load i8, i8* %441, align 1, !tbaa !9
  %443 = sext i8 %442 to i64
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %443, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %444)
  %445 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %450

; <label>:447                                     ; preds = %438
  %448 = load i32, i32* %i, align 4, !tbaa !1
  %449 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %448)
  br label %450

; <label>:450                                     ; preds = %447, %438
  br label %451

; <label>:451                                     ; preds = %450
  %452 = load i32, i32* %i, align 4, !tbaa !1
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %i, align 4, !tbaa !1
  br label %435

; <label>:454                                     ; preds = %435
  %455 = load i64, i64* @g_747, align 8, !tbaa !7
  %456 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %455, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %456)
  %457 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_757, i32 0, i32 0), align 8, !tbaa !7
  %458 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %457, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 %458)
  %459 = load i8, i8* @g_773, align 1, !tbaa !9
  %460 = zext i8 %459 to i64
  %461 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %460, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 %461)
  %462 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_782, i32 0, i32 0), align 8, !tbaa !7
  %463 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %462, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 %463)
  %464 = load i16, i16* @g_786, align 2, !tbaa !10
  %465 = zext i16 %464 to i64
  %466 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %465, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 %466)
  %467 = load volatile i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_795, i32 0, i32 0), align 4, !tbaa !1
  %468 = sext i32 %467 to i64
  %469 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %468, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 %469)
  %470 = load volatile i8, i8* bitcast (%union.U0* @g_795 to i8*), align 1, !tbaa !9
  %471 = zext i8 %470 to i64
  %472 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %471, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %472)
  %473 = load volatile i16, i16* bitcast (%union.U0* @g_795 to i16*), align 2, !tbaa !10
  %474 = zext i16 %473 to i64
  %475 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %474, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 %475)
  %476 = load volatile i8, i8* bitcast (%union.U0* @g_795 to i8*), align 4
  %477 = shl i8 %476, 6
  %478 = ashr i8 %477, 6
  %479 = sext i8 %478 to i32
  %480 = sext i32 %479 to i64
  %481 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %480, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 %481)
  %482 = load volatile i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_795, i32 0, i32 0), align 4, !tbaa !1
  %483 = zext i32 %482 to i64
  %484 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %483, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 %484)
  %485 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_822, i32 0, i32 0), align 8, !tbaa !7
  %486 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %485, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 %486)
  %487 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_850, i32 0, i32 0), align 8, !tbaa !7
  %488 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %487, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i32 %488)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %489

; <label>:489                                     ; preds = %504, %454
  %490 = load i32, i32* %i, align 4, !tbaa !1
  %491 = icmp slt i32 %490, 5
  br i1 %491, label %492, label %507

; <label>:492                                     ; preds = %489
  %493 = load i32, i32* %i, align 4, !tbaa !1
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [5 x i64], [5 x i64]* @g_863, i32 0, i64 %494
  %496 = load i64, i64* %495, align 8, !tbaa !7
  %497 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %496, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 %497)
  %498 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %503

; <label>:500                                     ; preds = %492
  %501 = load i32, i32* %i, align 4, !tbaa !1
  %502 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %501)
  br label %503

; <label>:503                                     ; preds = %500, %492
  br label %504

; <label>:504                                     ; preds = %503
  %505 = load i32, i32* %i, align 4, !tbaa !1
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %i, align 4, !tbaa !1
  br label %489

; <label>:507                                     ; preds = %489
  %508 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_871, i32 0, i32 0), align 8, !tbaa !7
  %509 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %508, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i32 %509)
  %510 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_917, i32 0, i32 0), align 8, !tbaa !7
  %511 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %510, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i32 %511)
  %512 = load i16, i16* @g_973, align 2, !tbaa !10
  %513 = zext i16 %512 to i64
  %514 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %513, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 %514)
  %515 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_997, i32 0, i32 0), align 8, !tbaa !7
  %516 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %515, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i32 %516)
  %517 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1037, i32 0, i32 0), align 8, !tbaa !7
  %518 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %517, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 %518)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %519

; <label>:519                                     ; preds = %535, %507
  %520 = load i32, i32* %i, align 4, !tbaa !1
  %521 = icmp slt i32 %520, 5
  br i1 %521, label %522, label %538

; <label>:522                                     ; preds = %519
  %523 = load i32, i32* %i, align 4, !tbaa !1
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [5 x i8], [5 x i8]* @g_1055, i32 0, i64 %524
  %526 = load i8, i8* %525, align 1, !tbaa !9
  %527 = sext i8 %526 to i64
  %528 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %527, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 %528)
  %529 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %534

; <label>:531                                     ; preds = %522
  %532 = load i32, i32* %i, align 4, !tbaa !1
  %533 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %532)
  br label %534

; <label>:534                                     ; preds = %531, %522
  br label %535

; <label>:535                                     ; preds = %534
  %536 = load i32, i32* %i, align 4, !tbaa !1
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %i, align 4, !tbaa !1
  br label %519

; <label>:538                                     ; preds = %519
  %539 = load i16, i16* @g_1064, align 2, !tbaa !10
  %540 = sext i16 %539 to i64
  %541 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %540, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %541)
  %542 = load i64, i64* @g_1065, align 8, !tbaa !7
  %543 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %542, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 %543)
  %544 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1090, i32 0, i32 0), align 8, !tbaa !7
  %545 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %544, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 %545)
  %546 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1121, i32 0, i32 0), align 8, !tbaa !7
  %547 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %546, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 %547)
  %548 = load i64, i64* @g_1159, align 8, !tbaa !7
  %549 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %548, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 %549)
  %550 = load i8, i8* @g_1175, align 1, !tbaa !9
  %551 = sext i8 %550 to i64
  %552 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %551, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 %552)
  %553 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1279, i32 0, i32 0), align 8, !tbaa !7
  %554 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %553, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 %554)
  %555 = load volatile i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_1280, i32 0, i32 0), align 4, !tbaa !1
  %556 = sext i32 %555 to i64
  %557 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %556, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 %557)
  %558 = load volatile i8, i8* bitcast (%union.U0* @g_1280 to i8*), align 1, !tbaa !9
  %559 = zext i8 %558 to i64
  %560 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %559, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 %560)
  %561 = load volatile i16, i16* bitcast (%union.U0* @g_1280 to i16*), align 2, !tbaa !10
  %562 = zext i16 %561 to i64
  %563 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %562, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i32 %563)
  %564 = load volatile i8, i8* bitcast (%union.U0* @g_1280 to i8*), align 4
  %565 = shl i8 %564, 6
  %566 = ashr i8 %565, 6
  %567 = sext i8 %566 to i32
  %568 = sext i32 %567 to i64
  %569 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %568, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i32 %569)
  %570 = load volatile i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_1280, i32 0, i32 0), align 4, !tbaa !1
  %571 = zext i32 %570 to i64
  %572 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %571, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32 %572)
  %573 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1304, i32 0, i32 0), align 8, !tbaa !7
  %574 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %573, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i32 %574)
  %575 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1350, i32 0, i32 0), align 8, !tbaa !7
  %576 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %575, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 %576)
  %577 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1359, i32 0, i32 0), align 8, !tbaa !7
  %578 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %577, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 %578)
  %579 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1396, i32 0, i32 0), align 8, !tbaa !7
  %580 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %579, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i32 %580)
  %581 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 364286651, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i32 %581)
  %582 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1517, i32 0, i32 0), align 8, !tbaa !7
  %583 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %582, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), i32 %583)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %584

; <label>:584                                     ; preds = %600, %538
  %585 = load i32, i32* %i, align 4, !tbaa !1
  %586 = icmp slt i32 %585, 4
  br i1 %586, label %587, label %603

; <label>:587                                     ; preds = %584
  %588 = load i32, i32* %i, align 4, !tbaa !1
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds [4 x %union.U1], [4 x %union.U1]* @g_1553, i32 0, i64 %589
  %591 = bitcast %union.U1* %590 to i64*
  %592 = load volatile i64, i64* %591, align 8, !tbaa !7
  %593 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %592, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), i32 %593)
  %594 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %599

; <label>:596                                     ; preds = %587
  %597 = load i32, i32* %i, align 4, !tbaa !1
  %598 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %597)
  br label %599

; <label>:599                                     ; preds = %596, %587
  br label %600

; <label>:600                                     ; preds = %599
  %601 = load i32, i32* %i, align 4, !tbaa !1
  %602 = add nsw i32 %601, 1
  store i32 %602, i32* %i, align 4, !tbaa !1
  br label %584

; <label>:603                                     ; preds = %584
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %604

; <label>:604                                     ; preds = %620, %603
  %605 = load i32, i32* %i, align 4, !tbaa !1
  %606 = icmp slt i32 %605, 3
  br i1 %606, label %607, label %623

; <label>:607                                     ; preds = %604
  %608 = load i32, i32* %i, align 4, !tbaa !1
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds [3 x %union.U1], [3 x %union.U1]* @g_1567, i32 0, i64 %609
  %611 = bitcast %union.U1* %610 to i64*
  %612 = load volatile i64, i64* %611, align 8, !tbaa !7
  %613 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %612, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i32 %613)
  %614 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %619

; <label>:616                                     ; preds = %607
  %617 = load i32, i32* %i, align 4, !tbaa !1
  %618 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %617)
  br label %619

; <label>:619                                     ; preds = %616, %607
  br label %620

; <label>:620                                     ; preds = %619
  %621 = load i32, i32* %i, align 4, !tbaa !1
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %i, align 4, !tbaa !1
  br label %604

; <label>:623                                     ; preds = %604
  %624 = load volatile i16, i16* @g_1586, align 2, !tbaa !10
  %625 = sext i16 %624 to i64
  %626 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %625, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 %626)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %627

; <label>:627                                     ; preds = %643, %623
  %628 = load i32, i32* %i, align 4, !tbaa !1
  %629 = icmp slt i32 %628, 6
  br i1 %629, label %630, label %646

; <label>:630                                     ; preds = %627
  %631 = load i32, i32* %i, align 4, !tbaa !1
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [6 x i32], [6 x i32]* @g_1591, i32 0, i64 %632
  %634 = load i32, i32* %633, align 4, !tbaa !1
  %635 = zext i32 %634 to i64
  %636 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %635, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i32 %636)
  %637 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %642

; <label>:639                                     ; preds = %630
  %640 = load i32, i32* %i, align 4, !tbaa !1
  %641 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %640)
  br label %642

; <label>:642                                     ; preds = %639, %630
  br label %643

; <label>:643                                     ; preds = %642
  %644 = load i32, i32* %i, align 4, !tbaa !1
  %645 = add nsw i32 %644, 1
  store i32 %645, i32* %i, align 4, !tbaa !1
  br label %627

; <label>:646                                     ; preds = %627
  %647 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1654, i32 0, i32 0), align 8, !tbaa !7
  %648 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %647, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i32 %648)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %649

; <label>:649                                     ; preds = %689, %646
  %650 = load i32, i32* %i, align 4, !tbaa !1
  %651 = icmp slt i32 %650, 7
  br i1 %651, label %652, label %692

; <label>:652                                     ; preds = %649
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %653

; <label>:653                                     ; preds = %685, %652
  %654 = load i32, i32* %j, align 4, !tbaa !1
  %655 = icmp slt i32 %654, 1
  br i1 %655, label %656, label %688

; <label>:656                                     ; preds = %653
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %657

; <label>:657                                     ; preds = %681, %656
  %658 = load i32, i32* %k, align 4, !tbaa !1
  %659 = icmp slt i32 %658, 6
  br i1 %659, label %660, label %684

; <label>:660                                     ; preds = %657
  %661 = load i32, i32* %k, align 4, !tbaa !1
  %662 = sext i32 %661 to i64
  %663 = load i32, i32* %j, align 4, !tbaa !1
  %664 = sext i32 %663 to i64
  %665 = load i32, i32* %i, align 4, !tbaa !1
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds [7 x [1 x [6 x i8]]], [7 x [1 x [6 x i8]]]* @g_1665, i32 0, i64 %666
  %668 = getelementptr inbounds [1 x [6 x i8]], [1 x [6 x i8]]* %667, i32 0, i64 %664
  %669 = getelementptr inbounds [6 x i8], [6 x i8]* %668, i32 0, i64 %662
  %670 = load i8, i8* %669, align 1, !tbaa !9
  %671 = sext i8 %670 to i64
  %672 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %671, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i32 0, i32 0), i32 %672)
  %673 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %680

; <label>:675                                     ; preds = %660
  %676 = load i32, i32* %i, align 4, !tbaa !1
  %677 = load i32, i32* %j, align 4, !tbaa !1
  %678 = load i32, i32* %k, align 4, !tbaa !1
  %679 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %676, i32 %677, i32 %678)
  br label %680

; <label>:680                                     ; preds = %675, %660
  br label %681

; <label>:681                                     ; preds = %680
  %682 = load i32, i32* %k, align 4, !tbaa !1
  %683 = add nsw i32 %682, 1
  store i32 %683, i32* %k, align 4, !tbaa !1
  br label %657

; <label>:684                                     ; preds = %657
  br label %685

; <label>:685                                     ; preds = %684
  %686 = load i32, i32* %j, align 4, !tbaa !1
  %687 = add nsw i32 %686, 1
  store i32 %687, i32* %j, align 4, !tbaa !1
  br label %653

; <label>:688                                     ; preds = %653
  br label %689

; <label>:689                                     ; preds = %688
  %690 = load i32, i32* %i, align 4, !tbaa !1
  %691 = add nsw i32 %690, 1
  store i32 %691, i32* %i, align 4, !tbaa !1
  br label %649

; <label>:692                                     ; preds = %649
  %693 = load volatile i64, i64* @g_1705, align 8, !tbaa !7
  %694 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %693, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32 %694)
  %695 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1724, i32 0, i32 0), align 8, !tbaa !7
  %696 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %695, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), i32 %696)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %697

; <label>:697                                     ; preds = %737, %692
  %698 = load i32, i32* %i, align 4, !tbaa !1
  %699 = icmp slt i32 %698, 6
  br i1 %699, label %700, label %740

; <label>:700                                     ; preds = %697
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %701

; <label>:701                                     ; preds = %733, %700
  %702 = load i32, i32* %j, align 4, !tbaa !1
  %703 = icmp slt i32 %702, 4
  br i1 %703, label %704, label %736

; <label>:704                                     ; preds = %701
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %705

; <label>:705                                     ; preds = %729, %704
  %706 = load i32, i32* %k, align 4, !tbaa !1
  %707 = icmp slt i32 %706, 10
  br i1 %707, label %708, label %732

; <label>:708                                     ; preds = %705
  %709 = load i32, i32* %k, align 4, !tbaa !1
  %710 = sext i32 %709 to i64
  %711 = load i32, i32* %j, align 4, !tbaa !1
  %712 = sext i32 %711 to i64
  %713 = load i32, i32* %i, align 4, !tbaa !1
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds [6 x [4 x [10 x %union.U1]]], [6 x [4 x [10 x %union.U1]]]* @g_1743, i32 0, i64 %714
  %716 = getelementptr inbounds [4 x [10 x %union.U1]], [4 x [10 x %union.U1]]* %715, i32 0, i64 %712
  %717 = getelementptr inbounds [10 x %union.U1], [10 x %union.U1]* %716, i32 0, i64 %710
  %718 = bitcast %union.U1* %717 to i64*
  %719 = load volatile i64, i64* %718, align 8, !tbaa !7
  %720 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %719, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i32 0, i32 0), i32 %720)
  %721 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %723, label %728

; <label>:723                                     ; preds = %708
  %724 = load i32, i32* %i, align 4, !tbaa !1
  %725 = load i32, i32* %j, align 4, !tbaa !1
  %726 = load i32, i32* %k, align 4, !tbaa !1
  %727 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %724, i32 %725, i32 %726)
  br label %728

; <label>:728                                     ; preds = %723, %708
  br label %729

; <label>:729                                     ; preds = %728
  %730 = load i32, i32* %k, align 4, !tbaa !1
  %731 = add nsw i32 %730, 1
  store i32 %731, i32* %k, align 4, !tbaa !1
  br label %705

; <label>:732                                     ; preds = %705
  br label %733

; <label>:733                                     ; preds = %732
  %734 = load i32, i32* %j, align 4, !tbaa !1
  %735 = add nsw i32 %734, 1
  store i32 %735, i32* %j, align 4, !tbaa !1
  br label %701

; <label>:736                                     ; preds = %701
  br label %737

; <label>:737                                     ; preds = %736
  %738 = load i32, i32* %i, align 4, !tbaa !1
  %739 = add nsw i32 %738, 1
  store i32 %739, i32* %i, align 4, !tbaa !1
  br label %697

; <label>:740                                     ; preds = %697
  %741 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1749, i32 0, i32 0), align 8, !tbaa !7
  %742 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %741, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0), i32 %742)
  %743 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1794, i32 0, i32 0), align 8, !tbaa !7
  %744 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %743, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i32 %744)
  %745 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1839, i32 0, i32 0), align 8, !tbaa !7
  %746 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %745, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i32 %746)
  %747 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1848, i32 0, i32 0), align 8, !tbaa !7
  %748 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %747, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i32 %748)
  %749 = load i32, i32* @g_1849, align 4, !tbaa !1
  %750 = sext i32 %749 to i64
  %751 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %750, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i32 %751)
  %752 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %753 = zext i32 %752 to i64
  %754 = xor i64 %753, 4294967295
  %755 = trunc i64 %754 to i32
  %756 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %755, i32 %756)
  %757 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %757) #1
  %758 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %758) #1
  %759 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %759) #1
  %760 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %760) #1
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
  %l_2 = alloca [6 x i32], align 16
  %l_17 = alloca i32, align 4
  %l_19 = alloca i32, align 4
  %l_1852 = alloca [4 x i64], align 16
  %i = alloca i32, align 4
  %l_25 = alloca i16*, align 8
  %l_1850 = alloca i32, align 4
  %l_13 = alloca i16*, align 8
  %l_14 = alloca [8 x [9 x [3 x i16*]]], align 16
  %l_16 = alloca i32, align 4
  %l_18 = alloca i32, align 4
  %l_20 = alloca i32, align 4
  %l_21 = alloca i32, align 4
  %l_1851 = alloca [8 x i16], align 16
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast [6 x i32]* %l_2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast [6 x i32]* %l_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([6 x i32]* @func_1.l_2 to i8*), i64 24, i32 16, i1 false)
  %3 = bitcast i32* %l_17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %l_17, align 4, !tbaa !1
  %4 = bitcast i32* %l_19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %l_19, align 4, !tbaa !1
  %5 = bitcast [4 x i64]* %l_1852 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %7

; <label>:7                                       ; preds = %14, %0
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %7
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %l_1852, i32 0, i64 %12
  store i64 0, i64* %13, align 8, !tbaa !7
  br label %14

; <label>:14                                      ; preds = %10
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %i, align 4, !tbaa !1
  br label %7

; <label>:17                                      ; preds = %7
  store i32 5, i32* @g_3, align 4, !tbaa !1
  br label %18

; <label>:18                                      ; preds = %66, %17
  %19 = load i32, i32* @g_3, align 4, !tbaa !1
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %69

; <label>:21                                      ; preds = %18
  %22 = bitcast i16** %l_25 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i16* @g_26, i16** %l_25, align 8, !tbaa !5
  %23 = bitcast i32* %l_1850 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 -1857091310, i32* %l_1850, align 4, !tbaa !1
  store i32 4, i32* @g_4, align 4, !tbaa !1
  br label %24

; <label>:24                                      ; preds = %60, %21
  %25 = load i32, i32* @g_4, align 4, !tbaa !1
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %63

; <label>:27                                      ; preds = %24
  %28 = bitcast i16** %l_13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i16* null, i16** %l_13, align 8, !tbaa !5
  %29 = bitcast [8 x [9 x [3 x i16*]]]* %l_14 to i8*
  call void @llvm.lifetime.start(i64 1728, i8* %29) #1
  %30 = bitcast [8 x [9 x [3 x i16*]]]* %l_14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* bitcast ([8 x [9 x [3 x i16*]]]* @func_1.l_14 to i8*), i64 1728, i32 16, i1 false)
  %31 = bitcast i32* %l_16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 0, i32* %l_16, align 4, !tbaa !1
  %32 = bitcast i32* %l_18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 -1, i32* %l_18, align 4, !tbaa !1
  %33 = bitcast i32* %l_20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 1314240090, i32* %l_20, align 4, !tbaa !1
  %34 = bitcast i32* %l_21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 -7, i32* %l_21, align 4, !tbaa !1
  %35 = bitcast [8 x i16]* %l_1851 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %35) #1
  %36 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %39

; <label>:39                                      ; preds = %46, %27
  %40 = load i32, i32* %i1, align 4, !tbaa !1
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %49

; <label>:42                                      ; preds = %39
  %43 = load i32, i32* %i1, align 4, !tbaa !1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i16], [8 x i16]* %l_1851, i32 0, i64 %44
  store i16 -25908, i16* %45, align 2, !tbaa !10
  br label %46

; <label>:46                                      ; preds = %42
  %47 = load i32, i32* %i1, align 4, !tbaa !1
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %i1, align 4, !tbaa !1
  br label %39

; <label>:49                                      ; preds = %39
  %50 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast [8 x i16]* %l_1851 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %53) #1
  %54 = bitcast i32* %l_21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %l_20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %l_18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %l_16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast [8 x [9 x [3 x i16*]]]* %l_14 to i8*
  call void @llvm.lifetime.end(i64 1728, i8* %58) #1
  %59 = bitcast i16** %l_13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  br label %60

; <label>:60                                      ; preds = %49
  %61 = load i32, i32* @g_4, align 4, !tbaa !1
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* @g_4, align 4, !tbaa !1
  br label %24

; <label>:63                                      ; preds = %24
  %64 = bitcast i32* %l_1850 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i16** %l_25 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  br label %66

; <label>:66                                      ; preds = %63
  %67 = load i32, i32* @g_3, align 4, !tbaa !1
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* @g_3, align 4, !tbaa !1
  br label %18

; <label>:69                                      ; preds = %18
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %l_1852, i32 0, i64 0
  %71 = load i64, i64* %70, align 8, !tbaa !7
  %72 = trunc i64 %71 to i8
  %73 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast [4 x i64]* %l_1852 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %74) #1
  %75 = bitcast i32* %l_19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %l_17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast [6 x i32]* %l_2 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %77) #1
  ret i8 %72
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.96, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
