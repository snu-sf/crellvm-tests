; ModuleID = '00085.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 -1258309519, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_16 = internal global i16 9, align 2
@.str.2 = private unnamed_addr constant [5 x i8] c"g_16\00", align 1
@g_41 = internal global i32 887785564, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_41\00", align 1
@g_67 = internal global i64 9209687760721995513, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"g_67\00", align 1
@g_68 = internal global i8 -92, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"g_68\00", align 1
@g_69 = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_69\00", align 1
@g_73 = internal global i32 -9, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_73\00", align 1
@g_96 = internal global i32 74904233, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_96\00", align 1
@g_100 = internal global [8 x i64] [i64 2343294181863853838, i64 2343294181863853838, i64 2343294181863853838, i64 2343294181863853838, i64 2343294181863853838, i64 2343294181863853838, i64 2343294181863853838, i64 2343294181863853838], align 16
@.str.9 = private unnamed_addr constant [9 x i8] c"g_100[i]\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_109 = internal global i64 6941833476183351423, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"g_109\00", align 1
@g_132 = internal global i16 1, align 2
@.str.12 = private unnamed_addr constant [6 x i8] c"g_132\00", align 1
@g_185 = internal global [5 x [8 x [6 x i16]]] [[8 x [6 x i16]] [[6 x i16] [i16 -24300, i16 -8, i16 -24300, i16 -3031, i16 -3031, i16 -24300], [6 x i16] [i16 -22479, i16 -22479, i16 -3031, i16 7169, i16 -3031, i16 -22479], [6 x i16] [i16 -3031, i16 -8, i16 7169, i16 7169, i16 -8, i16 -3031], [6 x i16] [i16 -22479, i16 -3031, i16 7169, i16 -3031, i16 -22479, i16 -22479], [6 x i16] [i16 -24300, i16 -3031, i16 -3031, i16 -24300, i16 -22479, i16 7169], [6 x i16] [i16 7169, i16 -22479, i16 7169, i16 -24300, i16 -24300, i16 7169], [6 x i16] [i16 -3031, i16 -3031, i16 -24300, i16 -8, i16 -24300, i16 -3031], [6 x i16] [i16 -24300, i16 -22479, i16 -8, i16 -8, i16 -22479, i16 -24300]], [8 x [6 x i16]] [[6 x i16] [i16 -3031, i16 -24300, i16 -8, i16 -24300, i16 -3031, i16 -3031], [6 x i16] [i16 7169, i16 -24300, i16 -24300, i16 7169, i16 -22479, i16 7169], [6 x i16] [i16 7169, i16 -22479, i16 7169, i16 -24300, i16 -24300, i16 7169], [6 x i16] [i16 -3031, i16 -3031, i16 -24300, i16 -8, i16 -24300, i16 -3031], [6 x i16] [i16 -24300, i16 -22479, i16 -8, i16 -8, i16 -22479, i16 -24300], [6 x i16] [i16 -3031, i16 -24300, i16 -8, i16 -24300, i16 -3031, i16 -3031], [6 x i16] [i16 7169, i16 -24300, i16 -24300, i16 7169, i16 -22479, i16 7169], [6 x i16] [i16 7169, i16 -22479, i16 7169, i16 -24300, i16 -24300, i16 7169]], [8 x [6 x i16]] [[6 x i16] [i16 -3031, i16 -3031, i16 -24300, i16 -8, i16 -24300, i16 -3031], [6 x i16] [i16 -24300, i16 -22479, i16 -8, i16 -8, i16 -22479, i16 -24300], [6 x i16] [i16 -3031, i16 -24300, i16 -8, i16 -24300, i16 -3031, i16 -3031], [6 x i16] [i16 7169, i16 -24300, i16 -24300, i16 7169, i16 -22479, i16 7169], [6 x i16] [i16 7169, i16 -22479, i16 7169, i16 -24300, i16 -24300, i16 7169], [6 x i16] [i16 -3031, i16 -3031, i16 -24300, i16 -8, i16 -24300, i16 -3031], [6 x i16] [i16 -24300, i16 -22479, i16 -8, i16 -8, i16 -22479, i16 -24300], [6 x i16] [i16 -3031, i16 -24300, i16 -8, i16 -24300, i16 -3031, i16 -3031]], [8 x [6 x i16]] [[6 x i16] [i16 7169, i16 -24300, i16 -24300, i16 7169, i16 -22479, i16 7169], [6 x i16] [i16 7169, i16 -22479, i16 7169, i16 -24300, i16 -24300, i16 7169], [6 x i16] [i16 -3031, i16 -3031, i16 -24300, i16 -8, i16 -24300, i16 -3031], [6 x i16] [i16 -24300, i16 -22479, i16 -8, i16 -8, i16 -22479, i16 -24300], [6 x i16] [i16 -3031, i16 -24300, i16 -8, i16 -24300, i16 -3031, i16 -3031], [6 x i16] [i16 7169, i16 -24300, i16 -24300, i16 7169, i16 -22479, i16 7169], [6 x i16] [i16 7169, i16 -22479, i16 7169, i16 -24300, i16 -24300, i16 7169], [6 x i16] [i16 -3031, i16 -3031, i16 -24300, i16 -8, i16 -24300, i16 -3031]], [8 x [6 x i16]] [[6 x i16] [i16 -24300, i16 -22479, i16 -8, i16 -8, i16 -22479, i16 -24300], [6 x i16] [i16 -3031, i16 -24300, i16 -8, i16 -24300, i16 -3031, i16 -3031], [6 x i16] [i16 7169, i16 -24300, i16 -24300, i16 7169, i16 -22479, i16 7169], [6 x i16] [i16 7169, i16 -22479, i16 7169, i16 -24300, i16 -24300, i16 7169], [6 x i16] [i16 -3031, i16 -3031, i16 -24300, i16 -22479, i16 7169, i16 -24300], [6 x i16] [i16 7169, i16 -3031, i16 -22479, i16 -22479, i16 -3031, i16 7169], [6 x i16] [i16 -24300, i16 7169, i16 -22479, i16 7169, i16 -24300, i16 -24300], [6 x i16] [i16 -8, i16 7169, i16 7169, i16 -8, i16 -3031, i16 -8]]], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"g_185[i][j][k]\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_243 = internal global i64 -2694202273338223863, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"g_243\00", align 1
@g_245 = internal global i8 -118, align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"g_245\00", align 1
@g_247 = internal global i64 6330900872926642599, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"g_247\00", align 1
@g_262 = internal global [8 x [4 x i32]] [[4 x i32] [i32 -7, i32 -455174968, i32 -7, i32 -298010144], [4 x i32] [i32 736644480, i32 445666306, i32 8, i32 736644480], [4 x i32] [i32 1, i32 -298010144, i32 -1713833595, i32 445666306], [4 x i32] [i32 -298010144, i32 -455174968, i32 -1713833595, i32 -1713833595], [4 x i32] [i32 1, i32 1, i32 8, i32 -540850418], [4 x i32] [i32 736644480, i32 -339775992, i32 -7, i32 445666306], [4 x i32] [i32 -7, i32 445666306, i32 -298010144, i32 -7], [4 x i32] [i32 1, i32 445666306, i32 1, i32 445666306]], align 16
@.str.18 = private unnamed_addr constant [12 x i8] c"g_262[i][j]\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_265 = internal global i32 709878308, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_265\00", align 1
@g_323 = internal global i16 -5, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_323\00", align 1
@g_325 = internal global i8 117, align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_325\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_410\00", align 1
@g_452 = internal global i16 6, align 2
@.str.24 = private unnamed_addr constant [6 x i8] c"g_452\00", align 1
@g_453 = internal global i16 -1, align 2
@.str.25 = private unnamed_addr constant [6 x i8] c"g_453\00", align 1
@g_555 = internal global i32 1786070622, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_555\00", align 1
@g_586 = internal global i8 1, align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_586\00", align 1
@g_642 = internal global [7 x [6 x i8]] [[6 x i8] c"\F7\00\10^\00D", [6 x i8] c"\FB\F7\10\F7\FB\1C", [6 x i8] c"\E9\F7D\E9\00\A0", [6 x i8] c"\E9\00\A0\F7\F7\A0", [6 x i8] c"\FB\FBD^\F7\1C", [6 x i8] c"\F7\00\10^\00D", [6 x i8] c"\FB\F7\10\F7\FB\1C"], align 16
@.str.28 = private unnamed_addr constant [12 x i8] c"g_642[i][j]\00", align 1
@g_744 = internal global i16 -28188, align 2
@.str.29 = private unnamed_addr constant [6 x i8] c"g_744\00", align 1
@g_835 = internal global i8 -118, align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_835\00", align 1
@g_836 = internal global i8 -1, align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"g_836\00", align 1
@g_837 = internal global i8 75, align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"g_837\00", align 1
@g_838 = internal global i8 51, align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"g_838\00", align 1
@g_839 = internal global i8 0, align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"g_839\00", align 1
@g_840 = internal global i8 -1, align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"g_840\00", align 1
@g_841 = internal global i8 -76, align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"g_841\00", align 1
@g_842 = internal global i8 -1, align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"g_842\00", align 1
@g_843 = internal global i8 -1, align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"g_843\00", align 1
@g_844 = internal global i8 -3, align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"g_844\00", align 1
@g_845 = internal global i8 4, align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"g_845\00", align 1
@g_846 = internal global i8 -61, align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"g_846\00", align 1
@g_847 = internal global i8 0, align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"g_847\00", align 1
@g_848 = internal global [1 x i8] c"\05", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"g_848[i]\00", align 1
@g_849 = internal global i8 1, align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"g_849\00", align 1
@g_850 = internal global i8 -38, align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"g_850\00", align 1
@g_851 = internal global [9 x [1 x i8]] [[1 x i8] c"\A0", [1 x i8] c"\FD", [1 x i8] c"\A0", [1 x i8] c"\FD", [1 x i8] c"\A0", [1 x i8] c"\FD", [1 x i8] c"\A0", [1 x i8] c"\FD", [1 x i8] c"\A0"], align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"g_851[i][j]\00", align 1
@g_852 = internal global i8 1, align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"g_852\00", align 1
@g_853 = internal global i8 1, align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"g_853\00", align 1
@g_854 = internal global i8 89, align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"g_854\00", align 1
@g_855 = internal global i8 50, align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"g_855\00", align 1
@g_856 = internal global i8 5, align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"g_856\00", align 1
@g_857 = internal global i8 -10, align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"g_857\00", align 1
@g_858 = internal global [2 x i8] zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"g_858[i]\00", align 1
@g_859 = internal global i8 1, align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"g_859\00", align 1
@g_860 = internal global i8 -3, align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"g_860\00", align 1
@g_861 = internal global [3 x [4 x [2 x i8]]] [[4 x [2 x i8]] [[2 x i8] c"r\FB", [2 x i8] c"\F8\FB", [2 x i8] c"r\FB", [2 x i8] c"\F8\FB"], [4 x [2 x i8]] [[2 x i8] c"r\FB", [2 x i8] c"\F8\FB", [2 x i8] c"r\FB", [2 x i8] c"\F8\FB"], [4 x [2 x i8]] [[2 x i8] c"r\FB", [2 x i8] c"\F8\FB", [2 x i8] c"r\FB", [2 x i8] c"\F8\FB"]], align 16
@.str.56 = private unnamed_addr constant [15 x i8] c"g_861[i][j][k]\00", align 1
@g_862 = internal global i8 91, align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"g_862\00", align 1
@g_863 = internal global i8 -4, align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"g_863\00", align 1
@g_864 = internal global i8 -74, align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"g_864\00", align 1
@g_865 = internal global i8 120, align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"g_865\00", align 1
@g_866 = internal global i8 5, align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"g_866\00", align 1
@g_867 = internal global i8 1, align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"g_867\00", align 1
@g_868 = internal global i8 -11, align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"g_868\00", align 1
@g_869 = internal global i8 -113, align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"g_869\00", align 1
@g_870 = internal global i8 1, align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"g_870\00", align 1
@g_871 = internal global [8 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00"], [8 x [4 x i8]] [[4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00"], [8 x [4 x i8]] [[4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00"], [8 x [4 x i8]] [[4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00"], [8 x [4 x i8]] [[4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00"], [8 x [4 x i8]] [[4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00"], [8 x [4 x i8]] [[4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00"], [8 x [4 x i8]] [[4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00", [4 x i8] c"\F7\00\F7\00"]], align 16
@.str.66 = private unnamed_addr constant [15 x i8] c"g_871[i][j][k]\00", align 1
@g_872 = internal global i8 -52, align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"g_872\00", align 1
@g_873 = internal global [1 x i8] c"\FE", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"g_873[i]\00", align 1
@g_874 = internal global i8 -1, align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"g_874\00", align 1
@g_875 = internal global i8 -35, align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"g_875\00", align 1
@g_876 = internal global i8 108, align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"g_876\00", align 1
@g_877 = internal global i8 -7, align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"g_877\00", align 1
@g_878 = internal global i8 102, align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"g_878\00", align 1
@g_879 = internal global i8 7, align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"g_879\00", align 1
@g_880 = internal global [4 x [3 x i8]] [[3 x i8] c"\E7\E7\FF", [3 x i8] c"\04\04\05", [3 x i8] c"\E7\E7\FF", [3 x i8] c"\04\04\05"], align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"g_880[i][j]\00", align 1
@g_1075 = internal global [2 x [1 x [9 x i32]]] [[1 x [9 x i32]] [[9 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2]], [1 x [9 x i32]] [[9 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2]]], align 16
@.str.76 = private unnamed_addr constant [16 x i8] c"g_1075[i][j][k]\00", align 1
@g_1147 = internal global [3 x [3 x [7 x i32]]] [[3 x [7 x i32]] [[7 x i32] [i32 -1429768108, i32 -1440173043, i32 -989063723, i32 1, i32 0, i32 0, i32 1162364310], [7 x i32] [i32 -1746317917, i32 1, i32 872131812, i32 -235457343, i32 -1243861104, i32 662300534, i32 -1746317917], [7 x i32] [i32 1, i32 -235457343, i32 1, i32 -1243861104, i32 1162364310, i32 -1243861104, i32 1]], [3 x [7 x i32]] [[7 x i32] [i32 -235457343, i32 -235457343, i32 0, i32 -1429768108, i32 -1440173043, i32 -989063723, i32 1], [7 x i32] [i32 0, i32 1, i32 1, i32 0, i32 1709692043, i32 1, i32 -1429768108], [7 x i32] [i32 -14918312, i32 -1440173043, i32 1709692043, i32 -1243861104, i32 -1440173043, i32 1, i32 1]], [3 x [7 x i32]] [[7 x i32] [i32 1, i32 1662778225, i32 -989063723, i32 1162364310, i32 1162364310, i32 -989063723, i32 1662778225], [7 x i32] [i32 1, i32 1, i32 1, i32 -1440173043, i32 -1243861104, i32 1709692043, i32 -1440173043], [7 x i32] [i32 -14918312, i32 -1429768108, i32 -5, i32 9, i32 1, i32 -989063723, i32 8]]], align 16
@.str.77 = private unnamed_addr constant [16 x i8] c"g_1147[i][j][k]\00", align 1
@g_1204 = internal global i16 1, align 2
@.str.78 = private unnamed_addr constant [7 x i8] c"g_1204\00", align 1
@g_1284 = internal global i16 21586, align 2
@.str.79 = private unnamed_addr constant [7 x i8] c"g_1284\00", align 1
@g_1301 = internal global i8 1, align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"g_1301\00", align 1
@g_1435 = internal global i8 -114, align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"g_1435\00", align 1
@g_1487 = internal global i16 -8, align 2
@.str.82 = private unnamed_addr constant [7 x i8] c"g_1487\00", align 1
@g_1513 = internal global i32 0, align 4
@.str.83 = private unnamed_addr constant [7 x i8] c"g_1513\00", align 1
@g_1644 = internal global [7 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 16
@.str.84 = private unnamed_addr constant [10 x i8] c"g_1644[i]\00", align 1
@g_1646 = internal global i64 -5015118925932760768, align 8
@.str.85 = private unnamed_addr constant [7 x i8] c"g_1646\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_26 = internal constant [9 x [1 x [9 x i32*]]] [[1 x [9 x i32*]] [[9 x i32*] [i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* @g_3]], [1 x [9 x i32*]] [[9 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* null]], [1 x [9 x i32*]] [[9 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* @g_3]], [1 x [9 x i32*]] [[9 x i32*] [i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* @g_3]], [1 x [9 x i32*]] [[9 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* null]], [1 x [9 x i32*]] [[9 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* @g_3]], [1 x [9 x i32*]] [[9 x i32*] [i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* @g_3, i32* @g_3, i32* null, i32* null, i32* @g_3]], [1 x [9 x i32*]] [[9 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3]], [1 x [9 x i32*]] [[9 x i32*] [i32* @g_3, i32* null, i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3]]], align 16
@func_1.l_1507 = private unnamed_addr constant [10 x i8] c"\03m\03\03m\03\03m\03\03", align 1
@func_1.l_1669 = private unnamed_addr constant [7 x i32] [i32 961286955, i32 961286955, i32 961286955, i32 961286955, i32 961286955, i32 961286955, i32 961286955], align 16
@func_1.l_1645 = private unnamed_addr constant [5 x i32] [i32 -941595905, i32 -941595905, i32 -941595905, i32 -941595905, i32 -941595905], align 16
@func_1.l_1687 = private unnamed_addr constant [4 x [10 x [2 x i32]]] [[10 x [2 x i32]] [[2 x i32] [i32 -1093343142, i32 -8], [2 x i32] [i32 -8, i32 -1093343142], [2 x i32] [i32 -3, i32 3], [2 x i32] [i32 -3, i32 -1093343142], [2 x i32] [i32 -8, i32 -8], [2 x i32] [i32 -1093343142, i32 -3], [2 x i32] [i32 3, i32 -3], [2 x i32] [i32 -1093343142, i32 -8], [2 x i32] [i32 -8, i32 -1093343142], [2 x i32] [i32 -3, i32 3]], [10 x [2 x i32]] [[2 x i32] [i32 -3, i32 -1093343142], [2 x i32] [i32 -8, i32 -8], [2 x i32] [i32 -1093343142, i32 -3], [2 x i32] [i32 3, i32 -3], [2 x i32] [i32 -1093343142, i32 -8], [2 x i32] [i32 -8, i32 -1093343142], [2 x i32] [i32 -3, i32 3], [2 x i32] [i32 -3, i32 -1093343142], [2 x i32] [i32 -8, i32 -8], [2 x i32] [i32 -1093343142, i32 -3]], [10 x [2 x i32]] [[2 x i32] [i32 3, i32 -3], [2 x i32] [i32 -1093343142, i32 -8], [2 x i32] [i32 -8, i32 -1093343142], [2 x i32] [i32 -3, i32 3], [2 x i32] [i32 -3, i32 -1093343142], [2 x i32] [i32 -8, i32 -8], [2 x i32] [i32 -1093343142, i32 -3], [2 x i32] [i32 3, i32 -3], [2 x i32] [i32 -1093343142, i32 -8], [2 x i32] [i32 -8, i32 -1093343142]], [10 x [2 x i32]] [[2 x i32] [i32 -3, i32 3], [2 x i32] [i32 -3, i32 -1093343142], [2 x i32] [i32 -8, i32 -8], [2 x i32] [i32 -1093343142, i32 -3], [2 x i32] [i32 3, i32 -3], [2 x i32] [i32 -1093343142, i32 -8], [2 x i32] [i32 -8, i32 -1093343142], [2 x i32] [i32 -3, i32 3], [2 x i32] [i32 -3, i32 -1093343142], [2 x i32] [i32 -8, i32 -8]]], align 16
@g_128 = internal global i64** @g_129, align 8
@g_1318 = internal global i8* getelementptr (i8, i8* getelementptr inbounds ([7 x [6 x i8]], [7 x [6 x i8]]* @g_642, i32 0, i32 0, i32 0), i64 12), align 8
@g_129 = internal global i64* @g_67, align 8
@.str.86 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i32, i32* @g_3, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i16, i16* @g_16, align 2, !tbaa !10
  %95 = zext i16 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i32, i32* @g_41, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i64, i64* @g_67, align 8, !tbaa !7
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %101)
  %102 = load i8, i8* @g_68, align 1, !tbaa !9
  %103 = zext i8 %102 to i64
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %104)
  %105 = load i32, i32* @g_69, align 4, !tbaa !1
  %106 = zext i32 %105 to i64
  %107 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %107)
  %108 = load i32, i32* @g_73, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %110)
  %111 = load i32, i32* @g_96, align 4, !tbaa !1
  %112 = zext i32 %111 to i64
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %113)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %114

