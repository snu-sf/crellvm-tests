; ModuleID = '00588.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type <{ i48, [10 x i8] }>

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i64 1, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_4 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_25 = internal global i32 -1, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_25\00", align 1
@g_75 = internal global i32 -205366757, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_75\00", align 1
@g_79 = internal global i32 7, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_79\00", align 1
@g_80 = internal global i32 -917867420, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_80\00", align 1
@g_81 = internal global i32 -1, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_81\00", align 1
@g_82 = internal global i32 -1876342431, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_82\00", align 1
@g_98 = internal global i32 -1, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"g_98\00", align 1
@g_100 = internal global i64 -7951530287723421739, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"g_100\00", align 1
@g_102 = internal global i64 8702030401597191454, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"g_102\00", align 1
@g_105 = internal global i32 -1, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"g_105\00", align 1
@g_113 = internal global i16 -3, align 2
@.str.13 = private unnamed_addr constant [6 x i8] c"g_113\00", align 1
@g_115 = internal global [10 x [7 x i64]] [[7 x i64] [i64 -7318295974905028361, i64 -869463506470788603, i64 -5, i64 -7318295974905028361, i64 1, i64 -5, i64 -5], [7 x i64] [i64 -9115300320240750940, i64 -4379303373784876506, i64 2219635156675451581, i64 -4379303373784876506, i64 -9115300320240750940, i64 -2655516301634726759, i64 -9115300320240750940], [7 x i64] [i64 1, i64 -7318295974905028361, i64 -5, i64 -869463506470788603, i64 -7318295974905028361, i64 -7318295974905028361, i64 -869463506470788603], [7 x i64] [i64 -7, i64 -4379303373784876506, i64 -7, i64 9, i64 3183447586819583228, i64 9, i64 -7], [7 x i64] [i64 1, i64 -869463506470788603, i64 -1, i64 1, i64 1, i64 -1, i64 -869463506470788603], [7 x i64] [i64 -9115300320240750940, i64 9, i64 3100783710163512148, i64 -4379303373784876506, i64 3100783710163512148, i64 9, i64 -9115300320240750940], [7 x i64] [i64 -7318295974905028361, i64 1, i64 -5, i64 -5, i64 -7318295974905028361, i64 4324718316239120347, i64 -1], [7 x i64] [i64 -7, i64 9, i64 3183447586819583228, i64 9, i64 -7, i64 -4379303373784876506, i64 -7], [7 x i64] [i64 -7318295974905028361, i64 -1, i64 -1, i64 -7318295974905028361, i64 4324718316239120347, i64 -1, i64 -5], [7 x i64] [i64 2219635156675451581, i64 9, i64 2219635156675451581, i64 -2655516301634726759, i64 3100783710163512148, i64 -2655516301634726759, i64 2219635156675451581]], align 16
@.str.14 = private unnamed_addr constant [12 x i8] c"g_115[i][j]\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"g_128.f0\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"g_128.f1\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"g_128.f2\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"g_128.f3\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"g_128.f4\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"g_128.f5\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"g_128.f6\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_132\00", align 1
@g_136 = internal global i16 3, align 2
@.str.24 = private unnamed_addr constant [6 x i8] c"g_136\00", align 1
@g_154 = internal constant [8 x [5 x i64]] [[5 x i64] [i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216], [5 x i64] [i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216], [5 x i64] [i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216], [5 x i64] [i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216], [5 x i64] [i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216], [5 x i64] [i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216], [5 x i64] [i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216], [5 x i64] [i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216, i64 8075227342396081216]], align 16
@.str.25 = private unnamed_addr constant [12 x i8] c"g_154[i][j]\00", align 1
@g_159 = internal global i16 -25382, align 2
@.str.26 = private unnamed_addr constant [6 x i8] c"g_159\00", align 1
@g_187 = internal global i8 7, align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_187\00", align 1
@g_237 = internal global [4 x i8] c"\82\82\82\82", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"g_237[i]\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_258 = internal global i16 -11214, align 2
@.str.30 = private unnamed_addr constant [6 x i8] c"g_258\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"g_280[i].f0\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"g_280[i].f1\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"g_280[i].f2\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"g_280[i].f3\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"g_280[i].f4\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"g_280[i].f5\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"g_280[i].f6\00", align 1
@g_330 = internal global [9 x [5 x i64]] [[5 x i64] [i64 5255196214134230340, i64 9176816501105745361, i64 5418614902550374460, i64 -5080901854551242202, i64 5418614902550374460], [5 x i64] [i64 5255196214134230340, i64 5255196214134230340, i64 -6, i64 -5080901854551242202, i64 3262461483138934765], [5 x i64] [i64 9176816501105745361, i64 5255196214134230340, i64 5418614902550374460, i64 6, i64 3262461483138934765], [5 x i64] [i64 5255196214134230340, i64 9176816501105745361, i64 5418614902550374460, i64 -5080901854551242202, i64 5418614902550374460], [5 x i64] [i64 5255196214134230340, i64 5255196214134230340, i64 -6, i64 -5080901854551242202, i64 3262461483138934765], [5 x i64] [i64 9176816501105745361, i64 5255196214134230340, i64 5418614902550374460, i64 6, i64 3262461483138934765], [5 x i64] [i64 5255196214134230340, i64 9176816501105745361, i64 5418614902550374460, i64 -5080901854551242202, i64 5418614902550374460], [5 x i64] [i64 5255196214134230340, i64 5255196214134230340, i64 -6, i64 -5080901854551242202, i64 3262461483138934765], [5 x i64] [i64 9176816501105745361, i64 5255196214134230340, i64 5418614902550374460, i64 6, i64 3262461483138934765]], align 16
@.str.38 = private unnamed_addr constant [12 x i8] c"g_330[i][j]\00", align 1
@g_355 = internal global i32 4, align 4
@.str.39 = private unnamed_addr constant [6 x i8] c"g_355\00", align 1
@g_445 = internal global i64 1997918788320109281, align 8
@.str.40 = private unnamed_addr constant [6 x i8] c"g_445\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"g_451\00", align 1
@g_474 = internal global i32 0, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"g_474\00", align 1
@g_509 = internal global i32 970771022, align 4
@.str.43 = private unnamed_addr constant [6 x i8] c"g_509\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"g_559.f0\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"g_559.f1\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"g_559.f2\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"g_559.f3\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"g_559.f4\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"g_559.f5\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"g_559.f6\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"g_637.f0\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"g_637.f1\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"g_637.f2\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"g_637.f3\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"g_637.f4\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"g_637.f5\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"g_637.f6\00", align 1
@g_659 = internal global i16 -31899, align 2
@.str.58 = private unnamed_addr constant [6 x i8] c"g_659\00", align 1
@g_776 = internal global i16 -17436, align 2
@.str.59 = private unnamed_addr constant [6 x i8] c"g_776\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"g_792.f0\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"g_792.f1\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"g_792.f2\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"g_792.f3\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"g_792.f4\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"g_792.f5\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"g_792.f6\00", align 1
@g_860 = internal global i16 7, align 2
@.str.67 = private unnamed_addr constant [6 x i8] c"g_860\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"g_882\00", align 1
@g_913 = internal global i8 5, align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"g_913\00", align 1
@g_929 = internal global [10 x i32] zeroinitializer, align 16
@.str.70 = private unnamed_addr constant [9 x i8] c"g_929[i]\00", align 1
@g_1043 = internal global i32 -1598593190, align 4
@.str.71 = private unnamed_addr constant [7 x i8] c"g_1043\00", align 1
@g_1101 = internal global i32 0, align 4
@.str.72 = private unnamed_addr constant [7 x i8] c"g_1101\00", align 1
@g_1118 = internal global i32 2046015774, align 4
@.str.73 = private unnamed_addr constant [7 x i8] c"g_1118\00", align 1
@g_1197 = internal global i16 -1, align 2
@.str.74 = private unnamed_addr constant [7 x i8] c"g_1197\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"g_1240.f0\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"g_1240.f1\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"g_1240.f2\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"g_1240.f3\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"g_1240.f4\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"g_1240.f5\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"g_1240.f6\00", align 1
@g_1405 = internal global i16 -1, align 2
@.str.82 = private unnamed_addr constant [7 x i8] c"g_1405\00", align 1
@g_1421 = internal global i64 -5, align 8
@.str.83 = private unnamed_addr constant [7 x i8] c"g_1421\00", align 1
@g_1489 = internal global i16 31220, align 2
@.str.84 = private unnamed_addr constant [7 x i8] c"g_1489\00", align 1
@g_1511 = internal global i8 49, align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"g_1511\00", align 1
@g_1513 = internal global [5 x [6 x i32]] [[6 x i32] [i32 -1, i32 -376519311, i32 -810608815, i32 -1492281645, i32 -1492281645, i32 -810608815], [6 x i32] [i32 -1, i32 -1, i32 -1492281645, i32 1538391324, i32 9, i32 1538391324], [6 x i32] [i32 -376519311, i32 -1, i32 -376519311, i32 -810608815, i32 -1492281645, i32 -1492281645], [6 x i32] [i32 -1, i32 -376519311, i32 -376519311, i32 -1, i32 -1, i32 1538391324], [6 x i32] [i32 1538391324, i32 -1, i32 -1492281645, i32 -1, i32 1538391324, i32 -810608815]], align 16
@.str.86 = private unnamed_addr constant [13 x i8] c"g_1513[i][j]\00", align 1
@g_1579 = internal global [3 x i8] c"\A2\A2\A2", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"g_1579[i]\00", align 1
@g_1582 = internal global i8 0, align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"g_1582\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"g_1599.f0\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"g_1599.f1\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"g_1599.f2\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"g_1599.f3\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"g_1599.f4\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"g_1599.f5\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"g_1599.f6\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"g_1619\00", align 1
@g_1626 = internal global i64 -5911560533112883036, align 8
@.str.97 = private unnamed_addr constant [7 x i8] c"g_1626\00", align 1
@g_1803 = internal global i8 -5, align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"g_1803\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"g_1814.f0\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"g_1814.f1\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"g_1814.f2\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"g_1814.f3\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"g_1814.f4\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"g_1814.f5\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"g_1814.f6\00", align 1
@g_1961 = internal global i64 2092541981829878589, align 8
@.str.106 = private unnamed_addr constant [7 x i8] c"g_1961\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_905 = internal global i8* @g_187, align 8
@g_1938 = internal global i32* @g_355, align 8
@g_3 = internal global i32* @g_4, align 8
@.str.107 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_128 = internal global { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -12, i8 2, i8 64, i8 -11, i8 0, i8 0, [2 x i8] undef, i8 -35, i8 95, i8 2, i8 -82, i8 -4, i8 127, i8 125, i8 -6, i8 -1, i8 1 }, align 1
@g_280 = internal global <{ { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -128, i8 1, i8 -128, i8 -75, i8 0, i8 0, [2 x i8] undef, i8 15, i8 -48, i8 127, i8 -25, i8 3, i8 64, i8 -63, i8 -6, i8 -1, i8 1 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -128, i8 1, i8 -128, i8 -75, i8 0, i8 0, [2 x i8] undef, i8 15, i8 -48, i8 127, i8 -25, i8 3, i8 64, i8 -63, i8 -6, i8 -1, i8 1 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -128, i8 1, i8 -128, i8 -75, i8 0, i8 0, [2 x i8] undef, i8 15, i8 -48, i8 127, i8 -25, i8 3, i8 64, i8 -63, i8 -6, i8 -1, i8 1 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -128, i8 1, i8 -128, i8 -75, i8 0, i8 0, [2 x i8] undef, i8 15, i8 -48, i8 127, i8 -25, i8 3, i8 64, i8 -63, i8 -6, i8 -1, i8 1 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -128, i8 1, i8 -128, i8 -75, i8 0, i8 0, [2 x i8] undef, i8 15, i8 -48, i8 127, i8 -25, i8 3, i8 64, i8 -63, i8 -6, i8 -1, i8 1 } }>, align 16
@g_559 = internal global { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -56, i8 0, i8 -32, i8 -37, i8 -1, i8 7, [2 x i8] undef, i8 63, i8 -112, i8 1, i8 23, i8 -2, i8 127, i8 -70, i8 -7, i8 -1, i8 1 }, align 1
@g_637 = internal global { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -20, i8 0, i8 -64, i8 -39, i8 0, i8 0, [2 x i8] undef, i8 -61, i8 -81, i8 2, i8 -121, i8 -2, i8 -33, i8 70, i8 -3, i8 -1, i8 1 }, align 1
@g_792 = internal global { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -30, i8 4, i8 96, i8 95, i8 -1, i8 7, [2 x i8] undef, i8 9, i8 112, i8 1, i8 -52, i8 0, i8 -64, i8 -96, i8 -6, i8 -1, i8 1 }, align 1
@g_1240 = internal global { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -39, i8 2, i8 -64, i8 -86, i8 -1, i8 7, [2 x i8] undef, i8 36, i8 -80, i8 126, i8 -13, i8 -2, i8 -97, i8 -66, i8 -3, i8 -1, i8 1 }, align 1
@g_1599 = internal global { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -54, i8 4, i8 0, i8 -110, i8 -1, i8 7, [2 x i8] undef, i8 2, i8 -128, i8 126, i8 -57, i8 -2, i8 95, i8 4, i8 6, i8 0, i8 0 }, align 1
@g_1814 = internal global { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 1, i8 -128, i8 60, i8 0, i8 0, [2 x i8] undef, i8 -24, i8 111, i8 -127, i8 97, i8 -3, i8 -1, i8 -38, i8 5, i8 0, i8 0 }, align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i64, i64* @g_2, align 8, !tbaa !7
  %92 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %92)
  %93 = load i32, i32* @g_4, align 4, !tbaa !1
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %95)
  %96 = load i32, i32* @g_25, align 4, !tbaa !1
  %97 = sext i32 %96 to i64
  %98 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %98)
  %99 = load i32, i32* @g_75, align 4, !tbaa !1
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %101)
  %102 = load volatile i32, i32* @g_79, align 4, !tbaa !1
  %103 = sext i32 %102 to i64
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %104)
  %105 = load volatile i32, i32* @g_80, align 4, !tbaa !1
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %107)
  %108 = load volatile i32, i32* @g_81, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %110)
  %111 = load i32, i32* @g_82, align 4, !tbaa !1
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %113)
  %114 = load i32, i32* @g_98, align 4, !tbaa !1
  %115 = zext i32 %114 to i64
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %116)
  %117 = load i64, i64* @g_100, align 8, !tbaa !7
  %118 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %118)
  %119 = load i64, i64* @g_102, align 8, !tbaa !7
  %120 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %120)
  %121 = load i32, i32* @g_105, align 4, !tbaa !1
  %122 = sext i32 %121 to i64
  %123 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %123)
  %124 = load i16, i16* @g_113, align 2, !tbaa !10
  %125 = zext i16 %124 to i64
  %126 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %126)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %127

