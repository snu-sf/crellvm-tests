; ModuleID = '00263.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U2 = type { i32 }
%union.U0 = type { i64 }
%union.U1 = type { i16 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global [4 x i32] [i32 848525882, i32 848525882, i32 848525882, i32 848525882], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"g_2[i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_6 = internal global i32 -8, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_25 = internal global [4 x [2 x i16]] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"g_25[i][j]\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_26 = internal global [7 x i32] [i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5], align 16
@.str.6 = private unnamed_addr constant [8 x i8] c"g_26[i]\00", align 1
@g_71 = internal global i32 -5, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_71\00", align 1
@g_86 = internal global i16 -24464, align 2
@.str.8 = private unnamed_addr constant [5 x i8] c"g_86\00", align 1
@g_104 = internal global %union.U2 { i32 -1 }, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"g_104.f0\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"g_104.f1\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"g_104.f2\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"g_104.f3\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"g_104.f4\00", align 1
@g_112 = internal global i32 1314335382, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"g_112\00", align 1
@g_130 = internal global i32 898768454, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_130\00", align 1
@g_133 = internal global i32 -1, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_133\00", align 1
@g_136 = internal global %union.U0 { i64 -8353099928425854361 }, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"g_136.f0\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"g_136.f1\00", align 1
@g_180 = internal global [8 x [2 x i16]] [[2 x i16] [i16 6, i16 1], [2 x i16] [i16 6, i16 1], [2 x i16] [i16 6, i16 1], [2 x i16] [i16 6, i16 1], [2 x i16] [i16 6, i16 1], [2 x i16] [i16 6, i16 1], [2 x i16] [i16 6, i16 1], [2 x i16] [i16 6, i16 1]], align 16
@.str.19 = private unnamed_addr constant [12 x i8] c"g_180[i][j]\00", align 1
@g_188 = internal constant [10 x [8 x [3 x i32]]] [[8 x [3 x i32]] [[3 x i32] [i32 1, i32 1, i32 3], [3 x i32] [i32 3, i32 525932295, i32 -365513291], [3 x i32] [i32 8, i32 1, i32 3], [3 x i32] [i32 790473533, i32 308480222, i32 8], [3 x i32] [i32 -1077118908, i32 3, i32 1963118914], [3 x i32] [i32 0, i32 1294103461, i32 1], [3 x i32] [i32 3, i32 1, i32 108202443], [3 x i32] [i32 105179704, i32 525932295, i32 -1]], [8 x [3 x i32]] [[3 x i32] [i32 1294103461, i32 8, i32 1], [3 x i32] [i32 -564171478, i32 -2, i32 1], [3 x i32] [i32 108202443, i32 -580437894, i32 -1], [3 x i32] [i32 -3, i32 -1, i32 108202443], [3 x i32] [i32 -29719534, i32 -1, i32 1], [3 x i32] [i32 1963118914, i32 -8, i32 1963118914], [3 x i32] [i32 937873131, i32 -178806821, i32 8], [3 x i32] [i32 0, i32 8, i32 -1]], [8 x [3 x i32]] [[3 x i32] [i32 163912856, i32 1, i32 -580437894], [3 x i32] [i32 -4, i32 -9, i32 -8], [3 x i32] [i32 163912856, i32 -29719534, i32 -9], [3 x i32] [i32 0, i32 1, i32 -1], [3 x i32] [i32 937873131, i32 0, i32 1294103461], [3 x i32] [i32 1963118914, i32 1, i32 308480222], [3 x i32] [i32 -29719534, i32 -3, i32 -1], [3 x i32] [i32 -3, i32 -7, i32 -5]], [8 x [3 x i32]] [[3 x i32] [i32 108202443, i32 -1, i32 163912856], [3 x i32] [i32 -564171478, i32 -1, i32 488980867], [3 x i32] [i32 1294103461, i32 -7, i32 8], [3 x i32] [i32 105179704, i32 -3, i32 937873131], [3 x i32] [i32 3, i32 1, i32 -4], [3 x i32] [i32 0, i32 0, i32 -3], [3 x i32] [i32 -1077118908, i32 1, i32 -2], [3 x i32] [i32 1, i32 -29719534, i32 -7]], [8 x [3 x i32]] [[3 x i32] [i32 -1, i32 -9, i32 1], [3 x i32] [i32 -8, i32 1, i32 -7], [3 x i32] [i32 525932295, i32 8, i32 -2], [3 x i32] [i32 1, i32 -178806821, i32 -3], [3 x i32] [i32 -7, i32 -8, i32 -4], [3 x i32] [i32 -1, i32 -1, i32 937873131], [3 x i32] [i32 -5, i32 -1, i32 8], [3 x i32] [i32 -1, i32 -580437894, i32 488980867]], [8 x [3 x i32]] [[3 x i32] [i32 -1, i32 -2, i32 163912856], [3 x i32] [i32 -1, i32 8, i32 -5], [3 x i32] [i32 -1, i32 525932295, i32 -1], [3 x i32] [i32 -5, i32 1, i32 308480222], [3 x i32] [i32 -1, i32 1294103461, i32 1294103461], [3 x i32] [i32 -7, i32 3, i32 -1], [3 x i32] [i32 1, i32 -148221415, i32 -9], [3 x i32] [i32 525932295, i32 0, i32 -8]], [8 x [3 x i32]] [[3 x i32] [i32 -8, i32 -5, i32 -580437894], [3 x i32] [i32 -1, i32 0, i32 -1], [3 x i32] [i32 1, i32 -148221415, i32 8], [3 x i32] [i32 -1077118908, i32 3, i32 1963118914], [3 x i32] [i32 0, i32 1294103461, i32 1], [3 x i32] [i32 3, i32 1, i32 108202443], [3 x i32] [i32 105179704, i32 525932295, i32 -1], [3 x i32] [i32 1294103461, i32 8, i32 1]], [8 x [3 x i32]] [[3 x i32] [i32 -564171478, i32 -2, i32 1], [3 x i32] [i32 108202443, i32 -580437894, i32 -1], [3 x i32] [i32 -3, i32 -1, i32 108202443], [3 x i32] [i32 -29719534, i32 -1, i32 1], [3 x i32] [i32 1963118914, i32 -8, i32 1963118914], [3 x i32] [i32 937873131, i32 -178806821, i32 8], [3 x i32] [i32 0, i32 8, i32 -1], [3 x i32] [i32 163912856, i32 1, i32 -580437894]], [8 x [3 x i32]] [[3 x i32] [i32 -4, i32 -9, i32 -8], [3 x i32] [i32 163912856, i32 -29719534, i32 -9], [3 x i32] [i32 0, i32 1, i32 -1], [3 x i32] [i32 937873131, i32 -1, i32 -1], [3 x i32] [i32 3, i32 105179704, i32 -148221415], [3 x i32] [i32 -3, i32 -4, i32 163912856], [3 x i32] [i32 -4, i32 1, i32 132044173], [3 x i32] [i32 1, i32 -365513291, i32 -1]], [8 x [3 x i32]] [[3 x i32] [i32 -1077118908, i32 -365513291, i32 790473533], [3 x i32] [i32 -1, i32 1, i32 1], [3 x i32] [i32 -564171478, i32 -4, i32 8], [3 x i32] [i32 -1, i32 105179704, i32 308480222], [3 x i32] [i32 -1, i32 -1, i32 0], [3 x i32] [i32 -9, i32 -1, i32 -178806821], [3 x i32] [i32 0, i32 -3, i32 1], [3 x i32] [i32 163912856, i32 0, i32 1]]], align 16
@.str.20 = private unnamed_addr constant [15 x i8] c"g_188[i][j][k]\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_204 = internal constant [4 x [8 x i16]] [[8 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], [8 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], [8 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], [8 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1]], align 16
@.str.22 = private unnamed_addr constant [12 x i8] c"g_204[i][j]\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_206\00", align 1
@g_212 = internal global i8 -66, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_212\00", align 1
@g_220 = internal global %union.U1 { i16 28869 }, align 2
@.str.25 = private unnamed_addr constant [9 x i8] c"g_220.f0\00", align 1
@g_222 = internal global i16 0, align 2
@.str.26 = private unnamed_addr constant [6 x i8] c"g_222\00", align 1
@g_246 = internal global %union.U1 { i16 -25606 }, align 2
@.str.27 = private unnamed_addr constant [9 x i8] c"g_246.f0\00", align 1
@g_304 = internal global i64 -5155914510067044022, align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"g_304\00", align 1
@g_313 = internal global i32 8, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_313\00", align 1
@g_315 = internal global i32 -519806520, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_315\00", align 1
@g_317 = internal global [2 x i32] [i32 7, i32 7], align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"g_317[i]\00", align 1
@g_319 = internal global i64 -10, align 8
@.str.32 = private unnamed_addr constant [6 x i8] c"g_319\00", align 1
@g_339 = internal global [1 x [7 x [8 x i64]]] [[7 x [8 x i64]] [[8 x i64] [i64 -4, i64 1, i64 -4, i64 -8, i64 7171340783844048377, i64 -4965708700671094814, i64 2, i64 2847429125413238025], [8 x i64] [i64 -960482740301163371, i64 1, i64 7171340783844048377, i64 1, i64 -1, i64 1, i64 7171340783844048377, i64 1], [8 x i64] [i64 -960482740301163371, i64 2847429125413238025, i64 2, i64 -4965708700671094814, i64 7171340783844048377, i64 -8, i64 -4, i64 1], [8 x i64] [i64 -4, i64 -2866130501591055670, i64 -960482740301163371, i64 1, i64 -960482740301163371, i64 -2866130501591055670, i64 -4, i64 2847429125413238025], [8 x i64] [i64 7750691922467574672, i64 1, i64 2, i64 -8, i64 -3, i64 -2866130501591055670, i64 7171340783844048377, i64 -2866130501591055670], [8 x i64] [i64 -3, i64 -2866130501591055670, i64 7171340783844048377, i64 -2866130501591055670, i64 -3, i64 -8, i64 2, i64 1], [8 x i64] [i64 7750691922467574672, i64 2847429125413238025, i64 -4, i64 -2866130501591055670, i64 -960482740301163371, i64 1, i64 -960482740301163371, i64 -2866130501591055670]]], align 16
@.str.33 = private unnamed_addr constant [15 x i8] c"g_339[i][j][k]\00", align 1
@g_343 = internal global i32 -252066094, align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"g_343\00", align 1
@g_360 = internal global i8 7, align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"g_360\00", align 1
@g_444 = internal global [10 x [9 x [2 x i32]]] [[9 x [2 x i32]] [[2 x i32] [i32 2, i32 -5], [2 x i32] [i32 -1567609901, i32 1], [2 x i32] [i32 -788844245, i32 1], [2 x i32] [i32 -1567609901, i32 -5], [2 x i32] [i32 2, i32 -7], [2 x i32] [i32 -1516861763, i32 -2], [2 x i32] [i32 -6, i32 9], [2 x i32] [i32 552215874, i32 229318459], [2 x i32] [i32 1152647230, i32 1902629430]], [9 x [2 x i32]] [[2 x i32] [i32 -2064500632, i32 -539953127], [2 x i32] [i32 890176227, i32 1439139099], [2 x i32] [i32 1902629430, i32 -1459809118], [2 x i32] [i32 7, i32 1650969189], [2 x i32] [i32 173569374, i32 364563719], [2 x i32] [i32 -735544298, i32 -1], [2 x i32] [i32 -8, i32 1], [2 x i32] [i32 -1459809118, i32 1453111087], [2 x i32] [i32 1304012804, i32 1]], [9 x [2 x i32]] [[2 x i32] [i32 -1, i32 -1], [2 x i32] [i32 1278075637, i32 -735544298], [2 x i32] [i32 -174014758, i32 -2], [2 x i32] [i32 822281023, i32 9], [2 x i32] [i32 1228528113, i32 0], [2 x i32] [i32 1, i32 -1842419722], [2 x i32] [i32 1650969189, i32 -1516861763], [2 x i32] [i32 0, i32 -1], [2 x i32] [i32 -1, i32 1152647230]], [9 x [2 x i32]] [[2 x i32] [i32 890176227, i32 -1], [2 x i32] [i32 1453111087, i32 -2], [2 x i32] [i32 -1996354599, i32 7], [2 x i32] [i32 -8, i32 -8], [2 x i32] [i32 365831963, i32 -1774999053], [2 x i32] [i32 2, i32 -680490389], [2 x i32] [i32 1228528113, i32 -1567609901], [2 x i32] [i32 -1, i32 1228528113], [2 x i32] [i32 9, i32 890176227]], [9 x [2 x i32]] [[2 x i32] [i32 9, i32 1228528113], [2 x i32] [i32 -1, i32 -1567609901], [2 x i32] [i32 1228528113, i32 -680490389], [2 x i32] [i32 2, i32 -1774999053], [2 x i32] [i32 365831963, i32 -8], [2 x i32] [i32 -8, i32 7], [2 x i32] [i32 -1996354599, i32 -2], [2 x i32] [i32 1453111087, i32 -1], [2 x i32] [i32 890176227, i32 1]], [9 x [2 x i32]] [[2 x i32] [i32 1650969189, i32 -4], [2 x i32] [i32 -8, i32 -2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1902629430, i32 -1842419722], [2 x i32] [i32 -1, i32 9], [2 x i32] [i32 -1567609901, i32 1278075637], [2 x i32] [i32 -5, i32 -1627206282], [2 x i32] [i32 334302992, i32 1798666273], [2 x i32] [i32 -4, i32 1493580227]], [9 x [2 x i32]] [[2 x i32] [i32 -265027356, i32 1], [2 x i32] [i32 364563719, i32 -1459809118], [2 x i32] [i32 -735544298, i32 1152647230], [2 x i32] [i32 -1627206282, i32 365831963], [2 x i32] [i32 1887747335, i32 0], [2 x i32] [i32 -4, i32 364563719], [2 x i32] [i32 -174014758, i32 -1906673878], [2 x i32] [i32 1, i32 -1], [2 x i32] [i32 1304012804, i32 -174014758]], [9 x [2 x i32]] [[2 x i32] [i32 1, i32 1439139099], [2 x i32] [i32 -788844245, i32 -1996354599], [2 x i32] [i32 0, i32 822281023], [2 x i32] [i32 -2, i32 1], [2 x i32] [i32 -2, i32 -6], [2 x i32] [i32 -1, i32 1902629430], [2 x i32] [i32 1078110864, i32 1902629430], [2 x i32] [i32 -1, i32 -6], [2 x i32] [i32 -2, i32 1]], [9 x [2 x i32]] [[2 x i32] [i32 -2, i32 822281023], [2 x i32] [i32 0, i32 -1996354599], [2 x i32] [i32 -788844245, i32 1439139099], [2 x i32] [i32 1, i32 -174014758], [2 x i32] [i32 1304012804, i32 -1], [2 x i32] [i32 1, i32 -1906673878], [2 x i32] [i32 -174014758, i32 364563719], [2 x i32] [i32 -4, i32 0], [2 x i32] [i32 1887747335, i32 365831963]], [9 x [2 x i32]] [[2 x i32] [i32 -1627206282, i32 1152647230], [2 x i32] [i32 -735544298, i32 -1459809118], [2 x i32] [i32 364563719, i32 1], [2 x i32] [i32 -265027356, i32 1493580227], [2 x i32] [i32 -4, i32 1798666273], [2 x i32] [i32 334302992, i32 -1627206282], [2 x i32] [i32 -5, i32 1278075637], [2 x i32] [i32 -1567609901, i32 9], [2 x i32] [i32 -1, i32 -1842419722]]], align 16
@.str.36 = private unnamed_addr constant [15 x i8] c"g_444[i][j][k]\00", align 1
@g_483 = internal global i64 3139376222343879889, align 8
@.str.37 = private unnamed_addr constant [6 x i8] c"g_483\00", align 1
@g_558 = internal global i16 2598, align 2
@.str.38 = private unnamed_addr constant [6 x i8] c"g_558\00", align 1
@g_586 = internal global %union.U1 { i16 -22858 }, align 2
@.str.39 = private unnamed_addr constant [9 x i8] c"g_586.f0\00", align 1
@g_605 = internal global %union.U2 { i32 -1 }, align 4
@.str.40 = private unnamed_addr constant [9 x i8] c"g_605.f0\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"g_605.f1\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"g_605.f2\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"g_605.f3\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"g_605.f4\00", align 1
@g_666 = internal global i32 1795922150, align 4
@.str.45 = private unnamed_addr constant [6 x i8] c"g_666\00", align 1
@g_768 = internal global %union.U2 { i32 -1211489183 }, align 4
@.str.46 = private unnamed_addr constant [9 x i8] c"g_768.f0\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"g_768.f1\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"g_768.f2\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"g_768.f3\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"g_768.f4\00", align 1
@g_770 = internal global %union.U2 { i32 1 }, align 4
@.str.51 = private unnamed_addr constant [9 x i8] c"g_770.f0\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"g_770.f1\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"g_770.f2\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"g_770.f3\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"g_770.f4\00", align 1
@g_775 = internal global %union.U2 { i32 -1617279846 }, align 4
@.str.56 = private unnamed_addr constant [9 x i8] c"g_775.f0\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"g_775.f1\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"g_775.f2\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"g_775.f3\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"g_775.f4\00", align 1
@g_820 = internal global i32 -1, align 4
@.str.61 = private unnamed_addr constant [6 x i8] c"g_820\00", align 1
@g_887 = internal global %union.U1 zeroinitializer, align 2
@.str.62 = private unnamed_addr constant [9 x i8] c"g_887.f0\00", align 1
@g_907 = internal constant %union.U1 { i16 1 }, align 2
@.str.63 = private unnamed_addr constant [9 x i8] c"g_907.f0\00", align 1
@g_936 = internal global %union.U1 zeroinitializer, align 2
@.str.64 = private unnamed_addr constant [9 x i8] c"g_936.f0\00", align 1
@g_1036 = internal global i64 1, align 8
@.str.65 = private unnamed_addr constant [7 x i8] c"g_1036\00", align 1
@g_1098 = internal global i64 6235798147037858087, align 8
@.str.66 = private unnamed_addr constant [7 x i8] c"g_1098\00", align 1
@g_1221 = internal global %union.U1 { i16 -7 }, align 2
@.str.67 = private unnamed_addr constant [10 x i8] c"g_1221.f0\00", align 1
@g_1233 = internal global %union.U1 { i16 -14329 }, align 2
@.str.68 = private unnamed_addr constant [10 x i8] c"g_1233.f0\00", align 1
@g_1357 = internal global i16 -22161, align 2
@.str.69 = private unnamed_addr constant [7 x i8] c"g_1357\00", align 1
@g_1359 = internal global i16 4, align 2
@.str.70 = private unnamed_addr constant [7 x i8] c"g_1359\00", align 1
@g_1393 = internal global %union.U1 { i16 -22109 }, align 2
@.str.71 = private unnamed_addr constant [10 x i8] c"g_1393.f0\00", align 1
@g_1414 = internal global [3 x i16] zeroinitializer, align 2
@.str.72 = private unnamed_addr constant [10 x i8] c"g_1414[i]\00", align 1
@g_1426 = internal constant %union.U1 zeroinitializer, align 2
@.str.73 = private unnamed_addr constant [10 x i8] c"g_1426.f0\00", align 1
@g_1469 = internal global i32 0, align 4
@.str.74 = private unnamed_addr constant [7 x i8] c"g_1469\00", align 1
@g_1475 = internal global [5 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.75 = private unnamed_addr constant [10 x i8] c"g_1475[i]\00", align 1
@g_1563 = internal global i32 2121021065, align 4
@.str.76 = private unnamed_addr constant [7 x i8] c"g_1563\00", align 1
@g_1626 = internal global %union.U1 { i16 27695 }, align 2
@.str.77 = private unnamed_addr constant [10 x i8] c"g_1626.f0\00", align 1
@g_1767 = internal global i32 1241916509, align 4
@.str.78 = private unnamed_addr constant [7 x i8] c"g_1767\00", align 1
@g_1784 = internal global [5 x %union.U0] [%union.U0 { i64 5873546517587535792 }, %union.U0 { i64 5873546517587535792 }, %union.U0 { i64 5873546517587535792 }, %union.U0 { i64 5873546517587535792 }, %union.U0 { i64 5873546517587535792 }], align 16
@.str.79 = private unnamed_addr constant [13 x i8] c"g_1784[i].f0\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"g_1784[i].f1\00", align 1
@g_1791 = internal global [1 x [1 x i32]] [[1 x i32] [i32 -1809096224]], align 4
@.str.81 = private unnamed_addr constant [13 x i8] c"g_1791[i][j]\00", align 1
@g_1813 = internal global %union.U2 { i32 -1 }, align 4
@.str.82 = private unnamed_addr constant [10 x i8] c"g_1813.f0\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"g_1813.f1\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"g_1813.f2\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"g_1813.f3\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"g_1813.f4\00", align 1
@g_1850 = internal global i8 93, align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"g_1850\00", align 1
@g_1896 = internal constant %union.U1 zeroinitializer, align 2
@.str.88 = private unnamed_addr constant [10 x i8] c"g_1896.f0\00", align 1
@g_2010 = internal global %union.U2 { i32 -6 }, align 4
@.str.89 = private unnamed_addr constant [10 x i8] c"g_2010.f0\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"g_2010.f1\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"g_2010.f2\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"g_2010.f3\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"g_2010.f4\00", align 1
@g_2012 = internal global i16 14324, align 2
@.str.94 = private unnamed_addr constant [7 x i8] c"g_2012\00", align 1
@g_2061 = internal global %union.U1 { i16 -6 }, align 2
@.str.95 = private unnamed_addr constant [10 x i8] c"g_2061.f0\00", align 1
@g_2068 = internal global [8 x [1 x [9 x %union.U2]]] [[1 x [9 x %union.U2]] [[9 x %union.U2] [%union.U2 { i32 -1891547624 }, %union.U2 zeroinitializer, %union.U2 { i32 596063310 }, %union.U2 { i32 596063310 }, %union.U2 zeroinitializer, %union.U2 { i32 -1891547624 }, %union.U2 { i32 1499909187 }, %union.U2 { i32 1 }, %union.U2 { i32 596063310 }]], [1 x [9 x %union.U2]] [[9 x %union.U2] [%union.U2 { i32 -769473845 }, %union.U2 zeroinitializer, %union.U2 { i32 -1891547624 }, %union.U2 { i32 596063310 }, %union.U2 zeroinitializer, %union.U2 { i32 -769473845 }, %union.U2 { i32 -769473845 }, %union.U2 zeroinitializer, %union.U2 { i32 596063310 }]], [1 x [9 x %union.U2]] [[9 x %union.U2] [%union.U2 { i32 -366409183 }, %union.U2 zeroinitializer, %union.U2 { i32 -366409183 }, %union.U2 { i32 -1891547624 }, %union.U2 zeroinitializer, %union.U2 { i32 -366409183 }, %union.U2 { i32 1499909187 }, %union.U2 { i32 -4 }, %union.U2 { i32 -1891547624 }]], [1 x [9 x %union.U2]] [[9 x %union.U2] [%union.U2 { i32 -366409183 }, %union.U2 zeroinitializer, %union.U2 { i32 -1891547624 }, %union.U2 { i32 -366409183 }, %union.U2 zeroinitializer, %union.U2 { i32 -366409183 }, %union.U2 { i32 -1891547624 }, %union.U2 zeroinitializer, %union.U2 { i32 -366409183 }]], [1 x [9 x %union.U2]] [[9 x %union.U2] [%union.U2 { i32 -769473845 }, %union.U2 zeroinitializer, %union.U2 { i32 596063310 }, %union.U2 { i32 -1891547624 }, %union.U2 zeroinitializer, %union.U2 { i32 -769473845 }, %union.U2 { i32 -1891547624 }, %union.U2 { i32 1 }, %union.U2 { i32 -1891547624 }]], [1 x [9 x %union.U2]] [[9 x %union.U2] [%union.U2 { i32 -1891547624 }, %union.U2 zeroinitializer, %union.U2 { i32 596063310 }, %union.U2 { i32 596063310 }, %union.U2 zeroinitializer, %union.U2 { i32 -1891547624 }, %union.U2 { i32 1499909187 }, %union.U2 { i32 1 }, %union.U2 { i32 596063310 }]], [1 x [9 x %union.U2]] [[9 x %union.U2] [%union.U2 { i32 -769473845 }, %union.U2 zeroinitializer, %union.U2 { i32 -1891547624 }, %union.U2 { i32 596063310 }, %union.U2 zeroinitializer, %union.U2 { i32 -769473845 }, %union.U2 { i32 -769473845 }, %union.U2 zeroinitializer, %union.U2 { i32 596063310 }]], [1 x [9 x %union.U2]] [[9 x %union.U2] [%union.U2 { i32 -366409183 }, %union.U2 zeroinitializer, %union.U2 { i32 -366409183 }, %union.U2 { i32 -1891547624 }, %union.U2 zeroinitializer, %union.U2 { i32 -366409183 }, %union.U2 { i32 1499909187 }, %union.U2 { i32 -4 }, %union.U2 { i32 -1891547624 }]]], align 16
@.str.96 = private unnamed_addr constant [19 x i8] c"g_2068[i][j][k].f0\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"g_2068[i][j][k].f1\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"g_2068[i][j][k].f2\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"g_2068[i][j][k].f3\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"g_2068[i][j][k].f4\00", align 1
@g_2100 = internal constant i16 -1, align 2
@.str.101 = private unnamed_addr constant [7 x i8] c"g_2100\00", align 1
@g_2126 = internal global %union.U2 zeroinitializer, align 4
@.str.102 = private unnamed_addr constant [10 x i8] c"g_2126.f0\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"g_2126.f1\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"g_2126.f2\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"g_2126.f3\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"g_2126.f4\00", align 1
@g_2254 = internal global i64 0, align 8
@.str.107 = private unnamed_addr constant [7 x i8] c"g_2254\00", align 1
@g_2415 = internal global [9 x [10 x i8]] [[10 x i8] c")\1F))\1F))\1F))", [10 x i8] c"\1F\1Fd\1F\1Fd\1F\1Fd\1F", [10 x i8] c"\1F))\1F))\1F))\1F", [10 x i8] c")\1F))\1F))\1F))", [10 x i8] c"\1F\1Fd\1F\1Fd\1F\1Fd\1F", [10 x i8] c"\1F))\1F))\1F))\1F", [10 x i8] c")\1F))\1F))\1F))", [10 x i8] c"\1F\1Fd\1F\1Fd\1F)\1F)", [10 x i8] c")dd)dd)dd)"], align 16
@.str.108 = private unnamed_addr constant [13 x i8] c"g_2415[i][j]\00", align 1
@g_2451 = internal global i32 -1, align 4
@.str.109 = private unnamed_addr constant [7 x i8] c"g_2451\00", align 1
@g_2483 = internal global %union.U1 { i16 1 }, align 2
@.str.110 = private unnamed_addr constant [10 x i8] c"g_2483.f0\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"g_2534\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"g_2559\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"g_2566\00", align 1
@g_2614 = internal global [2 x [7 x [1 x %union.U1]]] [[7 x [1 x %union.U1]] [[1 x %union.U1] zeroinitializer, [1 x %union.U1] [%union.U1 { i16 -1 }], [1 x %union.U1] zeroinitializer, [1 x %union.U1] [%union.U1 { i16 -1 }], [1 x %union.U1] [%union.U1 { i16 -1 }], [1 x %union.U1] zeroinitializer, [1 x %union.U1] [%union.U1 { i16 -1 }]], [7 x [1 x %union.U1]] [[1 x %union.U1] zeroinitializer, [1 x %union.U1] [%union.U1 { i16 -1 }], [1 x %union.U1] [%union.U1 { i16 -1 }], [1 x %union.U1] zeroinitializer, [1 x %union.U1] [%union.U1 { i16 -1 }], [1 x %union.U1] zeroinitializer, [1 x %union.U1] [%union.U1 { i16 -1 }]]], align 16
@.str.114 = private unnamed_addr constant [19 x i8] c"g_2614[i][j][k].f0\00", align 1
@g_2724 = internal global %union.U1 { i16 -5 }, align 2
@.str.115 = private unnamed_addr constant [10 x i8] c"g_2724.f0\00", align 1
@g_2822 = internal global %union.U0 { i64 6 }, align 8
@.str.116 = private unnamed_addr constant [10 x i8] c"g_2822.f0\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"g_2822.f1\00", align 1
@g_2889 = internal global %union.U1 { i16 20494 }, align 2
@.str.118 = private unnamed_addr constant [10 x i8] c"g_2889.f0\00", align 1
@g_2905 = internal global %union.U2 { i32 1703163806 }, align 4
@.str.119 = private unnamed_addr constant [10 x i8] c"g_2905.f0\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"g_2905.f1\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"g_2905.f2\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"g_2905.f3\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"g_2905.f4\00", align 1
@g_2974 = internal global [9 x %union.U1] zeroinitializer, align 16
@.str.124 = private unnamed_addr constant [13 x i8] c"g_2974[i].f0\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2691 = private unnamed_addr constant [9 x [7 x [4 x i32]]] [[7 x [4 x i32]] [[4 x i32] [i32 0, i32 1260735204, i32 1776249092, i32 -9], [4 x i32] [i32 0, i32 4, i32 -6, i32 -787671296], [4 x i32] [i32 1919094795, i32 0, i32 0, i32 9], [4 x i32] [i32 -1990016260, i32 1489152960, i32 4, i32 1489152960], [4 x i32] [i32 -787671296, i32 0, i32 -3, i32 1260735204], [4 x i32] [i32 0, i32 0, i32 1919094795, i32 2], [4 x i32] [i32 -9, i32 0, i32 4, i32 -9]], [7 x [4 x i32]] [[4 x i32] [i32 -9, i32 9, i32 1919094795, i32 1451971018], [4 x i32] [i32 0, i32 -9, i32 -3, i32 -1], [4 x i32] [i32 -787671296, i32 6, i32 4, i32 1605645803], [4 x i32] [i32 -1990016260, i32 -6, i32 0, i32 1451971018], [4 x i32] [i32 1919094795, i32 1260735204, i32 -6, i32 -6], [4 x i32] [i32 0, i32 0, i32 1776249092, i32 -787671296], [4 x i32] [i32 0, i32 -543385440, i32 0, i32 1260735204]], [7 x [4 x i32]] [[4 x i32] [i32 -3, i32 1489152960, i32 2, i32 0], [4 x i32] [i32 -787671296, i32 1489152960, i32 9, i32 1260735204], [4 x i32] [i32 1489152960, i32 -543385440, i32 1919094795, i32 -787671296], [4 x i32] [i32 -6, i32 0, i32 4, i32 -6], [4 x i32] [i32 -9, i32 1260735204, i32 2090559169, i32 1451971018], [4 x i32] [i32 1489152960, i32 -6, i32 2090559169, i32 0], [4 x i32] [i32 -428554384, i32 915030984, i32 -428554384, i32 -336351759]], [7 x [4 x i32]] [[4 x i32] [i32 1919094795, i32 4, i32 6, i32 -543385440], [4 x i32] [i32 2, i32 1776249092, i32 4, i32 4], [4 x i32] [i32 8, i32 -1, i32 4, i32 -428554384], [4 x i32] [i32 2, i32 -3, i32 6, i32 -6], [4 x i32] [i32 1919094795, i32 8, i32 -428554384, i32 0], [4 x i32] [i32 -428554384, i32 0, i32 2090559169, i32 1776249092], [4 x i32] [i32 0, i32 -3, i32 -787671296, i32 9]], [7 x [4 x i32]] [[4 x i32] [i32 4, i32 8, i32 8, i32 4], [4 x i32] [i32 4, i32 -6, i32 4, i32 -724727058], [4 x i32] [i32 0, i32 4, i32 0, i32 0], [4 x i32] [i32 9, i32 -3, i32 -428554384, i32 0], [4 x i32] [i32 2090559169, i32 4, i32 8, i32 -724727058], [4 x i32] [i32 2, i32 -6, i32 0, i32 4], [4 x i32] [i32 -1, i32 8, i32 4, i32 9]], [7 x [4 x i32]] [[4 x i32] [i32 4, i32 -3, i32 8, i32 1776249092], [4 x i32] [i32 1919094795, i32 0, i32 1260735204, i32 0], [4 x i32] [i32 9, i32 8, i32 2090559169, i32 -6], [4 x i32] [i32 8, i32 -3, i32 4, i32 -428554384], [4 x i32] [i32 4, i32 -1, i32 1605645803, i32 4], [4 x i32] [i32 4, i32 1776249092, i32 4, i32 -543385440], [4 x i32] [i32 8, i32 4, i32 2090559169, i32 -336351759]], [7 x [4 x i32]] [[4 x i32] [i32 9, i32 915030984, i32 1260735204, i32 0], [4 x i32] [i32 1919094795, i32 4, i32 8, i32 -543385440], [4 x i32] [i32 4, i32 -6, i32 4, i32 4], [4 x i32] [i32 -1, i32 -1, i32 0, i32 9], [4 x i32] [i32 2, i32 9, i32 8, i32 -6], [4 x i32] [i32 2090559169, i32 0, i32 -428554384, i32 8], [4 x i32] [i32 9, i32 0, i32 0, i32 -6]], [7 x [4 x i32]] [[4 x i32] [i32 0, i32 9, i32 4, i32 9], [4 x i32] [i32 4, i32 -1, i32 8, i32 4], [4 x i32] [i32 4, i32 -6, i32 -787671296, i32 -543385440], [4 x i32] [i32 0, i32 4, i32 2090559169, i32 0], [4 x i32] [i32 -428554384, i32 915030984, i32 -428554384, i32 -336351759], [4 x i32] [i32 1919094795, i32 4, i32 6, i32 -543385440], [4 x i32] [i32 2, i32 1776249092, i32 4, i32 4]], [7 x [4 x i32]] [[4 x i32] [i32 8, i32 -1, i32 4, i32 -428554384], [4 x i32] [i32 2, i32 -3, i32 6, i32 -6], [4 x i32] [i32 1919094795, i32 8, i32 -428554384, i32 0], [4 x i32] [i32 -428554384, i32 0, i32 2090559169, i32 1776249092], [4 x i32] [i32 0, i32 -3, i32 -787671296, i32 9], [4 x i32] [i32 4, i32 8, i32 8, i32 4], [4 x i32] [i32 4, i32 -6, i32 4, i32 -724727058]]], align 16
@g_2892 = internal global i8** @g_1229, align 8
@func_1.l_2274 = private unnamed_addr constant %union.U0 { i64 2 }, align 8
@func_1.l_2855 = private unnamed_addr constant [9 x [7 x i32]] [[7 x i32] [i32 -1, i32 -989255715, i32 1848622365, i32 -6, i32 -6, i32 1848622365, i32 -989255715], [7 x i32] [i32 1848622365, i32 0, i32 -989255715, i32 0, i32 5, i32 1, i32 -1], [7 x i32] [i32 1848622365, i32 2007276967, i32 0, i32 -1, i32 665941614, i32 -1, i32 1], [7 x i32] [i32 1, i32 0, i32 0, i32 -6, i32 -1, i32 5, i32 1], [7 x i32] [i32 -1, i32 1, i32 1848622365, i32 1848622365, i32 1, i32 -1, i32 1], [7 x i32] [i32 -1, i32 1848622365, i32 0, i32 1, i32 2007276967, i32 -1, i32 -1], [7 x i32] [i32 -6, i32 2007276967, i32 665941614, i32 2007276967, i32 -6, i32 5, i32 -1], [7 x i32] [i32 0, i32 1848622365, i32 -1, i32 0, i32 -6, i32 -1, i32 -6], [7 x i32] [i32 -989255715, i32 1, i32 1, i32 -989255715, i32 2007276967, i32 0, i32 0]], align 16
@g_1601 = internal global i32*** @g_1602, align 8
@g_1229 = internal global i8* bitcast (%union.U2* @g_104 to i8*), align 8
@g_2615 = internal global i8* @g_212, align 8
@g_913 = internal global %union.U0* @g_136, align 8
@g_2395 = internal global i32**** @g_2396, align 8
@g_39 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_2 to i8*), i64 4) to i32*), align 8
@g_1602 = internal global i32** @g_39, align 8
@g_2396 = internal global i32*** @g_2397, align 8
@g_2397 = internal global i32** @g_2398, align 8
@g_2398 = internal global i32* getelementptr inbounds (%union.U2, %union.U2* @g_770, i32 0, i32 0), align 8
@.str.125 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %107, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %110

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* @g_2, i32 0, i64 %96
  %98 = load i32, i32* %97, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %100)
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

