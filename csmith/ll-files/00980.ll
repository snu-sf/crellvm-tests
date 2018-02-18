; ModuleID = '00980.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 -1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_4 = internal global [5 x [10 x [5 x i32]]] [[10 x [5 x i32]] [[5 x i32] [i32 214114720, i32 -1, i32 -1, i32 -1, i32 3], [5 x i32] [i32 -1, i32 2, i32 -1, i32 -10, i32 -1], [5 x i32] [i32 -1, i32 -1510781990, i32 -1, i32 7, i32 -649162777], [5 x i32] [i32 -7, i32 -7, i32 -1, i32 -1, i32 975437406], [5 x i32] [i32 8, i32 4, i32 -1709702062, i32 -87209351, i32 2], [5 x i32] [i32 1447852927, i32 -1, i32 -156021722, i32 -1978239415, i32 -7], [5 x i32] [i32 -2007062803, i32 -196843196, i32 975437406, i32 1, i32 -2091806900], [5 x i32] [i32 -1, i32 869445597, i32 972863210, i32 4, i32 -2007062803], [5 x i32] [i32 -1, i32 15459939, i32 -2, i32 -2, i32 15459939], [5 x i32] [i32 -156021722, i32 -1, i32 -1426330640, i32 -7, i32 3]], [10 x [5 x i32]] [[5 x i32] [i32 8, i32 1188941078, i32 -1978239415, i32 5, i32 -1], [5 x i32] [i32 -1, i32 -1542113593, i32 0, i32 972863210, i32 -317313955], [5 x i32] [i32 8, i32 -1492508957, i32 0, i32 0, i32 1], [5 x i32] [i32 0, i32 1, i32 -1, i32 -1, i32 -1], [5 x i32] [i32 6, i32 -1780866430, i32 -833942824, i32 -1510781990, i32 0], [5 x i32] [i32 -7, i32 1511415644, i32 5, i32 -654340909, i32 2], [5 x i32] [i32 -10, i32 -833942824, i32 -1489162905, i32 -196843196, i32 -7], [5 x i32] [i32 1, i32 1816071109, i32 -6, i32 228638141, i32 -7], [5 x i32] [i32 0, i32 6, i32 0, i32 -1492508957, i32 0], [5 x i32] [i32 -1978239415, i32 1447852927, i32 -10, i32 1511415644, i32 -34947120]], [10 x [5 x i32]] [[5 x i32] [i32 -1, i32 -1, i32 -7, i32 1511415644, i32 0], [5 x i32] [i32 6, i32 0, i32 15459939, i32 -1492508957, i32 0], [5 x i32] [i32 -1542113593, i32 -4, i32 -1426330640, i32 228638141, i32 -1786477816], [5 x i32] [i32 1, i32 -1, i32 228638141, i32 -196843196, i32 -1], [5 x i32] [i32 2, i32 0, i32 0, i32 -654340909, i32 -196843196], [5 x i32] [i32 -10, i32 -1492508957, i32 3, i32 -1510781990, i32 -317313955], [5 x i32] [i32 0, i32 1447852927, i32 -124938635, i32 -1, i32 -124938635], [5 x i32] [i32 -34947120, i32 -34947120, i32 -196843196, i32 0, i32 -1291544366], [5 x i32] [i32 -7, i32 -1, i32 -833942824, i32 972863210, i32 0], [5 x i32] [i32 869445597, i32 -317313955, i32 -1489162905, i32 5, i32 -2]], [10 x [5 x i32]] [[5 x i32] [i32 -9, i32 -1, i32 -1, i32 -7, i32 -7], [5 x i32] [i32 1, i32 -34947120, i32 0, i32 -649162777, i32 -156021722], [5 x i32] [i32 -2, i32 1447852927, i32 -7, i32 -182785632, i32 -1], [5 x i32] [i32 -1434191080, i32 -1492508957, i32 -34947120, i32 1511415644, i32 -10], [5 x i32] [i32 -34947120, i32 0, i32 -156021722, i32 0, i32 -10], [5 x i32] [i32 -1542113593, i32 -1, i32 -1780866430, i32 869445597, i32 0], [5 x i32] [i32 1447852927, i32 -4, i32 228638141, i32 5, i32 0], [5 x i32] [i32 -2091806900, i32 0, i32 7, i32 0, i32 -196843196], [5 x i32] [i32 8, i32 -1, i32 -6, i32 1823379187, i32 -196843196], [5 x i32] [i32 2, i32 1447852927, i32 -1, i32 6, i32 0]], [10 x [5 x i32]] [[5 x i32] [i32 -1780866430, i32 6, i32 1, i32 0, i32 0], [5 x i32] [i32 -1, i32 1816071109, i32 -196843196, i32 -1, i32 -10], [5 x i32] [i32 869445597, i32 -833942824, i32 -1298295718, i32 -1, i32 -10], [5 x i32] [i32 -1510781990, i32 1511415644, i32 -1, i32 228638141, i32 -1], [5 x i32] [i32 -9, i32 -1780866430, i32 7, i32 -156021722, i32 -156021722], [5 x i32] [i32 -1978239415, i32 1, i32 -1978239415, i32 -10, i32 -7], [5 x i32] [i32 1, i32 -1492508957, i32 -7, i32 -182785632, i32 -2], [5 x i32] [i32 -1780866430, i32 -1542113593, i32 -10, i32 7, i32 -1], [5 x i32] [i32 -1, i32 -1291544366, i32 1, i32 -649162777, i32 -1], [5 x i32] [i32 1, i32 -1786477816, i32 0, i32 8, i32 -87209351]]], align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"g_4[i][j][k]\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_53 = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_53\00", align 1
@g_82 = internal global i32 6, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_82\00", align 1
@g_94 = internal global i16 -9, align 2
@.str.6 = private unnamed_addr constant [5 x i8] c"g_94\00", align 1
@g_97 = internal global i32 -6, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_97\00", align 1
@g_123 = internal global i8 -1, align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"g_123\00", align 1
@g_144 = internal global i32 -4, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"g_144\00", align 1
@g_146 = internal global i32 6, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"g_146\00", align 1
@g_148 = internal global i32 841893940, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_148\00", align 1
@g_166 = internal global i8 3, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_166\00", align 1
@g_190 = internal global i32 -1035075885, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_190\00", align 1
@g_216 = internal global [1 x [4 x i8]] [[4 x i8] c"\0A\0A\0A\0A"], align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"g_216[i][j]\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_221 = internal global i16 -14783, align 2
@.str.16 = private unnamed_addr constant [6 x i8] c"g_221\00", align 1
@g_289 = internal global [2 x i8] c"\FF\FF", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"g_289[i]\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_425 = internal global i16 16665, align 2
@.str.19 = private unnamed_addr constant [6 x i8] c"g_425\00", align 1
@g_436 = internal global i64 4, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"g_436\00", align 1
@g_562 = internal global i32 -7, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"g_562\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_608\00", align 1
@g_612 = internal global [9 x i64] [i64 4799477618953347012, i64 4799477618953347012, i64 4799477618953347012, i64 4799477618953347012, i64 4799477618953347012, i64 4799477618953347012, i64 4799477618953347012, i64 4799477618953347012, i64 4799477618953347012], align 16
@.str.23 = private unnamed_addr constant [9 x i8] c"g_612[i]\00", align 1
@g_666 = internal global i16 29098, align 2
@.str.24 = private unnamed_addr constant [6 x i8] c"g_666\00", align 1
@g_698 = internal global i8 -6, align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"g_698\00", align 1
@g_703 = internal global i64 1, align 8
@.str.26 = private unnamed_addr constant [6 x i8] c"g_703\00", align 1
@g_739 = internal constant [4 x i16] [i16 28386, i16 28386, i16 28386, i16 28386], align 2
@.str.27 = private unnamed_addr constant [9 x i8] c"g_739[i]\00", align 1
@g_792 = internal global i64 3958379051499156722, align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"g_792\00", align 1
@g_889 = internal global i32 -2096917410, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_889\00", align 1
@g_896 = internal global i32 -1, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_896\00", align 1
@g_1038 = internal global i8 4, align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1038\00", align 1
@g_1041 = internal global [9 x [9 x [3 x i16]]] [[9 x [3 x i16]] [[3 x i16] [i16 30080, i16 -1, i16 0], [3 x i16] [i16 22692, i16 4862, i16 32338], [3 x i16] [i16 13473, i16 1, i16 19519], [3 x i16] [i16 -1985, i16 -5, i16 -14642], [3 x i16] [i16 -26859, i16 1, i16 13473], [3 x i16] [i16 10124, i16 1, i16 -1], [3 x i16] [i16 -1, i16 -26859, i16 0], [3 x i16] [i16 15975, i16 -14642, i16 -32767], [3 x i16] [i16 -18315, i16 7, i16 25049]], [9 x [3 x i16]] [[3 x i16] [i16 24930, i16 -1, i16 20067], [3 x i16] [i16 -8400, i16 30054, i16 9], [3 x i16] [i16 21817, i16 4862, i16 -1], [3 x i16] [i16 10124, i16 -1985, i16 1], [3 x i16] [i16 15342, i16 -14862, i16 13695], [3 x i16] [i16 -1, i16 32421, i16 13695], [3 x i16] [i16 -5, i16 1, i16 1], [3 x i16] [i16 1, i16 -6883, i16 -1], [3 x i16] [i16 26420, i16 -1, i16 9]], [9 x [3 x i16]] [[3 x i16] [i16 24059, i16 1, i16 20067], [3 x i16] [i16 1, i16 13473, i16 25049], [3 x i16] [i16 -5, i16 -5, i16 -32767], [3 x i16] [i16 -6883, i16 8, i16 0], [3 x i16] [i16 1, i16 -1, i16 -1], [3 x i16] [i16 20067, i16 -6883, i16 13473], [3 x i16] [i16 -8400, i16 1070, i16 -14642], [3 x i16] [i16 -18315, i16 26420, i16 19519], [3 x i16] [i16 20273, i16 19519, i16 32338]], [9 x [3 x i16]] [[3 x i16] [i16 0, i16 30054, i16 -10], [3 x i16] [i16 31391, i16 10124, i16 1785], [3 x i16] [i16 1, i16 -5, i16 1], [3 x i16] [i16 1, i16 -1, i16 1], [3 x i16] [i16 -1985, i16 -19631, i16 -6883], [3 x i16] [i16 -5, i16 3134, i16 1], [3 x i16] [i16 -6, i16 1, i16 -11407], [3 x i16] [i16 7, i16 -1, i16 -10], [3 x i16] [i16 -6, i16 8, i16 30080]], [9 x [3 x i16]] [[3 x i16] [i16 -5, i16 0, i16 25049], [3 x i16] [i16 -1985, i16 1, i16 3134], [3 x i16] [i16 1, i16 -1, i16 1], [3 x i16] [i16 1, i16 1, i16 -8826], [3 x i16] [i16 31391, i16 1, i16 -1], [3 x i16] [i16 0, i16 1070, i16 -32767], [3 x i16] [i16 20273, i16 32421, i16 -1], [3 x i16] [i16 -18315, i16 7848, i16 32338], [3 x i16] [i16 -8400, i16 -1, i16 -25616]], [9 x [3 x i16]] [[3 x i16] [i16 20067, i16 1, i16 6610], [3 x i16] [i16 1, i16 -1985, i16 1], [3 x i16] [i16 -6883, i16 19519, i16 31142], [3 x i16] [i16 -5, i16 -19631, i16 13695], [3 x i16] [i16 1, i16 -14642, i16 20736], [3 x i16] [i16 24059, i16 15342, i16 -11407], [3 x i16] [i16 26420, i16 1, i16 -25616], [3 x i16] [i16 1, i16 -1, i16 31391], [3 x i16] [i16 -5, i16 13473, i16 19519]], [9 x [3 x i16]] [[3 x i16] [i16 -1, i16 13473, i16 -1], [3 x i16] [i16 15342, i16 -1, i16 0], [3 x i16] [i16 10124, i16 1, i16 -8], [3 x i16] [i16 21817, i16 15342, i16 -1], [3 x i16] [i16 -8400, i16 -14642, i16 3134], [3 x i16] [i16 24930, i16 -19631, i16 -1], [3 x i16] [i16 -18315, i16 19519, i16 20067], [3 x i16] [i16 15975, i16 -1985, i16 20815], [3 x i16] [i16 -1, i16 1, i16 1785]], [9 x [3 x i16]] [[3 x i16] [i16 10124, i16 -1, i16 20736], [3 x i16] [i16 -26859, i16 7848, i16 31142], [3 x i16] [i16 -1985, i16 -10, i16 -9], [3 x i16] [i16 -1, i16 -1, i16 1], [3 x i16] [i16 1, i16 -9, i16 11054], [3 x i16] [i16 -10, i16 -2900, i16 6], [3 x i16] [i16 31142, i16 13473, i16 32421], [3 x i16] [i16 -1, i16 -1, i16 1], [3 x i16] [i16 3134, i16 32338, i16 1785]], [9 x [3 x i16]] [[3 x i16] [i16 -9, i16 27646, i16 -1], [3 x i16] [i16 -21795, i16 4862, i16 23705], [3 x i16] [i16 26420, i16 -9, i16 -1], [3 x i16] [i16 1, i16 1, i16 1785], [3 x i16] [i16 20815, i16 -8400, i16 1], [3 x i16] [i16 27002, i16 -16700, i16 32421], [3 x i16] [i16 24930, i16 -1, i16 6], [3 x i16] [i16 7, i16 0, i16 11054], [3 x i16] [i16 -21795, i16 3134, i16 1]]], align 16
@.str.32 = private unnamed_addr constant [16 x i8] c"g_1041[i][j][k]\00", align 1
@g_1166 = internal global i32 -1, align 4
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1166\00", align 1
@g_1356 = internal global i32 -1235604015, align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1356\00", align 1
@g_1403 = internal global i64 -2, align 8
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1403\00", align 1
@g_1408 = internal global i32 -1344527532, align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1408\00", align 1
@g_1420 = internal global i32 1, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1420\00", align 1
@g_1448 = internal global i16 27706, align 2
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1448\00", align 1
@g_1531 = internal global i16 29444, align 2
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1531\00", align 1
@g_1532 = internal global i16 -1, align 2
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1532\00", align 1
@g_1533 = internal global i16 17778, align 2
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1533\00", align 1
@g_1534 = internal global i16 21970, align 2
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1534\00", align 1
@g_1535 = internal global i16 1, align 2
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1535\00", align 1
@g_1536 = internal global i16 20836, align 2
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1536\00", align 1
@g_1537 = internal global i16 1, align 2
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1537\00", align 1
@g_1538 = internal global [6 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 2
@.str.46 = private unnamed_addr constant [10 x i8] c"g_1538[i]\00", align 1
@g_1539 = internal global i16 26769, align 2
@.str.47 = private unnamed_addr constant [7 x i8] c"g_1539\00", align 1
@g_1540 = internal global i16 1, align 2
@.str.48 = private unnamed_addr constant [7 x i8] c"g_1540\00", align 1
@g_1541 = internal global i16 12468, align 2
@.str.49 = private unnamed_addr constant [7 x i8] c"g_1541\00", align 1
@g_1551 = internal global i32 -6, align 4
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1551\00", align 1
@g_1687 = internal global i32 -1, align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1687\00", align 1
@g_1818 = internal global i16 5274, align 2
@.str.52 = private unnamed_addr constant [7 x i8] c"g_1818\00", align 1
@g_1837 = internal global [6 x i64] [i64 -6673174486436385949, i64 -6673174486436385949, i64 -6673174486436385949, i64 -6673174486436385949, i64 -6673174486436385949, i64 -6673174486436385949], align 16
@.str.53 = private unnamed_addr constant [10 x i8] c"g_1837[i]\00", align 1
@g_1935 = internal global i32 -870606851, align 4
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1935\00", align 1
@g_2162 = internal global i16 -1, align 2
@.str.55 = private unnamed_addr constant [7 x i8] c"g_2162\00", align 1
@g_2165 = internal global i8 1, align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"g_2165\00", align 1
@g_2296 = internal global i8 -6, align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"g_2296\00", align 1
@g_2349 = internal global i32 -1, align 4
@.str.58 = private unnamed_addr constant [7 x i8] c"g_2349\00", align 1
@g_2396 = internal global i32 -8, align 4
@.str.59 = private unnamed_addr constant [7 x i8] c"g_2396\00", align 1
@g_2562 = internal global i16 831, align 2
@.str.60 = private unnamed_addr constant [7 x i8] c"g_2562\00", align 1
@g_2566 = internal global i32 1, align 4
@.str.61 = private unnamed_addr constant [7 x i8] c"g_2566\00", align 1
@g_2662 = internal global i32 -2127483395, align 4
@.str.62 = private unnamed_addr constant [7 x i8] c"g_2662\00", align 1
@g_2710 = internal global i32 0, align 4
@.str.63 = private unnamed_addr constant [7 x i8] c"g_2710\00", align 1
@g_2863 = internal global i32 -392461025, align 4
@.str.64 = private unnamed_addr constant [7 x i8] c"g_2863\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2 = private unnamed_addr constant [6 x i32] [i32 593769122, i32 -1, i32 593769122, i32 593769122, i32 -1, i32 593769122], align 16
@g_669 = internal global i16** @g_105, align 8
@g_105 = internal global i16* @g_94, align 8
@.str.65 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call zeroext i16 @func_1()
  %91 = load i32, i32* @g_3, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %134, %89
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 5
  br i1 %96, label %97, label %137

; <label>:97                                      ; preds = %94
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %130, %97
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 10
  br i1 %100, label %101, label %133

; <label>:101                                     ; preds = %98
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %102

; <label>:102                                     ; preds = %126, %101
  %103 = load i32, i32* %k, align 4, !tbaa !1
  %104 = icmp slt i32 %103, 5
  br i1 %104, label %105, label %129

; <label>:105                                     ; preds = %102
  %106 = load i32, i32* %k, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %j, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [5 x [10 x [5 x i32]]], [5 x [10 x [5 x i32]]]* @g_4, i32 0, i64 %111
  %113 = getelementptr inbounds [10 x [5 x i32]], [10 x [5 x i32]]* %112, i32 0, i64 %109
  %114 = getelementptr inbounds [5 x i32], [5 x i32]* %113, i32 0, i64 %107
  %115 = load i32, i32* %114, align 4, !tbaa !1
  %116 = sext i32 %115 to i64
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %117)
  %118 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