; <label>:114                                     ; preds = %129, %89
  %115 = load i32, i32* %i, align 4, !tbaa !1
  %116 = icmp slt i32 %115, 8
  br i1 %116, label %117, label %132

; <label>:117                                     ; preds = %114
  %118 = load i32, i32* %i, align 4, !tbaa !1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [8 x i64], [8 x i64]* @g_100, i32 0, i64 %119
  %121 = load i64, i64* %120, align 8, !tbaa !7
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %122)
  %123 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

; <label>:125                                     ; preds = %117
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %126)
  br label %128

; <label>:128                                     ; preds = %125, %117
  br label %129

; <label>:129                                     ; preds = %128
  %130 = load i32, i32* %i, align 4, !tbaa !1
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %i, align 4, !tbaa !1
  br label %114

; <label>:132                                     ; preds = %114
  %133 = load i64, i64* @g_109, align 8, !tbaa !7
  %134 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %134)
  %135 = load i16, i16* @g_132, align 2, !tbaa !10
  %136 = sext i16 %135 to i64
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %137)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %138

; <label>:138                                     ; preds = %178, %132
  %139 = load i32, i32* %i, align 4, !tbaa !1
  %140 = icmp slt i32 %139, 5
  br i1 %140, label %141, label %181

; <label>:141                                     ; preds = %138
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %142