; <label>:103                                     ; preds = %94
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %104)
  br label %106

; <label>:106                                     ; preds = %103, %94
  br label %107

; <label>:107                                     ; preds = %106
  %108 = load i32, i32* %i, align 4, !tbaa !1
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:110                                     ; preds = %91
  %111 = load i32, i32* @g_6, align 4, !tbaa !1
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %113)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %114

; <label>:114                                     ; preds = %142, %110
  %115 = load i32, i32* %i, align 4, !tbaa !1
  %116 = icmp slt i32 %115, 4
  br i1 %116, label %117, label %145

; <label>:117                                     ; preds = %114
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %118

; <label>:118                                     ; preds = %138, %117
  %119 = load i32, i32* %j, align 4, !tbaa !1
  %120 = icmp slt i32 %119, 2
  br i1 %120, label %121, label %141

; <label>:121                                     ; preds = %118
  %122 = load i32, i32* %j, align 4, !tbaa !1
  %123 = sext i32 %122 to i64
  %124 = load i32, i32* %i, align 4, !tbaa !1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x [2 x i16]], [4 x [2 x i16]]* @g_25, i32 0, i64 %125
  %127 = getelementptr inbounds [2 x i16], [2 x i16]* %126, i32 0, i64 %123
  %128 = load i16, i16* %127, align 2, !tbaa !10
  %129 = zext i16 %128 to i64
  %130 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %130)
  %131 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