; <label>:120                                     ; preds = %105
  %121 = load i32, i32* %i, align 4, !tbaa !1
  %122 = load i32, i32* %j, align 4, !tbaa !1
  %123 = load i32, i32* %k, align 4, !tbaa !1
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %121, i32 %122, i32 %123)
  br label %125

; <label>:125                                     ; preds = %120, %105
  br label %126

; <label>:126                                     ; preds = %125
  %127 = load i32, i32* %k, align 4, !tbaa !1
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %k, align 4, !tbaa !1
  br label %102

; <label>:129                                     ; preds = %102
  br label %130

; <label>:130                                     ; preds = %129
  %131 = load i32, i32* %j, align 4, !tbaa !1
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:133                                     ; preds = %98
  br label %134

; <label>:134                                     ; preds = %133
  %135 = load i32, i32* %i, align 4, !tbaa !1
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:137                                     ; preds = %94
  %138 = load i32, i32* @g_53, align 4, !tbaa !1
  %139 = zext i32 %138 to i64
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %140)
  %141 = load i32, i32* @g_82, align 4, !tbaa !1
  %142 = sext i32 %141 to i64
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %143)
  %144 = load i16, i16* @g_94, align 2, !tbaa !10
  %145 = zext i16 %144 to i64
  %146 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %146)
  %147 = load i32, i32* @g_97, align 4, !tbaa !1
  %148 = zext i32 %147 to i64
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %149)
  %150 = load i8, i8* @g_123, align 1, !tbaa !9
  %151 = sext i8 %150 to i64
  %152 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %152)
  %153 = load i32, i32* @g_144, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %155)
  %156 = load i32, i32* @g_146, align 4, !tbaa !1
  %157 = sext i32 %156 to i64
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %158)
  %159 = load i32, i32* @g_148, align 4, !tbaa !1
  %160 = sext i32 %159 to i64
  %161 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %161)
  %162 = load i8, i8* @g_166, align 1, !tbaa !9
  %163 = zext i8 %162 to i64
  %164 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %164)
  %165 = load i32, i32* @g_190, align 4, !tbaa !1
  %166 = zext i32 %165 to i64
  %167 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %167)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %168