; <label>:142                                     ; preds = %174, %141
  %143 = load i32, i32* %j, align 4, !tbaa !1
  %144 = icmp slt i32 %143, 8
  br i1 %144, label %145, label %177

; <label>:145                                     ; preds = %142
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %146

; <label>:146                                     ; preds = %170, %145
  %147 = load i32, i32* %k, align 4, !tbaa !1
  %148 = icmp slt i32 %147, 6
  br i1 %148, label %149, label %173

; <label>:149                                     ; preds = %146
  %150 = load i32, i32* %k, align 4, !tbaa !1
  %151 = sext i32 %150 to i64
  %152 = load i32, i32* %j, align 4, !tbaa !1
  %153 = sext i32 %152 to i64
  %154 = load i32, i32* %i, align 4, !tbaa !1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [5 x [8 x [6 x i16]]], [5 x [8 x [6 x i16]]]* @g_185, i32 0, i64 %155
  %157 = getelementptr inbounds [8 x [6 x i16]], [8 x [6 x i16]]* %156, i32 0, i64 %153
  %158 = getelementptr inbounds [6 x i16], [6 x i16]* %157, i32 0, i64 %151
  %159 = load i16, i16* %158, align 2, !tbaa !10
  %160 = zext i16 %159 to i64
  %161 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %160, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %161)
  %162 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

; <label>:164                                     ; preds = %149
  %165 = load i32, i32* %i, align 4, !tbaa !1
  %166 = load i32, i32* %j, align 4, !tbaa !1
  %167 = load i32, i32* %k, align 4, !tbaa !1
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %165, i32 %166, i32 %167)
  br label %169

; <label>:169                                     ; preds = %164, %149
  br label %170

; <label>:170                                     ; preds = %169
  %171 = load i32, i32* %k, align 4, !tbaa !1
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %k, align 4, !tbaa !1
  br label %146

; <label>:173                                     ; preds = %146
  br label %174

; <label>:174                                     ; preds = %173
  %175 = load i32, i32* %j, align 4, !tbaa !1
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %j, align 4, !tbaa !1
  br label %142

; <label>:177                                     ; preds = %142
  br label %178

; <label>:178                                     ; preds = %177
  %179 = load i32, i32* %i, align 4, !tbaa !1
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %i, align 4, !tbaa !1
  br label %138

; <label>:181                                     ; preds = %138
  %182 = load i64, i64* @g_243, align 8, !tbaa !7
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %183)
  %184 = load i8, i8* @g_245, align 1, !tbaa !9
  %185 = sext i8 %184 to i64
  %186 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %186)
  %187 = load i64, i64* @g_247, align 8, !tbaa !7
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %188)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %189

; <label>:189                                     ; preds = %217, %181
  %190 = load i32, i32* %i, align 4, !tbaa !1
  %191 = icmp slt i32 %190, 8
  br i1 %191, label %192, label %220

; <label>:192                                     ; preds = %189
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %193

; <label>:193                                     ; preds = %213, %192
  %194 = load i32, i32* %j, align 4, !tbaa !1
  %195 = icmp slt i32 %194, 4
  br i1 %195, label %196, label %216

; <label>:196                                     ; preds = %193
  %197 = load i32, i32* %j, align 4, !tbaa !1
  %198 = sext i32 %197 to i64
  %199 = load i32, i32* %i, align 4, !tbaa !1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* @g_262, i32 0, i64 %200
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %201, i32 0, i64 %198
  %203 = load i32, i32* %202, align 4, !tbaa !1
  %204 = sext i32 %203 to i64
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 %205)
  %206 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