; <label>:133                                     ; preds = %121
  %134 = load i32, i32* %i, align 4, !tbaa !1
  %135 = load i32, i32* %j, align 4, !tbaa !1
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %134, i32 %135)
  br label %137

; <label>:137                                     ; preds = %133, %121
  br label %138

; <label>:138                                     ; preds = %137
  %139 = load i32, i32* %j, align 4, !tbaa !1
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %j, align 4, !tbaa !1
  br label %118

; <label>:141                                     ; preds = %118
  br label %142

; <label>:142                                     ; preds = %141
  %143 = load i32, i32* %i, align 4, !tbaa !1
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %i, align 4, !tbaa !1
  br label %114

; <label>:145                                     ; preds = %114
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %146

; <label>:146                                     ; preds = %162, %145
  %147 = load i32, i32* %i, align 4, !tbaa !1
  %148 = icmp slt i32 %147, 7
  br i1 %148, label %149, label %165

; <label>:149                                     ; preds = %146
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [7 x i32], [7 x i32]* @g_26, i32 0, i64 %151
  %153 = load i32, i32* %152, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %155)
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

; <label>:158                                     ; preds = %149
  %159 = load i32, i32* %i, align 4, !tbaa !1
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %159)
  br label %161

; <label>:161                                     ; preds = %158, %149
  br label %162