; <label>:168                                     ; preds = %196, %137
  %169 = load i32, i32* %i, align 4, !tbaa !1
  %170 = icmp slt i32 %169, 1
  br i1 %170, label %171, label %199

; <label>:171                                     ; preds = %168
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %172

; <label>:172                                     ; preds = %192, %171
  %173 = load i32, i32* %j, align 4, !tbaa !1
  %174 = icmp slt i32 %173, 4
  br i1 %174, label %175, label %195

; <label>:175                                     ; preds = %172
  %176 = load i32, i32* %j, align 4, !tbaa !1
  %177 = sext i32 %176 to i64
  %178 = load i32, i32* %i, align 4, !tbaa !1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [1 x [4 x i8]], [1 x [4 x i8]]* @g_216, i32 0, i64 %179
  %181 = getelementptr inbounds [4 x i8], [4 x i8]* %180, i32 0, i64 %177
  %182 = load i8, i8* %181, align 1, !tbaa !9
  %183 = sext i8 %182 to i64
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %183, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 %184)
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

; <label>:187                                     ; preds = %175
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = load i32, i32* %j, align 4, !tbaa !1
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 %188, i32 %189)
  br label %191

; <label>:191                                     ; preds = %187, %175
  br label %192

; <label>:192                                     ; preds = %191
  %193 = load i32, i32* %j, align 4, !tbaa !1
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %j, align 4, !tbaa !1
  br label %172