; <label>:208                                     ; preds = %196
  %209 = load i32, i32* %i, align 4, !tbaa !1
  %210 = load i32, i32* %j, align 4, !tbaa !1
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i32 %209, i32 %210)
  br label %212

; <label>:212                                     ; preds = %208, %196
  br label %213

; <label>:213                                     ; preds = %212
  %214 = load i32, i32* %j, align 4, !tbaa !1
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %j, align 4, !tbaa !1
  br label %193

; <label>:216                                     ; preds = %193
  br label %217

; <label>:217                                     ; preds = %216
  %218 = load i32, i32* %i, align 4, !tbaa !1
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %i, align 4, !tbaa !1
  br label %189

; <label>:220                                     ; preds = %189
  %221 = load i32, i32* @g_265, align 4, !tbaa !1
  %222 = sext i32 %221 to i64
  %223 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %222, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %223)
  %224 = load i16, i16* @g_323, align 2, !tbaa !10
  %225 = sext i16 %224 to i64
  %226 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %225, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %226)
  %227 = load i8, i8* @g_325, align 1, !tbaa !9
  %228 = sext i8 %227 to i64
  %229 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %229)
  %230 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %230)
  %231 = load i16, i16* @g_452, align 2, !tbaa !10
  %232 = zext i16 %231 to i64
  %233 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %233)
  %234 = load i16, i16* @g_453, align 2, !tbaa !10
  %235 = sext i16 %234 to i64
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %236)
  %237 = load i32, i32* @g_555, align 4, !tbaa !1
  %238 = zext i32 %237 to i64
  %239 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %239)
  %240 = load i8, i8* @g_586, align 1, !tbaa !9
  %241 = sext i8 %240 to i64
  %242 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %242)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %243

; <label>:243                                     ; preds = %271, %220
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %245 = icmp slt i32 %244, 7
  br i1 %245, label %246, label %274

; <label>:246                                     ; preds = %243
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %247

; <label>:247                                     ; preds = %267, %246
  %248 = load i32, i32* %j, align 4, !tbaa !1
  %249 = icmp slt i32 %248, 6
  br i1 %249, label %250, label %270

; <label>:250                                     ; preds = %247
  %251 = load i32, i32* %j, align 4, !tbaa !1
  %252 = sext i32 %251 to i64
  %253 = load i32, i32* %i, align 4, !tbaa !1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [7 x [6 x i8]], [7 x [6 x i8]]* @g_642, i32 0, i64 %254
  %256 = getelementptr inbounds [6 x i8], [6 x i8]* %255, i32 0, i64 %252
  %257 = load i8, i8* %256, align 1, !tbaa !9
  %258 = zext i8 %257 to i64
  %259 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %258, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 %259)
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

; <label>:262                                     ; preds = %250
  %263 = load i32, i32* %i, align 4, !tbaa !1
  %264 = load i32, i32* %j, align 4, !tbaa !1
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i32 %263, i32 %264)
  br label %266

; <label>:266                                     ; preds = %262, %250
  br label %267

; <label>:267                                     ; preds = %266
  %268 = load i32, i32* %j, align 4, !tbaa !1
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %j, align 4, !tbaa !1
  br label %247

; <label>:270                                     ; preds = %247
  br label %271

; <label>:271                                     ; preds = %270
  %272 = load i32, i32* %i, align 4, !tbaa !1
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %i, align 4, !tbaa !1
  br label %243

; <label>:274                                     ; preds = %243
  %275 = load i16, i16* @g_744, align 2, !tbaa !10
  %276 = zext i16 %275 to i64
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %277)
  %278 = load volatile i8, i8* @g_835, align 1, !tbaa !9
  %279 = zext i8 %278 to i64
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %280)
  %281 = load volatile i8, i8* @g_836, align 1, !tbaa !9
  %282 = zext i8 %281 to i64
  %283 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %283)
  %284 = load volatile i8, i8* @g_837, align 1, !tbaa !9
  %285 = zext i8 %284 to i64
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %286)
  %287 = load volatile i8, i8* @g_838, align 1, !tbaa !9
  %288 = zext i8 %287 to i64
  %289 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %289)
  %290 = load volatile i8, i8* @g_839, align 1, !tbaa !9
  %291 = zext i8 %290 to i64
  %292 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %291, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %292)
  %293 = load volatile i8, i8* @g_840, align 1, !tbaa !9
  %294 = zext i8 %293 to i64
  %295 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %294, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %295)
  %296 = load volatile i8, i8* @g_841, align 1, !tbaa !9
  %297 = zext i8 %296 to i64
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %298)
  %299 = load volatile i8, i8* @g_842, align 1, !tbaa !9
  %300 = zext i8 %299 to i64
  %301 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %300, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %301)
  %302 = load volatile i8, i8* @g_843, align 1, !tbaa !9
  %303 = zext i8 %302 to i64
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %304)
  %305 = load volatile i8, i8* @g_844, align 1, !tbaa !9
  %306 = zext i8 %305 to i64
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %307)
  %308 = load volatile i8, i8* @g_845, align 1, !tbaa !9
  %309 = zext i8 %308 to i64
  %310 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %309, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %310)
  %311 = load volatile i8, i8* @g_846, align 1, !tbaa !9
  %312 = zext i8 %311 to i64
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %313)
  %314 = load volatile i8, i8* @g_847, align 1, !tbaa !9
  %315 = zext i8 %314 to i64
  %316 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %315, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %316)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %317

; <label>:317                                     ; preds = %333, %274
  %318 = load i32, i32* %i, align 4, !tbaa !1
  %319 = icmp slt i32 %318, 1
  br i1 %319, label %320, label %336

; <label>:320                                     ; preds = %317
  %321 = load i32, i32* %i, align 4, !tbaa !1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [1 x i8], [1 x i8]* @g_848, i32 0, i64 %322
  %324 = load volatile i8, i8* %323, align 1, !tbaa !9
  %325 = zext i8 %324 to i64
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %326)
  %327 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %332

; <label>:329                                     ; preds = %320
  %330 = load i32, i32* %i, align 4, !tbaa !1
  %331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %330)
  br label %332

; <label>:332                                     ; preds = %329, %320
  br label %333

; <label>:333                                     ; preds = %332
  %334 = load i32, i32* %i, align 4, !tbaa !1
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %i, align 4, !tbaa !1
  br label %317

; <label>:336                                     ; preds = %317
  %337 = load volatile i8, i8* @g_849, align 1, !tbaa !9
  %338 = zext i8 %337 to i64
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %339)
  %340 = load volatile i8, i8* @g_850, align 1, !tbaa !9
  %341 = zext i8 %340 to i64
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %341, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %342)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %343

; <label>:343                                     ; preds = %371, %336
  %344 = load i32, i32* %i, align 4, !tbaa !1
  %345 = icmp slt i32 %344, 9
  br i1 %345, label %346, label %374

; <label>:346                                     ; preds = %343
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %347

; <label>:347                                     ; preds = %367, %346
  %348 = load i32, i32* %j, align 4, !tbaa !1
  %349 = icmp slt i32 %348, 1
  br i1 %349, label %350, label %370

; <label>:350                                     ; preds = %347
  %351 = load i32, i32* %j, align 4, !tbaa !1
  %352 = sext i32 %351 to i64
  %353 = load i32, i32* %i, align 4, !tbaa !1
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [9 x [1 x i8]], [9 x [1 x i8]]* @g_851, i32 0, i64 %354
  %356 = getelementptr inbounds [1 x i8], [1 x i8]* %355, i32 0, i64 %352
  %357 = load volatile i8, i8* %356, align 1, !tbaa !9
  %358 = zext i8 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i32 %359)
  %360 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

; <label>:362                                     ; preds = %350
  %363 = load i32, i32* %i, align 4, !tbaa !1
  %364 = load i32, i32* %j, align 4, !tbaa !1
  %365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i32 %363, i32 %364)
  br label %366

; <label>:366                                     ; preds = %362, %350
  br label %367

; <label>:367                                     ; preds = %366
  %368 = load i32, i32* %j, align 4, !tbaa !1
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %j, align 4, !tbaa !1
  br label %347

; <label>:370                                     ; preds = %347
  br label %371

; <label>:371                                     ; preds = %370
  %372 = load i32, i32* %i, align 4, !tbaa !1
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %i, align 4, !tbaa !1
  br label %343