; <label>:162                                     ; preds = %161
  %163 = load i32, i32* %i, align 4, !tbaa !1
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %i, align 4, !tbaa !1
  br label %146

; <label>:165                                     ; preds = %146
  %166 = load i32, i32* @g_71, align 4, !tbaa !1
  %167 = sext i32 %166 to i64
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %168)
  %169 = load volatile i16, i16* @g_86, align 2, !tbaa !10
  %170 = zext i16 %169 to i64
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %171)
  %172 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_104, i32 0, i32 0), align 4, !tbaa !1
  %173 = zext i32 %172 to i64
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %174)
  %175 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_104, i32 0, i32 0), align 4
  %176 = shl i32 %175, 4
  %177 = ashr i32 %176, 4
  %178 = sext i32 %177 to i64
  %179 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %179)
  %180 = load i8, i8* bitcast (%union.U2* @g_104 to i8*), align 1, !tbaa !9
  %181 = zext i8 %180 to i64
  %182 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %181, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %182)
  %183 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_104, i32 0, i32 0), align 4, !tbaa !1
  %184 = sext i32 %183 to i64
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %185)
  %186 = load i8, i8* bitcast (%union.U2* @g_104 to i8*), align 1, !tbaa !9
  %187 = sext i8 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %188)
  %189 = load i32, i32* @g_112, align 4, !tbaa !1
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %191)
  %192 = load i32, i32* @g_130, align 4, !tbaa !1
  %193 = zext i32 %192 to i64
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %194)
  %195 = load i32, i32* @g_133, align 4, !tbaa !1
  %196 = zext i32 %195 to i64
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %197)
  %198 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_136, i32 0, i32 0), align 8, !tbaa !7
  %199 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %198, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %199)
  %200 = load i32, i32* bitcast (%union.U0* @g_136 to i32*), align 4, !tbaa !1
  %201 = zext i32 %200 to i64
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %202)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %203

; <label>:203                                     ; preds = %231, %165
  %204 = load i32, i32* %i, align 4, !tbaa !1
  %205 = icmp slt i32 %204, 8
  br i1 %205, label %206, label %234

; <label>:206                                     ; preds = %203
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %207

; <label>:207                                     ; preds = %227, %206
  %208 = load i32, i32* %j, align 4, !tbaa !1
  %209 = icmp slt i32 %208, 2
  br i1 %209, label %210, label %230

; <label>:210                                     ; preds = %207
  %211 = load i32, i32* %j, align 4, !tbaa !1
  %212 = sext i32 %211 to i64
  %213 = load i32, i32* %i, align 4, !tbaa !1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [8 x [2 x i16]], [8 x [2 x i16]]* @g_180, i32 0, i64 %214
  %216 = getelementptr inbounds [2 x i16], [2 x i16]* %215, i32 0, i64 %212
  %217 = load i16, i16* %216, align 2, !tbaa !10
  %218 = zext i16 %217 to i64
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 %219)
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

; <label>:222                                     ; preds = %210
  %223 = load i32, i32* %i, align 4, !tbaa !1
  %224 = load i32, i32* %j, align 4, !tbaa !1
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %223, i32 %224)
  br label %226

; <label>:226                                     ; preds = %222, %210
  br label %227

; <label>:227                                     ; preds = %226
  %228 = load i32, i32* %j, align 4, !tbaa !1
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %j, align 4, !tbaa !1
  br label %207

; <label>:230                                     ; preds = %207
  br label %231

; <label>:231                                     ; preds = %230
  %232 = load i32, i32* %i, align 4, !tbaa !1
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %i, align 4, !tbaa !1
  br label %203

; <label>:234                                     ; preds = %203
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %235

; <label>:235                                     ; preds = %275, %234
  %236 = load i32, i32* %i, align 4, !tbaa !1
  %237 = icmp slt i32 %236, 10
  br i1 %237, label %238, label %278

; <label>:238                                     ; preds = %235
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %239

; <label>:239                                     ; preds = %271, %238
  %240 = load i32, i32* %j, align 4, !tbaa !1
  %241 = icmp slt i32 %240, 8
  br i1 %241, label %242, label %274

; <label>:242                                     ; preds = %239
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %243

; <label>:243                                     ; preds = %267, %242
  %244 = load i32, i32* %k, align 4, !tbaa !1
  %245 = icmp slt i32 %244, 3
  br i1 %245, label %246, label %270

; <label>:246                                     ; preds = %243
  %247 = load i32, i32* %k, align 4, !tbaa !1
  %248 = sext i32 %247 to i64
  %249 = load i32, i32* %j, align 4, !tbaa !1
  %250 = sext i32 %249 to i64
  %251 = load i32, i32* %i, align 4, !tbaa !1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [10 x [8 x [3 x i32]]], [10 x [8 x [3 x i32]]]* @g_188, i32 0, i64 %252
  %254 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* %253, i32 0, i64 %250
  %255 = getelementptr inbounds [3 x i32], [3 x i32]* %254, i32 0, i64 %248
  %256 = load i32, i32* %255, align 4, !tbaa !1
  %257 = sext i32 %256 to i64
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 %258)
  %259 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %266

; <label>:261                                     ; preds = %246
  %262 = load i32, i32* %i, align 4, !tbaa !1
  %263 = load i32, i32* %j, align 4, !tbaa !1
  %264 = load i32, i32* %k, align 4, !tbaa !1
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i32 %262, i32 %263, i32 %264)
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
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %279

; <label>:279                                     ; preds = %307, %278
  %280 = load i32, i32* %i, align 4, !tbaa !1
  %281 = icmp slt i32 %280, 4
  br i1 %281, label %282, label %310

; <label>:282                                     ; preds = %279
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %283

; <label>:283                                     ; preds = %303, %282
  %284 = load i32, i32* %j, align 4, !tbaa !1
  %285 = icmp slt i32 %284, 8
  br i1 %285, label %286, label %306

; <label>:286                                     ; preds = %283
  %287 = load i32, i32* %j, align 4, !tbaa !1
  %288 = sext i32 %287 to i64
  %289 = load i32, i32* %i, align 4, !tbaa !1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [4 x [8 x i16]], [4 x [8 x i16]]* @g_204, i32 0, i64 %290
  %292 = getelementptr inbounds [8 x i16], [8 x i16]* %291, i32 0, i64 %288
  %293 = load i16, i16* %292, align 2, !tbaa !10
  %294 = zext i16 %293 to i64
  %295 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %294, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 %295)
  %296 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %302

; <label>:298                                     ; preds = %286
  %299 = load i32, i32* %i, align 4, !tbaa !1
  %300 = load i32, i32* %j, align 4, !tbaa !1
  %301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %299, i32 %300)
  br label %302

; <label>:302                                     ; preds = %298, %286
  br label %303

; <label>:303                                     ; preds = %302
  %304 = load i32, i32* %j, align 4, !tbaa !1
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %j, align 4, !tbaa !1
  br label %283

; <label>:306                                     ; preds = %283
  br label %307

; <label>:307                                     ; preds = %306
  %308 = load i32, i32* %i, align 4, !tbaa !1
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %i, align 4, !tbaa !1
  br label %279

; <label>:310                                     ; preds = %279
  %311 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 8743, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %311)
  %312 = load i8, i8* @g_212, align 1, !tbaa !9
  %313 = zext i8 %312 to i64
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %314)
  %315 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_220, i32 0, i32 0), align 2, !tbaa !10
  %316 = zext i16 %315 to i64
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %317)
  %318 = load i16, i16* @g_222, align 2, !tbaa !10
  %319 = sext i16 %318 to i64
  %320 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %319, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %320)
  %321 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_246, i32 0, i32 0), align 2, !tbaa !10
  %322 = zext i16 %321 to i64
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %322, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %323)
  %324 = load volatile i64, i64* @g_304, align 8, !tbaa !7
  %325 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %324, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %325)
  %326 = load volatile i32, i32* @g_313, align 4, !tbaa !1
  %327 = sext i32 %326 to i64
  %328 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %327, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %328)
  %329 = load volatile i32, i32* @g_315, align 4, !tbaa !1
  %330 = sext i32 %329 to i64
  %331 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %330, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %331)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %332

; <label>:332                                     ; preds = %348, %310
  %333 = load i32, i32* %i, align 4, !tbaa !1
  %334 = icmp slt i32 %333, 2
  br i1 %334, label %335, label %351

; <label>:335                                     ; preds = %332
  %336 = load i32, i32* %i, align 4, !tbaa !1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [2 x i32], [2 x i32]* @g_317, i32 0, i64 %337
  %339 = load i32, i32* %338, align 4, !tbaa !1
  %340 = sext i32 %339 to i64
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %341)
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %347

; <label>:344                                     ; preds = %335
  %345 = load i32, i32* %i, align 4, !tbaa !1
  %346 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %345)
  br label %347

; <label>:347                                     ; preds = %344, %335
  br label %348

; <label>:348                                     ; preds = %347
  %349 = load i32, i32* %i, align 4, !tbaa !1
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %i, align 4, !tbaa !1
  br label %332

; <label>:351                                     ; preds = %332
  %352 = load volatile i64, i64* @g_319, align 8, !tbaa !7
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %352, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %353)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %354

; <label>:354                                     ; preds = %393, %351
  %355 = load i32, i32* %i, align 4, !tbaa !1
  %356 = icmp slt i32 %355, 1
  br i1 %356, label %357, label %396

; <label>:357                                     ; preds = %354
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %358

; <label>:358                                     ; preds = %389, %357
  %359 = load i32, i32* %j, align 4, !tbaa !1
  %360 = icmp slt i32 %359, 7
  br i1 %360, label %361, label %392

; <label>:361                                     ; preds = %358
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %362

; <label>:362                                     ; preds = %385, %361
  %363 = load i32, i32* %k, align 4, !tbaa !1
  %364 = icmp slt i32 %363, 8
  br i1 %364, label %365, label %388

; <label>:365                                     ; preds = %362
  %366 = load i32, i32* %k, align 4, !tbaa !1
  %367 = sext i32 %366 to i64
  %368 = load i32, i32* %j, align 4, !tbaa !1
  %369 = sext i32 %368 to i64
  %370 = load i32, i32* %i, align 4, !tbaa !1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [1 x [7 x [8 x i64]]], [1 x [7 x [8 x i64]]]* @g_339, i32 0, i64 %371
  %373 = getelementptr inbounds [7 x [8 x i64]], [7 x [8 x i64]]* %372, i32 0, i64 %369
  %374 = getelementptr inbounds [8 x i64], [8 x i64]* %373, i32 0, i64 %367
  %375 = load i64, i64* %374, align 8, !tbaa !7
  %376 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %375, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32 %376)
  %377 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %384

; <label>:379                                     ; preds = %365
  %380 = load i32, i32* %i, align 4, !tbaa !1
  %381 = load i32, i32* %j, align 4, !tbaa !1
  %382 = load i32, i32* %k, align 4, !tbaa !1
  %383 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i32 %380, i32 %381, i32 %382)
  br label %384

; <label>:384                                     ; preds = %379, %365
  br label %385

; <label>:385                                     ; preds = %384
  %386 = load i32, i32* %k, align 4, !tbaa !1
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %k, align 4, !tbaa !1
  br label %362

; <label>:388                                     ; preds = %362
  br label %389

; <label>:389                                     ; preds = %388
  %390 = load i32, i32* %j, align 4, !tbaa !1
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %j, align 4, !tbaa !1
  br label %358