; <label>:195                                     ; preds = %172
  br label %196

; <label>:196                                     ; preds = %195
  %197 = load i32, i32* %i, align 4, !tbaa !1
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %i, align 4, !tbaa !1
  br label %168

; <label>:199                                     ; preds = %168
  %200 = load i16, i16* @g_221, align 2, !tbaa !10
  %201 = sext i16 %200 to i64
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %202)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %203

; <label>:203                                     ; preds = %219, %199
  %204 = load i32, i32* %i, align 4, !tbaa !1
  %205 = icmp slt i32 %204, 2
  br i1 %205, label %206, label %222

; <label>:206                                     ; preds = %203
  %207 = load i32, i32* %i, align 4, !tbaa !1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [2 x i8], [2 x i8]* @g_289, i32 0, i64 %208
  %210 = load i8, i8* %209, align 1, !tbaa !9
  %211 = zext i8 %210 to i64
  %212 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %212)
  %213 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

; <label>:215                                     ; preds = %206
  %216 = load i32, i32* %i, align 4, !tbaa !1
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %216)
  br label %218

; <label>:218                                     ; preds = %215, %206
  br label %219

; <label>:219                                     ; preds = %218
  %220 = load i32, i32* %i, align 4, !tbaa !1
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %i, align 4, !tbaa !1
  br label %203