; <label>:127                                     ; preds = %154, %89
  %128 = load i32, i32* %i, align 4, !tbaa !1
  %129 = icmp slt i32 %128, 10
  br i1 %129, label %130, label %157

; <label>:130                                     ; preds = %127
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %131

; <label>:131                                     ; preds = %150, %130
  %132 = load i32, i32* %j, align 4, !tbaa !1
  %133 = icmp slt i32 %132, 7
  br i1 %133, label %134, label %153

; <label>:134                                     ; preds = %131
  %135 = load i32, i32* %j, align 4, !tbaa !1
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* %i, align 4, !tbaa !1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [10 x [7 x i64]], [10 x [7 x i64]]* @g_115, i32 0, i64 %138
  %140 = getelementptr inbounds [7 x i64], [7 x i64]* %139, i32 0, i64 %136
  %141 = load i64, i64* %140, align 8, !tbaa !7
  %142 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 %142)
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

; <label>:145                                     ; preds = %134
  %146 = load i32, i32* %i, align 4, !tbaa !1
  %147 = load i32, i32* %j, align 4, !tbaa !1
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 %146, i32 %147)
  br label %149

; <label>:149                                     ; preds = %145, %134
  br label %150

; <label>:150                                     ; preds = %149
  %151 = load i32, i32* %j, align 4, !tbaa !1
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %j, align 4, !tbaa !1
  br label %131