; <label>:374                                     ; preds = %343
  %375 = load volatile i8, i8* @g_852, align 1, !tbaa !9
  %376 = zext i8 %375 to i64
  %377 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %376, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 %377)
  %378 = load volatile i8, i8* @g_853, align 1, !tbaa !9
  %379 = zext i8 %378 to i64
  %380 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %379, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %380)
  %381 = load volatile i8, i8* @g_854, align 1, !tbaa !9
  %382 = zext i8 %381 to i64
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %382, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 %383)
  %384 = load volatile i8, i8* @g_855, align 1, !tbaa !9
  %385 = zext i8 %384 to i64
  %386 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %385, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 %386)
  %387 = load volatile i8, i8* @g_856, align 1, !tbaa !9
  %388 = zext i8 %387 to i64
  %389 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %388, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 %389)
  %390 = load volatile i8, i8* @g_857, align 1, !tbaa !9
  %391 = zext i8 %390 to i64
  %392 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %391, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 %392)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %393

; <label>:393                                     ; preds = %409, %374
  %394 = load i32, i32* %i, align 4, !tbaa !1
  %395 = icmp slt i32 %394, 2
  br i1 %395, label %396, label %412

; <label>:396                                     ; preds = %393
  %397 = load i32, i32* %i, align 4, !tbaa !1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [2 x i8], [2 x i8]* @g_858, i32 0, i64 %398
  %400 = load volatile i8, i8* %399, align 1, !tbaa !9
  %401 = zext i8 %400 to i64
  %402 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %401, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 %402)
  %403 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %408

; <label>:405                                     ; preds = %396
  %406 = load i32, i32* %i, align 4, !tbaa !1
  %407 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %406)
  br label %408

; <label>:408                                     ; preds = %405, %396
  br label %409

; <label>:409                                     ; preds = %408
  %410 = load i32, i32* %i, align 4, !tbaa !1
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %i, align 4, !tbaa !1
  br label %393

; <label>:412                                     ; preds = %393
  %413 = load volatile i8, i8* @g_859, align 1, !tbaa !9
  %414 = zext i8 %413 to i64
  %415 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %414, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32 %415)
  %416 = load volatile i8, i8* @g_860, align 1, !tbaa !9
  %417 = zext i8 %416 to i64
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %417, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 %418)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %419

; <label>:419                                     ; preds = %459, %412
  %420 = load i32, i32* %i, align 4, !tbaa !1
  %421 = icmp slt i32 %420, 3
  br i1 %421, label %422, label %462

; <label>:422                                     ; preds = %419
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %423

; <label>:423                                     ; preds = %455, %422
  %424 = load i32, i32* %j, align 4, !tbaa !1
  %425 = icmp slt i32 %424, 4
  br i1 %425, label %426, label %458

; <label>:426                                     ; preds = %423
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %427

; <label>:427                                     ; preds = %451, %426
  %428 = load i32, i32* %k, align 4, !tbaa !1
  %429 = icmp slt i32 %428, 2
  br i1 %429, label %430, label %454

; <label>:430                                     ; preds = %427
  %431 = load i32, i32* %k, align 4, !tbaa !1
  %432 = sext i32 %431 to i64
  %433 = load i32, i32* %j, align 4, !tbaa !1
  %434 = sext i32 %433 to i64
  %435 = load i32, i32* %i, align 4, !tbaa !1
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [3 x [4 x [2 x i8]]], [3 x [4 x [2 x i8]]]* @g_861, i32 0, i64 %436
  %438 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %437, i32 0, i64 %434
  %439 = getelementptr inbounds [2 x i8], [2 x i8]* %438, i32 0, i64 %432
  %440 = load volatile i8, i8* %439, align 1, !tbaa !9
  %441 = zext i8 %440 to i64
  %442 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %441, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i32 %442)
  %443 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %450

; <label>:445                                     ; preds = %430
  %446 = load i32, i32* %i, align 4, !tbaa !1
  %447 = load i32, i32* %j, align 4, !tbaa !1
  %448 = load i32, i32* %k, align 4, !tbaa !1
  %449 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %446, i32 %447, i32 %448)
  br label %450

; <label>:450                                     ; preds = %445, %430
  br label %451

; <label>:451                                     ; preds = %450
  %452 = load i32, i32* %k, align 4, !tbaa !1
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %k, align 4, !tbaa !1
  br label %427

; <label>:454                                     ; preds = %427
  br label %455

; <label>:455                                     ; preds = %454
  %456 = load i32, i32* %j, align 4, !tbaa !1
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %j, align 4, !tbaa !1
  br label %423

; <label>:458                                     ; preds = %423
  br label %459

; <label>:459                                     ; preds = %458
  %460 = load i32, i32* %i, align 4, !tbaa !1
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %i, align 4, !tbaa !1
  br label %419

; <label>:462                                     ; preds = %419
  %463 = load volatile i8, i8* @g_862, align 1, !tbaa !9
  %464 = zext i8 %463 to i64
  %465 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %464, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 %465)
  %466 = load volatile i8, i8* @g_863, align 1, !tbaa !9
  %467 = zext i8 %466 to i64
  %468 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %467, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i32 %468)
  %469 = load volatile i8, i8* @g_864, align 1, !tbaa !9
  %470 = zext i8 %469 to i64
  %471 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %470, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 %471)
  %472 = load volatile i8, i8* @g_865, align 1, !tbaa !9
  %473 = zext i8 %472 to i64
  %474 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %473, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 %474)
  %475 = load volatile i8, i8* @g_866, align 1, !tbaa !9
  %476 = zext i8 %475 to i64
  %477 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %476, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i32 %477)
  %478 = load volatile i8, i8* @g_867, align 1, !tbaa !9
  %479 = zext i8 %478 to i64
  %480 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %479, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 %480)
  %481 = load volatile i8, i8* @g_868, align 1, !tbaa !9
  %482 = zext i8 %481 to i64
  %483 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %482, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 %483)
  %484 = load volatile i8, i8* @g_869, align 1, !tbaa !9
  %485 = zext i8 %484 to i64
  %486 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %485, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i32 %486)
  %487 = load volatile i8, i8* @g_870, align 1, !tbaa !9
  %488 = zext i8 %487 to i64
  %489 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %488, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i32 %489)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %490

; <label>:490                                     ; preds = %530, %462
  %491 = load i32, i32* %i, align 4, !tbaa !1
  %492 = icmp slt i32 %491, 8
  br i1 %492, label %493, label %533

; <label>:493                                     ; preds = %490
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %494

; <label>:494                                     ; preds = %526, %493
  %495 = load i32, i32* %j, align 4, !tbaa !1
  %496 = icmp slt i32 %495, 8
  br i1 %496, label %497, label %529

; <label>:497                                     ; preds = %494
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %498

; <label>:498                                     ; preds = %522, %497
  %499 = load i32, i32* %k, align 4, !tbaa !1
  %500 = icmp slt i32 %499, 4
  br i1 %500, label %501, label %525

; <label>:501                                     ; preds = %498
  %502 = load i32, i32* %k, align 4, !tbaa !1
  %503 = sext i32 %502 to i64
  %504 = load i32, i32* %j, align 4, !tbaa !1
  %505 = sext i32 %504 to i64
  %506 = load i32, i32* %i, align 4, !tbaa !1
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds [8 x [8 x [4 x i8]]], [8 x [8 x [4 x i8]]]* @g_871, i32 0, i64 %507
  %509 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %508, i32 0, i64 %505
  %510 = getelementptr inbounds [4 x i8], [4 x i8]* %509, i32 0, i64 %503
  %511 = load volatile i8, i8* %510, align 1, !tbaa !9
  %512 = zext i8 %511 to i64
  %513 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %512, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i32 %513)
  %514 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %521

; <label>:516                                     ; preds = %501
  %517 = load i32, i32* %i, align 4, !tbaa !1
  %518 = load i32, i32* %j, align 4, !tbaa !1
  %519 = load i32, i32* %k, align 4, !tbaa !1
  %520 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %517, i32 %518, i32 %519)
  br label %521

; <label>:521                                     ; preds = %516, %501
  br label %522

; <label>:522                                     ; preds = %521
  %523 = load i32, i32* %k, align 4, !tbaa !1
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %k, align 4, !tbaa !1
  br label %498

; <label>:525                                     ; preds = %498
  br label %526

; <label>:526                                     ; preds = %525
  %527 = load i32, i32* %j, align 4, !tbaa !1
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %j, align 4, !tbaa !1
  br label %494

; <label>:529                                     ; preds = %494
  br label %530

; <label>:530                                     ; preds = %529
  %531 = load i32, i32* %i, align 4, !tbaa !1
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %i, align 4, !tbaa !1
  br label %490

; <label>:533                                     ; preds = %490
  %534 = load volatile i8, i8* @g_872, align 1, !tbaa !9
  %535 = zext i8 %534 to i64
  %536 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %535, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 %536)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %537