; <label>:222                                     ; preds = %203
  %223 = load volatile i16, i16* @g_425, align 2, !tbaa !10
  %224 = sext i16 %223 to i64
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %225)
  %226 = load i64, i64* @g_436, align 8, !tbaa !7
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %227)
  %228 = load volatile i32, i32* @g_562, align 4, !tbaa !1
  %229 = sext i32 %228 to i64
  %230 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %230)
  %231 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %231)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %232

; <label>:232                                     ; preds = %247, %222
  %233 = load i32, i32* %i, align 4, !tbaa !1
  %234 = icmp slt i32 %233, 9
  br i1 %234, label %235, label %250

; <label>:235                                     ; preds = %232
  %236 = load i32, i32* %i, align 4, !tbaa !1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [9 x i64], [9 x i64]* @g_612, i32 0, i64 %237
  %239 = load i64, i64* %238, align 8, !tbaa !7
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %240)
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

; <label>:243                                     ; preds = %235
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %244)
  br label %246

; <label>:246                                     ; preds = %243, %235
  br label %247

; <label>:247                                     ; preds = %246
  %248 = load i32, i32* %i, align 4, !tbaa !1
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %i, align 4, !tbaa !1
  br label %232

; <label>:250                                     ; preds = %232
  %251 = load i16, i16* @g_666, align 2, !tbaa !10
  %252 = zext i16 %251 to i64
  %253 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %253)
  %254 = load volatile i8, i8* @g_698, align 1, !tbaa !9
  %255 = zext i8 %254 to i64
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %256)
  %257 = load volatile i64, i64* @g_703, align 8, !tbaa !7
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %258)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %259

; <label>:259                                     ; preds = %275, %250
  %260 = load i32, i32* %i, align 4, !tbaa !1
  %261 = icmp slt i32 %260, 4
  br i1 %261, label %262, label %278

; <label>:262                                     ; preds = %259
  %263 = load i32, i32* %i, align 4, !tbaa !1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [4 x i16], [4 x i16]* @g_739, i32 0, i64 %264
  %266 = load i16, i16* %265, align 2, !tbaa !10
  %267 = sext i16 %266 to i64
  %268 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %267, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %268)
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

; <label>:271                                     ; preds = %262
  %272 = load i32, i32* %i, align 4, !tbaa !1
  %273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %272)
  br label %274