; <label>:153                                     ; preds = %131
  br label %154

; <label>:154                                     ; preds = %153
  %155 = load i32, i32* %i, align 4, !tbaa !1
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %i, align 4, !tbaa !1
  br label %127

; <label>:157                                     ; preds = %127
  %158 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_128 to i64*), align 1
  %159 = and i64 %158, 2097151
  %160 = trunc i64 %159 to i32
  %161 = zext i32 %160 to i64
  %162 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %161, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %162)
  %163 = load volatile i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_128 to i64*), align 1
  %164 = shl i64 %163, 21
  %165 = ashr i64 %164, 42
  %166 = trunc i64 %165 to i32
  %167 = sext i32 %166 to i64
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %168)
  %169 = load i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_128 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %170 = shl i80 %169, 68
  %171 = ashr i80 %170, 68
  %172 = trunc i80 %171 to i32
  %173 = sext i32 %172 to i64
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %174)
  %175 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_128 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %176 = shl i80 %175, 57
  %177 = ashr i80 %176, 69
  %178 = trunc i80 %177 to i32
  %179 = sext i32 %178 to i64
  %180 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %179, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %180)
  %181 = load i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_128 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %182 = shl i80 %181, 35
  %183 = ashr i80 %182, 58
  %184 = trunc i80 %183 to i32
  %185 = sext i32 %184 to i64
  %186 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %185, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %186)
  %187 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_128 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %188 = shl i80 %187, 7
  %189 = ashr i80 %188, 52
  %190 = trunc i80 %189 to i32
  %191 = sext i32 %190 to i64
  %192 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %191, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %192)
  %193 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_128 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %194 = lshr i80 %193, 73
  %195 = and i80 %194, 1
  %196 = trunc i80 %195 to i32
  %197 = zext i32 %196 to i64
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %198)
  %199 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 8395037935214687592, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %199)
  %200 = load i16, i16* @g_136, align 2, !tbaa !10
  %201 = sext i16 %200 to i64
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %202)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %203