; <label>:537                                     ; preds = %553, %533
  %538 = load i32, i32* %i, align 4, !tbaa !1
  %539 = icmp slt i32 %538, 1
  br i1 %539, label %540, label %556

; <label>:540                                     ; preds = %537
  %541 = load i32, i32* %i, align 4, !tbaa !1
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds [1 x i8], [1 x i8]* @g_873, i32 0, i64 %542
  %544 = load volatile i8, i8* %543, align 1, !tbaa !9
  %545 = zext i8 %544 to i64
  %546 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %545, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i32 %546)
  %547 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %552

; <label>:549                                     ; preds = %540
  %550 = load i32, i32* %i, align 4, !tbaa !1
  %551 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %550)
  br label %552

; <label>:552                                     ; preds = %549, %540
  br label %553

; <label>:553                                     ; preds = %552
  %554 = load i32, i32* %i, align 4, !tbaa !1
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %i, align 4, !tbaa !1
  br label %537

; <label>:556                                     ; preds = %537
  %557 = load volatile i8, i8* @g_874, align 1, !tbaa !9
  %558 = zext i8 %557 to i64
  %559 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %558, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i32 %559)
  %560 = load volatile i8, i8* @g_875, align 1, !tbaa !9
  %561 = zext i8 %560 to i64
  %562 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %561, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 %562)
  %563 = load volatile i8, i8* @g_876, align 1, !tbaa !9
  %564 = zext i8 %563 to i64
  %565 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %564, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 %565)
  %566 = load volatile i8, i8* @g_877, align 1, !tbaa !9
  %567 = zext i8 %566 to i64
  %568 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %567, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i32 %568)
  %569 = load volatile i8, i8* @g_878, align 1, !tbaa !9
  %570 = zext i8 %569 to i64
  %571 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %570, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i32 %571)
  %572 = load volatile i8, i8* @g_879, align 1, !tbaa !9
  %573 = zext i8 %572 to i64
  %574 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %573, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i32 %574)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %575

; <label>:575                                     ; preds = %603, %556
  %576 = load i32, i32* %i, align 4, !tbaa !1
  %577 = icmp slt i32 %576, 4
  br i1 %577, label %578, label %606

; <label>:578                                     ; preds = %575
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %579

; <label>:579                                     ; preds = %599, %578
  %580 = load i32, i32* %j, align 4, !tbaa !1
  %581 = icmp slt i32 %580, 3
  br i1 %581, label %582, label %602

; <label>:582                                     ; preds = %579
  %583 = load i32, i32* %j, align 4, !tbaa !1
  %584 = sext i32 %583 to i64
  %585 = load i32, i32* %i, align 4, !tbaa !1
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* @g_880, i32 0, i64 %586
  %588 = getelementptr inbounds [3 x i8], [3 x i8]* %587, i32 0, i64 %584
  %589 = load volatile i8, i8* %588, align 1, !tbaa !9
  %590 = zext i8 %589 to i64
  %591 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %590, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i32 0, i32 0), i32 %591)
  %592 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %598

; <label>:594                                     ; preds = %582
  %595 = load i32, i32* %i, align 4, !tbaa !1
  %596 = load i32, i32* %j, align 4, !tbaa !1
  %597 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i32 %595, i32 %596)
  br label %598

; <label>:598                                     ; preds = %594, %582
  br label %599

; <label>:599                                     ; preds = %598
  %600 = load i32, i32* %j, align 4, !tbaa !1
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %j, align 4, !tbaa !1
  br label %579

; <label>:602                                     ; preds = %579
  br label %603

; <label>:603                                     ; preds = %602
  %604 = load i32, i32* %i, align 4, !tbaa !1
  %605 = add nsw i32 %604, 1
  store i32 %605, i32* %i, align 4, !tbaa !1
  br label %575

; <label>:606                                     ; preds = %575
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %607

; <label>:607                                     ; preds = %647, %606
  %608 = load i32, i32* %i, align 4, !tbaa !1
  %609 = icmp slt i32 %608, 2
  br i1 %609, label %610, label %650

; <label>:610                                     ; preds = %607
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %611

; <label>:611                                     ; preds = %643, %610
  %612 = load i32, i32* %j, align 4, !tbaa !1
  %613 = icmp slt i32 %612, 1
  br i1 %613, label %614, label %646

; <label>:614                                     ; preds = %611
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %615

; <label>:615                                     ; preds = %639, %614
  %616 = load i32, i32* %k, align 4, !tbaa !1
  %617 = icmp slt i32 %616, 9
  br i1 %617, label %618, label %642

; <label>:618                                     ; preds = %615
  %619 = load i32, i32* %k, align 4, !tbaa !1
  %620 = sext i32 %619 to i64
  %621 = load i32, i32* %j, align 4, !tbaa !1
  %622 = sext i32 %621 to i64
  %623 = load i32, i32* %i, align 4, !tbaa !1
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds [2 x [1 x [9 x i32]]], [2 x [1 x [9 x i32]]]* @g_1075, i32 0, i64 %624
  %626 = getelementptr inbounds [1 x [9 x i32]], [1 x [9 x i32]]* %625, i32 0, i64 %622
  %627 = getelementptr inbounds [9 x i32], [9 x i32]* %626, i32 0, i64 %620
  %628 = load i32, i32* %627, align 4, !tbaa !1
  %629 = zext i32 %628 to i64
  %630 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %629, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0), i32 %630)
  %631 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %638

; <label>:633                                     ; preds = %618
  %634 = load i32, i32* %i, align 4, !tbaa !1
  %635 = load i32, i32* %j, align 4, !tbaa !1
  %636 = load i32, i32* %k, align 4, !tbaa !1
  %637 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %634, i32 %635, i32 %636)
  br label %638

; <label>:638                                     ; preds = %633, %618
  br label %639

; <label>:639                                     ; preds = %638
  %640 = load i32, i32* %k, align 4, !tbaa !1
  %641 = add nsw i32 %640, 1
  store i32 %641, i32* %k, align 4, !tbaa !1
  br label %615

; <label>:642                                     ; preds = %615
  br label %643

; <label>:643                                     ; preds = %642
  %644 = load i32, i32* %j, align 4, !tbaa !1
  %645 = add nsw i32 %644, 1
  store i32 %645, i32* %j, align 4, !tbaa !1
  br label %611

; <label>:646                                     ; preds = %611
  br label %647

; <label>:647                                     ; preds = %646
  %648 = load i32, i32* %i, align 4, !tbaa !1
  %649 = add nsw i32 %648, 1
  store i32 %649, i32* %i, align 4, !tbaa !1
  br label %607

; <label>:650                                     ; preds = %607
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %651

; <label>:651                                     ; preds = %691, %650
  %652 = load i32, i32* %i, align 4, !tbaa !1
  %653 = icmp slt i32 %652, 3
  br i1 %653, label %654, label %694

; <label>:654                                     ; preds = %651
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %655

; <label>:655                                     ; preds = %687, %654
  %656 = load i32, i32* %j, align 4, !tbaa !1
  %657 = icmp slt i32 %656, 3
  br i1 %657, label %658, label %690

; <label>:658                                     ; preds = %655
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %659

; <label>:659                                     ; preds = %683, %658
  %660 = load i32, i32* %k, align 4, !tbaa !1
  %661 = icmp slt i32 %660, 7
  br i1 %661, label %662, label %686

; <label>:662                                     ; preds = %659
  %663 = load i32, i32* %k, align 4, !tbaa !1
  %664 = sext i32 %663 to i64
  %665 = load i32, i32* %j, align 4, !tbaa !1
  %666 = sext i32 %665 to i64
  %667 = load i32, i32* %i, align 4, !tbaa !1
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [3 x [3 x [7 x i32]]], [3 x [3 x [7 x i32]]]* @g_1147, i32 0, i64 %668
  %670 = getelementptr inbounds [3 x [7 x i32]], [3 x [7 x i32]]* %669, i32 0, i64 %666
  %671 = getelementptr inbounds [7 x i32], [7 x i32]* %670, i32 0, i64 %664
  %672 = load i32, i32* %671, align 4, !tbaa !1
  %673 = zext i32 %672 to i64
  %674 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %673, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0), i32 %674)
  %675 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %677, label %682

; <label>:677                                     ; preds = %662
  %678 = load i32, i32* %i, align 4, !tbaa !1
  %679 = load i32, i32* %j, align 4, !tbaa !1
  %680 = load i32, i32* %k, align 4, !tbaa !1
  %681 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %678, i32 %679, i32 %680)
  br label %682

; <label>:682                                     ; preds = %677, %662
  br label %683