; <label>:392                                     ; preds = %358
  br label %393

; <label>:393                                     ; preds = %392
  %394 = load i32, i32* %i, align 4, !tbaa !1
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %i, align 4, !tbaa !1
  br label %354

; <label>:396                                     ; preds = %354
  %397 = load volatile i32, i32* @g_343, align 4, !tbaa !1
  %398 = zext i32 %397 to i64
  %399 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %398, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %399)
  %400 = load i8, i8* @g_360, align 1, !tbaa !9
  %401 = zext i8 %400 to i64
  %402 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %401, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %402)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %403

; <label>:403                                     ; preds = %443, %396
  %404 = load i32, i32* %i, align 4, !tbaa !1
  %405 = icmp slt i32 %404, 10
  br i1 %405, label %406, label %446

; <label>:406                                     ; preds = %403
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %407

; <label>:407                                     ; preds = %439, %406
  %408 = load i32, i32* %j, align 4, !tbaa !1
  %409 = icmp slt i32 %408, 9
  br i1 %409, label %410, label %442

; <label>:410                                     ; preds = %407
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %411

; <label>:411                                     ; preds = %435, %410
  %412 = load i32, i32* %k, align 4, !tbaa !1
  %413 = icmp slt i32 %412, 2
  br i1 %413, label %414, label %438

; <label>:414                                     ; preds = %411
  %415 = load i32, i32* %k, align 4, !tbaa !1
  %416 = sext i32 %415 to i64
  %417 = load i32, i32* %j, align 4, !tbaa !1
  %418 = sext i32 %417 to i64
  %419 = load i32, i32* %i, align 4, !tbaa !1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [10 x [9 x [2 x i32]]], [10 x [9 x [2 x i32]]]* @g_444, i32 0, i64 %420
  %422 = getelementptr inbounds [9 x [2 x i32]], [9 x [2 x i32]]* %421, i32 0, i64 %418
  %423 = getelementptr inbounds [2 x i32], [2 x i32]* %422, i32 0, i64 %416
  %424 = load i32, i32* %423, align 4, !tbaa !1
  %425 = sext i32 %424 to i64
  %426 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %425, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i32 %426)
  %427 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %434

; <label>:429                                     ; preds = %414
  %430 = load i32, i32* %i, align 4, !tbaa !1
  %431 = load i32, i32* %j, align 4, !tbaa !1
  %432 = load i32, i32* %k, align 4, !tbaa !1
  %433 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i32 %430, i32 %431, i32 %432)
  br label %434

; <label>:434                                     ; preds = %429, %414
  br label %435

; <label>:435                                     ; preds = %434
  %436 = load i32, i32* %k, align 4, !tbaa !1
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %k, align 4, !tbaa !1
  br label %411

; <label>:438                                     ; preds = %411
  br label %439

; <label>:439                                     ; preds = %438
  %440 = load i32, i32* %j, align 4, !tbaa !1
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %j, align 4, !tbaa !1
  br label %407

; <label>:442                                     ; preds = %407
  br label %443

; <label>:443                                     ; preds = %442
  %444 = load i32, i32* %i, align 4, !tbaa !1
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %i, align 4, !tbaa !1
  br label %403

; <label>:446                                     ; preds = %403
  %447 = load i64, i64* @g_483, align 8, !tbaa !7
  %448 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %447, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %448)
  %449 = load i16, i16* @g_558, align 2, !tbaa !10
  %450 = sext i16 %449 to i64
  %451 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %450, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %451)
  %452 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_586, i32 0, i32 0), align 2, !tbaa !10
  %453 = zext i16 %452 to i64
  %454 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %453, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 %454)
  %455 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_605, i32 0, i32 0), align 4, !tbaa !1
  %456 = zext i32 %455 to i64
  %457 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %456, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 %457)
  %458 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_605, i32 0, i32 0), align 4
  %459 = shl i32 %458, 4
  %460 = ashr i32 %459, 4
  %461 = sext i32 %460 to i64
  %462 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %461, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %462)
  %463 = load i8, i8* bitcast (%union.U2* @g_605 to i8*), align 1, !tbaa !9
  %464 = zext i8 %463 to i64
  %465 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %464, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 %465)
  %466 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_605, i32 0, i32 0), align 4, !tbaa !1
  %467 = sext i32 %466 to i64
  %468 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %467, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %468)
  %469 = load i8, i8* bitcast (%union.U2* @g_605 to i8*), align 1, !tbaa !9
  %470 = sext i8 %469 to i64
  %471 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %470, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %471)
  %472 = load volatile i32, i32* @g_666, align 4, !tbaa !1
  %473 = sext i32 %472 to i64
  %474 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %473, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %474)
  %475 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_768, i32 0, i32 0), align 4, !tbaa !1
  %476 = zext i32 %475 to i64
  %477 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %476, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 %477)
  %478 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_768, i32 0, i32 0), align 4
  %479 = shl i32 %478, 4
  %480 = ashr i32 %479, 4
  %481 = sext i32 %480 to i64
  %482 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %481, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 %482)
  %483 = load i8, i8* bitcast (%union.U2* @g_768 to i8*), align 1, !tbaa !9
  %484 = zext i8 %483 to i64
  %485 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %484, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 %485)
  %486 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_768, i32 0, i32 0), align 4, !tbaa !1
  %487 = sext i32 %486 to i64
  %488 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %487, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 %488)
  %489 = load i8, i8* bitcast (%union.U2* @g_768 to i8*), align 1, !tbaa !9
  %490 = sext i8 %489 to i64
  %491 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %490, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 %491)
  %492 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_770, i32 0, i32 0), align 4, !tbaa !1
  %493 = zext i32 %492 to i64
  %494 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %493, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %494)
  %495 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_770, i32 0, i32 0), align 4
  %496 = shl i32 %495, 4
  %497 = ashr i32 %496, 4
  %498 = sext i32 %497 to i64
  %499 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %498, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 %499)
  %500 = load i8, i8* bitcast (%union.U2* @g_770 to i8*), align 1, !tbaa !9
  %501 = zext i8 %500 to i64
  %502 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %501, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 %502)
  %503 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_770, i32 0, i32 0), align 4, !tbaa !1
  %504 = sext i32 %503 to i64
  %505 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %504, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 %505)
  %506 = load i8, i8* bitcast (%union.U2* @g_770 to i8*), align 1, !tbaa !9
  %507 = sext i8 %506 to i64
  %508 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %507, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 %508)
  %509 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_775, i32 0, i32 0), align 4, !tbaa !1
  %510 = zext i32 %509 to i64
  %511 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %510, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i32 %511)
  %512 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_775, i32 0, i32 0), align 4
  %513 = shl i32 %512, 4
  %514 = ashr i32 %513, 4
  %515 = sext i32 %514 to i64
  %516 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %515, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 %516)
  %517 = load i8, i8* bitcast (%union.U2* @g_775 to i8*), align 1, !tbaa !9
  %518 = zext i8 %517 to i64
  %519 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %518, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i32 %519)
  %520 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_775, i32 0, i32 0), align 4, !tbaa !1
  %521 = sext i32 %520 to i64
  %522 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %521, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i32 %522)
  %523 = load i8, i8* bitcast (%union.U2* @g_775 to i8*), align 1, !tbaa !9
  %524 = sext i8 %523 to i64
  %525 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %524, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i32 %525)
  %526 = load volatile i32, i32* @g_820, align 4, !tbaa !1
  %527 = sext i32 %526 to i64
  %528 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %527, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i32 %528)
  %529 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_887, i32 0, i32 0), align 2, !tbaa !10
  %530 = zext i16 %529 to i64
  %531 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %530, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i32 %531)
  %532 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_907, i32 0, i32 0), align 2, !tbaa !10
  %533 = zext i16 %532 to i64
  %534 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %533, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 %534)
  %535 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_936, i32 0, i32 0), align 2, !tbaa !10
  %536 = zext i16 %535 to i64
  %537 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %536, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i32 %537)
  %538 = load i64, i64* @g_1036, align 8, !tbaa !7
  %539 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %538, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 %539)
  %540 = load volatile i64, i64* @g_1098, align 8, !tbaa !7
  %541 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %540, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %541)
  %542 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_1221, i32 0, i32 0), align 2, !tbaa !10
  %543 = zext i16 %542 to i64
  %544 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %543, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 %544)
  %545 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_1233, i32 0, i32 0), align 2, !tbaa !10
  %546 = zext i16 %545 to i64
  %547 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %546, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i32 %547)
  %548 = load volatile i16, i16* @g_1357, align 2, !tbaa !10
  %549 = sext i16 %548 to i64
  %550 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %549, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 %550)
  %551 = load i16, i16* @g_1359, align 2, !tbaa !10
  %552 = sext i16 %551 to i64
  %553 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %552, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 %553)
  %554 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_1393, i32 0, i32 0), align 2, !tbaa !10
  %555 = zext i16 %554 to i64
  %556 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %555, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 %556)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %557

; <label>:557                                     ; preds = %573, %446
  %558 = load i32, i32* %i, align 4, !tbaa !1
  %559 = icmp slt i32 %558, 3
  br i1 %559, label %560, label %576

; <label>:560                                     ; preds = %557
  %561 = load i32, i32* %i, align 4, !tbaa !1
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [3 x i16], [3 x i16]* @g_1414, i32 0, i64 %562
  %564 = load i16, i16* %563, align 2, !tbaa !10
  %565 = sext i16 %564 to i64
  %566 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %565, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 %566)
  %567 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %572

; <label>:569                                     ; preds = %560
  %570 = load i32, i32* %i, align 4, !tbaa !1
  %571 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %570)
  br label %572

; <label>:572                                     ; preds = %569, %560
  br label %573

; <label>:573                                     ; preds = %572
  %574 = load i32, i32* %i, align 4, !tbaa !1
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* %i, align 4, !tbaa !1
  br label %557

; <label>:576                                     ; preds = %557
  %577 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_1426, i32 0, i32 0), align 2, !tbaa !10
  %578 = zext i16 %577 to i64
  %579 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %578, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i32 %579)
  %580 = load volatile i32, i32* @g_1469, align 4, !tbaa !1
  %581 = sext i32 %580 to i64
  %582 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %581, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 %582)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %583

; <label>:583                                     ; preds = %599, %576
  %584 = load i32, i32* %i, align 4, !tbaa !1
  %585 = icmp slt i32 %584, 5
  br i1 %585, label %586, label %602

; <label>:586                                     ; preds = %583
  %587 = load i32, i32* %i, align 4, !tbaa !1
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [5 x i32], [5 x i32]* @g_1475, i32 0, i64 %588
  %590 = load i32, i32* %589, align 4, !tbaa !1
  %591 = sext i32 %590 to i64
  %592 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %591, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32 %592)
  %593 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %598

; <label>:595                                     ; preds = %586
  %596 = load i32, i32* %i, align 4, !tbaa !1
  %597 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %596)
  br label %598

; <label>:598                                     ; preds = %595, %586
  br label %599

; <label>:599                                     ; preds = %598
  %600 = load i32, i32* %i, align 4, !tbaa !1
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %i, align 4, !tbaa !1
  br label %583

; <label>:602                                     ; preds = %583
  %603 = load i32, i32* @g_1563, align 4, !tbaa !1
  %604 = zext i32 %603 to i64
  %605 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %604, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 %605)
  %606 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_1626, i32 0, i32 0), align 2, !tbaa !10
  %607 = zext i16 %606 to i64
  %608 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %607, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 %608)
  %609 = load i32, i32* @g_1767, align 4, !tbaa !1
  %610 = zext i32 %609 to i64
  %611 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %610, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 %611)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %612

; <label>:612                                     ; preds = %635, %602
  %613 = load i32, i32* %i, align 4, !tbaa !1
  %614 = icmp slt i32 %613, 5
  br i1 %614, label %615, label %638

; <label>:615                                     ; preds = %612
  %616 = load i32, i32* %i, align 4, !tbaa !1
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [5 x %union.U0], [5 x %union.U0]* @g_1784, i32 0, i64 %617
  %619 = bitcast %union.U0* %618 to i64*
  %620 = load i64, i64* %619, align 8, !tbaa !7
  %621 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %620, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i32 0, i32 0), i32 %621)
  %622 = load i32, i32* %i, align 4, !tbaa !1
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds [5 x %union.U0], [5 x %union.U0]* @g_1784, i32 0, i64 %623
  %625 = bitcast %union.U0* %624 to i32*
  %626 = load i32, i32* %625, align 4, !tbaa !1
  %627 = zext i32 %626 to i64
  %628 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %627, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0), i32 %628)
  %629 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %634

; <label>:631                                     ; preds = %615
  %632 = load i32, i32* %i, align 4, !tbaa !1
  %633 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %632)
  br label %634