; <label>:203                                     ; preds = %230, %157
  %204 = load i32, i32* %i, align 4, !tbaa !1
  %205 = icmp slt i32 %204, 8
  br i1 %205, label %206, label %233

; <label>:206                                     ; preds = %203
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %207

; <label>:207                                     ; preds = %226, %206
  %208 = load i32, i32* %j, align 4, !tbaa !1
  %209 = icmp slt i32 %208, 5
  br i1 %209, label %210, label %229

; <label>:210                                     ; preds = %207
  %211 = load i32, i32* %j, align 4, !tbaa !1
  %212 = sext i32 %211 to i64
  %213 = load i32, i32* %i, align 4, !tbaa !1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [8 x [5 x i64]], [8 x [5 x i64]]* @g_154, i32 0, i64 %214
  %216 = getelementptr inbounds [5 x i64], [5 x i64]* %215, i32 0, i64 %212
  %217 = load volatile i64, i64* %216, align 8, !tbaa !7
  %218 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %217, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 %218)
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

; <label>:221                                     ; preds = %210
  %222 = load i32, i32* %i, align 4, !tbaa !1
  %223 = load i32, i32* %j, align 4, !tbaa !1
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 %222, i32 %223)
  br label %225

; <label>:225                                     ; preds = %221, %210
  br label %226

; <label>:226                                     ; preds = %225
  %227 = load i32, i32* %j, align 4, !tbaa !1
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %j, align 4, !tbaa !1
  br label %207

; <label>:229                                     ; preds = %207
  br label %230

; <label>:230                                     ; preds = %229
  %231 = load i32, i32* %i, align 4, !tbaa !1
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %i, align 4, !tbaa !1
  br label %203

; <label>:233                                     ; preds = %203
  %234 = load i16, i16* @g_159, align 2, !tbaa !10
  %235 = sext i16 %234 to i64
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %236)
  %237 = load i8, i8* @g_187, align 1, !tbaa !9
  %238 = zext i8 %237 to i64
  %239 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %239)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %240

; <label>:240                                     ; preds = %256, %233
  %241 = load i32, i32* %i, align 4, !tbaa !1
  %242 = icmp slt i32 %241, 4
  br i1 %242, label %243, label %259

; <label>:243                                     ; preds = %240
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [4 x i8], [4 x i8]* @g_237, i32 0, i64 %245
  %247 = load i8, i8* %246, align 1, !tbaa !9
  %248 = sext i8 %247 to i64
  %249 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %249)
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

; <label>:252                                     ; preds = %243
  %253 = load i32, i32* %i, align 4, !tbaa !1
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 %253)
  br label %255

; <label>:255                                     ; preds = %252, %243
  br label %256

; <label>:256                                     ; preds = %255
  %257 = load i32, i32* %i, align 4, !tbaa !1
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %i, align 4, !tbaa !1
  br label %240

; <label>:259                                     ; preds = %240
  %260 = load i16, i16* @g_258, align 2, !tbaa !10
  %261 = zext i16 %260 to i64
  %262 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %261, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %262)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %263

; <label>:263                                     ; preds = %347, %259
  %264 = load i32, i32* %i, align 4, !tbaa !1
  %265 = icmp slt i32 %264, 5
  br i1 %265, label %266, label %350

; <label>:266                                     ; preds = %263
  %267 = load i32, i32* %i, align 4, !tbaa !1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [5 x %struct.S0], [5 x %struct.S0]* bitcast (<{ { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } }>* @g_280 to [5 x %struct.S0]*), i32 0, i64 %268
  %270 = bitcast %struct.S0* %269 to i64*
  %271 = load i64, i64* %270, align 1
  %272 = and i64 %271, 2097151
  %273 = trunc i64 %272 to i32
  %274 = zext i32 %273 to i64
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i32 %275)
  %276 = load i32, i32* %i, align 4, !tbaa !1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [5 x %struct.S0], [5 x %struct.S0]* bitcast (<{ { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } }>* @g_280 to [5 x %struct.S0]*), i32 0, i64 %277
  %279 = bitcast %struct.S0* %278 to i64*
  %280 = load volatile i64, i64* %279, align 1
  %281 = shl i64 %280, 21
  %282 = ashr i64 %281, 42
  %283 = trunc i64 %282 to i32
  %284 = sext i32 %283 to i64
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %284, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 %285)
  %286 = load i32, i32* %i, align 4, !tbaa !1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [5 x %struct.S0], [5 x %struct.S0]* bitcast (<{ { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } }>* @g_280 to [5 x %struct.S0]*), i32 0, i64 %287
  %289 = getelementptr inbounds %struct.S0, %struct.S0* %288, i32 0, i32 1
  %290 = bitcast [10 x i8]* %289 to i80*
  %291 = load i80, i80* %290, align 1
  %292 = shl i80 %291, 68
  %293 = ashr i80 %292, 68
  %294 = trunc i80 %293 to i32
  %295 = sext i32 %294 to i64
  %296 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %295, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 %296)
  %297 = load i32, i32* %i, align 4, !tbaa !1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [5 x %struct.S0], [5 x %struct.S0]* bitcast (<{ { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } }>* @g_280 to [5 x %struct.S0]*), i32 0, i64 %298
  %300 = getelementptr inbounds %struct.S0, %struct.S0* %299, i32 0, i32 1
  %301 = bitcast [10 x i8]* %300 to i80*
  %302 = load volatile i80, i80* %301, align 1
  %303 = shl i80 %302, 57
  %304 = ashr i80 %303, 69
  %305 = trunc i80 %304 to i32
  %306 = sext i32 %305 to i64
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %306, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i32 %307)
  %308 = load i32, i32* %i, align 4, !tbaa !1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [5 x %struct.S0], [5 x %struct.S0]* bitcast (<{ { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } }>* @g_280 to [5 x %struct.S0]*), i32 0, i64 %309
  %311 = getelementptr inbounds %struct.S0, %struct.S0* %310, i32 0, i32 1
  %312 = bitcast [10 x i8]* %311 to i80*
  %313 = load i80, i80* %312, align 1
  %314 = shl i80 %313, 35
  %315 = ashr i80 %314, 58
  %316 = trunc i80 %315 to i32
  %317 = sext i32 %316 to i64
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %317, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i32 %318)
  %319 = load i32, i32* %i, align 4, !tbaa !1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [5 x %struct.S0], [5 x %struct.S0]* bitcast (<{ { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } }>* @g_280 to [5 x %struct.S0]*), i32 0, i64 %320
  %322 = getelementptr inbounds %struct.S0, %struct.S0* %321, i32 0, i32 1
  %323 = bitcast [10 x i8]* %322 to i80*
  %324 = load volatile i80, i80* %323, align 1
  %325 = shl i80 %324, 7
  %326 = ashr i80 %325, 52
  %327 = trunc i80 %326 to i32
  %328 = sext i32 %327 to i64
  %329 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i32 %329)
  %330 = load i32, i32* %i, align 4, !tbaa !1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [5 x %struct.S0], [5 x %struct.S0]* bitcast (<{ { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } }>* @g_280 to [5 x %struct.S0]*), i32 0, i64 %331
  %333 = getelementptr inbounds %struct.S0, %struct.S0* %332, i32 0, i32 1
  %334 = bitcast [10 x i8]* %333 to i80*
  %335 = load volatile i80, i80* %334, align 1
  %336 = lshr i80 %335, 73
  %337 = and i80 %336, 1
  %338 = trunc i80 %337 to i32
  %339 = zext i32 %338 to i64
  %340 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %339, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 %340)
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %346