; <label>:683                                     ; preds = %682
  %684 = load i32, i32* %k, align 4, !tbaa !1
  %685 = add nsw i32 %684, 1
  store i32 %685, i32* %k, align 4, !tbaa !1
  br label %659

; <label>:686                                     ; preds = %659
  br label %687

; <label>:687                                     ; preds = %686
  %688 = load i32, i32* %j, align 4, !tbaa !1
  %689 = add nsw i32 %688, 1
  store i32 %689, i32* %j, align 4, !tbaa !1
  br label %655

; <label>:690                                     ; preds = %655
  br label %691

; <label>:691                                     ; preds = %690
  %692 = load i32, i32* %i, align 4, !tbaa !1
  %693 = add nsw i32 %692, 1
  store i32 %693, i32* %i, align 4, !tbaa !1
  br label %651

; <label>:694                                     ; preds = %651
  %695 = load volatile i16, i16* @g_1204, align 2, !tbaa !10
  %696 = zext i16 %695 to i64
  %697 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %696, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 %697)
  %698 = load volatile i16, i16* @g_1284, align 2, !tbaa !10
  %699 = sext i16 %698 to i64
  %700 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %699, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i32 %700)
  %701 = load i8, i8* @g_1301, align 1, !tbaa !9
  %702 = sext i8 %701 to i64
  %703 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %702, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i32 %703)
  %704 = load volatile i8, i8* @g_1435, align 1, !tbaa !9
  %705 = zext i8 %704 to i64
  %706 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %705, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 %706)
  %707 = load volatile i16, i16* @g_1487, align 2, !tbaa !10
  %708 = zext i16 %707 to i64
  %709 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %708, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i32 %709)
  %710 = load i32, i32* @g_1513, align 4, !tbaa !1
  %711 = zext i32 %710 to i64
  %712 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %711, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 %712)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %713

; <label>:713                                     ; preds = %728, %694
  %714 = load i32, i32* %i, align 4, !tbaa !1
  %715 = icmp slt i32 %714, 7
  br i1 %715, label %716, label %731

; <label>:716                                     ; preds = %713
  %717 = load i32, i32* %i, align 4, !tbaa !1
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds [7 x i64], [7 x i64]* @g_1644, i32 0, i64 %718
  %720 = load i64, i64* %719, align 8, !tbaa !7
  %721 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %720, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i32 %721)
  %722 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %724, label %727

; <label>:724                                     ; preds = %716
  %725 = load i32, i32* %i, align 4, !tbaa !1
  %726 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %725)
  br label %727

; <label>:727                                     ; preds = %724, %716
  br label %728

; <label>:728                                     ; preds = %727
  %729 = load i32, i32* %i, align 4, !tbaa !1
  %730 = add nsw i32 %729, 1
  store i32 %730, i32* %i, align 4, !tbaa !1
  br label %713

; <label>:731                                     ; preds = %713
  %732 = load i64, i64* @g_1646, align 8, !tbaa !7
  %733 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %732, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 %733)
  %734 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %735 = zext i32 %734 to i64
  %736 = xor i64 %735, 4294967295
  %737 = trunc i64 %736 to i32
  %738 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %737, i32 %738)
  %739 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %739) #1
  %740 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %740) #1
  %741 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %741) #1
  %742 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %742) #1
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
  %l_2 = alloca [3 x i8], align 1
  %l_915 = alloca i32*, align 8
  %l_1507 = alloca [10 x i8], align 1
  %l_1637 = alloca [6 x i16*], align 16
  %l_1653 = alloca i8*, align 8
  %l_1652 = alloca i8**, align 8
  %l_1651 = alloca [10 x i8***], align 16
  %l_1669 = alloca [7 x i32], align 16
  %l_1671 = alloca i16, align 2
  %l_1686 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_15 = alloca i32, align 4
  %l_1542 = alloca i64, align 8
  %l_1550 = alloca i64, align 8
  %l_1595 = alloca i32, align 4
  %l_1597 = alloca [5 x i32], align 16
  %l_1641 = alloca i64*, align 8
  %l_1645 = alloca [5 x i32], align 16
  %l_1668 = alloca i64, align 8
  %i1 = alloca i32, align 4
  %l_1678 = alloca [5 x i64], align 16
  %l_1681 = alloca i32, align 4
  %l_1687 = alloca [4 x [10 x [2 x i32]]], align 16
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k4 = alloca i32, align 4
  %1 = bitcast [3 x i8]* %l_2 to i8*
  call void @llvm.lifetime.start(i64 3, i8* %1) #1
  %2 = bitcast i32** %l_915 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_3, i32** %l_915, align 8, !tbaa !5
  %3 = bitcast [10 x i8]* %l_1507 to i8*
  call void @llvm.lifetime.start(i64 10, i8* %3) #1
  %4 = bitcast [10 x i8]* %l_1507 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @func_1.l_1507, i32 0, i32 0), i64 10, i32 1, i1 false)
  %5 = bitcast [6 x i16*]* %l_1637 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %5) #1
  %6 = bitcast i8** %l_1653 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* @g_245, i8** %l_1653, align 8, !tbaa !5
  %7 = bitcast i8*** %l_1652 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i8** %l_1653, i8*** %l_1652, align 8, !tbaa !5
  %8 = bitcast [10 x i8***]* %l_1651 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %8) #1
  %9 = getelementptr inbounds [10 x i8***], [10 x i8***]* %l_1651, i64 0, i64 0
  store i8*** null, i8**** %9, !tbaa !5
  %10 = getelementptr inbounds i8***, i8**** %9, i64 1
  store i8*** %l_1652, i8**** %10, !tbaa !5
  %11 = getelementptr inbounds i8***, i8**** %10, i64 1
  store i8*** %l_1652, i8**** %11, !tbaa !5
  %12 = getelementptr inbounds i8***, i8**** %11, i64 1
  store i8*** %l_1652, i8**** %12, !tbaa !5
  %13 = getelementptr inbounds i8***, i8**** %12, i64 1
  store i8*** null, i8**** %13, !tbaa !5
  %14 = getelementptr inbounds i8***, i8**** %13, i64 1
  store i8*** null, i8**** %14, !tbaa !5
  %15 = getelementptr inbounds i8***, i8**** %14, i64 1
  store i8*** %l_1652, i8**** %15, !tbaa !5
  %16 = getelementptr inbounds i8***, i8**** %15, i64 1
  store i8*** %l_1652, i8**** %16, !tbaa !5
  %17 = getelementptr inbounds i8***, i8**** %16, i64 1
  store i8*** %l_1652, i8**** %17, !tbaa !5
  %18 = getelementptr inbounds i8***, i8**** %17, i64 1
  store i8*** null, i8**** %18, !tbaa !5
  %19 = bitcast [7 x i32]* %l_1669 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %19) #1
  %20 = bitcast [7 x i32]* %l_1669 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* bitcast ([7 x i32]* @func_1.l_1669 to i8*), i64 28, i32 16, i1 false)
  %21 = bitcast i16* %l_1671 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %21) #1
  store i16 -29810, i16* %l_1671, align 2, !tbaa !10
  %22 = bitcast i32* %l_1686 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 1357769676, i32* %l_1686, align 4, !tbaa !1
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %26

; <label>:26                                      ; preds = %33, %0
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %26
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x i8], [3 x i8]* %l_2, i32 0, i64 %31
  store i8 0, i8* %32, align 1, !tbaa !9
  br label %33

; <label>:33                                      ; preds = %29
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4, !tbaa !1
  br label %26

; <label>:36                                      ; preds = %26
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %37

; <label>:37                                      ; preds = %44, %36
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %39 = icmp slt i32 %38, 6
  br i1 %39, label %40, label %47

; <label>:40                                      ; preds = %37
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [6 x i16*], [6 x i16*]* %l_1637, i32 0, i64 %42
  store i16* @g_744, i16** %43, align 8, !tbaa !5
  br label %44

; <label>:44                                      ; preds = %40
  %45 = load i32, i32* %i, align 4, !tbaa !1
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %i, align 4, !tbaa !1
  br label %37

; <label>:47                                      ; preds = %37
  store i32 2, i32* @g_3, align 4, !tbaa !1
  br label %48

; <label>:48                                      ; preds = %72, %47
  %49 = load i32, i32* @g_3, align 4, !tbaa !1
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %75