; <label>:634                                     ; preds = %631, %615
  br label %635

; <label>:635                                     ; preds = %634
  %636 = load i32, i32* %i, align 4, !tbaa !1
  %637 = add nsw i32 %636, 1
  store i32 %637, i32* %i, align 4, !tbaa !1
  br label %612

; <label>:638                                     ; preds = %612
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %639

; <label>:639                                     ; preds = %667, %638
  %640 = load i32, i32* %i, align 4, !tbaa !1
  %641 = icmp slt i32 %640, 1
  br i1 %641, label %642, label %670

; <label>:642                                     ; preds = %639
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %643

; <label>:643                                     ; preds = %663, %642
  %644 = load i32, i32* %j, align 4, !tbaa !1
  %645 = icmp slt i32 %644, 1
  br i1 %645, label %646, label %666

; <label>:646                                     ; preds = %643
  %647 = load i32, i32* %j, align 4, !tbaa !1
  %648 = sext i32 %647 to i64
  %649 = load i32, i32* %i, align 4, !tbaa !1
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* @g_1791, i32 0, i64 %650
  %652 = getelementptr inbounds [1 x i32], [1 x i32]* %651, i32 0, i64 %648
  %653 = load volatile i32, i32* %652, align 4, !tbaa !1
  %654 = sext i32 %653 to i64
  %655 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %654, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i32 0, i32 0), i32 %655)
  %656 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %662

; <label>:658                                     ; preds = %646
  %659 = load i32, i32* %i, align 4, !tbaa !1
  %660 = load i32, i32* %j, align 4, !tbaa !1
  %661 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %659, i32 %660)
  br label %662

; <label>:662                                     ; preds = %658, %646
  br label %663

; <label>:663                                     ; preds = %662
  %664 = load i32, i32* %j, align 4, !tbaa !1
  %665 = add nsw i32 %664, 1
  store i32 %665, i32* %j, align 4, !tbaa !1
  br label %643

; <label>:666                                     ; preds = %643
  br label %667

; <label>:667                                     ; preds = %666
  %668 = load i32, i32* %i, align 4, !tbaa !1
  %669 = add nsw i32 %668, 1
  store i32 %669, i32* %i, align 4, !tbaa !1
  br label %639

; <label>:670                                     ; preds = %639
  %671 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_1813, i32 0, i32 0), align 4, !tbaa !1
  %672 = zext i32 %671 to i64
  %673 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %672, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 %673)
  %674 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_1813, i32 0, i32 0), align 4
  %675 = shl i32 %674, 4
  %676 = ashr i32 %675, 4
  %677 = sext i32 %676 to i64
  %678 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %677, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i32 %678)
  %679 = load i8, i8* bitcast (%union.U2* @g_1813 to i8*), align 1, !tbaa !9
  %680 = zext i8 %679 to i64
  %681 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %680, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i32 %681)
  %682 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_1813, i32 0, i32 0), align 4, !tbaa !1
  %683 = sext i32 %682 to i64
  %684 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %683, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i32 %684)
  %685 = load i8, i8* bitcast (%union.U2* @g_1813 to i8*), align 1, !tbaa !9
  %686 = sext i8 %685 to i64
  %687 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %686, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i32 %687)
  %688 = load i8, i8* @g_1850, align 1, !tbaa !9
  %689 = sext i8 %688 to i64
  %690 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %689, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i32 %690)
  %691 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_1896, i32 0, i32 0), align 2, !tbaa !10
  %692 = zext i16 %691 to i64
  %693 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %692, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i32 %693)
  %694 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_2010, i32 0, i32 0), align 4, !tbaa !1
  %695 = zext i32 %694 to i64
  %696 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %695, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), i32 %696)
  %697 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_2010, i32 0, i32 0), align 4
  %698 = shl i32 %697, 4
  %699 = ashr i32 %698, 4
  %700 = sext i32 %699 to i64
  %701 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %700, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i32 %701)
  %702 = load i8, i8* bitcast (%union.U2* @g_2010 to i8*), align 1, !tbaa !9
  %703 = zext i8 %702 to i64
  %704 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %703, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0), i32 %704)
  %705 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_2010, i32 0, i32 0), align 4, !tbaa !1
  %706 = sext i32 %705 to i64
  %707 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %706, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i32 %707)
  %708 = load i8, i8* bitcast (%union.U2* @g_2010 to i8*), align 1, !tbaa !9
  %709 = sext i8 %708 to i64
  %710 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %709, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i32 %710)
  %711 = load volatile i16, i16* @g_2012, align 2, !tbaa !10
  %712 = zext i16 %711 to i64
  %713 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %712, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), i32 %713)
  %714 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_2061, i32 0, i32 0), align 2, !tbaa !10
  %715 = zext i16 %714 to i64
  %716 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %715, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i32 %716)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %717

; <label>:717                                     ; preds = %812, %670
  %718 = load i32, i32* %i, align 4, !tbaa !1
  %719 = icmp slt i32 %718, 8
  br i1 %719, label %720, label %815

; <label>:720                                     ; preds = %717
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %721

; <label>:721                                     ; preds = %808, %720
  %722 = load i32, i32* %j, align 4, !tbaa !1
  %723 = icmp slt i32 %722, 1
  br i1 %723, label %724, label %811

; <label>:724                                     ; preds = %721
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %725

; <label>:725                                     ; preds = %804, %724
  %726 = load i32, i32* %k, align 4, !tbaa !1
  %727 = icmp slt i32 %726, 9
  br i1 %727, label %728, label %807

; <label>:728                                     ; preds = %725
  %729 = load i32, i32* %k, align 4, !tbaa !1
  %730 = sext i32 %729 to i64
  %731 = load i32, i32* %j, align 4, !tbaa !1
  %732 = sext i32 %731 to i64
  %733 = load i32, i32* %i, align 4, !tbaa !1
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds [8 x [1 x [9 x %union.U2]]], [8 x [1 x [9 x %union.U2]]]* @g_2068, i32 0, i64 %734
  %736 = getelementptr inbounds [1 x [9 x %union.U2]], [1 x [9 x %union.U2]]* %735, i32 0, i64 %732
  %737 = getelementptr inbounds [9 x %union.U2], [9 x %union.U2]* %736, i32 0, i64 %730
  %738 = bitcast %union.U2* %737 to i32*
  %739 = load volatile i32, i32* %738, align 4, !tbaa !1
  %740 = zext i32 %739 to i64
  %741 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %740, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i32 0, i32 0), i32 %741)
  %742 = load i32, i32* %k, align 4, !tbaa !1
  %743 = sext i32 %742 to i64
  %744 = load i32, i32* %j, align 4, !tbaa !1
  %745 = sext i32 %744 to i64
  %746 = load i32, i32* %i, align 4, !tbaa !1
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds [8 x [1 x [9 x %union.U2]]], [8 x [1 x [9 x %union.U2]]]* @g_2068, i32 0, i64 %747
  %749 = getelementptr inbounds [1 x [9 x %union.U2]], [1 x [9 x %union.U2]]* %748, i32 0, i64 %745
  %750 = getelementptr inbounds [9 x %union.U2], [9 x %union.U2]* %749, i32 0, i64 %743
  %751 = bitcast %union.U2* %750 to i32*
  %752 = load volatile i32, i32* %751, align 4
  %753 = shl i32 %752, 4
  %754 = ashr i32 %753, 4
  %755 = sext i32 %754 to i64
  %756 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %755, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.97, i32 0, i32 0), i32 %756)
  %757 = load i32, i32* %k, align 4, !tbaa !1
  %758 = sext i32 %757 to i64
  %759 = load i32, i32* %j, align 4, !tbaa !1
  %760 = sext i32 %759 to i64
  %761 = load i32, i32* %i, align 4, !tbaa !1
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds [8 x [1 x [9 x %union.U2]]], [8 x [1 x [9 x %union.U2]]]* @g_2068, i32 0, i64 %762
  %764 = getelementptr inbounds [1 x [9 x %union.U2]], [1 x [9 x %union.U2]]* %763, i32 0, i64 %760
  %765 = getelementptr inbounds [9 x %union.U2], [9 x %union.U2]* %764, i32 0, i64 %758
  %766 = bitcast %union.U2* %765 to i8*
  %767 = load volatile i8, i8* %766, align 1, !tbaa !9
  %768 = zext i8 %767 to i64
  %769 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %768, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.98, i32 0, i32 0), i32 %769)
  %770 = load i32, i32* %k, align 4, !tbaa !1
  %771 = sext i32 %770 to i64
  %772 = load i32, i32* %j, align 4, !tbaa !1
  %773 = sext i32 %772 to i64
  %774 = load i32, i32* %i, align 4, !tbaa !1
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds [8 x [1 x [9 x %union.U2]]], [8 x [1 x [9 x %union.U2]]]* @g_2068, i32 0, i64 %775
  %777 = getelementptr inbounds [1 x [9 x %union.U2]], [1 x [9 x %union.U2]]* %776, i32 0, i64 %773
  %778 = getelementptr inbounds [9 x %union.U2], [9 x %union.U2]* %777, i32 0, i64 %771
  %779 = bitcast %union.U2* %778 to i32*
  %780 = load volatile i32, i32* %779, align 4, !tbaa !1
  %781 = sext i32 %780 to i64
  %782 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %781, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.99, i32 0, i32 0), i32 %782)
  %783 = load i32, i32* %k, align 4, !tbaa !1
  %784 = sext i32 %783 to i64
  %785 = load i32, i32* %j, align 4, !tbaa !1
  %786 = sext i32 %785 to i64
  %787 = load i32, i32* %i, align 4, !tbaa !1
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds [8 x [1 x [9 x %union.U2]]], [8 x [1 x [9 x %union.U2]]]* @g_2068, i32 0, i64 %788
  %790 = getelementptr inbounds [1 x [9 x %union.U2]], [1 x [9 x %union.U2]]* %789, i32 0, i64 %786
  %791 = getelementptr inbounds [9 x %union.U2], [9 x %union.U2]* %790, i32 0, i64 %784
  %792 = bitcast %union.U2* %791 to i8*
  %793 = load volatile i8, i8* %792, align 1, !tbaa !9
  %794 = sext i8 %793 to i64
  %795 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %794, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.100, i32 0, i32 0), i32 %795)
  %796 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %798, label %803

; <label>:798                                     ; preds = %728
  %799 = load i32, i32* %i, align 4, !tbaa !1
  %800 = load i32, i32* %j, align 4, !tbaa !1
  %801 = load i32, i32* %k, align 4, !tbaa !1
  %802 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i32 %799, i32 %800, i32 %801)
  br label %803

; <label>:803                                     ; preds = %798, %728
  br label %804

; <label>:804                                     ; preds = %803
  %805 = load i32, i32* %k, align 4, !tbaa !1
  %806 = add nsw i32 %805, 1
  store i32 %806, i32* %k, align 4, !tbaa !1
  br label %725

; <label>:807                                     ; preds = %725
  br label %808

; <label>:808                                     ; preds = %807
  %809 = load i32, i32* %j, align 4, !tbaa !1
  %810 = add nsw i32 %809, 1
  store i32 %810, i32* %j, align 4, !tbaa !1
  br label %721

; <label>:811                                     ; preds = %721
  br label %812

; <label>:812                                     ; preds = %811
  %813 = load i32, i32* %i, align 4, !tbaa !1
  %814 = add nsw i32 %813, 1
  store i32 %814, i32* %i, align 4, !tbaa !1
  br label %717

; <label>:815                                     ; preds = %717
  %816 = load volatile i16, i16* @g_2100, align 2, !tbaa !10
  %817 = sext i16 %816 to i64
  %818 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %817, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i32 %818)
  %819 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_2126, i32 0, i32 0), align 4, !tbaa !1
  %820 = zext i32 %819 to i64
  %821 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %820, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), i32 %821)
  %822 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_2126, i32 0, i32 0), align 4
  %823 = shl i32 %822, 4
  %824 = ashr i32 %823, 4
  %825 = sext i32 %824 to i64
  %826 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %825, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 %826)
  %827 = load i8, i8* bitcast (%union.U2* @g_2126 to i8*), align 1, !tbaa !9
  %828 = zext i8 %827 to i64
  %829 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %828, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i32 %829)
  %830 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_2126, i32 0, i32 0), align 4, !tbaa !1
  %831 = sext i32 %830 to i64
  %832 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %831, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i32 %832)
  %833 = load i8, i8* bitcast (%union.U2* @g_2126 to i8*), align 1, !tbaa !9
  %834 = sext i8 %833 to i64
  %835 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %834, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), i32 %835)
  %836 = load volatile i64, i64* @g_2254, align 8, !tbaa !7
  %837 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %836, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0), i32 %837)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %838