; <label>:274                                     ; preds = %271, %262
  br label %275

; <label>:275                                     ; preds = %274
  %276 = load i32, i32* %i, align 4, !tbaa !1
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %i, align 4, !tbaa !1
  br label %259

; <label>:278                                     ; preds = %259
  %279 = load i64, i64* @g_792, align 8, !tbaa !7
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %280)
  %281 = load volatile i32, i32* @g_889, align 4, !tbaa !1
  %282 = sext i32 %281 to i64
  %283 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %283)
  %284 = load i32, i32* @g_896, align 4, !tbaa !1
  %285 = sext i32 %284 to i64
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %286)
  %287 = load i8, i8* @g_1038, align 1, !tbaa !9
  %288 = zext i8 %287 to i64
  %289 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %288, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %289)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %290

; <label>:290                                     ; preds = %330, %278
  %291 = load i32, i32* %i, align 4, !tbaa !1
  %292 = icmp slt i32 %291, 9
  br i1 %292, label %293, label %333

; <label>:293                                     ; preds = %290
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %294

; <label>:294                                     ; preds = %326, %293
  %295 = load i32, i32* %j, align 4, !tbaa !1
  %296 = icmp slt i32 %295, 9
  br i1 %296, label %297, label %329

; <label>:297                                     ; preds = %294
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %298

; <label>:298                                     ; preds = %322, %297
  %299 = load i32, i32* %k, align 4, !tbaa !1
  %300 = icmp slt i32 %299, 3
  br i1 %300, label %301, label %325

; <label>:301                                     ; preds = %298
  %302 = load i32, i32* %k, align 4, !tbaa !1
  %303 = sext i32 %302 to i64
  %304 = load i32, i32* %j, align 4, !tbaa !1
  %305 = sext i32 %304 to i64
  %306 = load i32, i32* %i, align 4, !tbaa !1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [9 x [9 x [3 x i16]]], [9 x [9 x [3 x i16]]]* @g_1041, i32 0, i64 %307
  %309 = getelementptr inbounds [9 x [3 x i16]], [9 x [3 x i16]]* %308, i32 0, i64 %305
  %310 = getelementptr inbounds [3 x i16], [3 x i16]* %309, i32 0, i64 %303
  %311 = load volatile i16, i16* %310, align 2, !tbaa !10
  %312 = zext i16 %311 to i64
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i32 %313)
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %321

; <label>:316                                     ; preds = %301
  %317 = load i32, i32* %i, align 4, !tbaa !1
  %318 = load i32, i32* %j, align 4, !tbaa !1
  %319 = load i32, i32* %k, align 4, !tbaa !1
  %320 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %317, i32 %318, i32 %319)
  br label %321

; <label>:321                                     ; preds = %316, %301
  br label %322

; <label>:322                                     ; preds = %321
  %323 = load i32, i32* %k, align 4, !tbaa !1
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %k, align 4, !tbaa !1
  br label %298

; <label>:325                                     ; preds = %298
  br label %326

; <label>:326                                     ; preds = %325
  %327 = load i32, i32* %j, align 4, !tbaa !1
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %j, align 4, !tbaa !1
  br label %294

; <label>:329                                     ; preds = %294
  br label %330

; <label>:330                                     ; preds = %329
  %331 = load i32, i32* %i, align 4, !tbaa !1
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %i, align 4, !tbaa !1
  br label %290

; <label>:333                                     ; preds = %290
  %334 = load volatile i32, i32* @g_1166, align 4, !tbaa !1
  %335 = zext i32 %334 to i64
  %336 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %335, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %336)
  %337 = load volatile i32, i32* @g_1356, align 4, !tbaa !1
  %338 = sext i32 %337 to i64
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %338, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %339)
  %340 = load volatile i64, i64* @g_1403, align 8, !tbaa !7
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %341)
  %342 = load i32, i32* @g_1408, align 4, !tbaa !1
  %343 = sext i32 %342 to i64
  %344 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %343, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %344)
  %345 = load i32, i32* @g_1420, align 4, !tbaa !1
  %346 = sext i32 %345 to i64
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %346, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %347)
  %348 = load volatile i16, i16* @g_1448, align 2, !tbaa !10
  %349 = sext i16 %348 to i64
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %350)
  %351 = load volatile i16, i16* @g_1531, align 2, !tbaa !10
  %352 = sext i16 %351 to i64
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %352, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %353)
  %354 = load volatile i16, i16* @g_1532, align 2, !tbaa !10
  %355 = sext i16 %354 to i64
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %355, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %356)
  %357 = load volatile i16, i16* @g_1533, align 2, !tbaa !10
  %358 = sext i16 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %359)
  %360 = load volatile i16, i16* @g_1534, align 2, !tbaa !10
  %361 = sext i16 %360 to i64
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %361, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %362)
  %363 = load volatile i16, i16* @g_1535, align 2, !tbaa !10
  %364 = sext i16 %363 to i64
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %365)
  %366 = load volatile i16, i16* @g_1536, align 2, !tbaa !10
  %367 = sext i16 %366 to i64
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %367, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %368)
  %369 = load volatile i16, i16* @g_1537, align 2, !tbaa !10
  %370 = sext i16 %369 to i64
  %371 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %370, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %371)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %372