; <label>:51                                      ; preds = %48
  %52 = bitcast i32* %l_15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  store i32 1275305679, i32* %l_15, align 4, !tbaa !1
  %53 = bitcast i64* %l_1542 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  store i64 5, i64* %l_1542, align 8, !tbaa !7
  %54 = bitcast i64* %l_1550 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  store i64 1, i64* %l_1550, align 8, !tbaa !7
  %55 = bitcast i32* %l_1595 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  store i32 1, i32* %l_1595, align 4, !tbaa !1
  %56 = bitcast [5 x i32]* %l_1597 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %56) #1
  %57 = bitcast [5 x i32]* %l_1597 to i8*
  call void @llvm.memset.p0i8.i64(i8* %57, i8 0, i64 20, i32 16, i1 false)
  %58 = bitcast i64** %l_1641 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  store i64* @g_67, i64** %l_1641, align 8, !tbaa !5
  %59 = bitcast [5 x i32]* %l_1645 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %59) #1
  %60 = bitcast [5 x i32]* %l_1645 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* bitcast ([5 x i32]* @func_1.l_1645 to i8*), i64 20, i32 16, i1 false)
  %61 = bitcast i64* %l_1668 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  store i64 1331529114351451441, i64* %l_1668, align 8, !tbaa !7
  %62 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i64* %l_1668 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast [5 x i32]* %l_1645 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %65) #1
  %66 = bitcast i64** %l_1641 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast [5 x i32]* %l_1597 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %67) #1
  %68 = bitcast i32* %l_1595 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i64* %l_1550 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i64* %l_1542 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i32* %l_15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  br label %72

; <label>:72                                      ; preds = %51
  %73 = load i32, i32* @g_3, align 4, !tbaa !1
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* @g_3, align 4, !tbaa !1
  br label %48

; <label>:75                                      ; preds = %48
  store i64 9, i64* @g_243, align 8, !tbaa !7
  br label %76

; <label>:76                                      ; preds = %157, %75
  %77 = load i64, i64* @g_243, align 8, !tbaa !7
  %78 = icmp ugt i64 %77, 8
  br i1 %78, label %79, label %160

; <label>:79                                      ; preds = %76
  %80 = bitcast [5 x i64]* %l_1678 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %80) #1
  %81 = bitcast [5 x i64]* %l_1678 to i8*
  call void @llvm.memset.p0i8.i64(i8* %81, i8 0, i64 40, i32 16, i1 false)
  %82 = bitcast i8* %81 to [5 x i64]*
  %83 = getelementptr [5 x i64], [5 x i64]* %82, i32 0, i32 0
  store i64 7338069710034230907, i64* %83
  %84 = getelementptr [5 x i64], [5 x i64]* %82, i32 0, i32 1
  store i64 7338069710034230907, i64* %84
  %85 = getelementptr [5 x i64], [5 x i64]* %82, i32 0, i32 2
  store i64 7338069710034230907, i64* %85
  %86 = getelementptr [5 x i64], [5 x i64]* %82, i32 0, i32 3
  store i64 7338069710034230907, i64* %86
  %87 = getelementptr [5 x i64], [5 x i64]* %82, i32 0, i32 4
  store i64 7338069710034230907, i64* %87
  %88 = bitcast i32* %l_1681 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  store i32 1573320669, i32* %l_1681, align 4, !tbaa !1
  %89 = bitcast [4 x [10 x [2 x i32]]]* %l_1687 to i8*
  call void @llvm.lifetime.start(i64 320, i8* %89) #1
  %90 = bitcast [4 x [10 x [2 x i32]]]* %l_1687 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* bitcast ([4 x [10 x [2 x i32]]]* @func_1.l_1687 to i8*), i64 320, i32 16, i1 false)
  %91 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  %92 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #1
  %93 = bitcast i32* %k4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #1
  %94 = load i64**, i64*** @g_128, align 8, !tbaa !5
  %95 = load i64*, i64** %94, align 8, !tbaa !5
  %96 = load i64, i64* %95, align 8, !tbaa !7
  %97 = getelementptr inbounds [5 x i64], [5 x i64]* %l_1678, i32 0, i64 2
  %98 = load i64, i64* %97, align 8, !tbaa !7
  %99 = load volatile i8, i8* @g_869, align 1, !tbaa !9
  %100 = zext i8 %99 to i32
  store i32 %100, i32* %l_1681, align 4, !tbaa !1
  %101 = trunc i32 %100 to i16
  %102 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %101, i32 5)
  %103 = sext i16 %102 to i32
  %104 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext 20064, i32 7)
  %105 = sext i16 %104 to i32
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %110, label %107

; <label>:107                                     ; preds = %79
  %108 = load i32, i32* getelementptr inbounds ([3 x [3 x [7 x i32]]], [3 x [3 x [7 x i32]]]* @g_1147, i32 0, i64 2, i64 1, i64 5), align 4, !tbaa !1
  %109 = icmp ne i32 %108, 0
  br label %110

; <label>:110                                     ; preds = %107, %79
  %111 = phi i1 [ true, %79 ], [ %109, %107 ]
  %112 = zext i1 %111 to i32
  %113 = load i32*, i32** %l_915, align 8, !tbaa !5
  %114 = load i32, i32* %113, align 4, !tbaa !1
  %115 = icmp sge i32 %112, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %l_1686, align 4, !tbaa !1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

; <label>:119                                     ; preds = %110
  %120 = icmp eq i32* null, %l_1686
  br label %121

; <label>:121                                     ; preds = %119, %110
  %122 = phi i1 [ true, %110 ], [ %120, %119 ]
  %123 = zext i1 %122 to i32
  %124 = getelementptr inbounds [4 x [10 x [2 x i32]]], [4 x [10 x [2 x i32]]]* %l_1687, i32 0, i64 3
  %125 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %124, i32 0, i64 7
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %125, i32 0, i64 1
  store i32 %123, i32* %126, align 4, !tbaa !1
  %127 = trunc i32 %123 to i8
  %128 = load i8*, i8** @g_1318, align 8, !tbaa !5
  store i8 %127, i8* %128, align 1, !tbaa !9
  %129 = getelementptr inbounds [5 x i64], [5 x i64]* %l_1678, i32 0, i64 2
  %130 = load i64, i64* %129, align 8, !tbaa !7
  %131 = trunc i64 %130 to i8
  %132 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %127, i8 zeroext %131)
  %133 = zext i8 %132 to i32
  %134 = xor i32 %116, %133
  %135 = sext i32 %134 to i64
  %136 = or i64 %98, %135
  %137 = getelementptr inbounds [4 x [10 x [2 x i32]]], [4 x [10 x [2 x i32]]]* %l_1687, i32 0, i64 3
  %138 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %137, i32 0, i64 1
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %138, i32 0, i64 1
  %140 = load i32, i32* %139, align 4, !tbaa !1
  %141 = sext i32 %140 to i64
  %142 = call i64 @safe_div_func_uint64_t_u_u(i64 %96, i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %147, label %144

; <label>:144                                     ; preds = %121
  %145 = load i32, i32* %l_1681, align 4, !tbaa !1
  %146 = icmp ne i32 %145, 0
  br label %147

; <label>:147                                     ; preds = %144, %121
  %148 = phi i1 [ true, %121 ], [ %146, %144 ]
  %149 = zext i1 %148 to i32
  %150 = load i32*, i32** %l_915, align 8, !tbaa !5
  store i32 %149, i32* %150, align 4, !tbaa !1
  %151 = bitcast i32* %k4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast [4 x [10 x [2 x i32]]]* %l_1687 to i8*
  call void @llvm.lifetime.end(i64 320, i8* %154) #1
  %155 = bitcast i32* %l_1681 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast [5 x i64]* %l_1678 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %156) #1
  br label %157

; <label>:157                                     ; preds = %147
  %158 = load i64, i64* @g_243, align 8, !tbaa !7
  %159 = call i64 @safe_sub_func_uint64_t_u_u(i64 %158, i64 2)
  store i64 %159, i64* @g_243, align 8, !tbaa !7
  br label %76

; <label>:160                                     ; preds = %76
  %161 = load i64*, i64** @g_129, align 8, !tbaa !5
  %162 = load i64, i64* %161, align 8, !tbaa !7
  %163 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %l_1686 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i16* %l_1671 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %167) #1
  %168 = bitcast [7 x i32]* %l_1669 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %168) #1
  %169 = bitcast [10 x i8***]* %l_1651 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %169) #1
  %170 = bitcast i8*** %l_1652 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast i8** %l_1653 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast [6 x i16*]* %l_1637 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %172) #1
  %173 = bitcast [10 x i8]* %l_1507 to i8*
  call void @llvm.lifetime.end(i64 10, i8* %173) #1
  %174 = bitcast i32** %l_915 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = bitcast [3 x i8]* %l_2 to i8*
  call void @llvm.lifetime.end(i64 3, i8* %175) #1
  ret i64 %162
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.86, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