; <label>:838                                     ; preds = %866, %815
  %839 = load i32, i32* %i, align 4, !tbaa !1
  %840 = icmp slt i32 %839, 9
  br i1 %840, label %841, label %869

; <label>:841                                     ; preds = %838
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %842

; <label>:842                                     ; preds = %862, %841
  %843 = load i32, i32* %j, align 4, !tbaa !1
  %844 = icmp slt i32 %843, 10
  br i1 %844, label %845, label %865

; <label>:845                                     ; preds = %842
  %846 = load i32, i32* %j, align 4, !tbaa !1
  %847 = sext i32 %846 to i64
  %848 = load i32, i32* %i, align 4, !tbaa !1
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds [9 x [10 x i8]], [9 x [10 x i8]]* @g_2415, i32 0, i64 %849
  %851 = getelementptr inbounds [10 x i8], [10 x i8]* %850, i32 0, i64 %847
  %852 = load i8, i8* %851, align 1, !tbaa !9
  %853 = sext i8 %852 to i64
  %854 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %853, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i32 0, i32 0), i32 %854)
  %855 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %856 = icmp ne i32 %855, 0
  br i1 %856, label %857, label %861

; <label>:857                                     ; preds = %845
  %858 = load i32, i32* %i, align 4, !tbaa !1
  %859 = load i32, i32* %j, align 4, !tbaa !1
  %860 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %858, i32 %859)
  br label %861

; <label>:861                                     ; preds = %857, %845
  br label %862

; <label>:862                                     ; preds = %861
  %863 = load i32, i32* %j, align 4, !tbaa !1
  %864 = add nsw i32 %863, 1
  store i32 %864, i32* %j, align 4, !tbaa !1
  br label %842

; <label>:865                                     ; preds = %842
  br label %866

; <label>:866                                     ; preds = %865
  %867 = load i32, i32* %i, align 4, !tbaa !1
  %868 = add nsw i32 %867, 1
  store i32 %868, i32* %i, align 4, !tbaa !1
  br label %838

; <label>:869                                     ; preds = %838
  %870 = load volatile i32, i32* @g_2451, align 4, !tbaa !1
  %871 = zext i32 %870 to i64
  %872 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %871, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i32 0, i32 0), i32 %872)
  %873 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_2483, i32 0, i32 0), align 2, !tbaa !10
  %874 = zext i16 %873 to i64
  %875 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %874, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i32 %875)
  %876 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 11710, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i32 %876)
  %877 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -2698416502446070035, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i32 0, i32 0), i32 %877)
  %878 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -182293925, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i32 %878)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %879

; <label>:879                                     ; preds = %920, %869
  %880 = load i32, i32* %i, align 4, !tbaa !1
  %881 = icmp slt i32 %880, 2
  br i1 %881, label %882, label %923

; <label>:882                                     ; preds = %879
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %883

; <label>:883                                     ; preds = %916, %882
  %884 = load i32, i32* %j, align 4, !tbaa !1
  %885 = icmp slt i32 %884, 7
  br i1 %885, label %886, label %919

; <label>:886                                     ; preds = %883
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %887

; <label>:887                                     ; preds = %912, %886
  %888 = load i32, i32* %k, align 4, !tbaa !1
  %889 = icmp slt i32 %888, 1
  br i1 %889, label %890, label %915

; <label>:890                                     ; preds = %887
  %891 = load i32, i32* %k, align 4, !tbaa !1
  %892 = sext i32 %891 to i64
  %893 = load i32, i32* %j, align 4, !tbaa !1
  %894 = sext i32 %893 to i64
  %895 = load i32, i32* %i, align 4, !tbaa !1
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds [2 x [7 x [1 x %union.U1]]], [2 x [7 x [1 x %union.U1]]]* @g_2614, i32 0, i64 %896
  %898 = getelementptr inbounds [7 x [1 x %union.U1]], [7 x [1 x %union.U1]]* %897, i32 0, i64 %894
  %899 = getelementptr inbounds [1 x %union.U1], [1 x %union.U1]* %898, i32 0, i64 %892
  %900 = bitcast %union.U1* %899 to i16*
  %901 = load volatile i16, i16* %900, align 2, !tbaa !10
  %902 = zext i16 %901 to i64
  %903 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %902, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.114, i32 0, i32 0), i32 %903)
  %904 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %905 = icmp ne i32 %904, 0
  br i1 %905, label %906, label %911

; <label>:906                                     ; preds = %890
  %907 = load i32, i32* %i, align 4, !tbaa !1
  %908 = load i32, i32* %j, align 4, !tbaa !1
  %909 = load i32, i32* %k, align 4, !tbaa !1
  %910 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i32 %907, i32 %908, i32 %909)
  br label %911

; <label>:911                                     ; preds = %906, %890
  br label %912

; <label>:912                                     ; preds = %911
  %913 = load i32, i32* %k, align 4, !tbaa !1
  %914 = add nsw i32 %913, 1
  store i32 %914, i32* %k, align 4, !tbaa !1
  br label %887

; <label>:915                                     ; preds = %887
  br label %916

; <label>:916                                     ; preds = %915
  %917 = load i32, i32* %j, align 4, !tbaa !1
  %918 = add nsw i32 %917, 1
  store i32 %918, i32* %j, align 4, !tbaa !1
  br label %883

; <label>:919                                     ; preds = %883
  br label %920

; <label>:920                                     ; preds = %919
  %921 = load i32, i32* %i, align 4, !tbaa !1
  %922 = add nsw i32 %921, 1
  store i32 %922, i32* %i, align 4, !tbaa !1
  br label %879

; <label>:923                                     ; preds = %879
  %924 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_2724, i32 0, i32 0), align 2, !tbaa !10
  %925 = zext i16 %924 to i64
  %926 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %925, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i32 0, i32 0), i32 %926)
  %927 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2822, i32 0, i32 0), align 8, !tbaa !7
  %928 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %927, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0), i32 %928)
  %929 = load i32, i32* bitcast (%union.U0* @g_2822 to i32*), align 4, !tbaa !1
  %930 = zext i32 %929 to i64
  %931 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %930, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i32 %931)
  %932 = load volatile i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_2889, i32 0, i32 0), align 2, !tbaa !10
  %933 = zext i16 %932 to i64
  %934 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %933, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i32 0, i32 0), i32 %934)
  %935 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_2905, i32 0, i32 0), align 4, !tbaa !1
  %936 = zext i32 %935 to i64
  %937 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %936, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), i32 %937)
  %938 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_2905, i32 0, i32 0), align 4
  %939 = shl i32 %938, 4
  %940 = ashr i32 %939, 4
  %941 = sext i32 %940 to i64
  %942 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %941, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i32 0, i32 0), i32 %942)
  %943 = load i8, i8* bitcast (%union.U2* @g_2905 to i8*), align 1, !tbaa !9
  %944 = zext i8 %943 to i64
  %945 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %944, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0), i32 %945)
  %946 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_2905, i32 0, i32 0), align 4, !tbaa !1
  %947 = sext i32 %946 to i64
  %948 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %947, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 %948)
  %949 = load i8, i8* bitcast (%union.U2* @g_2905 to i8*), align 1, !tbaa !9
  %950 = sext i8 %949 to i64
  %951 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %950, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), i32 %951)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %952

; <label>:952                                     ; preds = %969, %923
  %953 = load i32, i32* %i, align 4, !tbaa !1
  %954 = icmp slt i32 %953, 9
  br i1 %954, label %955, label %972

; <label>:955                                     ; preds = %952
  %956 = load i32, i32* %i, align 4, !tbaa !1
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds [9 x %union.U1], [9 x %union.U1]* @g_2974, i32 0, i64 %957
  %959 = bitcast %union.U1* %958 to i16*
  %960 = load volatile i16, i16* %959, align 2, !tbaa !10
  %961 = zext i16 %960 to i64
  %962 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %961, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0), i32 %962)
  %963 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %964 = icmp ne i32 %963, 0
  br i1 %964, label %965, label %968

; <label>:965                                     ; preds = %955
  %966 = load i32, i32* %i, align 4, !tbaa !1
  %967 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %966)
  br label %968

; <label>:968                                     ; preds = %965, %955
  br label %969

; <label>:969                                     ; preds = %968
  %970 = load i32, i32* %i, align 4, !tbaa !1
  %971 = add nsw i32 %970, 1
  store i32 %971, i32* %i, align 4, !tbaa !1
  br label %952

; <label>:972                                     ; preds = %952
  %973 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %974 = zext i32 %973 to i64
  %975 = xor i64 %974, 4294967295
  %976 = trunc i64 %975 to i32
  %977 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %976, i32 %977)
  %978 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %978) #1
  %979 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %979) #1
  %980 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %980) #1
  %981 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %981) #1
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
  %l_21 = alloca i32*, align 8
  %l_22 = alloca i32*, align 8
  %l_2691 = alloca [9 x [7 x [4 x i32]]], align 16
  %l_2804 = alloca i16*, align 8
  %l_2810 = alloca %union.U2***, align 8
  %l_2809 = alloca %union.U2****, align 8
  %l_2811 = alloca i16***, align 8
  %l_2852 = alloca i32, align 4
  %l_2858 = alloca i32, align 4
  %l_2859 = alloca [4 x i32], align 16
  %l_2863 = alloca i32, align 4
  %l_2877 = alloca i32*, align 8
  %l_2895 = alloca i8***, align 8
  %l_2930 = alloca i32, align 4
  %l_2973 = alloca i32, align 4
  %l_2985 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_5 = alloca i32*, align 8
  %l_2274 = alloca %union.U0, align 8
  %l_2667 = alloca %union.U0*, align 8
  %l_2715 = alloca i16, align 2
  %l_2740 = alloca i16, align 2
  %l_2770 = alloca [6 x [1 x [5 x i8**]]], align 16
  %l_2813 = alloca i16, align 2
  %l_2833 = alloca i64*, align 8
  %l_2849 = alloca i32, align 4
  %l_2851 = alloca i32, align 4
  %l_2853 = alloca i32, align 4
  %l_2854 = alloca i32, align 4
  %l_2855 = alloca [9 x [7 x i32]], align 16
  %l_2865 = alloca i64, align 8
  %l_2904 = alloca %union.U2*, align 8
  %l_2960 = alloca i32****, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %l_2970 = alloca i64, align 8
  %l_2982 = alloca i32, align 4
  %l_2983 = alloca i32, align 4
  %l_2969 = alloca i32, align 4
  %1 = alloca %union.U1, align 2
  %2 = alloca i32
  %3 = bitcast i32** %l_21 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2, i32 0, i64 0), i32** %l_21, align 8, !tbaa !5
  %4 = bitcast i32** %l_22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2, i32 0, i64 1), i32** %l_22, align 8, !tbaa !5
  %5 = bitcast [9 x [7 x [4 x i32]]]* %l_2691 to i8*
  call void @llvm.lifetime.start(i64 1008, i8* %5) #1
  %6 = bitcast [9 x [7 x [4 x i32]]]* %l_2691 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([9 x [7 x [4 x i32]]]* @func_1.l_2691 to i8*), i64 1008, i32 16, i1 false)
  %7 = bitcast i16** %l_2804 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16* null, i16** %l_2804, align 8, !tbaa !5
  %8 = bitcast %union.U2**** %l_2810 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %union.U2*** null, %union.U2**** %l_2810, align 8, !tbaa !5
  %9 = bitcast %union.U2***** %l_2809 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %union.U2**** %l_2810, %union.U2***** %l_2809, align 8, !tbaa !5
  %10 = bitcast i16**** %l_2811 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i16*** null, i16**** %l_2811, align 8, !tbaa !5
  %11 = bitcast i32* %l_2852 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %l_2852, align 4, !tbaa !1
  %12 = bitcast i32* %l_2858 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 1, i32* %l_2858, align 4, !tbaa !1
  %13 = bitcast [4 x i32]* %l_2859 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  %14 = bitcast i32* %l_2863 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 1, i32* %l_2863, align 4, !tbaa !1
  %15 = bitcast i32** %l_2877 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i32* null, i32** %l_2877, align 8, !tbaa !5
  %16 = bitcast i8**** %l_2895 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i8*** @g_2892, i8**** %l_2895, align 8, !tbaa !5
  %17 = bitcast i32* %l_2930 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 -561752056, i32* %l_2930, align 4, !tbaa !1
  %18 = bitcast i32* %l_2973 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 -1766986158, i32* %l_2973, align 4, !tbaa !1
  %19 = bitcast i32* %l_2985 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 -2, i32* %l_2985, align 4, !tbaa !1
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
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %33

; <label>:26                                      ; preds = %23
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %l_2859, i32 0, i64 %28
  store i32 -2, i32* %29, align 4, !tbaa !1
  br label %30

; <label>:30                                      ; preds = %26
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i, align 4, !tbaa !1
  br label %23