; <label>:372                                     ; preds = %388, %333
  %373 = load i32, i32* %i, align 4, !tbaa !1
  %374 = icmp slt i32 %373, 6
  br i1 %374, label %375, label %391

; <label>:375                                     ; preds = %372
  %376 = load i32, i32* %i, align 4, !tbaa !1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [6 x i16], [6 x i16]* @g_1538, i32 0, i64 %377
  %379 = load volatile i16, i16* %378, align 2, !tbaa !10
  %380 = sext i16 %379 to i64
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %380, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 %381)
  %382 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %387

; <label>:384                                     ; preds = %375
  %385 = load i32, i32* %i, align 4, !tbaa !1
  %386 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %385)
  br label %387

; <label>:387                                     ; preds = %384, %375
  br label %388

; <label>:388                                     ; preds = %387
  %389 = load i32, i32* %i, align 4, !tbaa !1
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %i, align 4, !tbaa !1
  br label %372

; <label>:391                                     ; preds = %372
  %392 = load volatile i16, i16* @g_1539, align 2, !tbaa !10
  %393 = sext i16 %392 to i64
  %394 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %393, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %394)
  %395 = load volatile i16, i16* @g_1540, align 2, !tbaa !10
  %396 = sext i16 %395 to i64
  %397 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %396, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %397)
  %398 = load volatile i16, i16* @g_1541, align 2, !tbaa !10
  %399 = sext i16 %398 to i64
  %400 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %399, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %400)
  %401 = load i32, i32* @g_1551, align 4, !tbaa !1
  %402 = sext i32 %401 to i64
  %403 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %402, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %403)
  %404 = load i32, i32* @g_1687, align 4, !tbaa !1
  %405 = zext i32 %404 to i64
  %406 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %405, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %406)
  %407 = load i16, i16* @g_1818, align 2, !tbaa !10
  %408 = sext i16 %407 to i64
  %409 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %408, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %409)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %410

; <label>:410                                     ; preds = %425, %391
  %411 = load i32, i32* %i, align 4, !tbaa !1
  %412 = icmp slt i32 %411, 6
  br i1 %412, label %413, label %428

; <label>:413                                     ; preds = %410
  %414 = load i32, i32* %i, align 4, !tbaa !1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [6 x i64], [6 x i64]* @g_1837, i32 0, i64 %415
  %417 = load i64, i64* %416, align 8, !tbaa !7
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %417, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32 %418)
  %419 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %424

; <label>:421                                     ; preds = %413
  %422 = load i32, i32* %i, align 4, !tbaa !1
  %423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 %422)
  br label %424

; <label>:424                                     ; preds = %421, %413
  br label %425

; <label>:425                                     ; preds = %424
  %426 = load i32, i32* %i, align 4, !tbaa !1
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %i, align 4, !tbaa !1
  br label %410

; <label>:428                                     ; preds = %410
  %429 = load volatile i32, i32* @g_1935, align 4, !tbaa !1
  %430 = zext i32 %429 to i64
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %431)
  %432 = load i16, i16* @g_2162, align 2, !tbaa !10
  %433 = zext i16 %432 to i64
  %434 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %433, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %434)
  %435 = load i8, i8* @g_2165, align 1, !tbaa !9
  %436 = sext i8 %435 to i64
  %437 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %436, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %437)
  %438 = load i8, i8* @g_2296, align 1, !tbaa !9
  %439 = sext i8 %438 to i64
  %440 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %439, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %440)
  %441 = load i32, i32* @g_2349, align 4, !tbaa !1
  %442 = zext i32 %441 to i64
  %443 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %442, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %443)
  %444 = load volatile i32, i32* @g_2396, align 4, !tbaa !1
  %445 = zext i32 %444 to i64
  %446 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %445, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 %446)
  %447 = load i16, i16* @g_2562, align 2, !tbaa !10
  %448 = sext i16 %447 to i64
  %449 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %448, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %449)
  %450 = load volatile i32, i32* @g_2566, align 4, !tbaa !1
  %451 = sext i32 %450 to i64
  %452 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %451, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %452)
  %453 = load volatile i32, i32* @g_2662, align 4, !tbaa !1
  %454 = zext i32 %453 to i64
  %455 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %454, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 %455)
  %456 = load i32, i32* @g_2710, align 4, !tbaa !1
  %457 = sext i32 %456 to i64
  %458 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %457, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 %458)
  %459 = load i32, i32* @g_2863, align 4, !tbaa !1
  %460 = sext i32 %459 to i64
  %461 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %460, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %461)
  %462 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %463 = zext i32 %462 to i64
  %464 = xor i64 %463, 4294967295
  %465 = trunc i64 %464 to i32
  %466 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %465, i32 %466)
  %467 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %467) #1
  %468 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %468) #1
  %469 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %469) #1
  %470 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %470) #1
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
define internal zeroext i16 @func_1() #0 {
  %l_2 = alloca [6 x i32], align 16
  %l_132 = alloca i32, align 4
  %l_2796 = alloca i32, align 4
  %l_2804 = alloca i16*, align 8
  %l_2885 = alloca i32, align 4
  %l_2910 = alloca i64*, align 8
  %l_2909 = alloca i64**, align 8
  %l_2908 = alloca i64***, align 8
  %l_2913 = alloca i64, align 8
  %i = alloca i32, align 4
  %l_24 = alloca i32, align 4
  %l_36 = alloca [5 x i8], align 1
  %l_2166 = alloca [3 x i16], align 2
  %l_2827 = alloca i8**, align 8
  %l_2846 = alloca i8*, align 8
  %l_2853 = alloca i32*, align 8
  %l_2897 = alloca i32*, align 8
  %l_2915 = alloca i32*, align 8
  %i1 = alloca i32, align 4
  %1 = bitcast [6 x i32]* %l_2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast [6 x i32]* %l_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([6 x i32]* @func_1.l_2 to i8*), i64 24, i32 16, i1 false)
  %3 = bitcast i32* %l_132 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 -1535580859, i32* %l_132, align 4, !tbaa !1
  %4 = bitcast i32* %l_2796 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -1601876757, i32* %l_2796, align 4, !tbaa !1
  %5 = bitcast i16** %l_2804 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i16* @g_221, i16** %l_2804, align 8, !tbaa !5
  %6 = bitcast i32* %l_2885 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 289472529, i32* %l_2885, align 4, !tbaa !1
  %7 = bitcast i64** %l_2910 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64* @g_792, i64** %l_2910, align 8, !tbaa !5
  %8 = bitcast i64*** %l_2909 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64** %l_2910, i64*** %l_2909, align 8, !tbaa !5
  %9 = bitcast i64**** %l_2908 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64*** %l_2909, i64**** %l_2908, align 8, !tbaa !5
  %10 = bitcast i64* %l_2913 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 -6, i64* %l_2913, align 8, !tbaa !7
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 5, i32* @g_3, align 4, !tbaa !1
  br label %12