; <label>:343                                     ; preds = %266
  %344 = load i32, i32* %i, align 4, !tbaa !1
  %345 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 %344)
  br label %346

; <label>:346                                     ; preds = %343, %266
  br label %347

; <label>:347                                     ; preds = %346
  %348 = load i32, i32* %i, align 4, !tbaa !1
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %i, align 4, !tbaa !1
  br label %263

; <label>:350                                     ; preds = %263
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %351

; <label>:351                                     ; preds = %378, %350
  %352 = load i32, i32* %i, align 4, !tbaa !1
  %353 = icmp slt i32 %352, 9
  br i1 %353, label %354, label %381

; <label>:354                                     ; preds = %351
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %355

; <label>:355                                     ; preds = %374, %354
  %356 = load i32, i32* %j, align 4, !tbaa !1
  %357 = icmp slt i32 %356, 5
  br i1 %357, label %358, label %377

; <label>:358                                     ; preds = %355
  %359 = load i32, i32* %j, align 4, !tbaa !1
  %360 = sext i32 %359 to i64
  %361 = load i32, i32* %i, align 4, !tbaa !1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [9 x [5 x i64]], [9 x [5 x i64]]* @g_330, i32 0, i64 %362
  %364 = getelementptr inbounds [5 x i64], [5 x i64]* %363, i32 0, i64 %360
  %365 = load i64, i64* %364, align 8, !tbaa !7
  %366 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %365, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i32 %366)
  %367 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %373

; <label>:369                                     ; preds = %358
  %370 = load i32, i32* %i, align 4, !tbaa !1
  %371 = load i32, i32* %j, align 4, !tbaa !1
  %372 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 %370, i32 %371)
  br label %373

; <label>:373                                     ; preds = %369, %358
  br label %374

; <label>:374                                     ; preds = %373
  %375 = load i32, i32* %j, align 4, !tbaa !1
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %j, align 4, !tbaa !1
  br label %355

; <label>:377                                     ; preds = %355
  br label %378

; <label>:378                                     ; preds = %377
  %379 = load i32, i32* %i, align 4, !tbaa !1
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %i, align 4, !tbaa !1
  br label %351

