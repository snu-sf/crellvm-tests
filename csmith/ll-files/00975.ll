; ModuleID = '00975.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U1 = type { i64 }
%union.U2 = type { i64 }
%union.U0 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global i32 5, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_11 = internal global i64 -9, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"g_11\00", align 1
@g_38 = internal global i32 1, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_38\00", align 1
@g_48 = internal global [8 x [9 x i8]] [[9 x i8] c"\F7\F7\C2\01\01\FE\00\1F\F2", [9 x i8] c"\FF\DB\BE\01\1F\00\04\F7\D9", [9 x i8] c"\A9\FE\C2\FF\FE\01\09\BE\09", [9 x i8] c"\01\FE\FE\FE\FE\01(%i", [9 x i8] c"%\09O\F2\1F\08\C2\FF\FC", [9 x i8] c"\01\08\CE\01\04\19\F2\FE\FE", [9 x i8] c"\F2\FE\1F\FC\1F\1F\FC\1F\FE", [9 x i8] c"\CE%\FC\01\FF\DB\BE\01\1F"], align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"g_48[i][j]\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_49 = internal global %union.U1 { i64 -2 }, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"g_49.f0\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"g_49.f1\00", align 1
@g_51 = internal global i32 -1, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_51\00", align 1
@g_81 = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"g_81\00", align 1
@g_87 = internal global i32 4, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"g_87\00", align 1
@g_110 = internal global i16 -10494, align 2
@.str.11 = private unnamed_addr constant [6 x i8] c"g_110\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"g_121[i].f0\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"g_121[i].f2\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"g_121[i].f4\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_136 = internal global i16 -12394, align 2
@.str.16 = private unnamed_addr constant [6 x i8] c"g_136\00", align 1
@g_145 = internal global i64 -2, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"g_145\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"g_156.f0\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"g_156.f2\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"g_156.f4\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_163\00", align 1
@g_237 = internal global [2 x i16] [i16 10005, i16 10005], align 2
@.str.22 = private unnamed_addr constant [9 x i8] c"g_237[i]\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"g_244.f0\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"g_244.f2\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"g_244.f4\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_269.f0\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"g_269.f2\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"g_269.f4\00", align 1
@g_280 = internal global [8 x i8] c"\A6\00\A6\00\A6\00\A6\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"g_280[i]\00", align 1
@g_306 = internal global [6 x i8] c"kkkkkk", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"g_306[i]\00", align 1
@g_352 = internal constant [5 x i32] [i32 1609386605, i32 1609386605, i32 1609386605, i32 1609386605, i32 1609386605], align 16
@.str.31 = private unnamed_addr constant [9 x i8] c"g_352[i]\00", align 1
@g_375 = internal global [1 x [2 x i16]] [[2 x i16] [i16 1532, i16 1532]], align 2
@.str.32 = private unnamed_addr constant [12 x i8] c"g_375[i][j]\00", align 1
@g_377 = internal global i32 1864796768, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"g_377\00", align 1
@g_380 = internal global %union.U2 { i64 1 }, align 8
@.str.34 = private unnamed_addr constant [9 x i8] c"g_380.f0\00", align 1
@g_392 = internal global i8 3, align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"g_392\00", align 1
@g_395 = internal global i8 3, align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"g_395\00", align 1
@g_396 = internal global i32 4, align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"g_396\00", align 1
@g_400 = internal global i32 -488466585, align 4
@.str.38 = private unnamed_addr constant [6 x i8] c"g_400\00", align 1
@g_414 = internal global %union.U2 zeroinitializer, align 8
@.str.39 = private unnamed_addr constant [9 x i8] c"g_414.f0\00", align 1
@g_424 = internal global [10 x %union.U2] [%union.U2 { i64 514984933496821770 }, %union.U2 { i64 514984933496821770 }, %union.U2 { i64 514984933496821770 }, %union.U2 { i64 514984933496821770 }, %union.U2 { i64 514984933496821770 }, %union.U2 { i64 514984933496821770 }, %union.U2 { i64 514984933496821770 }, %union.U2 { i64 514984933496821770 }, %union.U2 { i64 514984933496821770 }, %union.U2 { i64 514984933496821770 }], align 16
@.str.40 = private unnamed_addr constant [12 x i8] c"g_424[i].f0\00", align 1
@g_425 = internal global %union.U2 { i64 5376232319927632974 }, align 8
@.str.41 = private unnamed_addr constant [9 x i8] c"g_425.f0\00", align 1
@g_426 = internal global i32 -1012259882, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"g_426\00", align 1
@g_470 = internal global i16 19080, align 2
@.str.43 = private unnamed_addr constant [6 x i8] c"g_470\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"g_480.f0\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"g_480.f1\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"g_480.f2\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"g_480.f3\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"g_480.f4\00", align 1
@g_489 = internal global [6 x [10 x [4 x %union.U1]]] [[10 x [4 x %union.U1]] [[4 x %union.U1] [%union.U1 { i64 -6830729317791909633 }, %union.U1 { i64 398755515611711760 }, %union.U1 zeroinitializer, %union.U1 { i64 -3 }], [4 x %union.U1] [%union.U1 zeroinitializer, %union.U1 { i64 7415109138773902971 }, %union.U1 { i64 1 }, %union.U1 { i64 1 }], [4 x %union.U1] [%union.U1 { i64 5 }, %union.U1 { i64 7636965368800498906 }, %union.U1 { i64 -1 }, %union.U1 { i64 -6000174959217658866 }], [4 x %union.U1] [%union.U1 { i64 4028629389565200983 }, %union.U1 { i64 -2703386939720494511 }, %union.U1 { i64 1 }, %union.U1 { i64 -9111586890260813785 }], [4 x %union.U1] [%union.U1 { i64 -4 }, %union.U1 { i64 8 }, %union.U1 zeroinitializer, %union.U1 { i64 -6318554016485899687 }], [4 x %union.U1] [%union.U1 { i64 -245841397753208128 }, %union.U1 { i64 8701494386494610329 }, %union.U1 { i64 8908926762428471336 }, %union.U1 { i64 -6364951178217988234 }], [4 x %union.U1] [%union.U1 { i64 2 }, %union.U1 { i64 -8071770928660901210 }, %union.U1 { i64 -5883798984130629225 }, %union.U1 { i64 7636965368800498906 }], [4 x %union.U1] [%union.U1 { i64 -5 }, %union.U1 { i64 -1002881952163048192 }, %union.U1 { i64 5143732441159093226 }, %union.U1 { i64 -2349222472736127796 }], [4 x %union.U1] [%union.U1 { i64 5 }, %union.U1 { i64 5 }, %union.U1 { i64 1482365131697436536 }, %union.U1 zeroinitializer], [4 x %union.U1] [%union.U1 { i64 398755515611711760 }, %union.U1 zeroinitializer, %union.U1 { i64 -5 }, %union.U1 { i64 -6000174959217658866 }]], [10 x [4 x %union.U1]] [[4 x %union.U1] [%union.U1 { i64 -6743197407396934549 }, %union.U1 { i64 1 }, %union.U1 { i64 5358719397152770933 }, %union.U1 { i64 8919644306394024700 }], [4 x %union.U1] [%union.U1 { i64 -8071770928660901210 }, %union.U1 { i64 7 }, %union.U1 { i64 -2067081153512163739 }, %union.U1 { i64 -2067081153512163739 }], [4 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 1 }, %union.U1 { i64 -1 }, %union.U1 { i64 6202724790804682138 }], [4 x %union.U1] [%union.U1 { i64 4804435992798314771 }, %union.U1 { i64 3 }, %union.U1 { i64 9 }, %union.U1 { i64 -10 }], [4 x %union.U1] [%union.U1 { i64 -5 }, %union.U1 { i64 -6 }, %union.U1 { i64 1 }, %union.U1 { i64 9 }], [4 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 { i64 -6 }, %union.U1 { i64 398755515611711760 }, %union.U1 { i64 -10 }], [4 x %union.U1] [%union.U1 { i64 -6 }, %union.U1 { i64 3 }, %union.U1 { i64 -245841397753208128 }, %union.U1 { i64 6202724790804682138 }], [4 x %union.U1] [%union.U1 { i64 7415109138773902971 }, %union.U1 { i64 1 }, %union.U1 { i64 1 }, %union.U1 { i64 -2067081153512163739 }], [4 x %union.U1] [%union.U1 zeroinitializer, %union.U1 { i64 7 }, %union.U1 { i64 4 }, %union.U1 { i64 8919644306394024700 }], [4 x %union.U1] [%union.U1 { i64 -3473017143980241356 }, %union.U1 { i64 1 }, %union.U1 { i64 -7 }, %union.U1 { i64 -6000174959217658866 }]], [10 x [4 x %union.U1]] [[4 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 zeroinitializer, %union.U1 { i64 -1 }, %union.U1 zeroinitializer], [4 x %union.U1] [%union.U1 { i64 -6830729317791909633 }, %union.U1 { i64 5 }, %union.U1 zeroinitializer, %union.U1 { i64 -2349222472736127796 }], [4 x %union.U1] [%union.U1 zeroinitializer, %union.U1 { i64 -1002881952163048192 }, %union.U1 { i64 398755515611711760 }, %union.U1 { i64 7636965368800498906 }], [4 x %union.U1] [%union.U1 { i64 -1815648225787151693 }, %union.U1 { i64 -8071770928660901210 }, %union.U1 { i64 3096123566182895658 }, %union.U1 { i64 -6364951178217988234 }], [4 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 8701494386494610329 }, %union.U1 { i64 -1815648225787151693 }, %union.U1 { i64 -6318554016485899687 }], [4 x %union.U1] [%union.U1 { i64 5 }, %union.U1 { i64 8 }, %union.U1 { i64 4 }, %union.U1 { i64 -9111586890260813785 }], [4 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 -2703386939720494511 }, %union.U1 { i64 -3 }, %union.U1 { i64 -6000174959217658866 }], [4 x %union.U1] [%union.U1 { i64 -7 }, %union.U1 { i64 7636965368800498906 }, %union.U1 { i64 7494985830467722945 }, %union.U1 { i64 1 }], [4 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 7415109138773902971 }, %union.U1 { i64 -2067081153512163739 }, %union.U1 { i64 -3 }], [4 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 398755515611711760 }, %union.U1 { i64 1482365131697436536 }, %union.U1 { i64 1922039090919762051 }]], [10 x [4 x %union.U1]] [[4 x %union.U1] [%union.U1 { i64 -5496177058688634335 }, %union.U1 { i64 3 }, %union.U1 { i64 -1 }, %union.U1 { i64 8 }], [4 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 -245841397753208128 }, %union.U1 { i64 206727673948780307 }, %union.U1 { i64 5143732441159093226 }], [4 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 { i64 -3930483850753091671 }, %union.U1 { i64 9 }, %union.U1 { i64 6 }], [4 x %union.U1] [%union.U1 { i64 2852846179586430036 }, %union.U1 { i64 -1 }, %union.U1 zeroinitializer, %union.U1 { i64 -7067124070166734699 }], [4 x %union.U1] [%union.U1 zeroinitializer, %union.U1 { i64 -1815648225787151693 }, %union.U1 { i64 3096123566182895658 }, %union.U1 { i64 -6 }], [4 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 6 }, %union.U1 { i64 -6 }, %union.U1 { i64 -1 }], [4 x %union.U1] [%union.U1 { i64 4028629389565200983 }, %union.U1 { i64 -7 }, %union.U1 { i64 7 }, %union.U1 { i64 1 }], [4 x %union.U1] [%union.U1 { i64 4804435992798314771 }, %union.U1 { i64 206727673948780307 }, %union.U1 { i64 2543309350031164195 }, %union.U1 { i64 -1689191877771483514 }], [4 x %union.U1] [%union.U1 { i64 6 }, %union.U1 { i64 4543467281725031299 }, %union.U1 { i64 4 }, %union.U1 { i64 8908926762428471336 }], [4 x %union.U1] [%union.U1 { i64 -2 }, %union.U1 { i64 8919644306394024700 }, %union.U1 { i64 9 }, %union.U1 { i64 6 }]], [10 x [4 x %union.U1]] [[4 x %union.U1] [%union.U1 { i64 1293787682121388373 }, %union.U1 { i64 -7644039741937721529 }, %union.U1 { i64 5364372564076922755 }, %union.U1 { i64 -1 }], [4 x %union.U1] [%union.U1 zeroinitializer, %union.U1 { i64 398755515611711760 }, %union.U1 { i64 -3473017143980241356 }, %union.U1 { i64 398755515611711760 }], [4 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 { i64 -1 }, %union.U1 { i64 5 }, %union.U1 { i64 1274077064438898154 }], [4 x %union.U1] [%union.U1 { i64 -1815648225787151693 }, %union.U1 { i64 5362812183631091895 }, %union.U1 { i64 -387131595446315307 }, %union.U1 { i64 1 }], [4 x %union.U1] [%union.U1 { i64 5434985301429508226 }, %union.U1 { i64 -6743197407396934549 }, %union.U1 { i64 -4 }, %union.U1 { i64 5143732441159093226 }], [4 x %union.U1] [%union.U1 { i64 5434985301429508226 }, %union.U1 { i64 7 }, %union.U1 { i64 -387131595446315307 }, %union.U1 { i64 1 }], [4 x %union.U1] [%union.U1 { i64 -1815648225787151693 }, %union.U1 { i64 5143732441159093226 }, %union.U1 { i64 5 }, %union.U1 { i64 -6 }], [4 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 { i64 -1 }, %union.U1 { i64 -3473017143980241356 }, %union.U1 { i64 -9111586890260813785 }], [4 x %union.U1] [%union.U1 zeroinitializer, %union.U1 { i64 -2 }, %union.U1 { i64 5364372564076922755 }, %union.U1 { i64 5 }], [4 x %union.U1] [%union.U1 { i64 1293787682121388373 }, %union.U1 { i64 4 }, %union.U1 { i64 9 }, %union.U1 { i64 -2498805124498479036 }]], [10 x [4 x %union.U1]] [[4 x %union.U1] [%union.U1 { i64 -2 }, %union.U1 { i64 -6364951178217988234 }, %union.U1 { i64 4 }, %union.U1 { i64 7415109138773902971 }], [4 x %union.U1] [%union.U1 { i64 6 }, %union.U1 { i64 -1815648225787151693 }, %union.U1 { i64 2543309350031164195 }, %union.U1 zeroinitializer], [4 x %union.U1] [%union.U1 { i64 4804435992798314771 }, %union.U1 { i64 7 }, %union.U1 { i64 7 }, %union.U1 { i64 9 }], [4 x %union.U1] [%union.U1 { i64 4028629389565200983 }, %union.U1 { i64 -1 }, %union.U1 { i64 -6 }, %union.U1 { i64 -3 }], [4 x %union.U1] [%union.U1 { i64 1 }, %union.U1 { i64 2543309350031164195 }, %union.U1 { i64 3096123566182895658 }, %union.U1 { i64 -1689191877771483514 }], [4 x %union.U1] [%union.U1 zeroinitializer, %union.U1 { i64 4028629389565200983 }, %union.U1 zeroinitializer, %union.U1 { i64 398755515611711760 }], [4 x %union.U1] [%union.U1 { i64 2852846179586430036 }, %union.U1 { i64 -1 }, %union.U1 { i64 9 }, %union.U1 { i64 1 }], [4 x %union.U1] [%union.U1 { i64 5 }, %union.U1 { i64 5434985301429508226 }, %union.U1 { i64 -6000174959217658866 }, %union.U1 { i64 -6743197407396934549 }], [4 x %union.U1] [%union.U1 { i64 -387131595446315307 }, %union.U1 { i64 398755515611711760 }, %union.U1 { i64 1293787682121388373 }, %union.U1 { i64 8919644306394024700 }], [4 x %union.U1] [%union.U1 { i64 6202724790804682138 }, %union.U1 { i64 4543467281725031299 }, %union.U1 { i64 -6364951178217988234 }, %union.U1 { i64 -4 }]]], align 16
@.str.49 = private unnamed_addr constant [18 x i8] c"g_489[i][j][k].f1\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_513 = internal global i64 -5793566741616369272, align 8
@.str.51 = private unnamed_addr constant [6 x i8] c"g_513\00", align 1
@g_530 = internal global i64 1611324300868933394, align 8
@.str.52 = private unnamed_addr constant [6 x i8] c"g_530\00", align 1
@g_545 = internal global [10 x [6 x i8]] [[6 x i8] c"\FA\01w\0F\B4\99", [6 x i8] c"\01\A7\05\0F\0F\05", [6 x i8] c"\FA\FA\03\05w~", [6 x i8] c"~\03\FA\A7\01\03", [6 x i8] c"\01~\FA\01\FA~", [6 x i8] c"\B4\01\03\C4`\05", [6 x i8] c"\C4`\05\FAt\99", [6 x i8] c"'`ww`'", [6 x i8] c"`\01~\03\FA\A7", [6 x i8] c"w~t\01\01\0F"], align 16
@.str.53 = private unnamed_addr constant [12 x i8] c"g_545[i][j]\00", align 1
@g_546 = internal global i32 -5, align 4
@.str.54 = private unnamed_addr constant [6 x i8] c"g_546\00", align 1
@g_547 = internal global [8 x i32] [i32 619767215, i32 619767215, i32 619767215, i32 619767215, i32 619767215, i32 619767215, i32 619767215, i32 619767215], align 16
@.str.55 = private unnamed_addr constant [9 x i8] c"g_547[i]\00", align 1
@g_571 = internal global i64 -7, align 8
@.str.56 = private unnamed_addr constant [6 x i8] c"g_571\00", align 1
@g_572 = internal global i32 1058641378, align 4
@.str.57 = private unnamed_addr constant [6 x i8] c"g_572\00", align 1
@g_598 = internal global i16 -2, align 2
@.str.58 = private unnamed_addr constant [6 x i8] c"g_598\00", align 1
@g_605 = internal constant %union.U2 { i64 -7 }, align 8
@.str.59 = private unnamed_addr constant [9 x i8] c"g_605.f0\00", align 1
@g_916 = internal constant [6 x i32] zeroinitializer, align 16
@.str.60 = private unnamed_addr constant [9 x i8] c"g_916[i]\00", align 1
@g_924 = internal global i64 -7144183283782408688, align 8
@.str.61 = private unnamed_addr constant [6 x i8] c"g_924\00", align 1
@g_928 = internal global i16 433, align 2
@.str.62 = private unnamed_addr constant [6 x i8] c"g_928\00", align 1
@g_930 = internal global %union.U1 { i64 1 }, align 8
@.str.63 = private unnamed_addr constant [9 x i8] c"g_930.f0\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"g_930.f1\00", align 1
@g_1010 = internal constant [6 x i32] [i32 -1652539372, i32 0, i32 -1652539372, i32 -1652539372, i32 0, i32 -1652539372], align 16
@.str.65 = private unnamed_addr constant [10 x i8] c"g_1010[i]\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"g_1034.f0\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"g_1034.f2\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"g_1034.f4\00", align 1
@g_1081 = internal global %union.U2 { i64 -2114355640745080277 }, align 8
@.str.69 = private unnamed_addr constant [10 x i8] c"g_1081.f0\00", align 1
@g_1089 = internal global %union.U2 { i64 -5 }, align 8
@.str.70 = private unnamed_addr constant [10 x i8] c"g_1089.f0\00", align 1
@g_1105 = internal global i16 3, align 2
@.str.71 = private unnamed_addr constant [7 x i8] c"g_1105\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"g_1115.f0\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"g_1115.f2\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"g_1115.f4\00", align 1
@g_1143 = internal global [4 x [5 x %union.U2]] [[5 x %union.U2] [%union.U2 { i64 8496558387919932394 }, %union.U2 zeroinitializer, %union.U2 { i64 17064658073245083 }, %union.U2 zeroinitializer, %union.U2 { i64 8496558387919932394 }], [5 x %union.U2] [%union.U2 { i64 8496558387919932394 }, %union.U2 zeroinitializer, %union.U2 { i64 17064658073245083 }, %union.U2 zeroinitializer, %union.U2 { i64 8496558387919932394 }], [5 x %union.U2] [%union.U2 { i64 8496558387919932394 }, %union.U2 zeroinitializer, %union.U2 { i64 17064658073245083 }, %union.U2 zeroinitializer, %union.U2 { i64 8496558387919932394 }], [5 x %union.U2] [%union.U2 { i64 8496558387919932394 }, %union.U2 zeroinitializer, %union.U2 { i64 17064658073245083 }, %union.U2 zeroinitializer, %union.U2 { i64 8496558387919932394 }]], align 16
@.str.75 = private unnamed_addr constant [16 x i8] c"g_1143[i][j].f0\00", align 1
@g_1191 = internal global %union.U2 { i64 5007852382855598171 }, align 8
@.str.76 = private unnamed_addr constant [10 x i8] c"g_1191.f0\00", align 1
@g_1193 = internal global [4 x [2 x i16]] [[2 x i16] [i16 -20927, i16 -20927], [2 x i16] [i16 -20927, i16 -20927], [2 x i16] [i16 -20927, i16 -20927], [2 x i16] [i16 -20927, i16 -20927]], align 16
@.str.77 = private unnamed_addr constant [13 x i8] c"g_1193[i][j]\00", align 1
@g_1300 = internal global %union.U1 { i64 -1 }, align 8
@.str.78 = private unnamed_addr constant [10 x i8] c"g_1300.f0\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"g_1300.f1\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"g_1303\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"g_1328.f0\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"g_1328.f2\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"g_1328.f4\00", align 1
@g_1422 = internal global %union.U2 zeroinitializer, align 8
@.str.84 = private unnamed_addr constant [10 x i8] c"g_1422.f0\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"g_1464.f0\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"g_1464.f2\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"g_1464.f4\00", align 1
@g_1469 = internal global i32 -1845793385, align 4
@.str.88 = private unnamed_addr constant [7 x i8] c"g_1469\00", align 1
@g_1546 = internal global i8 64, align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"g_1546\00", align 1
@g_1591 = internal global %union.U2 { i64 1252303237090631616 }, align 8
@.str.90 = private unnamed_addr constant [10 x i8] c"g_1591.f0\00", align 1
@g_1634 = internal global %union.U2 { i64 7847612928622955272 }, align 8
@.str.91 = private unnamed_addr constant [10 x i8] c"g_1634.f0\00", align 1
@g_1693 = internal global %union.U2 { i64 5887159783349024314 }, align 8
@.str.92 = private unnamed_addr constant [10 x i8] c"g_1693.f0\00", align 1
@g_1737 = internal global i8 0, align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"g_1737\00", align 1
@g_1802 = internal global %union.U2 { i64 -1 }, align 8
@.str.94 = private unnamed_addr constant [10 x i8] c"g_1802.f0\00", align 1
@g_1845 = internal global %union.U2 { i64 -5412041417967894324 }, align 8
@.str.95 = private unnamed_addr constant [10 x i8] c"g_1845.f0\00", align 1
@g_1846 = internal global %union.U2 { i64 514255399145616952 }, align 8
@.str.96 = private unnamed_addr constant [10 x i8] c"g_1846.f0\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_1303 = internal constant i8 56, align 1
@g_47 = internal global i8* getelementptr (i8, i8* getelementptr inbounds ([8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i32 0, i32 0), i64 13), align 8
@g_927 = internal global i16* @g_928, align 8
@g_814 = internal global i32** getelementptr inbounds ([1 x i32*], [1 x i32*]* @g_815, i32 0, i32 0), align 8
@g_785 = internal global %union.U0* bitcast ({ i16, [6 x i8] }* @g_480 to %union.U0*), align 8
@func_18.l_1856 = private unnamed_addr constant [4 x [5 x %union.U0**]] [[5 x %union.U0**] [%union.U0** @g_785, %union.U0** @g_785, %union.U0** @g_785, %union.U0** @g_785, %union.U0** @g_785], [5 x %union.U0**] [%union.U0** @g_785, %union.U0** @g_785, %union.U0** @g_785, %union.U0** @g_785, %union.U0** @g_785], [5 x %union.U0**] [%union.U0** @g_785, %union.U0** @g_785, %union.U0** @g_785, %union.U0** @g_785, %union.U0** @g_785], [5 x %union.U0**] [%union.U0** @g_785, %union.U0** @g_785, %union.U0** @g_785, %union.U0** @g_785, %union.U0** @g_785]], align 16
@func_18.l_1863 = private unnamed_addr constant [7 x [4 x %union.U1]] [[4 x %union.U1] [%union.U1 { i64 7342862233491172144 }, %union.U1 { i64 -1 }, %union.U1 { i64 -1 }, %union.U1 { i64 7342862233491172144 }], [4 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 { i64 7342862233491172144 }, %union.U1 { i64 -1866568322701918317 }, %union.U1 { i64 804458821127762267 }], [4 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 { i64 -1866568322701918317 }, %union.U1 { i64 -1 }, %union.U1 { i64 283795479772070186 }], [4 x %union.U1] [%union.U1 { i64 7342862233491172144 }, %union.U1 { i64 804458821127762267 }, %union.U1 { i64 283795479772070186 }, %union.U1 { i64 283795479772070186 }], [4 x %union.U1] [%union.U1 { i64 -1866568322701918317 }, %union.U1 { i64 -1866568322701918317 }, %union.U1 { i64 -10 }, %union.U1 { i64 804458821127762267 }], [4 x %union.U1] [%union.U1 { i64 804458821127762267 }, %union.U1 { i64 7342862233491172144 }, %union.U1 { i64 -10 }, %union.U1 { i64 7342862233491172144 }], [4 x %union.U1] [%union.U1 { i64 -1866568322701918317 }, %union.U1 { i64 -1 }, %union.U1 { i64 283795479772070186 }, %union.U1 { i64 -10 }]], align 16
@g_1780 = internal global i32*** @g_1781, align 8
@g_718 = internal global i64** null, align 8
@g_784 = internal global %union.U0** @g_785, align 8
@g_1781 = internal global i32** @g_97, align 8
@g_97 = internal global i32* @g_51, align 8
@g_773 = internal global i16** null, align 8
@func_28.l_1317 = private unnamed_addr constant [6 x [9 x [1 x i16***]]] [[9 x [1 x i16***]] [[1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773]], [9 x [1 x i16***]] [[1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773]], [9 x [1 x i16***]] [[1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773]], [9 x [1 x i16***]] [[1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773]], [9 x [1 x i16***]] [[1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773]], [9 x [1 x i16***]] [[1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773], [1 x i16***] [i16*** @g_773]]], align 16
@g_947 = internal global [6 x i16*] [i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0)], align 16
@func_28.l_1428 = private unnamed_addr constant [10 x i32] [i32 1254312362, i32 1750185058, i32 1254312362, i32 1254312362, i32 1750185058, i32 1254312362, i32 1254312362, i32 1750185058, i32 1254312362, i32 1254312362], align 16
@g_831 = internal global i32** getelementptr inbounds ([1 x i32*], [1 x i32*]* @g_815, i32 0, i32 0), align 8
@func_28.l_1569 = internal constant [4 x [4 x i32]] [[4 x i32] [i32 -1560894223, i32 1, i32 -856409821, i32 -705595429], [4 x i32] [i32 4, i32 1, i32 1, i32 4], [4 x i32] [i32 1, i32 4, i32 -1560894223, i32 -1275761798], [4 x i32] [i32 1, i32 -1560894223, i32 1, i32 -856409821]], align 16
@func_28.l_1635 = internal constant %union.U1 { i64 -7244514997913630082 }, align 8
@g_1264 = internal global i16**** null, align 8
@g_918 = internal global i32* @g_51, align 8
@g_815 = internal global [1 x i32*] [i32* @g_38], align 8
@func_30.l_934 = private unnamed_addr constant [9 x i32*] [i32* @g_4, i32* @g_400, i32* @g_4, i32* @g_400, i32* @g_4, i32* @g_400, i32* @g_4, i32* @g_400, i32* @g_4], align 16
@g_740 = internal global i32* @g_377, align 8
@func_30.l_950 = private unnamed_addr constant [5 x [4 x i32**]] [[4 x i32**] [i32** @g_740, i32** @g_740, i32** @g_740, i32** @g_740], [4 x i32**] [i32** null, i32** @g_740, i32** null, i32** @g_740], [4 x i32**] [i32** @g_740, i32** @g_740, i32** @g_740, i32** @g_740], [4 x i32**] [i32** @g_740, i32** @g_740, i32** null, i32** null], [4 x i32**] [i32** @g_740, i32** null, i32** @g_740, i32** @g_740]], align 16
@func_30.l_984 = internal constant [1 x i16***] [i16*** @g_773], align 8
@func_30.l_1182 = private unnamed_addr constant [8 x [8 x [3 x i32]]] [[8 x [3 x i32]] [[3 x i32] [i32 778284079, i32 0, i32 -10], [3 x i32] [i32 -1, i32 3, i32 950550609], [3 x i32] [i32 778284079, i32 -1269821615, i32 778284079], [3 x i32] [i32 -4, i32 -1, i32 950550609], [3 x i32] [i32 -1, i32 -1, i32 -10], [3 x i32] [i32 725128451, i32 -1, i32 -1], [3 x i32] [i32 -10, i32 -1269821615, i32 -1], [3 x i32] [i32 725128451, i32 3, i32 725128451]], [8 x [3 x i32]] [[3 x i32] [i32 -1, i32 0, i32 -1], [3 x i32] [i32 -4, i32 -4, i32 -1], [3 x i32] [i32 778284079, i32 0, i32 -10], [3 x i32] [i32 -1, i32 3, i32 950550609], [3 x i32] [i32 778284079, i32 -1269821615, i32 778284079], [3 x i32] [i32 -4, i32 -1, i32 950550609], [3 x i32] [i32 -1, i32 -1, i32 -10], [3 x i32] [i32 725128451, i32 -1, i32 -1]], [8 x [3 x i32]] [[3 x i32] [i32 -10, i32 -1269821615, i32 -1], [3 x i32] [i32 725128451, i32 3, i32 725128451], [3 x i32] [i32 -1, i32 0, i32 -1], [3 x i32] [i32 -4, i32 -4, i32 -1], [3 x i32] [i32 778284079, i32 0, i32 -10], [3 x i32] [i32 -1, i32 3, i32 950550609], [3 x i32] [i32 778284079, i32 -1269821615, i32 778284079], [3 x i32] [i32 -4, i32 -1, i32 950550609]], [8 x [3 x i32]] [[3 x i32] [i32 -1, i32 -1, i32 -10], [3 x i32] [i32 725128451, i32 -1, i32 -1], [3 x i32] [i32 -10, i32 -1269821615, i32 -1], [3 x i32] [i32 725128451, i32 3, i32 725128451], [3 x i32] [i32 -1, i32 0, i32 -1], [3 x i32] [i32 -4, i32 -4, i32 -1], [3 x i32] [i32 778284079, i32 0, i32 -10], [3 x i32] [i32 -1, i32 3, i32 950550609]], [8 x [3 x i32]] [[3 x i32] [i32 778284079, i32 -1269821615, i32 778284079], [3 x i32] [i32 -4, i32 -1, i32 950550609], [3 x i32] [i32 -1, i32 -1, i32 -10], [3 x i32] [i32 725128451, i32 -1, i32 -1], [3 x i32] [i32 -10, i32 -1269821615, i32 -1], [3 x i32] [i32 725128451, i32 3, i32 725128451], [3 x i32] [i32 -1, i32 0, i32 -1], [3 x i32] [i32 -4, i32 -4, i32 -1]], [8 x [3 x i32]] [[3 x i32] [i32 778284079, i32 0, i32 -10], [3 x i32] [i32 -1, i32 3, i32 950550609], [3 x i32] [i32 778284079, i32 -1269821615, i32 778284079], [3 x i32] [i32 -4, i32 -1, i32 950550609], [3 x i32] [i32 -1, i32 -1, i32 -10], [3 x i32] [i32 725128451, i32 -1, i32 -1], [3 x i32] [i32 -10, i32 -1269821615, i32 -1], [3 x i32] [i32 725128451, i32 3, i32 725128451]], [8 x [3 x i32]] [[3 x i32] [i32 -1, i32 0, i32 -1], [3 x i32] [i32 -4, i32 -4, i32 -1], [3 x i32] [i32 778284079, i32 0, i32 -10], [3 x i32] [i32 -1, i32 3, i32 950550609], [3 x i32] [i32 778284079, i32 -1269821615, i32 778284079], [3 x i32] [i32 -4, i32 -1, i32 950550609], [3 x i32] [i32 -1, i32 -1, i32 -10], [3 x i32] [i32 725128451, i32 -1, i32 -1]], [8 x [3 x i32]] [[3 x i32] [i32 -10, i32 -1269821615, i32 -1], [3 x i32] [i32 725128451, i32 3, i32 725128451], [3 x i32] [i32 -1, i32 0, i32 -1], [3 x i32] [i32 -4, i32 -4, i32 -1], [3 x i32] [i32 778284079, i32 0, i32 -10], [3 x i32] [i32 725128451, i32 -4, i32 3], [3 x i32] [i32 -1, i32 -1, i32 -1], [3 x i32] [i32 -1, i32 725128451, i32 3]]], align 16
@g_420 = internal global i32** @g_421, align 8
@func_30.l_1200 = private unnamed_addr constant [8 x i32***] [i32*** null, i32*** @g_420, i32*** null, i32*** @g_420, i32*** null, i32*** @g_420, i32*** null, i32*** @g_420], align 16
@g_399 = internal global i32* @g_400, align 8
@g_812 = internal constant i32**** @g_813, align 8
@g_976 = internal global %union.U2** bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [2 x %union.U2*]]* @g_977 to i8*), i64 16) to %union.U2**), align 8
@func_30.l_990 = private unnamed_addr constant [1 x [9 x [4 x i64*]]] [[9 x [4 x i64*]] [[4 x i64*] [i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571, i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571], [4 x i64*] [i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571, i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571], [4 x i64*] [i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571, i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571], [4 x i64*] [i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571, i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571], [4 x i64*] [i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571, i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571], [4 x i64*] [i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571, i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571], [4 x i64*] [i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571, i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571], [4 x i64*] [i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571, i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571], [4 x i64*] [i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571, i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64* @g_571]]], align 16
@func_30.l_1122 = private unnamed_addr constant [7 x [3 x i8]] [[3 x i8] c"9\01\01", [3 x i8] c"\FF\01\07", [3 x i8] c"\F69\00", [3 x i8] c"\FF\FF\00", [3 x i8] c"9\F6\07", [3 x i8] c"\01\FF\01", [3 x i8] c"\019\FF"], align 16
@func_30.l_1017 = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3)], align 16
@g_830 = internal global i32*** @g_831, align 8
@func_30.l_1155 = private unnamed_addr constant %union.U1 { i64 -1 }, align 8
@g_188 = internal global i32** @g_97, align 8
@func_30.l_1011 = private unnamed_addr constant [8 x [6 x i32]] [[6 x i32] [i32 -878398914, i32 2062714257, i32 -878398914, i32 2062714257, i32 -878398914, i32 2062714257], [6 x i32] [i32 1367646633, i32 2062714257, i32 1367646633, i32 2062714257, i32 1367646633, i32 2062714257], [6 x i32] [i32 -878398914, i32 2062714257, i32 -878398914, i32 2062714257, i32 -878398914, i32 2062714257], [6 x i32] [i32 1367646633, i32 2062714257, i32 1367646633, i32 2062714257, i32 1367646633, i32 2062714257], [6 x i32] [i32 -878398914, i32 2062714257, i32 -878398914, i32 2062714257, i32 -878398914, i32 2062714257], [6 x i32] [i32 1367646633, i32 2062714257, i32 1367646633, i32 2062714257, i32 1367646633, i32 2062714257], [6 x i32] [i32 -878398914, i32 2062714257, i32 -878398914, i32 2062714257, i32 -878398914, i32 2062714257], [6 x i32] [i32 1367646633, i32 2062714257, i32 1367646633, i32 2062714257, i32 1367646633, i32 2062714257]], align 16
@func_30.l_1033 = private unnamed_addr constant [8 x [7 x i32]] [[7 x i32] [i32 -777632541, i32 1, i32 -777632541, i32 385503509, i32 -777632541, i32 1, i32 -777632541], [7 x i32] [i32 56454755, i32 -2131801105, i32 8, i32 1527330374, i32 1527330374, i32 8, i32 -2131801105], [7 x i32] [i32 -156104535, i32 1, i32 -1669667658, i32 1, i32 -156104535, i32 1, i32 -1669667658], [7 x i32] [i32 1527330374, i32 1527330374, i32 8, i32 -2131801105, i32 56454755, i32 56454755, i32 -2131801105], [7 x i32] [i32 -777632541, i32 385503509, i32 -777632541, i32 1, i32 -777632541, i32 385503509, i32 -777632541], [7 x i32] [i32 1527330374, i32 -2131801105, i32 -2131801105, i32 1527330374, i32 56454755, i32 8, i32 8], [7 x i32] [i32 -156104535, i32 385503509, i32 -1669667658, i32 385503509, i32 -156104535, i32 385503509, i32 -1669667658], [7 x i32] [i32 56454755, i32 1527330374, i32 -2131801105, i32 -2131801105, i32 1527330374, i32 56454755, i32 8]], align 16
@g_616 = internal global i64** @g_617, align 8
@func_30.l_1079 = private unnamed_addr constant [10 x i16*] [i16* @g_598, i16* null, i16* @g_598, i16* @g_598, i16* null, i16* @g_598, i16* @g_598, i16* null, i16* @g_598, i16* @g_598], align 16
@g_617 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x %union.U2]* @g_424 to i8*), i64 32) to i64*), align 8
@g_1095 = internal global i32**** @g_830, align 8
@g_1098 = internal global i32* null, align 8
@func_30.l_1114 = private unnamed_addr constant %union.U1 { i64 -7 }, align 8
@func_30.l_1123 = private unnamed_addr constant [5 x [4 x i32]] [[4 x i32] [i32 723447918, i32 1, i32 1, i32 723447918], [4 x i32] [i32 723447918, i32 1, i32 1, i32 723447918], [4 x i32] [i32 723447918, i32 1, i32 1, i32 723447918], [4 x i32] [i32 723447918, i32 1, i32 1, i32 723447918], [4 x i32] [i32 723447918, i32 1, i32 1, i32 723447918]], align 16
@g_717 = internal global i64*** @g_718, align 8
@g_977 = internal global [3 x [2 x %union.U2*]] [[2 x %union.U2*] [%union.U2* @g_425, %union.U2* @g_425], [2 x %union.U2*] [%union.U2* @g_425, %union.U2* @g_425], [2 x %union.U2*] [%union.U2* @g_425, %union.U2* @g_425]], align 16
@g_811 = internal global i32***** @g_812, align 8
@g_1212 = internal global i32** @g_97, align 8
@func_30.l_1282 = private unnamed_addr constant [6 x [3 x i32]] [[3 x i32] [i32 2009734401, i32 2009734401, i32 2009734401], [3 x i32] [i32 1634567715, i32 1634567715, i32 1634567715], [3 x i32] [i32 2009734401, i32 2009734401, i32 2009734401], [3 x i32] [i32 1634567715, i32 1634567715, i32 1634567715], [3 x i32] [i32 2009734401, i32 2009734401, i32 2009734401], [3 x i32] [i32 1634567715, i32 1634567715, i32 1634567715]], align 16
@g_407 = internal global i32* @g_400, align 8
@g_606 = internal global %union.U1** @g_607, align 8
@g_1298 = internal global %union.U1** @g_1299, align 8
@g_93 = internal global i8** null, align 8
@g_421 = internal constant i32* @g_38, align 8
@g_813 = internal global i32*** @g_814, align 8
@func_64.l_90 = private unnamed_addr constant %union.U1 { i64 -8261118936830078243 }, align 8
@func_61.l_94 = private unnamed_addr constant [4 x [6 x i32*]] [[6 x i32*] [i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51], [6 x i32*] [i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51], [6 x i32*] [i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51], [6 x i32*] [i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51]], align 16
@g_607 = internal constant %union.U1* null, align 8
@g_1299 = internal global %union.U1* @g_1300, align 8
@func_43.l_50 = private unnamed_addr constant [7 x [6 x i32*]] [[6 x i32*] [i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51], [6 x i32*] [i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51], [6 x i32*] [i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51], [6 x i32*] [i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51], [6 x i32*] [i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51], [6 x i32*] [i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51], [6 x i32*] [i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51, i32* @g_51]], align 16
@func_43.l_473 = internal constant [2 x i32] [i32 -4, i32 -4], align 4
@func_43.l_585 = private unnamed_addr constant [10 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@func_43.l_449 = private unnamed_addr constant [8 x i16] [i16 -634, i16 1, i16 1, i16 -634, i16 1, i16 1, i16 -634, i16 1], align 16
@g_419 = internal constant i32*** @g_420, align 8
@func_43.l_525 = private unnamed_addr constant [5 x [3 x i32]] [[3 x i32] [i32 -1482710099, i32 -1482710099, i32 -1482710099], [3 x i32] [i32 -39485318, i32 -39485318, i32 -39485318], [3 x i32] [i32 -1482710099, i32 -1482710099, i32 -1482710099], [3 x i32] [i32 -39485318, i32 -39485318, i32 -39485318], [3 x i32] [i32 -1482710099, i32 -1482710099, i32 -1482710099]], align 16
@func_43.l_544 = private unnamed_addr constant [10 x [2 x [9 x i32]]] [[2 x [9 x i32]] [[9 x i32] [i32 1653888911, i32 1, i32 1, i32 1792534457, i32 -10, i32 0, i32 -285233736, i32 -1207580702, i32 1], [9 x i32] [i32 803278116, i32 -734842475, i32 -4, i32 7, i32 -285233736, i32 1588829375, i32 1, i32 -1107024561, i32 -6]], [2 x [9 x i32]] [[9 x i32] [i32 1653888911, i32 -10, i32 -285233736, i32 1, i32 803278116, i32 1, i32 613168500, i32 1, i32 -8], [9 x i32] [i32 -3, i32 -734842475, i32 -4, i32 1588829375, i32 5, i32 1, i32 1, i32 0, i32 -1808885002]], [2 x [9 x i32]] [[9 x i32] [i32 184379855, i32 613168500, i32 -4, i32 -1107024561, i32 5, i32 -8, i32 646698891, i32 -4, i32 1], [9 x i32] [i32 0, i32 -6, i32 -10, i32 1797945187, i32 1797945187, i32 -10, i32 -6, i32 0, i32 184379855]], [2 x [9 x i32]] [[9 x i32] [i32 -734842475, i32 1653888911, i32 -546812472, i32 1792534457, i32 -3, i32 -1631173969, i32 1179482552, i32 1, i32 -6], [9 x i32] [i32 1179482552, i32 1502623531, i32 1797945187, i32 -10, i32 -1107024561, i32 1, i32 1, i32 1792534457, i32 184379855]], [2 x [9 x i32]] [[9 x i32] [i32 -2036646942, i32 -8, i32 1, i32 646698891, i32 -546812472, i32 -10, i32 1792534457, i32 1179482552, i32 1], [9 x i32] [i32 1, i32 5, i32 0, i32 -1207580702, i32 803278116, i32 -6, i32 483549571, i32 1653888911, i32 -1808885002]], [2 x [9 x i32]] [[9 x i32] [i32 803278116, i32 7, i32 1, i32 -1207580702, i32 1181123924, i32 -285233736, i32 184379855, i32 -8, i32 -8], [9 x i32] [i32 1543602332, i32 4, i32 -1631173969, i32 646698891, i32 -1631173969, i32 4, i32 1543602332, i32 1966014253, i32 -1207580702]], [2 x [9 x i32]] [[9 x i32] [i32 -3, i32 -10, i32 -509401999, i32 -10, i32 -1808885002, i32 -1207580702, i32 0, i32 1, i32 -4], [9 x i32] [i32 -10, i32 1, i32 1181123924, i32 1792534457, i32 646698891, i32 -1107024561, i32 0, i32 1966014253, i32 -3]], [2 x [9 x i32]] [[9 x i32] [i32 -1107024561, i32 -3, i32 1179482552, i32 1797945187, i32 -159412450, i32 613168500, i32 1, i32 -8, i32 1], [9 x i32] [i32 1, i32 -861086699, i32 0, i32 -1107024561, i32 -8, i32 0, i32 -4, i32 1653888911, i32 1179482552]], [2 x [9 x i32]] [[9 x i32] [i32 1, i32 -4, i32 0, i32 1588829375, i32 0, i32 4, i32 -159412450, i32 1179482552, i32 -159412450], [9 x i32] [i32 -4, i32 1966014253, i32 1179482552, i32 1179482552, i32 1966014253, i32 -4, i32 1502623531, i32 1792534457, i32 0]], [2 x [9 x i32]] [[9 x i32] [i32 -8, i32 1, i32 1181123924, i32 1502623531, i32 -2036646942, i32 -4, i32 5, i32 1, i32 -509401999], [9 x i32] [i32 4, i32 -4, i32 -509401999, i32 -1808885002, i32 483549571, i32 1, i32 1502623531, i32 0, i32 -546812472]]], align 16
@func_43.l_588 = private unnamed_addr constant [8 x [7 x [4 x i32]]] [[7 x [4 x i32]] [[4 x i32] [i32 -4, i32 -4, i32 -909212081, i32 868823331], [4 x i32] [i32 -4, i32 -4, i32 1228838076, i32 0], [4 x i32] [i32 -4, i32 0, i32 -909212081, i32 -475534916], [4 x i32] [i32 -4, i32 -4, i32 -475534916, i32 -475534916], [4 x i32] [i32 0, i32 0, i32 -1580695025, i32 0], [4 x i32] [i32 -4, i32 -4, i32 -1580695025, i32 868823331], [4 x i32] [i32 0, i32 -4, i32 -475534916, i32 -1580695025]], [7 x [4 x i32]] [[4 x i32] [i32 -4, i32 -4, i32 -909212081, i32 868823331], [4 x i32] [i32 -4, i32 -4, i32 1228838076, i32 -475534916], [4 x i32] [i32 -4, i32 -306820214, i32 0, i32 -1580695025], [4 x i32] [i32 -4, i32 0, i32 -1580695025, i32 -1580695025], [4 x i32] [i32 -306820214, i32 -306820214, i32 1228838076, i32 -475534916], [4 x i32] [i32 0, i32 -4, i32 1228838076, i32 -909212081], [4 x i32] [i32 -306820214, i32 -4, i32 -1580695025, i32 1228838076]], [7 x [4 x i32]] [[4 x i32] [i32 -4, i32 -4, i32 0, i32 -909212081], [4 x i32] [i32 -4, i32 -4, i32 -230449500, i32 -475534916], [4 x i32] [i32 -4, i32 -306820214, i32 0, i32 -1580695025], [4 x i32] [i32 -4, i32 0, i32 -1580695025, i32 -1580695025], [4 x i32] [i32 -306820214, i32 -306820214, i32 1228838076, i32 -475534916], [4 x i32] [i32 0, i32 -4, i32 1228838076, i32 -909212081], [4 x i32] [i32 -306820214, i32 -4, i32 -1580695025, i32 1228838076]], [7 x [4 x i32]] [[4 x i32] [i32 -4, i32 -4, i32 0, i32 -909212081], [4 x i32] [i32 -4, i32 -4, i32 -230449500, i32 -475534916], [4 x i32] [i32 -4, i32 -306820214, i32 0, i32 -1580695025], [4 x i32] [i32 -4, i32 0, i32 -1580695025, i32 -1580695025], [4 x i32] [i32 -306820214, i32 -306820214, i32 1228838076, i32 -475534916], [4 x i32] [i32 0, i32 -4, i32 1228838076, i32 -909212081], [4 x i32] [i32 -306820214, i32 -4, i32 -1580695025, i32 1228838076]], [7 x [4 x i32]] [[4 x i32] [i32 -4, i32 -4, i32 0, i32 -909212081], [4 x i32] [i32 -4, i32 -4, i32 -230449500, i32 -475534916], [4 x i32] [i32 -4, i32 -306820214, i32 0, i32 -1580695025], [4 x i32] [i32 -4, i32 0, i32 -1580695025, i32 -1580695025], [4 x i32] [i32 -306820214, i32 -306820214, i32 1228838076, i32 -475534916], [4 x i32] [i32 0, i32 -4, i32 1228838076, i32 -909212081], [4 x i32] [i32 -306820214, i32 -4, i32 -1580695025, i32 1228838076]], [7 x [4 x i32]] [[4 x i32] [i32 -4, i32 -4, i32 0, i32 -909212081], [4 x i32] [i32 -4, i32 -4, i32 -230449500, i32 -475534916], [4 x i32] [i32 -4, i32 -306820214, i32 0, i32 -1580695025], [4 x i32] [i32 -4, i32 0, i32 -1580695025, i32 -1580695025], [4 x i32] [i32 -306820214, i32 -306820214, i32 1228838076, i32 -475534916], [4 x i32] [i32 0, i32 -4, i32 1228838076, i32 -909212081], [4 x i32] [i32 -306820214, i32 -4, i32 -1580695025, i32 1228838076]], [7 x [4 x i32]] [[4 x i32] [i32 -4, i32 -4, i32 0, i32 -909212081], [4 x i32] [i32 -4, i32 -4, i32 -230449500, i32 -475534916], [4 x i32] [i32 -4, i32 -306820214, i32 0, i32 -1580695025], [4 x i32] [i32 -4, i32 0, i32 -1580695025, i32 -1580695025], [4 x i32] [i32 -306820214, i32 -306820214, i32 1228838076, i32 -475534916], [4 x i32] [i32 0, i32 -4, i32 1228838076, i32 -909212081], [4 x i32] [i32 -306820214, i32 -4, i32 -1580695025, i32 1228838076]], [7 x [4 x i32]] [[4 x i32] [i32 -4, i32 -4, i32 0, i32 -909212081], [4 x i32] [i32 -4, i32 -4, i32 -230449500, i32 -475534916], [4 x i32] [i32 -4, i32 -306820214, i32 0, i32 -1580695025], [4 x i32] [i32 -4, i32 0, i32 -1580695025, i32 -1580695025], [4 x i32] [i32 -306820214, i32 -306820214, i32 1228838076, i32 -475534916], [4 x i32] [i32 0, i32 -4, i32 1228838076, i32 -909212081], [4 x i32] [i32 -306820214, i32 -4, i32 -1580695025, i32 1228838076]]], align 16
@func_43.l_594 = private unnamed_addr constant [7 x i8] c"\83\D300\8300", align 1
@func_52.l_338 = private unnamed_addr constant %union.U1 { i64 -5 }, align 8
@func_52.l_335 = private unnamed_addr constant [7 x [10 x [3 x i64]]] [[10 x [3 x i64]] [[3 x i64] [i64 -2633904901523502041, i64 622071119545739157, i64 -4], [3 x i64] [i64 0, i64 -4374869459932114232, i64 0], [3 x i64] [i64 7726314100087592132, i64 8, i64 2], [3 x i64] zeroinitializer, [3 x i64] [i64 2, i64 -10, i64 -4], [3 x i64] [i64 -1, i64 0, i64 -1], [3 x i64] [i64 2, i64 -5770296060494971558, i64 6107914413772540800], [3 x i64] [i64 0, i64 -1, i64 -1], [3 x i64] [i64 7726314100087592132, i64 -5770296060494971558, i64 7726314100087592132], [3 x i64] [i64 0, i64 0, i64 -4374869459932114232]], [10 x [3 x i64]] [[3 x i64] [i64 -2633904901523502041, i64 -10, i64 7726314100087592132], [3 x i64] [i64 -4374869459932114232, i64 0, i64 -1], [3 x i64] [i64 0, i64 8, i64 6107914413772540800], [3 x i64] [i64 -4374869459932114232, i64 -4374869459932114232, i64 -1], [3 x i64] [i64 -2633904901523502041, i64 622071119545739157, i64 -4], [3 x i64] [i64 0, i64 -4374869459932114232, i64 0], [3 x i64] [i64 7726314100087592132, i64 8, i64 2], [3 x i64] zeroinitializer, [3 x i64] [i64 2, i64 -10, i64 -4], [3 x i64] [i64 -1, i64 0, i64 -1]], [10 x [3 x i64]] [[3 x i64] [i64 2, i64 -5770296060494971558, i64 6107914413772540800], [3 x i64] [i64 0, i64 -1, i64 -1], [3 x i64] [i64 7726314100087592132, i64 -5770296060494971558, i64 7726314100087592132], [3 x i64] [i64 0, i64 0, i64 -4374869459932114232], [3 x i64] [i64 -2633904901523502041, i64 -10, i64 7726314100087592132], [3 x i64] [i64 -4374869459932114232, i64 0, i64 -1], [3 x i64] [i64 0, i64 8, i64 6107914413772540800], [3 x i64] [i64 -4374869459932114232, i64 -4374869459932114232, i64 -1], [3 x i64] [i64 -2633904901523502041, i64 622071119545739157, i64 -4], [3 x i64] [i64 0, i64 -4374869459932114232, i64 0]], [10 x [3 x i64]] [[3 x i64] [i64 7726314100087592132, i64 8, i64 2], [3 x i64] zeroinitializer, [3 x i64] [i64 2, i64 -10, i64 -4], [3 x i64] [i64 -1, i64 0, i64 -1], [3 x i64] [i64 2, i64 -5770296060494971558, i64 6107914413772540800], [3 x i64] [i64 0, i64 -1, i64 -1], [3 x i64] [i64 7726314100087592132, i64 -5770296060494971558, i64 7726314100087592132], [3 x i64] [i64 0, i64 0, i64 -4374869459932114232], [3 x i64] [i64 -2633904901523502041, i64 -10, i64 7726314100087592132], [3 x i64] [i64 -4374869459932114232, i64 0, i64 -1]], [10 x [3 x i64]] [[3 x i64] [i64 0, i64 8, i64 6107914413772540800], [3 x i64] [i64 -4374869459932114232, i64 -4374869459932114232, i64 -1], [3 x i64] [i64 -2633904901523502041, i64 622071119545739157, i64 -4], [3 x i64] [i64 0, i64 -4374869459932114232, i64 0], [3 x i64] [i64 7726314100087592132, i64 8, i64 2], [3 x i64] zeroinitializer, [3 x i64] [i64 2, i64 -10, i64 -4], [3 x i64] [i64 -1, i64 0, i64 -1], [3 x i64] [i64 2, i64 4, i64 2], [3 x i64] [i64 0, i64 -1, i64 -1]], [10 x [3 x i64]] [[3 x i64] [i64 0, i64 4, i64 0], [3 x i64] [i64 -1, i64 0, i64 4995023807784097446], [3 x i64] [i64 7726314100087592132, i64 622071119545739157, i64 0], [3 x i64] [i64 4995023807784097446, i64 -1, i64 -1], [3 x i64] [i64 -4, i64 -10, i64 2], [3 x i64] [i64 4995023807784097446, i64 4995023807784097446, i64 -4374869459932114232], [3 x i64] [i64 7726314100087592132, i64 3, i64 6107914413772540800], [3 x i64] [i64 -1, i64 4995023807784097446, i64 -1], [3 x i64] [i64 0, i64 -10, i64 8987936349675053730], [3 x i64] [i64 0, i64 -1, i64 -1]], [10 x [3 x i64]] [[3 x i64] [i64 8987936349675053730, i64 622071119545739157, i64 6107914413772540800], [3 x i64] [i64 -1, i64 0, i64 -4374869459932114232], [3 x i64] [i64 8987936349675053730, i64 4, i64 2], [3 x i64] [i64 0, i64 -1, i64 -1], [3 x i64] [i64 0, i64 4, i64 0], [3 x i64] [i64 -1, i64 0, i64 4995023807784097446], [3 x i64] [i64 7726314100087592132, i64 622071119545739157, i64 0], [3 x i64] [i64 4995023807784097446, i64 -1, i64 -1], [3 x i64] [i64 -4, i64 -10, i64 2], [3 x i64] [i64 4995023807784097446, i64 4995023807784097446, i64 -4374869459932114232]]], align 16
@func_52.l_345 = private unnamed_addr constant [3 x [2 x [2 x i64*]]] [[2 x [2 x i64*]] [[2 x i64*] [i64* @g_145, i64* @g_145], [2 x i64*] [i64* @g_145, i64* @g_145]], [2 x [2 x i64*]] [[2 x i64*] [i64* @g_145, i64* @g_145], [2 x i64*] [i64* @g_145, i64* @g_145]], [2 x [2 x i64*]] [[2 x i64*] [i64* @g_145, i64* @g_145], [2 x i64*] [i64* @g_145, i64* @g_145]]], align 16
@func_52.l_360 = private unnamed_addr constant [5 x [1 x [9 x i32]]] [[1 x [9 x i32]] [[9 x i32] [i32 -9, i32 -462810108, i32 6, i32 -462810108, i32 -9, i32 -70691735, i32 -2029195456, i32 2068747046, i32 2068747046]], [1 x [9 x i32]] [[9 x i32] [i32 -462810108, i32 -1, i32 -9, i32 2068747046, i32 -9, i32 -1, i32 -462810108, i32 -1469975283, i32 1831881592]], [1 x [9 x i32]] [[9 x i32] [i32 1, i32 1831881592, i32 -462810108, i32 -70691735, i32 -1469975283, i32 -70691735, i32 -462810108, i32 1831881592, i32 1]], [1 x [9 x i32]] [[9 x i32] [i32 -1, i32 -70691735, i32 1, i32 -1469975283, i32 -2029195456, i32 -9, i32 -2029195456, i32 -1469975283, i32 1]], [1 x [9 x i32]] [[9 x i32] [i32 -2029195456, i32 -2029195456, i32 -1, i32 6, i32 1831881592, i32 2068747046, i32 1, i32 2068747046, i32 1831881592]]], align 16
@func_52.l_361 = private unnamed_addr constant [10 x [10 x i16*]] [[10 x i16*] [i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* null, i16* null, i16* @g_136, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* @g_136, i16* null], [10 x i16*] [i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* null, i16* null, i16* null, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* null, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* @g_136, i16* @g_136, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0)], [10 x i16*] [i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* null, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* null, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* getelementptr inbounds (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>, <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121, i32 0, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0)], [10 x i16*] [i16* null, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* @g_136, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* null, i16* getelementptr inbounds (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>, <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121, i32 0, i32 0, i32 0), i16* null, i16* null], [10 x i16*] [i16* null, i16* null, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* null, i16* null, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* null, i16* null, i16* null, i16* getelementptr inbounds (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>, <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121, i32 0, i32 0, i32 0)], [10 x i16*] [i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* null, i16* null, i16* null, i16* getelementptr inbounds (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>, <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121, i32 0, i32 0, i32 0), i16* null, i16* null, i16* null, i16* null, i16* null], [10 x i16*] [i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* getelementptr inbounds (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>, <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121, i32 0, i32 0, i32 0), i16* null, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* null, i16* getelementptr inbounds (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>, <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121, i32 0, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0)], [10 x i16*] [i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* null, i16* null, i16* @g_136, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* @g_136, i16* null, i16* null, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0)], [10 x i16*] [i16* null, i16* getelementptr inbounds (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>, <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121, i32 0, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* @g_136, i16* null, i16* null, i16* @g_136, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0)], [10 x i16*] [i16* @g_136, i16* @g_136, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16* null, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* null, i16* null, i16* null, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), i16* null]], align 16
@func_52.l_418 = private unnamed_addr constant %union.U1 { i64 5493718818137398834 }, align 8
@func_57.l_131 = private unnamed_addr constant [2 x [10 x [10 x %union.U1]]] [[10 x [10 x %union.U1]] [[10 x %union.U1] [%union.U1 { i64 9079935991136533217 }, %union.U1 { i64 -1 }, %union.U1 { i64 -3184828270141692474 }, %union.U1 { i64 6964634926639118468 }, %union.U1 { i64 -3184828270141692474 }, %union.U1 { i64 -1 }, %union.U1 { i64 9079935991136533217 }, %union.U1 zeroinitializer, %union.U1 { i64 -7 }, %union.U1 { i64 -3927535575401323658 }], [10 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 { i64 -8159182062623273102 }, %union.U1 { i64 -3184828270141692474 }, %union.U1 { i64 8532811963972538964 }, %union.U1 { i64 5 }, %union.U1 { i64 -1 }, %union.U1 { i64 -1 }, %union.U1 { i64 5 }, %union.U1 { i64 -2 }, %union.U1 zeroinitializer], [10 x %union.U1] [%union.U1 { i64 2 }, %union.U1 { i64 -8159182062623273102 }, %union.U1 { i64 -803296308006339255 }, %union.U1 { i64 -1 }, %union.U1 { i64 9 }, %union.U1 { i64 -7 }, %union.U1 { i64 9079935991136533217 }, %union.U1 { i64 -3927535575401323658 }, %union.U1 { i64 -9 }, %union.U1 { i64 9 }], [10 x %union.U1] [%union.U1 { i64 2 }, %union.U1 { i64 -1 }, %union.U1 { i64 1495143362032171957 }, %union.U1 { i64 -8648318040070537477 }, %union.U1 { i64 -3184828270141692474 }, %union.U1 { i64 -1 }, %union.U1 { i64 2 }, %union.U1 zeroinitializer, %union.U1 { i64 8532811963972538964 }, %union.U1 { i64 9 }], [10 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 { i64 2 }, %union.U1 zeroinitializer, %union.U1 { i64 8532811963972538964 }, %union.U1 { i64 9 }, %union.U1 { i64 -1 }, %union.U1 { i64 -1 }, %union.U1 { i64 9 }, %union.U1 { i64 8532811963972538964 }, %union.U1 zeroinitializer], [10 x %union.U1] [%union.U1 { i64 9079935991136533217 }, %union.U1 { i64 9079935991136533217 }, %union.U1 { i64 -803296308006339255 }, %union.U1 { i64 -8648318040070537477 }, %union.U1 { i64 5 }, %union.U1 { i64 -7 }, %union.U1 { i64 -8159182062623273102 }, %union.U1 { i64 9 }, %union.U1 { i64 -9 }, %union.U1 { i64 -3927535575401323658 }], [10 x %union.U1] [%union.U1 { i64 -8159182062623273102 }, %union.U1 { i64 -1 }, %union.U1 zeroinitializer, %union.U1 { i64 -1 }, %union.U1 { i64 -3184828270141692474 }, %union.U1 { i64 9 }, %union.U1 { i64 -8159182062623273102 }, %union.U1 zeroinitializer, %union.U1 { i64 -2 }, %union.U1 { i64 5 }], [10 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 { i64 9079935991136533217 }, %union.U1 { i64 1495143362032171957 }, %union.U1 { i64 8532811963972538964 }, %union.U1 { i64 -3927535575401323658 }, %union.U1 { i64 9 }, %union.U1 { i64 -1 }, %union.U1 { i64 -3927535575401323658 }, %union.U1 { i64 -7 }, %union.U1 zeroinitializer], [10 x %union.U1] [%union.U1 { i64 -8159182062623273102 }, %union.U1 { i64 2 }, %union.U1 { i64 -803296308006339255 }, %union.U1 { i64 6964634926639118468 }, %union.U1 { i64 -3927535575401323658 }, %union.U1 { i64 -7 }, %union.U1 { i64 2 }, %union.U1 { i64 5 }, %union.U1 { i64 -9 }, %union.U1 { i64 5 }], [10 x %union.U1] [%union.U1 { i64 9079935991136533217 }, %union.U1 { i64 -1 }, %union.U1 { i64 -3184828270141692474 }, %union.U1 { i64 6964634926639118468 }, %union.U1 { i64 -3184828270141692474 }, %union.U1 { i64 -1 }, %union.U1 { i64 9079935991136533217 }, %union.U1 zeroinitializer, %union.U1 { i64 -7 }, %union.U1 { i64 -3927535575401323658 }]], [10 x [10 x %union.U1]] [[10 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 { i64 -8159182062623273102 }, %union.U1 { i64 -3184828270141692474 }, %union.U1 { i64 8532811963972538964 }, %union.U1 { i64 5 }, %union.U1 { i64 -1 }, %union.U1 { i64 -1 }, %union.U1 { i64 5 }, %union.U1 { i64 -2 }, %union.U1 zeroinitializer], [10 x %union.U1] [%union.U1 { i64 2 }, %union.U1 { i64 -8159182062623273102 }, %union.U1 { i64 -803296308006339255 }, %union.U1 { i64 -1 }, %union.U1 { i64 9 }, %union.U1 { i64 -7 }, %union.U1 { i64 9079935991136533217 }, %union.U1 { i64 -3927535575401323658 }, %union.U1 { i64 -9 }, %union.U1 { i64 9 }], [10 x %union.U1] [%union.U1 { i64 2 }, %union.U1 { i64 -1 }, %union.U1 { i64 1495143362032171957 }, %union.U1 { i64 -8648318040070537477 }, %union.U1 { i64 -3184828270141692474 }, %union.U1 { i64 -1 }, %union.U1 { i64 2 }, %union.U1 zeroinitializer, %union.U1 { i64 8532811963972538964 }, %union.U1 { i64 9 }], [10 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 { i64 2 }, %union.U1 zeroinitializer, %union.U1 { i64 8532811963972538964 }, %union.U1 { i64 9 }, %union.U1 { i64 -1 }, %union.U1 { i64 -1 }, %union.U1 { i64 1 }, %union.U1 { i64 7 }, %union.U1 { i64 -8891959275149004362 }], [10 x %union.U1] [%union.U1 zeroinitializer, %union.U1 zeroinitializer, %union.U1 { i64 -7496730353575665078 }, %union.U1 { i64 2480372717253229899 }, %union.U1 { i64 6953828647508247426 }, %union.U1 { i64 -3927535575401323658 }, %union.U1 { i64 -3184828270141692474 }, %union.U1 { i64 1 }, %union.U1 zeroinitializer, %union.U1 { i64 -1930453382277222047 }], [10 x %union.U1] [%union.U1 { i64 -3184828270141692474 }, %union.U1 { i64 -803296308006339255 }, %union.U1 { i64 -8891959275149004362 }, %union.U1 { i64 1923922648548231933 }, %union.U1 { i64 -1405719908981310837 }, %union.U1 { i64 1035315471335873027 }, %union.U1 { i64 -3184828270141692474 }, %union.U1 { i64 -8891959275149004362 }, %union.U1 { i64 8 }, %union.U1 { i64 6953828647508247426 }], [10 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 zeroinitializer, %union.U1 { i64 -10 }, %union.U1 { i64 7 }, %union.U1 { i64 -1930453382277222047 }, %union.U1 { i64 1035315471335873027 }, %union.U1 { i64 -803296308006339255 }, %union.U1 { i64 -1930453382277222047 }, %union.U1 { i64 -7196676033161526995 }, %union.U1 { i64 -8891959275149004362 }], [10 x %union.U1] [%union.U1 { i64 -3184828270141692474 }, %union.U1 { i64 1495143362032171957 }, %union.U1 { i64 -7496730353575665078 }, %union.U1 { i64 8507375845085937184 }, %union.U1 { i64 -1930453382277222047 }, %union.U1 { i64 -3927535575401323658 }, %union.U1 { i64 1495143362032171957 }, %union.U1 { i64 6953828647508247426 }, %union.U1 zeroinitializer, %union.U1 { i64 6953828647508247426 }], [10 x %union.U1] [%union.U1 zeroinitializer, %union.U1 { i64 -803296308006339255 }, %union.U1 { i64 -1405719908981310837 }, %union.U1 { i64 8507375845085937184 }, %union.U1 { i64 -1405719908981310837 }, %union.U1 { i64 -803296308006339255 }, %union.U1 zeroinitializer, %union.U1 { i64 -8891959275149004362 }, %union.U1 { i64 -7196676033161526995 }, %union.U1 { i64 -1930453382277222047 }], [10 x %union.U1] [%union.U1 { i64 -1 }, %union.U1 { i64 -3184828270141692474 }, %union.U1 { i64 -1405719908981310837 }, %union.U1 { i64 7 }, %union.U1 { i64 6953828647508247426 }, %union.U1 { i64 -1 }, %union.U1 { i64 -803296308006339255 }, %union.U1 { i64 6953828647508247426 }, %union.U1 { i64 8 }, %union.U1 { i64 -8891959275149004362 }]]], align 16
@func_57.l_113 = internal constant [9 x [4 x [7 x i32]]] [[4 x [7 x i32]] [[7 x i32] [i32 -1628944188, i32 1, i32 -387860954, i32 -1628944188, i32 1867142331, i32 -10, i32 1], [7 x i32] [i32 -1, i32 454400978, i32 0, i32 9, i32 -1672516962, i32 -600905582, i32 -1173608364], [7 x i32] [i32 1972822312, i32 -1669031785, i32 824848337, i32 -600905582, i32 -1691634901, i32 -1, i32 546365276], [7 x i32] [i32 4, i32 -891155419, i32 8, i32 2, i32 646793152, i32 -10, i32 -3]], [4 x [7 x i32]] [[7 x i32] [i32 -891155419, i32 0, i32 454400978, i32 -3, i32 -1469981093, i32 1730305342, i32 4], [7 x i32] [i32 1730305342, i32 -1462130461, i32 454400978, i32 -1, i32 1784870914, i32 1380090843, i32 -1], [7 x i32] [i32 -1146046630, i32 0, i32 8, i32 -1652807551, i32 9, i32 -154666666, i32 0], [7 x i32] [i32 -1669031785, i32 -1240669658, i32 824848337, i32 -2003759781, i32 -3, i32 -358598648, i32 1784870914]], [4 x [7 x i32]] [[7 x i32] [i32 0, i32 1359544795, i32 0, i32 824848337, i32 -2097134337, i32 4, i32 -3], [7 x i32] [i32 1, i32 -1691634901, i32 -387860954, i32 1392584358, i32 0, i32 -961105708, i32 -218164995], [7 x i32] [i32 -2143980161, i32 1906374766, i32 1, i32 -891155419, i32 0, i32 1730305342, i32 -1669031785], [7 x i32] [i32 -1240669658, i32 4, i32 2, i32 -1904682812, i32 -1628944188, i32 -1904682812, i32 2]], [4 x [7 x i32]] [[7 x i32] [i32 -1691634901, i32 -1691634901, i32 1725875553, i32 -2143980161, i32 501338219, i32 929769095, i32 -1462130461], [7 x i32] [i32 -6, i32 6, i32 -1904682812, i32 1, i32 778601022, i32 -600905582, i32 9], [7 x i32] [i32 -9, i32 9, i32 1921418314, i32 1906374766, i32 501338219, i32 9, i32 0], [7 x i32] [i32 0, i32 0, i32 -1, i32 -1173608364, i32 -1628944188, i32 222611912, i32 -1802564400]], [4 x [7 x i32]] [[7 x i32] [i32 -1802564400, i32 -2139664674, i32 1381931189, i32 0, i32 0, i32 -2, i32 1], [7 x i32] [i32 -358598648, i32 -1889435458, i32 1906374766, i32 0, i32 0, i32 1906374766, i32 0], [7 x i32] [i32 0, i32 -891155419, i32 1359544795, i32 1, i32 2, i32 -1889435458, i32 824848337], [7 x i32] [i32 2, i32 386102409, i32 -1172685381, i32 0, i32 -1, i32 -154666666, i32 454400978]], [4 x [7 x i32]] [[7 x i32] [i32 1847741467, i32 -9, i32 1725875553, i32 -134663816, i32 546365276, i32 1, i32 1], [7 x i32] [i32 -358598648, i32 454400978, i32 -218164995, i32 1906374766, i32 -1, i32 -6, i32 -8], [7 x i32] [i32 546365276, i32 5, i32 929769095, i32 0, i32 -154666666, i32 1725875553, i32 -8], [7 x i32] [i32 1, i32 0, i32 1, i32 0, i32 -8, i32 0, i32 1]], [4 x [7 x i32]] [[7 x i32] [i32 -600905582, i32 -1904682812, i32 -4, i32 1205640169, i32 -358598648, i32 501338219, i32 454400978], [7 x i32] [i32 6, i32 -283397606, i32 -10, i32 1730305342, i32 222611912, i32 0, i32 824848337], [7 x i32] [i32 386102409, i32 0, i32 0, i32 1, i32 -2139664674, i32 -1, i32 -7], [7 x i32] [i32 9, i32 6, i32 -1691634901, i32 0, i32 1921418314, i32 1392584358, i32 1730305342]], [4 x [7 x i32]] [[7 x i32] [i32 -1240669658, i32 0, i32 929769095, i32 0, i32 1, i32 -1172685381, i32 -1469981093], [7 x i32] [i32 -1, i32 2057365297, i32 -1, i32 -1, i32 2057365297, i32 -1, i32 1692071614], [7 x i32] [i32 1205640169, i32 1730305342, i32 -1802564400, i32 2057365297, i32 1380090843, i32 -4, i32 546365276], [7 x i32] [i32 454400978, i32 -10, i32 -1172685381, i32 1381931189, i32 1461382776, i32 222611912, i32 0]], [4 x [7 x i32]] [[7 x i32] [i32 -134663816, i32 1730305342, i32 2, i32 1020339698, i32 1381931189, i32 0, i32 5], [7 x i32] [i32 -9, i32 2057365297, i32 -1652807551, i32 1972822312, i32 0, i32 -1802564400, i32 -3], [7 x i32] [i32 -2, i32 0, i32 -134663816, i32 1921418314, i32 1847741467, i32 -685142961, i32 2057365297], [7 x i32] [i32 1692071614, i32 6, i32 -1525273200, i32 2, i32 1381931189, i32 1, i32 -1]]], align 16
@func_57.l_142 = private unnamed_addr constant [7 x i8**] [i8** @g_47, i8** @g_47, i8** @g_47, i8** @g_47, i8** @g_47, i8** @g_47, i8** @g_47], align 16
@func_57.l_264 = internal constant %union.U1 { i64 -3928125947993103873 }, align 8
@g_125 = internal global i32** null, align 8
@func_57.l_223 = private unnamed_addr constant %union.U1 { i64 -3802440187117767346 }, align 8
@func_57.l_234 = private unnamed_addr constant [9 x [5 x [1 x i32]]] [[5 x [1 x i32]] [[1 x i32] [i32 -7], [1 x i32] [i32 -1729359494], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 -1729359494]], [5 x [1 x i32]] [[1 x i32] [i32 -7], [1 x i32] [i32 -1279276943], [1 x i32] zeroinitializer, [1 x i32] [i32 1], [1 x i32] [i32 1]], [5 x [1 x i32]] [[1 x i32] [i32 674192358], [1 x i32] [i32 1], [1 x i32] [i32 -7], [1 x i32] [i32 -1], [1 x i32] [i32 -7]], [5 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 674192358], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] zeroinitializer], [5 x [1 x i32]] [[1 x i32] [i32 -1279276943], [1 x i32] [i32 -7], [1 x i32] [i32 -1729359494], [1 x i32] [i32 1], [1 x i32] [i32 1]], [5 x [1 x i32]] [[1 x i32] [i32 -1729359494], [1 x i32] [i32 -7], [1 x i32] [i32 -1279276943], [1 x i32] zeroinitializer, [1 x i32] [i32 1]], [5 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 674192358], [1 x i32] [i32 1], [1 x i32] [i32 -7], [1 x i32] [i32 -1]], [5 x [1 x i32]] [[1 x i32] [i32 -7], [1 x i32] [i32 1], [1 x i32] [i32 674192358], [1 x i32] [i32 1], [1 x i32] [i32 1]], [5 x [1 x i32]] [[1 x i32] zeroinitializer, [1 x i32] [i32 -1279276943], [1 x i32] [i32 -7], [1 x i32] [i32 -1729359494], [1 x i32] [i32 1]]], align 16
@g_137 = internal global i32** @g_97, align 8
@func_57.l_233 = private unnamed_addr constant [6 x [3 x [4 x i32]]] [[3 x [4 x i32]] [[4 x i32] [i32 -35599659, i32 -1092086360, i32 1586606441, i32 -1092086360], [4 x i32] [i32 -35599659, i32 169550817, i32 -1383670513, i32 0], [4 x i32] [i32 -35599659, i32 603996278, i32 1586606441, i32 603996278]], [3 x [4 x i32]] [[4 x i32] [i32 -35599659, i32 0, i32 -1383670513, i32 169550817], [4 x i32] [i32 -35599659, i32 -1092086360, i32 1586606441, i32 -1092086360], [4 x i32] [i32 -35599659, i32 169550817, i32 -1383670513, i32 0]], [3 x [4 x i32]] [[4 x i32] [i32 -35599659, i32 603996278, i32 1586606441, i32 603996278], [4 x i32] [i32 -35599659, i32 0, i32 -1383670513, i32 169550817], [4 x i32] [i32 -35599659, i32 -1092086360, i32 1586606441, i32 -1092086360]], [3 x [4 x i32]] [[4 x i32] [i32 -35599659, i32 169550817, i32 -1383670513, i32 0], [4 x i32] [i32 -35599659, i32 603996278, i32 1586606441, i32 603996278], [4 x i32] [i32 -35599659, i32 0, i32 -1383670513, i32 169550817]], [3 x [4 x i32]] [[4 x i32] [i32 -35599659, i32 -1092086360, i32 1586606441, i32 -1092086360], [4 x i32] [i32 -35599659, i32 169550817, i32 -1383670513, i32 0], [4 x i32] [i32 -35599659, i32 603996278, i32 1586606441, i32 603996278]], [3 x [4 x i32]] [[4 x i32] [i32 -35599659, i32 0, i32 -1383670513, i32 169550817], [4 x i32] [i32 -35599659, i32 -1092086360, i32 1586606441, i32 -1092086360], [4 x i32] [i32 -35599659, i32 169550817, i32 -1383670513, i32 0]]], align 16
@func_66.l_83 = private unnamed_addr constant [10 x i32*] [i32* null, i32* @g_51, i32* @g_4, i32* @g_4, i32* @g_51, i32* null, i32* @g_51, i32* @g_4, i32* @g_4, i32* @g_51], align 16
@.str.97 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_121 = internal global <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }> <{ { i16, [6 x i8] } { i16 0, [6 x i8] undef }, { i16, [6 x i8] } { i16 0, [6 x i8] undef }, { i16, [6 x i8] } { i16 0, [6 x i8] undef } }>, align 16
@g_156 = internal global { i16, [6 x i8] } { i16 0, [6 x i8] undef }, align 8
@g_244 = internal global { i16, [6 x i8] } { i16 -12808, [6 x i8] undef }, align 8
@g_269 = internal global { i16, [6 x i8] } { i16 22256, [6 x i8] undef }, align 8
@g_480 = internal global { i16, [6 x i8] } { i16 -20253, [6 x i8] undef }, align 8
@g_1034 = internal global { i16, [6 x i8] } { i16 1, [6 x i8] undef }, align 8
@g_1115 = internal global { i16, [6 x i8] } { i16 -1, [6 x i8] undef }, align 8
@g_1328 = internal global { i16, [6 x i8] } { i16 9, [6 x i8] undef }, align 8
@g_1464 = internal constant { i16, [6 x i8] } { i16 1, [6 x i8] undef }, align 8
@.str.98 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %94 = load volatile i64, i64* @g_11, align 8, !tbaa !7
  %95 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %95)
  %96 = load i32, i32* @g_38, align 4, !tbaa !1
  %97 = zext i32 %96 to i64
  %98 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %98)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %99

; <label>:99                                      ; preds = %127, %89
  %100 = load i32, i32* %i, align 4, !tbaa !1
  %101 = icmp slt i32 %100, 8
  br i1 %101, label %102, label %130

; <label>:102                                     ; preds = %99
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %103

; <label>:103                                     ; preds = %123, %102
  %104 = load i32, i32* %j, align 4, !tbaa !1
  %105 = icmp slt i32 %104, 9
  br i1 %105, label %106, label %126

; <label>:106                                     ; preds = %103
  %107 = load i32, i32* %j, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* %i, align 4, !tbaa !1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i64 %110
  %112 = getelementptr inbounds [9 x i8], [9 x i8]* %111, i32 0, i64 %108
  %113 = load i8, i8* %112, align 1, !tbaa !9
  %114 = sext i8 %113 to i64
  %115 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %115)
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

; <label>:118                                     ; preds = %106
  %119 = load i32, i32* %i, align 4, !tbaa !1
  %120 = load i32, i32* %j, align 4, !tbaa !1
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %119, i32 %120)
  br label %122

; <label>:122                                     ; preds = %118, %106
  br label %123

; <label>:123                                     ; preds = %122
  %124 = load i32, i32* %j, align 4, !tbaa !1
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %j, align 4, !tbaa !1
  br label %103

; <label>:126                                     ; preds = %103
  br label %127

; <label>:127                                     ; preds = %126
  %128 = load i32, i32* %i, align 4, !tbaa !1
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %i, align 4, !tbaa !1
  br label %99

; <label>:130                                     ; preds = %99
  %131 = load i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), align 8, !tbaa !7
  %132 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %132)
  %133 = load i8, i8* bitcast (%union.U1* @g_49 to i8*), align 1, !tbaa !9
  %134 = sext i8 %133 to i64
  %135 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %135)
  %136 = load i32, i32* @g_51, align 4, !tbaa !1
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %138)
  %139 = load i32, i32* @g_81, align 4, !tbaa !1
  %140 = zext i32 %139 to i64
  %141 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %141)
  %142 = load i32, i32* @g_87, align 4, !tbaa !1
  %143 = zext i32 %142 to i64
  %144 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %144)
  %145 = load i16, i16* @g_110, align 2, !tbaa !10
  %146 = sext i16 %145 to i64
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %147)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %148

; <label>:148                                     ; preds = %179, %130
  %149 = load i32, i32* %i, align 4, !tbaa !1
  %150 = icmp slt i32 %149, 3
  br i1 %150, label %151, label %182

; <label>:151                                     ; preds = %148
  %152 = load i32, i32* %i, align 4, !tbaa !1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* bitcast (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121 to [3 x %union.U0]*), i32 0, i64 %153
  %155 = bitcast %union.U0* %154 to i16*
  %156 = load volatile i16, i16* %155, align 2, !tbaa !10
  %157 = zext i16 %156 to i64
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i32 %158)
  %159 = load i32, i32* %i, align 4, !tbaa !1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* bitcast (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121 to [3 x %union.U0]*), i32 0, i64 %160
  %162 = bitcast %union.U0* %161 to i16*
  %163 = load i16, i16* %162, align 2, !tbaa !10
  %164 = sext i16 %163 to i64
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 %165)
  %166 = load i32, i32* %i, align 4, !tbaa !1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* bitcast (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121 to [3 x %union.U0]*), i32 0, i64 %167
  %169 = bitcast %union.U0* %168 to i16*
  %170 = load volatile i16, i16* %169, align 2, !tbaa !10
  %171 = sext i16 %170 to i64
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %171, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 %172)
  %173 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

; <label>:175                                     ; preds = %151
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %176)
  br label %178

; <label>:178                                     ; preds = %175, %151
  br label %179

; <label>:179                                     ; preds = %178
  %180 = load i32, i32* %i, align 4, !tbaa !1
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %i, align 4, !tbaa !1
  br label %148

; <label>:182                                     ; preds = %148
  %183 = load i16, i16* @g_136, align 2, !tbaa !10
  %184 = sext i16 %183 to i64
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %185)
  %186 = load i64, i64* @g_145, align 8, !tbaa !7
  %187 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %187)
  %188 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_156, i32 0, i32 0), align 2, !tbaa !10
  %189 = zext i16 %188 to i64
  %190 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %190)
  %191 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_156, i32 0, i32 0), align 2, !tbaa !10
  %192 = sext i16 %191 to i64
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %193)
  %194 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_156, i32 0, i32 0), align 2, !tbaa !10
  %195 = sext i16 %194 to i64
  %196 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %196)
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %197)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %198

; <label>:198                                     ; preds = %214, %182
  %199 = load i32, i32* %i, align 4, !tbaa !1
  %200 = icmp slt i32 %199, 2
  br i1 %200, label %201, label %217

; <label>:201                                     ; preds = %198
  %202 = load i32, i32* %i, align 4, !tbaa !1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [2 x i16], [2 x i16]* @g_237, i32 0, i64 %203
  %205 = load volatile i16, i16* %204, align 2, !tbaa !10
  %206 = zext i16 %205 to i64
  %207 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %206, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %207)
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

; <label>:210                                     ; preds = %201
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %211)
  br label %213

; <label>:213                                     ; preds = %210, %201
  br label %214

; <label>:214                                     ; preds = %213
  %215 = load i32, i32* %i, align 4, !tbaa !1
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %i, align 4, !tbaa !1
  br label %198

; <label>:217                                     ; preds = %198
  %218 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), align 2, !tbaa !10
  %219 = zext i16 %218 to i64
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %219, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %220)
  %221 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), align 2, !tbaa !10
  %222 = sext i16 %221 to i64
  %223 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %222, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %223)
  %224 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), align 2, !tbaa !10
  %225 = sext i16 %224 to i64
  %226 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %225, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %226)
  %227 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), align 2, !tbaa !10
  %228 = zext i16 %227 to i64
  %229 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %228, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %229)
  %230 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), align 2, !tbaa !10
  %231 = sext i16 %230 to i64
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %231, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %232)
  %233 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), align 2, !tbaa !10
  %234 = sext i16 %233 to i64
  %235 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %235)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %236

; <label>:236                                     ; preds = %252, %217
  %237 = load i32, i32* %i, align 4, !tbaa !1
  %238 = icmp slt i32 %237, 8
  br i1 %238, label %239, label %255

; <label>:239                                     ; preds = %236
  %240 = load i32, i32* %i, align 4, !tbaa !1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [8 x i8], [8 x i8]* @g_280, i32 0, i64 %241
  %243 = load i8, i8* %242, align 1, !tbaa !9
  %244 = sext i8 %243 to i64
  %245 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %244, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %245)
  %246 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

; <label>:248                                     ; preds = %239
  %249 = load i32, i32* %i, align 4, !tbaa !1
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %249)
  br label %251

; <label>:251                                     ; preds = %248, %239
  br label %252

; <label>:252                                     ; preds = %251
  %253 = load i32, i32* %i, align 4, !tbaa !1
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %i, align 4, !tbaa !1
  br label %236

; <label>:255                                     ; preds = %236
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %256

; <label>:256                                     ; preds = %272, %255
  %257 = load i32, i32* %i, align 4, !tbaa !1
  %258 = icmp slt i32 %257, 6
  br i1 %258, label %259, label %275

; <label>:259                                     ; preds = %256
  %260 = load i32, i32* %i, align 4, !tbaa !1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [6 x i8], [6 x i8]* @g_306, i32 0, i64 %261
  %263 = load i8, i8* %262, align 1, !tbaa !9
  %264 = zext i8 %263 to i64
  %265 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 %265)
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

; <label>:268                                     ; preds = %259
  %269 = load i32, i32* %i, align 4, !tbaa !1
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %269)
  br label %271

; <label>:271                                     ; preds = %268, %259
  br label %272

; <label>:272                                     ; preds = %271
  %273 = load i32, i32* %i, align 4, !tbaa !1
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %i, align 4, !tbaa !1
  br label %256

; <label>:275                                     ; preds = %256
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %276

; <label>:276                                     ; preds = %292, %275
  %277 = load i32, i32* %i, align 4, !tbaa !1
  %278 = icmp slt i32 %277, 5
  br i1 %278, label %279, label %295

; <label>:279                                     ; preds = %276
  %280 = load i32, i32* %i, align 4, !tbaa !1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [5 x i32], [5 x i32]* @g_352, i32 0, i64 %281
  %283 = load i32, i32* %282, align 4, !tbaa !1
  %284 = zext i32 %283 to i64
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %284, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %285)
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

; <label>:288                                     ; preds = %279
  %289 = load i32, i32* %i, align 4, !tbaa !1
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %289)
  br label %291

; <label>:291                                     ; preds = %288, %279
  br label %292

; <label>:292                                     ; preds = %291
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %i, align 4, !tbaa !1
  br label %276

; <label>:295                                     ; preds = %276
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %296

; <label>:296                                     ; preds = %324, %295
  %297 = load i32, i32* %i, align 4, !tbaa !1
  %298 = icmp slt i32 %297, 1
  br i1 %298, label %299, label %327

; <label>:299                                     ; preds = %296
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %300

; <label>:300                                     ; preds = %320, %299
  %301 = load i32, i32* %j, align 4, !tbaa !1
  %302 = icmp slt i32 %301, 2
  br i1 %302, label %303, label %323

; <label>:303                                     ; preds = %300
  %304 = load i32, i32* %j, align 4, !tbaa !1
  %305 = sext i32 %304 to i64
  %306 = load i32, i32* %i, align 4, !tbaa !1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [1 x [2 x i16]], [1 x [2 x i16]]* @g_375, i32 0, i64 %307
  %309 = getelementptr inbounds [2 x i16], [2 x i16]* %308, i32 0, i64 %305
  %310 = load volatile i16, i16* %309, align 2, !tbaa !10
  %311 = sext i16 %310 to i64
  %312 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %311, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 %312)
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

; <label>:315                                     ; preds = %303
  %316 = load i32, i32* %i, align 4, !tbaa !1
  %317 = load i32, i32* %j, align 4, !tbaa !1
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %316, i32 %317)
  br label %319

; <label>:319                                     ; preds = %315, %303
  br label %320

; <label>:320                                     ; preds = %319
  %321 = load i32, i32* %j, align 4, !tbaa !1
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %j, align 4, !tbaa !1
  br label %300

; <label>:323                                     ; preds = %300
  br label %324

; <label>:324                                     ; preds = %323
  %325 = load i32, i32* %i, align 4, !tbaa !1
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %i, align 4, !tbaa !1
  br label %296

; <label>:327                                     ; preds = %296
  %328 = load i32, i32* @g_377, align 4, !tbaa !1
  %329 = zext i32 %328 to i64
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %330)
  %331 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_380, i32 0, i32 0), align 8, !tbaa !7
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %331, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %332)
  %333 = load i8, i8* @g_392, align 1, !tbaa !9
  %334 = sext i8 %333 to i64
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %334, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %335)
  %336 = load volatile i8, i8* @g_395, align 1, !tbaa !9
  %337 = sext i8 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %338)
  %339 = load volatile i32, i32* @g_396, align 4, !tbaa !1
  %340 = zext i32 %339 to i64
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %341)
  %342 = load i32, i32* @g_400, align 4, !tbaa !1
  %343 = sext i32 %342 to i64
  %344 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %343, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %344)
  %345 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_414, i32 0, i32 0), align 8, !tbaa !7
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %345, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 %346)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %347

; <label>:347                                     ; preds = %363, %327
  %348 = load i32, i32* %i, align 4, !tbaa !1
  %349 = icmp slt i32 %348, 10
  br i1 %349, label %350, label %366

; <label>:350                                     ; preds = %347
  %351 = load i32, i32* %i, align 4, !tbaa !1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [10 x %union.U2], [10 x %union.U2]* @g_424, i32 0, i64 %352
  %354 = bitcast %union.U2* %353 to i64*
  %355 = load volatile i64, i64* %354, align 8, !tbaa !7
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %355, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i32 %356)
  %357 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %362

; <label>:359                                     ; preds = %350
  %360 = load i32, i32* %i, align 4, !tbaa !1
  %361 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %360)
  br label %362

; <label>:362                                     ; preds = %359, %350
  br label %363

; <label>:363                                     ; preds = %362
  %364 = load i32, i32* %i, align 4, !tbaa !1
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %i, align 4, !tbaa !1
  br label %347

; <label>:366                                     ; preds = %347
  %367 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_425, i32 0, i32 0), align 8, !tbaa !7
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %367, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %368)
  %369 = load i32, i32* @g_426, align 4, !tbaa !1
  %370 = zext i32 %369 to i64
  %371 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %370, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %371)
  %372 = load i16, i16* @g_470, align 2, !tbaa !10
  %373 = zext i16 %372 to i64
  %374 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %373, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %374)
  %375 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_480, i32 0, i32 0), align 2, !tbaa !10
  %376 = zext i16 %375 to i64
  %377 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %376, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %377)
  %378 = load i32, i32* bitcast ({ i16, [6 x i8] }* @g_480 to i32*), align 4, !tbaa !1
  %379 = sext i32 %378 to i64
  %380 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %379, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 %380)
  %381 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_480, i32 0, i32 0), align 2, !tbaa !10
  %382 = sext i16 %381 to i64
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %382, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 %383)
  %384 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i16, [6 x i8] }* @g_480 to %union.U0*), i32 0, i32 0), align 8, !tbaa !7
  %385 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %384, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 %385)
  %386 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_480, i32 0, i32 0), align 2, !tbaa !10
  %387 = sext i16 %386 to i64
  %388 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %387, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 %388)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %389

; <label>:389                                     ; preds = %430, %366
  %390 = load i32, i32* %i, align 4, !tbaa !1
  %391 = icmp slt i32 %390, 6
  br i1 %391, label %392, label %433

; <label>:392                                     ; preds = %389
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %393

; <label>:393                                     ; preds = %426, %392
  %394 = load i32, i32* %j, align 4, !tbaa !1
  %395 = icmp slt i32 %394, 10
  br i1 %395, label %396, label %429

; <label>:396                                     ; preds = %393
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %397

; <label>:397                                     ; preds = %422, %396
  %398 = load i32, i32* %k, align 4, !tbaa !1
  %399 = icmp slt i32 %398, 4
  br i1 %399, label %400, label %425

; <label>:400                                     ; preds = %397
  %401 = load i32, i32* %k, align 4, !tbaa !1
  %402 = sext i32 %401 to i64
  %403 = load i32, i32* %j, align 4, !tbaa !1
  %404 = sext i32 %403 to i64
  %405 = load i32, i32* %i, align 4, !tbaa !1
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [6 x [10 x [4 x %union.U1]]], [6 x [10 x [4 x %union.U1]]]* @g_489, i32 0, i64 %406
  %408 = getelementptr inbounds [10 x [4 x %union.U1]], [10 x [4 x %union.U1]]* %407, i32 0, i64 %404
  %409 = getelementptr inbounds [4 x %union.U1], [4 x %union.U1]* %408, i32 0, i64 %402
  %410 = bitcast %union.U1* %409 to i8*
  %411 = load i8, i8* %410, align 1, !tbaa !9
  %412 = sext i8 %411 to i64
  %413 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %412, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0), i32 %413)
  %414 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %421

; <label>:416                                     ; preds = %400
  %417 = load i32, i32* %i, align 4, !tbaa !1
  %418 = load i32, i32* %j, align 4, !tbaa !1
  %419 = load i32, i32* %k, align 4, !tbaa !1
  %420 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0), i32 %417, i32 %418, i32 %419)
  br label %421

; <label>:421                                     ; preds = %416, %400
  br label %422

; <label>:422                                     ; preds = %421
  %423 = load i32, i32* %k, align 4, !tbaa !1
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %k, align 4, !tbaa !1
  br label %397

; <label>:425                                     ; preds = %397
  br label %426

; <label>:426                                     ; preds = %425
  %427 = load i32, i32* %j, align 4, !tbaa !1
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %j, align 4, !tbaa !1
  br label %393

; <label>:429                                     ; preds = %393
  br label %430

; <label>:430                                     ; preds = %429
  %431 = load i32, i32* %i, align 4, !tbaa !1
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %i, align 4, !tbaa !1
  br label %389

; <label>:433                                     ; preds = %389
  %434 = load i64, i64* @g_513, align 8, !tbaa !7
  %435 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %434, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 %435)
  %436 = load volatile i64, i64* @g_530, align 8, !tbaa !7
  %437 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %436, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 %437)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %438

; <label>:438                                     ; preds = %466, %433
  %439 = load i32, i32* %i, align 4, !tbaa !1
  %440 = icmp slt i32 %439, 10
  br i1 %440, label %441, label %469

; <label>:441                                     ; preds = %438
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %442

; <label>:442                                     ; preds = %462, %441
  %443 = load i32, i32* %j, align 4, !tbaa !1
  %444 = icmp slt i32 %443, 6
  br i1 %444, label %445, label %465

; <label>:445                                     ; preds = %442
  %446 = load i32, i32* %j, align 4, !tbaa !1
  %447 = sext i32 %446 to i64
  %448 = load i32, i32* %i, align 4, !tbaa !1
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [10 x [6 x i8]], [10 x [6 x i8]]* @g_545, i32 0, i64 %449
  %451 = getelementptr inbounds [6 x i8], [6 x i8]* %450, i32 0, i64 %447
  %452 = load i8, i8* %451, align 1, !tbaa !9
  %453 = sext i8 %452 to i64
  %454 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %453, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 %454)
  %455 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %461

; <label>:457                                     ; preds = %445
  %458 = load i32, i32* %i, align 4, !tbaa !1
  %459 = load i32, i32* %j, align 4, !tbaa !1
  %460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %458, i32 %459)
  br label %461

; <label>:461                                     ; preds = %457, %445
  br label %462

; <label>:462                                     ; preds = %461
  %463 = load i32, i32* %j, align 4, !tbaa !1
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %j, align 4, !tbaa !1
  br label %442

; <label>:465                                     ; preds = %442
  br label %466

; <label>:466                                     ; preds = %465
  %467 = load i32, i32* %i, align 4, !tbaa !1
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %i, align 4, !tbaa !1
  br label %438

; <label>:469                                     ; preds = %438
  %470 = load i32, i32* @g_546, align 4, !tbaa !1
  %471 = sext i32 %470 to i64
  %472 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %471, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32 %472)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %473

; <label>:473                                     ; preds = %489, %469
  %474 = load i32, i32* %i, align 4, !tbaa !1
  %475 = icmp slt i32 %474, 8
  br i1 %475, label %476, label %492

; <label>:476                                     ; preds = %473
  %477 = load i32, i32* %i, align 4, !tbaa !1
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [8 x i32], [8 x i32]* @g_547, i32 0, i64 %478
  %480 = load volatile i32, i32* %479, align 4, !tbaa !1
  %481 = sext i32 %480 to i64
  %482 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %481, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 %482)
  %483 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %488

; <label>:485                                     ; preds = %476
  %486 = load i32, i32* %i, align 4, !tbaa !1
  %487 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %486)
  br label %488

; <label>:488                                     ; preds = %485, %476
  br label %489

; <label>:489                                     ; preds = %488
  %490 = load i32, i32* %i, align 4, !tbaa !1
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %i, align 4, !tbaa !1
  br label %473

; <label>:492                                     ; preds = %473
  %493 = load i64, i64* @g_571, align 8, !tbaa !7
  %494 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %493, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 %494)
  %495 = load i32, i32* @g_572, align 4, !tbaa !1
  %496 = zext i32 %495 to i64
  %497 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %496, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 %497)
  %498 = load i16, i16* @g_598, align 2, !tbaa !10
  %499 = zext i16 %498 to i64
  %500 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %499, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i32 %500)
  %501 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_605, i32 0, i32 0), align 8, !tbaa !7
  %502 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %501, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i32 %502)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %503

; <label>:503                                     ; preds = %519, %492
  %504 = load i32, i32* %i, align 4, !tbaa !1
  %505 = icmp slt i32 %504, 6
  br i1 %505, label %506, label %522

; <label>:506                                     ; preds = %503
  %507 = load i32, i32* %i, align 4, !tbaa !1
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [6 x i32], [6 x i32]* @g_916, i32 0, i64 %508
  %510 = load i32, i32* %509, align 4, !tbaa !1
  %511 = sext i32 %510 to i64
  %512 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %511, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i32 %512)
  %513 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %518

; <label>:515                                     ; preds = %506
  %516 = load i32, i32* %i, align 4, !tbaa !1
  %517 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %516)
  br label %518

; <label>:518                                     ; preds = %515, %506
  br label %519

; <label>:519                                     ; preds = %518
  %520 = load i32, i32* %i, align 4, !tbaa !1
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %i, align 4, !tbaa !1
  br label %503

; <label>:522                                     ; preds = %503
  %523 = load i64, i64* @g_924, align 8, !tbaa !7
  %524 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %523, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i32 %524)
  %525 = load volatile i16, i16* @g_928, align 2, !tbaa !10
  %526 = sext i16 %525 to i64
  %527 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %526, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 %527)
  %528 = load i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), align 8, !tbaa !7
  %529 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %528, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 %529)
  %530 = load i8, i8* bitcast (%union.U1* @g_930 to i8*), align 1, !tbaa !9
  %531 = sext i8 %530 to i64
  %532 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %531, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i32 %532)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %533

; <label>:533                                     ; preds = %549, %522
  %534 = load i32, i32* %i, align 4, !tbaa !1
  %535 = icmp slt i32 %534, 6
  br i1 %535, label %536, label %552

; <label>:536                                     ; preds = %533
  %537 = load i32, i32* %i, align 4, !tbaa !1
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds [6 x i32], [6 x i32]* @g_1010, i32 0, i64 %538
  %540 = load i32, i32* %539, align 4, !tbaa !1
  %541 = sext i32 %540 to i64
  %542 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %541, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 %542)
  %543 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %548

; <label>:545                                     ; preds = %536
  %546 = load i32, i32* %i, align 4, !tbaa !1
  %547 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %546)
  br label %548

; <label>:548                                     ; preds = %545, %536
  br label %549

; <label>:549                                     ; preds = %548
  %550 = load i32, i32* %i, align 4, !tbaa !1
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %i, align 4, !tbaa !1
  br label %533

; <label>:552                                     ; preds = %533
  %553 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1034, i32 0, i32 0), align 2, !tbaa !10
  %554 = zext i16 %553 to i64
  %555 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %554, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 %555)
  %556 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1034, i32 0, i32 0), align 2, !tbaa !10
  %557 = sext i16 %556 to i64
  %558 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %557, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 %558)
  %559 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1034, i32 0, i32 0), align 2, !tbaa !10
  %560 = sext i16 %559 to i64
  %561 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %560, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i32 %561)
  %562 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_1081, i32 0, i32 0), align 8, !tbaa !7
  %563 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %562, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 %563)
  %564 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_1089, i32 0, i32 0), align 8, !tbaa !7
  %565 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %564, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 %565)
  %566 = load i16, i16* @g_1105, align 2, !tbaa !10
  %567 = sext i16 %566 to i64
  %568 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %567, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 %568)
  %569 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1115, i32 0, i32 0), align 2, !tbaa !10
  %570 = zext i16 %569 to i64
  %571 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %570, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 %571)
  %572 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1115, i32 0, i32 0), align 2, !tbaa !10
  %573 = sext i16 %572 to i64
  %574 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %573, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i32 %574)
  %575 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1115, i32 0, i32 0), align 2, !tbaa !10
  %576 = sext i16 %575 to i64
  %577 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %576, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i32 %577)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %578

; <label>:578                                     ; preds = %606, %552
  %579 = load i32, i32* %i, align 4, !tbaa !1
  %580 = icmp slt i32 %579, 4
  br i1 %580, label %581, label %609

; <label>:581                                     ; preds = %578
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %582

; <label>:582                                     ; preds = %602, %581
  %583 = load i32, i32* %j, align 4, !tbaa !1
  %584 = icmp slt i32 %583, 5
  br i1 %584, label %585, label %605

; <label>:585                                     ; preds = %582
  %586 = load i32, i32* %j, align 4, !tbaa !1
  %587 = sext i32 %586 to i64
  %588 = load i32, i32* %i, align 4, !tbaa !1
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds [4 x [5 x %union.U2]], [4 x [5 x %union.U2]]* @g_1143, i32 0, i64 %589
  %591 = getelementptr inbounds [5 x %union.U2], [5 x %union.U2]* %590, i32 0, i64 %587
  %592 = bitcast %union.U2* %591 to i64*
  %593 = load volatile i64, i64* %592, align 8, !tbaa !7
  %594 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %593, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0), i32 %594)
  %595 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %601

; <label>:597                                     ; preds = %585
  %598 = load i32, i32* %i, align 4, !tbaa !1
  %599 = load i32, i32* %j, align 4, !tbaa !1
  %600 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %598, i32 %599)
  br label %601

; <label>:601                                     ; preds = %597, %585
  br label %602

; <label>:602                                     ; preds = %601
  %603 = load i32, i32* %j, align 4, !tbaa !1
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %j, align 4, !tbaa !1
  br label %582

; <label>:605                                     ; preds = %582
  br label %606

; <label>:606                                     ; preds = %605
  %607 = load i32, i32* %i, align 4, !tbaa !1
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %i, align 4, !tbaa !1
  br label %578

; <label>:609                                     ; preds = %578
  %610 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_1191, i32 0, i32 0), align 8, !tbaa !7
  %611 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %610, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i32 %611)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %612

; <label>:612                                     ; preds = %640, %609
  %613 = load i32, i32* %i, align 4, !tbaa !1
  %614 = icmp slt i32 %613, 4
  br i1 %614, label %615, label %643

; <label>:615                                     ; preds = %612
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %616

; <label>:616                                     ; preds = %636, %615
  %617 = load i32, i32* %j, align 4, !tbaa !1
  %618 = icmp slt i32 %617, 2
  br i1 %618, label %619, label %639

; <label>:619                                     ; preds = %616
  %620 = load i32, i32* %j, align 4, !tbaa !1
  %621 = sext i32 %620 to i64
  %622 = load i32, i32* %i, align 4, !tbaa !1
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds [4 x [2 x i16]], [4 x [2 x i16]]* @g_1193, i32 0, i64 %623
  %625 = getelementptr inbounds [2 x i16], [2 x i16]* %624, i32 0, i64 %621
  %626 = load i16, i16* %625, align 2, !tbaa !10
  %627 = zext i16 %626 to i64
  %628 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %627, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0), i32 %628)
  %629 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %635

; <label>:631                                     ; preds = %619
  %632 = load i32, i32* %i, align 4, !tbaa !1
  %633 = load i32, i32* %j, align 4, !tbaa !1
  %634 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %632, i32 %633)
  br label %635

; <label>:635                                     ; preds = %631, %619
  br label %636

; <label>:636                                     ; preds = %635
  %637 = load i32, i32* %j, align 4, !tbaa !1
  %638 = add nsw i32 %637, 1
  store i32 %638, i32* %j, align 4, !tbaa !1
  br label %616

; <label>:639                                     ; preds = %616
  br label %640

; <label>:640                                     ; preds = %639
  %641 = load i32, i32* %i, align 4, !tbaa !1
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %i, align 4, !tbaa !1
  br label %612

; <label>:643                                     ; preds = %612
  %644 = load volatile i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_1300, i32 0, i32 0), align 8, !tbaa !7
  %645 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %644, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 %645)
  %646 = load volatile i8, i8* bitcast (%union.U1* @g_1300 to i8*), align 1, !tbaa !9
  %647 = sext i8 %646 to i64
  %648 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %647, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i32 %648)
  %649 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i32 %649)
  %650 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1328, i32 0, i32 0), align 2, !tbaa !10
  %651 = zext i16 %650 to i64
  %652 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %651, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), i32 %652)
  %653 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1328, i32 0, i32 0), align 2, !tbaa !10
  %654 = sext i16 %653 to i64
  %655 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %654, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 %655)
  %656 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1328, i32 0, i32 0), align 2, !tbaa !10
  %657 = sext i16 %656 to i64
  %658 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %657, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i32 %658)
  %659 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_1422, i32 0, i32 0), align 8, !tbaa !7
  %660 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %659, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i32 %660)
  %661 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1464, i32 0, i32 0), align 2, !tbaa !10
  %662 = zext i16 %661 to i64
  %663 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %662, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i32 %663)
  %664 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1464, i32 0, i32 0), align 2, !tbaa !10
  %665 = sext i16 %664 to i64
  %666 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %665, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i32 %666)
  %667 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1464, i32 0, i32 0), align 2, !tbaa !10
  %668 = sext i16 %667 to i64
  %669 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %668, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i32 %669)
  %670 = load volatile i32, i32* @g_1469, align 4, !tbaa !1
  %671 = zext i32 %670 to i64
  %672 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %671, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32 %672)
  %673 = load i8, i8* @g_1546, align 1, !tbaa !9
  %674 = sext i8 %673 to i64
  %675 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %674, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i32 %675)
  %676 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_1591, i32 0, i32 0), align 8, !tbaa !7
  %677 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %676, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i32 %677)
  %678 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_1634, i32 0, i32 0), align 8, !tbaa !7
  %679 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %678, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0), i32 %679)
  %680 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_1693, i32 0, i32 0), align 8, !tbaa !7
  %681 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %680, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i32 %681)
  %682 = load volatile i8, i8* @g_1737, align 1, !tbaa !9
  %683 = zext i8 %682 to i64
  %684 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %683, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i32 %684)
  %685 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_1802, i32 0, i32 0), align 8, !tbaa !7
  %686 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %685, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i32 %686)
  %687 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_1845, i32 0, i32 0), align 8, !tbaa !7
  %688 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %687, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i32 %688)
  %689 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_1846, i32 0, i32 0), align 8, !tbaa !7
  %690 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %689, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i32 %690)
  %691 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %692 = zext i32 %691 to i64
  %693 = xor i64 %692, 4294967295
  %694 = trunc i64 %693 to i32
  %695 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %694, i32 %695)
  %696 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %696) #1
  %697 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %697) #1
  %698 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %698) #1
  %699 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %699) #1
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
  %l_2 = alloca i32*, align 8
  %l_3 = alloca i32*, align 8
  %l_5 = alloca i32*, align 8
  %l_6 = alloca i32, align 4
  %l_7 = alloca i32*, align 8
  %l_8 = alloca i32*, align 8
  %l_9 = alloca i32*, align 8
  %l_10 = alloca [3 x [6 x [1 x i32*]]], align 16
  %l_36 = alloca i32*, align 8
  %l_37 = alloca i32*, align 8
  %l_923 = alloca i64*, align 8
  %l_929 = alloca i8*, align 8
  %l_1302 = alloca i8*, align 8
  %l_1301 = alloca i8**, align 8
  %l_1874 = alloca i32, align 4
  %l_1875 = alloca i8, align 1
  %l_1876 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = alloca %union.U0, align 8
  %l_1879 = alloca i64, align 8
  %2 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* null, i32** %l_2, align 8, !tbaa !5
  %3 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* @g_4, i32** %l_3, align 8, !tbaa !5
  %4 = bitcast i32** %l_5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_4, i32** %l_5, align 8, !tbaa !5
  %5 = bitcast i32* %l_6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 1099276794, i32* %l_6, align 4, !tbaa !1
  %6 = bitcast i32** %l_7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* %l_6, i32** %l_7, align 8, !tbaa !5
  %7 = bitcast i32** %l_8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* %l_6, i32** %l_8, align 8, !tbaa !5
  %8 = bitcast i32** %l_9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* %l_6, i32** %l_9, align 8, !tbaa !5
  %9 = bitcast [3 x [6 x [1 x i32*]]]* %l_10 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %9) #1
  %10 = getelementptr inbounds [3 x [6 x [1 x i32*]]], [3 x [6 x [1 x i32*]]]* %l_10, i64 0, i64 0
  %11 = getelementptr inbounds [6 x [1 x i32*]], [6 x [1 x i32*]]* %10, i64 0, i64 0
  %12 = getelementptr inbounds [1 x i32*], [1 x i32*]* %11, i64 0, i64 0
  store i32* null, i32** %12, !tbaa !5
  %13 = getelementptr inbounds [1 x i32*], [1 x i32*]* %11, i64 1
  %14 = getelementptr inbounds [1 x i32*], [1 x i32*]* %13, i64 0, i64 0
  store i32* %l_6, i32** %14, !tbaa !5
  %15 = getelementptr inbounds [1 x i32*], [1 x i32*]* %13, i64 1
  %16 = getelementptr inbounds [1 x i32*], [1 x i32*]* %15, i64 0, i64 0
  store i32* null, i32** %16, !tbaa !5
  %17 = getelementptr inbounds [1 x i32*], [1 x i32*]* %15, i64 1
  %18 = getelementptr inbounds [1 x i32*], [1 x i32*]* %17, i64 0, i64 0
  store i32* null, i32** %18, !tbaa !5
  %19 = getelementptr inbounds [1 x i32*], [1 x i32*]* %17, i64 1
  %20 = getelementptr inbounds [1 x i32*], [1 x i32*]* %19, i64 0, i64 0
  store i32* %l_6, i32** %20, !tbaa !5
  %21 = getelementptr inbounds [1 x i32*], [1 x i32*]* %19, i64 1
  %22 = getelementptr inbounds [1 x i32*], [1 x i32*]* %21, i64 0, i64 0
  store i32* null, i32** %22, !tbaa !5
  %23 = getelementptr inbounds [6 x [1 x i32*]], [6 x [1 x i32*]]* %10, i64 1
  %24 = getelementptr inbounds [6 x [1 x i32*]], [6 x [1 x i32*]]* %23, i64 0, i64 0
  %25 = getelementptr inbounds [1 x i32*], [1 x i32*]* %24, i64 0, i64 0
  store i32* null, i32** %25, !tbaa !5
  %26 = getelementptr inbounds [1 x i32*], [1 x i32*]* %24, i64 1
  %27 = getelementptr inbounds [1 x i32*], [1 x i32*]* %26, i64 0, i64 0
  store i32* %l_6, i32** %27, !tbaa !5
  %28 = getelementptr inbounds [1 x i32*], [1 x i32*]* %26, i64 1
  %29 = getelementptr inbounds [1 x i32*], [1 x i32*]* %28, i64 0, i64 0
  store i32* null, i32** %29, !tbaa !5
  %30 = getelementptr inbounds [1 x i32*], [1 x i32*]* %28, i64 1
  %31 = getelementptr inbounds [1 x i32*], [1 x i32*]* %30, i64 0, i64 0
  store i32* null, i32** %31, !tbaa !5
  %32 = getelementptr inbounds [1 x i32*], [1 x i32*]* %30, i64 1
  %33 = getelementptr inbounds [1 x i32*], [1 x i32*]* %32, i64 0, i64 0
  store i32* %l_6, i32** %33, !tbaa !5
  %34 = getelementptr inbounds [1 x i32*], [1 x i32*]* %32, i64 1
  %35 = getelementptr inbounds [1 x i32*], [1 x i32*]* %34, i64 0, i64 0
  store i32* null, i32** %35, !tbaa !5
  %36 = getelementptr inbounds [6 x [1 x i32*]], [6 x [1 x i32*]]* %23, i64 1
  %37 = getelementptr inbounds [6 x [1 x i32*]], [6 x [1 x i32*]]* %36, i64 0, i64 0
  %38 = getelementptr inbounds [1 x i32*], [1 x i32*]* %37, i64 0, i64 0
  store i32* null, i32** %38, !tbaa !5
  %39 = getelementptr inbounds [1 x i32*], [1 x i32*]* %37, i64 1
  %40 = getelementptr inbounds [1 x i32*], [1 x i32*]* %39, i64 0, i64 0
  store i32* %l_6, i32** %40, !tbaa !5
  %41 = getelementptr inbounds [1 x i32*], [1 x i32*]* %39, i64 1
  %42 = getelementptr inbounds [1 x i32*], [1 x i32*]* %41, i64 0, i64 0
  store i32* null, i32** %42, !tbaa !5
  %43 = getelementptr inbounds [1 x i32*], [1 x i32*]* %41, i64 1
  %44 = getelementptr inbounds [1 x i32*], [1 x i32*]* %43, i64 0, i64 0
  store i32* null, i32** %44, !tbaa !5
  %45 = getelementptr inbounds [1 x i32*], [1 x i32*]* %43, i64 1
  %46 = getelementptr inbounds [1 x i32*], [1 x i32*]* %45, i64 0, i64 0
  store i32* %l_6, i32** %46, !tbaa !5
  %47 = getelementptr inbounds [1 x i32*], [1 x i32*]* %45, i64 1
  %48 = getelementptr inbounds [1 x i32*], [1 x i32*]* %47, i64 0, i64 0
  store i32* null, i32** %48, !tbaa !5
  %49 = bitcast i32** %l_36 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i32* @g_4, i32** %l_36, align 8, !tbaa !5
  %50 = bitcast i32** %l_37 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  store i32* @g_38, i32** %l_37, align 8, !tbaa !5
  %51 = bitcast i64** %l_923 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  store i64* @g_924, i64** %l_923, align 8, !tbaa !5
  %52 = bitcast i8** %l_929 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  store i8* @g_392, i8** %l_929, align 8, !tbaa !5
  %53 = bitcast i8** %l_1302 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  store i8* @g_1303, i8** %l_1302, align 8, !tbaa !5
  %54 = bitcast i8*** %l_1301 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  store i8** %l_1302, i8*** %l_1301, align 8, !tbaa !5
  %55 = bitcast i32* %l_1874 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  store i32 0, i32* %l_1874, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1875) #1
  store i8 -2, i8* %l_1875, align 1, !tbaa !9
  %56 = bitcast i64* %l_1876 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  store i64 7, i64* %l_1876, align 8, !tbaa !7
  %57 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load volatile i64, i64* @g_11, align 8, !tbaa !7
  %61 = add i64 %60, -1
  store volatile i64 %61, i64* @g_11, align 8, !tbaa !7
  %62 = load i32*, i32** %l_3, align 8, !tbaa !5
  %63 = load i32, i32* %62, align 4, !tbaa !1
  %64 = load i32*, i32** %l_8, align 8, !tbaa !5
  %65 = load i32, i32* %64, align 4, !tbaa !1
  %66 = xor i32 %65, %63
  store i32 %66, i32* %64, align 4, !tbaa !1
  %67 = load i32, i32* @g_4, align 4, !tbaa !1
  %68 = sext i32 %67 to i64
  %69 = load i32*, i32** %l_36, align 8, !tbaa !5
  %70 = load i32*, i32** %l_37, align 8, !tbaa !5
  %71 = load i32, i32* %70, align 4, !tbaa !1
  %72 = add i32 %71, 1
  store i32 %72, i32* %70, align 4, !tbaa !1
  %73 = load i8*, i8** @g_47, align 8, !tbaa !5
  %74 = load i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), align 8
  %75 = call i64 @func_43(i8* %73, i8* getelementptr inbounds ([8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i64 1, i64 4), i64 %74)
  %76 = load i64*, i64** %l_923, align 8, !tbaa !5
  %77 = load i64, i64* %76, align 8, !tbaa !7
  %78 = add i64 %77, -1
  store i64 %78, i64* %76, align 8, !tbaa !7
  %79 = call i64 @safe_sub_func_uint64_t_u_u(i64 %77, i64 1)
  %80 = and i64 %75, %79
  %81 = trunc i64 %80 to i8
  %82 = load i16*, i16** @g_927, align 8, !tbaa !5
  %83 = icmp ne i16* %82, null
  %84 = zext i1 %83 to i32
  %85 = trunc i32 %84 to i8
  %86 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %81, i8 zeroext %85)
  %87 = zext i8 %86 to i32
  %88 = load i8*, i8** %l_929, align 8, !tbaa !5
  %89 = load i32, i32* @g_546, align 4, !tbaa !1
  %90 = load i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), align 8
  %91 = call i8* @func_30(i32* %69, i32 %87, i8* %88, i64 %90, i32 %89)
  %92 = load i8**, i8*** %l_1301, align 8, !tbaa !5
  store i8* %91, i8** %92, align 8, !tbaa !5
  %93 = call signext i8 @func_28(i8* %91)
  %94 = sext i8 %93 to i32
  %95 = load i32*, i32** %l_36, align 8, !tbaa !5
  %96 = load i32, i32* %95, align 4, !tbaa !1
  %97 = icmp sle i32 %94, %96
  %98 = zext i1 %97 to i32
  %99 = load i32*, i32** %l_9, align 8, !tbaa !5
  %100 = load i32, i32* %99, align 4, !tbaa !1
  %101 = load i32*, i32** %l_5, align 8, !tbaa !5
  %102 = load i32, i32* %101, align 4, !tbaa !1
  %103 = call i32 @safe_div_func_int32_t_s_s(i32 %100, i32 %102)
  %104 = sext i32 %103 to i64
  %105 = call i64 @safe_div_func_int64_t_s_s(i64 %68, i64 %104)
  %106 = trunc i64 %105 to i16
  %107 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext -5, i16 zeroext %106)
  br i1 true, label %108, label %112

; <label>:108                                     ; preds = %0
  %109 = load i32*, i32** %l_3, align 8, !tbaa !5
  %110 = load i32, i32* %109, align 4, !tbaa !1
  %111 = icmp ne i32 %110, 0
  br label %112

; <label>:112                                     ; preds = %108, %0
  %113 = phi i1 [ false, %0 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = trunc i32 %114 to i16
  %116 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %115)
  %117 = sext i16 %116 to i64
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = sext i32 %119 to i64
  %121 = call i64 @func_18(i64 %120, i32* %l_6)
  %122 = getelementptr %union.U0, %union.U0* %1, i32 0, i32 0
  store i64 %121, i64* %122, align 8
  %123 = load i32*, i32** %l_5, align 8, !tbaa !5
  %124 = load i32, i32* %123, align 4, !tbaa !1
  %125 = load i8, i8* getelementptr inbounds ([10 x [6 x i8]], [10 x [6 x i8]]* @g_545, i32 0, i64 5, i64 4), align 1, !tbaa !9
  %126 = sext i8 %125 to i32
  %127 = icmp sge i32 %124, %126
  %128 = zext i1 %127 to i32
  %129 = sext i32 %128 to i64
  %130 = icmp ult i64 %129, 4
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %l_1874, align 4, !tbaa !1
  %133 = icmp ule i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = trunc i32 %134 to i8
  %136 = load i8, i8* %l_1875, align 1, !tbaa !9
  %137 = zext i8 %136 to i32
  %138 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %135, i32 %137)
  %139 = load i32*, i32** %l_3, align 8, !tbaa !5
  %140 = load i32, i32* %139, align 4, !tbaa !1
  %141 = trunc i32 %140 to i8
  %142 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %138, i8 zeroext %141)
  %143 = zext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

; <label>:145                                     ; preds = %112
  %146 = load i32*, i32** %l_36, align 8, !tbaa !5
  %147 = load i32, i32* %146, align 4, !tbaa !1
  %148 = icmp ne i32 %147, 0
  br label %149

; <label>:149                                     ; preds = %145, %112
  %150 = phi i1 [ false, %112 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* %l_1876, align 8, !tbaa !7
  %154 = and i64 %153, %152
  store i64 %154, i64* %l_1876, align 8, !tbaa !7
  store i32 0, i32* %l_1874, align 4, !tbaa !1
  br label %155

; <label>:155                                     ; preds = %166, %149
  %156 = load i32, i32* %l_1874, align 4, !tbaa !1
  %157 = icmp ule i32 %156, 38
  br i1 %157, label %158, label %169

; <label>:158                                     ; preds = %155
  %159 = bitcast i64* %l_1879 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %159) #1
  store i64 -4641779965833779825, i64* %l_1879, align 8, !tbaa !7
  store i64 -4, i64* %l_1879, align 8, !tbaa !7
  %160 = load i32*, i32** %l_3, align 8, !tbaa !5
  %161 = load i32, i32* %160, align 4, !tbaa !1
  %162 = sext i32 %161 to i64
  %163 = and i64 %162, -4
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %160, align 4, !tbaa !1
  %165 = bitcast i64* %l_1879 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  br label %166

; <label>:166                                     ; preds = %158
  %167 = load i32, i32* %l_1874, align 4, !tbaa !1
  %168 = add i32 %167, 1
  store i32 %168, i32* %l_1874, align 4, !tbaa !1
  br label %155

; <label>:169                                     ; preds = %155
  %170 = load i32**, i32*** @g_814, align 8, !tbaa !5
  %171 = load volatile i32*, i32** %170, align 8, !tbaa !5
  %172 = load i32, i32* %171, align 4, !tbaa !1
  %173 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i64* %l_1876 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1875) #1
  %177 = bitcast i32* %l_1874 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i8*** %l_1301 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast i8** %l_1302 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast i8** %l_929 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast i64** %l_923 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast i32** %l_37 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %183 = bitcast i32** %l_36 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast [3 x [6 x [1 x i32*]]]* %l_10 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %184) #1
  %185 = bitcast i32** %l_9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = bitcast i32** %l_8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast i32** %l_7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast i32* %l_6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32** %l_5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  ret i32 %172
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.97, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), i32 %3)
  ret void
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
define internal i64 @func_18(i64 %p_19, i32* %p_20) #0 {
  %1 = alloca %union.U0, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %l_1856 = alloca [4 x [5 x %union.U0**]], align 16
  %l_1863 = alloca [7 x [4 x %union.U1]], align 16
  %l_1868 = alloca i32****, align 8
  %l_1871 = alloca i64*, align 8
  %l_1870 = alloca i64**, align 8
  %l_1869 = alloca [6 x [7 x [3 x i64***]]], align 16
  %l_1872 = alloca i8, align 1
  %l_1873 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i64 %p_19, i64* %2, align 8, !tbaa !7
  store i32* %p_20, i32** %3, align 8, !tbaa !5
  %4 = bitcast [4 x [5 x %union.U0**]]* %l_1856 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %4) #1
  %5 = bitcast [4 x [5 x %union.U0**]]* %l_1856 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([4 x [5 x %union.U0**]]* @func_18.l_1856 to i8*), i64 160, i32 16, i1 false)
  %6 = bitcast [7 x [4 x %union.U1]]* %l_1863 to i8*
  call void @llvm.lifetime.start(i64 224, i8* %6) #1
  %7 = bitcast [7 x [4 x %union.U1]]* %l_1863 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([7 x [4 x %union.U1]]* @func_18.l_1863 to i8*), i64 224, i32 16, i1 false)
  %8 = bitcast i32***** %l_1868 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32**** @g_1780, i32***** %l_1868, align 8, !tbaa !5
  %9 = bitcast i64** %l_1871 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64* @g_145, i64** %l_1871, align 8, !tbaa !5
  %10 = bitcast i64*** %l_1870 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64** %l_1871, i64*** %l_1870, align 8, !tbaa !5
  %11 = bitcast [6 x [7 x [3 x i64***]]]* %l_1869 to i8*
  call void @llvm.lifetime.start(i64 1008, i8* %11) #1
  %12 = getelementptr inbounds [6 x [7 x [3 x i64***]]], [6 x [7 x [3 x i64***]]]* %l_1869, i64 0, i64 0
  %13 = getelementptr inbounds [7 x [3 x i64***]], [7 x [3 x i64***]]* %12, i64 0, i64 0
  %14 = getelementptr inbounds [3 x i64***], [3 x i64***]* %13, i64 0, i64 0
  store i64*** %l_1870, i64**** %14, !tbaa !5
  %15 = getelementptr inbounds i64***, i64**** %14, i64 1
  store i64*** %l_1870, i64**** %15, !tbaa !5
  %16 = getelementptr inbounds i64***, i64**** %15, i64 1
  store i64*** null, i64**** %16, !tbaa !5
  %17 = getelementptr inbounds [3 x i64***], [3 x i64***]* %13, i64 1
  %18 = bitcast [3 x i64***]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 24, i32 8, i1 false)
  %19 = getelementptr inbounds [3 x i64***], [3 x i64***]* %17, i64 0, i64 0
  %20 = getelementptr inbounds i64***, i64**** %19, i64 1
  %21 = getelementptr inbounds i64***, i64**** %20, i64 1
  %22 = getelementptr inbounds [3 x i64***], [3 x i64***]* %17, i64 1
  %23 = getelementptr inbounds [3 x i64***], [3 x i64***]* %22, i64 0, i64 0
  store i64*** %l_1870, i64**** %23, !tbaa !5
  %24 = getelementptr inbounds i64***, i64**** %23, i64 1
  store i64*** %l_1870, i64**** %24, !tbaa !5
  %25 = getelementptr inbounds i64***, i64**** %24, i64 1
  store i64*** %l_1870, i64**** %25, !tbaa !5
  %26 = getelementptr inbounds [3 x i64***], [3 x i64***]* %22, i64 1
  %27 = getelementptr inbounds [3 x i64***], [3 x i64***]* %26, i64 0, i64 0
  store i64*** %l_1870, i64**** %27, !tbaa !5
  %28 = getelementptr inbounds i64***, i64**** %27, i64 1
  store i64*** %l_1870, i64**** %28, !tbaa !5
  %29 = getelementptr inbounds i64***, i64**** %28, i64 1
  store i64*** %l_1870, i64**** %29, !tbaa !5
  %30 = getelementptr inbounds [3 x i64***], [3 x i64***]* %26, i64 1
  %31 = getelementptr inbounds [3 x i64***], [3 x i64***]* %30, i64 0, i64 0
  store i64*** %l_1870, i64**** %31, !tbaa !5
  %32 = getelementptr inbounds i64***, i64**** %31, i64 1
  store i64*** null, i64**** %32, !tbaa !5
  %33 = getelementptr inbounds i64***, i64**** %32, i64 1
  store i64*** %l_1870, i64**** %33, !tbaa !5
  %34 = getelementptr inbounds [3 x i64***], [3 x i64***]* %30, i64 1
  %35 = getelementptr inbounds [3 x i64***], [3 x i64***]* %34, i64 0, i64 0
  store i64*** %l_1870, i64**** %35, !tbaa !5
  %36 = getelementptr inbounds i64***, i64**** %35, i64 1
  store i64*** %l_1870, i64**** %36, !tbaa !5
  %37 = getelementptr inbounds i64***, i64**** %36, i64 1
  store i64*** %l_1870, i64**** %37, !tbaa !5
  %38 = getelementptr inbounds [3 x i64***], [3 x i64***]* %34, i64 1
  %39 = getelementptr inbounds [3 x i64***], [3 x i64***]* %38, i64 0, i64 0
  store i64*** null, i64**** %39, !tbaa !5
  %40 = getelementptr inbounds i64***, i64**** %39, i64 1
  store i64*** %l_1870, i64**** %40, !tbaa !5
  %41 = getelementptr inbounds i64***, i64**** %40, i64 1
  store i64*** %l_1870, i64**** %41, !tbaa !5
  %42 = getelementptr inbounds [7 x [3 x i64***]], [7 x [3 x i64***]]* %12, i64 1
  %43 = getelementptr inbounds [7 x [3 x i64***]], [7 x [3 x i64***]]* %42, i64 0, i64 0
  %44 = getelementptr inbounds [3 x i64***], [3 x i64***]* %43, i64 0, i64 0
  store i64*** %l_1870, i64**** %44, !tbaa !5
  %45 = getelementptr inbounds i64***, i64**** %44, i64 1
  store i64*** null, i64**** %45, !tbaa !5
  %46 = getelementptr inbounds i64***, i64**** %45, i64 1
  store i64*** %l_1870, i64**** %46, !tbaa !5
  %47 = getelementptr inbounds [3 x i64***], [3 x i64***]* %43, i64 1
  %48 = getelementptr inbounds [3 x i64***], [3 x i64***]* %47, i64 0, i64 0
  store i64*** null, i64**** %48, !tbaa !5
  %49 = getelementptr inbounds i64***, i64**** %48, i64 1
  store i64*** %l_1870, i64**** %49, !tbaa !5
  %50 = getelementptr inbounds i64***, i64**** %49, i64 1
  store i64*** %l_1870, i64**** %50, !tbaa !5
  %51 = getelementptr inbounds [3 x i64***], [3 x i64***]* %47, i64 1
  %52 = getelementptr inbounds [3 x i64***], [3 x i64***]* %51, i64 0, i64 0
  store i64*** %l_1870, i64**** %52, !tbaa !5
  %53 = getelementptr inbounds i64***, i64**** %52, i64 1
  store i64*** %l_1870, i64**** %53, !tbaa !5
  %54 = getelementptr inbounds i64***, i64**** %53, i64 1
  store i64*** null, i64**** %54, !tbaa !5
  %55 = getelementptr inbounds [3 x i64***], [3 x i64***]* %51, i64 1
  %56 = getelementptr inbounds [3 x i64***], [3 x i64***]* %55, i64 0, i64 0
  store i64*** %l_1870, i64**** %56, !tbaa !5
  %57 = getelementptr inbounds i64***, i64**** %56, i64 1
  store i64*** null, i64**** %57, !tbaa !5
  %58 = getelementptr inbounds i64***, i64**** %57, i64 1
  store i64*** %l_1870, i64**** %58, !tbaa !5
  %59 = getelementptr inbounds [3 x i64***], [3 x i64***]* %55, i64 1
  %60 = getelementptr inbounds [3 x i64***], [3 x i64***]* %59, i64 0, i64 0
  store i64*** null, i64**** %60, !tbaa !5
  %61 = getelementptr inbounds i64***, i64**** %60, i64 1
  store i64*** %l_1870, i64**** %61, !tbaa !5
  %62 = getelementptr inbounds i64***, i64**** %61, i64 1
  store i64*** %l_1870, i64**** %62, !tbaa !5
  %63 = getelementptr inbounds [3 x i64***], [3 x i64***]* %59, i64 1
  %64 = getelementptr inbounds [3 x i64***], [3 x i64***]* %63, i64 0, i64 0
  store i64*** %l_1870, i64**** %64, !tbaa !5
  %65 = getelementptr inbounds i64***, i64**** %64, i64 1
  store i64*** %l_1870, i64**** %65, !tbaa !5
  %66 = getelementptr inbounds i64***, i64**** %65, i64 1
  store i64*** %l_1870, i64**** %66, !tbaa !5
  %67 = getelementptr inbounds [3 x i64***], [3 x i64***]* %63, i64 1
  %68 = getelementptr inbounds [3 x i64***], [3 x i64***]* %67, i64 0, i64 0
  store i64*** %l_1870, i64**** %68, !tbaa !5
  %69 = getelementptr inbounds i64***, i64**** %68, i64 1
  store i64*** null, i64**** %69, !tbaa !5
  %70 = getelementptr inbounds i64***, i64**** %69, i64 1
  store i64*** %l_1870, i64**** %70, !tbaa !5
  %71 = getelementptr inbounds [7 x [3 x i64***]], [7 x [3 x i64***]]* %42, i64 1
  %72 = getelementptr inbounds [7 x [3 x i64***]], [7 x [3 x i64***]]* %71, i64 0, i64 0
  %73 = getelementptr inbounds [3 x i64***], [3 x i64***]* %72, i64 0, i64 0
  store i64*** null, i64**** %73, !tbaa !5
  %74 = getelementptr inbounds i64***, i64**** %73, i64 1
  store i64*** %l_1870, i64**** %74, !tbaa !5
  %75 = getelementptr inbounds i64***, i64**** %74, i64 1
  store i64*** null, i64**** %75, !tbaa !5
  %76 = getelementptr inbounds [3 x i64***], [3 x i64***]* %72, i64 1
  %77 = getelementptr inbounds [3 x i64***], [3 x i64***]* %76, i64 0, i64 0
  store i64*** %l_1870, i64**** %77, !tbaa !5
  %78 = getelementptr inbounds i64***, i64**** %77, i64 1
  store i64*** %l_1870, i64**** %78, !tbaa !5
  %79 = getelementptr inbounds i64***, i64**** %78, i64 1
  store i64*** %l_1870, i64**** %79, !tbaa !5
  %80 = getelementptr inbounds [3 x i64***], [3 x i64***]* %76, i64 1
  %81 = getelementptr inbounds [3 x i64***], [3 x i64***]* %80, i64 0, i64 0
  store i64*** %l_1870, i64**** %81, !tbaa !5
  %82 = getelementptr inbounds i64***, i64**** %81, i64 1
  store i64*** null, i64**** %82, !tbaa !5
  %83 = getelementptr inbounds i64***, i64**** %82, i64 1
  store i64*** %l_1870, i64**** %83, !tbaa !5
  %84 = getelementptr inbounds [3 x i64***], [3 x i64***]* %80, i64 1
  %85 = getelementptr inbounds [3 x i64***], [3 x i64***]* %84, i64 0, i64 0
  store i64*** %l_1870, i64**** %85, !tbaa !5
  %86 = getelementptr inbounds i64***, i64**** %85, i64 1
  store i64*** %l_1870, i64**** %86, !tbaa !5
  %87 = getelementptr inbounds i64***, i64**** %86, i64 1
  store i64*** null, i64**** %87, !tbaa !5
  %88 = getelementptr inbounds [3 x i64***], [3 x i64***]* %84, i64 1
  %89 = getelementptr inbounds [3 x i64***], [3 x i64***]* %88, i64 0, i64 0
  store i64*** %l_1870, i64**** %89, !tbaa !5
  %90 = getelementptr inbounds i64***, i64**** %89, i64 1
  store i64*** %l_1870, i64**** %90, !tbaa !5
  %91 = getelementptr inbounds i64***, i64**** %90, i64 1
  store i64*** null, i64**** %91, !tbaa !5
  %92 = getelementptr inbounds [3 x i64***], [3 x i64***]* %88, i64 1
  %93 = bitcast [3 x i64***]* %92 to i8*
  call void @llvm.memset.p0i8.i64(i8* %93, i8 0, i64 24, i32 8, i1 false)
  %94 = getelementptr inbounds [3 x i64***], [3 x i64***]* %92, i64 0, i64 0
  %95 = getelementptr inbounds i64***, i64**** %94, i64 1
  %96 = getelementptr inbounds i64***, i64**** %95, i64 1
  %97 = getelementptr inbounds [3 x i64***], [3 x i64***]* %92, i64 1
  %98 = getelementptr inbounds [3 x i64***], [3 x i64***]* %97, i64 0, i64 0
  store i64*** %l_1870, i64**** %98, !tbaa !5
  %99 = getelementptr inbounds i64***, i64**** %98, i64 1
  store i64*** %l_1870, i64**** %99, !tbaa !5
  %100 = getelementptr inbounds i64***, i64**** %99, i64 1
  store i64*** %l_1870, i64**** %100, !tbaa !5
  %101 = getelementptr inbounds [7 x [3 x i64***]], [7 x [3 x i64***]]* %71, i64 1
  %102 = getelementptr inbounds [7 x [3 x i64***]], [7 x [3 x i64***]]* %101, i64 0, i64 0
  %103 = getelementptr inbounds [3 x i64***], [3 x i64***]* %102, i64 0, i64 0
  store i64*** %l_1870, i64**** %103, !tbaa !5
  %104 = getelementptr inbounds i64***, i64**** %103, i64 1
  store i64*** %l_1870, i64**** %104, !tbaa !5
  %105 = getelementptr inbounds i64***, i64**** %104, i64 1
  store i64*** %l_1870, i64**** %105, !tbaa !5
  %106 = getelementptr inbounds [3 x i64***], [3 x i64***]* %102, i64 1
  %107 = getelementptr inbounds [3 x i64***], [3 x i64***]* %106, i64 0, i64 0
  store i64*** %l_1870, i64**** %107, !tbaa !5
  %108 = getelementptr inbounds i64***, i64**** %107, i64 1
  store i64*** null, i64**** %108, !tbaa !5
  %109 = getelementptr inbounds i64***, i64**** %108, i64 1
  store i64*** %l_1870, i64**** %109, !tbaa !5
  %110 = getelementptr inbounds [3 x i64***], [3 x i64***]* %106, i64 1
  %111 = getelementptr inbounds [3 x i64***], [3 x i64***]* %110, i64 0, i64 0
  store i64*** %l_1870, i64**** %111, !tbaa !5
  %112 = getelementptr inbounds i64***, i64**** %111, i64 1
  store i64*** %l_1870, i64**** %112, !tbaa !5
  %113 = getelementptr inbounds i64***, i64**** %112, i64 1
  store i64*** %l_1870, i64**** %113, !tbaa !5
  %114 = getelementptr inbounds [3 x i64***], [3 x i64***]* %110, i64 1
  %115 = getelementptr inbounds [3 x i64***], [3 x i64***]* %114, i64 0, i64 0
  store i64*** null, i64**** %115, !tbaa !5
  %116 = getelementptr inbounds i64***, i64**** %115, i64 1
  store i64*** %l_1870, i64**** %116, !tbaa !5
  %117 = getelementptr inbounds i64***, i64**** %116, i64 1
  store i64*** %l_1870, i64**** %117, !tbaa !5
  %118 = getelementptr inbounds [3 x i64***], [3 x i64***]* %114, i64 1
  %119 = getelementptr inbounds [3 x i64***], [3 x i64***]* %118, i64 0, i64 0
  store i64*** %l_1870, i64**** %119, !tbaa !5
  %120 = getelementptr inbounds i64***, i64**** %119, i64 1
  store i64*** null, i64**** %120, !tbaa !5
  %121 = getelementptr inbounds i64***, i64**** %120, i64 1
  store i64*** %l_1870, i64**** %121, !tbaa !5
  %122 = getelementptr inbounds [3 x i64***], [3 x i64***]* %118, i64 1
  %123 = getelementptr inbounds [3 x i64***], [3 x i64***]* %122, i64 0, i64 0
  store i64*** null, i64**** %123, !tbaa !5
  %124 = getelementptr inbounds i64***, i64**** %123, i64 1
  store i64*** %l_1870, i64**** %124, !tbaa !5
  %125 = getelementptr inbounds i64***, i64**** %124, i64 1
  store i64*** %l_1870, i64**** %125, !tbaa !5
  %126 = getelementptr inbounds [3 x i64***], [3 x i64***]* %122, i64 1
  %127 = getelementptr inbounds [3 x i64***], [3 x i64***]* %126, i64 0, i64 0
  store i64*** null, i64**** %127, !tbaa !5
  %128 = getelementptr inbounds i64***, i64**** %127, i64 1
  store i64*** %l_1870, i64**** %128, !tbaa !5
  %129 = getelementptr inbounds i64***, i64**** %128, i64 1
  store i64*** %l_1870, i64**** %129, !tbaa !5
  %130 = getelementptr inbounds [7 x [3 x i64***]], [7 x [3 x i64***]]* %101, i64 1
  %131 = getelementptr inbounds [7 x [3 x i64***]], [7 x [3 x i64***]]* %130, i64 0, i64 0
  %132 = getelementptr inbounds [3 x i64***], [3 x i64***]* %131, i64 0, i64 0
  store i64*** %l_1870, i64**** %132, !tbaa !5
  %133 = getelementptr inbounds i64***, i64**** %132, i64 1
  store i64*** %l_1870, i64**** %133, !tbaa !5
  %134 = getelementptr inbounds i64***, i64**** %133, i64 1
  store i64*** %l_1870, i64**** %134, !tbaa !5
  %135 = getelementptr inbounds [3 x i64***], [3 x i64***]* %131, i64 1
  %136 = getelementptr inbounds [3 x i64***], [3 x i64***]* %135, i64 0, i64 0
  store i64*** %l_1870, i64**** %136, !tbaa !5
  %137 = getelementptr inbounds i64***, i64**** %136, i64 1
  store i64*** %l_1870, i64**** %137, !tbaa !5
  %138 = getelementptr inbounds i64***, i64**** %137, i64 1
  store i64*** null, i64**** %138, !tbaa !5
  %139 = getelementptr inbounds [3 x i64***], [3 x i64***]* %135, i64 1
  %140 = getelementptr inbounds [3 x i64***], [3 x i64***]* %139, i64 0, i64 0
  store i64*** %l_1870, i64**** %140, !tbaa !5
  %141 = getelementptr inbounds i64***, i64**** %140, i64 1
  store i64*** %l_1870, i64**** %141, !tbaa !5
  %142 = getelementptr inbounds i64***, i64**** %141, i64 1
  store i64*** %l_1870, i64**** %142, !tbaa !5
  %143 = getelementptr inbounds [3 x i64***], [3 x i64***]* %139, i64 1
  %144 = getelementptr inbounds [3 x i64***], [3 x i64***]* %143, i64 0, i64 0
  store i64*** null, i64**** %144, !tbaa !5
  %145 = getelementptr inbounds i64***, i64**** %144, i64 1
  store i64*** %l_1870, i64**** %145, !tbaa !5
  %146 = getelementptr inbounds i64***, i64**** %145, i64 1
  store i64*** %l_1870, i64**** %146, !tbaa !5
  %147 = getelementptr inbounds [3 x i64***], [3 x i64***]* %143, i64 1
  %148 = getelementptr inbounds [3 x i64***], [3 x i64***]* %147, i64 0, i64 0
  store i64*** %l_1870, i64**** %148, !tbaa !5
  %149 = getelementptr inbounds i64***, i64**** %148, i64 1
  store i64*** %l_1870, i64**** %149, !tbaa !5
  %150 = getelementptr inbounds i64***, i64**** %149, i64 1
  store i64*** %l_1870, i64**** %150, !tbaa !5
  %151 = getelementptr inbounds [3 x i64***], [3 x i64***]* %147, i64 1
  %152 = getelementptr inbounds [3 x i64***], [3 x i64***]* %151, i64 0, i64 0
  store i64*** %l_1870, i64**** %152, !tbaa !5
  %153 = getelementptr inbounds i64***, i64**** %152, i64 1
  store i64*** %l_1870, i64**** %153, !tbaa !5
  %154 = getelementptr inbounds i64***, i64**** %153, i64 1
  store i64*** %l_1870, i64**** %154, !tbaa !5
  %155 = getelementptr inbounds [3 x i64***], [3 x i64***]* %151, i64 1
  %156 = getelementptr inbounds [3 x i64***], [3 x i64***]* %155, i64 0, i64 0
  store i64*** null, i64**** %156, !tbaa !5
  %157 = getelementptr inbounds i64***, i64**** %156, i64 1
  store i64*** %l_1870, i64**** %157, !tbaa !5
  %158 = getelementptr inbounds i64***, i64**** %157, i64 1
  store i64*** %l_1870, i64**** %158, !tbaa !5
  %159 = getelementptr inbounds [7 x [3 x i64***]], [7 x [3 x i64***]]* %130, i64 1
  %160 = getelementptr inbounds [7 x [3 x i64***]], [7 x [3 x i64***]]* %159, i64 0, i64 0
  %161 = getelementptr inbounds [3 x i64***], [3 x i64***]* %160, i64 0, i64 0
  store i64*** %l_1870, i64**** %161, !tbaa !5
  %162 = getelementptr inbounds i64***, i64**** %161, i64 1
  store i64*** %l_1870, i64**** %162, !tbaa !5
  %163 = getelementptr inbounds i64***, i64**** %162, i64 1
  store i64*** %l_1870, i64**** %163, !tbaa !5
  %164 = getelementptr inbounds [3 x i64***], [3 x i64***]* %160, i64 1
  %165 = getelementptr inbounds [3 x i64***], [3 x i64***]* %164, i64 0, i64 0
  store i64*** null, i64**** %165, !tbaa !5
  %166 = getelementptr inbounds i64***, i64**** %165, i64 1
  store i64*** %l_1870, i64**** %166, !tbaa !5
  %167 = getelementptr inbounds i64***, i64**** %166, i64 1
  store i64*** %l_1870, i64**** %167, !tbaa !5
  %168 = getelementptr inbounds [3 x i64***], [3 x i64***]* %164, i64 1
  %169 = getelementptr inbounds [3 x i64***], [3 x i64***]* %168, i64 0, i64 0
  store i64*** %l_1870, i64**** %169, !tbaa !5
  %170 = getelementptr inbounds i64***, i64**** %169, i64 1
  store i64*** %l_1870, i64**** %170, !tbaa !5
  %171 = getelementptr inbounds i64***, i64**** %170, i64 1
  store i64*** %l_1870, i64**** %171, !tbaa !5
  %172 = getelementptr inbounds [3 x i64***], [3 x i64***]* %168, i64 1
  %173 = getelementptr inbounds [3 x i64***], [3 x i64***]* %172, i64 0, i64 0
  store i64*** %l_1870, i64**** %173, !tbaa !5
  %174 = getelementptr inbounds i64***, i64**** %173, i64 1
  store i64*** %l_1870, i64**** %174, !tbaa !5
  %175 = getelementptr inbounds i64***, i64**** %174, i64 1
  store i64*** null, i64**** %175, !tbaa !5
  %176 = getelementptr inbounds [3 x i64***], [3 x i64***]* %172, i64 1
  %177 = getelementptr inbounds [3 x i64***], [3 x i64***]* %176, i64 0, i64 0
  store i64*** %l_1870, i64**** %177, !tbaa !5
  %178 = getelementptr inbounds i64***, i64**** %177, i64 1
  store i64*** %l_1870, i64**** %178, !tbaa !5
  %179 = getelementptr inbounds i64***, i64**** %178, i64 1
  store i64*** %l_1870, i64**** %179, !tbaa !5
  %180 = getelementptr inbounds [3 x i64***], [3 x i64***]* %176, i64 1
  %181 = getelementptr inbounds [3 x i64***], [3 x i64***]* %180, i64 0, i64 0
  store i64*** %l_1870, i64**** %181, !tbaa !5
  %182 = getelementptr inbounds i64***, i64**** %181, i64 1
  store i64*** %l_1870, i64**** %182, !tbaa !5
  %183 = getelementptr inbounds i64***, i64**** %182, i64 1
  store i64*** %l_1870, i64**** %183, !tbaa !5
  %184 = getelementptr inbounds [3 x i64***], [3 x i64***]* %180, i64 1
  %185 = getelementptr inbounds [3 x i64***], [3 x i64***]* %184, i64 0, i64 0
  store i64*** null, i64**** %185, !tbaa !5
  %186 = getelementptr inbounds i64***, i64**** %185, i64 1
  store i64*** %l_1870, i64**** %186, !tbaa !5
  %187 = getelementptr inbounds i64***, i64**** %186, i64 1
  store i64*** %l_1870, i64**** %187, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1872) #1
  store i8 -1, i8* %l_1872, align 1, !tbaa !9
  %188 = bitcast i32* %l_1873 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %188) #1
  store i32 -1444834393, i32* %l_1873, align 4, !tbaa !1
  %189 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %189) #1
  %190 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #1
  %191 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %191) #1
  %192 = getelementptr inbounds [4 x [5 x %union.U0**]], [4 x [5 x %union.U0**]]* %l_1856, i32 0, i64 0
  %193 = getelementptr inbounds [5 x %union.U0**], [5 x %union.U0**]* %192, i32 0, i64 1
  %194 = load %union.U0**, %union.U0*** %193, align 8, !tbaa !5
  %195 = icmp ne %union.U0** null, %194
  %196 = zext i1 %195 to i32
  %197 = load volatile i64, i64* getelementptr inbounds (%union.U2, %union.U2* @g_425, i32 0, i32 0), align 8, !tbaa !7
  %198 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i64 2), align 1, !tbaa !9
  %199 = zext i8 %198 to i64
  %200 = icmp ne i64 %197, %199
  %201 = zext i1 %200 to i32
  %202 = trunc i32 %201 to i8
  %203 = getelementptr inbounds [7 x [4 x %union.U1]], [7 x [4 x %union.U1]]* %l_1863, i32 0, i64 3
  %204 = getelementptr inbounds [4 x %union.U1], [4 x %union.U1]* %203, i32 0, i64 0
  %205 = load i64, i64* %2, align 8, !tbaa !7
  %206 = trunc i64 %205 to i8
  %207 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext -2207, i32 5)
  %208 = zext i16 %207 to i32
  %209 = getelementptr inbounds [7 x [4 x %union.U1]], [7 x [4 x %union.U1]]* %l_1863, i32 0, i64 3
  %210 = getelementptr inbounds [4 x %union.U1], [4 x %union.U1]* %209, i32 0, i64 0
  %211 = bitcast %union.U1* %210 to i64*
  %212 = load i64, i64* %211, align 8, !tbaa !7
  %213 = getelementptr inbounds [7 x [4 x %union.U1]], [7 x [4 x %union.U1]]* %l_1863, i32 0, i64 3
  %214 = getelementptr inbounds [4 x %union.U1], [4 x %union.U1]* %213, i32 0, i64 0
  %215 = bitcast %union.U1* %214 to i64*
  %216 = load i64, i64* %215, align 8, !tbaa !7
  %217 = icmp sle i64 %212, %216
  %218 = zext i1 %217 to i32
  %219 = or i32 %208, %218
  %220 = load i32*, i32** %3, align 8, !tbaa !5
  %221 = load i32, i32* %220, align 4, !tbaa !1
  %222 = or i32 %221, %219
  store i32 %222, i32* %220, align 4, !tbaa !1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [7 x [4 x %union.U1]], [7 x [4 x %union.U1]]* %l_1863, i32 0, i64 3
  %225 = getelementptr inbounds [4 x %union.U1], [4 x %union.U1]* %224, i32 0, i64 0
  %226 = bitcast %union.U1* %225 to i64*
  %227 = load i64, i64* %226, align 8, !tbaa !7
  %228 = icmp slt i64 %223, %227
  %229 = zext i1 %228 to i32
  %230 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %206, i32 %229)
  %231 = sext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

; <label>:233                                     ; preds = %0
  br label %234

; <label>:234                                     ; preds = %233, %0
  %235 = phi i1 [ false, %0 ], [ true, %233 ]
  %236 = zext i1 %235 to i32
  %237 = sext i32 %236 to i64
  %238 = call i64 @safe_div_func_uint64_t_u_u(i64 1, i64 %237)
  %239 = load i32*, i32** %3, align 8, !tbaa !5
  %240 = load i32, i32* %239, align 4, !tbaa !1
  %241 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %202, i32 88)
  %242 = sext i8 %241 to i64
  %243 = getelementptr inbounds [7 x [4 x %union.U1]], [7 x [4 x %union.U1]]* %l_1863, i32 0, i64 3
  %244 = getelementptr inbounds [4 x %union.U1], [4 x %union.U1]* %243, i32 0, i64 0
  %245 = bitcast %union.U1* %244 to i64*
  %246 = load i64, i64* %245, align 8, !tbaa !7
  %247 = icmp slt i64 %242, %246
  %248 = zext i1 %247 to i32
  %249 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_156, i32 0, i32 0), align 2, !tbaa !10
  %250 = trunc i16 %249 to i8
  %251 = getelementptr inbounds [7 x [4 x %union.U1]], [7 x [4 x %union.U1]]* %l_1863, i32 0, i64 3
  %252 = getelementptr inbounds [4 x %union.U1], [4 x %union.U1]* %251, i32 0, i64 0
  %253 = bitcast %union.U1* %252 to i64*
  %254 = load i64, i64* %253, align 8, !tbaa !7
  %255 = trunc i64 %254 to i32
  %256 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %250, i32 %255)
  %257 = zext i8 %256 to i64
  %258 = getelementptr inbounds [7 x [4 x %union.U1]], [7 x [4 x %union.U1]]* %l_1863, i32 0, i64 3
  %259 = getelementptr inbounds [4 x %union.U1], [4 x %union.U1]* %258, i32 0, i64 0
  %260 = bitcast %union.U1* %259 to i64*
  %261 = load i64, i64* %260, align 8, !tbaa !7
  %262 = icmp eq i64 %257, %261
  %263 = zext i1 %262 to i32
  %264 = load i32****, i32***** %l_1868, align 8, !tbaa !5
  %265 = icmp ne i32**** %264, null
  br i1 %265, label %266, label %270

; <label>:266                                     ; preds = %234
  %267 = load i32*, i32** %3, align 8, !tbaa !5
  %268 = load i32, i32* %267, align 4, !tbaa !1
  %269 = icmp ne i32 %268, 0
  br label %270

; <label>:270                                     ; preds = %266, %234
  %271 = phi i1 [ false, %234 ], [ %269, %266 ]
  %272 = zext i1 %271 to i32
  %273 = getelementptr inbounds [6 x [7 x [3 x i64***]]], [6 x [7 x [3 x i64***]]]* %l_1869, i32 0, i64 2
  %274 = getelementptr inbounds [7 x [3 x i64***]], [7 x [3 x i64***]]* %273, i32 0, i64 0
  %275 = getelementptr inbounds [3 x i64***], [3 x i64***]* %274, i32 0, i64 1
  %276 = load i64***, i64**** %275, align 8, !tbaa !5
  %277 = icmp ne i64*** @g_718, %276
  %278 = zext i1 %277 to i32
  %279 = sext i32 %278 to i64
  %280 = icmp sgt i64 %279, 48202
  %281 = zext i1 %280 to i32
  %282 = load i8, i8* %l_1872, align 1, !tbaa !9
  %283 = zext i8 %282 to i32
  %284 = icmp slt i32 %281, %283
  %285 = zext i1 %284 to i32
  store i32 %285, i32* %l_1873, align 4, !tbaa !1
  %286 = load volatile %union.U0**, %union.U0*** @g_784, align 8, !tbaa !5
  %287 = load %union.U0*, %union.U0** %286, align 8, !tbaa !5
  %288 = bitcast %union.U0* %1 to i8*
  %289 = bitcast %union.U0* %287 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %288, i8* %289, i64 8, i32 8, i1 false), !tbaa.struct !12
  %290 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %l_1873 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1872) #1
  %294 = bitcast [6 x [7 x [3 x i64***]]]* %l_1869 to i8*
  call void @llvm.lifetime.end(i64 1008, i8* %294) #1
  %295 = bitcast i64*** %l_1870 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %295) #1
  %296 = bitcast i64** %l_1871 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #1
  %297 = bitcast i32***** %l_1868 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #1
  %298 = bitcast [7 x [4 x %union.U1]]* %l_1863 to i8*
  call void @llvm.lifetime.end(i64 224, i8* %298) #1
  %299 = bitcast [4 x [5 x %union.U0**]]* %l_1856 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %299) #1
  %300 = getelementptr %union.U0, %union.U0* %1, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  ret i64 %301
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
define internal signext i8 @func_28(i8* %p_29) #0 {
  %1 = alloca i8*, align 8
  %l_1308 = alloca i16***, align 8
  %l_1309 = alloca i16*, align 8
  %l_1314 = alloca i32, align 4
  %l_1317 = alloca [6 x [9 x [1 x i16***]]], align 16
  %l_1316 = alloca i16****, align 8
  %l_1315 = alloca i16*****, align 8
  %l_1320 = alloca i64*, align 8
  %l_1321 = alloca [1 x i64*], align 8
  %l_1325 = alloca [4 x i16*****], align 16
  %l_1326 = alloca i32, align 4
  %l_1327 = alloca [9 x i8*], align 16
  %l_1330 = alloca i16**, align 8
  %l_1329 = alloca [4 x [7 x i16***]], align 16
  %l_1331 = alloca i16****, align 8
  %l_1349 = alloca i32, align 4
  %l_1427 = alloca i32, align 4
  %l_1428 = alloca [10 x i32], align 16
  %l_1429 = alloca [1 x i8], align 1
  %l_1509 = alloca i32, align 4
  %l_1510 = alloca i16*****, align 8
  %l_1545 = alloca i32***, align 8
  %l_1553 = alloca i32**, align 8
  %l_1552 = alloca i32***, align 8
  %l_1674 = alloca i64**, align 8
  %l_1783 = alloca [1 x %union.U1*], align 8
  %l_1832 = alloca i32, align 4
  %l_1849 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i8* %p_29, i8** %1, align 8, !tbaa !5
  %2 = bitcast i16**** %l_1308 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i16*** @g_773, i16**** %l_1308, align 8, !tbaa !5
  %3 = bitcast i16** %l_1309 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i16* @g_470, i16** %l_1309, align 8, !tbaa !5
  %4 = bitcast i32* %l_1314 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1, i32* %l_1314, align 4, !tbaa !1
  %5 = bitcast [6 x [9 x [1 x i16***]]]* %l_1317 to i8*
  call void @llvm.lifetime.start(i64 432, i8* %5) #1
  %6 = bitcast [6 x [9 x [1 x i16***]]]* %l_1317 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([6 x [9 x [1 x i16***]]]* @func_28.l_1317 to i8*), i64 432, i32 16, i1 false)
  %7 = bitcast i16***** %l_1316 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = getelementptr inbounds [6 x [9 x [1 x i16***]]], [6 x [9 x [1 x i16***]]]* %l_1317, i32 0, i64 5
  %9 = getelementptr inbounds [9 x [1 x i16***]], [9 x [1 x i16***]]* %8, i32 0, i64 5
  %10 = getelementptr inbounds [1 x i16***], [1 x i16***]* %9, i32 0, i64 0
  store i16**** %10, i16***** %l_1316, align 8, !tbaa !5
  %11 = bitcast i16****** %l_1315 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i16***** %l_1316, i16****** %l_1315, align 8, !tbaa !5
  %12 = bitcast i64** %l_1320 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64* @g_513, i64** %l_1320, align 8, !tbaa !5
  %13 = bitcast [1 x i64*]* %l_1321 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast [4 x i16*****]* %l_1325 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %14) #1
  %15 = bitcast i32* %l_1326 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 1425308333, i32* %l_1326, align 4, !tbaa !1
  %16 = bitcast [9 x i8*]* %l_1327 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %16) #1
  %17 = bitcast [9 x i8*]* %l_1327 to i8*
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 72, i32 16, i1 false)
  %18 = bitcast i16*** %l_1330 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i16** getelementptr inbounds ([6 x i16*], [6 x i16*]* @g_947, i32 0, i64 4), i16*** %l_1330, align 8, !tbaa !5
  %19 = bitcast [4 x [7 x i16***]]* %l_1329 to i8*
  call void @llvm.lifetime.start(i64 224, i8* %19) #1
  %20 = getelementptr inbounds [4 x [7 x i16***]], [4 x [7 x i16***]]* %l_1329, i64 0, i64 0
  %21 = getelementptr inbounds [7 x i16***], [7 x i16***]* %20, i64 0, i64 0
  store i16*** %l_1330, i16**** %21, !tbaa !5
  %22 = getelementptr inbounds i16***, i16**** %21, i64 1
  store i16*** %l_1330, i16**** %22, !tbaa !5
  %23 = getelementptr inbounds i16***, i16**** %22, i64 1
  store i16*** %l_1330, i16**** %23, !tbaa !5
  %24 = getelementptr inbounds i16***, i16**** %23, i64 1
  store i16*** %l_1330, i16**** %24, !tbaa !5
  %25 = getelementptr inbounds i16***, i16**** %24, i64 1
  store i16*** %l_1330, i16**** %25, !tbaa !5
  %26 = getelementptr inbounds i16***, i16**** %25, i64 1
  store i16*** %l_1330, i16**** %26, !tbaa !5
  %27 = getelementptr inbounds i16***, i16**** %26, i64 1
  store i16*** %l_1330, i16**** %27, !tbaa !5
  %28 = getelementptr inbounds [7 x i16***], [7 x i16***]* %20, i64 1
  %29 = getelementptr inbounds [7 x i16***], [7 x i16***]* %28, i64 0, i64 0
  store i16*** %l_1330, i16**** %29, !tbaa !5
  %30 = getelementptr inbounds i16***, i16**** %29, i64 1
  store i16*** %l_1330, i16**** %30, !tbaa !5
  %31 = getelementptr inbounds i16***, i16**** %30, i64 1
  store i16*** %l_1330, i16**** %31, !tbaa !5
  %32 = getelementptr inbounds i16***, i16**** %31, i64 1
  store i16*** %l_1330, i16**** %32, !tbaa !5
  %33 = getelementptr inbounds i16***, i16**** %32, i64 1
  store i16*** %l_1330, i16**** %33, !tbaa !5
  %34 = getelementptr inbounds i16***, i16**** %33, i64 1
  store i16*** %l_1330, i16**** %34, !tbaa !5
  %35 = getelementptr inbounds i16***, i16**** %34, i64 1
  store i16*** %l_1330, i16**** %35, !tbaa !5
  %36 = getelementptr inbounds [7 x i16***], [7 x i16***]* %28, i64 1
  %37 = getelementptr inbounds [7 x i16***], [7 x i16***]* %36, i64 0, i64 0
  store i16*** %l_1330, i16**** %37, !tbaa !5
  %38 = getelementptr inbounds i16***, i16**** %37, i64 1
  store i16*** %l_1330, i16**** %38, !tbaa !5
  %39 = getelementptr inbounds i16***, i16**** %38, i64 1
  store i16*** %l_1330, i16**** %39, !tbaa !5
  %40 = getelementptr inbounds i16***, i16**** %39, i64 1
  store i16*** %l_1330, i16**** %40, !tbaa !5
  %41 = getelementptr inbounds i16***, i16**** %40, i64 1
  store i16*** %l_1330, i16**** %41, !tbaa !5
  %42 = getelementptr inbounds i16***, i16**** %41, i64 1
  store i16*** %l_1330, i16**** %42, !tbaa !5
  %43 = getelementptr inbounds i16***, i16**** %42, i64 1
  store i16*** %l_1330, i16**** %43, !tbaa !5
  %44 = getelementptr inbounds [7 x i16***], [7 x i16***]* %36, i64 1
  %45 = getelementptr inbounds [7 x i16***], [7 x i16***]* %44, i64 0, i64 0
  store i16*** %l_1330, i16**** %45, !tbaa !5
  %46 = getelementptr inbounds i16***, i16**** %45, i64 1
  store i16*** %l_1330, i16**** %46, !tbaa !5
  %47 = getelementptr inbounds i16***, i16**** %46, i64 1
  store i16*** %l_1330, i16**** %47, !tbaa !5
  %48 = getelementptr inbounds i16***, i16**** %47, i64 1
  store i16*** %l_1330, i16**** %48, !tbaa !5
  %49 = getelementptr inbounds i16***, i16**** %48, i64 1
  store i16*** %l_1330, i16**** %49, !tbaa !5
  %50 = getelementptr inbounds i16***, i16**** %49, i64 1
  store i16*** %l_1330, i16**** %50, !tbaa !5
  %51 = getelementptr inbounds i16***, i16**** %50, i64 1
  store i16*** %l_1330, i16**** %51, !tbaa !5
  %52 = bitcast i16***** %l_1331 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = getelementptr inbounds [4 x [7 x i16***]], [4 x [7 x i16***]]* %l_1329, i32 0, i64 2
  %54 = getelementptr inbounds [7 x i16***], [7 x i16***]* %53, i32 0, i64 5
  store i16**** %54, i16***** %l_1331, align 8, !tbaa !5
  %55 = bitcast i32* %l_1349 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  store i32 0, i32* %l_1349, align 4, !tbaa !1
  %56 = bitcast i32* %l_1427 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  store i32 -10, i32* %l_1427, align 4, !tbaa !1
  %57 = bitcast [10 x i32]* %l_1428 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %57) #1
  %58 = bitcast [10 x i32]* %l_1428 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* bitcast ([10 x i32]* @func_28.l_1428 to i8*), i64 40, i32 16, i1 false)
  %59 = bitcast [1 x i8]* %l_1429 to i8*
  call void @llvm.lifetime.start(i64 1, i8* %59) #1
  %60 = bitcast i32* %l_1509 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  store i32 -1809936882, i32* %l_1509, align 4, !tbaa !1
  %61 = bitcast i16****** %l_1510 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  store i16***** null, i16****** %l_1510, align 8, !tbaa !5
  %62 = bitcast i32**** %l_1545 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  store i32*** @g_831, i32**** %l_1545, align 8, !tbaa !5
  %63 = bitcast i32*** %l_1553 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  store i32** null, i32*** %l_1553, align 8, !tbaa !5
  %64 = bitcast i32**** %l_1552 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  store i32*** %l_1553, i32**** %l_1552, align 8, !tbaa !5
  %65 = bitcast i64*** %l_1674 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  store i64** %l_1320, i64*** %l_1674, align 8, !tbaa !5
  %66 = bitcast [1 x %union.U1*]* %l_1783 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = bitcast i32* %l_1832 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  store i32 1493162312, i32* %l_1832, align 4, !tbaa !1
  %68 = bitcast i32* %l_1849 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  store i32 1198876636, i32* %l_1849, align 4, !tbaa !1
  %69 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %72

; <label>:72                                      ; preds = %79, %0
  %73 = load i32, i32* %i, align 4, !tbaa !1
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %82

; <label>:75                                      ; preds = %72
  %76 = load i32, i32* %i, align 4, !tbaa !1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [1 x i64*], [1 x i64*]* %l_1321, i32 0, i64 %77
  store i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64** %78, align 8, !tbaa !5
  br label %79

; <label>:79                                      ; preds = %75
  %80 = load i32, i32* %i, align 4, !tbaa !1
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %i, align 4, !tbaa !1
  br label %72

; <label>:82                                      ; preds = %72
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %83

; <label>:83                                      ; preds = %90, %82
  %84 = load i32, i32* %i, align 4, !tbaa !1
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %86, label %93

; <label>:86                                      ; preds = %83
  %87 = load i32, i32* %i, align 4, !tbaa !1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x i16*****], [4 x i16*****]* %l_1325, i32 0, i64 %88
  store i16***** @g_1264, i16****** %89, align 8, !tbaa !5
  br label %90

; <label>:90                                      ; preds = %86
  %91 = load i32, i32* %i, align 4, !tbaa !1
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %i, align 4, !tbaa !1
  br label %83

; <label>:93                                      ; preds = %83
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %101, %93
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %97, label %104

; <label>:97                                      ; preds = %94
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [1 x i8], [1 x i8]* %l_1429, i32 0, i64 %99
  store i8 -10, i8* %100, align 1, !tbaa !9
  br label %101

; <label>:101                                     ; preds = %97
  %102 = load i32, i32* %i, align 4, !tbaa !1
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:104                                     ; preds = %94
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %105

; <label>:105                                     ; preds = %112, %104
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %107 = icmp slt i32 %106, 1
  br i1 %107, label %108, label %115

; <label>:108                                     ; preds = %105
  %109 = load i32, i32* %i, align 4, !tbaa !1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [1 x %union.U1*], [1 x %union.U1*]* %l_1783, i32 0, i64 %110
  store %union.U1* null, %union.U1** %111, align 8, !tbaa !5
  br label %112

; <label>:112                                     ; preds = %108
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %i, align 4, !tbaa !1
  br label %105

; <label>:115                                     ; preds = %105
  %116 = load i16***, i16**** %l_1308, align 8, !tbaa !5
  %117 = icmp eq i16*** %116, null
  %118 = zext i1 %117 to i32
  %119 = trunc i32 %118 to i16
  %120 = load i16*, i16** %l_1309, align 8, !tbaa !5
  store i16 %119, i16* %120, align 2, !tbaa !10
  %121 = zext i16 %119 to i32
  %122 = load volatile %union.U0**, %union.U0*** @g_784, align 8, !tbaa !5
  %123 = load %union.U0*, %union.U0** %122, align 8, !tbaa !5
  %124 = load i32, i32* %l_1314, align 4, !tbaa !1
  %125 = load i16*****, i16****** %l_1315, align 8, !tbaa !5
  store i16***** %125, i16****** %l_1315, align 8, !tbaa !5
  %126 = icmp ne i16***** %125, null
  br i1 %126, label %127, label %136

; <label>:127                                     ; preds = %115
  %128 = load i64*, i64** %l_1320, align 8, !tbaa !5
  %129 = load i64*, i64** %l_1320, align 8, !tbaa !5
  %130 = icmp ne i64* %128, %129
  %131 = zext i1 %130 to i32
  %132 = trunc i32 %131 to i8
  %133 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %132, i32 3)
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 1
  br label %136

; <label>:136                                     ; preds = %127, %115
  %137 = phi i1 [ false, %115 ], [ %135, %127 ]
  %138 = zext i1 %137 to i32
  %139 = sext i32 %138 to i64
  store i64 %139, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i16, [6 x i8] }* @g_480 to %union.U0*), i32 0, i32 0), align 8, !tbaa !7
  %140 = and i64 %139, -5605639317010043947
  %141 = load i32, i32* %l_1314, align 4, !tbaa !1
  %142 = sext i32 %141 to i64
  %143 = icmp ule i64 %140, %142
  %144 = zext i1 %143 to i32
  %145 = sext i32 %144 to i64
  %146 = or i64 %145, 19
  %147 = trunc i64 %146 to i8
  %148 = load i32, i32* %l_1314, align 4, !tbaa !1
  %149 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %147, i32 %148)
  %150 = sext i8 %149 to i32
  %151 = icmp slt i32 %121, %150
  %152 = zext i1 %151 to i32
  %153 = trunc i32 %152 to i8
  %154 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_916, i32 0, i64 4), align 4, !tbaa !1
  %155 = trunc i32 %154 to i8
  %156 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %153, i8 zeroext %155)
  %157 = zext i8 %156 to i32
  %158 = load i32, i32* %l_1314, align 4, !tbaa !1
  %159 = or i32 %157, %158
  %160 = load i32*, i32** @g_918, align 8, !tbaa !5
  %161 = load i32, i32* %160, align 4, !tbaa !1
  %162 = call i32 @safe_sub_func_uint32_t_u_u(i32 %159, i32 %161)
  store i32 %162, i32* %l_1314, align 4, !tbaa !1
  %163 = load i32, i32* getelementptr inbounds ([4 x [4 x i32]], [4 x [4 x i32]]* @func_28.l_1569, i32 0, i64 0, i64 3), align 4, !tbaa !1
  %164 = trunc i32 %163 to i8
  %165 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %l_1849 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %l_1832 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast [1 x %union.U1*]* %l_1783 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast i64*** %l_1674 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast i32**** %l_1552 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast i32*** %l_1553 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast i32**** %l_1545 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = bitcast i16****** %l_1510 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = bitcast i32* %l_1509 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast [1 x i8]* %l_1429 to i8*
  call void @llvm.lifetime.end(i64 1, i8* %177) #1
  %178 = bitcast [10 x i32]* %l_1428 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %178) #1
  %179 = bitcast i32* %l_1427 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %l_1349 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i16***** %l_1331 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast [4 x [7 x i16***]]* %l_1329 to i8*
  call void @llvm.lifetime.end(i64 224, i8* %182) #1
  %183 = bitcast i16*** %l_1330 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast [9 x i8*]* %l_1327 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %184) #1
  %185 = bitcast i32* %l_1326 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast [4 x i16*****]* %l_1325 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %186) #1
  %187 = bitcast [1 x i64*]* %l_1321 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast i64** %l_1320 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = bitcast i16****** %l_1315 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast i16***** %l_1316 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast [6 x [9 x [1 x i16***]]]* %l_1317 to i8*
  call void @llvm.lifetime.end(i64 432, i8* %191) #1
  %192 = bitcast i32* %l_1314 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i16** %l_1309 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast i16**** %l_1308 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  ret i8 %164
}

; Function Attrs: nounwind uwtable
define internal i8* @func_30(i32* %p_31, i32 %p_32, i8* %p_33, i64 %p_34.coerce, i32 %p_35) #0 {
  %1 = alloca i8*, align 8
  %p_34 = alloca %union.U1, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %l_931 = alloca i32*, align 8
  %l_932 = alloca i32*, align 8
  %l_933 = alloca i32*, align 8
  %l_934 = alloca [9 x i32*], align 16
  %l_935 = alloca i8, align 1
  %l_936 = alloca i16, align 2
  %l_937 = alloca i32, align 4
  %l_945 = alloca i16*, align 8
  %l_946 = alloca [6 x i16**], align 16
  %l_950 = alloca [5 x [4 x i32**]], align 16
  %l_975 = alloca %union.U2*, align 8
  %l_980 = alloca i64, align 8
  %l_983 = alloca i16****, align 8
  %l_987 = alloca %union.U0*, align 8
  %l_1087 = alloca i32, align 4
  %l_1119 = alloca i32, align 4
  %l_1182 = alloca [8 x [8 x [3 x i32]]], align 16
  %l_1200 = alloca [8 x i32***], align 16
  %l_1199 = alloca [1 x [10 x [10 x i32****]]], align 16
  %l_1243 = alloca i8, align 1
  %l_1295 = alloca i64, align 8
  %l_1297 = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_974 = alloca i32, align 4
  %l_978 = alloca [1 x i32], align 4
  %l_979 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %l_965 = alloca i32, align 4
  %l_969 = alloca i8**, align 8
  %l_973 = alloca i32, align 4
  %l_968 = alloca i8, align 1
  %l_970 = alloca i64*, align 8
  %l_971 = alloca i64*, align 8
  %l_972 = alloca [8 x i8*], align 16
  %i2 = alloca i32, align 4
  %l_985 = alloca i16*****, align 8
  %l_988 = alloca %union.U0*, align 8
  %l_990 = alloca [1 x [9 x [4 x i64*]]], align 16
  %l_991 = alloca i32*, align 8
  %l_993 = alloca i32, align 4
  %l_994 = alloca i32, align 4
  %l_995 = alloca i32, align 4
  %l_1016 = alloca i16, align 2
  %l_1032 = alloca i16**, align 8
  %l_1122 = alloca [7 x [3 x i8]], align 16
  %l_1126 = alloca i32, align 4
  %l_1129 = alloca i32, align 4
  %l_1130 = alloca [3 x i32], align 4
  %l_1139 = alloca i8, align 1
  %l_1171 = alloca i32*, align 8
  %l_1170 = alloca i32**, align 8
  %l_1172 = alloca i32**, align 8
  %l_1213 = alloca i32**, align 8
  %l_1266 = alloca i32*****, align 8
  %l_1291 = alloca i16, align 2
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k5 = alloca i32, align 4
  %l_992 = alloca [6 x [3 x i32**]], align 16
  %l_996 = alloca i16, align 2
  %l_1017 = alloca [9 x i8*], align 16
  %l_1035 = alloca [3 x [4 x i16***]], align 16
  %l_1093 = alloca i32****, align 8
  %l_1142 = alloca %union.U2*, align 8
  %l_1155 = alloca %union.U1, align 8
  %l_1156 = alloca [4 x [3 x [3 x i64]]], align 16
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %k8 = alloca i32, align 4
  %l_999 = alloca i8*, align 8
  %l_1011 = alloca [8 x [6 x i32]], align 16
  %l_1014 = alloca i32, align 4
  %l_1031 = alloca [6 x i16**], align 16
  %l_1033 = alloca [8 x [7 x i32]], align 16
  %l_1047 = alloca i64, align 8
  %i9 = alloca i32, align 4
  %j10 = alloca i32, align 4
  %l_1004 = alloca i64*, align 8
  %l_1005 = alloca i64*, align 8
  %l_1012 = alloca i32, align 4
  %l_1013 = alloca i8, align 1
  %l_1015 = alloca i8*, align 8
  %6 = alloca %union.U1, align 8
  %7 = alloca i32
  %l_1029 = alloca i32, align 4
  %8 = alloca %union.U0, align 8
  %l_1037 = alloca i16****, align 8
  %l_1054 = alloca i32, align 4
  %l_1057 = alloca i32, align 4
  %l_1079 = alloca [10 x i16*], align 16
  %l_1078 = alloca i16**, align 8
  %i11 = alloca i32, align 4
  %l_1042 = alloca i32***, align 8
  %l_1061 = alloca i32*, align 8
  %l_1060 = alloca [5 x [2 x [1 x i32**]]], align 16
  %l_1062 = alloca i32, align 4
  %l_1075 = alloca [10 x [10 x i8*]], align 16
  %l_1086 = alloca i64, align 8
  %l_1088 = alloca i32, align 4
  %i12 = alloca i32, align 4
  %j13 = alloca i32, align 4
  %k14 = alloca i32, align 4
  %l_1090 = alloca i32, align 4
  %l_1094 = alloca [7 x i32*****], align 16
  %i15 = alloca i32, align 4
  %l_1110 = alloca i64, align 8
  %l_1116 = alloca [2 x [7 x [4 x i16*]]], align 16
  %l_1124 = alloca i32, align 4
  %l_1125 = alloca i32, align 4
  %l_1127 = alloca i32, align 4
  %l_1128 = alloca i32, align 4
  %l_1131 = alloca i32, align 4
  %l_1132 = alloca i16, align 2
  %l_1164 = alloca i32*, align 8
  %l_1165 = alloca i32*, align 8
  %l_1169 = alloca i32*, align 8
  %l_1168 = alloca i32**, align 8
  %l_1167 = alloca [7 x i32***], align 16
  %l_1177 = alloca i8, align 1
  %l_1187 = alloca [6 x [1 x [3 x i8*]]], align 16
  %l_1190 = alloca [1 x %union.U0**], align 8
  %l_1192 = alloca i32, align 4
  %l_1194 = alloca i32*, align 8
  %l_1195 = alloca i32*, align 8
  %i18 = alloca i32, align 4
  %j19 = alloca i32, align 4
  %k20 = alloca i32, align 4
  %l_1114 = alloca %union.U1, align 8
  %l_1120 = alloca i32*, align 8
  %l_1121 = alloca i32, align 4
  %l_1123 = alloca [5 x [4 x i32]], align 16
  %i21 = alloca i32, align 4
  %j22 = alloca i32, align 4
  %l_1144 = alloca i64, align 8
  %l_1201 = alloca i64, align 8
  %l_1198 = alloca i8*, align 8
  %l_1210 = alloca i32, align 4
  %l_1211 = alloca i32**, align 8
  %9 = alloca %union.U1, align 8
  %l_1236 = alloca i32***, align 8
  %l_1244 = alloca i8*, align 8
  %l_1275 = alloca i32, align 4
  %l_1276 = alloca i32, align 4
  %l_1278 = alloca i32, align 4
  %l_1279 = alloca i32, align 4
  %l_1282 = alloca [6 x [3 x i32]], align 16
  %l_1284 = alloca i16, align 2
  %i26 = alloca i32, align 4
  %j27 = alloca i32, align 4
  %l_1247 = alloca i8, align 1
  %l_1259 = alloca i16*, align 8
  %l_1258 = alloca i16**, align 8
  %l_1265 = alloca i16*****, align 8
  %l_1267 = alloca i8*, align 8
  %l_1272 = alloca i8, align 1
  %l_1273 = alloca i32, align 4
  %l_1274 = alloca i32, align 4
  %l_1277 = alloca i32, align 4
  %l_1280 = alloca i32, align 4
  %l_1281 = alloca i32, align 4
  %l_1283 = alloca i32, align 4
  %l_1285 = alloca i32, align 4
  %l_1286 = alloca i32, align 4
  %l_1287 = alloca i32, align 4
  %l_1288 = alloca i32, align 4
  %l_1289 = alloca i32, align 4
  %l_1290 = alloca i32, align 4
  %l_1294 = alloca i8*, align 8
  %10 = getelementptr %union.U1, %union.U1* %p_34, i32 0, i32 0
  store i64 %p_34.coerce, i64* %10, align 8
  store i32* %p_31, i32** %2, align 8, !tbaa !5
  store i32 %p_32, i32* %3, align 4, !tbaa !1
  store i8* %p_33, i8** %4, align 8, !tbaa !5
  store i32 %p_35, i32* %5, align 4, !tbaa !1
  %11 = bitcast i32** %l_931 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32* @g_546, i32** %l_931, align 8, !tbaa !5
  %12 = bitcast i32** %l_932 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32* @g_51, i32** %l_932, align 8, !tbaa !5
  %13 = bitcast i32** %l_933 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32* @g_546, i32** %l_933, align 8, !tbaa !5
  %14 = bitcast [9 x i32*]* %l_934 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %14) #1
  %15 = bitcast [9 x i32*]* %l_934 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast ([9 x i32*]* @func_30.l_934 to i8*), i64 72, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_935) #1
  store i8 -43, i8* %l_935, align 1, !tbaa !9
  %16 = bitcast i16* %l_936 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %16) #1
  store i16 0, i16* %l_936, align 2, !tbaa !10
  %17 = bitcast i32* %l_937 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %l_937, align 4, !tbaa !1
  %18 = bitcast i16** %l_945 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i16* null, i16** %l_945, align 8, !tbaa !5
  %19 = bitcast [6 x i16**]* %l_946 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %19) #1
  %20 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_946, i64 0, i64 0
  store i16** %l_945, i16*** %20, !tbaa !5
  %21 = getelementptr inbounds i16**, i16*** %20, i64 1
  store i16** %l_945, i16*** %21, !tbaa !5
  %22 = getelementptr inbounds i16**, i16*** %21, i64 1
  store i16** %l_945, i16*** %22, !tbaa !5
  %23 = getelementptr inbounds i16**, i16*** %22, i64 1
  store i16** %l_945, i16*** %23, !tbaa !5
  %24 = getelementptr inbounds i16**, i16*** %23, i64 1
  store i16** %l_945, i16*** %24, !tbaa !5
  %25 = getelementptr inbounds i16**, i16*** %24, i64 1
  store i16** %l_945, i16*** %25, !tbaa !5
  %26 = bitcast [5 x [4 x i32**]]* %l_950 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %26) #1
  %27 = bitcast [5 x [4 x i32**]]* %l_950 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast ([5 x [4 x i32**]]* @func_30.l_950 to i8*), i64 160, i32 16, i1 false)
  %28 = bitcast %union.U2** %l_975 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store %union.U2* @g_380, %union.U2** %l_975, align 8, !tbaa !5
  %29 = bitcast i64* %l_980 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i64 -5379060757588857803, i64* %l_980, align 8, !tbaa !7
  %30 = bitcast i16***** %l_983 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i16**** getelementptr inbounds ([1 x i16***], [1 x i16***]* @func_30.l_984, i32 0, i64 0), i16***** %l_983, align 8, !tbaa !5
  %31 = bitcast %union.U0** %l_987 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store %union.U0* bitcast ({ i16, [6 x i8] }* @g_480 to %union.U0*), %union.U0** %l_987, align 8, !tbaa !5
  %32 = bitcast i32* %l_1087 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 1, i32* %l_1087, align 4, !tbaa !1
  %33 = bitcast i32* %l_1119 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 139210201, i32* %l_1119, align 4, !tbaa !1
  %34 = bitcast [8 x [8 x [3 x i32]]]* %l_1182 to i8*
  call void @llvm.lifetime.start(i64 768, i8* %34) #1
  %35 = bitcast [8 x [8 x [3 x i32]]]* %l_1182 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* bitcast ([8 x [8 x [3 x i32]]]* @func_30.l_1182 to i8*), i64 768, i32 16, i1 false)
  %36 = bitcast [8 x i32***]* %l_1200 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %36) #1
  %37 = bitcast [8 x i32***]* %l_1200 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* bitcast ([8 x i32***]* @func_30.l_1200 to i8*), i64 64, i32 16, i1 false)
  %38 = bitcast [1 x [10 x [10 x i32****]]]* %l_1199 to i8*
  call void @llvm.lifetime.start(i64 800, i8* %38) #1
  %39 = getelementptr inbounds [1 x [10 x [10 x i32****]]], [1 x [10 x [10 x i32****]]]* %l_1199, i64 0, i64 0
  %40 = getelementptr inbounds [10 x [10 x i32****]], [10 x [10 x i32****]]* %39, i64 0, i64 0
  %41 = getelementptr inbounds [10 x i32****], [10 x i32****]* %40, i64 0, i64 0
  store i32**** null, i32***** %41, !tbaa !5
  %42 = getelementptr inbounds i32****, i32***** %41, i64 1
  %43 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %43, i32***** %42, !tbaa !5
  %44 = getelementptr inbounds i32****, i32***** %42, i64 1
  %45 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %45, i32***** %44, !tbaa !5
  %46 = getelementptr inbounds i32****, i32***** %44, i64 1
  store i32**** null, i32***** %46, !tbaa !5
  %47 = getelementptr inbounds i32****, i32***** %46, i64 1
  %48 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 0
  store i32**** %48, i32***** %47, !tbaa !5
  %49 = getelementptr inbounds i32****, i32***** %47, i64 1
  store i32**** null, i32***** %49, !tbaa !5
  %50 = getelementptr inbounds i32****, i32***** %49, i64 1
  %51 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %51, i32***** %50, !tbaa !5
  %52 = getelementptr inbounds i32****, i32***** %50, i64 1
  %53 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %53, i32***** %52, !tbaa !5
  %54 = getelementptr inbounds i32****, i32***** %52, i64 1
  store i32**** null, i32***** %54, !tbaa !5
  %55 = getelementptr inbounds i32****, i32***** %54, i64 1
  %56 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %56, i32***** %55, !tbaa !5
  %57 = getelementptr inbounds [10 x i32****], [10 x i32****]* %40, i64 1
  %58 = getelementptr inbounds [10 x i32****], [10 x i32****]* %57, i64 0, i64 0
  store i32**** null, i32***** %58, !tbaa !5
  %59 = getelementptr inbounds i32****, i32***** %58, i64 1
  %60 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 1
  store i32**** %60, i32***** %59, !tbaa !5
  %61 = getelementptr inbounds i32****, i32***** %59, i64 1
  %62 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 5
  store i32**** %62, i32***** %61, !tbaa !5
  %63 = getelementptr inbounds i32****, i32***** %61, i64 1
  store i32**** null, i32***** %63, !tbaa !5
  %64 = getelementptr inbounds i32****, i32***** %63, i64 1
  store i32**** null, i32***** %64, !tbaa !5
  %65 = getelementptr inbounds i32****, i32***** %64, i64 1
  %66 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %66, i32***** %65, !tbaa !5
  %67 = getelementptr inbounds i32****, i32***** %65, i64 1
  %68 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %68, i32***** %67, !tbaa !5
  %69 = getelementptr inbounds i32****, i32***** %67, i64 1
  store i32**** null, i32***** %69, !tbaa !5
  %70 = getelementptr inbounds i32****, i32***** %69, i64 1
  store i32**** null, i32***** %70, !tbaa !5
  %71 = getelementptr inbounds i32****, i32***** %70, i64 1
  %72 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 5
  store i32**** %72, i32***** %71, !tbaa !5
  %73 = getelementptr inbounds [10 x i32****], [10 x i32****]* %57, i64 1
  %74 = getelementptr inbounds [10 x i32****], [10 x i32****]* %73, i64 0, i64 0
  %75 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %75, i32***** %74, !tbaa !5
  %76 = getelementptr inbounds i32****, i32***** %74, i64 1
  %77 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %77, i32***** %76, !tbaa !5
  %78 = getelementptr inbounds i32****, i32***** %76, i64 1
  store i32**** null, i32***** %78, !tbaa !5
  %79 = getelementptr inbounds i32****, i32***** %78, i64 1
  store i32**** null, i32***** %79, !tbaa !5
  %80 = getelementptr inbounds i32****, i32***** %79, i64 1
  %81 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 5
  store i32**** %81, i32***** %80, !tbaa !5
  %82 = getelementptr inbounds i32****, i32***** %80, i64 1
  %83 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 1
  store i32**** %83, i32***** %82, !tbaa !5
  %84 = getelementptr inbounds i32****, i32***** %82, i64 1
  store i32**** null, i32***** %84, !tbaa !5
  %85 = getelementptr inbounds i32****, i32***** %84, i64 1
  %86 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %86, i32***** %85, !tbaa !5
  %87 = getelementptr inbounds i32****, i32***** %85, i64 1
  store i32**** null, i32***** %87, !tbaa !5
  %88 = getelementptr inbounds i32****, i32***** %87, i64 1
  %89 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 1
  store i32**** %89, i32***** %88, !tbaa !5
  %90 = getelementptr inbounds [10 x i32****], [10 x i32****]* %73, i64 1
  %91 = getelementptr inbounds [10 x i32****], [10 x i32****]* %90, i64 0, i64 0
  %92 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %92, i32***** %91, !tbaa !5
  %93 = getelementptr inbounds i32****, i32***** %91, i64 1
  store i32**** null, i32***** %93, !tbaa !5
  %94 = getelementptr inbounds i32****, i32***** %93, i64 1
  %95 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 0
  store i32**** %95, i32***** %94, !tbaa !5
  %96 = getelementptr inbounds i32****, i32***** %94, i64 1
  store i32**** null, i32***** %96, !tbaa !5
  %97 = getelementptr inbounds i32****, i32***** %96, i64 1
  %98 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %98, i32***** %97, !tbaa !5
  %99 = getelementptr inbounds i32****, i32***** %97, i64 1
  %100 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %100, i32***** %99, !tbaa !5
  %101 = getelementptr inbounds i32****, i32***** %99, i64 1
  store i32**** null, i32***** %101, !tbaa !5
  %102 = getelementptr inbounds i32****, i32***** %101, i64 1
  %103 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %103, i32***** %102, !tbaa !5
  %104 = getelementptr inbounds i32****, i32***** %102, i64 1
  store i32**** null, i32***** %104, !tbaa !5
  %105 = getelementptr inbounds i32****, i32***** %104, i64 1
  store i32**** null, i32***** %105, !tbaa !5
  %106 = getelementptr inbounds [10 x i32****], [10 x i32****]* %90, i64 1
  %107 = getelementptr inbounds [10 x i32****], [10 x i32****]* %106, i64 0, i64 0
  store i32**** null, i32***** %107, !tbaa !5
  %108 = getelementptr inbounds i32****, i32***** %107, i64 1
  %109 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %109, i32***** %108, !tbaa !5
  %110 = getelementptr inbounds i32****, i32***** %108, i64 1
  %111 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %111, i32***** %110, !tbaa !5
  %112 = getelementptr inbounds i32****, i32***** %110, i64 1
  %113 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 1
  store i32**** %113, i32***** %112, !tbaa !5
  %114 = getelementptr inbounds i32****, i32***** %112, i64 1
  %115 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 1
  store i32**** %115, i32***** %114, !tbaa !5
  %116 = getelementptr inbounds i32****, i32***** %114, i64 1
  %117 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %117, i32***** %116, !tbaa !5
  %118 = getelementptr inbounds i32****, i32***** %116, i64 1
  %119 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %119, i32***** %118, !tbaa !5
  %120 = getelementptr inbounds i32****, i32***** %118, i64 1
  store i32**** null, i32***** %120, !tbaa !5
  %121 = getelementptr inbounds i32****, i32***** %120, i64 1
  %122 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 0
  store i32**** %122, i32***** %121, !tbaa !5
  %123 = getelementptr inbounds i32****, i32***** %121, i64 1
  store i32**** null, i32***** %123, !tbaa !5
  %124 = getelementptr inbounds [10 x i32****], [10 x i32****]* %106, i64 1
  %125 = getelementptr inbounds [10 x i32****], [10 x i32****]* %124, i64 0, i64 0
  %126 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %126, i32***** %125, !tbaa !5
  %127 = getelementptr inbounds i32****, i32***** %125, i64 1
  %128 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 1
  store i32**** %128, i32***** %127, !tbaa !5
  %129 = getelementptr inbounds i32****, i32***** %127, i64 1
  %130 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %130, i32***** %129, !tbaa !5
  %131 = getelementptr inbounds i32****, i32***** %129, i64 1
  store i32**** null, i32***** %131, !tbaa !5
  %132 = getelementptr inbounds i32****, i32***** %131, i64 1
  %133 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %133, i32***** %132, !tbaa !5
  %134 = getelementptr inbounds i32****, i32***** %132, i64 1
  store i32**** null, i32***** %134, !tbaa !5
  %135 = getelementptr inbounds i32****, i32***** %134, i64 1
  %136 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %136, i32***** %135, !tbaa !5
  %137 = getelementptr inbounds i32****, i32***** %135, i64 1
  store i32**** null, i32***** %137, !tbaa !5
  %138 = getelementptr inbounds i32****, i32***** %137, i64 1
  %139 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %139, i32***** %138, !tbaa !5
  %140 = getelementptr inbounds i32****, i32***** %138, i64 1
  %141 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 1
  store i32**** %141, i32***** %140, !tbaa !5
  %142 = getelementptr inbounds [10 x i32****], [10 x i32****]* %124, i64 1
  %143 = getelementptr inbounds [10 x i32****], [10 x i32****]* %142, i64 0, i64 0
  %144 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %144, i32***** %143, !tbaa !5
  %145 = getelementptr inbounds i32****, i32***** %143, i64 1
  %146 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %146, i32***** %145, !tbaa !5
  %147 = getelementptr inbounds i32****, i32***** %145, i64 1
  %148 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %148, i32***** %147, !tbaa !5
  %149 = getelementptr inbounds i32****, i32***** %147, i64 1
  %150 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %150, i32***** %149, !tbaa !5
  %151 = getelementptr inbounds i32****, i32***** %149, i64 1
  %152 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 5
  store i32**** %152, i32***** %151, !tbaa !5
  %153 = getelementptr inbounds i32****, i32***** %151, i64 1
  store i32**** null, i32***** %153, !tbaa !5
  %154 = getelementptr inbounds i32****, i32***** %153, i64 1
  store i32**** null, i32***** %154, !tbaa !5
  %155 = getelementptr inbounds i32****, i32***** %154, i64 1
  store i32**** null, i32***** %155, !tbaa !5
  %156 = getelementptr inbounds i32****, i32***** %155, i64 1
  store i32**** null, i32***** %156, !tbaa !5
  %157 = getelementptr inbounds i32****, i32***** %156, i64 1
  %158 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 5
  store i32**** %158, i32***** %157, !tbaa !5
  %159 = getelementptr inbounds [10 x i32****], [10 x i32****]* %142, i64 1
  %160 = getelementptr inbounds [10 x i32****], [10 x i32****]* %159, i64 0, i64 0
  store i32**** null, i32***** %160, !tbaa !5
  %161 = getelementptr inbounds i32****, i32***** %160, i64 1
  %162 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %162, i32***** %161, !tbaa !5
  %163 = getelementptr inbounds i32****, i32***** %161, i64 1
  %164 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %164, i32***** %163, !tbaa !5
  %165 = getelementptr inbounds i32****, i32***** %163, i64 1
  store i32**** null, i32***** %165, !tbaa !5
  %166 = getelementptr inbounds i32****, i32***** %165, i64 1
  store i32**** null, i32***** %166, !tbaa !5
  %167 = getelementptr inbounds i32****, i32***** %166, i64 1
  store i32**** null, i32***** %167, !tbaa !5
  %168 = getelementptr inbounds i32****, i32***** %167, i64 1
  %169 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %169, i32***** %168, !tbaa !5
  %170 = getelementptr inbounds i32****, i32***** %168, i64 1
  %171 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %171, i32***** %170, !tbaa !5
  %172 = getelementptr inbounds i32****, i32***** %170, i64 1
  %173 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 5
  store i32**** %173, i32***** %172, !tbaa !5
  %174 = getelementptr inbounds i32****, i32***** %172, i64 1
  %175 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %175, i32***** %174, !tbaa !5
  %176 = getelementptr inbounds [10 x i32****], [10 x i32****]* %159, i64 1
  %177 = getelementptr inbounds [10 x i32****], [10 x i32****]* %176, i64 0, i64 0
  %178 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %178, i32***** %177, !tbaa !5
  %179 = getelementptr inbounds i32****, i32***** %177, i64 1
  store i32**** null, i32***** %179, !tbaa !5
  %180 = getelementptr inbounds i32****, i32***** %179, i64 1
  %181 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 0
  store i32**** %181, i32***** %180, !tbaa !5
  %182 = getelementptr inbounds i32****, i32***** %180, i64 1
  %183 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %183, i32***** %182, !tbaa !5
  %184 = getelementptr inbounds i32****, i32***** %182, i64 1
  %185 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 0
  store i32**** %185, i32***** %184, !tbaa !5
  %186 = getelementptr inbounds i32****, i32***** %184, i64 1
  store i32**** null, i32***** %186, !tbaa !5
  %187 = getelementptr inbounds i32****, i32***** %186, i64 1
  %188 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %188, i32***** %187, !tbaa !5
  %189 = getelementptr inbounds i32****, i32***** %187, i64 1
  %190 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %190, i32***** %189, !tbaa !5
  %191 = getelementptr inbounds i32****, i32***** %189, i64 1
  %192 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 5
  store i32**** %192, i32***** %191, !tbaa !5
  %193 = getelementptr inbounds i32****, i32***** %191, i64 1
  %194 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %194, i32***** %193, !tbaa !5
  %195 = getelementptr inbounds [10 x i32****], [10 x i32****]* %176, i64 1
  %196 = getelementptr inbounds [10 x i32****], [10 x i32****]* %195, i64 0, i64 0
  %197 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %197, i32***** %196, !tbaa !5
  %198 = getelementptr inbounds i32****, i32***** %196, i64 1
  store i32**** null, i32***** %198, !tbaa !5
  %199 = getelementptr inbounds i32****, i32***** %198, i64 1
  store i32**** null, i32***** %199, !tbaa !5
  %200 = getelementptr inbounds i32****, i32***** %199, i64 1
  store i32**** null, i32***** %200, !tbaa !5
  %201 = getelementptr inbounds i32****, i32***** %200, i64 1
  %202 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %202, i32***** %201, !tbaa !5
  %203 = getelementptr inbounds i32****, i32***** %201, i64 1
  %204 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %204, i32***** %203, !tbaa !5
  %205 = getelementptr inbounds i32****, i32***** %203, i64 1
  store i32**** null, i32***** %205, !tbaa !5
  %206 = getelementptr inbounds i32****, i32***** %205, i64 1
  store i32**** null, i32***** %206, !tbaa !5
  %207 = getelementptr inbounds i32****, i32***** %206, i64 1
  store i32**** null, i32***** %207, !tbaa !5
  %208 = getelementptr inbounds i32****, i32***** %207, i64 1
  %209 = getelementptr inbounds [8 x i32***], [8 x i32***]* %l_1200, i32 0, i64 7
  store i32**** %209, i32***** %208, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1243) #1
  store i8 -1, i8* %l_1243, align 1, !tbaa !9
  %210 = bitcast i64* %l_1295 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %210) #1
  store i64 -6114796264232585164, i64* %l_1295, align 8, !tbaa !7
  %211 = bitcast i32*** %l_1297 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %211) #1
  %212 = getelementptr inbounds [9 x i32*], [9 x i32*]* %l_934, i32 0, i64 4
  store i32** %212, i32*** %l_1297, align 8, !tbaa !5
  %213 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %213) #1
  %214 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %214) #1
  %215 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %215) #1
  %216 = load i32, i32* %l_937, align 4, !tbaa !1
  %217 = add i32 %216, -1
  store i32 %217, i32* %l_937, align 4, !tbaa !1
  %218 = load i32, i32* %5, align 4, !tbaa !1
  %219 = sext i32 %218 to i64
  %220 = load i16*, i16** %l_945, align 8, !tbaa !5
  store i16* %220, i16** getelementptr inbounds ([6 x i16*], [6 x i16*]* @g_947, i32 0, i64 4), align 8, !tbaa !5
  %221 = icmp eq i16* %l_936, %220
  %222 = zext i1 %221 to i32
  %223 = trunc i32 %222 to i8
  %224 = bitcast %union.U1* %p_34 to i8*
  %225 = load i8, i8* %224, align 1, !tbaa !9
  %226 = load i32*, i32** %l_931, align 8, !tbaa !5
  %227 = load i32, i32* %226, align 4, !tbaa !1
  %228 = trunc i32 %227 to i8
  %229 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %225, i8 zeroext %228)
  %230 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %223, i8 signext %229)
  %231 = sext i8 %230 to i16
  %232 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %231, i32 10)
  %233 = zext i16 %232 to i64
  %234 = call i64 @safe_unary_minus_func_int64_t_s(i64 %233)
  %235 = or i64 %219, %234
  %236 = getelementptr inbounds [5 x [4 x i32**]], [5 x [4 x i32**]]* %l_950, i32 0, i64 1
  %237 = getelementptr inbounds [4 x i32**], [4 x i32**]* %236, i32 0, i64 0
  %238 = load i32**, i32*** %237, align 8, !tbaa !5
  %239 = icmp ne i32** null, %238
  %240 = zext i1 %239 to i32
  %241 = sext i32 %240 to i64
  %242 = xor i64 %235, %241
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %395

; <label>:244                                     ; preds = %0
  %245 = bitcast i32* %l_974 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %245) #1
  store i32 -310075135, i32* %l_974, align 4, !tbaa !1
  %246 = bitcast [1 x i32]* %l_978 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %246) #1
  %247 = bitcast i32* %l_979 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %247) #1
  store i32 -1, i32* %l_979, align 4, !tbaa !1
  %248 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %248) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %249

; <label>:249                                     ; preds = %256, %244
  %250 = load i32, i32* %i1, align 4, !tbaa !1
  %251 = icmp slt i32 %250, 1
  br i1 %251, label %252, label %259

; <label>:252                                     ; preds = %249
  %253 = load i32, i32* %i1, align 4, !tbaa !1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [1 x i32], [1 x i32]* %l_978, i32 0, i64 %254
  store i32 2017060908, i32* %255, align 4, !tbaa !1
  br label %256

; <label>:256                                     ; preds = %252
  %257 = load i32, i32* %i1, align 4, !tbaa !1
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %i1, align 4, !tbaa !1
  br label %249

; <label>:259                                     ; preds = %249
  store i16 0, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_480, i32 0, i32 0), align 2, !tbaa !10
  br label %260

; <label>:260                                     ; preds = %383, %259
  %261 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_480, i32 0, i32 0), align 2, !tbaa !10
  %262 = sext i16 %261 to i32
  %263 = icmp eq i32 %262, -15
  br i1 %263, label %264, label %386

; <label>:264                                     ; preds = %260
  %265 = bitcast i32* %l_965 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %265) #1
  store i32 -1518817849, i32* %l_965, align 4, !tbaa !1
  %266 = bitcast i8*** %l_969 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %266) #1
  store i8** @g_47, i8*** %l_969, align 8, !tbaa !5
  %267 = bitcast i32* %l_973 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %267) #1
  store i32 -1, i32* %l_973, align 4, !tbaa !1
  %268 = load volatile i32*, i32** @g_399, align 8, !tbaa !5
  %269 = load i32, i32* %268, align 4, !tbaa !1
  %270 = load i32*, i32** %l_933, align 8, !tbaa !5
  store i32 %269, i32* %270, align 4, !tbaa !1
  %271 = load i32*, i32** %l_931, align 8, !tbaa !5
  %272 = load i32, i32* %271, align 4, !tbaa !1
  %273 = sext i32 %272 to i64
  %274 = xor i64 %273, 4143640692
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %271, align 4, !tbaa !1
  store i32 -28, i32* @g_426, align 4, !tbaa !1
  br label %276

; <label>:276                                     ; preds = %375, %264
  %277 = load i32, i32* @g_426, align 4, !tbaa !1
  %278 = icmp eq i32 %277, 46
  br i1 %278, label %279, label %378

; <label>:279                                     ; preds = %276
  call void @llvm.lifetime.start(i64 1, i8* %l_968) #1
  store i8 -62, i8* %l_968, align 1, !tbaa !9
  %280 = bitcast i64** %l_970 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %280) #1
  store i64* null, i64** %l_970, align 8, !tbaa !5
  %281 = bitcast i64** %l_971 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %281) #1
  store i64* getelementptr inbounds (%union.U1, %union.U1* @g_930, i32 0, i32 0), i64** %l_971, align 8, !tbaa !5
  %282 = bitcast [8 x i8*]* %l_972 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %282) #1
  %283 = getelementptr inbounds [8 x i8*], [8 x i8*]* %l_972, i64 0, i64 0
  store i8* %l_968, i8** %283, !tbaa !5
  %284 = getelementptr inbounds i8*, i8** %283, i64 1
  store i8* %l_968, i8** %284, !tbaa !5
  %285 = getelementptr inbounds i8*, i8** %284, i64 1
  store i8* %l_968, i8** %285, !tbaa !5
  %286 = getelementptr inbounds i8*, i8** %285, i64 1
  store i8* %l_968, i8** %286, !tbaa !5
  %287 = getelementptr inbounds i8*, i8** %286, i64 1
  store i8* %l_968, i8** %287, !tbaa !5
  %288 = getelementptr inbounds i8*, i8** %287, i64 1
  store i8* %l_968, i8** %288, !tbaa !5
  %289 = getelementptr inbounds i8*, i8** %288, i64 1
  store i8* %l_968, i8** %289, !tbaa !5
  %290 = getelementptr inbounds i8*, i8** %289, i64 1
  store i8* %l_968, i8** %290, !tbaa !5
  %291 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %291) #1
  %292 = load i32****, i32***** @g_812, align 8, !tbaa !5
  %293 = load volatile i32***, i32**** %292, align 8, !tbaa !5
  %294 = load volatile i32**, i32*** %293, align 8, !tbaa !5
  %295 = icmp eq i32** %294, null
  %296 = zext i1 %295 to i32
  %297 = trunc i32 %296 to i8
  %298 = load i32*, i32** %l_932, align 8, !tbaa !5
  %299 = load i32, i32* %298, align 4, !tbaa !1
  %300 = load i32*, i32** @g_918, align 8, !tbaa !5
  %301 = load i32, i32* %300, align 4, !tbaa !1
  %302 = load i8, i8* %l_968, align 1, !tbaa !9
  %303 = zext i8 %302 to i32
  %304 = load i8**, i8*** %l_969, align 8, !tbaa !5
  %305 = icmp eq i8** null, %304
  %306 = zext i1 %305 to i32
  %307 = icmp eq i32 %303, %306
  %308 = zext i1 %307 to i32
  %309 = load i32, i32* %5, align 4, !tbaa !1
  %310 = icmp sgt i32 %308, %309
  %311 = zext i1 %310 to i32
  %312 = load i32, i32* %5, align 4, !tbaa !1
  %313 = icmp ne i32 %311, %312
  %314 = zext i1 %313 to i32
  %315 = sext i32 %314 to i64
  %316 = icmp sgt i64 %315, 15561
  %317 = zext i1 %316 to i32
  %318 = load i8*, i8** %4, align 8, !tbaa !5
  %319 = load i8, i8* %318, align 1, !tbaa !9
  %320 = sext i8 %319 to i32
  %321 = icmp sge i32 %317, %320
  br i1 %321, label %323, label %322

; <label>:322                                     ; preds = %279
  br label %323

; <label>:323                                     ; preds = %322, %279
  %324 = phi i1 [ true, %279 ], [ true, %322 ]
  %325 = zext i1 %324 to i32
  %326 = icmp slt i32 %301, %325
  %327 = zext i1 %326 to i32
  %328 = sext i32 %327 to i64
  %329 = load i64*, i64** %l_971, align 8, !tbaa !5
  store i64 %328, i64* %329, align 8, !tbaa !7
  %330 = call i64 @safe_add_func_int64_t_s_s(i64 %328, i64 -9)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %336, label %332

; <label>:332                                     ; preds = %323
  %333 = load i8, i8* %l_968, align 1, !tbaa !9
  %334 = zext i8 %333 to i32
  %335 = icmp ne i32 %334, 0
  br label %336

; <label>:336                                     ; preds = %332, %323
  %337 = phi i1 [ true, %323 ], [ %335, %332 ]
  %338 = zext i1 %337 to i32
  %339 = icmp eq i32 -1518817849, %338
  %340 = zext i1 %339 to i32
  %341 = load i32*, i32** @g_740, align 8, !tbaa !5
  %342 = load i32, i32* %341, align 4, !tbaa !1
  %343 = call i32 @safe_mod_func_int32_t_s_s(i32 %340, i32 %342)
  %344 = load i8, i8* getelementptr inbounds ([10 x [6 x i8]], [10 x [6 x i8]]* @g_545, i32 0, i64 8, i64 5), align 1, !tbaa !9
  %345 = sext i8 %344 to i64
  %346 = icmp slt i64 %345, -1
  %347 = zext i1 %346 to i32
  %348 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext 44, i32 %347)
  %349 = sext i8 %348 to i16
  %350 = load i32, i32* %3, align 4, !tbaa !1
  %351 = trunc i32 %350 to i16
  %352 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %349, i16 signext %351)
  %353 = sext i16 %352 to i32
  %354 = icmp eq i32 %299, %353
  %355 = zext i1 %354 to i32
  %356 = trunc i32 %355 to i8
  %357 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %356, i8 signext -85)
  %358 = sext i8 %357 to i32
  %359 = load i32, i32* %l_973, align 4, !tbaa !1
  %360 = or i32 %359, %358
  store i32 %360, i32* %l_973, align 4, !tbaa !1
  %361 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %297, i32 %360)
  %362 = sext i8 %361 to i32
  %363 = load i32*, i32** %l_931, align 8, !tbaa !5
  store i32 %362, i32* %363, align 4, !tbaa !1
  %364 = bitcast %union.U1* %p_34 to i8*
  %365 = load i8, i8* %364, align 1, !tbaa !9
  %366 = sext i8 %365 to i64
  %367 = icmp sgt i64 5532, %366
  %368 = zext i1 %367 to i32
  %369 = load i32, i32* %l_974, align 4, !tbaa !1
  %370 = xor i32 %369, %368
  store i32 %370, i32* %l_974, align 4, !tbaa !1
  %371 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %371) #1
  %372 = bitcast [8 x i8*]* %l_972 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %372) #1
  %373 = bitcast i64** %l_971 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %373) #1
  %374 = bitcast i64** %l_970 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %374) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_968) #1
  br label %375

; <label>:375                                     ; preds = %336
  %376 = load i32, i32* @g_426, align 4, !tbaa !1
  %377 = add i32 %376, 1
  store i32 %377, i32* @g_426, align 4, !tbaa !1
  br label %276

; <label>:378                                     ; preds = %276
  %379 = load i32*, i32** %l_931, align 8, !tbaa !5
  store i32 0, i32* %379, align 4, !tbaa !1
  %380 = bitcast i32* %l_973 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %380) #1
  %381 = bitcast i8*** %l_969 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %381) #1
  %382 = bitcast i32* %l_965 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %382) #1
  br label %383

; <label>:383                                     ; preds = %378
  %384 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_480, i32 0, i32 0), align 2, !tbaa !10
  %385 = add i16 %384, -1
  store i16 %385, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_480, i32 0, i32 0), align 2, !tbaa !10
  br label %260

; <label>:386                                     ; preds = %260
  %387 = load %union.U2*, %union.U2** %l_975, align 8, !tbaa !5
  %388 = load volatile %union.U2**, %union.U2*** @g_976, align 8, !tbaa !5
  store %union.U2* %387, %union.U2** %388, align 8, !tbaa !5
  %389 = load i64, i64* %l_980, align 8, !tbaa !7
  %390 = add i64 %389, 1
  store i64 %390, i64* %l_980, align 8, !tbaa !7
  %391 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %391) #1
  %392 = bitcast i32* %l_979 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %392) #1
  %393 = bitcast [1 x i32]* %l_978 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %393) #1
  %394 = bitcast i32* %l_974 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %394) #1
  br label %1956

; <label>:395                                     ; preds = %0
  %396 = bitcast i16****** %l_985 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %396) #1
  store i16***** %l_983, i16****** %l_985, align 8, !tbaa !5
  %397 = bitcast %union.U0** %l_988 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %397) #1
  store %union.U0* bitcast ({ i16, [6 x i8] }* @g_244 to %union.U0*), %union.U0** %l_988, align 8, !tbaa !5
  %398 = bitcast [1 x [9 x [4 x i64*]]]* %l_990 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %398) #1
  %399 = bitcast [1 x [9 x [4 x i64*]]]* %l_990 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %399, i8* bitcast ([1 x [9 x [4 x i64*]]]* @func_30.l_990 to i8*), i64 288, i32 16, i1 false)
  %400 = bitcast i32** %l_991 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %400) #1
  store i32* @g_4, i32** %l_991, align 8, !tbaa !5
  %401 = bitcast i32* %l_993 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %401) #1
  store i32 -2, i32* %l_993, align 4, !tbaa !1
  %402 = bitcast i32* %l_994 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %402) #1
  store i32 -1, i32* %l_994, align 4, !tbaa !1
  %403 = bitcast i32* %l_995 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %403) #1
  store i32 1838945255, i32* %l_995, align 4, !tbaa !1
  %404 = bitcast i16* %l_1016 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %404) #1
  store i16 30932, i16* %l_1016, align 2, !tbaa !10
  %405 = bitcast i16*** %l_1032 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %405) #1
  store i16** null, i16*** %l_1032, align 8, !tbaa !5
  %406 = bitcast [7 x [3 x i8]]* %l_1122 to i8*
  call void @llvm.lifetime.start(i64 21, i8* %406) #1
  %407 = bitcast [7 x [3 x i8]]* %l_1122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %407, i8* getelementptr inbounds ([7 x [3 x i8]], [7 x [3 x i8]]* @func_30.l_1122, i32 0, i32 0, i32 0), i64 21, i32 16, i1 false)
  %408 = bitcast i32* %l_1126 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %408) #1
  store i32 0, i32* %l_1126, align 4, !tbaa !1
  %409 = bitcast i32* %l_1129 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %409) #1
  store i32 0, i32* %l_1129, align 4, !tbaa !1
  %410 = bitcast [3 x i32]* %l_1130 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %410) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_1139) #1
  store i8 7, i8* %l_1139, align 1, !tbaa !9
  %411 = bitcast i32** %l_1171 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %411) #1
  store i32* null, i32** %l_1171, align 8, !tbaa !5
  %412 = bitcast i32*** %l_1170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %412) #1
  store i32** %l_1171, i32*** %l_1170, align 8, !tbaa !5
  %413 = bitcast i32*** %l_1172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %413) #1
  store i32** %l_1171, i32*** %l_1172, align 8, !tbaa !5
  %414 = bitcast i32*** %l_1213 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %414) #1
  store i32** %l_932, i32*** %l_1213, align 8, !tbaa !5
  %415 = bitcast i32****** %l_1266 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %415) #1
  store i32***** null, i32****** %l_1266, align 8, !tbaa !5
  %416 = bitcast i16* %l_1291 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %416) #1
  store i16 -28631, i16* %l_1291, align 2, !tbaa !10
  %417 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %417) #1
  %418 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %418) #1
  %419 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %419) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %420

; <label>:420                                     ; preds = %427, %395
  %421 = load i32, i32* %i3, align 4, !tbaa !1
  %422 = icmp slt i32 %421, 3
  br i1 %422, label %423, label %430

; <label>:423                                     ; preds = %420
  %424 = load i32, i32* %i3, align 4, !tbaa !1
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [3 x i32], [3 x i32]* %l_1130, i32 0, i64 %425
  store i32 -1, i32* %426, align 4, !tbaa !1
  br label %427

; <label>:427                                     ; preds = %423
  %428 = load i32, i32* %i3, align 4, !tbaa !1
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %i3, align 4, !tbaa !1
  br label %420

; <label>:430                                     ; preds = %420
  %431 = load i16****, i16***** %l_983, align 8, !tbaa !5
  %432 = load i16*****, i16****** %l_985, align 8, !tbaa !5
  store i16**** %431, i16***** %432, align 8, !tbaa !5
  %433 = load i32*, i32** %2, align 8, !tbaa !5
  %434 = load i32, i32* %433, align 4, !tbaa !1
  %435 = load i8, i8* getelementptr inbounds ([10 x [6 x i8]], [10 x [6 x i8]]* @g_545, i32 0, i64 3, i64 0), align 1, !tbaa !9
  %436 = load %union.U0*, %union.U0** %l_987, align 8, !tbaa !5
  %437 = load %union.U0*, %union.U0** %l_988, align 8, !tbaa !5
  %438 = icmp ne %union.U0* %436, %437
  %439 = zext i1 %438 to i32
  %440 = xor i32 %434, %439
  %441 = icmp ne i32 %440, 0
  %442 = xor i1 %441, true
  %443 = zext i1 %442 to i32
  %444 = load i32, i32* @g_400, align 4, !tbaa !1
  %445 = sext i32 %444 to i64
  store i64 %445, i64* getelementptr inbounds ([6 x [10 x [4 x %union.U1]]], [6 x [10 x [4 x %union.U1]]]* @g_489, i32 0, i64 0, i64 0, i64 2, i32 0), align 8, !tbaa !7
  %446 = icmp ne i64 %445, 0
  %447 = xor i1 %446, true
  %448 = zext i1 %447 to i32
  %449 = icmp ne i32 %443, %448
  br i1 %449, label %450, label %1571

; <label>:450                                     ; preds = %430
  %451 = bitcast [6 x [3 x i32**]]* %l_992 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %451) #1
  %452 = getelementptr inbounds [6 x [3 x i32**]], [6 x [3 x i32**]]* %l_992, i64 0, i64 0
  %453 = getelementptr inbounds [3 x i32**], [3 x i32**]* %452, i64 0, i64 0
  store i32** %l_931, i32*** %453, !tbaa !5
  %454 = getelementptr inbounds i32**, i32*** %453, i64 1
  store i32** %l_931, i32*** %454, !tbaa !5
  %455 = getelementptr inbounds i32**, i32*** %454, i64 1
  %456 = getelementptr inbounds [9 x i32*], [9 x i32*]* %l_934, i32 0, i64 7
  store i32** %456, i32*** %455, !tbaa !5
  %457 = getelementptr inbounds [3 x i32**], [3 x i32**]* %452, i64 1
  %458 = getelementptr inbounds [3 x i32**], [3 x i32**]* %457, i64 0, i64 0
  store i32** %l_991, i32*** %458, !tbaa !5
  %459 = getelementptr inbounds i32**, i32*** %458, i64 1
  store i32** %l_991, i32*** %459, !tbaa !5
  %460 = getelementptr inbounds i32**, i32*** %459, i64 1
  store i32** @g_97, i32*** %460, !tbaa !5
  %461 = getelementptr inbounds [3 x i32**], [3 x i32**]* %457, i64 1
  %462 = getelementptr inbounds [3 x i32**], [3 x i32**]* %461, i64 0, i64 0
  store i32** %l_931, i32*** %462, !tbaa !5
  %463 = getelementptr inbounds i32**, i32*** %462, i64 1
  store i32** %l_931, i32*** %463, !tbaa !5
  %464 = getelementptr inbounds i32**, i32*** %463, i64 1
  %465 = getelementptr inbounds [9 x i32*], [9 x i32*]* %l_934, i32 0, i64 7
  store i32** %465, i32*** %464, !tbaa !5
  %466 = getelementptr inbounds [3 x i32**], [3 x i32**]* %461, i64 1
  %467 = getelementptr inbounds [3 x i32**], [3 x i32**]* %466, i64 0, i64 0
  store i32** %l_932, i32*** %467, !tbaa !5
  %468 = getelementptr inbounds i32**, i32*** %467, i64 1
  store i32** %l_932, i32*** %468, !tbaa !5
  %469 = getelementptr inbounds i32**, i32*** %468, i64 1
  store i32** %l_991, i32*** %469, !tbaa !5
  %470 = getelementptr inbounds [3 x i32**], [3 x i32**]* %466, i64 1
  %471 = getelementptr inbounds [3 x i32**], [3 x i32**]* %470, i64 0, i64 0
  store i32** %l_991, i32*** %471, !tbaa !5
  %472 = getelementptr inbounds i32**, i32*** %471, i64 1
  store i32** %l_991, i32*** %472, !tbaa !5
  %473 = getelementptr inbounds i32**, i32*** %472, i64 1
  store i32** %l_931, i32*** %473, !tbaa !5
  %474 = getelementptr inbounds [3 x i32**], [3 x i32**]* %470, i64 1
  %475 = getelementptr inbounds [3 x i32**], [3 x i32**]* %474, i64 0, i64 0
  store i32** %l_932, i32*** %475, !tbaa !5
  %476 = getelementptr inbounds i32**, i32*** %475, i64 1
  store i32** %l_932, i32*** %476, !tbaa !5
  %477 = getelementptr inbounds i32**, i32*** %476, i64 1
  store i32** %l_991, i32*** %477, !tbaa !5
  %478 = bitcast i16* %l_996 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %478) #1
  store i16 0, i16* %l_996, align 2, !tbaa !10
  %479 = bitcast [9 x i8*]* %l_1017 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %479) #1
  %480 = bitcast [9 x i8*]* %l_1017 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %480, i8* bitcast ([9 x i8*]* @func_30.l_1017 to i8*), i64 72, i32 16, i1 false)
  %481 = bitcast [3 x [4 x i16***]]* %l_1035 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %481) #1
  %482 = getelementptr inbounds [3 x [4 x i16***]], [3 x [4 x i16***]]* %l_1035, i64 0, i64 0
  %483 = getelementptr inbounds [4 x i16***], [4 x i16***]* %482, i64 0, i64 0
  %484 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_946, i32 0, i64 1
  store i16*** %484, i16**** %483, !tbaa !5
  %485 = getelementptr inbounds i16***, i16**** %483, i64 1
  %486 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_946, i32 0, i64 1
  store i16*** %486, i16**** %485, !tbaa !5
  %487 = getelementptr inbounds i16***, i16**** %485, i64 1
  %488 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_946, i32 0, i64 1
  store i16*** %488, i16**** %487, !tbaa !5
  %489 = getelementptr inbounds i16***, i16**** %487, i64 1
  %490 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_946, i32 0, i64 1
  store i16*** %490, i16**** %489, !tbaa !5
  %491 = getelementptr inbounds [4 x i16***], [4 x i16***]* %482, i64 1
  %492 = getelementptr inbounds [4 x i16***], [4 x i16***]* %491, i64 0, i64 0
  %493 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_946, i32 0, i64 1
  store i16*** %493, i16**** %492, !tbaa !5
  %494 = getelementptr inbounds i16***, i16**** %492, i64 1
  %495 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_946, i32 0, i64 1
  store i16*** %495, i16**** %494, !tbaa !5
  %496 = getelementptr inbounds i16***, i16**** %494, i64 1
  %497 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_946, i32 0, i64 1
  store i16*** %497, i16**** %496, !tbaa !5
  %498 = getelementptr inbounds i16***, i16**** %496, i64 1
  %499 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_946, i32 0, i64 1
  store i16*** %499, i16**** %498, !tbaa !5
  %500 = getelementptr inbounds [4 x i16***], [4 x i16***]* %491, i64 1
  %501 = getelementptr inbounds [4 x i16***], [4 x i16***]* %500, i64 0, i64 0
  %502 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_946, i32 0, i64 1
  store i16*** %502, i16**** %501, !tbaa !5
  %503 = getelementptr inbounds i16***, i16**** %501, i64 1
  %504 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_946, i32 0, i64 1
  store i16*** %504, i16**** %503, !tbaa !5
  %505 = getelementptr inbounds i16***, i16**** %503, i64 1
  %506 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_946, i32 0, i64 1
  store i16*** %506, i16**** %505, !tbaa !5
  %507 = getelementptr inbounds i16***, i16**** %505, i64 1
  %508 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_946, i32 0, i64 1
  store i16*** %508, i16**** %507, !tbaa !5
  %509 = bitcast i32***** %l_1093 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %509) #1
  store i32**** @g_830, i32***** %l_1093, align 8, !tbaa !5
  %510 = bitcast %union.U2** %l_1142 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %510) #1
  store %union.U2* getelementptr inbounds ([4 x [5 x %union.U2]], [4 x [5 x %union.U2]]* @g_1143, i32 0, i64 2, i64 4), %union.U2** %l_1142, align 8, !tbaa !5
  %511 = bitcast %union.U1* %l_1155 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %511) #1
  %512 = bitcast %union.U1* %l_1155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %512, i8* bitcast (%union.U1* @func_30.l_1155 to i8*), i64 8, i32 8, i1 false)
  %513 = bitcast [4 x [3 x [3 x i64]]]* %l_1156 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %513) #1
  %514 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %514) #1
  %515 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %515) #1
  %516 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %516) #1
  store i32 0, i32* %i6, align 4, !tbaa !1
  br label %517

; <label>:517                                     ; preds = %546, %450
  %518 = load i32, i32* %i6, align 4, !tbaa !1
  %519 = icmp slt i32 %518, 4
  br i1 %519, label %520, label %549

; <label>:520                                     ; preds = %517
  store i32 0, i32* %j7, align 4, !tbaa !1
  br label %521

; <label>:521                                     ; preds = %542, %520
  %522 = load i32, i32* %j7, align 4, !tbaa !1
  %523 = icmp slt i32 %522, 3
  br i1 %523, label %524, label %545

; <label>:524                                     ; preds = %521
  store i32 0, i32* %k8, align 4, !tbaa !1
  br label %525

; <label>:525                                     ; preds = %538, %524
  %526 = load i32, i32* %k8, align 4, !tbaa !1
  %527 = icmp slt i32 %526, 3
  br i1 %527, label %528, label %541

; <label>:528                                     ; preds = %525
  %529 = load i32, i32* %k8, align 4, !tbaa !1
  %530 = sext i32 %529 to i64
  %531 = load i32, i32* %j7, align 4, !tbaa !1
  %532 = sext i32 %531 to i64
  %533 = load i32, i32* %i6, align 4, !tbaa !1
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds [4 x [3 x [3 x i64]]], [4 x [3 x [3 x i64]]]* %l_1156, i32 0, i64 %534
  %536 = getelementptr inbounds [3 x [3 x i64]], [3 x [3 x i64]]* %535, i32 0, i64 %532
  %537 = getelementptr inbounds [3 x i64], [3 x i64]* %536, i32 0, i64 %530
  store i64 -2676805558022949213, i64* %537, align 8, !tbaa !7
  br label %538

; <label>:538                                     ; preds = %528
  %539 = load i32, i32* %k8, align 4, !tbaa !1
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %k8, align 4, !tbaa !1
  br label %525

; <label>:541                                     ; preds = %525
  br label %542

; <label>:542                                     ; preds = %541
  %543 = load i32, i32* %j7, align 4, !tbaa !1
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %j7, align 4, !tbaa !1
  br label %521

; <label>:545                                     ; preds = %521
  br label %546

; <label>:546                                     ; preds = %545
  %547 = load i32, i32* %i6, align 4, !tbaa !1
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %i6, align 4, !tbaa !1
  br label %517

; <label>:549                                     ; preds = %517
  %550 = load i32*, i32** %l_991, align 8, !tbaa !5
  %551 = load volatile i32**, i32*** @g_188, align 8, !tbaa !5
  store i32* %550, i32** %551, align 8, !tbaa !5
  store i32* %550, i32** %2, align 8, !tbaa !5
  %552 = load i16, i16* %l_996, align 2, !tbaa !10
  %553 = add i16 %552, -1
  store i16 %553, i16* %l_996, align 2, !tbaa !10
  %554 = load i32*, i32** %2, align 8, !tbaa !5
  %555 = load i32, i32* %554, align 4, !tbaa !1
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %1098

; <label>:557                                     ; preds = %549
  %558 = bitcast i8** %l_999 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %558) #1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i64 4), i8** %l_999, align 8, !tbaa !5
  %559 = bitcast [8 x [6 x i32]]* %l_1011 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %559) #1
  %560 = bitcast [8 x [6 x i32]]* %l_1011 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %560, i8* bitcast ([8 x [6 x i32]]* @func_30.l_1011 to i8*), i64 192, i32 16, i1 false)
  %561 = bitcast i32* %l_1014 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %561) #1
  store i32 -6, i32* %l_1014, align 4, !tbaa !1
  %562 = bitcast [6 x i16**]* %l_1031 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %562) #1
  %563 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_1031, i64 0, i64 0
  store i16** %l_945, i16*** %563, !tbaa !5
  %564 = getelementptr inbounds i16**, i16*** %563, i64 1
  store i16** %l_945, i16*** %564, !tbaa !5
  %565 = getelementptr inbounds i16**, i16*** %564, i64 1
  store i16** %l_945, i16*** %565, !tbaa !5
  %566 = getelementptr inbounds i16**, i16*** %565, i64 1
  store i16** %l_945, i16*** %566, !tbaa !5
  %567 = getelementptr inbounds i16**, i16*** %566, i64 1
  store i16** %l_945, i16*** %567, !tbaa !5
  %568 = getelementptr inbounds i16**, i16*** %567, i64 1
  store i16** %l_945, i16*** %568, !tbaa !5
  %569 = bitcast [8 x [7 x i32]]* %l_1033 to i8*
  call void @llvm.lifetime.start(i64 224, i8* %569) #1
  %570 = bitcast [8 x [7 x i32]]* %l_1033 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %570, i8* bitcast ([8 x [7 x i32]]* @func_30.l_1033 to i8*), i64 224, i32 16, i1 false)
  %571 = bitcast i64* %l_1047 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %571) #1
  store i64 3069124011891268769, i64* %l_1047, align 8, !tbaa !7
  %572 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %572) #1
  %573 = bitcast i32* %j10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %573) #1
  %574 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_156, i32 0, i32 0), align 2, !tbaa !10
  %575 = trunc i16 %574 to i8
  %576 = load i8*, i8** %l_999, align 8, !tbaa !5
  store i8 %575, i8* %576, align 1, !tbaa !9
  %577 = zext i8 %575 to i64
  %578 = icmp ule i64 %577, 1
  %579 = zext i1 %578 to i32
  %580 = load i32*, i32** %l_932, align 8, !tbaa !5
  %581 = load i32, i32* %580, align 4, !tbaa !1
  %582 = xor i32 %581, %579
  store i32 %582, i32* %580, align 4, !tbaa !1
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %804

; <label>:584                                     ; preds = %557
  %585 = bitcast i64** %l_1004 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %585) #1
  store i64* null, i64** %l_1004, align 8, !tbaa !5
  %586 = bitcast i64** %l_1005 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %586) #1
  store i64* %l_980, i64** %l_1005, align 8, !tbaa !5
  %587 = bitcast i32* %l_1012 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %587) #1
  store i32 2057429957, i32* %l_1012, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1013) #1
  store i8 2, i8* %l_1013, align 1, !tbaa !9
  %588 = bitcast i8** %l_1015 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %588) #1
  store i8* bitcast (%union.U1* getelementptr inbounds ([6 x [10 x [4 x %union.U1]]], [6 x [10 x [4 x %union.U1]]]* @g_489, i32 0, i64 0, i64 0, i64 2) to i8*), i8** %l_1015, align 8, !tbaa !5
  %589 = call i64 @safe_sub_func_uint64_t_u_u(i64 4, i64 9)
  %590 = load i32, i32* %5, align 4, !tbaa !1
  %591 = sext i32 %590 to i64
  %592 = load i64*, i64** %l_1005, align 8, !tbaa !5
  %593 = load i64, i64* %592, align 8, !tbaa !7
  %594 = or i64 %593, %591
  store i64 %594, i64* %592, align 8, !tbaa !7
  %595 = load i8*, i8** %4, align 8, !tbaa !5
  %596 = load i8, i8* %595, align 1, !tbaa !9
  %597 = sext i8 %596 to i32
  %598 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_1010, i32 0, i64 0), align 4, !tbaa !1
  %599 = sext i32 %598 to i64
  %600 = load i32, i32* %5, align 4, !tbaa !1
  %601 = sext i32 %600 to i64
  %602 = call i64 @safe_div_func_int64_t_s_s(i64 %599, i64 %601)
  %603 = trunc i64 %602 to i8
  %604 = load i32, i32* %5, align 4, !tbaa !1
  %605 = getelementptr inbounds [8 x [6 x i32]], [8 x [6 x i32]]* %l_1011, i32 0, i64 6
  %606 = getelementptr inbounds [6 x i32], [6 x i32]* %605, i32 0, i64 2
  %607 = load i32, i32* %606, align 4, !tbaa !1
  %608 = or i32 %607, %604
  store i32 %608, i32* %606, align 4, !tbaa !1
  %609 = load i32, i32* %l_1012, align 4, !tbaa !1
  %610 = sext i32 %609 to i64
  %611 = icmp slt i64 %610, 20435
  %612 = zext i1 %611 to i32
  %613 = sext i32 %612 to i64
  %614 = icmp eq i64 %613, 3004
  %615 = zext i1 %614 to i32
  %616 = icmp eq i32 %608, %615
  br i1 %616, label %617, label %621

; <label>:617                                     ; preds = %584
  %618 = load i8, i8* %l_1013, align 1, !tbaa !9
  %619 = zext i8 %618 to i32
  %620 = icmp ne i32 %619, 0
  br label %621

; <label>:621                                     ; preds = %617, %584
  %622 = phi i1 [ false, %584 ], [ %620, %617 ]
  %623 = zext i1 %622 to i32
  %624 = trunc i32 %623 to i8
  %625 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %603, i8 zeroext %624)
  %626 = zext i8 %625 to i32
  %627 = icmp sle i32 %597, %626
  %628 = zext i1 %627 to i32
  %629 = sext i32 %628 to i64
  %630 = icmp slt i64 %629, 3588717528792398464
  %631 = zext i1 %630 to i32
  %632 = load volatile i64, i64* @g_11, align 8, !tbaa !7
  %633 = icmp ne i64 %632, 0
  br i1 %633, label %634, label %637

; <label>:634                                     ; preds = %621
  %635 = load i32, i32* %l_1014, align 4, !tbaa !1
  %636 = icmp ne i32 %635, 0
  br label %637

; <label>:637                                     ; preds = %634, %621
  %638 = phi i1 [ false, %621 ], [ %636, %634 ]
  %639 = zext i1 %638 to i32
  %640 = load i32, i32* %l_1014, align 4, !tbaa !1
  %641 = icmp ule i32 %639, %640
  %642 = zext i1 %641 to i32
  %643 = load i8*, i8** %l_1015, align 8, !tbaa !5
  %644 = load i8, i8* %643, align 1, !tbaa !9
  %645 = sext i8 %644 to i32
  %646 = and i32 %645, %642
  %647 = trunc i32 %646 to i8
  store i8 %647, i8* %643, align 1, !tbaa !9
  %648 = sext i8 %647 to i32
  %649 = or i32 %648, 30932
  %650 = trunc i32 %649 to i8
  %651 = load i8*, i8** %4, align 8, !tbaa !5
  store i8 %650, i8* %651, align 1, !tbaa !9
  %652 = sext i8 %650 to i32
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %658, label %654

; <label>:654                                     ; preds = %637
  %655 = load i8, i8* bitcast (%union.U1* @g_49 to i8*), align 1, !tbaa !9
  %656 = sext i8 %655 to i32
  %657 = icmp ne i32 %656, 0
  br label %658

; <label>:658                                     ; preds = %654, %637
  %659 = phi i1 [ true, %637 ], [ %657, %654 ]
  %660 = zext i1 %659 to i32
  %661 = sext i32 %660 to i64
  %662 = icmp eq i64 %661, 40747
  %663 = zext i1 %662 to i32
  %664 = sext i32 %663 to i64
  store i64 %664, i64* getelementptr inbounds ([3 x %union.U0], [3 x %union.U0]* bitcast (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121 to [3 x %union.U0]*), i32 0, i32 0, i32 0), align 8, !tbaa !7
  %665 = xor i64 %664, -3643466588385919341
  %666 = icmp ule i64 %665, 1
  %667 = zext i1 %666 to i32
  %668 = bitcast %union.U1* %p_34 to i64*
  %669 = load i64, i64* %668, align 8, !tbaa !7
  %670 = trunc i64 %669 to i16
  %671 = call i64 @func_64(i16 zeroext %670)
  %672 = getelementptr %union.U1, %union.U1* %6, i32 0, i32 0
  store i64 %671, i64* %672, align 8
  %673 = load i32*, i32** %l_931, align 8, !tbaa !5
  %674 = load i32, i32* %673, align 4, !tbaa !1
  %675 = sext i32 %674 to i64
  %676 = and i64 %589, %675
  %677 = icmp ult i64 %676, 44173
  %678 = zext i1 %677 to i32
  %679 = load i32*, i32** %2, align 8, !tbaa !5
  %680 = load i32, i32* %679, align 4, !tbaa !1
  %681 = icmp sle i32 %678, %680
  %682 = zext i1 %681 to i32
  %683 = load i32*, i32** %l_932, align 8, !tbaa !5
  %684 = load i32, i32* %683, align 4, !tbaa !1
  %685 = sext i32 %684 to i64
  %686 = bitcast %union.U1* %p_34 to i64*
  %687 = load i64, i64* %686, align 8, !tbaa !7
  %688 = icmp slt i64 %685, %687
  %689 = zext i1 %688 to i32
  %690 = trunc i32 %689 to i8
  %691 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %690, i32 3)
  %692 = icmp ne i8 %691, 0
  br i1 %692, label %693, label %696

; <label>:693                                     ; preds = %658
  %694 = getelementptr inbounds [9 x i8*], [9 x i8*]* %l_1017, i32 0, i64 6
  %695 = load i8*, i8** %694, align 8, !tbaa !5
  store i8* %695, i8** %1
  store i32 1, i32* %7
  br label %798

; <label>:696                                     ; preds = %658
  %697 = bitcast i32* %l_1029 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %697) #1
  store i32 965335193, i32* %l_1029, align 4, !tbaa !1
  %698 = load i32*, i32** %2, align 8, !tbaa !5
  %699 = load i32, i32* %698, align 4, !tbaa !1
  %700 = load i32*, i32** %l_932, align 8, !tbaa !5
  %701 = load i32, i32* %700, align 4, !tbaa !1
  %702 = or i32 %701, %699
  store i32 %702, i32* %700, align 4, !tbaa !1
  %703 = load i32, i32* @g_426, align 4, !tbaa !1
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %705, label %706

; <label>:705                                     ; preds = %696
  br label %707

; <label>:706                                     ; preds = %696
  br label %707

; <label>:707                                     ; preds = %706, %705
  %708 = load i32*, i32** %l_933, align 8, !tbaa !5
  store i32 984484952, i32* %708, align 4, !tbaa !1
  %709 = load volatile i32**, i32*** @g_188, align 8, !tbaa !5
  store i32* %l_995, i32** %709, align 8, !tbaa !5
  %710 = load i32, i32* %5, align 4, !tbaa !1
  %711 = getelementptr inbounds [8 x [6 x i32]], [8 x [6 x i32]]* %l_1011, i32 0, i64 6
  %712 = getelementptr inbounds [6 x i32], [6 x i32]* %711, i32 0, i64 2
  store i32 %710, i32* %712, align 4, !tbaa !1
  %713 = sext i32 %710 to i64
  %714 = icmp eq i64 %713, 2059503433
  %715 = zext i1 %714 to i32
  %716 = load i32*, i32** @g_740, align 8, !tbaa !5
  %717 = load i32, i32* %716, align 4, !tbaa !1
  %718 = call i32 @safe_sub_func_int32_t_s_s(i32 %715, i32 %717)
  %719 = trunc i32 %718 to i8
  %720 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %719, i32 7)
  %721 = zext i8 %720 to i32
  %722 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext 0, i32 7)
  %723 = zext i8 %722 to i32
  %724 = load i8, i8* getelementptr inbounds ([10 x [6 x i8]], [10 x [6 x i8]]* @g_545, i32 0, i64 9, i64 0), align 1, !tbaa !9
  %725 = sext i8 %724 to i64
  %726 = load i32, i32* %l_1029, align 4, !tbaa !1
  %727 = load i16, i16* @g_110, align 2, !tbaa !10
  %728 = icmp ne i16 %727, 0
  %729 = xor i1 %728, true
  %730 = zext i1 %729 to i32
  %731 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_1031, i32 0, i64 1
  %732 = load i16**, i16*** %731, align 8, !tbaa !5
  %733 = load i32*, i32** %2, align 8, !tbaa !5
  %734 = load i32, i32* %733, align 4, !tbaa !1
  %735 = load i32*, i32** %l_933, align 8, !tbaa !5
  %736 = load i32, i32* %735, align 4, !tbaa !1
  %737 = and i32 %736, %734
  store i32 %737, i32* %735, align 4, !tbaa !1
  %738 = sext i32 %737 to i64
  %739 = icmp ult i64 %738, 4294967287
  br i1 %739, label %745, label %740

; <label>:740                                     ; preds = %707
  %741 = load i16*, i16** @g_927, align 8, !tbaa !5
  %742 = load volatile i16, i16* %741, align 2, !tbaa !10
  %743 = sext i16 %742 to i32
  %744 = icmp ne i32 %743, 0
  br label %745

; <label>:745                                     ; preds = %740, %707
  %746 = phi i1 [ true, %707 ], [ %744, %740 ]
  %747 = zext i1 %746 to i32
  %748 = load i16**, i16*** %l_1032, align 8, !tbaa !5
  %749 = icmp ne i16** %732, %748
  %750 = zext i1 %749 to i32
  %751 = getelementptr inbounds [8 x [7 x i32]], [8 x [7 x i32]]* %l_1033, i32 0, i64 7
  %752 = getelementptr inbounds [7 x i32], [7 x i32]* %751, i32 0, i64 2
  store i32 %750, i32* %752, align 4, !tbaa !1
  %753 = load i32, i32* %3, align 4, !tbaa !1
  %754 = icmp eq i32 %750, %753
  %755 = zext i1 %754 to i32
  %756 = icmp ne i32 %726, %755
  %757 = zext i1 %756 to i32
  %758 = bitcast %union.U0* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %758, i8* bitcast ({ i16, [6 x i8] }* @g_1034 to i8*), i64 8, i32 8, i1 true), !tbaa.struct !12
  %759 = load volatile i64**, i64*** @g_616, align 8, !tbaa !5
  %760 = load i64*, i64** %759, align 8, !tbaa !5
  %761 = load volatile i64, i64* %760, align 8, !tbaa !7
  %762 = icmp ult i64 %725, %761
  %763 = zext i1 %762 to i32
  %764 = sext i32 %763 to i64
  %765 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), align 2, !tbaa !10
  %766 = sext i16 %765 to i64
  %767 = call i64 @safe_mod_func_int64_t_s_s(i64 %764, i64 %766)
  %768 = trunc i64 %767 to i8
  %769 = load i8, i8* %l_1013, align 1, !tbaa !9
  %770 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %768, i8 zeroext %769)
  %771 = load volatile i16, i16* getelementptr inbounds (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>, <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121, i32 0, i32 0, i32 0), align 2, !tbaa !10
  %772 = sext i16 %771 to i32
  %773 = xor i32 %723, %772
  %774 = load i32*, i32** %2, align 8, !tbaa !5
  %775 = load i32, i32* %774, align 4, !tbaa !1
  %776 = icmp ne i32 %773, %775
  %777 = zext i1 %776 to i32
  %778 = bitcast %union.U1* %p_34 to i8*
  %779 = load i8, i8* %778, align 1, !tbaa !9
  %780 = sext i8 %779 to i32
  %781 = icmp sle i32 %777, %780
  %782 = zext i1 %781 to i32
  %783 = or i32 %721, %782
  %784 = load volatile i32**, i32*** @g_188, align 8, !tbaa !5
  %785 = load i32*, i32** %784, align 8, !tbaa !5
  store i32 %783, i32* %785, align 4, !tbaa !1
  %786 = load i32*, i32** %l_932, align 8, !tbaa !5
  %787 = load i32, i32* %786, align 4, !tbaa !1
  %788 = and i32 %787, %783
  store i32 %788, i32* %786, align 4, !tbaa !1
  %789 = bitcast i32* %l_1029 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %789) #1
  br label %790

; <label>:790                                     ; preds = %745
  %791 = load volatile i32**, i32*** @g_188, align 8, !tbaa !5
  store i32* null, i32** %791, align 8, !tbaa !5
  %792 = load i32*, i32** %l_932, align 8, !tbaa !5
  store i32 -676119529, i32* %792, align 4, !tbaa !1
  %793 = load i32*, i32** %2, align 8, !tbaa !5
  %794 = load i32, i32* %793, align 4, !tbaa !1
  %795 = load i32*, i32** %l_931, align 8, !tbaa !5
  %796 = load i32, i32* %795, align 4, !tbaa !1
  %797 = and i32 %796, %794
  store i32 %797, i32* %795, align 4, !tbaa !1
  store i32 0, i32* %7
  br label %798

; <label>:798                                     ; preds = %790, %693
  %799 = bitcast i8** %l_1015 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %799) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1013) #1
  %800 = bitcast i32* %l_1012 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %800) #1
  %801 = bitcast i64** %l_1005 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %801) #1
  %802 = bitcast i64** %l_1004 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %802) #1
  %cleanup.dest = load i32, i32* %7
  switch i32 %cleanup.dest, label %1088 [
    i32 0, label %803
  ]

; <label>:803                                     ; preds = %798
  br label %813

; <label>:804                                     ; preds = %557
  %805 = bitcast i16***** %l_1037 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %805) #1
  %806 = getelementptr inbounds [3 x [4 x i16***]], [3 x [4 x i16***]]* %l_1035, i32 0, i64 0
  %807 = getelementptr inbounds [4 x i16***], [4 x i16***]* %806, i32 0, i64 3
  store i16**** %807, i16***** %l_1037, align 8, !tbaa !5
  %808 = getelementptr inbounds [3 x [4 x i16***]], [3 x [4 x i16***]]* %l_1035, i32 0, i64 0
  %809 = getelementptr inbounds [4 x i16***], [4 x i16***]* %808, i32 0, i64 3
  %810 = load i16***, i16**** %809, align 8, !tbaa !5
  %811 = load i16****, i16***** %l_1037, align 8, !tbaa !5
  store i16*** %810, i16**** %811, align 8, !tbaa !5
  %812 = bitcast i16***** %l_1037 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %812) #1
  br label %813

; <label>:813                                     ; preds = %804, %803
  store i32 0, i32* bitcast ({ i16, [6 x i8] }* @g_269 to i32*), align 4, !tbaa !1
  br label %814

; <label>:814                                     ; preds = %823, %813
  %815 = load i32, i32* bitcast ({ i16, [6 x i8] }* @g_269 to i32*), align 4, !tbaa !1
  %816 = icmp sle i32 %815, 6
  br i1 %816, label %817, label %828

; <label>:817                                     ; preds = %814
  %818 = load volatile i32*, i32** @g_399, align 8, !tbaa !5
  %819 = load i32, i32* %818, align 4, !tbaa !1
  %820 = load i32*, i32** %l_932, align 8, !tbaa !5
  %821 = load i32, i32* %820, align 4, !tbaa !1
  %822 = and i32 %821, %819
  store i32 %822, i32* %820, align 4, !tbaa !1
  br label %823

; <label>:823                                     ; preds = %817
  %824 = load i32, i32* bitcast ({ i16, [6 x i8] }* @g_269 to i32*), align 4, !tbaa !1
  %825 = trunc i32 %824 to i16
  %826 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %825, i16 signext 8)
  %827 = sext i16 %826 to i32
  store i32 %827, i32* bitcast ({ i16, [6 x i8] }* @g_269 to i32*), align 4, !tbaa !1
  br label %814

; <label>:828                                     ; preds = %814
  %829 = load i32*, i32** %2, align 8, !tbaa !5
  %830 = load i32, i32* %829, align 4, !tbaa !1
  %831 = icmp ne i32 %830, 0
  br i1 %831, label %832, label %842

; <label>:832                                     ; preds = %828
  store i32 -26, i32* %l_993, align 4, !tbaa !1
  br label %833

; <label>:833                                     ; preds = %838, %832
  %834 = load i32, i32* %l_993, align 4, !tbaa !1
  %835 = icmp sgt i32 %834, -1
  br i1 %835, label %836, label %841

; <label>:836                                     ; preds = %833
  %837 = load i8*, i8** %l_999, align 8, !tbaa !5
  store i8* %837, i8** %1
  store i32 1, i32* %7
  br label %1088
                                                  ; No predecessors!
  %839 = load i32, i32* %l_993, align 4, !tbaa !1
  %840 = add nsw i32 %839, 1
  store i32 %840, i32* %l_993, align 4, !tbaa !1
  br label %833

; <label>:841                                     ; preds = %833
  br label %1077

; <label>:842                                     ; preds = %828
  %843 = bitcast i32* %l_1054 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %843) #1
  store i32 -8, i32* %l_1054, align 4, !tbaa !1
  %844 = bitcast i32* %l_1057 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %844) #1
  store i32 -8, i32* %l_1057, align 4, !tbaa !1
  %845 = bitcast [10 x i16*]* %l_1079 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %845) #1
  %846 = bitcast [10 x i16*]* %l_1079 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %846, i8* bitcast ([10 x i16*]* @func_30.l_1079 to i8*), i64 80, i32 16, i1 false)
  %847 = bitcast i16*** %l_1078 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %847) #1
  %848 = getelementptr inbounds [10 x i16*], [10 x i16*]* %l_1079, i32 0, i64 0
  store i16** %848, i16*** %l_1078, align 8, !tbaa !5
  %849 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %849) #1
  %850 = load i32*, i32** %2, align 8, !tbaa !5
  %851 = load i32, i32* %850, align 4, !tbaa !1
  %852 = icmp ne i32 %851, 0
  br i1 %852, label %853, label %860

; <label>:853                                     ; preds = %842
  %854 = bitcast i32**** %l_1042 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %854) #1
  %855 = getelementptr inbounds [6 x [3 x i32**]], [6 x [3 x i32**]]* %l_992, i32 0, i64 2
  %856 = getelementptr inbounds [3 x i32**], [3 x i32**]* %855, i32 0, i64 2
  store i32*** %856, i32**** %l_1042, align 8, !tbaa !5
  %857 = load i32***, i32**** %l_1042, align 8, !tbaa !5
  store i32** %2, i32*** %857, align 8, !tbaa !5
  %858 = load i8*, i8** %4, align 8, !tbaa !5
  store i8* %858, i8** %1
  store i32 1, i32* %7
  %859 = bitcast i32**** %l_1042 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %859) #1
  br label %1070

; <label>:860                                     ; preds = %842
  %861 = bitcast i32** %l_1061 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %861) #1
  store i32* @g_81, i32** %l_1061, align 8, !tbaa !5
  %862 = bitcast [5 x [2 x [1 x i32**]]]* %l_1060 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %862) #1
  %863 = getelementptr inbounds [5 x [2 x [1 x i32**]]], [5 x [2 x [1 x i32**]]]* %l_1060, i64 0, i64 0
  %864 = getelementptr inbounds [2 x [1 x i32**]], [2 x [1 x i32**]]* %863, i64 0, i64 0
  %865 = getelementptr inbounds [1 x i32**], [1 x i32**]* %864, i64 0, i64 0
  store i32** null, i32*** %865, !tbaa !5
  %866 = getelementptr inbounds [1 x i32**], [1 x i32**]* %864, i64 1
  %867 = getelementptr inbounds [1 x i32**], [1 x i32**]* %866, i64 0, i64 0
  store i32** %l_1061, i32*** %867, !tbaa !5
  %868 = getelementptr inbounds [2 x [1 x i32**]], [2 x [1 x i32**]]* %863, i64 1
  %869 = getelementptr inbounds [2 x [1 x i32**]], [2 x [1 x i32**]]* %868, i64 0, i64 0
  %870 = getelementptr inbounds [1 x i32**], [1 x i32**]* %869, i64 0, i64 0
  store i32** null, i32*** %870, !tbaa !5
  %871 = getelementptr inbounds [1 x i32**], [1 x i32**]* %869, i64 1
  %872 = getelementptr inbounds [1 x i32**], [1 x i32**]* %871, i64 0, i64 0
  store i32** %l_1061, i32*** %872, !tbaa !5
  %873 = getelementptr inbounds [2 x [1 x i32**]], [2 x [1 x i32**]]* %868, i64 1
  %874 = getelementptr inbounds [2 x [1 x i32**]], [2 x [1 x i32**]]* %873, i64 0, i64 0
  %875 = getelementptr inbounds [1 x i32**], [1 x i32**]* %874, i64 0, i64 0
  store i32** null, i32*** %875, !tbaa !5
  %876 = getelementptr inbounds [1 x i32**], [1 x i32**]* %874, i64 1
  %877 = getelementptr inbounds [1 x i32**], [1 x i32**]* %876, i64 0, i64 0
  store i32** %l_1061, i32*** %877, !tbaa !5
  %878 = getelementptr inbounds [2 x [1 x i32**]], [2 x [1 x i32**]]* %873, i64 1
  %879 = getelementptr inbounds [2 x [1 x i32**]], [2 x [1 x i32**]]* %878, i64 0, i64 0
  %880 = getelementptr inbounds [1 x i32**], [1 x i32**]* %879, i64 0, i64 0
  store i32** null, i32*** %880, !tbaa !5
  %881 = getelementptr inbounds [1 x i32**], [1 x i32**]* %879, i64 1
  %882 = getelementptr inbounds [1 x i32**], [1 x i32**]* %881, i64 0, i64 0
  store i32** %l_1061, i32*** %882, !tbaa !5
  %883 = getelementptr inbounds [2 x [1 x i32**]], [2 x [1 x i32**]]* %878, i64 1
  %884 = getelementptr inbounds [2 x [1 x i32**]], [2 x [1 x i32**]]* %883, i64 0, i64 0
  %885 = getelementptr inbounds [1 x i32**], [1 x i32**]* %884, i64 0, i64 0
  store i32** null, i32*** %885, !tbaa !5
  %886 = getelementptr inbounds [1 x i32**], [1 x i32**]* %884, i64 1
  %887 = getelementptr inbounds [1 x i32**], [1 x i32**]* %886, i64 0, i64 0
  store i32** %l_1061, i32*** %887, !tbaa !5
  %888 = bitcast i32* %l_1062 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %888) #1
  store i32 436547670, i32* %l_1062, align 4, !tbaa !1
  %889 = bitcast [10 x [10 x i8*]]* %l_1075 to i8*
  call void @llvm.lifetime.start(i64 800, i8* %889) #1
  %890 = bitcast i64* %l_1086 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %890) #1
  store i64 1615481565561729266, i64* %l_1086, align 8, !tbaa !7
  %891 = bitcast i32* %l_1088 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %891) #1
  store i32 -1202198409, i32* %l_1088, align 4, !tbaa !1
  %892 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %892) #1
  %893 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %893) #1
  %894 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %894) #1
  store i32 0, i32* %i12, align 4, !tbaa !1
  br label %895

; <label>:895                                     ; preds = %913, %860
  %896 = load i32, i32* %i12, align 4, !tbaa !1
  %897 = icmp slt i32 %896, 10
  br i1 %897, label %898, label %916

; <label>:898                                     ; preds = %895
  store i32 0, i32* %j13, align 4, !tbaa !1
  br label %899

; <label>:899                                     ; preds = %909, %898
  %900 = load i32, i32* %j13, align 4, !tbaa !1
  %901 = icmp slt i32 %900, 10
  br i1 %901, label %902, label %912

; <label>:902                                     ; preds = %899
  %903 = load i32, i32* %j13, align 4, !tbaa !1
  %904 = sext i32 %903 to i64
  %905 = load i32, i32* %i12, align 4, !tbaa !1
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds [10 x [10 x i8*]], [10 x [10 x i8*]]* %l_1075, i32 0, i64 %906
  %908 = getelementptr inbounds [10 x i8*], [10 x i8*]* %907, i32 0, i64 %904
  store i8* null, i8** %908, align 8, !tbaa !5
  br label %909

; <label>:909                                     ; preds = %902
  %910 = load i32, i32* %j13, align 4, !tbaa !1
  %911 = add nsw i32 %910, 1
  store i32 %911, i32* %j13, align 4, !tbaa !1
  br label %899

; <label>:912                                     ; preds = %899
  br label %913

; <label>:913                                     ; preds = %912
  %914 = load i32, i32* %i12, align 4, !tbaa !1
  %915 = add nsw i32 %914, 1
  store i32 %915, i32* %i12, align 4, !tbaa !1
  br label %895

; <label>:916                                     ; preds = %895
  %917 = load i64, i64* %l_1047, align 8, !tbaa !7
  %918 = trunc i64 %917 to i8
  %919 = load i8*, i8** %4, align 8, !tbaa !5
  %920 = load i8, i8* %919, align 1, !tbaa !9
  %921 = sext i8 %920 to i32
  %922 = load i8*, i8** %l_999, align 8, !tbaa !5
  %923 = load i8, i8* %922, align 1, !tbaa !9
  %924 = zext i8 %923 to i64
  %925 = or i64 %924, 244
  %926 = trunc i64 %925 to i8
  store i8 %926, i8* %922, align 1, !tbaa !9
  %927 = zext i8 %926 to i32
  %928 = and i32 %921, %927
  %929 = load i32, i32* %l_1054, align 4, !tbaa !1
  %930 = or i32 %929, %928
  store i32 %930, i32* %l_1054, align 4, !tbaa !1
  %931 = load i32, i32* %l_1057, align 4, !tbaa !1
  %932 = load i32*, i32** %l_932, align 8, !tbaa !5
  store i32 %931, i32* %932, align 4, !tbaa !1
  %933 = icmp ne i32 %931, 0
  br i1 %933, label %934, label %938

; <label>:934                                     ; preds = %916
  %935 = load i32*, i32** %l_991, align 8, !tbaa !5
  %936 = load i32, i32* %935, align 4, !tbaa !1
  %937 = icmp ne i32 %936, 0
  br label %938

; <label>:938                                     ; preds = %934, %916
  %939 = phi i1 [ false, %916 ], [ %937, %934 ]
  %940 = zext i1 %939 to i32
  %941 = trunc i32 %940 to i8
  %942 = getelementptr inbounds [5 x [2 x [1 x i32**]]], [5 x [2 x [1 x i32**]]]* %l_1060, i32 0, i64 0
  %943 = getelementptr inbounds [2 x [1 x i32**]], [2 x [1 x i32**]]* %942, i32 0, i64 0
  %944 = getelementptr inbounds [1 x i32**], [1 x i32**]* %943, i32 0, i64 0
  %945 = load i32**, i32*** %944, align 8, !tbaa !5
  %946 = icmp ne i32** %945, %l_1061
  %947 = zext i1 %946 to i32
  %948 = sext i32 %947 to i64
  store i64 %948, i64* getelementptr inbounds ([3 x %union.U0], [3 x %union.U0]* bitcast (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121 to [3 x %union.U0]*), i32 0, i32 0, i32 0), align 8, !tbaa !7
  %949 = load i32, i32* %l_1057, align 4, !tbaa !1
  %950 = sext i32 %949 to i64
  %951 = call i64 @safe_mod_func_int64_t_s_s(i64 %948, i64 %950)
  %952 = icmp sgt i64 %951, 436547670
  %953 = zext i1 %952 to i32
  %954 = load i32, i32* %l_1057, align 4, !tbaa !1
  %955 = icmp sgt i32 %953, %954
  %956 = zext i1 %955 to i32
  %957 = sext i32 %956 to i64
  %958 = icmp sle i64 1, %957
  %959 = zext i1 %958 to i32
  %960 = sext i32 %959 to i64
  %961 = or i64 %960, 65535
  %962 = bitcast %union.U1* %p_34 to i64*
  %963 = load i64, i64* %962, align 8, !tbaa !7
  %964 = icmp ule i64 %961, %963
  %965 = zext i1 %964 to i32
  %966 = trunc i32 %965 to i8
  %967 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %941, i8 zeroext %966)
  %968 = zext i8 %967 to i64
  %969 = or i64 1, %968
  %970 = load i32*, i32** %l_991, align 8, !tbaa !5
  %971 = load i32, i32* %970, align 4, !tbaa !1
  %972 = trunc i32 %971 to i8
  %973 = bitcast %union.U1* %p_34 to i8*
  store i8 %972, i8* %973, align 1, !tbaa !9
  %974 = sext i8 %972 to i32
  %975 = load i32*, i32** %l_931, align 8, !tbaa !5
  %976 = load i32, i32* %975, align 4, !tbaa !1
  %977 = xor i32 %976, %974
  store i32 %977, i32* %975, align 4, !tbaa !1
  %978 = icmp slt i32 %930, %977
  %979 = zext i1 %978 to i32
  %980 = trunc i32 %979 to i8
  %981 = load i8*, i8** %4, align 8, !tbaa !5
  %982 = load i8, i8* %981, align 1, !tbaa !9
  %983 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %980, i8 signext %982)
  %984 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %983, i8 signext 16)
  %985 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %984, i8 signext 103)
  %986 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %918, i8 signext %985)
  %987 = sext i8 %986 to i16
  %988 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %987, i32 8)
  %989 = zext i16 %988 to i32
  %990 = load i32*, i32** %l_991, align 8, !tbaa !5
  %991 = load i32, i32* %990, align 4, !tbaa !1
  %992 = icmp ne i32 %989, %991
  %993 = zext i1 %992 to i32
  %994 = getelementptr inbounds [8 x [6 x i32]], [8 x [6 x i32]]* %l_1011, i32 0, i64 1
  %995 = getelementptr inbounds [6 x i32], [6 x i32]* %994, i32 0, i64 1
  store i32 %993, i32* %995, align 4, !tbaa !1
  %996 = load i32*, i32** %2, align 8, !tbaa !5
  store i32* %996, i32** %2, align 8, !tbaa !5
  %997 = load volatile %union.U2**, %union.U2*** @g_976, align 8, !tbaa !5
  %998 = load %union.U2*, %union.U2** %997, align 8, !tbaa !5
  %999 = load i32*, i32** %2, align 8, !tbaa !5
  %1000 = load i32, i32* %999, align 4, !tbaa !1
  %1001 = call i32 @safe_sub_func_int32_t_s_s(i32 %1000, i32 3)
  %1002 = load i32*, i32** %l_933, align 8, !tbaa !5
  store i32 %1001, i32* %1002, align 4, !tbaa !1
  %1003 = load i16, i16* getelementptr inbounds (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>, <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121, i32 0, i32 0, i32 0), align 2, !tbaa !10
  %1004 = sext i16 %1003 to i64
  %1005 = call i64 @safe_add_func_int64_t_s_s(i64 1, i64 %1004)
  %1006 = trunc i64 %1005 to i16
  %1007 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %1006, i32 3)
  %1008 = trunc i16 %1007 to i8
  %1009 = load i8*, i8** %4, align 8, !tbaa !5
  %1010 = load i8, i8* %1009, align 1, !tbaa !9
  %1011 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %1008, i8 signext %1010)
  %1012 = sext i8 %1011 to i32
  %1013 = load i32*, i32** %2, align 8, !tbaa !5
  %1014 = load i32, i32* %1013, align 4, !tbaa !1
  %1015 = icmp sle i32 %1012, %1014
  %1016 = zext i1 %1015 to i32
  %1017 = call i32 @safe_add_func_int32_t_s_s(i32 %1016, i32 -7)
  %1018 = trunc i32 %1017 to i8
  %1019 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1018, i8 signext 86)
  %1020 = load i32, i32* %l_1088, align 4, !tbaa !1
  %1021 = load i32*, i32** %l_931, align 8, !tbaa !5
  %1022 = load i32, i32* %1021, align 4, !tbaa !1
  %1023 = and i32 %1022, %1020
  store i32 %1023, i32* %1021, align 4, !tbaa !1
  %1024 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1024) #1
  %1025 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1025) #1
  %1026 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1026) #1
  %1027 = bitcast i32* %l_1088 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1027) #1
  %1028 = bitcast i64* %l_1086 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1028) #1
  %1029 = bitcast [10 x [10 x i8*]]* %l_1075 to i8*
  call void @llvm.lifetime.end(i64 800, i8* %1029) #1
  %1030 = bitcast i32* %l_1062 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1030) #1
  %1031 = bitcast [5 x [2 x [1 x i32**]]]* %l_1060 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1031) #1
  %1032 = bitcast i32** %l_1061 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1032) #1
  br label %1033

; <label>:1033                                    ; preds = %938
  store i32 0, i32* %5, align 4, !tbaa !1
  br label %1034

; <label>:1034                                    ; preds = %1066, %1033
  %1035 = load i32, i32* %5, align 4, !tbaa !1
  %1036 = icmp sle i32 %1035, 5
  br i1 %1036, label %1037, label %1069

; <label>:1037                                    ; preds = %1034
  %1038 = bitcast i32* %l_1090 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1038) #1
  store i32 1149711526, i32* %l_1090, align 4, !tbaa !1
  %1039 = bitcast [7 x i32*****]* %l_1094 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1039) #1
  %1040 = getelementptr inbounds [7 x i32*****], [7 x i32*****]* %l_1094, i64 0, i64 0
  store i32***** %l_1093, i32****** %1040, !tbaa !5
  %1041 = getelementptr inbounds i32*****, i32****** %1040, i64 1
  store i32***** %l_1093, i32****** %1041, !tbaa !5
  %1042 = getelementptr inbounds i32*****, i32****** %1041, i64 1
  store i32***** %l_1093, i32****** %1042, !tbaa !5
  %1043 = getelementptr inbounds i32*****, i32****** %1042, i64 1
  store i32***** %l_1093, i32****** %1043, !tbaa !5
  %1044 = getelementptr inbounds i32*****, i32****** %1043, i64 1
  store i32***** %l_1093, i32****** %1044, !tbaa !5
  %1045 = getelementptr inbounds i32*****, i32****** %1044, i64 1
  store i32***** %l_1093, i32****** %1045, !tbaa !5
  %1046 = getelementptr inbounds i32*****, i32****** %1045, i64 1
  store i32***** %l_1093, i32****** %1046, !tbaa !5
  %1047 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1047) #1
  %1048 = load i32, i32* %l_1090, align 4, !tbaa !1
  %1049 = add i32 %1048, -1
  store i32 %1049, i32* %l_1090, align 4, !tbaa !1
  %1050 = load i8*, i8** %4, align 8, !tbaa !5
  %1051 = load i8, i8* %1050, align 1, !tbaa !9
  %1052 = sext i8 %1051 to i32
  %1053 = load i32****, i32***** %l_1093, align 8, !tbaa !5
  store i32**** @g_830, i32***** @g_1095, align 8, !tbaa !5
  %1054 = icmp ne i32**** %1053, @g_830
  %1055 = zext i1 %1054 to i32
  %1056 = sext i32 %1055 to i64
  %1057 = icmp eq i64 %1056, 5533614900674094621
  %1058 = zext i1 %1057 to i32
  %1059 = load i32, i32* %l_1054, align 4, !tbaa !1
  %1060 = icmp slt i32 %1052, %1059
  %1061 = zext i1 %1060 to i32
  %1062 = load i32*, i32** %l_932, align 8, !tbaa !5
  store i32 %1061, i32* %1062, align 4, !tbaa !1
  %1063 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1063) #1
  %1064 = bitcast [7 x i32*****]* %l_1094 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %1064) #1
  %1065 = bitcast i32* %l_1090 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1065) #1
  br label %1066

; <label>:1066                                    ; preds = %1037
  %1067 = load i32, i32* %5, align 4, !tbaa !1
  %1068 = add nsw i32 %1067, 1
  store i32 %1068, i32* %5, align 4, !tbaa !1
  br label %1034

; <label>:1069                                    ; preds = %1034
  store i32 0, i32* %7
  br label %1070

; <label>:1070                                    ; preds = %1069, %853
  %1071 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1071) #1
  %1072 = bitcast i16*** %l_1078 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1072) #1
  %1073 = bitcast [10 x i16*]* %l_1079 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1073) #1
  %1074 = bitcast i32* %l_1057 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1074) #1
  %1075 = bitcast i32* %l_1054 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1075) #1
  %cleanup.dest.16 = load i32, i32* %7
  switch i32 %cleanup.dest.16, label %1088 [
    i32 0, label %1076
  ]

; <label>:1076                                    ; preds = %1070
  br label %1077

; <label>:1077                                    ; preds = %1076, %841
  store i32 0, i32* bitcast ({ i16, [6 x i8] }* @g_269 to i32*), align 4, !tbaa !1
  br label %1078

; <label>:1078                                    ; preds = %1082, %1077
  %1079 = load i32, i32* bitcast ({ i16, [6 x i8] }* @g_269 to i32*), align 4, !tbaa !1
  %1080 = icmp sgt i32 %1079, -2
  br i1 %1080, label %1081, label %1087

; <label>:1081                                    ; preds = %1078
  store volatile i32* null, i32** @g_1098, align 8, !tbaa !5
  br label %1082

; <label>:1082                                    ; preds = %1081
  %1083 = load i32, i32* bitcast ({ i16, [6 x i8] }* @g_269 to i32*), align 4, !tbaa !1
  %1084 = sext i32 %1083 to i64
  %1085 = call i64 @safe_sub_func_uint64_t_u_u(i64 %1084, i64 1)
  %1086 = trunc i64 %1085 to i32
  store i32 %1086, i32* bitcast ({ i16, [6 x i8] }* @g_269 to i32*), align 4, !tbaa !1
  br label %1078

; <label>:1087                                    ; preds = %1078
  store i32 0, i32* %7
  br label %1088

; <label>:1088                                    ; preds = %1087, %1070, %836, %798
  %1089 = bitcast i32* %j10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1089) #1
  %1090 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1090) #1
  %1091 = bitcast i64* %l_1047 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1091) #1
  %1092 = bitcast [8 x [7 x i32]]* %l_1033 to i8*
  call void @llvm.lifetime.end(i64 224, i8* %1092) #1
  %1093 = bitcast [6 x i16**]* %l_1031 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %1093) #1
  %1094 = bitcast i32* %l_1014 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1094) #1
  %1095 = bitcast [8 x [6 x i32]]* %l_1011 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %1095) #1
  %1096 = bitcast i8** %l_999 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1096) #1
  %cleanup.dest.17 = load i32, i32* %7
  switch i32 %cleanup.dest.17, label %1558 [
    i32 0, label %1097
  ]

; <label>:1097                                    ; preds = %1088
  br label %1557

; <label>:1098                                    ; preds = %549
  %1099 = bitcast i64* %l_1110 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1099) #1
  store i64 -395229135138059050, i64* %l_1110, align 8, !tbaa !7
  %1100 = bitcast [2 x [7 x [4 x i16*]]]* %l_1116 to i8*
  call void @llvm.lifetime.start(i64 448, i8* %1100) #1
  %1101 = getelementptr inbounds [2 x [7 x [4 x i16*]]], [2 x [7 x [4 x i16*]]]* %l_1116, i64 0, i64 0
  %1102 = getelementptr inbounds [7 x [4 x i16*]], [7 x [4 x i16*]]* %1101, i64 0, i64 0
  %1103 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1102, i64 0, i64 0
  store i16* @g_598, i16** %1103, !tbaa !5
  %1104 = getelementptr inbounds i16*, i16** %1103, i64 1
  store i16* %l_996, i16** %1104, !tbaa !5
  %1105 = getelementptr inbounds i16*, i16** %1104, i64 1
  store i16* @g_598, i16** %1105, !tbaa !5
  %1106 = getelementptr inbounds i16*, i16** %1105, i64 1
  store i16* @g_598, i16** %1106, !tbaa !5
  %1107 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1102, i64 1
  %1108 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1107, i64 0, i64 0
  store i16* %l_996, i16** %1108, !tbaa !5
  %1109 = getelementptr inbounds i16*, i16** %1108, i64 1
  store i16* @g_470, i16** %1109, !tbaa !5
  %1110 = getelementptr inbounds i16*, i16** %1109, i64 1
  store i16* null, i16** %1110, !tbaa !5
  %1111 = getelementptr inbounds i16*, i16** %1110, i64 1
  store i16* null, i16** %1111, !tbaa !5
  %1112 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1107, i64 1
  %1113 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1112, i64 0, i64 0
  store i16* %l_996, i16** %1113, !tbaa !5
  %1114 = getelementptr inbounds i16*, i16** %1113, i64 1
  store i16* @g_470, i16** %1114, !tbaa !5
  %1115 = getelementptr inbounds i16*, i16** %1114, i64 1
  store i16* null, i16** %1115, !tbaa !5
  %1116 = getelementptr inbounds i16*, i16** %1115, i64 1
  store i16* @g_470, i16** %1116, !tbaa !5
  %1117 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1112, i64 1
  %1118 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1117, i64 0, i64 0
  store i16* @g_598, i16** %1118, !tbaa !5
  %1119 = getelementptr inbounds i16*, i16** %1118, i64 1
  store i16* %l_996, i16** %1119, !tbaa !5
  %1120 = getelementptr inbounds i16*, i16** %1119, i64 1
  store i16* null, i16** %1120, !tbaa !5
  %1121 = getelementptr inbounds i16*, i16** %1120, i64 1
  store i16* null, i16** %1121, !tbaa !5
  %1122 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1117, i64 1
  %1123 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1122, i64 0, i64 0
  store i16* %l_996, i16** %1123, !tbaa !5
  %1124 = getelementptr inbounds i16*, i16** %1123, i64 1
  store i16* %l_996, i16** %1124, !tbaa !5
  %1125 = getelementptr inbounds i16*, i16** %1124, i64 1
  store i16* null, i16** %1125, !tbaa !5
  %1126 = getelementptr inbounds i16*, i16** %1125, i64 1
  store i16* @g_470, i16** %1126, !tbaa !5
  %1127 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1122, i64 1
  %1128 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1127, i64 0, i64 0
  store i16* %l_996, i16** %1128, !tbaa !5
  %1129 = getelementptr inbounds i16*, i16** %1128, i64 1
  store i16* @g_598, i16** %1129, !tbaa !5
  %1130 = getelementptr inbounds i16*, i16** %1129, i64 1
  store i16* @g_598, i16** %1130, !tbaa !5
  %1131 = getelementptr inbounds i16*, i16** %1130, i64 1
  store i16* %l_996, i16** %1131, !tbaa !5
  %1132 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1127, i64 1
  %1133 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1132, i64 0, i64 0
  store i16* @g_598, i16** %1133, !tbaa !5
  %1134 = getelementptr inbounds i16*, i16** %1133, i64 1
  store i16* @g_598, i16** %1134, !tbaa !5
  %1135 = getelementptr inbounds i16*, i16** %1134, i64 1
  store i16* null, i16** %1135, !tbaa !5
  %1136 = getelementptr inbounds i16*, i16** %1135, i64 1
  store i16* null, i16** %1136, !tbaa !5
  %1137 = getelementptr inbounds [7 x [4 x i16*]], [7 x [4 x i16*]]* %1101, i64 1
  %1138 = getelementptr inbounds [7 x [4 x i16*]], [7 x [4 x i16*]]* %1137, i64 0, i64 0
  %1139 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1138, i64 0, i64 0
  store i16* @g_598, i16** %1139, !tbaa !5
  %1140 = getelementptr inbounds i16*, i16** %1139, i64 1
  store i16* @g_470, i16** %1140, !tbaa !5
  %1141 = getelementptr inbounds i16*, i16** %1140, i64 1
  store i16* @g_470, i16** %1141, !tbaa !5
  %1142 = getelementptr inbounds i16*, i16** %1141, i64 1
  store i16* null, i16** %1142, !tbaa !5
  %1143 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1138, i64 1
  %1144 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1143, i64 0, i64 0
  store i16* @g_598, i16** %1144, !tbaa !5
  %1145 = getelementptr inbounds i16*, i16** %1144, i64 1
  store i16* null, i16** %1145, !tbaa !5
  %1146 = getelementptr inbounds i16*, i16** %1145, i64 1
  store i16* @g_470, i16** %1146, !tbaa !5
  %1147 = getelementptr inbounds i16*, i16** %1146, i64 1
  store i16* null, i16** %1147, !tbaa !5
  %1148 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1143, i64 1
  %1149 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1148, i64 0, i64 0
  store i16* null, i16** %1149, !tbaa !5
  %1150 = getelementptr inbounds i16*, i16** %1149, i64 1
  store i16* @g_470, i16** %1150, !tbaa !5
  %1151 = getelementptr inbounds i16*, i16** %1150, i64 1
  store i16* %l_996, i16** %1151, !tbaa !5
  %1152 = getelementptr inbounds i16*, i16** %1151, i64 1
  store i16* null, i16** %1152, !tbaa !5
  %1153 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1148, i64 1
  %1154 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1153, i64 0, i64 0
  store i16* @g_598, i16** %1154, !tbaa !5
  %1155 = getelementptr inbounds i16*, i16** %1154, i64 1
  store i16* @g_598, i16** %1155, !tbaa !5
  %1156 = getelementptr inbounds i16*, i16** %1155, i64 1
  store i16* %l_996, i16** %1156, !tbaa !5
  %1157 = getelementptr inbounds i16*, i16** %1156, i64 1
  store i16* @g_598, i16** %1157, !tbaa !5
  %1158 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1153, i64 1
  %1159 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1158, i64 0, i64 0
  store i16* @g_470, i16** %1159, !tbaa !5
  %1160 = getelementptr inbounds i16*, i16** %1159, i64 1
  store i16* @g_598, i16** %1160, !tbaa !5
  %1161 = getelementptr inbounds i16*, i16** %1160, i64 1
  store i16* @g_470, i16** %1161, !tbaa !5
  %1162 = getelementptr inbounds i16*, i16** %1161, i64 1
  store i16* @g_470, i16** %1162, !tbaa !5
  %1163 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1158, i64 1
  %1164 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1163, i64 0, i64 0
  store i16* %l_996, i16** %1164, !tbaa !5
  %1165 = getelementptr inbounds i16*, i16** %1164, i64 1
  store i16* @g_598, i16** %1165, !tbaa !5
  %1166 = getelementptr inbounds i16*, i16** %1165, i64 1
  store i16* @g_598, i16** %1166, !tbaa !5
  %1167 = getelementptr inbounds i16*, i16** %1166, i64 1
  store i16* %l_996, i16** %1167, !tbaa !5
  %1168 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1163, i64 1
  %1169 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1168, i64 0, i64 0
  store i16* @g_598, i16** %1169, !tbaa !5
  %1170 = getelementptr inbounds i16*, i16** %1169, i64 1
  store i16* @g_598, i16** %1170, !tbaa !5
  %1171 = getelementptr inbounds i16*, i16** %1170, i64 1
  store i16* %l_996, i16** %1171, !tbaa !5
  %1172 = getelementptr inbounds i16*, i16** %1171, i64 1
  store i16* @g_598, i16** %1172, !tbaa !5
  %1173 = bitcast i32* %l_1124 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1173) #1
  store i32 -1, i32* %l_1124, align 4, !tbaa !1
  %1174 = bitcast i32* %l_1125 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1174) #1
  store i32 0, i32* %l_1125, align 4, !tbaa !1
  %1175 = bitcast i32* %l_1127 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1175) #1
  store i32 -9, i32* %l_1127, align 4, !tbaa !1
  %1176 = bitcast i32* %l_1128 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1176) #1
  store i32 0, i32* %l_1128, align 4, !tbaa !1
  %1177 = bitcast i32* %l_1131 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1177) #1
  store i32 1027174346, i32* %l_1131, align 4, !tbaa !1
  %1178 = bitcast i16* %l_1132 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1178) #1
  store i16 -31688, i16* %l_1132, align 2, !tbaa !10
  %1179 = bitcast i32** %l_1164 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1179) #1
  store i32* bitcast ({ i16, [6 x i8] }* @g_1115 to i32*), i32** %l_1164, align 8, !tbaa !5
  %1180 = bitcast i32** %l_1165 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1180) #1
  store i32* bitcast (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121 to i32*), i32** %l_1165, align 8, !tbaa !5
  %1181 = bitcast i32** %l_1169 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1181) #1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_352, i32 0, i64 0), i32** %l_1169, align 8, !tbaa !5
  %1182 = bitcast i32*** %l_1168 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1182) #1
  store i32** %l_1169, i32*** %l_1168, align 8, !tbaa !5
  %1183 = bitcast [7 x i32***]* %l_1167 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1183) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_1177) #1
  store i8 -119, i8* %l_1177, align 1, !tbaa !9
  %1184 = bitcast [6 x [1 x [3 x i8*]]]* %l_1187 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1184) #1
  %1185 = bitcast [1 x %union.U0**]* %l_1190 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1185) #1
  %1186 = bitcast i32* %l_1192 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1186) #1
  store i32 871659200, i32* %l_1192, align 4, !tbaa !1
  %1187 = bitcast i32** %l_1194 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1187) #1
  store i32* %l_994, i32** %l_1194, align 8, !tbaa !5
  %1188 = bitcast i32** %l_1195 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1188) #1
  store i32* %l_995, i32** %l_1195, align 8, !tbaa !5
  %1189 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1189) #1
  %1190 = bitcast i32* %j19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1190) #1
  %1191 = bitcast i32* %k20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1191) #1
  store i32 0, i32* %i18, align 4, !tbaa !1
  br label %1192

; <label>:1192                                    ; preds = %1199, %1098
  %1193 = load i32, i32* %i18, align 4, !tbaa !1
  %1194 = icmp slt i32 %1193, 7
  br i1 %1194, label %1195, label %1202

; <label>:1195                                    ; preds = %1192
  %1196 = load i32, i32* %i18, align 4, !tbaa !1
  %1197 = sext i32 %1196 to i64
  %1198 = getelementptr inbounds [7 x i32***], [7 x i32***]* %l_1167, i32 0, i64 %1197
  store i32*** %l_1168, i32**** %1198, align 8, !tbaa !5
  br label %1199

; <label>:1199                                    ; preds = %1195
  %1200 = load i32, i32* %i18, align 4, !tbaa !1
  %1201 = add nsw i32 %1200, 1
  store i32 %1201, i32* %i18, align 4, !tbaa !1
  br label %1192

; <label>:1202                                    ; preds = %1192
  store i32 0, i32* %i18, align 4, !tbaa !1
  br label %1203

; <label>:1203                                    ; preds = %1232, %1202
  %1204 = load i32, i32* %i18, align 4, !tbaa !1
  %1205 = icmp slt i32 %1204, 6
  br i1 %1205, label %1206, label %1235

; <label>:1206                                    ; preds = %1203
  store i32 0, i32* %j19, align 4, !tbaa !1
  br label %1207

; <label>:1207                                    ; preds = %1228, %1206
  %1208 = load i32, i32* %j19, align 4, !tbaa !1
  %1209 = icmp slt i32 %1208, 1
  br i1 %1209, label %1210, label %1231

; <label>:1210                                    ; preds = %1207
  store i32 0, i32* %k20, align 4, !tbaa !1
  br label %1211

; <label>:1211                                    ; preds = %1224, %1210
  %1212 = load i32, i32* %k20, align 4, !tbaa !1
  %1213 = icmp slt i32 %1212, 3
  br i1 %1213, label %1214, label %1227

; <label>:1214                                    ; preds = %1211
  %1215 = load i32, i32* %k20, align 4, !tbaa !1
  %1216 = sext i32 %1215 to i64
  %1217 = load i32, i32* %j19, align 4, !tbaa !1
  %1218 = sext i32 %1217 to i64
  %1219 = load i32, i32* %i18, align 4, !tbaa !1
  %1220 = sext i32 %1219 to i64
  %1221 = getelementptr inbounds [6 x [1 x [3 x i8*]]], [6 x [1 x [3 x i8*]]]* %l_1187, i32 0, i64 %1220
  %1222 = getelementptr inbounds [1 x [3 x i8*]], [1 x [3 x i8*]]* %1221, i32 0, i64 %1218
  %1223 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1222, i32 0, i64 %1216
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i64 4), i8** %1223, align 8, !tbaa !5
  br label %1224

; <label>:1224                                    ; preds = %1214
  %1225 = load i32, i32* %k20, align 4, !tbaa !1
  %1226 = add nsw i32 %1225, 1
  store i32 %1226, i32* %k20, align 4, !tbaa !1
  br label %1211

; <label>:1227                                    ; preds = %1211
  br label %1228

; <label>:1228                                    ; preds = %1227
  %1229 = load i32, i32* %j19, align 4, !tbaa !1
  %1230 = add nsw i32 %1229, 1
  store i32 %1230, i32* %j19, align 4, !tbaa !1
  br label %1207

; <label>:1231                                    ; preds = %1207
  br label %1232

; <label>:1232                                    ; preds = %1231
  %1233 = load i32, i32* %i18, align 4, !tbaa !1
  %1234 = add nsw i32 %1233, 1
  store i32 %1234, i32* %i18, align 4, !tbaa !1
  br label %1203

; <label>:1235                                    ; preds = %1203
  store i32 0, i32* %i18, align 4, !tbaa !1
  br label %1236

; <label>:1236                                    ; preds = %1243, %1235
  %1237 = load i32, i32* %i18, align 4, !tbaa !1
  %1238 = icmp slt i32 %1237, 1
  br i1 %1238, label %1239, label %1246

; <label>:1239                                    ; preds = %1236
  %1240 = load i32, i32* %i18, align 4, !tbaa !1
  %1241 = sext i32 %1240 to i64
  %1242 = getelementptr inbounds [1 x %union.U0**], [1 x %union.U0**]* %l_1190, i32 0, i64 %1241
  store %union.U0** %l_988, %union.U0*** %1242, align 8, !tbaa !5
  br label %1243

; <label>:1243                                    ; preds = %1239
  %1244 = load i32, i32* %i18, align 4, !tbaa !1
  %1245 = add nsw i32 %1244, 1
  store i32 %1245, i32* %i18, align 4, !tbaa !1
  br label %1236

; <label>:1246                                    ; preds = %1236
  %1247 = getelementptr inbounds [5 x [4 x i32**]], [5 x [4 x i32**]]* %l_950, i32 0, i64 1
  %1248 = getelementptr inbounds [4 x i32**], [4 x i32**]* %1247, i32 0, i64 0
  %1249 = load i32**, i32*** %1248, align 8, !tbaa !5
  %1250 = icmp ne i32** null, %1249
  br i1 %1250, label %1251, label %1411

; <label>:1251                                    ; preds = %1246
  %1252 = bitcast %union.U1* %l_1114 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1252) #1
  %1253 = bitcast %union.U1* %l_1114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1253, i8* bitcast (%union.U1* @func_30.l_1114 to i8*), i64 8, i32 8, i1 false)
  %1254 = bitcast i32** %l_1120 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1254) #1
  store i32* %l_994, i32** %l_1120, align 8, !tbaa !5
  %1255 = bitcast i32* %l_1121 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1255) #1
  store i32 8, i32* %l_1121, align 4, !tbaa !1
  %1256 = bitcast [5 x [4 x i32]]* %l_1123 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1256) #1
  %1257 = bitcast [5 x [4 x i32]]* %l_1123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1257, i8* bitcast ([5 x [4 x i32]]* @func_30.l_1123 to i8*), i64 80, i32 16, i1 false)
  %1258 = bitcast i32* %i21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1258) #1
  %1259 = bitcast i32* %j22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1259) #1
  store i64 9, i64* @g_571, align 8, !tbaa !7
  br label %1260

; <label>:1260                                    ; preds = %1396, %1251
  %1261 = load i64, i64* @g_571, align 8, !tbaa !7
  %1262 = icmp sle i64 %1261, -12
  br i1 %1262, label %1263, label %1399

; <label>:1263                                    ; preds = %1260
  %1264 = load volatile i32*, i32** @g_399, align 8, !tbaa !5
  %1265 = load i32, i32* %1264, align 4, !tbaa !1
  %1266 = icmp ne i32 %1265, 0
  br i1 %1266, label %1267, label %1268

; <label>:1267                                    ; preds = %1263
  br label %1399

; <label>:1268                                    ; preds = %1263
  %1269 = load i32, i32* %5, align 4, !tbaa !1
  %1270 = load i16, i16* @g_1105, align 2, !tbaa !10
  %1271 = sext i16 %1270 to i32
  %1272 = load i32, i32* %3, align 4, !tbaa !1
  %1273 = sext i32 %1272 to i64
  %1274 = getelementptr inbounds [2 x [7 x [4 x i16*]]], [2 x [7 x [4 x i16*]]]* %l_1116, i32 0, i64 1
  %1275 = getelementptr inbounds [7 x [4 x i16*]], [7 x [4 x i16*]]* %1274, i32 0, i64 5
  %1276 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1275, i32 0, i64 1
  %1277 = load i16*, i16** %1276, align 8, !tbaa !5
  %1278 = getelementptr inbounds [2 x [7 x [4 x i16*]]], [2 x [7 x [4 x i16*]]]* %l_1116, i32 0, i64 1
  %1279 = getelementptr inbounds [7 x [4 x i16*]], [7 x [4 x i16*]]* %1278, i32 0, i64 5
  %1280 = getelementptr inbounds [4 x i16*], [4 x i16*]* %1279, i32 0, i64 1
  %1281 = load i16*, i16** %1280, align 8, !tbaa !5
  %1282 = icmp ne i16* %1277, %1281
  %1283 = zext i1 %1282 to i32
  %1284 = xor i32 %1283, -1
  %1285 = sext i32 %1284 to i64
  %1286 = bitcast %union.U1* %p_34 to i8*
  %1287 = load i8, i8* %1286, align 1, !tbaa !9
  %1288 = sext i8 %1287 to i64
  %1289 = icmp sgt i64 %1288, 6576
  %1290 = zext i1 %1289 to i32
  %1291 = trunc i32 %1290 to i8
  %1292 = load i32, i32* @g_572, align 4, !tbaa !1
  %1293 = trunc i32 %1292 to i8
  %1294 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %1291, i8 signext %1293)
  %1295 = sext i8 %1294 to i64
  %1296 = bitcast %union.U1* %p_34 to i64*
  %1297 = load i64, i64* %1296, align 8, !tbaa !7
  %1298 = and i64 %1295, %1297
  %1299 = icmp sgt i64 %1285, %1298
  %1300 = zext i1 %1299 to i32
  %1301 = sext i32 %1300 to i64
  %1302 = icmp sgt i64 %1301, 34903
  %1303 = zext i1 %1302 to i32
  %1304 = load i32, i32* %5, align 4, !tbaa !1
  %1305 = icmp ne i32 %1303, %1304
  %1306 = zext i1 %1305 to i32
  %1307 = load i32*, i32** %l_933, align 8, !tbaa !5
  %1308 = icmp eq i32* %1307, null
  %1309 = zext i1 %1308 to i32
  %1310 = trunc i32 %1309 to i8
  %1311 = load i8*, i8** %4, align 8, !tbaa !5
  %1312 = load i8, i8* %1311, align 1, !tbaa !9
  %1313 = sext i8 %1312 to i32
  %1314 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %1310, i32 %1313)
  %1315 = sext i8 %1314 to i32
  %1316 = bitcast %union.U1* %l_1114 to i8*
  %1317 = load i8, i8* %1316, align 1, !tbaa !9
  %1318 = sext i8 %1317 to i32
  %1319 = icmp slt i32 %1315, %1318
  %1320 = zext i1 %1319 to i32
  %1321 = load i32*, i32** %l_991, align 8, !tbaa !5
  %1322 = load i32, i32* %1321, align 4, !tbaa !1
  %1323 = xor i32 %1320, %1322
  %1324 = sext i32 %1323 to i64
  %1325 = and i64 -395229135138059050, %1324
  %1326 = icmp ne i64 %1325, 0
  br i1 %1326, label %1330, label %1327

; <label>:1327                                    ; preds = %1268
  %1328 = load i32, i32* %5, align 4, !tbaa !1
  %1329 = icmp ne i32 %1328, 0
  br label %1330

; <label>:1330                                    ; preds = %1327, %1268
  %1331 = phi i1 [ true, %1268 ], [ %1329, %1327 ]
  %1332 = zext i1 %1331 to i32
  %1333 = sext i32 %1332 to i64
  %1334 = icmp ugt i64 %1333, 0
  %1335 = zext i1 %1334 to i32
  %1336 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_1010, i32 0, i64 4), align 4, !tbaa !1
  %1337 = icmp sge i32 %1335, %1336
  %1338 = zext i1 %1337 to i32
  %1339 = trunc i32 %1338 to i8
  %1340 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %1339, i8 zeroext 107)
  %1341 = zext i8 %1340 to i16
  %1342 = bitcast %union.U1* %p_34 to i64*
  %1343 = load i64, i64* %1342, align 8, !tbaa !7
  %1344 = trunc i64 %1343 to i32
  %1345 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %1341, i32 %1344)
  %1346 = sext i16 %1345 to i64
  %1347 = or i64 %1346, -395229135138059050
  %1348 = icmp ne i64 %1347, 0
  br i1 %1348, label %1349, label %1353

; <label>:1349                                    ; preds = %1330
  %1350 = load i32*, i32** %2, align 8, !tbaa !5
  %1351 = load i32, i32* %1350, align 4, !tbaa !1
  %1352 = icmp ne i32 %1351, 0
  br label %1353

; <label>:1353                                    ; preds = %1349, %1330
  %1354 = phi i1 [ false, %1330 ], [ %1352, %1349 ]
  %1355 = zext i1 %1354 to i32
  %1356 = load i32*, i32** %2, align 8, !tbaa !5
  %1357 = load i32, i32* %1356, align 4, !tbaa !1
  %1358 = xor i32 %1355, %1357
  %1359 = icmp eq i32 %1358, 139210201
  %1360 = zext i1 %1359 to i32
  %1361 = sext i32 %1360 to i64
  %1362 = xor i64 %1361, -395229135138059050
  %1363 = or i64 %1273, %1362
  %1364 = icmp eq i64 %1363, -1
  %1365 = zext i1 %1364 to i32
  %1366 = icmp sle i32 %1271, %1365
  %1367 = zext i1 %1366 to i32
  %1368 = or i32 %1269, %1367
  %1369 = trunc i32 %1368 to i8
  %1370 = load i8, i8* @g_392, align 1, !tbaa !9
  %1371 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %1369, i8 signext %1370)
  %1372 = sext i8 %1371 to i64
  %1373 = icmp slt i64 %1372, 201
  %1374 = zext i1 %1373 to i32
  %1375 = trunc i32 %1374 to i8
  %1376 = load i32, i32* @g_572, align 4, !tbaa !1
  %1377 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %1375, i32 %1376)
  %1378 = sext i8 %1377 to i32
  %1379 = load i32*, i32** %l_931, align 8, !tbaa !5
  store i32 %1378, i32* %1379, align 4, !tbaa !1
  %1380 = load i32*, i32** %l_932, align 8, !tbaa !5
  %1381 = load i32, i32* %1380, align 4, !tbaa !1
  %1382 = xor i32 %1381, %1378
  store i32 %1382, i32* %1380, align 4, !tbaa !1
  %1383 = load i32*, i32** %l_1120, align 8, !tbaa !5
  %1384 = load i32*, i32** %2, align 8, !tbaa !5
  %1385 = icmp ne i32* %1383, %1384
  br i1 %1385, label %1386, label %1390

; <label>:1386                                    ; preds = %1353
  %1387 = bitcast %union.U1* %p_34 to i64*
  %1388 = load i64, i64* %1387, align 8, !tbaa !7
  %1389 = icmp ne i64 %1388, 0
  br label %1390

; <label>:1390                                    ; preds = %1386, %1353
  %1391 = phi i1 [ false, %1353 ], [ %1389, %1386 ]
  %1392 = zext i1 %1391 to i32
  %1393 = load i32*, i32** %l_932, align 8, !tbaa !5
  %1394 = load i32, i32* %1393, align 4, !tbaa !1
  %1395 = and i32 %1394, %1392
  store i32 %1395, i32* %1393, align 4, !tbaa !1
  br label %1396

; <label>:1396                                    ; preds = %1390
  %1397 = load i64, i64* @g_571, align 8, !tbaa !7
  %1398 = add nsw i64 %1397, -1
  store i64 %1398, i64* @g_571, align 8, !tbaa !7
  br label %1260

; <label>:1399                                    ; preds = %1267, %1260
  %1400 = load i64***, i64**** @g_717, align 8, !tbaa !5
  %1401 = load volatile i64**, i64*** %1400, align 8, !tbaa !5
  %1402 = load i64***, i64**** @g_717, align 8, !tbaa !5
  store volatile i64** %1401, i64*** %1402, align 8, !tbaa !5
  %1403 = load i16, i16* %l_1132, align 2, !tbaa !10
  %1404 = add i16 %1403, 1
  store i16 %1404, i16* %l_1132, align 2, !tbaa !10
  %1405 = bitcast i32* %j22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1405) #1
  %1406 = bitcast i32* %i21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1406) #1
  %1407 = bitcast [5 x [4 x i32]]* %l_1123 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1407) #1
  %1408 = bitcast i32* %l_1121 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1408) #1
  %1409 = bitcast i32** %l_1120 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1409) #1
  %1410 = bitcast %union.U1* %l_1114 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1410) #1
  br label %1457

; <label>:1411                                    ; preds = %1246
  %1412 = bitcast i64* %l_1144 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1412) #1
  store i64 0, i64* %l_1144, align 8, !tbaa !7
  %1413 = load i8, i8* getelementptr inbounds ([8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i64 1, i64 4), align 1, !tbaa !9
  %1414 = sext i8 %1413 to i32
  %1415 = load i32*, i32** %l_991, align 8, !tbaa !5
  %1416 = load i32, i32* %1415, align 4, !tbaa !1
  %1417 = icmp sgt i32 %1414, %1416
  %1418 = zext i1 %1417 to i32
  %1419 = load i8, i8* %l_1139, align 1, !tbaa !9
  %1420 = zext i8 %1419 to i32
  %1421 = load i32, i32* %5, align 4, !tbaa !1
  %1422 = icmp eq i32 %1420, %1421
  %1423 = zext i1 %1422 to i32
  %1424 = trunc i32 %1423 to i8
  %1425 = load i32, i32* %l_1128, align 4, !tbaa !1
  %1426 = trunc i32 %1425 to i8
  %1427 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1424, i8 signext %1426)
  %1428 = sext i8 %1427 to i64
  %1429 = load volatile i32, i32* @g_396, align 4, !tbaa !1
  %1430 = zext i32 %1429 to i64
  %1431 = load %union.U2*, %union.U2** %l_1142, align 8, !tbaa !5
  %1432 = load %union.U2*, %union.U2** getelementptr inbounds ([3 x [2 x %union.U2*]], [3 x [2 x %union.U2*]]* @g_977, i32 0, i64 1, i64 1), align 8, !tbaa !5
  %1433 = icmp ne %union.U2* %1431, %1432
  %1434 = zext i1 %1433 to i32
  %1435 = load i32, i32* %3, align 4, !tbaa !1
  %1436 = and i32 %1434, %1435
  %1437 = load i8, i8* bitcast (%union.U1* getelementptr inbounds ([6 x [10 x [4 x %union.U1]]], [6 x [10 x [4 x %union.U1]]]* @g_489, i32 0, i64 0, i64 0, i64 2) to i8*), align 1, !tbaa !9
  %1438 = sext i8 %1437 to i32
  %1439 = xor i32 %1436, %1438
  %1440 = sext i32 %1439 to i64
  %1441 = call i64 @safe_mod_func_int64_t_s_s(i64 1, i64 %1440)
  %1442 = icmp sge i64 %1430, %1441
  %1443 = zext i1 %1442 to i32
  %1444 = sext i32 %1443 to i64
  store i64 %1444, i64* %l_1144, align 8, !tbaa !7
  %1445 = icmp ult i64 %1428, %1444
  %1446 = zext i1 %1445 to i32
  %1447 = load i64, i64* %l_1144, align 8, !tbaa !7
  %1448 = trunc i64 %1447 to i8
  %1449 = load i64, i64* @g_924, align 8, !tbaa !7
  %1450 = trunc i64 %1449 to i8
  %1451 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1448, i8 signext %1450)
  %1452 = sext i8 %1451 to i32
  %1453 = load i32, i32* %3, align 4, !tbaa !1
  %1454 = or i32 %1452, %1453
  %1455 = load i32*, i32** %2, align 8, !tbaa !5
  store i32* %1455, i32** %2, align 8, !tbaa !5
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 0), i8** %1
  store i32 1, i32* %7
  %1456 = bitcast i64* %l_1144 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1456) #1
  br label %1534

; <label>:1457                                    ; preds = %1399
  %1458 = load volatile i32**, i32*** @g_188, align 8, !tbaa !5
  %1459 = load i32*, i32** %1458, align 8, !tbaa !5
  store i32* %1459, i32** %2, align 8, !tbaa !5
  %1460 = load i8, i8* %l_1177, align 1, !tbaa !9
  %1461 = getelementptr inbounds [8 x [8 x [3 x i32]]], [8 x [8 x [3 x i32]]]* %l_1182, i32 0, i64 4
  %1462 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* %1461, i32 0, i64 1
  %1463 = getelementptr inbounds [3 x i32], [3 x i32]* %1462, i32 0, i64 2
  %1464 = load i32, i32* %1463, align 4, !tbaa !1
  %1465 = trunc i32 %1464 to i16
  %1466 = load i16, i16* @g_470, align 2, !tbaa !10
  %1467 = add i16 %1466, -1
  store i16 %1467, i16* @g_470, align 2, !tbaa !10
  %1468 = zext i16 %1466 to i32
  %1469 = load i32, i32* %l_1127, align 4, !tbaa !1
  %1470 = and i32 %1469, %1468
  store i32 %1470, i32* %l_1127, align 4, !tbaa !1
  %1471 = load i32*, i32** %l_991, align 8, !tbaa !5
  %1472 = load i32, i32* %1471, align 4, !tbaa !1
  store i32 %1472, i32* %l_1124, align 4, !tbaa !1
  %1473 = load i32, i32* %l_1192, align 4, !tbaa !1
  %1474 = zext i32 %1473 to i64
  %1475 = trunc i64 %1474 to i16
  %1476 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %1475, i32 1)
  %1477 = sext i16 %1476 to i32
  %1478 = load i32*, i32** @g_97, align 8, !tbaa !5
  %1479 = load i32, i32* %1478, align 4, !tbaa !1
  %1480 = xor i32 %1477, %1479
  %1481 = and i32 %1472, %1480
  %1482 = icmp ne i32 %1470, %1481
  %1483 = zext i1 %1482 to i32
  %1484 = sext i32 %1483 to i64
  %1485 = bitcast %union.U1* %p_34 to i64*
  %1486 = load i64, i64* %1485, align 8, !tbaa !7
  %1487 = icmp sge i64 %1484, %1486
  %1488 = zext i1 %1487 to i32
  %1489 = trunc i32 %1488 to i8
  %1490 = load i32, i32* %l_1128, align 4, !tbaa !1
  %1491 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %1489, i32 %1490)
  %1492 = sext i8 %1491 to i32
  %1493 = icmp ne i32 %1492, 0
  %1494 = zext i1 %1493 to i32
  %1495 = trunc i32 %1494 to i16
  %1496 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %1465, i16 signext %1495)
  %1497 = sext i16 %1496 to i32
  %1498 = bitcast %union.U1* %p_34 to i8*
  %1499 = load i8, i8* %1498, align 1, !tbaa !9
  %1500 = sext i8 %1499 to i32
  %1501 = xor i32 %1497, %1500
  %1502 = trunc i32 %1501 to i16
  store i16 %1502, i16* @g_598, align 2, !tbaa !10
  %1503 = zext i16 %1502 to i32
  %1504 = load i32, i32* %3, align 4, !tbaa !1
  %1505 = icmp sle i32 %1503, %1504
  %1506 = zext i1 %1505 to i32
  %1507 = load i32, i32* %l_1131, align 4, !tbaa !1
  %1508 = or i32 %1507, %1506
  store i32 %1508, i32* %l_1131, align 4, !tbaa !1
  %1509 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext -6103, i32 %1508)
  %1510 = sext i16 %1509 to i32
  %1511 = load i32, i32* %5, align 4, !tbaa !1
  %1512 = icmp ne i32 %1510, %1511
  %1513 = zext i1 %1512 to i32
  %1514 = load i32*, i32** %l_932, align 8, !tbaa !5
  %1515 = load i32, i32* %1514, align 4, !tbaa !1
  %1516 = or i32 %1515, %1513
  store i32 %1516, i32* %1514, align 4, !tbaa !1
  %1517 = trunc i32 %1516 to i8
  store i8 %1517, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i64 4), align 1, !tbaa !9
  %1518 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1460, i8 zeroext %1517)
  %1519 = zext i8 %1518 to i32
  %1520 = load i32*, i32** @g_740, align 8, !tbaa !5
  %1521 = load i32, i32* %1520, align 4, !tbaa !1
  %1522 = icmp eq i32 %1519, %1521
  %1523 = zext i1 %1522 to i32
  %1524 = trunc i32 %1523 to i16
  %1525 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %1524, i32 6)
  %1526 = zext i16 %1525 to i32
  %1527 = load i16, i16* getelementptr inbounds ([4 x [2 x i16]], [4 x [2 x i16]]* @g_1193, i32 0, i64 3, i64 0), align 2, !tbaa !10
  %1528 = zext i16 %1527 to i32
  %1529 = and i32 %1526, %1528
  %1530 = load i32*, i32** %l_933, align 8, !tbaa !5
  %1531 = load i32, i32* %1530, align 4, !tbaa !1
  %1532 = and i32 %1531, %1529
  store i32 %1532, i32* %1530, align 4, !tbaa !1
  %1533 = load i32*, i32** %l_1194, align 8, !tbaa !5
  store i32* %1533, i32** %l_1195, align 8, !tbaa !5
  store i32 0, i32* %7
  br label %1534

; <label>:1534                                    ; preds = %1457, %1411
  %1535 = bitcast i32* %k20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1535) #1
  %1536 = bitcast i32* %j19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1536) #1
  %1537 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1537) #1
  %1538 = bitcast i32** %l_1195 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1538) #1
  %1539 = bitcast i32** %l_1194 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1539) #1
  %1540 = bitcast i32* %l_1192 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1540) #1
  %1541 = bitcast [1 x %union.U0**]* %l_1190 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1541) #1
  %1542 = bitcast [6 x [1 x [3 x i8*]]]* %l_1187 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %1542) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1177) #1
  %1543 = bitcast [7 x i32***]* %l_1167 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %1543) #1
  %1544 = bitcast i32*** %l_1168 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1544) #1
  %1545 = bitcast i32** %l_1169 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1545) #1
  %1546 = bitcast i32** %l_1165 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1546) #1
  %1547 = bitcast i32** %l_1164 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1547) #1
  %1548 = bitcast i16* %l_1132 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1548) #1
  %1549 = bitcast i32* %l_1131 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1549) #1
  %1550 = bitcast i32* %l_1128 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1550) #1
  %1551 = bitcast i32* %l_1127 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1551) #1
  %1552 = bitcast i32* %l_1125 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1552) #1
  %1553 = bitcast i32* %l_1124 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1553) #1
  %1554 = bitcast [2 x [7 x [4 x i16*]]]* %l_1116 to i8*
  call void @llvm.lifetime.end(i64 448, i8* %1554) #1
  %1555 = bitcast i64* %l_1110 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1555) #1
  %cleanup.dest.23 = load i32, i32* %7
  switch i32 %cleanup.dest.23, label %1558 [
    i32 0, label %1556
  ]

; <label>:1556                                    ; preds = %1534
  br label %1557

; <label>:1557                                    ; preds = %1556, %1097
  store i32 0, i32* %7
  br label %1558

; <label>:1558                                    ; preds = %1557, %1534, %1088
  %1559 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1559) #1
  %1560 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1560) #1
  %1561 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1561) #1
  %1562 = bitcast [4 x [3 x [3 x i64]]]* %l_1156 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %1562) #1
  %1563 = bitcast %union.U1* %l_1155 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1563) #1
  %1564 = bitcast %union.U2** %l_1142 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1564) #1
  %1565 = bitcast i32***** %l_1093 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1565) #1
  %1566 = bitcast [3 x [4 x i16***]]* %l_1035 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %1566) #1
  %1567 = bitcast [9 x i8*]* %l_1017 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %1567) #1
  %1568 = bitcast i16* %l_996 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1568) #1
  %1569 = bitcast [6 x [3 x i32**]]* %l_992 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %1569) #1
  %cleanup.dest.24 = load i32, i32* %7
  switch i32 %cleanup.dest.24, label %1932 [
    i32 0, label %1570
  ]

; <label>:1570                                    ; preds = %1558
  br label %1666

; <label>:1571                                    ; preds = %430
  %1572 = bitcast i64* %l_1201 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1572) #1
  store i64 -4, i64* %l_1201, align 8, !tbaa !7
  %1573 = load i32*, i32** %l_991, align 8, !tbaa !5
  %1574 = load i32, i32* %1573, align 4, !tbaa !1
  %1575 = xor i32 %1574, 1
  %1576 = load i32*, i32** %l_933, align 8, !tbaa !5
  store i32 %1575, i32* %1576, align 4, !tbaa !1
  store i16 0, i16* @g_110, align 2, !tbaa !10
  br label %1577

; <label>:1577                                    ; preds = %1585, %1571
  %1578 = load i16, i16* @g_110, align 2, !tbaa !10
  %1579 = sext i16 %1578 to i32
  %1580 = icmp sgt i32 %1579, 2
  br i1 %1580, label %1581, label %1590

; <label>:1581                                    ; preds = %1577
  %1582 = bitcast i8** %l_1198 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1582) #1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8** %l_1198, align 8, !tbaa !5
  %1583 = load i8*, i8** %l_1198, align 8, !tbaa !5
  store i8* %1583, i8** %1
  store i32 1, i32* %7
  %1584 = bitcast i8** %l_1198 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1584) #1
  br label %1663
                                                  ; No predecessors!
  %1586 = load i16, i16* @g_110, align 2, !tbaa !10
  %1587 = trunc i16 %1586 to i8
  %1588 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1587, i8 signext 4)
  %1589 = sext i8 %1588 to i16
  store i16 %1589, i16* @g_110, align 2, !tbaa !10
  br label %1577

; <label>:1590                                    ; preds = %1577
  %1591 = getelementptr inbounds [1 x [10 x [10 x i32****]]], [1 x [10 x [10 x i32****]]]* %l_1199, i32 0, i64 0
  %1592 = getelementptr inbounds [10 x [10 x i32****]], [10 x [10 x i32****]]* %1591, i32 0, i64 3
  %1593 = getelementptr inbounds [10 x i32****], [10 x i32****]* %1592, i32 0, i64 1
  %1594 = load i32****, i32***** %1593, align 8, !tbaa !5
  %1595 = load volatile i32*****, i32****** @g_811, align 8, !tbaa !5
  %1596 = load i32****, i32***** %1595, align 8, !tbaa !5
  %1597 = icmp ne i32**** %1594, %1596
  br i1 %1597, label %1598, label %1648

; <label>:1598                                    ; preds = %1590
  %1599 = bitcast i32* %l_1210 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1599) #1
  store i32 1, i32* %l_1210, align 4, !tbaa !1
  store i32 0, i32* @g_572, align 4, !tbaa !1
  br label %1600

; <label>:1600                                    ; preds = %1607, %1598
  %1601 = load i32, i32* @g_572, align 4, !tbaa !1
  %1602 = icmp ult i32 %1601, 8
  br i1 %1602, label %1603, label %1610

; <label>:1603                                    ; preds = %1600
  %1604 = load i32, i32* @g_572, align 4, !tbaa !1
  %1605 = zext i32 %1604 to i64
  %1606 = getelementptr inbounds [8 x i8], [8 x i8]* @g_280, i32 0, i64 %1605
  store i8 -78, i8* %1606, align 1, !tbaa !9
  br label %1607

; <label>:1607                                    ; preds = %1603
  %1608 = load i32, i32* @g_572, align 4, !tbaa !1
  %1609 = add i32 %1608, 1
  store i32 %1609, i32* @g_572, align 4, !tbaa !1
  br label %1600

; <label>:1610                                    ; preds = %1600
  %1611 = load i64, i64* %l_1201, align 8, !tbaa !7
  %1612 = xor i64 %1611, 5
  store i64 %1612, i64* %l_1201, align 8, !tbaa !7
  %1613 = call i64 @safe_add_func_uint64_t_u_u(i64 -9062905122962781144, i64 0)
  %1614 = load i16, i16* getelementptr inbounds ([4 x [2 x i16]], [4 x [2 x i16]]* @g_1193, i32 0, i64 0, i64 1), align 2, !tbaa !10
  %1615 = add i16 %1614, 1
  store i16 %1615, i16* getelementptr inbounds ([4 x [2 x i16]], [4 x [2 x i16]]* @g_1193, i32 0, i64 0, i64 1), align 2, !tbaa !10
  %1616 = zext i16 %1615 to i64
  %1617 = icmp uge i64 %1613, %1616
  %1618 = zext i1 %1617 to i32
  %1619 = sext i32 %1618 to i64
  %1620 = bitcast %union.U1* %p_34 to i64*
  store i64 %1619, i64* %1620, align 8, !tbaa !7
  %1621 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_1115, i32 0, i32 0), align 2, !tbaa !10
  %1622 = sext i16 %1621 to i32
  %1623 = load i32, i32* %5, align 4, !tbaa !1
  %1624 = icmp sle i32 %1622, %1623
  %1625 = zext i1 %1624 to i32
  %1626 = load i32, i32* %3, align 4, !tbaa !1
  %1627 = icmp ne i32 %1625, %1626
  %1628 = zext i1 %1627 to i32
  %1629 = sext i32 %1628 to i64
  %1630 = call i64 @safe_sub_func_int64_t_s_s(i64 %1619, i64 %1629)
  %1631 = load i32*, i32** %l_932, align 8, !tbaa !5
  %1632 = load i32, i32* %1631, align 4, !tbaa !1
  %1633 = sext i32 %1632 to i64
  %1634 = xor i64 %1633, %1630
  %1635 = trunc i64 %1634 to i32
  store i32 %1635, i32* %1631, align 4, !tbaa !1
  %1636 = load i32*, i32** %l_931, align 8, !tbaa !5
  %1637 = load i32, i32* %1636, align 4, !tbaa !1
  %1638 = sext i32 %1637 to i64
  %1639 = load i32, i32* %l_1210, align 4, !tbaa !1
  %1640 = zext i32 %1639 to i64
  %1641 = call i64 @safe_sub_func_int64_t_s_s(i64 %1638, i64 %1640)
  %1642 = load volatile i32*, i32** @g_399, align 8, !tbaa !5
  %1643 = load i32, i32* %1642, align 4, !tbaa !1
  %1644 = sext i32 %1643 to i64
  %1645 = or i64 %1644, %1641
  %1646 = trunc i64 %1645 to i32
  store i32 %1646, i32* %1642, align 4, !tbaa !1
  %1647 = bitcast i32* %l_1210 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1647) #1
  br label %1662

; <label>:1648                                    ; preds = %1590
  %1649 = bitcast i32*** %l_1211 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1649) #1
  %1650 = getelementptr inbounds [9 x i32*], [9 x i32*]* %l_934, i32 0, i64 3
  store i32** %1650, i32*** %l_1211, align 8, !tbaa !5
  %1651 = load i32, i32* %3, align 4, !tbaa !1
  %1652 = load i32, i32* %5, align 4, !tbaa !1
  %1653 = trunc i32 %1652 to i16
  %1654 = call i64 @func_64(i16 zeroext %1653)
  %1655 = getelementptr %union.U1, %union.U1* %9, i32 0, i32 0
  store i64 %1654, i64* %1655, align 8
  %1656 = getelementptr %union.U1, %union.U1* %9, i32 0, i32 0
  %1657 = load i64, i64* %1656, align 8
  %1658 = call i32* @func_61(i32 %1651, i64 %1657)
  %1659 = load i32**, i32*** %l_1211, align 8, !tbaa !5
  store i32* %1658, i32** %1659, align 8, !tbaa !5
  %1660 = load volatile i32**, i32*** @g_1212, align 8, !tbaa !5
  store i32* %1658, i32** %1660, align 8, !tbaa !5
  %1661 = bitcast i32*** %l_1211 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1661) #1
  br label %1662

; <label>:1662                                    ; preds = %1648, %1610
  store i32 0, i32* %7
  br label %1663

; <label>:1663                                    ; preds = %1662, %1581
  %1664 = bitcast i64* %l_1201 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1664) #1
  %cleanup.dest.25 = load i32, i32* %7
  switch i32 %cleanup.dest.25, label %1932 [
    i32 0, label %1665
  ]

; <label>:1665                                    ; preds = %1663
  br label %1666

; <label>:1666                                    ; preds = %1665, %1570
  %1667 = load i32*, i32** %l_933, align 8, !tbaa !5
  %1668 = load i32**, i32*** %l_1213, align 8, !tbaa !5
  store i32* %1667, i32** %1668, align 8, !tbaa !5
  store i32 0, i32* @g_51, align 4, !tbaa !1
  br label %1669

; <label>:1669                                    ; preds = %1928, %1666
  %1670 = load i32, i32* @g_51, align 4, !tbaa !1
  %1671 = icmp sgt i32 %1670, 17
  br i1 %1671, label %1672, label %1931

; <label>:1672                                    ; preds = %1669
  %1673 = bitcast i32**** %l_1236 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1673) #1
  store i32*** %l_1213, i32**** %l_1236, align 8, !tbaa !5
  %1674 = bitcast i8** %l_1244 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1674) #1
  %1675 = getelementptr inbounds [7 x [3 x i8]], [7 x [3 x i8]]* %l_1122, i32 0, i64 0
  %1676 = getelementptr inbounds [3 x i8], [3 x i8]* %1675, i32 0, i64 2
  store i8* %1676, i8** %l_1244, align 8, !tbaa !5
  %1677 = bitcast i32* %l_1275 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1677) #1
  store i32 -5, i32* %l_1275, align 4, !tbaa !1
  %1678 = bitcast i32* %l_1276 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1678) #1
  store i32 -849508436, i32* %l_1276, align 4, !tbaa !1
  %1679 = bitcast i32* %l_1278 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1679) #1
  store i32 -1683092309, i32* %l_1278, align 4, !tbaa !1
  %1680 = bitcast i32* %l_1279 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1680) #1
  store i32 -1954666735, i32* %l_1279, align 4, !tbaa !1
  %1681 = bitcast [6 x [3 x i32]]* %l_1282 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1681) #1
  %1682 = bitcast [6 x [3 x i32]]* %l_1282 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1682, i8* bitcast ([6 x [3 x i32]]* @func_30.l_1282 to i8*), i64 72, i32 16, i1 false)
  %1683 = bitcast i16* %l_1284 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1683) #1
  store i16 -5, i16* %l_1284, align 2, !tbaa !10
  %1684 = bitcast i32* %i26 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1684) #1
  %1685 = bitcast i32* %j27 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1685) #1
  %1686 = load i32, i32* %5, align 4, !tbaa !1
  %1687 = load i32*, i32** %2, align 8, !tbaa !5
  %1688 = load i32, i32* %1687, align 4, !tbaa !1
  %1689 = load i32*, i32** @g_740, align 8, !tbaa !5
  %1690 = load i32, i32* %1689, align 4, !tbaa !1
  %1691 = add i32 %1690, 1
  store i32 %1691, i32* %1689, align 4, !tbaa !1
  %1692 = load i32***, i32**** %l_1236, align 8, !tbaa !5
  store i32** @g_97, i32*** %1692, align 8, !tbaa !5
  %1693 = load i8, i8* getelementptr inbounds ([10 x [6 x i8]], [10 x [6 x i8]]* @g_545, i32 0, i64 8, i64 0), align 1, !tbaa !9
  %1694 = sext i8 %1693 to i64
  %1695 = icmp slt i64 %1694, 1
  br i1 %1695, label %1708, label %1696

; <label>:1696                                    ; preds = %1672
  %1697 = load i8*, i8** %4, align 8, !tbaa !5
  store i8 -128, i8* %1697, align 1, !tbaa !9
  %1698 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext -78, i8 zeroext -128)
  %1699 = load i8*, i8** %4, align 8, !tbaa !5
  %1700 = load i8*, i8** %4, align 8, !tbaa !5
  %1701 = icmp ne i8* %1699, %1700
  %1702 = zext i1 %1701 to i32
  %1703 = load i32, i32* %3, align 4, !tbaa !1
  %1704 = icmp sle i32 %1702, %1703
  %1705 = zext i1 %1704 to i32
  %1706 = call i32 @safe_mod_func_int32_t_s_s(i32 %1705, i32 709811827)
  %1707 = icmp ne i32 %1706, 0
  br label %1708

; <label>:1708                                    ; preds = %1696, %1672
  %1709 = phi i1 [ true, %1672 ], [ %1707, %1696 ]
  %1710 = zext i1 %1709 to i32
  %1711 = call i32 @safe_sub_func_int32_t_s_s(i32 %1710, i32 1125507571)
  %1712 = sext i32 %1711 to i64
  %1713 = call i64 @safe_div_func_uint64_t_u_u(i64 1, i64 %1712)
  %1714 = trunc i64 %1713 to i8
  %1715 = load i32*, i32** %l_932, align 8, !tbaa !5
  %1716 = load i32, i32* %1715, align 4, !tbaa !1
  %1717 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %1714, i32 %1716)
  %1718 = zext i8 %1717 to i32
  %1719 = icmp eq i32 %1690, %1718
  %1720 = zext i1 %1719 to i32
  %1721 = load i32*, i32** %l_991, align 8, !tbaa !5
  %1722 = load i32, i32* %1721, align 4, !tbaa !1
  %1723 = sext i32 %1722 to i64
  %1724 = icmp slt i64 %1723, 3531789857
  %1725 = zext i1 %1724 to i32
  %1726 = trunc i32 %1725 to i8
  %1727 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %1726, i8 signext -1)
  %1728 = load i32, i32* @g_546, align 4, !tbaa !1
  %1729 = trunc i32 %1728 to i8
  %1730 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1727, i8 zeroext %1729)
  %1731 = zext i8 %1730 to i32
  %1732 = load i32*, i32** %l_991, align 8, !tbaa !5
  %1733 = load i32, i32* %1732, align 4, !tbaa !1
  %1734 = icmp eq i32 %1731, %1733
  %1735 = zext i1 %1734 to i32
  %1736 = load i8, i8* %l_1243, align 1, !tbaa !9
  %1737 = zext i8 %1736 to i32
  %1738 = xor i32 %1737, %1735
  %1739 = trunc i32 %1738 to i8
  store i8 %1739, i8* %l_1243, align 1, !tbaa !9
  %1740 = zext i8 %1739 to i32
  %1741 = load i32, i32* %5, align 4, !tbaa !1
  %1742 = icmp sle i32 %1740, %1741
  %1743 = zext i1 %1742 to i32
  %1744 = trunc i32 %1743 to i16
  %1745 = load i32*, i32** %l_991, align 8, !tbaa !5
  %1746 = load i32, i32* %1745, align 4, !tbaa !1
  %1747 = trunc i32 %1746 to i16
  %1748 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1744, i16 zeroext %1747)
  %1749 = trunc i16 %1748 to i8
  %1750 = load i32*, i32** %l_991, align 8, !tbaa !5
  %1751 = load i32, i32* %1750, align 4, !tbaa !1
  %1752 = trunc i32 %1751 to i8
  %1753 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %1749, i8 zeroext %1752)
  %1754 = load i8, i8* getelementptr inbounds ([10 x [6 x i8]], [10 x [6 x i8]]* @g_545, i32 0, i64 8, i64 5), align 1, !tbaa !9
  %1755 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %1753, i8 zeroext %1754)
  %1756 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %1755, i32 7)
  %1757 = sext i8 %1756 to i64
  %1758 = icmp sle i64 %1757, 21423
  %1759 = zext i1 %1758 to i32
  %1760 = load i32, i32* %3, align 4, !tbaa !1
  %1761 = icmp sge i32 %1759, %1760
  %1762 = zext i1 %1761 to i32
  %1763 = load i8*, i8** %l_1244, align 8, !tbaa !5
  %1764 = load i8, i8* %1763, align 1, !tbaa !9
  %1765 = sext i8 %1764 to i32
  %1766 = xor i32 %1765, %1762
  %1767 = trunc i32 %1766 to i8
  store i8 %1767, i8* %1763, align 1, !tbaa !9
  %1768 = sext i8 %1767 to i32
  %1769 = bitcast %union.U1* %p_34 to i8*
  %1770 = load i8, i8* %1769, align 1, !tbaa !9
  %1771 = sext i8 %1770 to i32
  %1772 = xor i32 %1768, %1771
  %1773 = call i32 @safe_sub_func_int32_t_s_s(i32 %1772, i32 -1881594689)
  %1774 = load i32*, i32** %l_933, align 8, !tbaa !5
  %1775 = load i32, i32* %1774, align 4, !tbaa !1
  %1776 = load i32*, i32** %l_931, align 8, !tbaa !5
  store i32 %1775, i32* %1776, align 4, !tbaa !1
  store i16 -26, i16* @g_1105, align 2, !tbaa !10
  br label %1777

; <label>:1777                                    ; preds = %1861, %1708
  %1778 = load i16, i16* @g_1105, align 2, !tbaa !10
  %1779 = sext i16 %1778 to i32
  %1780 = icmp sle i32 %1779, -25
  br i1 %1780, label %1781, label %1864

; <label>:1781                                    ; preds = %1777
  call void @llvm.lifetime.start(i64 1, i8* %l_1247) #1
  store i8 1, i8* %l_1247, align 1, !tbaa !9
  %1782 = bitcast i16** %l_1259 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1782) #1
  store i16* @g_598, i16** %l_1259, align 8, !tbaa !5
  %1783 = bitcast i16*** %l_1258 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1783) #1
  store i16** %l_1259, i16*** %l_1258, align 8, !tbaa !5
  %1784 = bitcast i16****** %l_1265 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1784) #1
  store i16***** @g_1264, i16****** %l_1265, align 8, !tbaa !5
  %1785 = bitcast i8** %l_1267 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1785) #1
  store i8* @g_392, i8** %l_1267, align 8, !tbaa !5
  %1786 = load i8, i8* %l_1247, align 1, !tbaa !9
  %1787 = zext i8 %1786 to i32
  %1788 = icmp ne i32 %1787, 0
  br i1 %1788, label %1852, label %1789

; <label>:1789                                    ; preds = %1781
  %1790 = load i8, i8* %l_1247, align 1, !tbaa !9
  %1791 = load i8, i8* %l_1247, align 1, !tbaa !9
  %1792 = zext i8 %1791 to i16
  %1793 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %1792, i32 13)
  %1794 = zext i16 %1793 to i32
  %1795 = load volatile i32*, i32** @g_407, align 8, !tbaa !5
  %1796 = load i32, i32* %1795, align 4, !tbaa !1
  %1797 = and i32 %1796, %1794
  store i32 %1797, i32* %1795, align 4, !tbaa !1
  %1798 = sext i32 %1797 to i64
  %1799 = load i16*****, i16****** %l_985, align 8, !tbaa !5
  %1800 = load i16****, i16***** %1799, align 8, !tbaa !5
  %1801 = load i16***, i16**** %1800, align 8, !tbaa !5
  store i16** null, i16*** %1801, align 8, !tbaa !5
  %1802 = load i16**, i16*** %l_1258, align 8, !tbaa !5
  %1803 = icmp eq i16** null, %1802
  %1804 = zext i1 %1803 to i32
  %1805 = load i32, i32* %5, align 4, !tbaa !1
  %1806 = call i32 @safe_sub_func_int32_t_s_s(i32 %1804, i32 %1805)
  %1807 = load i16****, i16***** @g_1264, align 8, !tbaa !5
  %1808 = load i16*****, i16****** %l_1265, align 8, !tbaa !5
  store i16**** %1807, i16***** %1808, align 8, !tbaa !5
  %1809 = icmp eq i16**** %1807, null
  %1810 = zext i1 %1809 to i32
  %1811 = load i32**, i32*** @g_814, align 8, !tbaa !5
  %1812 = load volatile i32*, i32** %1811, align 8, !tbaa !5
  %1813 = load i32, i32* %1812, align 4, !tbaa !1
  %1814 = or i32 %1813, %1810
  store i32 %1814, i32* %1812, align 4, !tbaa !1
  %1815 = load i32*****, i32****** %l_1266, align 8, !tbaa !5
  %1816 = load i32*****, i32****** %l_1266, align 8, !tbaa !5
  %1817 = icmp ne i32***** %1815, %1816
  %1818 = zext i1 %1817 to i32
  %1819 = trunc i32 %1818 to i16
  %1820 = load i32, i32* %5, align 4, !tbaa !1
  %1821 = trunc i32 %1820 to i16
  %1822 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %1819, i16 signext %1821)
  %1823 = sext i16 %1822 to i32
  %1824 = icmp ne i32 %1823, 0
  br i1 %1824, label %1825, label %1829

; <label>:1825                                    ; preds = %1789
  %1826 = load i8, i8* getelementptr inbounds ([10 x [6 x i8]], [10 x [6 x i8]]* @g_545, i32 0, i64 7, i64 4), align 1, !tbaa !9
  %1827 = sext i8 %1826 to i32
  %1828 = icmp ne i32 %1827, 0
  br label %1829

; <label>:1829                                    ; preds = %1825, %1789
  %1830 = phi i1 [ false, %1789 ], [ %1828, %1825 ]
  %1831 = zext i1 %1830 to i32
  %1832 = trunc i32 %1831 to i8
  %1833 = load i16, i16* @g_136, align 2, !tbaa !10
  %1834 = trunc i16 %1833 to i8
  %1835 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1832, i8 zeroext %1834)
  %1836 = load i8*, i8** %4, align 8, !tbaa !5
  store i8 %1835, i8* %1836, align 1, !tbaa !9
  %1837 = sext i8 %1835 to i32
  %1838 = or i32 %1806, %1837
  %1839 = sext i32 %1838 to i64
  %1840 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), align 1, !tbaa !9
  %1841 = sext i8 %1840 to i64
  %1842 = call i64 @safe_add_func_uint64_t_u_u(i64 %1839, i64 %1841)
  %1843 = icmp eq i64 %1798, %1842
  %1844 = zext i1 %1843 to i32
  %1845 = trunc i32 %1844 to i8
  %1846 = load i8, i8* %l_1247, align 1, !tbaa !9
  %1847 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1845, i8 signext %1846)
  %1848 = load i8, i8* %l_1247, align 1, !tbaa !9
  %1849 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %1847, i8 zeroext %1848)
  %1850 = zext i8 %1849 to i32
  %1851 = icmp ne i32 %1850, 0
  br label %1852

; <label>:1852                                    ; preds = %1829, %1781
  %1853 = phi i1 [ true, %1781 ], [ %1851, %1829 ]
  %1854 = zext i1 %1853 to i32
  %1855 = load i32*, i32** %l_931, align 8, !tbaa !5
  store i32 %1854, i32* %1855, align 4, !tbaa !1
  %1856 = load i8*, i8** %l_1267, align 8, !tbaa !5
  store i8* %1856, i8** %1
  store i32 1, i32* %7
  %1857 = bitcast i8** %l_1267 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1857) #1
  %1858 = bitcast i16****** %l_1265 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1858) #1
  %1859 = bitcast i16*** %l_1258 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1859) #1
  %1860 = bitcast i16** %l_1259 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1860) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1247) #1
  br label %1917
                                                  ; No predecessors!
  %1862 = load i16, i16* @g_1105, align 2, !tbaa !10
  %1863 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %1862, i16 signext 1)
  store i16 %1863, i16* @g_1105, align 2, !tbaa !10
  br label %1777

; <label>:1864                                    ; preds = %1777
  %1865 = load i32*, i32** %l_933, align 8, !tbaa !5
  %1866 = load i32, i32* %1865, align 4, !tbaa !1
  %1867 = sext i32 %1866 to i64
  %1868 = xor i64 %1867, -10
  %1869 = trunc i64 %1868 to i32
  store i32 %1869, i32* %1865, align 4, !tbaa !1
  %1870 = load i32, i32* %5, align 4, !tbaa !1
  %1871 = trunc i32 %1870 to i16
  %1872 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %1871, i16 signext 0)
  %1873 = sext i16 %1872 to i32
  %1874 = load i32*, i32** %l_991, align 8, !tbaa !5
  %1875 = load i32, i32* %1874, align 4, !tbaa !1
  %1876 = icmp eq i32 %1873, %1875
  %1877 = zext i1 %1876 to i32
  %1878 = load i32*, i32** %l_932, align 8, !tbaa !5
  %1879 = load i32, i32* %1878, align 4, !tbaa !1
  %1880 = trunc i32 %1879 to i16
  %1881 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext 12595, i16 zeroext %1880)
  %1882 = zext i16 %1881 to i64
  %1883 = icmp ne i64 %1882, 38985
  %1884 = zext i1 %1883 to i32
  %1885 = icmp slt i32 %1877, %1884
  br i1 %1885, label %1886, label %1913

; <label>:1886                                    ; preds = %1864
  call void @llvm.lifetime.start(i64 1, i8* %l_1272) #1
  store i8 -77, i8* %l_1272, align 1, !tbaa !9
  %1887 = bitcast i32* %l_1273 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1887) #1
  store i32 -1831502052, i32* %l_1273, align 4, !tbaa !1
  %1888 = bitcast i32* %l_1274 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1888) #1
  store i32 -1, i32* %l_1274, align 4, !tbaa !1
  %1889 = bitcast i32* %l_1277 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1889) #1
  store i32 1, i32* %l_1277, align 4, !tbaa !1
  %1890 = bitcast i32* %l_1280 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1890) #1
  store i32 1364309700, i32* %l_1280, align 4, !tbaa !1
  %1891 = bitcast i32* %l_1281 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1891) #1
  store i32 -1112178549, i32* %l_1281, align 4, !tbaa !1
  %1892 = bitcast i32* %l_1283 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1892) #1
  store i32 1, i32* %l_1283, align 4, !tbaa !1
  %1893 = bitcast i32* %l_1285 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1893) #1
  store i32 0, i32* %l_1285, align 4, !tbaa !1
  %1894 = bitcast i32* %l_1286 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1894) #1
  store i32 -873557035, i32* %l_1286, align 4, !tbaa !1
  %1895 = bitcast i32* %l_1287 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1895) #1
  store i32 2, i32* %l_1287, align 4, !tbaa !1
  %1896 = bitcast i32* %l_1288 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1896) #1
  store i32 -1503094247, i32* %l_1288, align 4, !tbaa !1
  %1897 = bitcast i32* %l_1289 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1897) #1
  store i32 -2093740018, i32* %l_1289, align 4, !tbaa !1
  %1898 = bitcast i32* %l_1290 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1898) #1
  store i32 -1, i32* %l_1290, align 4, !tbaa !1
  %1899 = load i16, i16* %l_1291, align 2, !tbaa !10
  %1900 = add i16 %1899, -1
  store i16 %1900, i16* %l_1291, align 2, !tbaa !10
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 6), i8** %1
  store i32 1, i32* %7
  %1901 = bitcast i32* %l_1290 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1901) #1
  %1902 = bitcast i32* %l_1289 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1902) #1
  %1903 = bitcast i32* %l_1288 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1903) #1
  %1904 = bitcast i32* %l_1287 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1904) #1
  %1905 = bitcast i32* %l_1286 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1905) #1
  %1906 = bitcast i32* %l_1285 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1906) #1
  %1907 = bitcast i32* %l_1283 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1907) #1
  %1908 = bitcast i32* %l_1281 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1908) #1
  %1909 = bitcast i32* %l_1280 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1909) #1
  %1910 = bitcast i32* %l_1277 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1910) #1
  %1911 = bitcast i32* %l_1274 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1911) #1
  %1912 = bitcast i32* %l_1273 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1912) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1272) #1
  br label %1917

; <label>:1913                                    ; preds = %1864
  %1914 = bitcast i8** %l_1294 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1914) #1
  store i8* bitcast (%union.U1* @g_49 to i8*), i8** %l_1294, align 8, !tbaa !5
  %1915 = load i8*, i8** %l_1294, align 8, !tbaa !5
  store i8* %1915, i8** %1
  store i32 1, i32* %7
  %1916 = bitcast i8** %l_1294 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1916) #1
  br label %1917

; <label>:1917                                    ; preds = %1913, %1886, %1852
  %1918 = bitcast i32* %j27 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1918) #1
  %1919 = bitcast i32* %i26 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1919) #1
  %1920 = bitcast i16* %l_1284 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1920) #1
  %1921 = bitcast [6 x [3 x i32]]* %l_1282 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %1921) #1
  %1922 = bitcast i32* %l_1279 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1922) #1
  %1923 = bitcast i32* %l_1278 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1923) #1
  %1924 = bitcast i32* %l_1276 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1924) #1
  %1925 = bitcast i32* %l_1275 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1925) #1
  %1926 = bitcast i8** %l_1244 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1926) #1
  %1927 = bitcast i32**** %l_1236 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1927) #1
  br label %1932
                                                  ; No predecessors!
  %1929 = load i32, i32* @g_51, align 4, !tbaa !1
  %1930 = call i32 @safe_add_func_int32_t_s_s(i32 %1929, i32 1)
  store i32 %1930, i32* @g_51, align 4, !tbaa !1
  br label %1669

; <label>:1931                                    ; preds = %1669
  store i32 0, i32* %7
  br label %1932

; <label>:1932                                    ; preds = %1931, %1917, %1663, %1558
  %1933 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1933) #1
  %1934 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1934) #1
  %1935 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1935) #1
  %1936 = bitcast i16* %l_1291 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1936) #1
  %1937 = bitcast i32****** %l_1266 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1937) #1
  %1938 = bitcast i32*** %l_1213 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1938) #1
  %1939 = bitcast i32*** %l_1172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1939) #1
  %1940 = bitcast i32*** %l_1170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1940) #1
  %1941 = bitcast i32** %l_1171 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1941) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1139) #1
  %1942 = bitcast [3 x i32]* %l_1130 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1942) #1
  %1943 = bitcast i32* %l_1129 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1943) #1
  %1944 = bitcast i32* %l_1126 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1944) #1
  %1945 = bitcast [7 x [3 x i8]]* %l_1122 to i8*
  call void @llvm.lifetime.end(i64 21, i8* %1945) #1
  %1946 = bitcast i16*** %l_1032 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1946) #1
  %1947 = bitcast i16* %l_1016 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1947) #1
  %1948 = bitcast i32* %l_995 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1948) #1
  %1949 = bitcast i32* %l_994 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1949) #1
  %1950 = bitcast i32* %l_993 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1950) #1
  %1951 = bitcast i32** %l_991 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1951) #1
  %1952 = bitcast [1 x [9 x [4 x i64*]]]* %l_990 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %1952) #1
  %1953 = bitcast %union.U0** %l_988 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1953) #1
  %1954 = bitcast i16****** %l_985 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1954) #1
  %cleanup.dest.28 = load i32, i32* %7
  switch i32 %cleanup.dest.28, label %1968 [
    i32 0, label %1955
  ]

; <label>:1955                                    ; preds = %1932
  br label %1956

; <label>:1956                                    ; preds = %1955, %386
  %1957 = load i64, i64* %l_1295, align 8, !tbaa !7
  %1958 = trunc i64 %1957 to i32
  %1959 = getelementptr %union.U1, %union.U1* %p_34, i32 0, i32 0
  %1960 = load i64, i64* %1959, align 8
  %1961 = call i32* @func_61(i32 %1958, i64 %1960)
  %1962 = load i32**, i32*** %l_1297, align 8, !tbaa !5
  store i32* %1961, i32** %1962, align 8, !tbaa !5
  %1963 = load volatile %union.U1**, %union.U1*** @g_606, align 8, !tbaa !5
  %1964 = load %union.U1*, %union.U1** %1963, align 8, !tbaa !5
  %1965 = load volatile %union.U1**, %union.U1*** @g_1298, align 8, !tbaa !5
  store %union.U1* %1964, %union.U1** %1965, align 8, !tbaa !5
  %1966 = load i8**, i8*** @g_93, align 8, !tbaa !5
  %1967 = load i8*, i8** %1966, align 8, !tbaa !5
  store i8* %1967, i8** %1
  store i32 1, i32* %7
  br label %1968

; <label>:1968                                    ; preds = %1956, %1932
  %1969 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1969) #1
  %1970 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1970) #1
  %1971 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1971) #1
  %1972 = bitcast i32*** %l_1297 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1972) #1
  %1973 = bitcast i64* %l_1295 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1973) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1243) #1
  %1974 = bitcast [1 x [10 x [10 x i32****]]]* %l_1199 to i8*
  call void @llvm.lifetime.end(i64 800, i8* %1974) #1
  %1975 = bitcast [8 x i32***]* %l_1200 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1975) #1
  %1976 = bitcast [8 x [8 x [3 x i32]]]* %l_1182 to i8*
  call void @llvm.lifetime.end(i64 768, i8* %1976) #1
  %1977 = bitcast i32* %l_1119 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1977) #1
  %1978 = bitcast i32* %l_1087 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1978) #1
  %1979 = bitcast %union.U0** %l_987 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1979) #1
  %1980 = bitcast i16***** %l_983 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1980) #1
  %1981 = bitcast i64* %l_980 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1981) #1
  %1982 = bitcast %union.U2** %l_975 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1982) #1
  %1983 = bitcast [5 x [4 x i32**]]* %l_950 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %1983) #1
  %1984 = bitcast [6 x i16**]* %l_946 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %1984) #1
  %1985 = bitcast i16** %l_945 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1985) #1
  %1986 = bitcast i32* %l_937 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1986) #1
  %1987 = bitcast i16* %l_936 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1987) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_935) #1
  %1988 = bitcast [9 x i32*]* %l_934 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %1988) #1
  %1989 = bitcast i32** %l_933 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1989) #1
  %1990 = bitcast i32** %l_932 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1990) #1
  %1991 = bitcast i32** %l_931 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1991) #1
  %1992 = load i8*, i8** %1
  ret i8* %1992
}

; Function Attrs: nounwind uwtable
define internal i64 @func_43(i8* %p_44, i8* %p_45, i64 %p_46.coerce) #0 {
  %1 = alloca i64, align 8
  %p_46 = alloca %union.U1, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %l_50 = alloca [7 x [6 x i32*]], align 16
  %l_68 = alloca i32**, align 8
  %l_70 = alloca i32*, align 8
  %l_69 = alloca i32**, align 8
  %l_71 = alloca i32**, align 8
  %l_73 = alloca i32*, align 8
  %l_72 = alloca [2 x i32**], align 16
  %l_74 = alloca i32*, align 8
  %l_95 = alloca i32**, align 8
  %l_96 = alloca i32**, align 8
  %l_279 = alloca [6 x i8*], align 16
  %l_427 = alloca i32, align 4
  %l_440 = alloca [3 x i32], align 4
  %l_441 = alloca i16*, align 8
  %l_442 = alloca i16*, align 8
  %l_443 = alloca i16*, align 8
  %l_446 = alloca i8*, align 8
  %l_475 = alloca %union.U1*, align 8
  %l_484 = alloca i8, align 1
  %l_494 = alloca i16*, align 8
  %l_499 = alloca i32****, align 8
  %l_548 = alloca i16, align 2
  %l_556 = alloca i8, align 1
  %l_585 = alloca [10 x i16], align 16
  %l_712 = alloca i32, align 4
  %l_775 = alloca [7 x i16**], align 16
  %l_779 = alloca i16*, align 8
  %l_920 = alloca i32*, align 8
  %l_919 = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %4 = alloca %union.U1, align 8
  %5 = alloca %union.U2, align 8
  %l_463 = alloca i32**, align 8
  %l_465 = alloca i32, align 4
  %l_472 = alloca i32, align 4
  %l_449 = alloca [8 x i16], align 16
  %l_464 = alloca i32***, align 8
  %l_466 = alloca i32*, align 8
  %l_469 = alloca i16*, align 8
  %l_471 = alloca i8*, align 8
  %l_474 = alloca i64*, align 8
  %i1 = alloca i32, align 4
  %6 = alloca i32
  %l_481 = alloca i8*, align 8
  %l_482 = alloca i64*, align 8
  %l_483 = alloca [6 x i64*], align 16
  %l_485 = alloca i32, align 4
  %l_486 = alloca i32, align 4
  %l_490 = alloca i32, align 4
  %l_491 = alloca %union.U1**, align 8
  %i2 = alloca i32, align 4
  %7 = alloca %union.U1, align 8
  %l_512 = alloca i64, align 8
  %l_526 = alloca i32, align 4
  %l_527 = alloca i32, align 4
  %l_528 = alloca i32, align 4
  %l_529 = alloca i32, align 4
  %l_531 = alloca i32, align 4
  %l_532 = alloca i16, align 2
  %l_533 = alloca [4 x i32], align 16
  %l_534 = alloca i8, align 1
  %i3 = alloca i32, align 4
  %l_522 = alloca i8*, align 8
  %l_525 = alloca [5 x [3 x i32]], align 16
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %l_539 = alloca i32, align 4
  %l_543 = alloca i32, align 4
  %l_544 = alloca [10 x [2 x [9 x i32]]], align 16
  %l_555 = alloca i16, align 2
  %l_588 = alloca [8 x [7 x [4 x i32]]], align 16
  %l_592 = alloca i32*, align 8
  %l_594 = alloca [7 x i8], align 1
  %l_647 = alloca i8*, align 8
  %l_752 = alloca i8**, align 8
  %l_780 = alloca [5 x [8 x i32]], align 16
  %l_783 = alloca %union.U0*, align 8
  %l_792 = alloca i32***, align 8
  %l_791 = alloca i32****, align 8
  %l_793 = alloca i32*****, align 8
  %l_804 = alloca i64, align 8
  %l_805 = alloca i64, align 8
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %k = alloca i32, align 4
  %8 = getelementptr %union.U1, %union.U1* %p_46, i32 0, i32 0
  store i64 %p_46.coerce, i64* %8, align 8
  store i8* %p_44, i8** %2, align 8, !tbaa !5
  store i8* %p_45, i8** %3, align 8, !tbaa !5
  %9 = bitcast [7 x [6 x i32*]]* %l_50 to i8*
  call void @llvm.lifetime.start(i64 336, i8* %9) #1
  %10 = bitcast [7 x [6 x i32*]]* %l_50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([7 x [6 x i32*]]* @func_43.l_50 to i8*), i64 336, i32 16, i1 false)
  %11 = bitcast i32*** %l_68 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32** null, i32*** %l_68, align 8, !tbaa !5
  %12 = bitcast i32** %l_70 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32* @g_38, i32** %l_70, align 8, !tbaa !5
  %13 = bitcast i32*** %l_69 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32** %l_70, i32*** %l_69, align 8, !tbaa !5
  %14 = bitcast i32*** %l_71 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32** null, i32*** %l_71, align 8, !tbaa !5
  %15 = bitcast i32** %l_73 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i32* null, i32** %l_73, align 8, !tbaa !5
  %16 = bitcast [2 x i32**]* %l_72 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #1
  %17 = bitcast i32** %l_74 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i32* @g_38, i32** %l_74, align 8, !tbaa !5
  %18 = bitcast i32*** %l_95 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32** null, i32*** %l_95, align 8, !tbaa !5
  %19 = bitcast i32*** %l_96 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = getelementptr inbounds [7 x [6 x i32*]], [7 x [6 x i32*]]* %l_50, i32 0, i64 2
  %21 = getelementptr inbounds [6 x i32*], [6 x i32*]* %20, i32 0, i64 5
  store i32** %21, i32*** %l_96, align 8, !tbaa !5
  %22 = bitcast [6 x i8*]* %l_279 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %22) #1
  %23 = bitcast [6 x i8*]* %l_279 to i8*
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 48, i32 16, i1 false)
  %24 = bitcast i8* %23 to [6 x i8*]*
  %25 = getelementptr [6 x i8*], [6 x i8*]* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8** %25
  %26 = getelementptr [6 x i8*], [6 x i8*]* %24, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8** %26
  %27 = getelementptr [6 x i8*], [6 x i8*]* %24, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8** %27
  %28 = getelementptr [6 x i8*], [6 x i8*]* %24, i32 0, i32 3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8** %28
  %29 = getelementptr [6 x i8*], [6 x i8*]* %24, i32 0, i32 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8** %29
  %30 = getelementptr [6 x i8*], [6 x i8*]* %24, i32 0, i32 5
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), i8** %30
  %31 = bitcast i32* %l_427 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 -1, i32* %l_427, align 4, !tbaa !1
  %32 = bitcast [3 x i32]* %l_440 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %32) #1
  %33 = bitcast i16** %l_441 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  store i16* null, i16** %l_441, align 8, !tbaa !5
  %34 = bitcast i16** %l_442 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  store i16* null, i16** %l_442, align 8, !tbaa !5
  %35 = bitcast i16** %l_443 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), i16** %l_443, align 8, !tbaa !5
  %36 = bitcast i8** %l_446 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i64 4), i8** %l_446, align 8, !tbaa !5
  %37 = bitcast %union.U1** %l_475 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store %union.U1* @g_49, %union.U1** %l_475, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_484) #1
  store i8 110, i8* %l_484, align 1, !tbaa !9
  %38 = bitcast i16** %l_494 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store i16* @g_470, i16** %l_494, align 8, !tbaa !5
  %39 = bitcast i32***** %l_499 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  store i32**** null, i32***** %l_499, align 8, !tbaa !5
  %40 = bitcast i16* %l_548 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %40) #1
  store i16 -2952, i16* %l_548, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_556) #1
  store i8 81, i8* %l_556, align 1, !tbaa !9
  %41 = bitcast [10 x i16]* %l_585 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %41) #1
  %42 = bitcast [10 x i16]* %l_585 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* bitcast ([10 x i16]* @func_43.l_585 to i8*), i64 20, i32 16, i1 false)
  %43 = bitcast i32* %l_712 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 4, i32* %l_712, align 4, !tbaa !1
  %44 = bitcast [7 x i16**]* %l_775 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %44) #1
  %45 = getelementptr inbounds [7 x i16**], [7 x i16**]* %l_775, i64 0, i64 0
  store i16** %l_494, i16*** %45, !tbaa !5
  %46 = getelementptr inbounds i16**, i16*** %45, i64 1
  store i16** %l_494, i16*** %46, !tbaa !5
  %47 = getelementptr inbounds i16**, i16*** %46, i64 1
  store i16** %l_494, i16*** %47, !tbaa !5
  %48 = getelementptr inbounds i16**, i16*** %47, i64 1
  store i16** %l_494, i16*** %48, !tbaa !5
  %49 = getelementptr inbounds i16**, i16*** %48, i64 1
  store i16** %l_494, i16*** %49, !tbaa !5
  %50 = getelementptr inbounds i16**, i16*** %49, i64 1
  store i16** %l_494, i16*** %50, !tbaa !5
  %51 = getelementptr inbounds i16**, i16*** %50, i64 1
  store i16** %l_494, i16*** %51, !tbaa !5
  %52 = bitcast i16** %l_779 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  store i16* null, i16** %l_779, align 8, !tbaa !5
  %53 = bitcast i32** %l_920 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  store i32* null, i32** %l_920, align 8, !tbaa !5
  %54 = bitcast i32*** %l_919 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  store i32** %l_920, i32*** %l_919, align 8, !tbaa !5
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %57

; <label>:57                                      ; preds = %64, %0
  %58 = load i32, i32* %i, align 4, !tbaa !1
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %67

; <label>:60                                      ; preds = %57
  %61 = load i32, i32* %i, align 4, !tbaa !1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x i32**], [2 x i32**]* %l_72, i32 0, i64 %62
  store i32** %l_73, i32*** %63, align 8, !tbaa !5
  br label %64

; <label>:64                                      ; preds = %60
  %65 = load i32, i32* %i, align 4, !tbaa !1
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %i, align 4, !tbaa !1
  br label %57

; <label>:67                                      ; preds = %57
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %68

; <label>:68                                      ; preds = %75, %67
  %69 = load i32, i32* %i, align 4, !tbaa !1
  %70 = icmp slt i32 %69, 3
  br i1 %70, label %71, label %78

; <label>:71                                      ; preds = %68
  %72 = load i32, i32* %i, align 4, !tbaa !1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %l_440, i32 0, i64 %73
  store i32 -8641788, i32* %74, align 4, !tbaa !1
  br label %75

; <label>:75                                      ; preds = %71
  %76 = load i32, i32* %i, align 4, !tbaa !1
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %i, align 4, !tbaa !1
  br label %68

; <label>:78                                      ; preds = %68
  store i32 -1, i32* @g_51, align 4, !tbaa !1
  br i1 true, label %135, label %79

; <label>:79                                      ; preds = %78
  %80 = load i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), align 8, !tbaa !7
  %81 = trunc i64 %80 to i32
  %82 = bitcast %union.U1* %p_46 to i64*
  %83 = load i64, i64* %82, align 8, !tbaa !7
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

; <label>:85                                      ; preds = %79
  %86 = load i8*, i8** @g_47, align 8, !tbaa !5
  %87 = load i8, i8* %86, align 1, !tbaa !9
  %88 = load i32**, i32*** %l_69, align 8, !tbaa !5
  store i32* @g_38, i32** %88, align 8, !tbaa !5
  store i32* @g_38, i32** %l_74, align 8, !tbaa !5
  br label %89

; <label>:89                                      ; preds = %85, %79
  %90 = phi i1 [ false, %79 ], [ false, %85 ]
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* @g_51, align 4, !tbaa !1
  %93 = sext i32 %92 to i64
  %94 = load i8, i8* getelementptr inbounds ([8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i64 7, i64 4), align 1, !tbaa !9
  %95 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext -12, i8 zeroext %94)
  %96 = or i64 %93, 34
  %97 = icmp slt i64 %96, 3
  %98 = zext i1 %97 to i32
  %99 = icmp sle i32 %91, %98
  %100 = zext i1 %99 to i32
  %101 = load i8, i8* getelementptr inbounds ([8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i64 1, i64 4), align 1, !tbaa !9
  %102 = sext i8 %101 to i16
  %103 = call signext i8 @func_66(i16 zeroext %102)
  %104 = sext i8 %103 to i64
  %105 = icmp slt i64 %104, 4
  %106 = zext i1 %105 to i32
  %107 = bitcast %union.U1* %p_46 to i8*
  %108 = load i8, i8* %107, align 1, !tbaa !9
  %109 = sext i8 %108 to i64
  %110 = icmp sgt i64 1229990254182011442, %109
  %111 = zext i1 %110 to i32
  %112 = trunc i32 %111 to i16
  %113 = call i64 @func_64(i16 zeroext %112)
  %114 = getelementptr %union.U1, %union.U1* %4, i32 0, i32 0
  store i64 %113, i64* %114, align 8
  %115 = getelementptr %union.U1, %union.U1* %4, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32* @func_61(i32 %81, i64 %116)
  %118 = load i32**, i32*** %l_96, align 8, !tbaa !5
  store i32* %117, i32** %118, align 8, !tbaa !5
  store i32* %117, i32** @g_97, align 8, !tbaa !5
  %119 = icmp ne i32* %117, @g_4
  %120 = zext i1 %119 to i32
  %121 = load i32*, i32** %l_73, align 8, !tbaa !5
  %122 = load i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), align 8, !tbaa !7
  %123 = trunc i64 %122 to i8
  %124 = call i32* @func_57(i32 %120, i32* %121, i8 zeroext %123)
  %125 = getelementptr inbounds [6 x i8*], [6 x i8*]* %l_279, i32 0, i64 0
  %126 = load i8*, i8** %125, align 8, !tbaa !5
  %127 = bitcast %union.U1* %p_46 to i64*
  %128 = load i64, i64* %127, align 8, !tbaa !7
  %129 = trunc i64 %128 to i32
  %130 = bitcast %union.U1* %p_46 to i8*
  %131 = load i8, i8* %130, align 1, !tbaa !9
  %132 = sext i8 %131 to i32
  %133 = call i64 @func_52(i32* %124, i8* %126, i32 %129, i32 %132)
  %134 = getelementptr %union.U2, %union.U2* %5, i32 0, i32 0
  store i64 %133, i64* %134, align 8
  br label %135

; <label>:135                                     ; preds = %89, %78
  %136 = phi i1 [ true, %78 ], [ false, %89 ]
  %137 = zext i1 %136 to i32
  %138 = load volatile i32*, i32** @g_399, align 8, !tbaa !5
  store i32 %137, i32* %138, align 4, !tbaa !1
  store i32 %137, i32* @g_426, align 4, !tbaa !1
  store i32 %137, i32* %l_427, align 4, !tbaa !1
  br label %139

; <label>:139                                     ; preds = %653, %135
  %140 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), align 2, !tbaa !10
  %141 = sext i16 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %213, label %143

; <label>:143                                     ; preds = %139
  %144 = bitcast %union.U1* %p_46 to i64*
  %145 = load i64, i64* %144, align 8, !tbaa !7
  %146 = bitcast %union.U1* %p_46 to i64*
  %147 = load i64, i64* %146, align 8, !tbaa !7
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %l_440, i32 0, i64 1
  %149 = load i32, i32* %148, align 4, !tbaa !1
  %150 = trunc i32 %149 to i16
  %151 = load i16*, i16** %l_443, align 8, !tbaa !5
  store i16 %150, i16* %151, align 2, !tbaa !10
  %152 = sext i16 %150 to i32
  %153 = load i8*, i8** %3, align 8, !tbaa !5
  %154 = icmp eq i8* null, %153
  br i1 %154, label %156, label %155

; <label>:155                                     ; preds = %143
  br label %156

; <label>:156                                     ; preds = %155, %143
  %157 = phi i1 [ true, %143 ], [ true, %155 ]
  %158 = zext i1 %157 to i32
  %159 = sext i32 %158 to i64
  %160 = or i64 %159, 54414
  %161 = load i8*, i8** %2, align 8, !tbaa !5
  %162 = load i8, i8* %161, align 1, !tbaa !9
  %163 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %162, i32 5)
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

; <label>:166                                     ; preds = %156
  %167 = bitcast %union.U1* %p_46 to i8*
  %168 = load i8, i8* %167, align 1, !tbaa !9
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 0
  br label %171

; <label>:171                                     ; preds = %166, %156
  %172 = phi i1 [ true, %156 ], [ %170, %166 ]
  %173 = zext i1 %172 to i32
  %174 = sext i32 %173 to i64
  %175 = icmp sgt i64 1428860951, %174
  %176 = zext i1 %175 to i32
  %177 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_156, i32 0, i32 0), align 2, !tbaa !10
  %178 = sext i16 %177 to i64
  %179 = bitcast %union.U1* %p_46 to i64*
  %180 = load i64, i64* %179, align 8, !tbaa !7
  %181 = icmp sgt i64 %178, %180
  %182 = zext i1 %181 to i32
  %183 = icmp sge i32 %152, %182
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* @g_51, align 4, !tbaa !1
  %186 = icmp sge i32 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i8*, i8** %2, align 8, !tbaa !5
  %189 = load i8, i8* %188, align 1, !tbaa !9
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %187, %190
  %192 = zext i1 %191 to i32
  %193 = bitcast %union.U1* %p_46 to i8*
  %194 = load i8, i8* %193, align 1, !tbaa !9
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %192, %195
  %197 = zext i1 %196 to i32
  %198 = sext i32 %197 to i64
  %199 = call i64 @safe_sub_func_int64_t_s_s(i64 %147, i64 %198)
  %200 = icmp ne i64 %145, %199
  %201 = zext i1 %200 to i32
  %202 = load i8*, i8** %l_446, align 8, !tbaa !5
  %203 = load i8, i8* %202, align 1, !tbaa !9
  %204 = zext i8 %203 to i32
  %205 = xor i32 %204, %201
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %202, align 1, !tbaa !9
  %207 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %206, i8 zeroext -1)
  %208 = zext i8 %207 to i64
  %209 = bitcast %union.U1* %p_46 to i64*
  %210 = load i64, i64* %209, align 8, !tbaa !7
  %211 = and i64 %208, %210
  %212 = icmp ne i64 %211, 0
  br label %213

; <label>:213                                     ; preds = %171, %139
  %214 = phi i1 [ true, %139 ], [ %212, %171 ]
  %215 = zext i1 %214 to i32
  %216 = trunc i32 %215 to i16
  %217 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %216, i32 1)
  %218 = trunc i16 %217 to i8
  %219 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %218, i8 signext 44)
  %220 = sext i8 %219 to i32
  %221 = bitcast %union.U1* %p_46 to i8*
  %222 = load i8, i8* %221, align 1, !tbaa !9
  %223 = sext i8 %222 to i32
  %224 = icmp sle i32 %220, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 @safe_sub_func_int32_t_s_s(i32 0, i32 %225)
  %227 = sext i32 %226 to i64
  %228 = load i8, i8* getelementptr inbounds ([8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i64 7, i64 3), align 1, !tbaa !9
  %229 = sext i8 %228 to i64
  %230 = call i64 @safe_div_func_uint64_t_u_u(i64 %227, i64 %229)
  %231 = load i64, i64* @g_145, align 8, !tbaa !7
  %232 = and i64 %230, %231
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %375

; <label>:234                                     ; preds = %213
  %235 = bitcast i32*** %l_463 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %235) #1
  store i32** null, i32*** %l_463, align 8, !tbaa !5
  %236 = bitcast i32* %l_465 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %236) #1
  store i32 -1702044350, i32* %l_465, align 4, !tbaa !1
  %237 = bitcast i32* %l_472 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %237) #1
  store i32 -1, i32* %l_472, align 4, !tbaa !1
  store i64 -3, i64* @g_145, align 8, !tbaa !7
  br label %238

; <label>:238                                     ; preds = %364, %234
  %239 = load i64, i64* @g_145, align 8, !tbaa !7
  %240 = icmp ule i64 %239, 26
  br i1 %240, label %241, label %367

; <label>:241                                     ; preds = %238
  %242 = bitcast [8 x i16]* %l_449 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %242) #1
  %243 = bitcast [8 x i16]* %l_449 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %243, i8* bitcast ([8 x i16]* @func_43.l_449 to i8*), i64 16, i32 16, i1 false)
  %244 = bitcast i32**** %l_464 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %244) #1
  store i32*** %l_68, i32**** %l_464, align 8, !tbaa !5
  %245 = bitcast i32** %l_466 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %245) #1
  store i32* @g_87, i32** %l_466, align 8, !tbaa !5
  %246 = bitcast i16** %l_469 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %246) #1
  store i16* @g_470, i16** %l_469, align 8, !tbaa !5
  %247 = bitcast i8** %l_471 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %247) #1
  store i8* null, i8** %l_471, align 8, !tbaa !5
  %248 = bitcast i64** %l_474 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %248) #1
  store i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), i64** %l_474, align 8, !tbaa !5
  %249 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %249) #1
  %250 = load volatile i32*, i32** @g_399, align 8, !tbaa !5
  store i32 0, i32* %250, align 4, !tbaa !1
  %251 = getelementptr inbounds [8 x i16], [8 x i16]* %l_449, i32 0, i64 1
  %252 = load i16, i16* %251, align 2, !tbaa !10
  %253 = icmp ne i16 %252, 0
  br i1 %253, label %254, label %255

; <label>:254                                     ; preds = %241
  store i32 11, i32* %6
  br label %355

; <label>:255                                     ; preds = %241
  %256 = bitcast %union.U1* %p_46 to i8*
  %257 = load i8, i8* %256, align 1, !tbaa !9
  %258 = sext i8 %257 to i16
  %259 = bitcast %union.U1* %p_46 to i64*
  %260 = load i64, i64* %259, align 8, !tbaa !7
  %261 = load i16*, i16** %l_443, align 8, !tbaa !5
  %262 = load i16, i16* %261, align 2, !tbaa !10
  %263 = sext i16 %262 to i64
  %264 = and i64 %263, %260
  %265 = trunc i64 %264 to i16
  store i16 %265, i16* %261, align 2, !tbaa !10
  %266 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %258, i16 signext %265)
  %267 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %266, i16 zeroext 1)
  %268 = load i32**, i32*** %l_463, align 8, !tbaa !5
  %269 = load i32***, i32**** %l_464, align 8, !tbaa !5
  store i32** %l_73, i32*** %269, align 8, !tbaa !5
  %270 = icmp eq i32** %268, %l_73
  %271 = zext i1 %270 to i32
  %272 = trunc i32 %271 to i8
  %273 = load i32, i32* %l_465, align 4, !tbaa !1
  %274 = trunc i32 %273 to i8
  %275 = load i8*, i8** %l_446, align 8, !tbaa !5
  store i8 %274, i8* %275, align 1, !tbaa !9
  %276 = zext i8 %274 to i32
  %277 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %272, i32 %276)
  %278 = sext i8 %277 to i16
  %279 = load i32*, i32** %l_466, align 8, !tbaa !5
  %280 = load i32, i32* %279, align 4, !tbaa !1
  %281 = zext i32 %280 to i64
  %282 = or i64 %281, 2264831763
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %279, align 4, !tbaa !1
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %309

; <label>:285                                     ; preds = %255
  %286 = bitcast %union.U1* %p_46 to i64*
  %287 = load i64, i64* %286, align 8, !tbaa !7
  %288 = trunc i64 %287 to i8
  %289 = bitcast %union.U1* %p_46 to i8*
  %290 = load i8, i8* %289, align 1, !tbaa !9
  %291 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %288, i8 zeroext %290)
  %292 = zext i8 %291 to i32
  %293 = load i16*, i16** %l_469, align 8, !tbaa !5
  %294 = load i16, i16* %293, align 2, !tbaa !10
  %295 = zext i16 %294 to i32
  %296 = and i32 %295, %292
  %297 = trunc i32 %296 to i16
  store i16 %297, i16* %293, align 2, !tbaa !10
  %298 = zext i16 %297 to i64
  %299 = icmp sle i64 %298, 260
  %300 = zext i1 %299 to i32
  %301 = load i8*, i8** %l_471, align 8, !tbaa !5
  store i8* %301, i8** @g_47, align 8, !tbaa !5
  %302 = icmp eq i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 1), %301
  %303 = zext i1 %302 to i32
  %304 = sext i32 %303 to i64
  %305 = bitcast %union.U1* %p_46 to i64*
  %306 = load i64, i64* %305, align 8, !tbaa !7
  %307 = icmp eq i64 %304, %306
  %308 = zext i1 %307 to i32
  store i32 %308, i32* %l_472, align 4, !tbaa !1
  br label %309

; <label>:309                                     ; preds = %285, %255
  %310 = phi i1 [ false, %255 ], [ %307, %285 ]
  %311 = zext i1 %310 to i32
  %312 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @func_43.l_473, i32 0, i64 0), align 4, !tbaa !1
  %313 = trunc i32 %312 to i16
  %314 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %278, i16 signext %313)
  %315 = sext i16 %314 to i32
  %316 = load i32, i32* @g_51, align 4, !tbaa !1
  %317 = icmp sge i32 %315, %316
  %318 = zext i1 %317 to i32
  %319 = sext i32 %318 to i64
  %320 = or i64 %319, 44038
  %321 = load i64*, i64** %l_474, align 8, !tbaa !5
  %322 = load i64, i64* %321, align 8, !tbaa !7
  %323 = or i64 %322, %320
  store i64 %323, i64* %321, align 8, !tbaa !7
  %324 = load i32, i32* @g_426, align 4, !tbaa !1
  %325 = zext i32 %324 to i64
  %326 = and i64 %323, %325
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %329

; <label>:328                                     ; preds = %309
  br label %329

; <label>:329                                     ; preds = %328, %309
  %330 = phi i1 [ false, %309 ], [ true, %328 ]
  %331 = zext i1 %330 to i32
  %332 = trunc i32 %331 to i16
  %333 = bitcast %union.U1* %p_46 to i64*
  %334 = load i64, i64* %333, align 8, !tbaa !7
  %335 = trunc i64 %334 to i32
  %336 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %332, i32 %335)
  %337 = zext i16 %336 to i64
  %338 = getelementptr inbounds [8 x i16], [8 x i16]* %l_449, i32 0, i64 4
  %339 = load i16, i16* %338, align 2, !tbaa !10
  %340 = sext i16 %339 to i64
  %341 = call i64 @safe_div_func_uint64_t_u_u(i64 %337, i64 %340)
  %342 = trunc i64 %341 to i32
  %343 = call i32 @safe_unary_minus_func_int32_t_s(i32 %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %348, label %345

; <label>:345                                     ; preds = %329
  %346 = load i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), align 8, !tbaa !7
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %351

; <label>:348                                     ; preds = %345, %329
  %349 = load i32, i32* @g_377, align 4, !tbaa !1
  %350 = icmp ne i32 %349, 0
  br label %351

; <label>:351                                     ; preds = %348, %345
  %352 = phi i1 [ false, %345 ], [ %350, %348 ]
  %353 = zext i1 %352 to i32
  %354 = load volatile i32*, i32** @g_407, align 8, !tbaa !5
  store i32 807695679, i32* %354, align 4, !tbaa !1
  store i32 0, i32* %6
  br label %355

; <label>:355                                     ; preds = %351, %254
  %356 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %356) #1
  %357 = bitcast i64** %l_474 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %357) #1
  %358 = bitcast i8** %l_471 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #1
  %359 = bitcast i16** %l_469 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #1
  %360 = bitcast i32** %l_466 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %360) #1
  %361 = bitcast i32**** %l_464 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %361) #1
  %362 = bitcast [8 x i16]* %l_449 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %362) #1
  %cleanup.dest = load i32, i32* %6
  switch i32 %cleanup.dest, label %743 [
    i32 0, label %363
    i32 11, label %364
  ]

; <label>:363                                     ; preds = %355
  br label %364

; <label>:364                                     ; preds = %363, %355
  %365 = load i64, i64* @g_145, align 8, !tbaa !7
  %366 = add i64 %365, 1
  store i64 %366, i64* @g_145, align 8, !tbaa !7
  br label %238

; <label>:367                                     ; preds = %238
  %368 = load %union.U1*, %union.U1** %l_475, align 8, !tbaa !5
  %369 = icmp ne %union.U1* @g_49, %368
  %370 = zext i1 %369 to i32
  %371 = load volatile i32*, i32** @g_399, align 8, !tbaa !5
  store i32 %370, i32* %371, align 4, !tbaa !1
  %372 = bitcast i32* %l_472 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %372) #1
  %373 = bitcast i32* %l_465 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %373) #1
  %374 = bitcast i32*** %l_463 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %374) #1
  br label %444

; <label>:375                                     ; preds = %213
  %376 = bitcast i8** %l_481 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %376) #1
  store i8* null, i8** %l_481, align 8, !tbaa !5
  %377 = bitcast i64** %l_482 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %377) #1
  store i64* null, i64** %l_482, align 8, !tbaa !5
  %378 = bitcast [6 x i64*]* %l_483 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %378) #1
  %379 = bitcast [6 x i64*]* %l_483 to i8*
  call void @llvm.memset.p0i8.i64(i8* %379, i8 0, i64 48, i32 16, i1 false)
  %380 = bitcast i32* %l_485 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %380) #1
  store i32 -1951090941, i32* %l_485, align 4, !tbaa !1
  %381 = bitcast i32* %l_486 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %381) #1
  store i32 -376934622, i32* %l_486, align 4, !tbaa !1
  %382 = bitcast i32* %l_490 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %382) #1
  store i32 -29123401, i32* %l_490, align 4, !tbaa !1
  %383 = bitcast %union.U1*** %l_491 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %383) #1
  store %union.U1** %l_475, %union.U1*** %l_491, align 8, !tbaa !5
  %384 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %384) #1
  %385 = load i8*, i8** %l_446, align 8, !tbaa !5
  %386 = load i8*, i8** %l_481, align 8, !tbaa !5
  %387 = icmp ne i8* %385, %386
  %388 = zext i1 %387 to i32
  %389 = trunc i32 %388 to i8
  store i8 %389, i8* %l_484, align 1, !tbaa !9
  %390 = zext i8 %389 to i64
  store i64 -8, i64* @g_145, align 8, !tbaa !7
  br i1 true, label %391, label %396

; <label>:391                                     ; preds = %375
  %392 = load i32, i32* @g_38, align 4, !tbaa !1
  %393 = load i32, i32* %l_485, align 4, !tbaa !1
  %394 = and i32 %393, %392
  store i32 %394, i32* %l_485, align 4, !tbaa !1
  %395 = icmp ne i32 %394, 0
  br label %396

; <label>:396                                     ; preds = %391, %375
  %397 = phi i1 [ false, %375 ], [ %395, %391 ]
  %398 = zext i1 %397 to i32
  %399 = sext i32 %398 to i64
  %400 = call i64 @safe_mod_func_uint64_t_u_u(i64 %390, i64 %399)
  %401 = trunc i64 %400 to i16
  %402 = load i32, i32* %l_486, align 4, !tbaa !1
  %403 = trunc i32 %402 to i16
  %404 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %401, i16 signext %403)
  %405 = sext i16 %404 to i32
  %406 = getelementptr inbounds [6 x i8*], [6 x i8*]* %l_279, i32 0, i64 3
  %407 = load i8*, i8** %406, align 8, !tbaa !5
  %408 = icmp ne i8* %407, null
  %409 = zext i1 %408 to i32
  %410 = load %union.U1*, %union.U1** %l_475, align 8, !tbaa !5
  %411 = bitcast %union.U1* %410 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %411, i8* bitcast (%union.U1* @g_49 to i8*), i64 8, i32 8, i1 false), !tbaa.struct !13
  %412 = bitcast %union.U1* %410 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%union.U1* getelementptr inbounds ([6 x [10 x [4 x %union.U1]]], [6 x [10 x [4 x %union.U1]]]* @g_489, i32 0, i64 0, i64 0, i64 2) to i8*), i8* %412, i64 8, i32 8, i1 false), !tbaa.struct !13
  %413 = bitcast %union.U1* %p_46 to i8*
  %414 = load i8, i8* %413, align 1, !tbaa !9
  %415 = bitcast %union.U1* %p_46 to i8*
  %416 = load i8, i8* %415, align 1, !tbaa !9
  %417 = sext i8 %416 to i32
  %418 = load i32, i32* %l_490, align 4, !tbaa !1
  %419 = xor i32 %418, %417
  store i32 %419, i32* %l_490, align 4, !tbaa !1
  store i32 %419, i32* @g_426, align 4, !tbaa !1
  %420 = load i32, i32* %l_490, align 4, !tbaa !1
  %421 = trunc i32 %420 to i8
  %422 = load i8*, i8** %2, align 8, !tbaa !5
  %423 = load i8, i8* %422, align 1, !tbaa !9
  %424 = sext i8 %423 to i32
  %425 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %421, i32 %424)
  %426 = zext i8 %425 to i32
  %427 = icmp sge i32 %409, %426
  %428 = zext i1 %427 to i32
  %429 = icmp sle i32 %405, %428
  %430 = zext i1 %429 to i32
  %431 = load volatile i32*, i32** @g_399, align 8, !tbaa !5
  store i32 %430, i32* %431, align 4, !tbaa !1
  %432 = load %union.U1*, %union.U1** %l_475, align 8, !tbaa !5
  %433 = load %union.U1**, %union.U1*** %l_491, align 8, !tbaa !5
  store %union.U1* %432, %union.U1** %433, align 8, !tbaa !5
  %434 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_352, i32 0, i64 1), align 4, !tbaa !1
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %1
  store i32 1, i32* %6
  %436 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %436) #1
  %437 = bitcast %union.U1*** %l_491 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %437) #1
  %438 = bitcast i32* %l_490 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %438) #1
  %439 = bitcast i32* %l_486 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %439) #1
  %440 = bitcast i32* %l_485 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %440) #1
  %441 = bitcast [6 x i64*]* %l_483 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %441) #1
  %442 = bitcast i64** %l_482 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %442) #1
  %443 = bitcast i8** %l_481 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %443) #1
  br label %712

; <label>:444                                     ; preds = %367
  %445 = load i16*, i16** %l_494, align 8, !tbaa !5
  %446 = load i16, i16* %445, align 2, !tbaa !10
  %447 = add i16 %446, -1
  store i16 %447, i16* %445, align 2, !tbaa !10
  %448 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %447, i32 4)
  %449 = zext i16 %448 to i32
  %450 = load i8, i8* @g_392, align 1, !tbaa !9
  %451 = sext i8 %450 to i16
  store i16 %451, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), align 2, !tbaa !10
  %452 = sext i16 %451 to i32
  %453 = icmp eq i32 %449, %452
  %454 = zext i1 %453 to i32
  %455 = sext i32 %454 to i64
  %456 = bitcast %union.U1* %p_46 to i64*
  %457 = load i64, i64* %456, align 8, !tbaa !7
  %458 = icmp ne i64 %455, %457
  %459 = zext i1 %458 to i32
  %460 = sext i32 %459 to i64
  %461 = icmp eq i64 %460, -7
  %462 = zext i1 %461 to i32
  %463 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), align 1, !tbaa !9
  %464 = bitcast %union.U1* %p_46 to i64*
  %465 = load i64, i64* %464, align 8, !tbaa !7
  %466 = bitcast %union.U1* %p_46 to i64*
  %467 = load i64, i64* %466, align 8, !tbaa !7
  %468 = load i32****, i32***** %l_499, align 8, !tbaa !5
  %469 = icmp ne i32**** %468, null
  %470 = zext i1 %469 to i32
  %471 = sext i32 %470 to i64
  %472 = icmp sle i64 %471, 244660396
  %473 = zext i1 %472 to i32
  %474 = load i32, i32* @g_4, align 4, !tbaa !1
  %475 = icmp sge i32 %473, %474
  %476 = zext i1 %475 to i32
  %477 = sext i32 %476 to i64
  %478 = xor i64 1107983164, %477
  %479 = xor i64 0, %478
  %480 = icmp slt i64 %479, 1
  %481 = zext i1 %480 to i32
  %482 = bitcast %union.U1* %p_46 to i64*
  %483 = load i64, i64* %482, align 8, !tbaa !7
  %484 = trunc i64 %483 to i16
  %485 = call i64 @func_64(i16 zeroext %484)
  %486 = getelementptr %union.U1, %union.U1* %7, i32 0, i32 0
  store i64 %485, i64* %486, align 8
  %487 = bitcast %union.U1* %p_46 to i8*
  %488 = load i8, i8* %487, align 1, !tbaa !9
  %489 = sext i8 %488 to i16
  %490 = bitcast %union.U1* %p_46 to i8*
  %491 = load i8, i8* %490, align 1, !tbaa !9
  %492 = sext i8 %491 to i32
  %493 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %489, i32 %492)
  %494 = zext i16 %493 to i64
  %495 = bitcast %union.U1* %p_46 to i64*
  %496 = load i64, i64* %495, align 8, !tbaa !7
  %497 = or i64 %494, %496
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %664

; <label>:499                                     ; preds = %444
  %500 = bitcast i64* %l_512 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %500) #1
  store i64 -1823934536161450804, i64* %l_512, align 8, !tbaa !7
  %501 = bitcast i32* %l_526 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %501) #1
  store i32 4, i32* %l_526, align 4, !tbaa !1
  %502 = bitcast i32* %l_527 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %502) #1
  store i32 -3, i32* %l_527, align 4, !tbaa !1
  %503 = bitcast i32* %l_528 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %503) #1
  store i32 -6, i32* %l_528, align 4, !tbaa !1
  %504 = bitcast i32* %l_529 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %504) #1
  store i32 388258680, i32* %l_529, align 4, !tbaa !1
  %505 = bitcast i32* %l_531 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %505) #1
  store i32 1, i32* %l_531, align 4, !tbaa !1
  %506 = bitcast i16* %l_532 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %506) #1
  store i16 19939, i16* %l_532, align 2, !tbaa !10
  %507 = bitcast [4 x i32]* %l_533 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %507) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_534) #1
  store i8 -1, i8* %l_534, align 1, !tbaa !9
  %508 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %508) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %509

; <label>:509                                     ; preds = %516, %499
  %510 = load i32, i32* %i3, align 4, !tbaa !1
  %511 = icmp slt i32 %510, 4
  br i1 %511, label %512, label %519

; <label>:512                                     ; preds = %509
  %513 = load i32, i32* %i3, align 4, !tbaa !1
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [4 x i32], [4 x i32]* %l_533, i32 0, i64 %514
  store i32 3, i32* %515, align 4, !tbaa !1
  br label %516

; <label>:516                                     ; preds = %512
  %517 = load i32, i32* %i3, align 4, !tbaa !1
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %i3, align 4, !tbaa !1
  br label %509

; <label>:519                                     ; preds = %509
  %520 = load i32**, i32*** %l_96, align 8, !tbaa !5
  %521 = load i32*, i32** %520, align 8, !tbaa !5
  %522 = load i32**, i32*** %l_96, align 8, !tbaa !5
  store i32* %521, i32** %522, align 8, !tbaa !5
  %523 = load i16*, i16** %l_494, align 8, !tbaa !5
  %524 = icmp eq i16* %523, null
  %525 = zext i1 %524 to i32
  %526 = bitcast %union.U1* %p_46 to i64*
  %527 = load i64, i64* %526, align 8, !tbaa !7
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %529, label %631

; <label>:529                                     ; preds = %519
  %530 = bitcast i8** %l_522 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %530) #1
  store i8* getelementptr inbounds ([8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i64 1, i64 4), i8** %l_522, align 8, !tbaa !5
  %531 = bitcast [5 x [3 x i32]]* %l_525 to i8*
  call void @llvm.lifetime.start(i64 60, i8* %531) #1
  %532 = bitcast [5 x [3 x i32]]* %l_525 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %532, i8* bitcast ([5 x [3 x i32]]* @func_43.l_525 to i8*), i64 60, i32 16, i1 false)
  %533 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %533) #1
  %534 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %534) #1
  %535 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i64 2), align 1, !tbaa !9
  %536 = zext i8 %535 to i32
  %537 = load volatile i32, i32* @g_396, align 4, !tbaa !1
  %538 = load i8, i8* bitcast (%union.U1* getelementptr inbounds ([6 x [10 x [4 x %union.U1]]], [6 x [10 x [4 x %union.U1]]]* @g_489, i32 0, i64 0, i64 0, i64 2) to i8*), align 1, !tbaa !9
  %539 = sext i8 %538 to i32
  %540 = load i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), align 8, !tbaa !7
  %541 = trunc i64 %540 to i16
  %542 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %541, i32 15)
  %543 = zext i16 %542 to i32
  %544 = and i32 %539, %543
  %545 = trunc i32 %544 to i16
  %546 = load i64, i64* %l_512, align 8, !tbaa !7
  store i64 %546, i64* @g_513, align 8, !tbaa !7
  %547 = trunc i64 %546 to i8
  %548 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %547, i32 2)
  %549 = zext i8 %548 to i16
  %550 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %545, i16 signext %549)
  %551 = sext i16 %550 to i32
  %552 = icmp uge i32 %537, %551
  %553 = zext i1 %552 to i32
  %554 = xor i32 %553, -1
  %555 = sext i32 %554 to i64
  %556 = load i8*, i8** %l_522, align 8, !tbaa !5
  %557 = icmp eq i8* null, %556
  %558 = zext i1 %557 to i32
  %559 = load i32, i32* @g_38, align 4, !tbaa !1
  %560 = call i32 @safe_div_func_int32_t_s_s(i32 %558, i32 %559)
  %561 = trunc i32 %560 to i16
  %562 = bitcast %union.U1* %p_46 to i64*
  %563 = load i64, i64* %562, align 8, !tbaa !7
  %564 = trunc i64 %563 to i16
  %565 = bitcast %union.U1* %p_46 to i64*
  %566 = load i64, i64* %565, align 8, !tbaa !7
  %567 = trunc i64 %566 to i32
  %568 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %564, i32 %567)
  %569 = zext i16 %568 to i64
  %570 = icmp ule i64 %569, -8906257781038519187
  br i1 %570, label %571, label %572

; <label>:571                                     ; preds = %529
  br label %572

; <label>:572                                     ; preds = %571, %529
  %573 = phi i1 [ false, %529 ], [ true, %571 ]
  %574 = zext i1 %573 to i32
  %575 = trunc i32 %574 to i16
  %576 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %561, i16 signext %575)
  %577 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), align 2, !tbaa !10
  %578 = sext i16 %577 to i64
  %579 = icmp sle i64 2655249196, %578
  %580 = zext i1 %579 to i32
  %581 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_280, i32 0, i64 3), align 1, !tbaa !9
  %582 = sext i8 %581 to i32
  %583 = icmp sge i32 %580, %582
  %584 = zext i1 %583 to i32
  %585 = trunc i32 %584 to i8
  %586 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* %l_525, i32 0, i64 4
  %587 = getelementptr inbounds [3 x i32], [3 x i32]* %586, i32 0, i64 2
  %588 = load i32, i32* %587, align 4, !tbaa !1
  %589 = trunc i32 %588 to i8
  %590 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %585, i8 zeroext %589)
  br i1 true, label %592, label %591

; <label>:591                                     ; preds = %572
  br label %592

; <label>:592                                     ; preds = %591, %572
  %593 = phi i1 [ true, %572 ], [ true, %591 ]
  %594 = zext i1 %593 to i32
  %595 = sext i32 %594 to i64
  %596 = bitcast %union.U1* %p_46 to i64*
  %597 = load i64, i64* %596, align 8, !tbaa !7
  %598 = and i64 %595, %597
  %599 = bitcast %union.U1* %p_46 to i64*
  %600 = load i64, i64* %599, align 8, !tbaa !7
  %601 = icmp sge i64 %598, %600
  %602 = zext i1 %601 to i32
  %603 = trunc i32 %602 to i16
  %604 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* %l_525, i32 0, i64 2
  %605 = getelementptr inbounds [3 x i32], [3 x i32]* %604, i32 0, i64 2
  %606 = load i32, i32* %605, align 4, !tbaa !1
  %607 = trunc i32 %606 to i16
  %608 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %603, i16 signext %607)
  %609 = icmp sge i64 %555, 0
  %610 = zext i1 %609 to i32
  %611 = trunc i32 %610 to i16
  %612 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* %l_525, i32 0, i64 3
  %613 = getelementptr inbounds [3 x i32], [3 x i32]* %612, i32 0, i64 1
  %614 = load i32, i32* %613, align 4, !tbaa !1
  %615 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %611, i32 %614)
  %616 = trunc i16 %615 to i8
  %617 = bitcast %union.U1* %p_46 to i64*
  %618 = load i64, i64* %617, align 8, !tbaa !7
  %619 = trunc i64 %618 to i8
  %620 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %616, i8 signext %619)
  %621 = sext i8 %620 to i32
  %622 = icmp eq i32 %536, %621
  %623 = zext i1 %622 to i32
  %624 = xor i32 %623, -1
  store i32 %624, i32* %l_526, align 4, !tbaa !1
  %625 = load i8, i8* %l_534, align 1, !tbaa !9
  %626 = add i8 %625, -1
  store i8 %626, i8* %l_534, align 1, !tbaa !9
  %627 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %627) #1
  %628 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %628) #1
  %629 = bitcast [5 x [3 x i32]]* %l_525 to i8*
  call void @llvm.lifetime.end(i64 60, i8* %629) #1
  %630 = bitcast i8** %l_522 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %630) #1
  br label %648

; <label>:631                                     ; preds = %519
  store i16 28, i16* @g_470, align 2, !tbaa !10
  br label %632

; <label>:632                                     ; preds = %642, %631
  %633 = load i16, i16* @g_470, align 2, !tbaa !10
  %634 = zext i16 %633 to i32
  %635 = icmp eq i32 %634, 48
  br i1 %635, label %636, label %645

; <label>:636                                     ; preds = %632
  %637 = bitcast i32* %l_539 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %637) #1
  store i32 -1743752091, i32* %l_539, align 4, !tbaa !1
  %638 = load i32, i32* %l_539, align 4, !tbaa !1
  %639 = add i32 %638, -1
  store i32 %639, i32* %l_539, align 4, !tbaa !1
  %640 = load volatile i64, i64* getelementptr inbounds ([10 x %union.U2], [10 x %union.U2]* @g_424, i32 0, i64 4, i32 0), align 8, !tbaa !7
  store i64 %640, i64* %1
  store i32 1, i32* %6
  %641 = bitcast i32* %l_539 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %641) #1
  br label %653
                                                  ; No predecessors!
  %643 = load i16, i16* @g_470, align 2, !tbaa !10
  %644 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %643, i16 zeroext 2)
  store i16 %644, i16* @g_470, align 2, !tbaa !10
  br label %632

; <label>:645                                     ; preds = %632
  %646 = bitcast %union.U1* %p_46 to i64*
  %647 = load i64, i64* %646, align 8, !tbaa !7
  store i64 %647, i64* %1
  store i32 1, i32* %6
  br label %653

; <label>:648                                     ; preds = %592
  %649 = load i32, i32* @g_426, align 4, !tbaa !1
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %652

; <label>:651                                     ; preds = %648
  store i32 8, i32* %6
  br label %653

; <label>:652                                     ; preds = %648
  store i32 0, i32* %6
  br label %653

; <label>:653                                     ; preds = %652, %651, %645, %636
  %654 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %654) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_534) #1
  %655 = bitcast [4 x i32]* %l_533 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %655) #1
  %656 = bitcast i16* %l_532 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %656) #1
  %657 = bitcast i32* %l_531 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %657) #1
  %658 = bitcast i32* %l_529 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %658) #1
  %659 = bitcast i32* %l_528 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %659) #1
  %660 = bitcast i32* %l_527 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %660) #1
  %661 = bitcast i32* %l_526 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %661) #1
  %662 = bitcast i64* %l_512 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %662) #1
  %cleanup.dest.6 = load i32, i32* %6
  switch i32 %cleanup.dest.6, label %712 [
    i32 0, label %663
    i32 8, label %139
  ]

; <label>:663                                     ; preds = %653
  br label %708

; <label>:664                                     ; preds = %444
  %665 = bitcast i32* %l_543 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %665) #1
  store i32 1, i32* %l_543, align 4, !tbaa !1
  %666 = bitcast [10 x [2 x [9 x i32]]]* %l_544 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %666) #1
  %667 = bitcast [10 x [2 x [9 x i32]]]* %l_544 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %667, i8* bitcast ([10 x [2 x [9 x i32]]]* @func_43.l_544 to i8*), i64 720, i32 16, i1 false)
  %668 = bitcast i16* %l_555 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %668) #1
  store i16 -1, i16* %l_555, align 2, !tbaa !10
  %669 = bitcast [8 x [7 x [4 x i32]]]* %l_588 to i8*
  call void @llvm.lifetime.start(i64 896, i8* %669) #1
  %670 = bitcast [8 x [7 x [4 x i32]]]* %l_588 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %670, i8* bitcast ([8 x [7 x [4 x i32]]]* @func_43.l_588 to i8*), i64 896, i32 16, i1 false)
  %671 = bitcast i32** %l_592 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %671) #1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_547, i32 0, i64 1), i32** %l_592, align 8, !tbaa !5
  %672 = bitcast [7 x i8]* %l_594 to i8*
  call void @llvm.lifetime.start(i64 7, i8* %672) #1
  %673 = bitcast [7 x i8]* %l_594 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %673, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @func_43.l_594, i32 0, i32 0), i64 7, i32 1, i1 false)
  %674 = bitcast i8** %l_647 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %674) #1
  store i8* %l_556, i8** %l_647, align 8, !tbaa !5
  %675 = bitcast i8*** %l_752 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %675) #1
  %676 = getelementptr inbounds [6 x i8*], [6 x i8*]* %l_279, i32 0, i64 0
  store i8** %676, i8*** %l_752, align 8, !tbaa !5
  %677 = bitcast [5 x [8 x i32]]* %l_780 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %677) #1
  %678 = bitcast [5 x [8 x i32]]* %l_780 to i8*
  call void @llvm.memset.p0i8.i64(i8* %678, i8 0, i64 160, i32 16, i1 false)
  %679 = bitcast %union.U0** %l_783 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %679) #1
  store %union.U0* bitcast ({ i16, [6 x i8] }* @g_480 to %union.U0*), %union.U0** %l_783, align 8, !tbaa !5
  %680 = bitcast i32**** %l_792 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %680) #1
  store i32*** %l_68, i32**** %l_792, align 8, !tbaa !5
  %681 = bitcast i32***** %l_791 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %681) #1
  store i32**** %l_792, i32***** %l_791, align 8, !tbaa !5
  %682 = bitcast i32****** %l_793 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %682) #1
  store i32***** %l_791, i32****** %l_793, align 8, !tbaa !5
  %683 = bitcast i64* %l_804 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %683) #1
  store i64 -4, i64* %l_804, align 8, !tbaa !7
  %684 = bitcast i64* %l_805 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %684) #1
  store i64 -3164284697313777651, i64* %l_805, align 8, !tbaa !7
  %685 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %685) #1
  %686 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %686) #1
  %687 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %687) #1
  %688 = load i16, i16* %l_548, align 2, !tbaa !10
  %689 = add i16 %688, -1
  store i16 %689, i16* %l_548, align 2, !tbaa !10
  %690 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %690) #1
  %691 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %691) #1
  %692 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %692) #1
  %693 = bitcast i64* %l_805 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %693) #1
  %694 = bitcast i64* %l_804 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %694) #1
  %695 = bitcast i32****** %l_793 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %695) #1
  %696 = bitcast i32***** %l_791 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %696) #1
  %697 = bitcast i32**** %l_792 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %697) #1
  %698 = bitcast %union.U0** %l_783 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %698) #1
  %699 = bitcast [5 x [8 x i32]]* %l_780 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %699) #1
  %700 = bitcast i8*** %l_752 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %700) #1
  %701 = bitcast i8** %l_647 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %701) #1
  %702 = bitcast [7 x i8]* %l_594 to i8*
  call void @llvm.lifetime.end(i64 7, i8* %702) #1
  %703 = bitcast i32** %l_592 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %703) #1
  %704 = bitcast [8 x [7 x [4 x i32]]]* %l_588 to i8*
  call void @llvm.lifetime.end(i64 896, i8* %704) #1
  %705 = bitcast i16* %l_555 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %705) #1
  %706 = bitcast [10 x [2 x [9 x i32]]]* %l_544 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %706) #1
  %707 = bitcast i32* %l_543 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %707) #1
  br label %708

; <label>:708                                     ; preds = %664, %663
  %709 = bitcast %union.U1* %p_46 to i8*
  %710 = load i8, i8* %709, align 1, !tbaa !9
  %711 = sext i8 %710 to i64
  store i64 %711, i64* %1
  store i32 1, i32* %6
  br label %712

; <label>:712                                     ; preds = %708, %653, %396
  %713 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %713) #1
  %714 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %714) #1
  %715 = bitcast i32*** %l_919 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %715) #1
  %716 = bitcast i32** %l_920 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %716) #1
  %717 = bitcast i16** %l_779 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %717) #1
  %718 = bitcast [7 x i16**]* %l_775 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %718) #1
  %719 = bitcast i32* %l_712 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %719) #1
  %720 = bitcast [10 x i16]* %l_585 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %720) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_556) #1
  %721 = bitcast i16* %l_548 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %721) #1
  %722 = bitcast i32***** %l_499 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %722) #1
  %723 = bitcast i16** %l_494 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %723) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_484) #1
  %724 = bitcast %union.U1** %l_475 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %724) #1
  %725 = bitcast i8** %l_446 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %725) #1
  %726 = bitcast i16** %l_443 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %726) #1
  %727 = bitcast i16** %l_442 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %727) #1
  %728 = bitcast i16** %l_441 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %728) #1
  %729 = bitcast [3 x i32]* %l_440 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %729) #1
  %730 = bitcast i32* %l_427 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %730) #1
  %731 = bitcast [6 x i8*]* %l_279 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %731) #1
  %732 = bitcast i32*** %l_96 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %732) #1
  %733 = bitcast i32*** %l_95 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %733) #1
  %734 = bitcast i32** %l_74 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %734) #1
  %735 = bitcast [2 x i32**]* %l_72 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %735) #1
  %736 = bitcast i32** %l_73 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %736) #1
  %737 = bitcast i32*** %l_71 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %737) #1
  %738 = bitcast i32*** %l_69 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %738) #1
  %739 = bitcast i32** %l_70 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %739) #1
  %740 = bitcast i32*** %l_68 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %740) #1
  %741 = bitcast [7 x [6 x i32*]]* %l_50 to i8*
  call void @llvm.lifetime.end(i64 336, i8* %741) #1
  %742 = load i64, i64* %1
  ret i64 %742

; <label>:743                                     ; preds = %355
  unreachable
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
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal i64 @func_64(i16 zeroext %p_65) #0 {
  %1 = alloca %union.U1, align 8
  %2 = alloca i16, align 2
  %l_84 = alloca i32*, align 8
  %l_85 = alloca i32, align 4
  %l_86 = alloca [2 x [6 x [5 x i32*]]], align 16
  %l_90 = alloca %union.U1, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i16 %p_65, i16* %2, align 2, !tbaa !10
  %3 = bitcast i32** %l_84 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* null, i32** %l_84, align 8, !tbaa !5
  %4 = bitcast i32* %l_85 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 8, i32* %l_85, align 4, !tbaa !1
  %5 = bitcast [2 x [6 x [5 x i32*]]]* %l_86 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %5) #1
  %6 = getelementptr inbounds [2 x [6 x [5 x i32*]]], [2 x [6 x [5 x i32*]]]* %l_86, i64 0, i64 0
  %7 = getelementptr inbounds [6 x [5 x i32*]], [6 x [5 x i32*]]* %6, i64 0, i64 0
  %8 = getelementptr inbounds [5 x i32*], [5 x i32*]* %7, i64 0, i64 0
  store i32* null, i32** %8, !tbaa !5
  %9 = getelementptr inbounds i32*, i32** %8, i64 1
  store i32* @g_4, i32** %9, !tbaa !5
  %10 = getelementptr inbounds i32*, i32** %9, i64 1
  store i32* null, i32** %10, !tbaa !5
  %11 = getelementptr inbounds i32*, i32** %10, i64 1
  store i32* @g_4, i32** %11, !tbaa !5
  %12 = getelementptr inbounds i32*, i32** %11, i64 1
  store i32* null, i32** %12, !tbaa !5
  %13 = getelementptr inbounds [5 x i32*], [5 x i32*]* %7, i64 1
  %14 = getelementptr inbounds [5 x i32*], [5 x i32*]* %13, i64 0, i64 0
  store i32* %l_85, i32** %14, !tbaa !5
  %15 = getelementptr inbounds i32*, i32** %14, i64 1
  store i32* %l_85, i32** %15, !tbaa !5
  %16 = getelementptr inbounds i32*, i32** %15, i64 1
  store i32* @g_51, i32** %16, !tbaa !5
  %17 = getelementptr inbounds i32*, i32** %16, i64 1
  store i32* @g_51, i32** %17, !tbaa !5
  %18 = getelementptr inbounds i32*, i32** %17, i64 1
  store i32* %l_85, i32** %18, !tbaa !5
  %19 = getelementptr inbounds [5 x i32*], [5 x i32*]* %13, i64 1
  %20 = getelementptr inbounds [5 x i32*], [5 x i32*]* %19, i64 0, i64 0
  store i32* %l_85, i32** %20, !tbaa !5
  %21 = getelementptr inbounds i32*, i32** %20, i64 1
  store i32* @g_4, i32** %21, !tbaa !5
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  store i32* %l_85, i32** %22, !tbaa !5
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  store i32* @g_4, i32** %23, !tbaa !5
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  store i32* %l_85, i32** %24, !tbaa !5
  %25 = getelementptr inbounds [5 x i32*], [5 x i32*]* %19, i64 1
  %26 = getelementptr inbounds [5 x i32*], [5 x i32*]* %25, i64 0, i64 0
  store i32* %l_85, i32** %26, !tbaa !5
  %27 = getelementptr inbounds i32*, i32** %26, i64 1
  store i32* @g_51, i32** %27, !tbaa !5
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  store i32* @g_51, i32** %28, !tbaa !5
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  store i32* %l_85, i32** %29, !tbaa !5
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  store i32* %l_85, i32** %30, !tbaa !5
  %31 = getelementptr inbounds [5 x i32*], [5 x i32*]* %25, i64 1
  %32 = getelementptr inbounds [5 x i32*], [5 x i32*]* %31, i64 0, i64 0
  store i32* null, i32** %32, !tbaa !5
  %33 = getelementptr inbounds i32*, i32** %32, i64 1
  store i32* @g_4, i32** %33, !tbaa !5
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  store i32* null, i32** %34, !tbaa !5
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  store i32* @g_4, i32** %35, !tbaa !5
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  store i32* null, i32** %36, !tbaa !5
  %37 = getelementptr inbounds [5 x i32*], [5 x i32*]* %31, i64 1
  %38 = getelementptr inbounds [5 x i32*], [5 x i32*]* %37, i64 0, i64 0
  store i32* %l_85, i32** %38, !tbaa !5
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  store i32* %l_85, i32** %39, !tbaa !5
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  store i32* @g_51, i32** %40, !tbaa !5
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  store i32* @g_51, i32** %41, !tbaa !5
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  store i32* %l_85, i32** %42, !tbaa !5
  %43 = getelementptr inbounds [6 x [5 x i32*]], [6 x [5 x i32*]]* %6, i64 1
  %44 = getelementptr inbounds [6 x [5 x i32*]], [6 x [5 x i32*]]* %43, i64 0, i64 0
  %45 = getelementptr inbounds [5 x i32*], [5 x i32*]* %44, i64 0, i64 0
  store i32* %l_85, i32** %45, !tbaa !5
  %46 = getelementptr inbounds i32*, i32** %45, i64 1
  store i32* @g_4, i32** %46, !tbaa !5
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  store i32* %l_85, i32** %47, !tbaa !5
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  store i32* @g_4, i32** %48, !tbaa !5
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  store i32* %l_85, i32** %49, !tbaa !5
  %50 = getelementptr inbounds [5 x i32*], [5 x i32*]* %44, i64 1
  %51 = getelementptr inbounds [5 x i32*], [5 x i32*]* %50, i64 0, i64 0
  store i32* %l_85, i32** %51, !tbaa !5
  %52 = getelementptr inbounds i32*, i32** %51, i64 1
  store i32* @g_51, i32** %52, !tbaa !5
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  store i32* @g_51, i32** %53, !tbaa !5
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  store i32* %l_85, i32** %54, !tbaa !5
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  store i32* %l_85, i32** %55, !tbaa !5
  %56 = getelementptr inbounds [5 x i32*], [5 x i32*]* %50, i64 1
  %57 = getelementptr inbounds [5 x i32*], [5 x i32*]* %56, i64 0, i64 0
  store i32* null, i32** %57, !tbaa !5
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  store i32* @g_4, i32** %58, !tbaa !5
  %59 = getelementptr inbounds i32*, i32** %58, i64 1
  store i32* null, i32** %59, !tbaa !5
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  store i32* @g_4, i32** %60, !tbaa !5
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  store i32* null, i32** %61, !tbaa !5
  %62 = getelementptr inbounds [5 x i32*], [5 x i32*]* %56, i64 1
  %63 = getelementptr inbounds [5 x i32*], [5 x i32*]* %62, i64 0, i64 0
  store i32* %l_85, i32** %63, !tbaa !5
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  store i32* %l_85, i32** %64, !tbaa !5
  %65 = getelementptr inbounds i32*, i32** %64, i64 1
  store i32* @g_51, i32** %65, !tbaa !5
  %66 = getelementptr inbounds i32*, i32** %65, i64 1
  store i32* @g_51, i32** %66, !tbaa !5
  %67 = getelementptr inbounds i32*, i32** %66, i64 1
  store i32* %l_85, i32** %67, !tbaa !5
  %68 = getelementptr inbounds [5 x i32*], [5 x i32*]* %62, i64 1
  %69 = getelementptr inbounds [5 x i32*], [5 x i32*]* %68, i64 0, i64 0
  store i32* %l_85, i32** %69, !tbaa !5
  %70 = getelementptr inbounds i32*, i32** %69, i64 1
  store i32* @g_4, i32** %70, !tbaa !5
  %71 = getelementptr inbounds i32*, i32** %70, i64 1
  store i32* %l_85, i32** %71, !tbaa !5
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  store i32* @g_4, i32** %72, !tbaa !5
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  store i32* %l_85, i32** %73, !tbaa !5
  %74 = getelementptr inbounds [5 x i32*], [5 x i32*]* %68, i64 1
  %75 = getelementptr inbounds [5 x i32*], [5 x i32*]* %74, i64 0, i64 0
  store i32* %l_85, i32** %75, !tbaa !5
  %76 = getelementptr inbounds i32*, i32** %75, i64 1
  store i32* @g_51, i32** %76, !tbaa !5
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  store i32* @g_51, i32** %77, !tbaa !5
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  store i32* %l_85, i32** %78, !tbaa !5
  %79 = getelementptr inbounds i32*, i32** %78, i64 1
  store i32* %l_85, i32** %79, !tbaa !5
  %80 = bitcast %union.U1* %l_90 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = bitcast %union.U1* %l_90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* bitcast (%union.U1* @func_64.l_90 to i8*), i64 8, i32 8, i1 false)
  %82 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  %83 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = load i32, i32* @g_87, align 4, !tbaa !1
  %86 = add i32 %85, -1
  store i32 %86, i32* @g_87, align 4, !tbaa !1
  %87 = bitcast %union.U1* %1 to i8*
  %88 = bitcast %union.U1* %l_90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 8, i32 8, i1 false), !tbaa.struct !13
  %89 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast %union.U1* %l_90 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast [2 x [6 x [5 x i32*]]]* %l_86 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %93) #1
  %94 = bitcast i32* %l_85 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32** %l_84 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = getelementptr %union.U1, %union.U1* %1, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  ret i64 %97
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
define internal i32* @func_61(i32 %p_62, i64 %p_63.coerce) #0 {
  %p_63 = alloca %union.U1, align 8
  %1 = alloca i32, align 4
  %l_92 = alloca i8**, align 8
  %l_91 = alloca [2 x [3 x i8***]], align 16
  %l_94 = alloca [4 x [6 x i32*]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %2 = getelementptr %union.U1, %union.U1* %p_63, i32 0, i32 0
  store i64 %p_63.coerce, i64* %2, align 8
  store i32 %p_62, i32* %1, align 4, !tbaa !1
  %3 = bitcast i8*** %l_92 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8** @g_47, i8*** %l_92, align 8, !tbaa !5
  %4 = bitcast [2 x [3 x i8***]]* %l_91 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %4) #1
  %5 = getelementptr inbounds [2 x [3 x i8***]], [2 x [3 x i8***]]* %l_91, i64 0, i64 0
  %6 = getelementptr inbounds [3 x i8***], [3 x i8***]* %5, i64 0, i64 0
  store i8*** %l_92, i8**** %6, !tbaa !5
  %7 = getelementptr inbounds i8***, i8**** %6, i64 1
  store i8*** %l_92, i8**** %7, !tbaa !5
  %8 = getelementptr inbounds i8***, i8**** %7, i64 1
  store i8*** %l_92, i8**** %8, !tbaa !5
  %9 = getelementptr inbounds [3 x i8***], [3 x i8***]* %5, i64 1
  %10 = getelementptr inbounds [3 x i8***], [3 x i8***]* %9, i64 0, i64 0
  store i8*** %l_92, i8**** %10, !tbaa !5
  %11 = getelementptr inbounds i8***, i8**** %10, i64 1
  store i8*** %l_92, i8**** %11, !tbaa !5
  %12 = getelementptr inbounds i8***, i8**** %11, i64 1
  store i8*** %l_92, i8**** %12, !tbaa !5
  %13 = bitcast [4 x [6 x i32*]]* %l_94 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %13) #1
  %14 = bitcast [4 x [6 x i32*]]* %l_94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast ([4 x [6 x i32*]]* @func_61.l_94 to i8*), i64 192, i32 16, i1 false)
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i8** @g_47, i8*** @g_93, align 8, !tbaa !5
  %17 = getelementptr inbounds [4 x [6 x i32*]], [4 x [6 x i32*]]* %l_94, i32 0, i64 1
  %18 = getelementptr inbounds [6 x i32*], [6 x i32*]* %17, i32 0, i64 1
  %19 = load i32*, i32** %18, align 8, !tbaa !5
  %20 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast [4 x [6 x i32*]]* %l_94 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %22) #1
  %23 = bitcast [2 x [3 x i8***]]* %l_91 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %23) #1
  %24 = bitcast i8*** %l_92 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret i32* %19
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
define internal i64 @func_52(i32* %p_53, i8* %p_54, i32 %p_55, i32 %p_56) #0 {
  %1 = alloca %union.U2, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %l_283 = alloca i32*, align 8
  %l_282 = alloca i32**, align 8
  %l_281 = alloca i32***, align 8
  %l_284 = alloca i32*, align 8
  %l_338 = alloca %union.U1, align 8
  %l_351 = alloca i32*, align 8
  %l_366 = alloca i32, align 4
  %l_368 = alloca i32, align 4
  %l_370 = alloca i32, align 4
  %l_373 = alloca i32, align 4
  %l_376 = alloca i32, align 4
  %l_393 = alloca i32, align 4
  %l_394 = alloca i32, align 4
  %l_422 = alloca i32***, align 8
  %l_337 = alloca i8, align 1
  %l_362 = alloca i32, align 4
  %l_369 = alloca i32, align 4
  %l_371 = alloca i32, align 4
  %l_302 = alloca i64, align 8
  %l_335 = alloca [7 x [10 x [3 x i64]]], align 16
  %l_344 = alloca i32, align 4
  %l_346 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_305 = alloca [6 x i8*], align 16
  %l_307 = alloca i32, align 4
  %l_315 = alloca i32, align 4
  %l_334 = alloca i64*, align 8
  %l_336 = alloca i64*, align 8
  %l_363 = alloca i32, align 4
  %l_372 = alloca i32, align 4
  %l_374 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %l_345 = alloca [3 x [2 x [2 x i64*]]], align 16
  %l_350 = alloca i32*, align 8
  %l_349 = alloca [5 x i32**], align 16
  %l_360 = alloca [5 x [1 x [9 x i32]]], align 16
  %l_361 = alloca [10 x [10 x i16*]], align 16
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k4 = alloca i32, align 4
  %l_364 = alloca i32*, align 8
  %l_365 = alloca i32*, align 8
  %l_367 = alloca [8 x i32*], align 16
  %i5 = alloca i32, align 4
  %6 = alloca i32
  %l_381 = alloca i32*, align 8
  %l_382 = alloca i32*, align 8
  %l_383 = alloca i32*, align 8
  %l_384 = alloca i32*, align 8
  %l_385 = alloca i32*, align 8
  %l_386 = alloca i32*, align 8
  %l_387 = alloca i32*, align 8
  %l_388 = alloca i32*, align 8
  %l_389 = alloca i32*, align 8
  %l_390 = alloca i32*, align 8
  %l_391 = alloca [4 x i32*], align 16
  %i8 = alloca i32, align 4
  %l_406 = alloca i16, align 2
  %l_408 = alloca i8***, align 8
  %l_409 = alloca i8**, align 8
  %l_415 = alloca i32, align 4
  %l_418 = alloca %union.U1, align 8
  %l_423 = alloca i32, align 4
  %7 = alloca %union.U2, align 8
  store i32* %p_53, i32** %2, align 8, !tbaa !5
  store i8* %p_54, i8** %3, align 8, !tbaa !5
  store i32 %p_55, i32* %4, align 4, !tbaa !1
  store i32 %p_56, i32* %5, align 4, !tbaa !1
  %8 = bitcast i32** %l_283 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_38, i32** %l_283, align 8, !tbaa !5
  %9 = bitcast i32*** %l_282 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32** %l_283, i32*** %l_282, align 8, !tbaa !5
  %10 = bitcast i32**** %l_281 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32*** %l_282, i32**** %l_281, align 8, !tbaa !5
  %11 = bitcast i32** %l_284 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32* @g_51, i32** %l_284, align 8, !tbaa !5
  %12 = bitcast %union.U1* %l_338 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %union.U1* %l_338 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast (%union.U1* @func_52.l_338 to i8*), i64 8, i32 8, i1 false)
  %14 = bitcast i32** %l_351 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_352, i32 0, i64 4), i32** %l_351, align 8, !tbaa !5
  %15 = bitcast i32* %l_366 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 1, i32* %l_366, align 4, !tbaa !1
  %16 = bitcast i32* %l_368 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 -8, i32* %l_368, align 4, !tbaa !1
  %17 = bitcast i32* %l_370 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 -395075890, i32* %l_370, align 4, !tbaa !1
  %18 = bitcast i32* %l_373 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 1888047995, i32* %l_373, align 4, !tbaa !1
  %19 = bitcast i32* %l_376 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 -7, i32* %l_376, align 4, !tbaa !1
  %20 = bitcast i32* %l_393 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 1, i32* %l_393, align 4, !tbaa !1
  %21 = bitcast i32* %l_394 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 -1, i32* %l_394, align 4, !tbaa !1
  %22 = bitcast i32**** %l_422 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i32*** %l_282, i32**** %l_422, align 8, !tbaa !5
  %23 = load i32***, i32**** %l_281, align 8, !tbaa !5
  %24 = icmp ne i32*** null, %23
  %25 = zext i1 %24 to i32
  %26 = load i32*, i32** %l_284, align 8, !tbaa !5
  store i32 %25, i32* %26, align 4, !tbaa !1
  %27 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext 1)
  %28 = icmp ne i16 %27, 0
  br i1 %28, label %29, label %375

; <label>:29                                      ; preds = %0
  call void @llvm.lifetime.start(i64 1, i8* %l_337) #1
  store i8 52, i8* %l_337, align 1, !tbaa !9
  %30 = bitcast i32* %l_362 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  store i32 -1, i32* %l_362, align 4, !tbaa !1
  %31 = bitcast i32* %l_369 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 -1028180336, i32* %l_369, align 4, !tbaa !1
  %32 = bitcast i32* %l_371 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 8, i32* %l_371, align 4, !tbaa !1
  store i32 0, i32* @g_38, align 4, !tbaa !1
  br label %33

; <label>:33                                      ; preds = %364, %29
  %34 = load i32, i32* @g_38, align 4, !tbaa !1
  %35 = icmp ule i32 %34, 44
  br i1 %35, label %36, label %369

; <label>:36                                      ; preds = %33
  %37 = bitcast i64* %l_302 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store i64 -6, i64* %l_302, align 8, !tbaa !7
  %38 = bitcast [7 x [10 x [3 x i64]]]* %l_335 to i8*
  call void @llvm.lifetime.start(i64 1680, i8* %38) #1
  %39 = bitcast [7 x [10 x [3 x i64]]]* %l_335 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* bitcast ([7 x [10 x [3 x i64]]]* @func_52.l_335 to i8*), i64 1680, i32 16, i1 false)
  %40 = bitcast i32* %l_344 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  store i32 1711812181, i32* %l_344, align 4, !tbaa !1
  %41 = bitcast i32* %l_346 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  store i32 -1, i32* %l_346, align 4, !tbaa !1
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i16 0, i16* @g_110, align 2, !tbaa !10
  br label %45

; <label>:45                                      ; preds = %351, %36
  %46 = load i16, i16* @g_110, align 2, !tbaa !10
  %47 = sext i16 %46 to i32
  %48 = icmp sge i32 %47, 21
  br i1 %48, label %49, label %354

; <label>:49                                      ; preds = %45
  %50 = bitcast [6 x i8*]* %l_305 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %50) #1
  %51 = bitcast [6 x i8*]* %l_305 to i8*
  call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 48, i32 16, i1 false)
  %52 = bitcast i8* %51 to [6 x i8*]*
  %53 = getelementptr [6 x i8*], [6 x i8*]* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i32 0), i8** %53
  %54 = getelementptr [6 x i8*], [6 x i8*]* %52, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i64 2), i8** %54
  %55 = getelementptr [6 x i8*], [6 x i8*]* %52, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i64 2), i8** %55
  %56 = getelementptr [6 x i8*], [6 x i8*]* %52, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i32 0), i8** %56
  %57 = getelementptr [6 x i8*], [6 x i8*]* %52, i32 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i64 2), i8** %57
  %58 = getelementptr [6 x i8*], [6 x i8*]* %52, i32 0, i32 5
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i64 2), i8** %58
  %59 = bitcast i32* %l_307 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  store i32 -3, i32* %l_307, align 4, !tbaa !1
  %60 = bitcast i32* %l_315 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  store i32 0, i32* %l_315, align 4, !tbaa !1
  %61 = bitcast i64** %l_334 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  store i64* null, i64** %l_334, align 8, !tbaa !5
  %62 = bitcast i64** %l_336 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  store i64* null, i64** %l_336, align 8, !tbaa !5
  %63 = bitcast i32* %l_363 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  store i32 1087297119, i32* %l_363, align 4, !tbaa !1
  %64 = bitcast i32* %l_372 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  store i32 0, i32* %l_372, align 4, !tbaa !1
  %65 = bitcast i32* %l_374 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  store i32 2066385602, i32* %l_374, align 4, !tbaa !1
  %66 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), align 2, !tbaa !10
  %68 = trunc i16 %67 to i8
  %69 = load i64, i64* %l_302, align 8, !tbaa !7
  %70 = trunc i64 %69 to i16
  %71 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i64 1), align 1, !tbaa !9
  %72 = add i8 %71, 1
  store i8 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i64 1), align 1, !tbaa !9
  %73 = zext i8 %72 to i32
  %74 = load i8*, i8** @g_47, align 8, !tbaa !5
  %75 = load i8, i8* %74, align 1, !tbaa !9
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* getelementptr inbounds ([8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i64 2, i64 3), align 1, !tbaa !9
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

; <label>:80                                      ; preds = %49
  %81 = load i32, i32* %l_315, align 4, !tbaa !1
  %82 = trunc i32 %81 to i8
  %83 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %82, i32 2)
  %84 = zext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

; <label>:86                                      ; preds = %80
  %87 = load i8**, i8*** @g_93, align 8, !tbaa !5
  %88 = load i8*, i8** %87, align 8, !tbaa !5
  %89 = load i8, i8* %88, align 1, !tbaa !9
  %90 = sext i8 %89 to i32
  %91 = load i8*, i8** %3, align 8, !tbaa !5
  %92 = load i8, i8* %91, align 1, !tbaa !9
  %93 = sext i8 %92 to i32
  %94 = and i32 %93, %90
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %91, align 1, !tbaa !9
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br label %98

; <label>:98                                      ; preds = %86, %80, %49
  %99 = phi i1 [ false, %80 ], [ false, %49 ], [ %97, %86 ]
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %4, align 4, !tbaa !1
  %102 = xor i32 %101, -1
  %103 = sext i32 %102 to i64
  %104 = icmp sle i64 %103, 176
  br i1 %104, label %105, label %140

; <label>:105                                     ; preds = %98
  %106 = load i64, i64* %l_302, align 8, !tbaa !7
  %107 = load i16, i16* @g_110, align 2, !tbaa !10
  %108 = sext i16 %107 to i64
  %109 = call i64 @safe_div_func_uint64_t_u_u(i64 %106, i64 %108)
  %110 = load i32, i32* %4, align 4, !tbaa !1
  %111 = sext i32 %110 to i64
  %112 = icmp ult i64 %109, %111
  %113 = zext i1 %112 to i32
  %114 = trunc i32 %113 to i16
  %115 = load i32, i32* %5, align 4, !tbaa !1
  %116 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %114, i32 %115)
  %117 = sext i16 %116 to i64
  %118 = call i64 @safe_mod_func_int64_t_s_s(i64 %117, i64 -3281031891497947640)
  store i64 %118, i64* @g_145, align 8, !tbaa !7
  %119 = load i16, i16* @g_136, align 2, !tbaa !10
  %120 = sext i16 %119 to i64
  %121 = icmp eq i64 %118, %120
  %122 = zext i1 %121 to i32
  %123 = trunc i32 %122 to i16
  %124 = getelementptr inbounds [7 x [10 x [3 x i64]]], [7 x [10 x [3 x i64]]]* %l_335, i32 0, i64 3
  %125 = getelementptr inbounds [10 x [3 x i64]], [10 x [3 x i64]]* %124, i32 0, i64 6
  %126 = getelementptr inbounds [3 x i64], [3 x i64]* %125, i32 0, i64 0
  %127 = load i64, i64* %126, align 8, !tbaa !7
  %128 = trunc i64 %127 to i32
  %129 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %123, i32 %128)
  %130 = load i32*, i32** %l_284, align 8, !tbaa !5
  %131 = load i32, i32* %130, align 4, !tbaa !1
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** @g_47, align 8, !tbaa !5
  %134 = load i8, i8* %133, align 1, !tbaa !9
  %135 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %132, i8 signext %134)
  %136 = sext i8 %135 to i64
  store i64 %136, i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), align 8, !tbaa !7
  %137 = load i16, i16* @g_110, align 2, !tbaa !10
  %138 = sext i16 %137 to i64
  %139 = icmp ne i64 %136, %138
  br label %140

; <label>:140                                     ; preds = %105, %98
  %141 = phi i1 [ false, %98 ], [ %139, %105 ]
  %142 = zext i1 %141 to i32
  %143 = call i32 @safe_add_func_uint32_t_u_u(i32 %142, i32 -2)
  %144 = trunc i32 %143 to i16
  %145 = load i32, i32* @g_87, align 4, !tbaa !1
  %146 = trunc i32 %145 to i16
  %147 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %144, i16 zeroext %146)
  %148 = zext i16 %147 to i32
  %149 = load i32, i32* %4, align 4, !tbaa !1
  %150 = icmp ne i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = trunc i32 %151 to i8
  %153 = load i32, i32* %5, align 4, !tbaa !1
  %154 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %152, i32 %153)
  %155 = sext i8 %154 to i32
  %156 = and i32 %100, %155
  %157 = load i8, i8* %l_337, align 1, !tbaa !9
  %158 = sext i8 %157 to i32
  %159 = icmp sle i32 %156, %158
  %160 = zext i1 %159 to i32
  %161 = icmp slt i32 %76, %160
  %162 = zext i1 %161 to i32
  %163 = and i32 %73, %162
  %164 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i64 2), align 1, !tbaa !9
  %165 = zext i8 %164 to i32
  %166 = load i32, i32* @g_81, align 4, !tbaa !1
  %167 = and i32 %165, %166
  %168 = trunc i32 %167 to i8
  %169 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %168, i32 4)
  %170 = sext i8 %169 to i32
  %171 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %70, i32 %170)
  %172 = zext i16 %171 to i64
  %173 = load i32, i32* %5, align 4, !tbaa !1
  %174 = zext i32 %173 to i64
  %175 = call i64 @safe_div_func_int64_t_s_s(i64 %172, i64 %174)
  %176 = or i64 %175, 1
  %177 = icmp ne i64 %176, 6712
  %178 = zext i1 %177 to i32
  %179 = load i8*, i8** %3, align 8, !tbaa !5
  %180 = load i8, i8* %179, align 1, !tbaa !9
  %181 = sext i8 %180 to i32
  %182 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %68, i32 %181)
  %183 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %182, i8 zeroext 1)
  %184 = zext i8 %183 to i32
  %185 = load i8*, i8** @g_47, align 8, !tbaa !5
  %186 = load i8, i8* %185, align 1, !tbaa !9
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %184, %187
  %189 = zext i1 %188 to i32
  %190 = load i32*, i32** %l_284, align 8, !tbaa !5
  %191 = load i32, i32* %190, align 4, !tbaa !1
  %192 = call i32 @safe_div_func_int32_t_s_s(i32 1, i32 %191)
  %193 = load i32, i32* %5, align 4, !tbaa !1
  %194 = trunc i32 %193 to i16
  %195 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %194, i16 signext -7224)
  %196 = load i8, i8* %l_337, align 1, !tbaa !9
  %197 = icmp ne i8 %196, 0
  br i1 %197, label %198, label %315

; <label>:198                                     ; preds = %140
  %199 = bitcast [3 x [2 x [2 x i64*]]]* %l_345 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %199) #1
  %200 = bitcast [3 x [2 x [2 x i64*]]]* %l_345 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %200, i8* bitcast ([3 x [2 x [2 x i64*]]]* @func_52.l_345 to i8*), i64 96, i32 16, i1 false)
  %201 = bitcast i32** %l_350 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %201) #1
  store i32* null, i32** %l_350, align 8, !tbaa !5
  %202 = bitcast [5 x i32**]* %l_349 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %202) #1
  %203 = getelementptr inbounds [5 x i32**], [5 x i32**]* %l_349, i64 0, i64 0
  store i32** %l_350, i32*** %203, !tbaa !5
  %204 = getelementptr inbounds i32**, i32*** %203, i64 1
  store i32** %l_350, i32*** %204, !tbaa !5
  %205 = getelementptr inbounds i32**, i32*** %204, i64 1
  store i32** %l_350, i32*** %205, !tbaa !5
  %206 = getelementptr inbounds i32**, i32*** %205, i64 1
  store i32** %l_350, i32*** %206, !tbaa !5
  %207 = getelementptr inbounds i32**, i32*** %206, i64 1
  store i32** %l_350, i32*** %207, !tbaa !5
  %208 = bitcast [5 x [1 x [9 x i32]]]* %l_360 to i8*
  call void @llvm.lifetime.start(i64 180, i8* %208) #1
  %209 = bitcast [5 x [1 x [9 x i32]]]* %l_360 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %209, i8* bitcast ([5 x [1 x [9 x i32]]]* @func_52.l_360 to i8*), i64 180, i32 16, i1 false)
  %210 = bitcast [10 x [10 x i16*]]* %l_361 to i8*
  call void @llvm.lifetime.start(i64 800, i8* %210) #1
  %211 = bitcast [10 x [10 x i16*]]* %l_361 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %211, i8* bitcast ([10 x [10 x i16*]]* @func_52.l_361 to i8*), i64 800, i32 16, i1 false)
  %212 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %212) #1
  %213 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %213) #1
  %214 = bitcast i32* %k4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %214) #1
  %215 = call i32 @safe_unary_minus_func_uint32_t_u(i32 -1364190578)
  %216 = trunc i32 %215 to i16
  %217 = load i32, i32* %l_315, align 4, !tbaa !1
  %218 = trunc i32 %217 to i16
  %219 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %216, i16 signext %218)
  %220 = sext i16 %219 to i32
  %221 = load i32, i32* %l_344, align 4, !tbaa !1
  %222 = xor i32 %221, %220
  store i32 %222, i32* %l_344, align 4, !tbaa !1
  store i32 %222, i32* %l_346, align 4, !tbaa !1
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

; <label>:224                                     ; preds = %198
  br label %225

; <label>:225                                     ; preds = %224, %198
  %226 = phi i1 [ false, %198 ], [ true, %224 ]
  %227 = zext i1 %226 to i32
  %228 = sext i32 %227 to i64
  %229 = xor i64 65535, %228
  %230 = trunc i64 %229 to i16
  %231 = load i32***, i32**** %l_281, align 8, !tbaa !5
  %232 = load i32**, i32*** %231, align 8, !tbaa !5
  %233 = load i32*, i32** %232, align 8, !tbaa !5
  %234 = load i32***, i32**** %l_281, align 8, !tbaa !5
  %235 = load i32**, i32*** %234, align 8, !tbaa !5
  store i32* %233, i32** %235, align 8, !tbaa !5
  store i32* null, i32** %l_351, align 8, !tbaa !5
  %236 = icmp eq i32* %233, null
  %237 = zext i1 %236 to i32
  %238 = load i8**, i8*** @g_93, align 8, !tbaa !5
  %239 = load i8*, i8** %238, align 8, !tbaa !5
  %240 = load i8**, i8*** @g_93, align 8, !tbaa !5
  %241 = load i8*, i8** %240, align 8, !tbaa !5
  %242 = icmp ne i8* %239, %241
  %243 = zext i1 %242 to i32
  %244 = load i32*, i32** %l_284, align 8, !tbaa !5
  store i32 %243, i32* %244, align 4, !tbaa !1
  %245 = getelementptr inbounds [5 x [1 x [9 x i32]]], [5 x [1 x [9 x i32]]]* %l_360, i32 0, i64 0
  %246 = getelementptr inbounds [1 x [9 x i32]], [1 x [9 x i32]]* %245, i32 0, i64 0
  %247 = getelementptr inbounds [9 x i32], [9 x i32]* %246, i32 0, i64 3
  %248 = load i32, i32* %247, align 4, !tbaa !1
  %249 = load i32, i32* %5, align 4, !tbaa !1
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

; <label>:252                                     ; preds = %225
  %253 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @g_306, i32 0, i64 4), align 1, !tbaa !9
  %254 = zext i8 %253 to i32
  %255 = icmp ne i32 %254, 0
  br label %256

; <label>:256                                     ; preds = %252, %225
  %257 = phi i1 [ false, %225 ], [ %255, %252 ]
  %258 = zext i1 %257 to i32
  %259 = load i32, i32* %l_362, align 4, !tbaa !1
  %260 = and i32 %259, %258
  store i32 %260, i32* %l_362, align 4, !tbaa !1
  %261 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), align 2, !tbaa !10
  %262 = sext i16 %261 to i32
  %263 = and i32 %262, %260
  %264 = trunc i32 %263 to i16
  store i16 %264, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_269, i32 0, i32 0), align 2, !tbaa !10
  %265 = icmp ne i16 %264, 0
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  %268 = trunc i32 %267 to i8
  %269 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %268, i8 zeroext -10)
  %270 = zext i8 %269 to i32
  %271 = load i32, i32* %5, align 4, !tbaa !1
  %272 = and i32 %270, %271
  %273 = trunc i32 %272 to i8
  %274 = load i8**, i8*** @g_93, align 8, !tbaa !5
  %275 = load i8*, i8** %274, align 8, !tbaa !5
  %276 = load i8, i8* %275, align 1, !tbaa !9
  %277 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %273, i8 signext %276)
  %278 = sext i8 %277 to i16
  %279 = load i32, i32* %5, align 4, !tbaa !1
  %280 = trunc i32 %279 to i16
  %281 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %278, i16 zeroext %280)
  %282 = zext i16 %281 to i32
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

; <label>:284                                     ; preds = %256
  br label %285

; <label>:285                                     ; preds = %284, %256
  %286 = phi i1 [ false, %256 ], [ true, %284 ]
  %287 = zext i1 %286 to i32
  %288 = load i8*, i8** %3, align 8, !tbaa !5
  %289 = load i8, i8* %288, align 1, !tbaa !9
  %290 = sext i8 %289 to i32
  %291 = icmp ne i32 %287, %290
  %292 = zext i1 %291 to i32
  %293 = icmp eq i32 %243, %292
  %294 = zext i1 %293 to i32
  %295 = trunc i32 %294 to i8
  %296 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %295, i32 0)
  %297 = zext i8 %296 to i16
  %298 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %230, i16 signext %297)
  %299 = sext i16 %298 to i32
  %300 = load i32, i32* %l_363, align 4, !tbaa !1
  %301 = or i32 %299, %300
  %302 = load i32, i32* %l_315, align 4, !tbaa !1
  %303 = icmp uge i32 %301, %302
  %304 = zext i1 %303 to i32
  %305 = load i32, i32* %4, align 4, !tbaa !1
  %306 = or i32 %305, %304
  store i32 %306, i32* %4, align 4, !tbaa !1
  %307 = bitcast i32* %k4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #1
  %308 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast [10 x [10 x i16*]]* %l_361 to i8*
  call void @llvm.lifetime.end(i64 800, i8* %310) #1
  %311 = bitcast [5 x [1 x [9 x i32]]]* %l_360 to i8*
  call void @llvm.lifetime.end(i64 180, i8* %311) #1
  %312 = bitcast [5 x i32**]* %l_349 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %312) #1
  %313 = bitcast i32** %l_350 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %313) #1
  %314 = bitcast [3 x [2 x [2 x i64*]]]* %l_345 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %314) #1
  br label %335

; <label>:315                                     ; preds = %140
  %316 = bitcast i32** %l_364 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %316) #1
  store i32* %l_307, i32** %l_364, align 8, !tbaa !5
  %317 = bitcast i32** %l_365 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %317) #1
  store i32* %l_346, i32** %l_365, align 8, !tbaa !5
  %318 = bitcast [8 x i32*]* %l_367 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %318) #1
  %319 = getelementptr inbounds [8 x i32*], [8 x i32*]* %l_367, i64 0, i64 0
  store i32* %l_307, i32** %319, !tbaa !5
  %320 = getelementptr inbounds i32*, i32** %319, i64 1
  store i32* %l_366, i32** %320, !tbaa !5
  %321 = getelementptr inbounds i32*, i32** %320, i64 1
  store i32* %l_366, i32** %321, !tbaa !5
  %322 = getelementptr inbounds i32*, i32** %321, i64 1
  store i32* %l_307, i32** %322, !tbaa !5
  %323 = getelementptr inbounds i32*, i32** %322, i64 1
  store i32* %l_366, i32** %323, !tbaa !5
  %324 = getelementptr inbounds i32*, i32** %323, i64 1
  store i32* %l_366, i32** %324, !tbaa !5
  %325 = getelementptr inbounds i32*, i32** %324, i64 1
  store i32* %l_307, i32** %325, !tbaa !5
  %326 = getelementptr inbounds i32*, i32** %325, i64 1
  store i32* %l_366, i32** %326, !tbaa !5
  %327 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %327) #1
  %328 = load i32, i32* @g_377, align 4, !tbaa !1
  %329 = add i32 %328, -1
  store i32 %329, i32* @g_377, align 4, !tbaa !1
  %330 = bitcast %union.U2* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %330, i8* bitcast (%union.U2* @g_380 to i8*), i64 8, i32 8, i1 false), !tbaa.struct !14
  store i32 1, i32* %6
  %331 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %331) #1
  %332 = bitcast [8 x i32*]* %l_367 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %332) #1
  %333 = bitcast i32** %l_365 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %333) #1
  %334 = bitcast i32** %l_364 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %334) #1
  br label %340

; <label>:335                                     ; preds = %285
  %336 = load i32, i32* %5, align 4, !tbaa !1
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %339

; <label>:338                                     ; preds = %335
  store i32 7, i32* %6
  br label %340

; <label>:339                                     ; preds = %335
  store i32 0, i32* %6
  br label %340

; <label>:340                                     ; preds = %339, %338, %315
  %341 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %341) #1
  %342 = bitcast i32* %l_374 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %342) #1
  %343 = bitcast i32* %l_372 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %343) #1
  %344 = bitcast i32* %l_363 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %344) #1
  %345 = bitcast i64** %l_336 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #1
  %346 = bitcast i64** %l_334 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #1
  %347 = bitcast i32* %l_315 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %347) #1
  %348 = bitcast i32* %l_307 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %348) #1
  %349 = bitcast [6 x i8*]* %l_305 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %349) #1
  %cleanup.dest = load i32, i32* %6
  switch i32 %cleanup.dest, label %355 [
    i32 0, label %350
    i32 7, label %351
  ]

; <label>:350                                     ; preds = %340
  br label %351

; <label>:351                                     ; preds = %350, %340
  %352 = load i16, i16* @g_110, align 2, !tbaa !10
  %353 = add i16 %352, 1
  store i16 %353, i16* @g_110, align 2, !tbaa !10
  br label %45

; <label>:354                                     ; preds = %45
  store i32 0, i32* %6
  br label %355

; <label>:355                                     ; preds = %354, %340
  %356 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %356) #1
  %357 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %357) #1
  %358 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %358) #1
  %359 = bitcast i32* %l_346 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %359) #1
  %360 = bitcast i32* %l_344 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %360) #1
  %361 = bitcast [7 x [10 x [3 x i64]]]* %l_335 to i8*
  call void @llvm.lifetime.end(i64 1680, i8* %361) #1
  %362 = bitcast i64* %l_302 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %362) #1
  %cleanup.dest.6 = load i32, i32* %6
  switch i32 %cleanup.dest.6, label %370 [
    i32 0, label %363
  ]

; <label>:363                                     ; preds = %355
  br label %364

; <label>:364                                     ; preds = %363
  %365 = load i32, i32* @g_38, align 4, !tbaa !1
  %366 = trunc i32 %365 to i8
  %367 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %366, i8 zeroext 8)
  %368 = zext i8 %367 to i32
  store i32 %368, i32* @g_38, align 4, !tbaa !1
  br label %33

; <label>:369                                     ; preds = %33
  store i32 0, i32* %6
  br label %370

; <label>:370                                     ; preds = %369, %355
  %371 = bitcast i32* %l_371 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %371) #1
  %372 = bitcast i32* %l_369 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %372) #1
  %373 = bitcast i32* %l_362 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %373) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_337) #1
  %cleanup.dest.7 = load i32, i32* %6
  switch i32 %cleanup.dest.7, label %512 [
    i32 0, label %374
  ]

; <label>:374                                     ; preds = %370
  br label %410

; <label>:375                                     ; preds = %0
  %376 = bitcast i32** %l_381 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %376) #1
  store i32* null, i32** %l_381, align 8, !tbaa !5
  %377 = bitcast i32** %l_382 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %377) #1
  store i32* @g_51, i32** %l_382, align 8, !tbaa !5
  %378 = bitcast i32** %l_383 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %378) #1
  store i32* @g_51, i32** %l_383, align 8, !tbaa !5
  %379 = bitcast i32** %l_384 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %379) #1
  store i32* %l_368, i32** %l_384, align 8, !tbaa !5
  %380 = bitcast i32** %l_385 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %380) #1
  store i32* @g_51, i32** %l_385, align 8, !tbaa !5
  %381 = bitcast i32** %l_386 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %381) #1
  store i32* %l_368, i32** %l_386, align 8, !tbaa !5
  %382 = bitcast i32** %l_387 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %382) #1
  store i32* %l_368, i32** %l_387, align 8, !tbaa !5
  %383 = bitcast i32** %l_388 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %383) #1
  store i32* @g_51, i32** %l_388, align 8, !tbaa !5
  %384 = bitcast i32** %l_389 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %384) #1
  store i32* null, i32** %l_389, align 8, !tbaa !5
  %385 = bitcast i32** %l_390 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %385) #1
  store i32* %l_376, i32** %l_390, align 8, !tbaa !5
  %386 = bitcast [4 x i32*]* %l_391 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %386) #1
  %387 = getelementptr inbounds [4 x i32*], [4 x i32*]* %l_391, i64 0, i64 0
  store i32* %l_376, i32** %387, !tbaa !5
  %388 = getelementptr inbounds i32*, i32** %387, i64 1
  store i32* %l_376, i32** %388, !tbaa !5
  %389 = getelementptr inbounds i32*, i32** %388, i64 1
  store i32* %l_376, i32** %389, !tbaa !5
  %390 = getelementptr inbounds i32*, i32** %389, i64 1
  store i32* %l_376, i32** %390, !tbaa !5
  %391 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %391) #1
  %392 = load volatile i32, i32* @g_396, align 4, !tbaa !1
  %393 = add i32 %392, 1
  store volatile i32 %393, i32* @g_396, align 4, !tbaa !1
  %394 = load i32*, i32** %l_385, align 8, !tbaa !5
  store i32 -1, i32* %394, align 4, !tbaa !1
  %395 = load i32*, i32** %l_384, align 8, !tbaa !5
  %396 = load i32, i32* %395, align 4, !tbaa !1
  %397 = xor i32 %396, -1
  store i32 %397, i32* %395, align 4, !tbaa !1
  %398 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %398) #1
  %399 = bitcast [4 x i32*]* %l_391 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %399) #1
  %400 = bitcast i32** %l_390 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %400) #1
  %401 = bitcast i32** %l_389 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %401) #1
  %402 = bitcast i32** %l_388 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %402) #1
  %403 = bitcast i32** %l_387 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %403) #1
  %404 = bitcast i32** %l_386 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %404) #1
  %405 = bitcast i32** %l_385 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %405) #1
  %406 = bitcast i32** %l_384 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %406) #1
  %407 = bitcast i32** %l_383 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %407) #1
  %408 = bitcast i32** %l_382 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %408) #1
  %409 = bitcast i32** %l_381 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %409) #1
  br label %410

; <label>:410                                     ; preds = %375, %374
  %411 = load i32*, i32** %l_284, align 8, !tbaa !5
  %412 = load i32, i32* %411, align 4, !tbaa !1
  %413 = load volatile i32*, i32** @g_399, align 8, !tbaa !5
  %414 = load i32, i32* %413, align 4, !tbaa !1
  %415 = or i32 %414, %412
  store i32 %415, i32* %413, align 4, !tbaa !1
  store i32 24, i32* @g_87, align 4, !tbaa !1
  br label %416

; <label>:416                                     ; preds = %505, %410
  %417 = load i32, i32* @g_87, align 4, !tbaa !1
  %418 = icmp ugt i32 %417, 58
  br i1 %418, label %419, label %510

; <label>:419                                     ; preds = %416
  %420 = bitcast i16* %l_406 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %420) #1
  store i16 9, i16* %l_406, align 2, !tbaa !10
  %421 = bitcast i8**** %l_408 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %421) #1
  store i8*** null, i8**** %l_408, align 8, !tbaa !5
  %422 = bitcast i8*** %l_409 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %422) #1
  store i8** @g_47, i8*** %l_409, align 8, !tbaa !5
  %423 = bitcast i32* %l_415 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %423) #1
  store i32 -7, i32* %l_415, align 4, !tbaa !1
  %424 = bitcast %union.U1* %l_418 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %424) #1
  %425 = bitcast %union.U1* %l_418 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %425, i8* bitcast (%union.U1* @func_52.l_418 to i8*), i64 8, i32 8, i1 false)
  %426 = bitcast i32* %l_423 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %426) #1
  store i32 -1, i32* %l_423, align 4, !tbaa !1
  %427 = load i32*, i32** %l_284, align 8, !tbaa !5
  store i32 65531, i32* %427, align 4, !tbaa !1
  %428 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext -8, i32 1)
  %429 = zext i8 %428 to i32
  %430 = xor i32 %429, -1
  %431 = icmp eq i32 65531, %430
  %432 = zext i1 %431 to i32
  %433 = trunc i32 %432 to i16
  store i16 %433, i16* %l_406, align 2, !tbaa !10
  %434 = load i32*, i32** %l_284, align 8, !tbaa !5
  %435 = load i32, i32* %434, align 4, !tbaa !1
  %436 = icmp ne i32 1, %435
  %437 = zext i1 %436 to i32
  %438 = load volatile i32*, i32** @g_407, align 8, !tbaa !5
  %439 = load i32, i32* %438, align 4, !tbaa !1
  %440 = and i32 %439, %437
  store i32 %440, i32* %438, align 4, !tbaa !1
  store i8** null, i8*** %l_409, align 8, !tbaa !5
  %441 = bitcast %union.U2* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %441, i8* bitcast (%union.U2* @g_414 to i8*), i64 8, i32 8, i1 true), !tbaa.struct !14
  %442 = load i16, i16* %l_406, align 2, !tbaa !10
  %443 = sext i16 %442 to i32
  %444 = icmp eq i32* %4, %4
  %445 = zext i1 %444 to i32
  store i32 %445, i32* %l_415, align 4, !tbaa !1
  %446 = load i8*, i8** @g_47, align 8, !tbaa !5
  %447 = load i8, i8* %446, align 1, !tbaa !9
  %448 = sext i8 %447 to i32
  %449 = and i32 %448, %445
  %450 = trunc i32 %449 to i8
  store i8 %450, i8* %446, align 1, !tbaa !9
  %451 = sext i8 %450 to i32
  %452 = icmp sgt i32 %443, %451
  br i1 %452, label %453, label %456

; <label>:453                                     ; preds = %419
  %454 = load i32, i32* %4, align 4, !tbaa !1
  %455 = icmp ne i32 %454, 0
  br label %456

; <label>:456                                     ; preds = %453, %419
  %457 = phi i1 [ false, %419 ], [ %455, %453 ]
  %458 = zext i1 %457 to i32
  %459 = load i16, i16* %l_406, align 2, !tbaa !10
  %460 = sext i16 %459 to i32
  %461 = icmp eq i32 %458, %460
  %462 = zext i1 %461 to i32
  %463 = sext i32 %462 to i64
  %464 = icmp ne i64 %463, 134
  %465 = zext i1 %464 to i32
  %466 = trunc i32 %465 to i8
  %467 = load i32***, i32**** @g_419, align 8, !tbaa !5
  %468 = load i32***, i32**** %l_422, align 8, !tbaa !5
  %469 = icmp ne i32*** %467, %468
  %470 = zext i1 %469 to i32
  %471 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @g_352, i32 0, i64 2), align 4, !tbaa !1
  %472 = call i32 @safe_div_func_uint32_t_u_u(i32 %470, i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %466, i8 zeroext %473)
  %475 = zext i8 %474 to i64
  %476 = load i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), align 8, !tbaa !7
  %477 = call i64 @safe_add_func_int64_t_s_s(i64 %475, i64 %476)
  %478 = load i32*, i32** %l_284, align 8, !tbaa !5
  %479 = load i32, i32* %478, align 4, !tbaa !1
  %480 = sext i32 %479 to i64
  %481 = and i64 %480, %477
  %482 = trunc i64 %481 to i32
  store i32 %482, i32* %478, align 4, !tbaa !1
  %483 = load i32, i32* %5, align 4, !tbaa !1
  %484 = icmp ugt i32 %482, %483
  br i1 %484, label %489, label %485

; <label>:485                                     ; preds = %456
  %486 = load i32*, i32** %l_284, align 8, !tbaa !5
  %487 = load i32, i32* %486, align 4, !tbaa !1
  %488 = icmp ne i32 %487, 0
  br label %489

; <label>:489                                     ; preds = %485, %456
  %490 = phi i1 [ true, %456 ], [ %488, %485 ]
  %491 = zext i1 %490 to i32
  br i1 true, label %492, label %493

; <label>:492                                     ; preds = %489
  br label %493

; <label>:493                                     ; preds = %492, %489
  %494 = phi i1 [ false, %489 ], [ true, %492 ]
  %495 = zext i1 %494 to i32
  %496 = load i32, i32* %l_423, align 4, !tbaa !1
  %497 = and i32 %496, %495
  store i32 %497, i32* %l_423, align 4, !tbaa !1
  %498 = bitcast %union.U2* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %498, i8* bitcast (%union.U2* getelementptr inbounds ([10 x %union.U2], [10 x %union.U2]* @g_424, i32 0, i64 4) to i8*), i64 8, i32 8, i1 false), !tbaa.struct !14
  store i32 1, i32* %6
  %499 = bitcast i32* %l_423 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %499) #1
  %500 = bitcast %union.U1* %l_418 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %500) #1
  %501 = bitcast i32* %l_415 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %501) #1
  %502 = bitcast i8*** %l_409 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %502) #1
  %503 = bitcast i8**** %l_408 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %503) #1
  %504 = bitcast i16* %l_406 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %504) #1
  br label %512
                                                  ; No predecessors!
  %506 = load i32, i32* @g_87, align 4, !tbaa !1
  %507 = zext i32 %506 to i64
  %508 = call i64 @safe_add_func_int64_t_s_s(i64 %507, i64 2)
  %509 = trunc i64 %508 to i32
  store i32 %509, i32* @g_87, align 4, !tbaa !1
  br label %416

; <label>:510                                     ; preds = %416
  %511 = bitcast %union.U2* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %511, i8* bitcast (%union.U2* @g_425 to i8*), i64 8, i32 8, i1 false), !tbaa.struct !14
  store i32 1, i32* %6
  br label %512

; <label>:512                                     ; preds = %510, %493, %370
  %513 = bitcast i32**** %l_422 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %513) #1
  %514 = bitcast i32* %l_394 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %514) #1
  %515 = bitcast i32* %l_393 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %515) #1
  %516 = bitcast i32* %l_376 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %516) #1
  %517 = bitcast i32* %l_373 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %517) #1
  %518 = bitcast i32* %l_370 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %518) #1
  %519 = bitcast i32* %l_368 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %519) #1
  %520 = bitcast i32* %l_366 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %520) #1
  %521 = bitcast i32** %l_351 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %521) #1
  %522 = bitcast %union.U1* %l_338 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %522) #1
  %523 = bitcast i32** %l_284 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %523) #1
  %524 = bitcast i32**** %l_281 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %524) #1
  %525 = bitcast i32*** %l_282 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %525) #1
  %526 = bitcast i32** %l_283 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %526) #1
  %527 = getelementptr %union.U2, %union.U2* %1, i32 0, i32 0
  %528 = load i64, i64* %527, align 8
  ret i64 %528
}

; Function Attrs: nounwind uwtable
define internal i32* @func_57(i32 %p_58, i32* %p_59, i8 zeroext %p_60) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  %l_104 = alloca i8***, align 8
  %l_108 = alloca i32, align 4
  %l_116 = alloca [9 x i32], align 16
  %l_131 = alloca [2 x [10 x [10 x %union.U1]]], align 16
  %l_173 = alloca i32*, align 8
  %l_172 = alloca i32**, align 8
  %l_171 = alloca i32***, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_105 = alloca i8***, align 8
  %l_109 = alloca i16*, align 8
  %l_111 = alloca i8*, align 8
  %l_112 = alloca i32*, align 8
  %l_114 = alloca i64*, align 8
  %l_115 = alloca [1 x i64*], align 8
  %l_128 = alloca [7 x i16], align 2
  %l_187 = alloca i64, align 8
  %l_231 = alloca i32, align 4
  %l_235 = alloca i32, align 4
  %l_260 = alloca i32**, align 8
  %l_259 = alloca i32***, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %5 = alloca i32
  %l_122 = alloca i8, align 1
  %l_134 = alloca i16*, align 8
  %l_135 = alloca i16*, align 8
  %l_142 = alloca [7 x i8**], align 16
  %l_168 = alloca i32*, align 8
  %l_167 = alloca i32**, align 8
  %l_222 = alloca i32, align 4
  %l_224 = alloca i64, align 8
  %l_236 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %l_162 = alloca i32, align 4
  %l_203 = alloca i32, align 4
  %l_223 = alloca %union.U1, align 8
  %l_232 = alloca i8, align 1
  %l_234 = alloca [9 x [5 x [1 x i32]]], align 16
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %k7 = alloca i32, align 4
  %l_143 = alloca i32*, align 8
  %l_144 = alloca i64*, align 8
  %l_154 = alloca i32, align 4
  %l_164 = alloca i32*, align 8
  %l_165 = alloca i32*, align 8
  %l_166 = alloca i32*, align 8
  %l_169 = alloca i32***, align 8
  %l_170 = alloca i8**, align 8
  %l_174 = alloca i32****, align 8
  %6 = alloca %union.U0, align 8
  %l_220 = alloca i8, align 1
  %l_226 = alloca i32, align 4
  %l_233 = alloca [6 x [3 x [4 x i32]]], align 16
  %i8 = alloca i32, align 4
  %j9 = alloca i32, align 4
  %k10 = alloca i32, align 4
  %l_197 = alloca i8, align 1
  %l_202 = alloca [1 x i32], align 4
  %l_221 = alloca i8*, align 8
  %l_225 = alloca [10 x [1 x i32*]], align 16
  %l_227 = alloca i32*, align 8
  %l_228 = alloca i32*, align 8
  %l_229 = alloca i32*, align 8
  %l_230 = alloca [10 x [1 x [1 x i32*]]], align 16
  %i11 = alloca i32, align 4
  %j12 = alloca i32, align 4
  %k13 = alloca i32, align 4
  %l_265 = alloca %union.U1*, align 8
  %l_261 = alloca i32, align 4
  %7 = alloca %union.U1, align 8
  %l_266 = alloca i32, align 4
  %l_278 = alloca i16*, align 8
  store i32 %p_58, i32* %2, align 4, !tbaa !1
  store i32* %p_59, i32** %3, align 8, !tbaa !5
  store i8 %p_60, i8* %4, align 1, !tbaa !9
  %8 = bitcast i8**** %l_104 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8*** @g_93, i8**** %l_104, align 8, !tbaa !5
  %9 = bitcast i32* %l_108 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 8, i32* %l_108, align 4, !tbaa !1
  %10 = bitcast [9 x i32]* %l_116 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %10) #1
  %11 = bitcast [2 x [10 x [10 x %union.U1]]]* %l_131 to i8*
  call void @llvm.lifetime.start(i64 1600, i8* %11) #1
  %12 = bitcast [2 x [10 x [10 x %union.U1]]]* %l_131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast ([2 x [10 x [10 x %union.U1]]]* @func_57.l_131 to i8*), i64 1600, i32 16, i1 false)
  %13 = bitcast i32** %l_173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32* @g_38, i32** %l_173, align 8, !tbaa !5
  %14 = bitcast i32*** %l_172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32** %l_173, i32*** %l_172, align 8, !tbaa !5
  %15 = bitcast i32**** %l_171 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i32*** %l_172, i32**** %l_171, align 8, !tbaa !5
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %26, %0
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = icmp slt i32 %20, 9
  br i1 %21, label %22, label %29

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [9 x i32], [9 x i32]* %l_116, i32 0, i64 %24
  store i32 -1146231433, i32* %25, align 4, !tbaa !1
  br label %26

; <label>:26                                      ; preds = %22
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4, !tbaa !1
  br label %19

; <label>:29                                      ; preds = %19
  store i32 0, i32* @g_87, align 4, !tbaa !1
  br label %30

; <label>:30                                      ; preds = %931, %29
  %31 = load i32, i32* @g_87, align 4, !tbaa !1
  %32 = icmp ule i32 %31, 36
  br i1 %32, label %33, label %936

; <label>:33                                      ; preds = %30
  %34 = bitcast i8**** %l_105 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  store i8*** @g_93, i8**** %l_105, align 8, !tbaa !5
  %35 = bitcast i16** %l_109 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store i16* @g_110, i16** %l_109, align 8, !tbaa !5
  %36 = bitcast i8** %l_111 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i8* bitcast (%union.U1* @g_49 to i8*), i8** %l_111, align 8, !tbaa !5
  %37 = bitcast i32** %l_112 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store i32* %l_108, i32** %l_112, align 8, !tbaa !5
  %38 = bitcast i64** %l_114 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store i64* null, i64** %l_114, align 8, !tbaa !5
  %39 = bitcast [1 x i64*]* %l_115 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = bitcast [7 x i16]* %l_128 to i8*
  call void @llvm.lifetime.start(i64 14, i8* %40) #1
  %41 = bitcast i64* %l_187 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  store i64 0, i64* %l_187, align 8, !tbaa !7
  %42 = bitcast i32* %l_231 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 -1, i32* %l_231, align 4, !tbaa !1
  %43 = bitcast i32* %l_235 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 1096065022, i32* %l_235, align 4, !tbaa !1
  %44 = bitcast i32*** %l_260 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  store i32** %l_173, i32*** %l_260, align 8, !tbaa !5
  %45 = bitcast i32**** %l_259 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  store i32*** %l_260, i32**** %l_259, align 8, !tbaa !5
  %46 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %49

; <label>:49                                      ; preds = %56, %33
  %50 = load i32, i32* %i1, align 4, !tbaa !1
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %59

; <label>:52                                      ; preds = %49
  %53 = load i32, i32* %i1, align 4, !tbaa !1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1 x i64*], [1 x i64*]* %l_115, i32 0, i64 %54
  store i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), i64** %55, align 8, !tbaa !5
  br label %56

; <label>:56                                      ; preds = %52
  %57 = load i32, i32* %i1, align 4, !tbaa !1
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %i1, align 4, !tbaa !1
  br label %49

; <label>:59                                      ; preds = %49
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %60

; <label>:60                                      ; preds = %67, %59
  %61 = load i32, i32* %i1, align 4, !tbaa !1
  %62 = icmp slt i32 %61, 7
  br i1 %62, label %63, label %70

; <label>:63                                      ; preds = %60
  %64 = load i32, i32* %i1, align 4, !tbaa !1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [7 x i16], [7 x i16]* %l_128, i32 0, i64 %65
  store i16 -7, i16* %66, align 2, !tbaa !10
  br label %67

; <label>:67                                      ; preds = %63
  %68 = load i32, i32* %i1, align 4, !tbaa !1
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %i1, align 4, !tbaa !1
  br label %60

; <label>:70                                      ; preds = %60
  %71 = load i8, i8* %4, align 1, !tbaa !9
  %72 = zext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %126

; <label>:74                                      ; preds = %70
  %75 = load i8***, i8**** %l_104, align 8, !tbaa !5
  %76 = icmp ne i8*** null, %75
  %77 = zext i1 %76 to i32
  %78 = load i8***, i8**** %l_104, align 8, !tbaa !5
  store i8*** %78, i8**** %l_105, align 8, !tbaa !5
  %79 = load i8***, i8**** %l_104, align 8, !tbaa !5
  %80 = icmp eq i8*** %78, %79
  %81 = zext i1 %80 to i32
  %82 = icmp sle i32 %77, %81
  %83 = zext i1 %82 to i32
  %84 = trunc i32 %83 to i8
  %85 = load i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), align 8, !tbaa !7
  %86 = load i8, i8* %4, align 1, !tbaa !9
  %87 = zext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %101, label %89

; <label>:89                                      ; preds = %74
  %90 = load i32, i32* %l_108, align 4, !tbaa !1
  %91 = trunc i32 %90 to i16
  %92 = load i16*, i16** %l_109, align 8, !tbaa !5
  store i16 %91, i16* %92, align 2, !tbaa !10
  %93 = load i8*, i8** %l_111, align 8, !tbaa !5
  %94 = icmp eq i8* %93, null
  %95 = zext i1 %94 to i32
  %96 = trunc i32 %95 to i16
  %97 = load i8, i8* getelementptr inbounds ([8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i64 1, i64 4), align 1, !tbaa !9
  %98 = sext i8 %97 to i32
  %99 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %96, i32 %98)
  %100 = load i32*, i32** %l_112, align 8, !tbaa !5
  store i32 0, i32* %100, align 4, !tbaa !1
  br label %101

; <label>:101                                     ; preds = %89, %74
  %102 = phi i1 [ true, %74 ], [ false, %89 ]
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %2, align 4, !tbaa !1
  %105 = xor i32 %103, %104
  %106 = zext i32 %105 to i64
  %107 = icmp slt i64 %85, %106
  br i1 %107, label %111, label %108

; <label>:108                                     ; preds = %101
  %109 = load i32, i32* %l_108, align 4, !tbaa !1
  %110 = icmp ne i32 %109, 0
  br label %111

; <label>:111                                     ; preds = %108, %101
  %112 = phi i1 [ true, %101 ], [ %110, %108 ]
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* getelementptr inbounds ([9 x [4 x [7 x i32]]], [9 x [4 x [7 x i32]]]* @func_57.l_113, i32 0, i64 7, i64 3, i64 5), align 4, !tbaa !1
  %115 = xor i32 %113, %114
  %116 = getelementptr inbounds [9 x i32], [9 x i32]* %l_116, i32 0, i64 2
  store i32 %115, i32* %116, align 4, !tbaa !1
  %117 = load i8, i8* %4, align 1, !tbaa !9
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %115, %118
  %120 = zext i1 %119 to i32
  %121 = trunc i32 %120 to i8
  %122 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %84, i8 zeroext %121)
  %123 = zext i8 %122 to i64
  %124 = and i64 %123, 6285
  %125 = icmp ne i64 %124, 0
  br label %126

; <label>:126                                     ; preds = %111, %70
  %127 = phi i1 [ false, %70 ], [ %125, %111 ]
  %128 = zext i1 %127 to i32
  %129 = sext i32 %128 to i64
  %130 = call i64 @safe_div_func_int64_t_s_s(i64 %129, i64 -1)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

; <label>:132                                     ; preds = %126
  %133 = load i32*, i32** %l_112, align 8, !tbaa !5
  %134 = load i32, i32* %133, align 4, !tbaa !1
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

; <label>:136                                     ; preds = %132
  store i32 5, i32* %5
  br label %915

; <label>:137                                     ; preds = %132
  br label %907

; <label>:138                                     ; preds = %126
  call void @llvm.lifetime.start(i64 1, i8* %l_122) #1
  store i8 76, i8* %l_122, align 1, !tbaa !9
  %139 = bitcast i16** %l_134 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %139) #1
  store i16* getelementptr inbounds (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>, <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121, i32 0, i32 0, i32 0), i16** %l_134, align 8, !tbaa !5
  %140 = bitcast i16** %l_135 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %140) #1
  store i16* @g_136, i16** %l_135, align 8, !tbaa !5
  %141 = bitcast [7 x i8**]* %l_142 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %141) #1
  %142 = bitcast [7 x i8**]* %l_142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %142, i8* bitcast ([7 x i8**]* @func_57.l_142 to i8*), i64 56, i32 16, i1 false)
  %143 = bitcast i32** %l_168 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #1
  store i32* @g_38, i32** %l_168, align 8, !tbaa !5
  %144 = bitcast i32*** %l_167 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %144) #1
  store i32** %l_168, i32*** %l_167, align 8, !tbaa !5
  %145 = bitcast i32* %l_222 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  store i32 -1124270364, i32* %l_222, align 4, !tbaa !1
  %146 = bitcast i64* %l_224 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %146) #1
  store i64 -6, i64* %l_224, align 8, !tbaa !7
  %147 = bitcast i32* %l_236 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %147) #1
  store i32 -628656488, i32* %l_236, align 4, !tbaa !1
  %148 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %148) #1
  %149 = load i32, i32* %2, align 4, !tbaa !1
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

; <label>:151                                     ; preds = %138
  %152 = load i8, i8* %l_122, align 1, !tbaa !9
  %153 = zext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br label %155

; <label>:155                                     ; preds = %151, %138
  %156 = phi i1 [ false, %138 ], [ %154, %151 ]
  %157 = zext i1 %156 to i32
  %158 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext 7, i32 %157)
  %159 = sext i8 %158 to i16
  %160 = load i32, i32* @g_4, align 4, !tbaa !1
  %161 = trunc i32 %160 to i16
  %162 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %159, i16 zeroext %161)
  %163 = icmp ne i16 %162, 0
  br i1 %163, label %164, label %177

; <label>:164                                     ; preds = %155
  store i64 0, i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), align 8, !tbaa !7
  br label %165

; <label>:165                                     ; preds = %173, %164
  %166 = load i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), align 8, !tbaa !7
  %167 = icmp slt i64 %166, -6
  br i1 %167, label %168, label %176

; <label>:168                                     ; preds = %165
  %169 = load volatile i32**, i32*** @g_125, align 8, !tbaa !5
  %170 = icmp eq i32** null, %169
  br i1 %170, label %171, label %172

; <label>:171                                     ; preds = %168
  store i32* @g_4, i32** %1
  store i32 1, i32* %5
  br label %896

; <label>:172                                     ; preds = %168
  store i32* @g_4, i32** %1
  store i32 1, i32* %5
  br label %896
                                                  ; No predecessors!
  %174 = load i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), align 8, !tbaa !7
  %175 = add nsw i64 %174, -1
  store i64 %175, i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), align 8, !tbaa !7
  br label %165

; <label>:176                                     ; preds = %165
  br label %182

; <label>:177                                     ; preds = %155
  %178 = load i8, i8* %l_122, align 1, !tbaa !9
  %179 = icmp ne i8 %178, 0
  br i1 %179, label %180, label %181

; <label>:180                                     ; preds = %177
  store i32 5, i32* %5
  br label %896

; <label>:181                                     ; preds = %177
  br label %182

; <label>:182                                     ; preds = %181, %176
  %183 = load i32, i32* %l_108, align 4, !tbaa !1
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

; <label>:185                                     ; preds = %182
  store i32 7, i32* %5
  br label %896

; <label>:186                                     ; preds = %182
  %187 = load i8***, i8**** %l_104, align 8, !tbaa !5
  %188 = load i8**, i8*** %187, align 8, !tbaa !5
  %189 = load i8*, i8** %188, align 8, !tbaa !5
  %190 = load i8***, i8**** %l_105, align 8, !tbaa !5
  %191 = load i8**, i8*** %190, align 8, !tbaa !5
  store i8* %189, i8** %191, align 8, !tbaa !5
  %192 = load i8, i8* %l_122, align 1, !tbaa !9
  %193 = load i8*, i8** %l_111, align 8, !tbaa !5
  %194 = icmp eq i8* %189, %193
  %195 = zext i1 %194 to i32
  %196 = getelementptr inbounds [7 x i16], [7 x i16]* %l_128, i32 0, i64 5
  %197 = load i16, i16* %196, align 2, !tbaa !10
  %198 = zext i16 %197 to i32
  %199 = getelementptr inbounds [2 x [10 x [10 x %union.U1]]], [2 x [10 x [10 x %union.U1]]]* %l_131, i32 0, i64 1
  %200 = getelementptr inbounds [10 x [10 x %union.U1]], [10 x [10 x %union.U1]]* %199, i32 0, i64 9
  %201 = getelementptr inbounds [10 x %union.U1], [10 x %union.U1]* %200, i32 0, i64 4
  %202 = load i8, i8* %l_122, align 1, !tbaa !9
  %203 = load i8, i8* getelementptr inbounds ([8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i64 1, i64 1), align 1, !tbaa !9
  %204 = sext i8 %203 to i16
  %205 = load i8, i8* %l_122, align 1, !tbaa !9
  %206 = zext i8 %205 to i16
  %207 = load i16*, i16** %l_109, align 8, !tbaa !5
  store i16 %206, i16* %207, align 2, !tbaa !10
  %208 = sext i16 %206 to i32
  %209 = load i32*, i32** %l_112, align 8, !tbaa !5
  %210 = load i32, i32* %209, align 4, !tbaa !1
  %211 = icmp sle i32 %208, %210
  %212 = zext i1 %211 to i32
  %213 = sext i32 %212 to i64
  %214 = load volatile i64, i64* @g_11, align 8, !tbaa !7
  %215 = icmp ult i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = getelementptr inbounds [2 x [10 x [10 x %union.U1]]], [2 x [10 x [10 x %union.U1]]]* %l_131, i32 0, i64 1
  %218 = getelementptr inbounds [10 x [10 x %union.U1]], [10 x [10 x %union.U1]]* %217, i32 0, i64 9
  %219 = getelementptr inbounds [10 x %union.U1], [10 x %union.U1]* %218, i32 0, i64 4
  %220 = bitcast %union.U1* %219 to i64*
  %221 = load i64, i64* %220, align 8, !tbaa !7
  %222 = trunc i64 %221 to i16
  %223 = load i16*, i16** %l_134, align 8, !tbaa !5
  store i16 %222, i16* %223, align 2, !tbaa !10
  %224 = sext i16 %222 to i32
  %225 = load i32*, i32** %l_112, align 8, !tbaa !5
  store i32 %224, i32* %225, align 4, !tbaa !1
  %226 = trunc i32 %224 to i16
  %227 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %204, i16 zeroext %226)
  %228 = zext i16 %227 to i32
  %229 = load i32, i32* %2, align 4, !tbaa !1
  %230 = or i32 %228, %229
  %231 = load i8, i8* %4, align 1, !tbaa !9
  %232 = zext i8 %231 to i32
  %233 = icmp ult i32 %230, %232
  %234 = zext i1 %233 to i32
  %235 = load i32, i32* @g_4, align 4, !tbaa !1
  %236 = icmp eq i32 %234, %235
  %237 = zext i1 %236 to i32
  %238 = sext i32 %237 to i64
  %239 = icmp slt i64 %238, 676388650395357284
  %240 = zext i1 %239 to i32
  %241 = trunc i32 %240 to i8
  %242 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %202, i8 signext %241)
  %243 = sext i8 %242 to i32
  %244 = load i8, i8* %l_122, align 1, !tbaa !9
  %245 = zext i8 %244 to i32
  %246 = icmp slt i32 %243, %245
  br i1 %246, label %247, label %251

; <label>:247                                     ; preds = %186
  %248 = load i8, i8* getelementptr inbounds ([8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i64 1, i64 4), align 1, !tbaa !9
  %249 = sext i8 %248 to i32
  %250 = icmp ne i32 %249, 0
  br label %251

; <label>:251                                     ; preds = %247, %186
  %252 = phi i1 [ false, %186 ], [ %250, %247 ]
  %253 = zext i1 %252 to i32
  %254 = load i8, i8* %l_122, align 1, !tbaa !9
  %255 = zext i8 %254 to i32
  %256 = icmp sgt i32 %198, %255
  %257 = zext i1 %256 to i32
  %258 = trunc i32 %257 to i16
  %259 = load i16*, i16** %l_135, align 8, !tbaa !5
  store i16 %258, i16* %259, align 2, !tbaa !10
  %260 = load i8, i8* getelementptr inbounds ([8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i64 4, i64 2), align 1, !tbaa !9
  %261 = sext i8 %260 to i16
  %262 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %258, i16 signext %261)
  %263 = sext i16 %262 to i32
  %264 = icmp eq i32 %195, %263
  %265 = zext i1 %264 to i32
  %266 = load i8, i8* %l_122, align 1, !tbaa !9
  %267 = zext i8 %266 to i32
  %268 = icmp sle i32 %265, %267
  br i1 %268, label %269, label %824

; <label>:269                                     ; preds = %251
  %270 = bitcast i32* %l_162 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %270) #1
  store i32 9, i32* %l_162, align 4, !tbaa !1
  %271 = bitcast i32* %l_203 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %271) #1
  store i32 527171399, i32* %l_203, align 4, !tbaa !1
  %272 = bitcast %union.U1* %l_223 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %272) #1
  %273 = bitcast %union.U1* %l_223 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %273, i8* bitcast (%union.U1* @func_57.l_223 to i8*), i64 8, i32 8, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_232) #1
  store i8 0, i8* %l_232, align 1, !tbaa !9
  %274 = bitcast [9 x [5 x [1 x i32]]]* %l_234 to i8*
  call void @llvm.lifetime.start(i64 180, i8* %274) #1
  %275 = bitcast [9 x [5 x [1 x i32]]]* %l_234 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %275, i8* bitcast ([9 x [5 x [1 x i32]]]* @func_57.l_234 to i8*), i64 180, i32 16, i1 false)
  %276 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %276) #1
  %277 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %277) #1
  %278 = bitcast i32* %k7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %278) #1
  %279 = load i32*, i32** %3, align 8, !tbaa !5
  %280 = load volatile i32**, i32*** @g_137, align 8, !tbaa !5
  store i32* %279, i32** %280, align 8, !tbaa !5
  store i32 0, i32* @g_38, align 4, !tbaa !1
  br label %281

; <label>:281                                     ; preds = %428, %269
  %282 = load i32, i32* @g_38, align 4, !tbaa !1
  %283 = icmp ugt i32 %282, 3
  br i1 %283, label %284, label %433

; <label>:284                                     ; preds = %281
  %285 = bitcast i32** %l_143 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %285) #1
  store i32* @g_38, i32** %l_143, align 8, !tbaa !5
  %286 = bitcast i64** %l_144 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %286) #1
  store i64* @g_145, i64** %l_144, align 8, !tbaa !5
  %287 = bitcast i32* %l_154 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %287) #1
  store i32 -2001186904, i32* %l_154, align 4, !tbaa !1
  %288 = bitcast i32** %l_164 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %288) #1
  store i32* null, i32** %l_164, align 8, !tbaa !5
  %289 = bitcast i32** %l_165 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %289) #1
  store i32* null, i32** %l_165, align 8, !tbaa !5
  %290 = bitcast i32** %l_166 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %290) #1
  store i32* @g_51, i32** %l_166, align 8, !tbaa !5
  %291 = bitcast i32**** %l_169 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %291) #1
  store i32*** %l_167, i32**** %l_169, align 8, !tbaa !5
  %292 = bitcast i8*** %l_170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %292) #1
  store i8** @g_47, i8*** %l_170, align 8, !tbaa !5
  %293 = bitcast i32***** %l_174 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %293) #1
  store i32**** %l_171, i32***** %l_174, align 8, !tbaa !5
  %294 = getelementptr inbounds [7 x i8**], [7 x i8**]* %l_142, i32 0, i64 4
  %295 = load i8**, i8*** %294, align 8, !tbaa !5
  %296 = icmp ne i8** %295, null
  %297 = zext i1 %296 to i32
  %298 = load i32*, i32** %3, align 8, !tbaa !5
  %299 = load i32*, i32** %l_143, align 8, !tbaa !5
  %300 = icmp eq i32* %298, %299
  %301 = zext i1 %300 to i32
  %302 = sext i32 %301 to i64
  %303 = load i64*, i64** %l_144, align 8, !tbaa !5
  %304 = load i64, i64* %303, align 8, !tbaa !7
  %305 = xor i64 %304, %302
  store i64 %305, i64* %303, align 8, !tbaa !7
  %306 = load i32, i32* %2, align 4, !tbaa !1
  %307 = trunc i32 %306 to i16
  %308 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %307, i32 13)
  %309 = zext i16 %308 to i32
  %310 = load i32, i32* %l_154, align 4, !tbaa !1
  %311 = bitcast %union.U0* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %311, i8* bitcast ({ i16, [6 x i8] }* @g_156 to i8*), i64 8, i32 8, i1 true), !tbaa.struct !12
  %312 = load i32, i32* %2, align 4, !tbaa !1
  %313 = load i32*, i32** %l_112, align 8, !tbaa !5
  store i32 %312, i32* %313, align 4, !tbaa !1
  %314 = sext i32 %312 to i64
  %315 = or i64 %314, -4
  %316 = load i8, i8* %4, align 1, !tbaa !9
  %317 = zext i8 %316 to i64
  %318 = icmp sge i64 %315, %317
  %319 = zext i1 %318 to i32
  %320 = trunc i32 %319 to i16
  %321 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %320, i16 zeroext -1)
  %322 = trunc i16 %321 to i8
  %323 = call signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %322)
  %324 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %323, i8 signext 69)
  %325 = sext i8 %324 to i32
  %326 = xor i32 %325, -1
  %327 = icmp ne i32 %310, %326
  %328 = zext i1 %327 to i32
  %329 = trunc i32 %328 to i16
  %330 = load i16, i16* @g_136, align 2, !tbaa !10
  %331 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %329, i16 zeroext %330)
  %332 = trunc i16 %331 to i8
  %333 = getelementptr inbounds [9 x i32], [9 x i32]* %l_116, i32 0, i64 2
  %334 = load i32, i32* %333, align 4, !tbaa !1
  %335 = trunc i32 %334 to i8
  %336 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %332, i8 zeroext %335)
  %337 = zext i8 %336 to i32
  %338 = load i32, i32* %l_154, align 4, !tbaa !1
  %339 = and i32 %337, %338
  %340 = load i32, i32* %l_162, align 4, !tbaa !1
  %341 = and i32 %339, %340
  %342 = or i32 %309, %341
  %343 = load i16, i16* @g_110, align 2, !tbaa !10
  %344 = sext i16 %343 to i32
  %345 = call i32 @safe_mod_func_uint32_t_u_u(i32 %342, i32 %344)
  %346 = zext i32 %345 to i64
  %347 = icmp sgt i64 %346, 0
  %348 = zext i1 %347 to i32
  %349 = and i32 %297, %348
  %350 = sext i32 %349 to i64
  %351 = call i64 @safe_sub_func_uint64_t_u_u(i64 1, i64 %350)
  %352 = load i32*, i32** %l_166, align 8, !tbaa !5
  %353 = load i32, i32* %352, align 4, !tbaa !1
  %354 = sext i32 %353 to i64
  %355 = or i64 %354, %351
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* %352, align 4, !tbaa !1
  %357 = load i32**, i32*** %l_167, align 8, !tbaa !5
  %358 = load i32***, i32**** %l_169, align 8, !tbaa !5
  store i32** %357, i32*** %358, align 8, !tbaa !5
  %359 = load i8**, i8*** %l_170, align 8, !tbaa !5
  %360 = load i8***, i8**** %l_104, align 8, !tbaa !5
  store i8** %359, i8*** %360, align 8, !tbaa !5
  %361 = icmp eq i8** %359, @g_47
  %362 = zext i1 %361 to i32
  %363 = load i32***, i32**** %l_171, align 8, !tbaa !5
  %364 = load i32****, i32***** %l_174, align 8, !tbaa !5
  store i32*** %363, i32**** %364, align 8, !tbaa !5
  %365 = icmp ne i32*** %363, null
  br i1 %365, label %414, label %366

; <label>:366                                     ; preds = %284
  %367 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_156, i32 0, i32 0), align 2, !tbaa !10
  %368 = load i8, i8* %l_122, align 1, !tbaa !9
  %369 = load i8, i8* getelementptr inbounds ([8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i64 1, i64 4), align 1, !tbaa !9
  %370 = sext i8 %369 to i32
  %371 = call i32 @safe_div_func_int32_t_s_s(i32 1679874148, i32 %370)
  %372 = load i32, i32* %l_108, align 4, !tbaa !1
  %373 = trunc i32 %372 to i16
  %374 = load i16*, i16** %l_134, align 8, !tbaa !5
  store i16 %373, i16* %374, align 2, !tbaa !10
  %375 = sext i16 %373 to i32
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %381, label %377

; <label>:377                                     ; preds = %366
  %378 = load i8, i8* %4, align 1, !tbaa !9
  %379 = zext i8 %378 to i32
  %380 = icmp ne i32 %379, 0
  br label %381

; <label>:381                                     ; preds = %377, %366
  %382 = phi i1 [ true, %366 ], [ %380, %377 ]
  %383 = zext i1 %382 to i32
  br i1 false, label %387, label %384

; <label>:384                                     ; preds = %381
  %385 = load i32, i32* %2, align 4, !tbaa !1
  %386 = icmp ne i32 %385, 0
  br label %387

; <label>:387                                     ; preds = %384, %381
  %388 = phi i1 [ true, %381 ], [ %386, %384 ]
  %389 = zext i1 %388 to i32
  %390 = load i32, i32* %2, align 4, !tbaa !1
  %391 = zext i32 %390 to i64
  %392 = icmp sle i64 %391, 461263698
  br i1 %392, label %394, label %393

; <label>:393                                     ; preds = %387
  br label %394

; <label>:394                                     ; preds = %393, %387
  %395 = phi i1 [ true, %387 ], [ true, %393 ]
  %396 = zext i1 %395 to i32
  %397 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_156, i32 0, i32 0), align 2, !tbaa !10
  %398 = zext i16 %397 to i64
  %399 = icmp eq i64 -918585897214421804, %398
  %400 = zext i1 %399 to i32
  %401 = load i8, i8* %l_122, align 1, !tbaa !9
  %402 = load i8*, i8** @g_47, align 8, !tbaa !5
  %403 = load i8, i8* %402, align 1, !tbaa !9
  %404 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %401, i8 zeroext %403)
  %405 = zext i8 %404 to i16
  %406 = load i32, i32* %l_162, align 4, !tbaa !1
  %407 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %405, i32 %406)
  %408 = trunc i16 %407 to i8
  %409 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %408, i8 zeroext -2)
  %410 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %409, i32 6)
  %411 = sext i8 %410 to i32
  %412 = load i32, i32* %2, align 4, !tbaa !1
  %413 = icmp eq i32 %411, %412
  br label %414

; <label>:414                                     ; preds = %394, %284
  %415 = phi i1 [ true, %284 ], [ %413, %394 ]
  %416 = zext i1 %415 to i32
  %417 = and i32 %362, %416
  %418 = load i32*, i32** %l_112, align 8, !tbaa !5
  store i32 %417, i32* %418, align 4, !tbaa !1
  %419 = bitcast i32***** %l_174 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %419) #1
  %420 = bitcast i8*** %l_170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %420) #1
  %421 = bitcast i32**** %l_169 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %421) #1
  %422 = bitcast i32** %l_166 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %422) #1
  %423 = bitcast i32** %l_165 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %423) #1
  %424 = bitcast i32** %l_164 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %424) #1
  %425 = bitcast i32* %l_154 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %425) #1
  %426 = bitcast i64** %l_144 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %426) #1
  %427 = bitcast i32** %l_143 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %427) #1
  br label %428

; <label>:428                                     ; preds = %414
  %429 = load i32, i32* @g_38, align 4, !tbaa !1
  %430 = trunc i32 %429 to i8
  %431 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %430, i8 signext 7)
  %432 = sext i8 %431 to i32
  store i32 %432, i32* @g_38, align 4, !tbaa !1
  br label %281

; <label>:433                                     ; preds = %281
  %434 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext 15843, i16 zeroext 6)
  %435 = icmp ne i16 %434, 0
  br i1 %435, label %436, label %704

; <label>:436                                     ; preds = %433
  call void @llvm.lifetime.start(i64 1, i8* %l_220) #1
  store i8 9, i8* %l_220, align 1, !tbaa !9
  %437 = bitcast i32* %l_226 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %437) #1
  store i32 754505925, i32* %l_226, align 4, !tbaa !1
  %438 = bitcast [6 x [3 x [4 x i32]]]* %l_233 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %438) #1
  %439 = bitcast [6 x [3 x [4 x i32]]]* %l_233 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %439, i8* bitcast ([6 x [3 x [4 x i32]]]* @func_57.l_233 to i8*), i64 288, i32 16, i1 false)
  %440 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %440) #1
  %441 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %441) #1
  %442 = bitcast i32* %k10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %442) #1
  %443 = load i64, i64* %l_187, align 8, !tbaa !7
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %449

; <label>:445                                     ; preds = %436
  %446 = load volatile i32**, i32*** @g_137, align 8, !tbaa !5
  %447 = load i32*, i32** %446, align 8, !tbaa !5
  %448 = load volatile i32**, i32*** @g_188, align 8, !tbaa !5
  store i32* %447, i32** %448, align 8, !tbaa !5
  br label %455

; <label>:449                                     ; preds = %436
  %450 = load i32, i32* %2, align 4, !tbaa !1
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %453

; <label>:452                                     ; preds = %449
  store i32 5, i32* %5
  br label %697

; <label>:453                                     ; preds = %449
  %454 = load i32*, i32** %l_168, align 8, !tbaa !5
  store i32* %454, i32** %1
  store i32 1, i32* %5
  br label %697

; <label>:455                                     ; preds = %445
  store i32 -7, i32* @g_81, align 4, !tbaa !1
  br label %456

; <label>:456                                     ; preds = %693, %455
  %457 = load i32, i32* @g_81, align 4, !tbaa !1
  %458 = icmp eq i32 %457, 22
  br i1 %458, label %459, label %696

; <label>:459                                     ; preds = %456
  call void @llvm.lifetime.start(i64 1, i8* %l_197) #1
  store i8 -107, i8* %l_197, align 1, !tbaa !9
  %460 = bitcast [1 x i32]* %l_202 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %460) #1
  %461 = bitcast i8** %l_221 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %461) #1
  store i8* %l_122, i8** %l_221, align 8, !tbaa !5
  %462 = bitcast [10 x [1 x i32*]]* %l_225 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %462) #1
  %463 = getelementptr inbounds [10 x [1 x i32*]], [10 x [1 x i32*]]* %l_225, i64 0, i64 0
  %464 = getelementptr inbounds [1 x i32*], [1 x i32*]* %463, i64 0, i64 0
  store i32* @g_81, i32** %464, !tbaa !5
  %465 = getelementptr inbounds [1 x i32*], [1 x i32*]* %463, i64 1
  %466 = getelementptr inbounds [1 x i32*], [1 x i32*]* %465, i64 0, i64 0
  store i32* %l_162, i32** %466, !tbaa !5
  %467 = getelementptr inbounds [1 x i32*], [1 x i32*]* %465, i64 1
  %468 = getelementptr inbounds [1 x i32*], [1 x i32*]* %467, i64 0, i64 0
  store i32* @g_81, i32** %468, !tbaa !5
  %469 = getelementptr inbounds [1 x i32*], [1 x i32*]* %467, i64 1
  %470 = getelementptr inbounds [1 x i32*], [1 x i32*]* %469, i64 0, i64 0
  store i32* @g_81, i32** %470, !tbaa !5
  %471 = getelementptr inbounds [1 x i32*], [1 x i32*]* %469, i64 1
  %472 = getelementptr inbounds [1 x i32*], [1 x i32*]* %471, i64 0, i64 0
  store i32* %l_162, i32** %472, !tbaa !5
  %473 = getelementptr inbounds [1 x i32*], [1 x i32*]* %471, i64 1
  %474 = getelementptr inbounds [1 x i32*], [1 x i32*]* %473, i64 0, i64 0
  store i32* @g_81, i32** %474, !tbaa !5
  %475 = getelementptr inbounds [1 x i32*], [1 x i32*]* %473, i64 1
  %476 = getelementptr inbounds [1 x i32*], [1 x i32*]* %475, i64 0, i64 0
  store i32* @g_81, i32** %476, !tbaa !5
  %477 = getelementptr inbounds [1 x i32*], [1 x i32*]* %475, i64 1
  %478 = getelementptr inbounds [1 x i32*], [1 x i32*]* %477, i64 0, i64 0
  store i32* %l_162, i32** %478, !tbaa !5
  %479 = getelementptr inbounds [1 x i32*], [1 x i32*]* %477, i64 1
  %480 = getelementptr inbounds [1 x i32*], [1 x i32*]* %479, i64 0, i64 0
  store i32* @g_81, i32** %480, !tbaa !5
  %481 = getelementptr inbounds [1 x i32*], [1 x i32*]* %479, i64 1
  %482 = getelementptr inbounds [1 x i32*], [1 x i32*]* %481, i64 0, i64 0
  store i32* @g_81, i32** %482, !tbaa !5
  %483 = bitcast i32** %l_227 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %483) #1
  store i32* %l_108, i32** %l_227, align 8, !tbaa !5
  %484 = bitcast i32** %l_228 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %484) #1
  store i32* %l_108, i32** %l_228, align 8, !tbaa !5
  %485 = bitcast i32** %l_229 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %485) #1
  %486 = getelementptr inbounds [9 x i32], [9 x i32]* %l_116, i32 0, i64 2
  store i32* %486, i32** %l_229, align 8, !tbaa !5
  %487 = bitcast [10 x [1 x [1 x i32*]]]* %l_230 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %487) #1
  %488 = getelementptr inbounds [10 x [1 x [1 x i32*]]], [10 x [1 x [1 x i32*]]]* %l_230, i64 0, i64 0
  %489 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %488, i64 0, i64 0
  %490 = getelementptr inbounds [1 x i32*], [1 x i32*]* %489, i64 0, i64 0
  %491 = getelementptr inbounds [9 x i32], [9 x i32]* %l_116, i32 0, i64 1
  store i32* %491, i32** %490, !tbaa !5
  %492 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %488, i64 1
  %493 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %492, i64 0, i64 0
  %494 = getelementptr inbounds [1 x i32*], [1 x i32*]* %493, i64 0, i64 0
  store i32* %l_203, i32** %494, !tbaa !5
  %495 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %492, i64 1
  %496 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %495, i64 0, i64 0
  %497 = getelementptr inbounds [1 x i32*], [1 x i32*]* %496, i64 0, i64 0
  store i32* @g_51, i32** %497, !tbaa !5
  %498 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %495, i64 1
  %499 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %498, i64 0, i64 0
  %500 = getelementptr inbounds [1 x i32*], [1 x i32*]* %499, i64 0, i64 0
  store i32* @g_51, i32** %500, !tbaa !5
  %501 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %498, i64 1
  %502 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %501, i64 0, i64 0
  %503 = getelementptr inbounds [1 x i32*], [1 x i32*]* %502, i64 0, i64 0
  store i32* %l_203, i32** %503, !tbaa !5
  %504 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %501, i64 1
  %505 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %504, i64 0, i64 0
  %506 = getelementptr inbounds [1 x i32*], [1 x i32*]* %505, i64 0, i64 0
  %507 = getelementptr inbounds [9 x i32], [9 x i32]* %l_116, i32 0, i64 1
  store i32* %507, i32** %506, !tbaa !5
  %508 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %504, i64 1
  %509 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %508, i64 0, i64 0
  %510 = getelementptr inbounds [1 x i32*], [1 x i32*]* %509, i64 0, i64 0
  store i32* %l_203, i32** %510, !tbaa !5
  %511 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %508, i64 1
  %512 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %511, i64 0, i64 0
  %513 = getelementptr inbounds [1 x i32*], [1 x i32*]* %512, i64 0, i64 0
  store i32* @g_51, i32** %513, !tbaa !5
  %514 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %511, i64 1
  %515 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %514, i64 0, i64 0
  %516 = getelementptr inbounds [1 x i32*], [1 x i32*]* %515, i64 0, i64 0
  store i32* @g_51, i32** %516, !tbaa !5
  %517 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %514, i64 1
  %518 = getelementptr inbounds [1 x [1 x i32*]], [1 x [1 x i32*]]* %517, i64 0, i64 0
  %519 = getelementptr inbounds [1 x i32*], [1 x i32*]* %518, i64 0, i64 0
  store i32* %l_203, i32** %519, !tbaa !5
  %520 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %520) #1
  %521 = bitcast i32* %j12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %521) #1
  %522 = bitcast i32* %k13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %522) #1
  store i32 0, i32* %i11, align 4, !tbaa !1
  br label %523

; <label>:523                                     ; preds = %530, %459
  %524 = load i32, i32* %i11, align 4, !tbaa !1
  %525 = icmp slt i32 %524, 1
  br i1 %525, label %526, label %533

; <label>:526                                     ; preds = %523
  %527 = load i32, i32* %i11, align 4, !tbaa !1
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [1 x i32], [1 x i32]* %l_202, i32 0, i64 %528
  store i32 -1, i32* %529, align 4, !tbaa !1
  br label %530

; <label>:530                                     ; preds = %526
  %531 = load i32, i32* %i11, align 4, !tbaa !1
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %i11, align 4, !tbaa !1
  br label %523

; <label>:533                                     ; preds = %523
  %534 = load i8, i8* %l_197, align 1, !tbaa !9
  %535 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_156, i32 0, i32 0), align 2, !tbaa !10
  %536 = zext i16 %535 to i32
  %537 = load i32*, i32** %l_112, align 8, !tbaa !5
  %538 = load i32, i32* %537, align 4, !tbaa !1
  %539 = icmp ne i32 %538, 0
  %540 = xor i1 %539, true
  %541 = zext i1 %540 to i32
  %542 = trunc i32 %541 to i16
  %543 = load i32, i32* %2, align 4, !tbaa !1
  %544 = load i32*, i32** %l_112, align 8, !tbaa !5
  %545 = icmp ne i32* %544, %2
  br i1 %545, label %546, label %561

; <label>:546                                     ; preds = %533
  %547 = load i8***, i8**** %l_105, align 8, !tbaa !5
  %548 = load i8**, i8*** %547, align 8, !tbaa !5
  %549 = load i8*, i8** %548, align 8, !tbaa !5
  %550 = icmp eq i8* null, %549
  %551 = zext i1 %550 to i32
  %552 = sext i32 %551 to i64
  %553 = icmp uge i64 %552, -8865121859900907142
  %554 = zext i1 %553 to i32
  %555 = getelementptr inbounds [1 x i32], [1 x i32]* %l_202, i32 0, i64 0
  store i32 %554, i32* %555, align 4, !tbaa !1
  %556 = load i8, i8* %4, align 1, !tbaa !9
  %557 = zext i8 %556 to i32
  store i32 %557, i32* %l_203, align 4, !tbaa !1
  %558 = load i8, i8* %l_197, align 1, !tbaa !9
  %559 = zext i8 %558 to i32
  %560 = icmp ne i32 %559, 0
  br label %561

; <label>:561                                     ; preds = %546, %533
  %562 = phi i1 [ false, %533 ], [ %560, %546 ]
  %563 = zext i1 %562 to i32
  %564 = load i8**, i8*** @g_93, align 8, !tbaa !5
  %565 = load i8*, i8** %564, align 8, !tbaa !5
  %566 = load i8, i8* %565, align 1, !tbaa !9
  %567 = sext i8 %566 to i32
  %568 = icmp eq i32 %563, %567
  %569 = zext i1 %568 to i32
  %570 = icmp ne i32 %543, %569
  %571 = zext i1 %570 to i32
  %572 = trunc i32 %571 to i16
  %573 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %542, i16 signext %572)
  %574 = sext i16 %573 to i32
  %575 = icmp eq i32 %536, %574
  %576 = zext i1 %575 to i32
  %577 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %534, i32 %576)
  %578 = zext i8 %577 to i32
  %579 = call i32 @safe_mod_func_uint32_t_u_u(i32 %578, i32 -956278992)
  %580 = load i16, i16* @g_136, align 2, !tbaa !10
  %581 = load i8, i8* bitcast (%union.U1* @g_49 to i8*), align 1, !tbaa !9
  %582 = sext i8 %581 to i16
  %583 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %580, i16 signext %582)
  %584 = getelementptr inbounds [2 x [10 x [10 x %union.U1]]], [2 x [10 x [10 x %union.U1]]]* %l_131, i32 0, i64 1
  %585 = getelementptr inbounds [10 x [10 x %union.U1]], [10 x [10 x %union.U1]]* %584, i32 0, i64 9
  %586 = getelementptr inbounds [10 x %union.U1], [10 x %union.U1]* %585, i32 0, i64 4
  %587 = bitcast %union.U1* %586 to i64*
  %588 = load i64, i64* %587, align 8, !tbaa !7
  %589 = trunc i64 %588 to i32
  %590 = load i32*, i32** %l_112, align 8, !tbaa !5
  store i32 %589, i32* %590, align 4, !tbaa !1
  %591 = getelementptr inbounds [1 x i32], [1 x i32]* %l_202, i32 0, i64 0
  %592 = load i32, i32* %591, align 4, !tbaa !1
  %593 = load i32*, i32** %l_112, align 8, !tbaa !5
  %594 = load i32, i32* %593, align 4, !tbaa !1
  %595 = load volatile i16, i16* getelementptr inbounds (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>, <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121, i32 0, i32 0, i32 0), align 2, !tbaa !10
  %596 = zext i16 %595 to i32
  %597 = load i32, i32* @g_51, align 4, !tbaa !1
  %598 = trunc i32 %597 to i16
  %599 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %598, i32 10)
  %600 = trunc i16 %599 to i8
  %601 = load i32, i32* %2, align 4, !tbaa !1
  %602 = zext i32 %601 to i64
  %603 = and i64 8, %602
  %604 = load i8, i8* %l_197, align 1, !tbaa !9
  %605 = call i64 @safe_add_func_uint64_t_u_u(i64 -5, i64 6)
  %606 = load i8, i8* %l_220, align 1, !tbaa !9
  %607 = sext i8 %606 to i32
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %612

; <label>:609                                     ; preds = %561
  %610 = load i32, i32* %2, align 4, !tbaa !1
  %611 = icmp ne i32 %610, 0
  br label %612

; <label>:612                                     ; preds = %609, %561
  %613 = phi i1 [ false, %561 ], [ %611, %609 ]
  %614 = zext i1 %613 to i32
  %615 = load i8*, i8** %l_221, align 8, !tbaa !5
  %616 = load i8, i8* %615, align 1, !tbaa !9
  %617 = zext i8 %616 to i32
  %618 = xor i32 %617, %614
  %619 = trunc i32 %618 to i8
  store i8 %619, i8* %615, align 1, !tbaa !9
  %620 = zext i8 %619 to i32
  %621 = load i32, i32* %l_222, align 4, !tbaa !1
  %622 = or i32 %620, %621
  %623 = trunc i32 %622 to i8
  %624 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %623, i32 0)
  %625 = sext i8 %624 to i32
  %626 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %600, i32 %625)
  %627 = zext i8 %626 to i16
  %628 = load i8, i8* %4, align 1, !tbaa !9
  %629 = zext i8 %628 to i32
  %630 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %627, i32 %629)
  %631 = trunc i16 %630 to i8
  %632 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %631, i32 2)
  %633 = load i16, i16* getelementptr inbounds (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>, <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121, i32 0, i32 0, i32 0), align 2, !tbaa !10
  %634 = trunc i16 %633 to i8
  %635 = load i8*, i8** @g_47, align 8, !tbaa !5
  %636 = load i8, i8* %635, align 1, !tbaa !9
  %637 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %634, i8 zeroext %636)
  %638 = zext i8 %637 to i64
  %639 = load i64, i64* %l_224, align 8, !tbaa !7
  %640 = icmp ult i64 %638, %639
  %641 = zext i1 %640 to i32
  %642 = or i32 %596, %641
  %643 = sext i32 %642 to i64
  %644 = or i64 -1, %643
  %645 = trunc i64 %644 to i32
  store i32 %645, i32* %l_203, align 4, !tbaa !1
  %646 = icmp sgt i32 %594, %645
  %647 = zext i1 %646 to i32
  %648 = sext i32 %647 to i64
  %649 = and i64 %648, 0
  %650 = load i32, i32* %2, align 4, !tbaa !1
  %651 = zext i32 %650 to i64
  %652 = icmp ne i64 %649, %651
  %653 = zext i1 %652 to i32
  %654 = load volatile i16, i16* getelementptr inbounds (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>, <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121, i32 0, i32 0, i32 0), align 2, !tbaa !10
  %655 = trunc i16 %654 to i8
  %656 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %655, i8 zeroext -6)
  %657 = zext i8 %656 to i32
  %658 = or i32 %592, %657
  %659 = bitcast %union.U1* %l_223 to i64*
  %660 = load i64, i64* %659, align 8, !tbaa !7
  %661 = load i32, i32* %2, align 4, !tbaa !1
  %662 = zext i32 %661 to i64
  %663 = and i64 %660, %662
  %664 = icmp ne i64 %663, 0
  br i1 %664, label %666, label %665

; <label>:665                                     ; preds = %612
  br label %666

; <label>:666                                     ; preds = %665, %612
  %667 = phi i1 [ true, %612 ], [ true, %665 ]
  %668 = zext i1 %667 to i32
  %669 = load i32*, i32** %l_112, align 8, !tbaa !5
  %670 = load i32, i32* %669, align 4, !tbaa !1
  %671 = icmp sgt i32 %668, %670
  %672 = zext i1 %671 to i32
  %673 = load i32, i32* %l_226, align 4, !tbaa !1
  %674 = or i32 %673, %672
  store i32 %674, i32* %l_226, align 4, !tbaa !1
  %675 = load i8, i8* %l_220, align 1, !tbaa !9
  %676 = icmp ne i8 %675, 0
  br i1 %676, label %677, label %678

; <label>:677                                     ; preds = %666
  store i32 20, i32* %5
  br label %681

; <label>:678                                     ; preds = %666
  %679 = load volatile i16, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @g_237, i32 0, i64 1), align 2, !tbaa !10
  %680 = add i16 %679, 1
  store volatile i16 %680, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @g_237, i32 0, i64 1), align 2, !tbaa !10
  store i32 0, i32* %5
  br label %681

; <label>:681                                     ; preds = %678, %677
  %682 = bitcast i32* %k13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %682) #1
  %683 = bitcast i32* %j12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %683) #1
  %684 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %684) #1
  %685 = bitcast [10 x [1 x [1 x i32*]]]* %l_230 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %685) #1
  %686 = bitcast i32** %l_229 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %686) #1
  %687 = bitcast i32** %l_228 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %687) #1
  %688 = bitcast i32** %l_227 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %688) #1
  %689 = bitcast [10 x [1 x i32*]]* %l_225 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %689) #1
  %690 = bitcast i8** %l_221 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %690) #1
  %691 = bitcast [1 x i32]* %l_202 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %691) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_197) #1
  %cleanup.dest = load i32, i32* %5
  switch i32 %cleanup.dest, label %951 [
    i32 0, label %692
    i32 20, label %696
  ]

; <label>:692                                     ; preds = %681
  br label %693

; <label>:693                                     ; preds = %692
  %694 = load i32, i32* @g_81, align 4, !tbaa !1
  %695 = add i32 %694, 1
  store i32 %695, i32* @g_81, align 4, !tbaa !1
  br label %456

; <label>:696                                     ; preds = %681, %456
  store i32 0, i32* %5
  br label %697

; <label>:697                                     ; preds = %696, %453, %452
  %698 = bitcast i32* %k10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %698) #1
  %699 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %699) #1
  %700 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %700) #1
  %701 = bitcast [6 x [3 x [4 x i32]]]* %l_233 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %701) #1
  %702 = bitcast i32* %l_226 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %702) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_220) #1
  %cleanup.dest.14 = load i32, i32* %5
  switch i32 %cleanup.dest.14, label %815 [
    i32 0, label %703
  ]

; <label>:703                                     ; preds = %697
  br label %707

; <label>:704                                     ; preds = %433
  %705 = load volatile i32**, i32*** @g_137, align 8, !tbaa !5
  %706 = load i32*, i32** %705, align 8, !tbaa !5
  store i32* %706, i32** %1
  store i32 1, i32* %5
  br label %815

; <label>:707                                     ; preds = %703
  store i32 17, i32* %l_162, align 4, !tbaa !1
  br label %708

; <label>:708                                     ; preds = %809, %707
  %709 = load i32, i32* %l_162, align 4, !tbaa !1
  %710 = icmp ugt i32 %709, 47
  br i1 %710, label %711, label %814

; <label>:711                                     ; preds = %708
  %712 = bitcast %union.U1** %l_265 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %712) #1
  store %union.U1* %l_223, %union.U1** %l_265, align 8, !tbaa !5
  store i16 -11, i16* @g_136, align 2, !tbaa !10
  br label %713

; <label>:713                                     ; preds = %797, %711
  %714 = load i16, i16* @g_136, align 2, !tbaa !10
  %715 = sext i16 %714 to i32
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %717, label %800

; <label>:717                                     ; preds = %713
  %718 = bitcast i32* %l_261 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %718) #1
  store i32 -1577012993, i32* %l_261, align 4, !tbaa !1
  %719 = bitcast %union.U1* %l_223 to i64*
  %720 = load i64, i64* %719, align 8, !tbaa !7
  %721 = trunc i64 %720 to i8
  %722 = load i8, i8* %4, align 1, !tbaa !9
  %723 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_244, i32 0, i32 0), align 2, !tbaa !10
  %724 = sext i16 %723 to i32
  %725 = load i32***, i32**** %l_259, align 8, !tbaa !5
  %726 = icmp eq i32*** %725, null
  %727 = zext i1 %726 to i32
  %728 = load i32, i32* %l_261, align 4, !tbaa !1
  %729 = icmp sle i32 %727, %728
  %730 = zext i1 %729 to i32
  %731 = trunc i32 %730 to i16
  %732 = load i32*, i32** %l_112, align 8, !tbaa !5
  %733 = load i32, i32* %732, align 4, !tbaa !1
  %734 = getelementptr inbounds [9 x i32], [9 x i32]* %l_116, i32 0, i64 2
  %735 = load i32, i32* %734, align 4, !tbaa !1
  %736 = trunc i32 %735 to i8
  %737 = load i8, i8* bitcast (%union.U1* @g_49 to i8*), align 1, !tbaa !9
  %738 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %736, i8 signext %737)
  %739 = sext i8 %738 to i32
  %740 = load i32***, i32**** %l_171, align 8, !tbaa !5
  %741 = load i32**, i32*** %740, align 8, !tbaa !5
  %742 = load i32*, i32** %741, align 8, !tbaa !5
  store i32 %739, i32* %742, align 4, !tbaa !1
  %743 = load i8, i8* getelementptr inbounds ([8 x [9 x i8]], [8 x [9 x i8]]* @g_48, i32 0, i64 1, i64 4), align 1, !tbaa !9
  %744 = sext i8 %743 to i32
  %745 = icmp ne i32 %733, %744
  %746 = zext i1 %745 to i32
  %747 = load i32, i32* %2, align 4, !tbaa !1
  %748 = icmp ult i32 %746, %747
  br i1 %748, label %749, label %750

; <label>:749                                     ; preds = %717
  br label %750

; <label>:750                                     ; preds = %749, %717
  %751 = phi i1 [ false, %717 ], [ true, %749 ]
  %752 = zext i1 %751 to i32
  %753 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %731, i32 %752)
  %754 = load i32, i32* %2, align 4, !tbaa !1
  %755 = zext i32 %754 to i64
  %756 = icmp sge i64 39, %755
  %757 = zext i1 %756 to i32
  %758 = icmp sle i32 %724, %757
  %759 = zext i1 %758 to i32
  %760 = trunc i32 %759 to i16
  %761 = load i32, i32* %2, align 4, !tbaa !1
  %762 = trunc i32 %761 to i16
  %763 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %760, i16 zeroext %762)
  %764 = zext i16 %763 to i64
  %765 = icmp sge i64 %764, 7
  %766 = zext i1 %765 to i32
  %767 = trunc i32 %766 to i8
  %768 = load i8, i8* %4, align 1, !tbaa !9
  %769 = zext i8 %768 to i32
  %770 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %767, i32 %769)
  %771 = zext i8 %770 to i32
  %772 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %722, i32 %771)
  %773 = load i32, i32* %2, align 4, !tbaa !1
  %774 = call i32 @safe_mod_func_uint32_t_u_u(i32 -966233046, i32 -1576627611)
  %775 = zext i32 %774 to i64
  %776 = or i64 %775, 1528106494
  %777 = load i8**, i8*** @g_93, align 8, !tbaa !5
  %778 = load i8*, i8** %777, align 8, !tbaa !5
  %779 = load i8, i8* %778, align 1, !tbaa !9
  %780 = sext i8 %779 to i32
  %781 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %721, i32 %780)
  %782 = sext i8 %781 to i32
  %783 = load i32, i32* %l_222, align 4, !tbaa !1
  %784 = icmp sgt i32 %782, %783
  %785 = zext i1 %784 to i32
  %786 = trunc i32 %785 to i16
  %787 = getelementptr inbounds [9 x [5 x [1 x i32]]], [9 x [5 x [1 x i32]]]* %l_234, i32 0, i64 2
  %788 = getelementptr inbounds [5 x [1 x i32]], [5 x [1 x i32]]* %787, i32 0, i64 2
  %789 = getelementptr inbounds [1 x i32], [1 x i32]* %788, i32 0, i64 0
  %790 = load i32, i32* %789, align 4, !tbaa !1
  %791 = trunc i32 %790 to i16
  %792 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %786, i16 signext %791)
  %793 = sext i16 %792 to i32
  %794 = load i32, i32* @g_51, align 4, !tbaa !1
  %795 = or i32 %794, %793
  store i32 %795, i32* @g_51, align 4, !tbaa !1
  %796 = bitcast i32* %l_261 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %796) #1
  br label %797

; <label>:797                                     ; preds = %750
  %798 = load i16, i16* @g_136, align 2, !tbaa !10
  %799 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %798, i16 signext 1)
  store i16 %799, i16* @g_136, align 2, !tbaa !10
  br label %713

; <label>:800                                     ; preds = %713
  %801 = load %union.U1*, %union.U1** %l_265, align 8, !tbaa !5
  %802 = bitcast %union.U1* %801 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %802, i8* bitcast (%union.U1* @func_57.l_264 to i8*), i64 8, i32 8, i1 false), !tbaa.struct !13
  %803 = bitcast %union.U1* %7 to i8*
  %804 = bitcast %union.U1* %801 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %803, i8* %804, i64 8, i32 8, i1 false), !tbaa.struct !13
  %805 = getelementptr %union.U1, %union.U1* %7, i32 0, i32 0
  %806 = load i64, i64* %805, align 8
  %807 = call i32* @func_61(i32 0, i64 %806)
  store i32* %807, i32** %3, align 8, !tbaa !5
  %808 = bitcast %union.U1** %l_265 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %808) #1
  br label %809

; <label>:809                                     ; preds = %800
  %810 = load i32, i32* %l_162, align 4, !tbaa !1
  %811 = trunc i32 %810 to i16
  %812 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %811, i16 signext 3)
  %813 = sext i16 %812 to i32
  store i32 %813, i32* %l_162, align 4, !tbaa !1
  br label %708

; <label>:814                                     ; preds = %708
  store i32 0, i32* %5
  br label %815

; <label>:815                                     ; preds = %814, %704, %697
  %816 = bitcast i32* %k7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %816) #1
  %817 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %817) #1
  %818 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %818) #1
  %819 = bitcast [9 x [5 x [1 x i32]]]* %l_234 to i8*
  call void @llvm.lifetime.end(i64 180, i8* %819) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_232) #1
  %820 = bitcast %union.U1* %l_223 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %820) #1
  %821 = bitcast i32* %l_203 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %821) #1
  %822 = bitcast i32* %l_162 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %822) #1
  %cleanup.dest.15 = load i32, i32* %5
  switch i32 %cleanup.dest.15, label %896 [
    i32 0, label %823
  ]

; <label>:823                                     ; preds = %815
  br label %890

; <label>:824                                     ; preds = %251
  %825 = bitcast i32* %l_266 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %825) #1
  store i32 1804327865, i32* %l_266, align 4, !tbaa !1
  %826 = bitcast i16** %l_278 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %826) #1
  %827 = getelementptr inbounds [7 x i16], [7 x i16]* %l_128, i32 0, i64 3
  store i16* %827, i16** %l_278, align 8, !tbaa !5
  %828 = load i32, i32* %l_266, align 4, !tbaa !1
  %829 = icmp ne i32 %828, 0
  br i1 %829, label %830, label %884

; <label>:830                                     ; preds = %824
  %831 = load i32*, i32** %l_112, align 8, !tbaa !5
  %832 = load i32, i32* %831, align 4, !tbaa !1
  %833 = load i16*, i16** %l_109, align 8, !tbaa !5
  %834 = load i16, i16* %833, align 2, !tbaa !10
  %835 = sext i16 %834 to i32
  %836 = or i32 %835, %832
  %837 = trunc i32 %836 to i16
  store i16 %837, i16* %833, align 2, !tbaa !10
  %838 = load i16*, i16** %l_134, align 8, !tbaa !5
  store i16 %837, i16* %838, align 2, !tbaa !10
  %839 = load i8, i8* bitcast (%union.U1* @func_57.l_264 to i8*), align 1, !tbaa !9
  %840 = sext i8 %839 to i16
  %841 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %837, i16 signext %840)
  %842 = sext i16 %841 to i32
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %882, label %844

; <label>:844                                     ; preds = %830
  %845 = load i32, i32* %2, align 4, !tbaa !1
  %846 = trunc i32 %845 to i8
  %847 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %846, i32 6)
  %848 = zext i8 %847 to i16
  %849 = load i32, i32* %l_222, align 4, !tbaa !1
  %850 = load i64, i64* %l_224, align 8, !tbaa !7
  %851 = load volatile i16, i16* getelementptr inbounds (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>, <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_121, i32 0, i32 0, i32 0), align 2, !tbaa !10
  %852 = load i16*, i16** %l_278, align 8, !tbaa !5
  store i16 %851, i16* %852, align 2, !tbaa !10
  %853 = zext i16 %851 to i64
  %854 = icmp eq i64 %850, %853
  %855 = zext i1 %854 to i32
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds [9 x i32], [9 x i32]* %l_116, i32 0, i64 1
  %858 = load i32, i32* %857, align 4, !tbaa !1
  %859 = sext i32 %858 to i64
  store i64 %859, i64* @g_145, align 8, !tbaa !7
  %860 = call i64 @safe_add_func_uint64_t_u_u(i64 %856, i64 %859)
  %861 = trunc i64 %860 to i32
  %862 = call i32 @safe_div_func_int32_t_s_s(i32 %849, i32 %861)
  %863 = load volatile i32**, i32*** @g_125, align 8, !tbaa !5
  %864 = icmp ne i32** %863, null
  %865 = zext i1 %864 to i32
  %866 = load i32*, i32** %l_112, align 8, !tbaa !5
  %867 = load i32, i32* %866, align 4, !tbaa !1
  %868 = icmp ne i32 %865, %867
  %869 = zext i1 %868 to i32
  %870 = sext i32 %869 to i64
  %871 = icmp sge i64 %870, 2834526209
  %872 = zext i1 %871 to i32
  %873 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %848, i32 %872)
  %874 = sext i16 %873 to i32
  %875 = getelementptr inbounds [2 x [10 x [10 x %union.U1]]], [2 x [10 x [10 x %union.U1]]]* %l_131, i32 0, i64 1
  %876 = getelementptr inbounds [10 x [10 x %union.U1]], [10 x [10 x %union.U1]]* %875, i32 0, i64 9
  %877 = getelementptr inbounds [10 x %union.U1], [10 x %union.U1]* %876, i32 0, i64 4
  %878 = bitcast %union.U1* %877 to i8*
  %879 = load i8, i8* %878, align 1, !tbaa !9
  %880 = sext i8 %879 to i32
  %881 = icmp eq i32 %874, %880
  br label %882

; <label>:882                                     ; preds = %844, %830
  %883 = phi i1 [ true, %830 ], [ %881, %844 ]
  br label %884

; <label>:884                                     ; preds = %882, %824
  %885 = phi i1 [ false, %824 ], [ %883, %882 ]
  %886 = zext i1 %885 to i32
  %887 = load i32*, i32** %l_112, align 8, !tbaa !5
  store i32 %886, i32* %887, align 4, !tbaa !1
  %888 = bitcast i16** %l_278 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %888) #1
  %889 = bitcast i32* %l_266 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %889) #1
  br label %890

; <label>:890                                     ; preds = %884, %823
  %891 = load i32*, i32** %l_112, align 8, !tbaa !5
  %892 = load i32, i32* %891, align 4, !tbaa !1
  %893 = icmp ne i32 %892, 0
  br i1 %893, label %894, label %895

; <label>:894                                     ; preds = %890
  store i32 5, i32* %5
  br label %896

; <label>:895                                     ; preds = %890
  store i32 0, i32* %5
  br label %896

; <label>:896                                     ; preds = %895, %894, %815, %185, %180, %172, %171
  %897 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %897) #1
  %898 = bitcast i32* %l_236 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %898) #1
  %899 = bitcast i64* %l_224 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %899) #1
  %900 = bitcast i32* %l_222 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %900) #1
  %901 = bitcast i32*** %l_167 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %901) #1
  %902 = bitcast i32** %l_168 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %902) #1
  %903 = bitcast [7 x i8**]* %l_142 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %903) #1
  %904 = bitcast i16** %l_135 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %904) #1
  %905 = bitcast i16** %l_134 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %905) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_122) #1
  %cleanup.dest.16 = load i32, i32* %5
  switch i32 %cleanup.dest.16, label %915 [
    i32 0, label %906
  ]

; <label>:906                                     ; preds = %896
  br label %907

; <label>:907                                     ; preds = %906, %137
  %908 = getelementptr inbounds [9 x i32], [9 x i32]* %l_116, i32 0, i64 8
  %909 = load i32, i32* %908, align 4, !tbaa !1
  %910 = icmp ne i32 %909, 0
  br i1 %910, label %911, label %912

; <label>:911                                     ; preds = %907
  store i32 7, i32* %5
  br label %915

; <label>:912                                     ; preds = %907
  %913 = load volatile i32**, i32*** @g_137, align 8, !tbaa !5
  %914 = load i32*, i32** %913, align 8, !tbaa !5
  store i32* %914, i32** %1
  store i32 1, i32* %5
  br label %915

; <label>:915                                     ; preds = %912, %911, %896, %136
  %916 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %916) #1
  %917 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %917) #1
  %918 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %918) #1
  %919 = bitcast i32**** %l_259 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %919) #1
  %920 = bitcast i32*** %l_260 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %920) #1
  %921 = bitcast i32* %l_235 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %921) #1
  %922 = bitcast i32* %l_231 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %922) #1
  %923 = bitcast i64* %l_187 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %923) #1
  %924 = bitcast [7 x i16]* %l_128 to i8*
  call void @llvm.lifetime.end(i64 14, i8* %924) #1
  %925 = bitcast [1 x i64*]* %l_115 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %925) #1
  %926 = bitcast i64** %l_114 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %926) #1
  %927 = bitcast i32** %l_112 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %927) #1
  %928 = bitcast i8** %l_111 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %928) #1
  %929 = bitcast i16** %l_109 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %929) #1
  %930 = bitcast i8**** %l_105 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %930) #1
  %cleanup.dest.17 = load i32, i32* %5
  switch i32 %cleanup.dest.17, label %939 [
    i32 5, label %936
    i32 7, label %931
  ]

; <label>:931                                     ; preds = %915
  %932 = load i32, i32* @g_87, align 4, !tbaa !1
  %933 = trunc i32 %932 to i16
  %934 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %933, i16 zeroext 3)
  %935 = zext i16 %934 to i32
  store i32 %935, i32* @g_87, align 4, !tbaa !1
  br label %30

; <label>:936                                     ; preds = %915, %30
  %937 = load volatile i32**, i32*** @g_188, align 8, !tbaa !5
  %938 = load i32*, i32** %937, align 8, !tbaa !5
  store i32* %938, i32** %1
  store i32 1, i32* %5
  br label %939

; <label>:939                                     ; preds = %936, %915
  %940 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %940) #1
  %941 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %941) #1
  %942 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %942) #1
  %943 = bitcast i32**** %l_171 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %943) #1
  %944 = bitcast i32*** %l_172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %944) #1
  %945 = bitcast i32** %l_173 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %945) #1
  %946 = bitcast [2 x [10 x [10 x %union.U1]]]* %l_131 to i8*
  call void @llvm.lifetime.end(i64 1600, i8* %946) #1
  %947 = bitcast [9 x i32]* %l_116 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %947) #1
  %948 = bitcast i32* %l_108 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %948) #1
  %949 = bitcast i8**** %l_104 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %949) #1
  %950 = load i32*, i32** %1
  ret i32* %950

; <label>:951                                     ; preds = %681
  unreachable
}

; Function Attrs: nounwind uwtable
define internal signext i8 @func_66(i16 zeroext %p_67) #0 {
  %1 = alloca i16, align 2
  %l_77 = alloca i32, align 4
  %l_78 = alloca i64, align 8
  %l_79 = alloca i32*, align 8
  %l_80 = alloca i32*, align 8
  %l_82 = alloca [5 x i32], align 16
  %l_83 = alloca [10 x i32*], align 16
  %i = alloca i32, align 4
  store i16 %p_67, i16* %1, align 2, !tbaa !10
  %2 = bitcast i32* %l_77 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -5, i32* %l_77, align 4, !tbaa !1
  %3 = bitcast i64* %l_78 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 -6237956087376167770, i64* %l_78, align 8, !tbaa !7
  %4 = bitcast i32** %l_79 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* null, i32** %l_79, align 8, !tbaa !5
  %5 = bitcast i32** %l_80 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_81, i32** %l_80, align 8, !tbaa !5
  %6 = bitcast [5 x i32]* %l_82 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %6) #1
  %7 = bitcast [10 x i32*]* %l_83 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %7) #1
  %8 = bitcast [10 x i32*]* %l_83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([10 x i32*]* @func_66.l_83 to i8*), i64 80, i32 16, i1 false)
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %10

; <label>:10                                      ; preds = %17, %0
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %12 = icmp slt i32 %11, 5
  br i1 %12, label %13, label %20

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* %i, align 4, !tbaa !1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [5 x i32], [5 x i32]* %l_82, i32 0, i64 %15
  store i32 282762216, i32* %16, align 4, !tbaa !1
  br label %17

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %i, align 4, !tbaa !1
  br label %10

; <label>:20                                      ; preds = %10
  %21 = load volatile i64, i64* @g_11, align 8, !tbaa !7
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %l_77, align 4, !tbaa !1
  %23 = load i64, i64* %l_78, align 8, !tbaa !7
  %24 = trunc i64 %23 to i8
  %25 = load i8*, i8** @g_47, align 8, !tbaa !5
  store i8 %24, i8* %25, align 1, !tbaa !9
  %26 = sext i8 %24 to i64
  %27 = load i64, i64* getelementptr inbounds (%union.U1, %union.U1* @g_49, i32 0, i32 0), align 8, !tbaa !7
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32*, i32** %l_80, align 8, !tbaa !5
  %31 = load i32, i32* %30, align 4, !tbaa !1
  %32 = xor i32 %31, %29
  store i32 %32, i32* %30, align 4, !tbaa !1
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %l_82, i32 0, i64 1
  store i32 %32, i32* %33, align 4, !tbaa !1
  %34 = xor i32 %22, %32
  %35 = load i32, i32* @g_51, align 4, !tbaa !1
  %36 = or i32 %35, %34
  store i32 %36, i32* @g_51, align 4, !tbaa !1
  %37 = load i8*, i8** @g_47, align 8, !tbaa !5
  %38 = load i8, i8* %37, align 1, !tbaa !9
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast [10 x i32*]* %l_83 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %40) #1
  %41 = bitcast [5 x i32]* %l_82 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %41) #1
  %42 = bitcast i32** %l_80 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i32** %l_79 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast i64* %l_78 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i32* %l_77 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  ret i8 %38
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
define internal i32 @safe_unary_minus_func_uint32_t_u(i32 %ui) #0 {
  %1 = alloca i32, align 4
  store i32 %ui, i32* %1, align 4, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !1
  %3 = sub i32 0, %2
  ret i32 %3
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
!12 = !{i64 0, i64 2, !10, i64 0, i64 4, !1, i64 0, i64 2, !10, i64 0, i64 8, !7, i64 0, i64 2, !10}
!13 = !{i64 0, i64 8, !7, i64 0, i64 1, !9}
!14 = !{i64 0, i64 8, !7, i64 0, i64 8, !5}