; <label>:12                                      ; preds = %57, %0
  %13 = load i32, i32* @g_3, align 4, !tbaa !1
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %60

; <label>:15                                      ; preds = %12
  %16 = bitcast i32* %l_24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 449857648, i32* %l_24, align 4, !tbaa !1
  %17 = bitcast [5 x i8]* %l_36 to i8*
  call void @llvm.lifetime.start(i64 5, i8* %17) #1
  %18 = bitcast [3 x i16]* %l_2166 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %18) #1
  %19 = bitcast i8*** %l_2827 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i8** null, i8*** %l_2827, align 8, !tbaa !5
  %20 = bitcast i8** %l_2846 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %l_36, i32 0, i64 3
  store i8* %21, i8** %l_2846, align 8, !tbaa !5
  %22 = bitcast i32** %l_2853 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i32* @g_53, i32** %l_2853, align 8, !tbaa !5
  %23 = bitcast i32** %l_2897 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i32* %l_132, i32** %l_2897, align 8, !tbaa !5
  %24 = bitcast i32** %l_2915 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i32* @g_2710, i32** %l_2915, align 8, !tbaa !5
  %25 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %26

; <label>:26                                      ; preds = %33, %15
  %27 = load i32, i32* %i1, align 4, !tbaa !1
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %26
  %30 = load i32, i32* %i1, align 4, !tbaa !1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %l_36, i32 0, i64 %31
  store i8 -123, i8* %32, align 1, !tbaa !9
  br label %33

; <label>:33                                      ; preds = %29
  %34 = load i32, i32* %i1, align 4, !tbaa !1
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i1, align 4, !tbaa !1
  br label %26

; <label>:36                                      ; preds = %26
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %37

; <label>:37                                      ; preds = %44, %36
  %38 = load i32, i32* %i1, align 4, !tbaa !1
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %40, label %47

; <label>:40                                      ; preds = %37
  %41 = load i32, i32* %i1, align 4, !tbaa !1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i16], [3 x i16]* %l_2166, i32 0, i64 %42
  store i16 1, i16* %43, align 2, !tbaa !10
  br label %44

; <label>:44                                      ; preds = %40
  %45 = load i32, i32* %i1, align 4, !tbaa !1
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %i1, align 4, !tbaa !1
  br label %37

; <label>:47                                      ; preds = %37
  %48 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32** %l_2915 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32** %l_2897 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32** %l_2853 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i8** %l_2846 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i8*** %l_2827 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast [3 x i16]* %l_2166 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %54) #1
  %55 = bitcast [5 x i8]* %l_36 to i8*
  call void @llvm.lifetime.end(i64 5, i8* %55) #1
  %56 = bitcast i32* %l_24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  br label %57

; <label>:57                                      ; preds = %47
  %58 = load i32, i32* @g_3, align 4, !tbaa !1
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* @g_3, align 4, !tbaa !1
  br label %12

; <label>:60                                      ; preds = %12
  %61 = load i16**, i16*** @g_669, align 8, !tbaa !5
  %62 = load i16*, i16** %61, align 8, !tbaa !5
  %63 = load i16, i16* %62, align 2, !tbaa !10
  %64 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i64* %l_2913 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i64**** %l_2908 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i64*** %l_2909 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i64** %l_2910 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i32* %l_2885 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i16** %l_2804 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i32* %l_2796 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %l_132 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast [6 x i32]* %l_2 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %73) #1
  ret i16 %63
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.65, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i32 %3)
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