; <label>:381                                     ; preds = %351
  %382 = load i32, i32* @g_355, align 4, !tbaa !1
  %383 = zext i32 %382 to i64
  %384 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %383, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %384)
  %385 = load i64, i64* @g_445, align 8, !tbaa !7
  %386 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %385, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %386)
  %387 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1355310551, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %387)
  %388 = load i32, i32* @g_474, align 4, !tbaa !1
  %389 = zext i32 %388 to i64
  %390 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %389, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %390)
  %391 = load i32, i32* @g_509, align 4, !tbaa !1
  %392 = zext i32 %391 to i64
  %393 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %392, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %393)
  %394 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_559 to i64*), align 1
  %395 = and i64 %394, 2097151
  %396 = trunc i64 %395 to i32
  %397 = zext i32 %396 to i64
  %398 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %397, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %398)
  %399 = load volatile i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_559 to i64*), align 1
  %400 = shl i64 %399, 21
  %401 = ashr i64 %400, 42
  %402 = trunc i64 %401 to i32
  %403 = sext i32 %402 to i64
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %403, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 %404)
  %405 = load i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_559 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %406 = shl i80 %405, 68
  %407 = ashr i80 %406, 68
  %408 = trunc i80 %407 to i32
  %409 = sext i32 %408 to i64
  %410 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %409, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 %410)
  %411 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_559 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %412 = shl i80 %411, 57
  %413 = ashr i80 %412, 69
  %414 = trunc i80 %413 to i32
  %415 = sext i32 %414 to i64
  %416 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %415, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 %416)
  %417 = load i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_559 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %418 = shl i80 %417, 35
  %419 = ashr i80 %418, 58
  %420 = trunc i80 %419 to i32
  %421 = sext i32 %420 to i64
  %422 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %421, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 %422)
  %423 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_559 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %424 = shl i80 %423, 7
  %425 = ashr i80 %424, 52
  %426 = trunc i80 %425 to i32
  %427 = sext i32 %426 to i64
  %428 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %427, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 %428)
  %429 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_559 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %430 = lshr i80 %429, 73
  %431 = and i80 %430, 1
  %432 = trunc i80 %431 to i32
  %433 = zext i32 %432 to i64
  %434 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %433, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 %434)
  %435 = load volatile i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_637 to i64*), align 1
  %436 = and i64 %435, 2097151
  %437 = trunc i64 %436 to i32
  %438 = zext i32 %437 to i64
  %439 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %438, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %439)
  %440 = load volatile i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_637 to i64*), align 1
  %441 = shl i64 %440, 21
  %442 = ashr i64 %441, 42
  %443 = trunc i64 %442 to i32
  %444 = sext i32 %443 to i64
  %445 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %444, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 %445)
  %446 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_637 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %447 = shl i80 %446, 68
  %448 = ashr i80 %447, 68
  %449 = trunc i80 %448 to i32
  %450 = sext i32 %449 to i64
  %451 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %450, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 %451)
  %452 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_637 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %453 = shl i80 %452, 57
  %454 = ashr i80 %453, 69
  %455 = trunc i80 %454 to i32
  %456 = sext i32 %455 to i64
  %457 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %456, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 %457)
  %458 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_637 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %459 = shl i80 %458, 35
  %460 = ashr i80 %459, 58
  %461 = trunc i80 %460 to i32
  %462 = sext i32 %461 to i64
  %463 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %462, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 %463)
  %464 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_637 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %465 = shl i80 %464, 7
  %466 = ashr i80 %465, 52
  %467 = trunc i80 %466 to i32
  %468 = sext i32 %467 to i64
  %469 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %468, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i32 %469)
  %470 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_637 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %471 = lshr i80 %470, 73
  %472 = and i80 %471, 1
  %473 = trunc i80 %472 to i32
  %474 = zext i32 %473 to i64
  %475 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %474, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 %475)
  %476 = load volatile i16, i16* @g_659, align 2, !tbaa !10
  %477 = sext i16 %476 to i64
  %478 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %477, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i32 %478)
  %479 = load i16, i16* @g_776, align 2, !tbaa !10
  %480 = sext i16 %479 to i64
  %481 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %480, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 %481)
  %482 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_792 to i64*), align 1
  %483 = and i64 %482, 2097151
  %484 = trunc i64 %483 to i32
  %485 = zext i32 %484 to i64
  %486 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %485, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i32 %486)
  %487 = load volatile i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_792 to i64*), align 1
  %488 = shl i64 %487, 21
  %489 = ashr i64 %488, 42
  %490 = trunc i64 %489 to i32
  %491 = sext i32 %490 to i64
  %492 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %491, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i32 %492)
  %493 = load i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_792 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %494 = shl i80 %493, 68
  %495 = ashr i80 %494, 68
  %496 = trunc i80 %495 to i32
  %497 = sext i32 %496 to i64
  %498 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %497, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i32 %498)
  %499 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_792 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %500 = shl i80 %499, 57
  %501 = ashr i80 %500, 69
  %502 = trunc i80 %501 to i32
  %503 = sext i32 %502 to i64
  %504 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %503, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 %504)
  %505 = load i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_792 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %506 = shl i80 %505, 35
  %507 = ashr i80 %506, 58
  %508 = trunc i80 %507 to i32
  %509 = sext i32 %508 to i64
  %510 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %509, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i32 %510)
  %511 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_792 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %512 = shl i80 %511, 7
  %513 = ashr i80 %512, 52
  %514 = trunc i80 %513 to i32
  %515 = sext i32 %514 to i64
  %516 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %515, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32 %516)
  %517 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_792 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %518 = lshr i80 %517, 73
  %519 = and i80 %518, 1
  %520 = trunc i80 %519 to i32
  %521 = zext i32 %520 to i64
  %522 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %521, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i32 %522)
  %523 = load volatile i16, i16* @g_860, align 2, !tbaa !10
  %524 = sext i16 %523 to i64
  %525 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %524, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 %525)
  %526 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 6700438657804612529, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 %526)
  %527 = load i8, i8* @g_913, align 1, !tbaa !9
  %528 = zext i8 %527 to i64
  %529 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %528, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i32 %529)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %530

; <label>:530                                     ; preds = %546, %381
  %531 = load i32, i32* %i, align 4, !tbaa !1
  %532 = icmp slt i32 %531, 10
  br i1 %532, label %533, label %549

; <label>:533                                     ; preds = %530
  %534 = load i32, i32* %i, align 4, !tbaa !1
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds [10 x i32], [10 x i32]* @g_929, i32 0, i64 %535
  %537 = load volatile i32, i32* %536, align 4, !tbaa !1
  %538 = zext i32 %537 to i64
  %539 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %538, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i32 %539)
  %540 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %545

; <label>:542                                     ; preds = %533
  %543 = load i32, i32* %i, align 4, !tbaa !1
  %544 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 %543)
  br label %545

; <label>:545                                     ; preds = %542, %533
  br label %546

; <label>:546                                     ; preds = %545
  %547 = load i32, i32* %i, align 4, !tbaa !1
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %i, align 4, !tbaa !1
  br label %530

; <label>:549                                     ; preds = %530
  %550 = load i32, i32* @g_1043, align 4, !tbaa !1
  %551 = sext i32 %550 to i64
  %552 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %551, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 %552)
  %553 = load volatile i32, i32* @g_1101, align 4, !tbaa !1
  %554 = sext i32 %553 to i64
  %555 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %554, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 %555)
  %556 = load i32, i32* @g_1118, align 4, !tbaa !1
  %557 = zext i32 %556 to i64
  %558 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %557, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 %558)
  %559 = load volatile i16, i16* @g_1197, align 2, !tbaa !10
  %560 = zext i16 %559 to i64
  %561 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %560, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 %561)
  %562 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1240 to i64*), align 1
  %563 = and i64 %562, 2097151
  %564 = trunc i64 %563 to i32
  %565 = zext i32 %564 to i64
  %566 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %565, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32 %566)
  %567 = load volatile i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1240 to i64*), align 1
  %568 = shl i64 %567, 21
  %569 = ashr i64 %568, 42
  %570 = trunc i64 %569 to i32
  %571 = sext i32 %570 to i64
  %572 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %571, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i32 %572)
  %573 = load i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1240 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %574 = shl i80 %573, 68
  %575 = ashr i80 %574, 68
  %576 = trunc i80 %575 to i32
  %577 = sext i32 %576 to i64
  %578 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %577, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 %578)
  %579 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1240 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %580 = shl i80 %579, 57
  %581 = ashr i80 %580, 69
  %582 = trunc i80 %581 to i32
  %583 = sext i32 %582 to i64
  %584 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %583, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 %584)
  %585 = load i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1240 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %586 = shl i80 %585, 35
  %587 = ashr i80 %586, 58
  %588 = trunc i80 %587 to i32
  %589 = sext i32 %588 to i64
  %590 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %589, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i32 %590)
  %591 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1240 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %592 = shl i80 %591, 7
  %593 = ashr i80 %592, 52
  %594 = trunc i80 %593 to i32
  %595 = sext i32 %594 to i64
  %596 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %595, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i32 %596)
  %597 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1240 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %598 = lshr i80 %597, 73
  %599 = and i80 %598, 1
  %600 = trunc i80 %599 to i32
  %601 = zext i32 %600 to i64
  %602 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %601, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), i32 %602)
  %603 = load volatile i16, i16* @g_1405, align 2, !tbaa !10
  %604 = sext i16 %603 to i64
  %605 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %604, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i32 %605)
  %606 = load i64, i64* @g_1421, align 8, !tbaa !7
  %607 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %606, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 %607)
  %608 = load i16, i16* @g_1489, align 2, !tbaa !10
  %609 = sext i16 %608 to i64
  %610 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %609, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 %610)
  %611 = load i8, i8* @g_1511, align 1, !tbaa !9
  %612 = zext i8 %611 to i64
  %613 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %612, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 %613)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %614