; <label>:33                                      ; preds = %23
  store i32 -23, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2, i32 0, i64 1), align 4, !tbaa !1
  br label %34

; <label>:34                                      ; preds = %113, %33
  %35 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2, i32 0, i64 1), align 4, !tbaa !1
  %36 = icmp sle i32 %35, 14
  br i1 %36, label %37, label %116

; <label>:37                                      ; preds = %34
  %38 = bitcast i32** %l_5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store i32* @g_6, i32** %l_5, align 8, !tbaa !5
  %39 = bitcast %union.U0* %l_2274 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = bitcast %union.U0* %l_2274 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* bitcast (%union.U0* @func_1.l_2274 to i8*), i64 8, i32 8, i1 false)
  %41 = bitcast %union.U0** %l_2667 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  store %union.U0* %l_2274, %union.U0** %l_2667, align 8, !tbaa !5
  %42 = bitcast i16* %l_2715 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %42) #1
  store i16 26871, i16* %l_2715, align 2, !tbaa !10
  %43 = bitcast i16* %l_2740 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %43) #1
  store i16 4, i16* %l_2740, align 2, !tbaa !10
  %44 = bitcast [6 x [1 x [5 x i8**]]]* %l_2770 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %44) #1
  %45 = bitcast i16* %l_2813 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %45) #1
  store i16 -8, i16* %l_2813, align 2, !tbaa !10
  %46 = bitcast i64** %l_2833 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  store i64* null, i64** %l_2833, align 8, !tbaa !5
  %47 = bitcast i32* %l_2849 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  store i32 128712877, i32* %l_2849, align 4, !tbaa !1
  %48 = bitcast i32* %l_2851 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  store i32 -7, i32* %l_2851, align 4, !tbaa !1
  %49 = bitcast i32* %l_2853 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  store i32 -7, i32* %l_2853, align 4, !tbaa !1
  %50 = bitcast i32* %l_2854 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  store i32 -1, i32* %l_2854, align 4, !tbaa !1
  %51 = bitcast [9 x [7 x i32]]* %l_2855 to i8*
  call void @llvm.lifetime.start(i64 252, i8* %51) #1
  %52 = bitcast [9 x [7 x i32]]* %l_2855 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* bitcast ([9 x [7 x i32]]* @func_1.l_2855 to i8*), i64 252, i32 16, i1 false)
  %53 = bitcast i64* %l_2865 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  store i64 2164469502224798153, i64* %l_2865, align 8, !tbaa !7
  %54 = bitcast %union.U2** %l_2904 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  store %union.U2* @g_2905, %union.U2** %l_2904, align 8, !tbaa !5
  %55 = bitcast i32***** %l_2960 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  store i32**** @g_1601, i32***** %l_2960, align 8, !tbaa !5
  %56 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %59

; <label>:59                                      ; preds = %88, %37
  %60 = load i32, i32* %i1, align 4, !tbaa !1
  %61 = icmp slt i32 %60, 6
  br i1 %61, label %62, label %91

; <label>:62                                      ; preds = %59
  store i32 0, i32* %j2, align 4, !tbaa !1
  br label %63

; <label>:63                                      ; preds = %84, %62
  %64 = load i32, i32* %j2, align 4, !tbaa !1
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %66, label %87

; <label>:66                                      ; preds = %63
  store i32 0, i32* %k3, align 4, !tbaa !1
  br label %67

; <label>:67                                      ; preds = %80, %66
  %68 = load i32, i32* %k3, align 4, !tbaa !1
  %69 = icmp slt i32 %68, 5
  br i1 %69, label %70, label %83

; <label>:70                                      ; preds = %67
  %71 = load i32, i32* %k3, align 4, !tbaa !1
  %72 = sext i32 %71 to i64
  %73 = load i32, i32* %j2, align 4, !tbaa !1
  %74 = sext i32 %73 to i64
  %75 = load i32, i32* %i1, align 4, !tbaa !1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [6 x [1 x [5 x i8**]]], [6 x [1 x [5 x i8**]]]* %l_2770, i32 0, i64 %76
  %78 = getelementptr inbounds [1 x [5 x i8**]], [1 x [5 x i8**]]* %77, i32 0, i64 %74
  %79 = getelementptr inbounds [5 x i8**], [5 x i8**]* %78, i32 0, i64 %72
  store i8** @g_1229, i8*** %79, align 8, !tbaa !5
  br label %80

; <label>:80                                      ; preds = %70
  %81 = load i32, i32* %k3, align 4, !tbaa !1
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %k3, align 4, !tbaa !1
  br label %67

; <label>:83                                      ; preds = %67
  br label %84

; <label>:84                                      ; preds = %83
  %85 = load i32, i32* %j2, align 4, !tbaa !1
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %j2, align 4, !tbaa !1
  br label %63

; <label>:87                                      ; preds = %63
  br label %88

; <label>:88                                      ; preds = %87
  %89 = load i32, i32* %i1, align 4, !tbaa !1
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %i1, align 4, !tbaa !1
  br label %59

; <label>:91                                      ; preds = %59
  %92 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2, i32 0, i64 1), align 4, !tbaa !1
  %93 = load i32*, i32** %l_5, align 8, !tbaa !5
  store i32 %92, i32* %93, align 4, !tbaa !1
  %94 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32***** %l_2960 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast %union.U2** %l_2904 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i64* %l_2865 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast [9 x [7 x i32]]* %l_2855 to i8*
  call void @llvm.lifetime.end(i64 252, i8* %100) #1
  %101 = bitcast i32* %l_2854 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %l_2853 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %l_2851 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %l_2849 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i64** %l_2833 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast i16* %l_2813 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %106) #1
  %107 = bitcast [6 x [1 x [5 x i8**]]]* %l_2770 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %107) #1
  %108 = bitcast i16* %l_2740 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %108) #1
  %109 = bitcast i16* %l_2715 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %109) #1
  %110 = bitcast %union.U0** %l_2667 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast %union.U0* %l_2274 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i32** %l_5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  br label %113

; <label>:113                                     ; preds = %91
  %114 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2, i32 0, i64 1), align 4, !tbaa !1
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_2, i32 0, i64 1), align 4, !tbaa !1
  br label %34

; <label>:116                                     ; preds = %34
  store i32 0, i32* getelementptr inbounds (%union.U2, %union.U2* @g_2905, i32 0, i32 0), align 4, !tbaa !1
  br label %117

; <label>:117                                     ; preds = %178, %116
  %118 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_2905, i32 0, i32 0), align 4, !tbaa !1
  %119 = icmp eq i32 %118, 51
  br i1 %119, label %120, label %183

; <label>:120                                     ; preds = %117
  %121 = bitcast i64* %l_2970 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %121) #1
  store i64 -2181613593814184762, i64* %l_2970, align 8, !tbaa !7
  %122 = bitcast i32* %l_2982 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  store i32 -244664256, i32* %l_2982, align 4, !tbaa !1
  %123 = bitcast i32* %l_2983 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %123) #1
  store i32 -316194391, i32* %l_2983, align 4, !tbaa !1
  store i32 26, i32* getelementptr inbounds (%union.U2, %union.U2* @g_768, i32 0, i32 0), align 4, !tbaa !1
  br label %124

; <label>:124                                     ; preds = %133, %120
  %125 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_768, i32 0, i32 0), align 4, !tbaa !1
  %126 = icmp uge i32 %125, 57
  br i1 %126, label %127, label %136

; <label>:127                                     ; preds = %124
  %128 = bitcast i32* %l_2969 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #1
  store i32 -1, i32* %l_2969, align 4, !tbaa !1
  %129 = load i32, i32* %l_2969, align 4, !tbaa !1
  %130 = zext i32 %129 to i64
  %131 = call i64 @safe_mod_func_uint64_t_u_u(i64 4, i64 %130)
  store i64 %131, i64* %l_2970, align 8, !tbaa !7
  %132 = bitcast i32* %l_2969 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  br label %133

; <label>:133                                     ; preds = %127
  %134 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_768, i32 0, i32 0), align 4, !tbaa !1
  %135 = add i32 %134, 1
  store i32 %135, i32* getelementptr inbounds (%union.U2, %union.U2* @g_768, i32 0, i32 0), align 4, !tbaa !1
  br label %124

; <label>:136                                     ; preds = %124
  %137 = load i32*, i32** %l_22, align 8, !tbaa !5
  %138 = load i32, i32* %137, align 4, !tbaa !1
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %164

; <label>:140                                     ; preds = %136
  %141 = load i8*, i8** @g_2615, align 8, !tbaa !5
  store i8 9, i8* %141, align 1, !tbaa !9
  %142 = load i32, i32* %l_2973, align 4, !tbaa !1
  %143 = bitcast %union.U1* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %143, i8* bitcast (%union.U1* getelementptr inbounds ([9 x %union.U1], [9 x %union.U1]* @g_2974, i32 0, i64 6) to i8*), i64 2, i32 2, i1 true), !tbaa.struct !12
  %144 = load %union.U0*, %union.U0** @g_913, align 8, !tbaa !5
  %145 = load i64, i64* %l_2970, align 8, !tbaa !7
  %146 = trunc i64 %145 to i8
  %147 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext 0, i8 zeroext %146)
  %148 = load i64, i64* %l_2970, align 8, !tbaa !7
  %149 = trunc i64 %148 to i8
  %150 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %147, i8 zeroext %149)
  %151 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %150, i8 signext 32)
  %152 = sext i8 %151 to i32
  %153 = xor i32 %152, -1
  %154 = sext i32 %153 to i64
  %155 = call i64 @safe_sub_func_uint64_t_u_u(i64 -7736983996505579993, i64 %154)
  %156 = or i64 -1091583200125077824, %155
  %157 = load i32*, i32** %l_21, align 8, !tbaa !5
  %158 = load i32, i32* %157, align 4, !tbaa !1
  %159 = sext i32 %158 to i64
  %160 = xor i64 %156, %159
  %161 = load i32*, i32** %l_21, align 8, !tbaa !5
  %162 = load i32, i32* %161, align 4, !tbaa !1
  %163 = icmp ne i32 %162, 0
  br label %164

; <label>:164                                     ; preds = %140, %136
  %165 = phi i1 [ false, %136 ], [ %163, %140 ]
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %l_2982, align 4, !tbaa !1
  %168 = xor i32 %167, %166
  store i32 %168, i32* %l_2982, align 4, !tbaa !1
  %169 = load i32, i32* %l_2983, align 4, !tbaa !1
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

; <label>:171                                     ; preds = %164
  store i32 19, i32* %2
  br label %173

; <label>:172                                     ; preds = %164
  store i32 0, i32* %2
  br label %173

; <label>:173                                     ; preds = %172, %171
  %174 = bitcast i32* %l_2983 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %l_2982 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i64* %l_2970 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %212 [
    i32 0, label %177
    i32 19, label %178
  ]

; <label>:177                                     ; preds = %173
  br label %178

; <label>:178                                     ; preds = %177, %173
  %179 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_2905, i32 0, i32 0), align 4, !tbaa !1
  %180 = trunc i32 %179 to i8
  %181 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %180, i8 signext 1)
  %182 = sext i8 %181 to i32
  store i32 %182, i32* getelementptr inbounds (%union.U2, %union.U2* @g_2905, i32 0, i32 0), align 4, !tbaa !1
  br label %117

; <label>:183                                     ; preds = %117
  %184 = load i32*, i32** %l_21, align 8, !tbaa !5
  %185 = load i32, i32* %184, align 4, !tbaa !1
  %186 = load i32, i32* %l_2985, align 4, !tbaa !1
  %187 = xor i32 %186, -1
  %188 = icmp sgt i32 %185, %187
  %189 = zext i1 %188 to i32
  %190 = load i32*, i32** @g_39, align 8, !tbaa !5
  store i32 %189, i32* %190, align 4, !tbaa !1
  %191 = load i32*, i32** %l_21, align 8, !tbaa !5
  %192 = load i32, i32* %191, align 4, !tbaa !1
  store i32 1, i32* %2
  %193 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %l_2985 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %l_2973 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %l_2930 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i8**** %l_2895 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = bitcast i32** %l_2877 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast i32* %l_2863 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast [4 x i32]* %l_2859 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %202) #1
  %203 = bitcast i32* %l_2858 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %l_2852 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i16**** %l_2811 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast %union.U2***** %l_2809 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast %union.U2**** %l_2810 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast i16** %l_2804 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast [9 x [7 x [4 x i32]]]* %l_2691 to i8*
  call void @llvm.lifetime.end(i64 1008, i8* %209) #1
  %210 = bitcast i32** %l_22 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast i32** %l_21 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  ret i32 %192

; <label>:212                                     ; preds = %173
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.125, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.126, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
!12 = !{i64 0, i64 2, !10}