; <label>:614                                     ; preds = %642, %549
  %615 = load i32, i32* %i, align 4, !tbaa !1
  %616 = icmp slt i32 %615, 5
  br i1 %616, label %617, label %645

; <label>:617                                     ; preds = %614
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %618

; <label>:618                                     ; preds = %638, %617
  %619 = load i32, i32* %j, align 4, !tbaa !1
  %620 = icmp slt i32 %619, 6
  br i1 %620, label %621, label %641

; <label>:621                                     ; preds = %618
  %622 = load i32, i32* %j, align 4, !tbaa !1
  %623 = sext i32 %622 to i64
  %624 = load i32, i32* %i, align 4, !tbaa !1
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [5 x [6 x i32]], [5 x [6 x i32]]* @g_1513, i32 0, i64 %625
  %627 = getelementptr inbounds [6 x i32], [6 x i32]* %626, i32 0, i64 %623
  %628 = load i32, i32* %627, align 4, !tbaa !1
  %629 = sext i32 %628 to i64
  %630 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %629, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), i32 %630)
  %631 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %637

; <label>:633                                     ; preds = %621
  %634 = load i32, i32* %i, align 4, !tbaa !1
  %635 = load i32, i32* %j, align 4, !tbaa !1
  %636 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 %634, i32 %635)
  br label %637

; <label>:637                                     ; preds = %633, %621
  br label %638

; <label>:638                                     ; preds = %637
  %639 = load i32, i32* %j, align 4, !tbaa !1
  %640 = add nsw i32 %639, 1
  store i32 %640, i32* %j, align 4, !tbaa !1
  br label %618

; <label>:641                                     ; preds = %618
  br label %642

; <label>:642                                     ; preds = %641
  %643 = load i32, i32* %i, align 4, !tbaa !1
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %i, align 4, !tbaa !1
  br label %614

; <label>:645                                     ; preds = %614
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %646

; <label>:646                                     ; preds = %662, %645
  %647 = load i32, i32* %i, align 4, !tbaa !1
  %648 = icmp slt i32 %647, 3
  br i1 %648, label %649, label %665

; <label>:649                                     ; preds = %646
  %650 = load i32, i32* %i, align 4, !tbaa !1
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [3 x i8], [3 x i8]* @g_1579, i32 0, i64 %651
  %653 = load i8, i8* %652, align 1, !tbaa !9
  %654 = sext i8 %653 to i64
  %655 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %654, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i32 %655)
  %656 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %661

; <label>:658                                     ; preds = %649
  %659 = load i32, i32* %i, align 4, !tbaa !1
  %660 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 %659)
  br label %661

; <label>:661                                     ; preds = %658, %649
  br label %662

; <label>:662                                     ; preds = %661
  %663 = load i32, i32* %i, align 4, !tbaa !1
  %664 = add nsw i32 %663, 1
  store i32 %664, i32* %i, align 4, !tbaa !1
  br label %646

; <label>:665                                     ; preds = %646
  %666 = load volatile i8, i8* @g_1582, align 1, !tbaa !9
  %667 = zext i8 %666 to i64
  %668 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %667, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32 %668)
  %669 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1599 to i64*), align 1
  %670 = and i64 %669, 2097151
  %671 = trunc i64 %670 to i32
  %672 = zext i32 %671 to i64
  %673 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %672, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), i32 %673)
  %674 = load volatile i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1599 to i64*), align 1
  %675 = shl i64 %674, 21
  %676 = ashr i64 %675, 42
  %677 = trunc i64 %676 to i32
  %678 = sext i32 %677 to i64
  %679 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %678, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i32 %679)
  %680 = load i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1599 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %681 = shl i80 %680, 68
  %682 = ashr i80 %681, 68
  %683 = trunc i80 %682 to i32
  %684 = sext i32 %683 to i64
  %685 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %684, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0), i32 %685)
  %686 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1599 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %687 = shl i80 %686, 57
  %688 = ashr i80 %687, 69
  %689 = trunc i80 %688 to i32
  %690 = sext i32 %689 to i64
  %691 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %690, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i32 %691)
  %692 = load i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1599 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %693 = shl i80 %692, 35
  %694 = ashr i80 %693, 58
  %695 = trunc i80 %694 to i32
  %696 = sext i32 %695 to i64
  %697 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %696, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i32 %697)
  %698 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1599 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %699 = shl i80 %698, 7
  %700 = ashr i80 %699, 52
  %701 = trunc i80 %700 to i32
  %702 = sext i32 %701 to i64
  %703 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %702, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i32 %703)
  %704 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1599 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %705 = lshr i80 %704, 73
  %706 = and i80 %705, 1
  %707 = trunc i80 %706 to i32
  %708 = zext i32 %707 to i64
  %709 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %708, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i32 %709)
  %710 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i32 %710)
  %711 = load volatile i64, i64* @g_1626, align 8, !tbaa !7
  %712 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %711, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0), i32 %712)
  %713 = load i8, i8* @g_1803, align 1, !tbaa !9
  %714 = zext i8 %713 to i64
  %715 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %714, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0), i32 %715)
  %716 = load i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1814 to i64*), align 1
  %717 = and i64 %716, 2097151
  %718 = trunc i64 %717 to i32
  %719 = zext i32 %718 to i64
  %720 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %719, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i32 0, i32 0), i32 %720)
  %721 = load volatile i64, i64* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1814 to i64*), align 1
  %722 = shl i64 %721, 21
  %723 = ashr i64 %722, 42
  %724 = trunc i64 %723 to i32
  %725 = sext i32 %724 to i64
  %726 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %725, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i32 0, i32 0), i32 %726)
  %727 = load i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1814 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %728 = shl i80 %727, 68
  %729 = ashr i80 %728, 68
  %730 = trunc i80 %729 to i32
  %731 = sext i32 %730 to i64
  %732 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %731, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i32 0, i32 0), i32 %732)
  %733 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1814 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %734 = shl i80 %733, 57
  %735 = ashr i80 %734, 69
  %736 = trunc i80 %735 to i32
  %737 = sext i32 %736 to i64
  %738 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %737, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), i32 %738)
  %739 = load i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1814 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %740 = shl i80 %739, 35
  %741 = ashr i80 %740, 58
  %742 = trunc i80 %741 to i32
  %743 = sext i32 %742 to i64
  %744 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %743, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 %744)
  %745 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1814 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %746 = shl i80 %745, 7
  %747 = ashr i80 %746, 52
  %748 = trunc i80 %747 to i32
  %749 = sext i32 %748 to i64
  %750 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %749, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i32 %750)
  %751 = load volatile i80, i80* bitcast ([10 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_1814 to %struct.S0*), i32 0, i32 1) to i80*), align 1
  %752 = lshr i80 %751, 73
  %753 = and i80 %752, 1
  %754 = trunc i80 %753 to i32
  %755 = zext i32 %754 to i64
  %756 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %755, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i32 %756)
  %757 = load i64, i64* @g_1961, align 8, !tbaa !7
  %758 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %757, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i32 %758)
  %759 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %760 = zext i32 %759 to i64
  %761 = xor i64 %760, 4294967295
  %762 = trunc i64 %761 to i32
  %763 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %762, i32 %763)
  %764 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %764) #1
  %765 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %765) #1
  %766 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %766) #1
  %767 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %767) #1
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
  %l_5 = alloca i16, align 2
  %l_6 = alloca i32*, align 8
  %l_1771 = alloca %struct.S0*, align 8
  %l_1770 = alloca %struct.S0**, align 8
  %l_1779 = alloca i16*, align 8
  %l_1778 = alloca i16**, align 8
  %l_1833 = alloca i8**, align 8
  %l_1848 = alloca i8, align 1
  %l_1852 = alloca i8*, align 8
  %l_1872 = alloca i32, align 4
  %l_1906 = alloca i32, align 4
  %l_1908 = alloca i8, align 1
  %l_1909 = alloca i32, align 4
  %l_1940 = alloca i32**, align 8
  %l_1952 = alloca i32**, align 8
  %l_1965 = alloca i32, align 4
  %1 = bitcast i16* %l_5 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  store i16 -18303, i16* %l_5, align 2, !tbaa !10
  %2 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_4, i32** %l_6, align 8, !tbaa !5
  %3 = bitcast %struct.S0** %l_1771 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_128 to %struct.S0*), %struct.S0** %l_1771, align 8, !tbaa !5
  %4 = bitcast %struct.S0*** %l_1770 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.S0** %l_1771, %struct.S0*** %l_1770, align 8, !tbaa !5
  %5 = bitcast i16** %l_1779 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i16* %l_5, i16** %l_1779, align 8, !tbaa !5
  %6 = bitcast i16*** %l_1778 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16** %l_1779, i16*** %l_1778, align 8, !tbaa !5
  %7 = bitcast i8*** %l_1833 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i8** @g_905, i8*** %l_1833, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1848) #1
  store i8 -84, i8* %l_1848, align 1, !tbaa !9
  %8 = bitcast i8** %l_1852 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8* null, i8** %l_1852, align 8, !tbaa !5
  %9 = bitcast i32* %l_1872 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -1829429928, i32* %l_1872, align 4, !tbaa !1
  %10 = bitcast i32* %l_1906 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 1304041540, i32* %l_1906, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1908) #1
  store i8 1, i8* %l_1908, align 1, !tbaa !9
  %11 = bitcast i32* %l_1909 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 1, i32* %l_1909, align 4, !tbaa !1
  %12 = bitcast i32*** %l_1940 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32** @g_1938, i32*** %l_1940, align 8, !tbaa !5
  %13 = bitcast i32*** %l_1952 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32** @g_1938, i32*** %l_1952, align 8, !tbaa !5
  %14 = bitcast i32* %l_1965 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 -5, i32* %l_1965, align 4, !tbaa !1
  %15 = load i64, i64* @g_2, align 8, !tbaa !7
  %16 = icmp sgt i64 3512590429, %15
  %17 = zext i1 %16 to i32
  %18 = load volatile i32*, i32** @g_3, align 8, !tbaa !5
  %19 = load i32, i32* %18, align 4, !tbaa !1
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4, !tbaa !1
  %21 = load i32*, i32** %l_6, align 8, !tbaa !5
  %22 = load i32, i32* %21, align 4, !tbaa !1
  %23 = bitcast i32* %l_1965 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32*** %l_1952 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32*** %l_1940 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32* %l_1909 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1908) #1
  %27 = bitcast i32* %l_1906 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %l_1872 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i8** %l_1852 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1848) #1
  %30 = bitcast i8*** %l_1833 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i16*** %l_1778 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i16** %l_1779 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.S0*** %l_1770 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.S0** %l_1771 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i16* %l_5 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %36) #1
  ret i32 %22
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.107, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.108, i32 0, i32 0), i32 %3)
  ret void
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
