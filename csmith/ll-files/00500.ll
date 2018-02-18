; ModuleID = '00500.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type { i8 }
%union.U1 = type { i8* }
%union.U2 = type { i16, [2 x i8] }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_3 = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_4 = internal global i32 -4, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_16 = internal global i8 28, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"g_16\00", align 1
@g_19 = internal global i32 1591401993, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_19\00", align 1
@g_26 = internal global i32 -1675366989, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_26\00", align 1
@g_27 = internal global i32 -106408677, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_27\00", align 1
@g_58 = internal global [6 x [3 x i32]] [[3 x i32] [i32 1926118472, i32 1926118472, i32 -1476733632], [3 x i32] [i32 0, i32 44383935, i32 0], [3 x i32] [i32 1926118472, i32 -1476733632, i32 -1476733632], [3 x i32] [i32 -1, i32 44383935, i32 -1], [3 x i32] [i32 1926118472, i32 1926118472, i32 -1476733632], [3 x i32] [i32 0, i32 44383935, i32 0]], align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"g_58[i][j]\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_81 = internal global i64 7498175440882388042, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"g_81\00", align 1
@g_83 = internal global i64 1832495002590637547, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"g_83\00", align 1
@g_88 = internal global %struct.S0 { i8 -37 }, align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"g_88.f0\00", align 1
@g_95 = internal global i8 6, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"g_95\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"g_97.f0\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"g_98.f0\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"g_99.f0\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"g_100.f0\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"g_101.f0\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"g_102.f0\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"g_103.f0\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"g_104.f0\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"g_105.f0\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"g_106[i][j][k].f0\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"g_107[i][j][k].f0\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_108.f0\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"g_109.f0\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"g_110.f0\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"g_111.f0\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"g_112.f0\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"g_176.f0\00", align 1
@g_177 = internal global i32 0, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_177\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"g_188[i][j].f0\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"g_189.f0\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"g_190.f0\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"g_191.f0\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"g_192.f0\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"g_193[i].f0\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"g_194.f0\00", align 1
@g_215 = internal global i32 1553343483, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"g_215\00", align 1
@g_217 = internal global i64 5125804886747715515, align 8
@.str.42 = private unnamed_addr constant [6 x i8] c"g_217\00", align 1
@g_239 = internal global i16 0, align 2
@.str.43 = private unnamed_addr constant [6 x i8] c"g_239\00", align 1
@g_242 = internal global i64 4, align 8
@.str.44 = private unnamed_addr constant [6 x i8] c"g_242\00", align 1
@g_256 = internal global i32 -621395188, align 4
@.str.45 = private unnamed_addr constant [6 x i8] c"g_256\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"g_291\00", align 1
@g_300 = internal global i64 2174368769760787228, align 8
@.str.47 = private unnamed_addr constant [6 x i8] c"g_300\00", align 1
@g_372 = internal global i8 -107, align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"g_372\00", align 1
@g_381 = internal global i32 -4, align 4
@.str.49 = private unnamed_addr constant [6 x i8] c"g_381\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"g_421[i].f0\00", align 1
@g_431 = internal global i64 1, align 8
@.str.51 = private unnamed_addr constant [6 x i8] c"g_431\00", align 1
@g_443 = internal global i16 -5, align 2
@.str.52 = private unnamed_addr constant [6 x i8] c"g_443\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"g_453.f0\00", align 1
@g_473 = internal global i16 -12323, align 2
@.str.54 = private unnamed_addr constant [6 x i8] c"g_473\00", align 1
@g_531 = internal global i64 -4, align 8
@.str.55 = private unnamed_addr constant [6 x i8] c"g_531\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"g_544[i].f0\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"g_586.f0\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"g_629.f0\00", align 1
@g_646 = internal global i32 2, align 4
@.str.59 = private unnamed_addr constant [6 x i8] c"g_646\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"g_709\00", align 1
@g_745 = internal global i32 520413239, align 4
@.str.61 = private unnamed_addr constant [6 x i8] c"g_745\00", align 1
@g_933 = internal global i16 1, align 2
@.str.62 = private unnamed_addr constant [6 x i8] c"g_933\00", align 1
@g_935 = internal global i16 -3610, align 2
@.str.63 = private unnamed_addr constant [6 x i8] c"g_935\00", align 1
@g_958 = internal global i32 -9, align 4
@.str.64 = private unnamed_addr constant [6 x i8] c"g_958\00", align 1
@g_987 = internal global i16 26827, align 2
@.str.65 = private unnamed_addr constant [6 x i8] c"g_987\00", align 1
@g_995 = internal global i32 1825570440, align 4
@.str.66 = private unnamed_addr constant [6 x i8] c"g_995\00", align 1
@g_1018 = internal global i16 -9, align 2
@.str.67 = private unnamed_addr constant [7 x i8] c"g_1018\00", align 1
@g_1100 = internal global [1 x i8] c"\01", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"g_1100[i]\00", align 1
@g_1195 = internal global i32 6, align 4
@.str.69 = private unnamed_addr constant [7 x i8] c"g_1195\00", align 1
@g_1367 = internal global %struct.S0 { i8 72 }, align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"g_1367.f0\00", align 1
@g_1389 = internal global i8 1, align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"g_1389\00", align 1
@g_1457 = internal global [1 x i8] c"6", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"g_1457[i]\00", align 1
@g_1479 = internal global i64 -2744634671267992954, align 8
@.str.73 = private unnamed_addr constant [7 x i8] c"g_1479\00", align 1
@g_1487 = internal global i32 -39836687, align 4
@.str.74 = private unnamed_addr constant [7 x i8] c"g_1487\00", align 1
@g_1497 = internal global [1 x [1 x i8]] [[1 x i8] c"\F8"], align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"g_1497[i][j]\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"g_1499.f0\00", align 1
@g_1588 = internal global [6 x [8 x i16]] [[8 x i16] [i16 0, i16 -16570, i16 -16570, i16 0, i16 5, i16 0, i16 -16570, i16 -16570], [8 x i16] [i16 -16570, i16 5, i16 30302, i16 30302, i16 5, i16 -16570, i16 5, i16 30302], [8 x i16] [i16 30302, i16 3, i16 30302, i16 0, i16 0, i16 30302, i16 3, i16 30302], [8 x i16] [i16 -16570, i16 0, i16 5, i16 0, i16 -16570, i16 -16570, i16 0, i16 5], [8 x i16] [i16 -16570, i16 -16570, i16 0, i16 5, i16 0, i16 -16570, i16 -16570, i16 0], [8 x i16] [i16 30302, i16 0, i16 0, i16 30302, i16 3, i16 30302, i16 0, i16 0]], align 16
@.str.77 = private unnamed_addr constant [13 x i8] c"g_1588[i][j]\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"g_1598.f0\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_1585 = internal constant [10 x %union.U1*] [%union.U1* @g_1542, %union.U1* @g_1542, %union.U1* @g_1542, %union.U1* @g_1542, %union.U1* @g_1542, %union.U1* @g_1542, %union.U1* @g_1542, %union.U1* @g_1542, %union.U1* @g_1542, %union.U1* @g_1542], align 16
@g_1542 = internal global %union.U1 zeroinitializer, align 8
@.str.79 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_97 = internal global { i8, [3 x i8] } { i8 2, [3 x i8] undef }, align 4
@g_98 = internal global { i8, [3 x i8] } { i8 1, [3 x i8] undef }, align 4
@g_99 = internal global { i8, [3 x i8] } { i8 6, [3 x i8] undef }, align 4
@g_100 = internal global { i8, [3 x i8] } { i8 1, [3 x i8] undef }, align 4
@g_101 = internal global { i8, [3 x i8] } { i8 2, [3 x i8] undef }, align 4
@g_102 = internal global { i8, [3 x i8] } { i8 1, [3 x i8] undef }, align 4
@g_103 = internal global { i8, [3 x i8] } { i8 0, [3 x i8] undef }, align 4
@g_104 = internal global { i8, [3 x i8] } { i8 0, [3 x i8] undef }, align 4
@g_105 = internal global { i8, [3 x i8] } { i8 0, [3 x i8] undef }, align 4
@g_106 = internal global <{ <{ <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> }> }> <{ <{ <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> }> <{ <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 4, [3 x i8] undef }, { i8, [3 x i8] } { i8 2, [3 x i8] undef }, { i8, [3 x i8] } { i8 4, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 3, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 4, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 4, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 7, [3 x i8] undef }, { i8, [3 x i8] } { i8 7, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 3, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 2, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 7, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 2, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 4, [3 x i8] undef }, { i8, [3 x i8] } { i8 4, [3 x i8] undef }, { i8, [3 x i8] } { i8 7, [3 x i8] undef }, { i8, [3 x i8] } { i8 2, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef } }> }> }>, align 16
@g_107 = internal global <{ <{ <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> }> }> <{ <{ <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> }> <{ <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 2, [3 x i8] undef }, { i8, [3 x i8] } { i8 3, [3 x i8] undef }, { i8, [3 x i8] } { i8 4, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 2, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 4, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 2, [3 x i8] undef }, { i8, [3 x i8] } { i8 2, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 4, [3 x i8] undef }, { i8, [3 x i8] } { i8 2, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 4, [3 x i8] undef }, { i8, [3 x i8] } { i8 2, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 2, [3 x i8] undef }, { i8, [3 x i8] } { i8 4, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 2, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 4, [3 x i8] undef }, { i8, [3 x i8] } { i8 4, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 3, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 3, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 4, [3 x i8] undef }, { i8, [3 x i8] } { i8 5, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef } }> }> }>, align 16
@g_108 = internal global { i8, [3 x i8] } { i8 0, [3 x i8] undef }, align 4
@g_109 = internal global { i8, [3 x i8] } { i8 7, [3 x i8] undef }, align 4
@g_110 = internal global { i8, [3 x i8] } { i8 0, [3 x i8] undef }, align 4
@g_111 = internal global { i8, [3 x i8] } { i8 7, [3 x i8] undef }, align 4
@g_112 = internal global { i8, [3 x i8] } { i8 3, [3 x i8] undef }, align 4
@g_176 = internal global { i8, [3 x i8] } { i8 2, [3 x i8] undef }, align 4
@g_188 = internal global <{ <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> }> <{ <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 2, [3 x i8] undef }, { i8, [3 x i8] } { i8 7, [3 x i8] undef }, { i8, [3 x i8] } { i8 2, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 2, [3 x i8] undef }, { i8, [3 x i8] } { i8 7, [3 x i8] undef }, { i8, [3 x i8] } { i8 2, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 2, [3 x i8] undef }, { i8, [3 x i8] } { i8 7, [3 x i8] undef }, { i8, [3 x i8] } { i8 2, [3 x i8] undef } }> }>, align 16
@g_189 = internal global { i8, [3 x i8] } { i8 4, [3 x i8] undef }, align 4
@g_190 = internal global { i8, [3 x i8] } { i8 6, [3 x i8] undef }, align 4
@g_191 = internal global { i8, [3 x i8] } { i8 7, [3 x i8] undef }, align 4
@g_192 = internal global { i8, [3 x i8] } { i8 0, [3 x i8] undef }, align 4
@g_193 = internal global <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef }, { i8, [3 x i8] } { i8 1, [3 x i8] undef } }>, align 16
@g_194 = internal global { i8, [3 x i8] } { i8 6, [3 x i8] undef }, align 4
@g_421 = internal global <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 3, [3 x i8] undef }, { i8, [3 x i8] } { i8 3, [3 x i8] undef }, { i8, [3 x i8] } { i8 3, [3 x i8] undef }, { i8, [3 x i8] } { i8 3, [3 x i8] undef } }>, align 16
@g_453 = internal global { i8, [3 x i8] } { i8 7, [3 x i8] undef }, align 4
@g_544 = internal global <{ { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 7, [3 x i8] undef } }>, align 4
@g_586 = internal constant { i8, [3 x i8] } { i8 5, [3 x i8] undef }, align 4
@g_629 = internal global { i8, [3 x i8] } { i8 7, [3 x i8] undef }, align 4
@g_1499 = internal global { i8, [3 x i8] } { i8 7, [3 x i8] undef }, align 4
@g_1598 = internal constant { i8, [3 x i8] } { i8 3, [3 x i8] undef }, align 4
@.str.80 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call signext i16 @func_1()
  %91 = load volatile i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load volatile i32, i32* @g_3, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i32, i32* @g_4, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i8, i8* @g_16, align 1, !tbaa !9
  %101 = sext i8 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  %103 = load i32, i32* @g_19, align 4, !tbaa !1
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %105)
  %106 = load i32, i32* @g_26, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %108)
  %109 = load i32, i32* @g_27, align 4, !tbaa !1
  %110 = sext i32 %109 to i64
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %111)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %112

; <label>:112                                     ; preds = %140, %89
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = icmp slt i32 %113, 6
  br i1 %114, label %115, label %143

; <label>:115                                     ; preds = %112
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %116

; <label>:116                                     ; preds = %136, %115
  %117 = load i32, i32* %j, align 4, !tbaa !1
  %118 = icmp slt i32 %117, 3
  br i1 %118, label %119, label %139

; <label>:119                                     ; preds = %116
  %120 = load i32, i32* %j, align 4, !tbaa !1
  %121 = sext i32 %120 to i64
  %122 = load i32, i32* %i, align 4, !tbaa !1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [6 x [3 x i32]], [6 x [3 x i32]]* @g_58, i32 0, i64 %123
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %124, i32 0, i64 %121
  %126 = load i32, i32* %125, align 4, !tbaa !1
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %128)
  %129 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

; <label>:131                                     ; preds = %119
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = load i32, i32* %j, align 4, !tbaa !1
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 %132, i32 %133)
  br label %135

; <label>:135                                     ; preds = %131, %119
  br label %136

; <label>:136                                     ; preds = %135
  %137 = load i32, i32* %j, align 4, !tbaa !1
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %j, align 4, !tbaa !1
  br label %116

; <label>:139                                     ; preds = %116
  br label %140

; <label>:140                                     ; preds = %139
  %141 = load i32, i32* %i, align 4, !tbaa !1
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %i, align 4, !tbaa !1
  br label %112

; <label>:143                                     ; preds = %112
  %144 = load i64, i64* @g_81, align 8, !tbaa !7
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %145)
  %146 = load i64, i64* @g_83, align 8, !tbaa !7
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %147)
  %148 = load i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* @g_88, i32 0, i32 0), align 1, !tbaa !10
  %149 = zext i8 %148 to i64
  %150 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 %150)
  %151 = load i8, i8* @g_95, align 1, !tbaa !9
  %152 = zext i8 %151 to i64
  %153 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %153)
  %154 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_97, i32 0, i32 0), align 4
  %155 = and i8 %154, 7
  %156 = zext i8 %155 to i32
  %157 = zext i32 %156 to i64
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 %158)
  %159 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_98, i32 0, i32 0), align 4
  %160 = and i8 %159, 7
  %161 = zext i8 %160 to i32
  %162 = zext i32 %161 to i64
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 %163)
  %164 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_99, i32 0, i32 0), align 4
  %165 = and i8 %164, 7
  %166 = zext i8 %165 to i32
  %167 = zext i32 %166 to i64
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 %168)
  %169 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_100, i32 0, i32 0), align 4
  %170 = and i8 %169, 7
  %171 = zext i8 %170 to i32
  %172 = zext i32 %171 to i64
  %173 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %172, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %173)
  %174 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_101, i32 0, i32 0), align 4
  %175 = and i8 %174, 7
  %176 = zext i8 %175 to i32
  %177 = zext i32 %176 to i64
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %178)
  %179 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_102, i32 0, i32 0), align 4
  %180 = and i8 %179, 7
  %181 = zext i8 %180 to i32
  %182 = zext i32 %181 to i64
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %183)
  %184 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_103, i32 0, i32 0), align 4
  %185 = and i8 %184, 7
  %186 = zext i8 %185 to i32
  %187 = zext i32 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 %188)
  %189 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_104, i32 0, i32 0), align 4
  %190 = and i8 %189, 7
  %191 = zext i8 %190 to i32
  %192 = zext i32 %191 to i64
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %193)
  %194 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_105, i32 0, i32 0), align 4
  %195 = and i8 %194, 7
  %196 = zext i8 %195 to i32
  %197 = zext i32 %196 to i64
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %198)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %199

; <label>:199                                     ; preds = %242, %143
  %200 = load i32, i32* %i, align 4, !tbaa !1
  %201 = icmp slt i32 %200, 1
  br i1 %201, label %202, label %245

; <label>:202                                     ; preds = %199
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %203

; <label>:203                                     ; preds = %238, %202
  %204 = load i32, i32* %j, align 4, !tbaa !1
  %205 = icmp slt i32 %204, 9
  br i1 %205, label %206, label %241

; <label>:206                                     ; preds = %203
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %207

; <label>:207                                     ; preds = %234, %206
  %208 = load i32, i32* %k, align 4, !tbaa !1
  %209 = icmp slt i32 %208, 5
  br i1 %209, label %210, label %237

; <label>:210                                     ; preds = %207
  %211 = load i32, i32* %k, align 4, !tbaa !1
  %212 = sext i32 %211 to i64
  %213 = load i32, i32* %j, align 4, !tbaa !1
  %214 = sext i32 %213 to i64
  %215 = load i32, i32* %i, align 4, !tbaa !1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [1 x [9 x [5 x %union.U2]]], [1 x [9 x [5 x %union.U2]]]* bitcast (<{ <{ <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> }> }>* @g_106 to [1 x [9 x [5 x %union.U2]]]*), i32 0, i64 %216
  %218 = getelementptr inbounds [9 x [5 x %union.U2]], [9 x [5 x %union.U2]]* %217, i32 0, i64 %214
  %219 = getelementptr inbounds [5 x %union.U2], [5 x %union.U2]* %218, i32 0, i64 %212
  %220 = bitcast %union.U2* %219 to i8*
  %221 = load volatile i8, i8* %220, align 4
  %222 = and i8 %221, 7
  %223 = zext i8 %222 to i32
  %224 = zext i32 %223 to i64
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 %225)
  %226 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

; <label>:228                                     ; preds = %210
  %229 = load i32, i32* %i, align 4, !tbaa !1
  %230 = load i32, i32* %j, align 4, !tbaa !1
  %231 = load i32, i32* %k, align 4, !tbaa !1
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i32 %229, i32 %230, i32 %231)
  br label %233

; <label>:233                                     ; preds = %228, %210
  br label %234

; <label>:234                                     ; preds = %233
  %235 = load i32, i32* %k, align 4, !tbaa !1
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %k, align 4, !tbaa !1
  br label %207

; <label>:237                                     ; preds = %207
  br label %238

; <label>:238                                     ; preds = %237
  %239 = load i32, i32* %j, align 4, !tbaa !1
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %j, align 4, !tbaa !1
  br label %203

; <label>:241                                     ; preds = %203
  br label %242

; <label>:242                                     ; preds = %241
  %243 = load i32, i32* %i, align 4, !tbaa !1
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %i, align 4, !tbaa !1
  br label %199

; <label>:245                                     ; preds = %199
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %246

; <label>:246                                     ; preds = %289, %245
  %247 = load i32, i32* %i, align 4, !tbaa !1
  %248 = icmp slt i32 %247, 1
  br i1 %248, label %249, label %292

; <label>:249                                     ; preds = %246
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %250

; <label>:250                                     ; preds = %285, %249
  %251 = load i32, i32* %j, align 4, !tbaa !1
  %252 = icmp slt i32 %251, 5
  br i1 %252, label %253, label %288

; <label>:253                                     ; preds = %250
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %254

; <label>:254                                     ; preds = %281, %253
  %255 = load i32, i32* %k, align 4, !tbaa !1
  %256 = icmp slt i32 %255, 9
  br i1 %256, label %257, label %284

; <label>:257                                     ; preds = %254
  %258 = load i32, i32* %k, align 4, !tbaa !1
  %259 = sext i32 %258 to i64
  %260 = load i32, i32* %j, align 4, !tbaa !1
  %261 = sext i32 %260 to i64
  %262 = load i32, i32* %i, align 4, !tbaa !1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [1 x [5 x [9 x %union.U2]]], [1 x [5 x [9 x %union.U2]]]* bitcast (<{ <{ <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> }> }>* @g_107 to [1 x [5 x [9 x %union.U2]]]*), i32 0, i64 %263
  %265 = getelementptr inbounds [5 x [9 x %union.U2]], [5 x [9 x %union.U2]]* %264, i32 0, i64 %261
  %266 = getelementptr inbounds [9 x %union.U2], [9 x %union.U2]* %265, i32 0, i64 %259
  %267 = bitcast %union.U2* %266 to i8*
  %268 = load volatile i8, i8* %267, align 4
  %269 = and i8 %268, 7
  %270 = zext i8 %269 to i32
  %271 = zext i32 %270 to i64
  %272 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %271, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 %272)
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

; <label>:275                                     ; preds = %257
  %276 = load i32, i32* %i, align 4, !tbaa !1
  %277 = load i32, i32* %j, align 4, !tbaa !1
  %278 = load i32, i32* %k, align 4, !tbaa !1
  %279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i32 %276, i32 %277, i32 %278)
  br label %280

; <label>:280                                     ; preds = %275, %257
  br label %281

; <label>:281                                     ; preds = %280
  %282 = load i32, i32* %k, align 4, !tbaa !1
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %k, align 4, !tbaa !1
  br label %254

; <label>:284                                     ; preds = %254
  br label %285

; <label>:285                                     ; preds = %284
  %286 = load i32, i32* %j, align 4, !tbaa !1
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %j, align 4, !tbaa !1
  br label %250

; <label>:288                                     ; preds = %250
  br label %289

; <label>:289                                     ; preds = %288
  %290 = load i32, i32* %i, align 4, !tbaa !1
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %i, align 4, !tbaa !1
  br label %246

; <label>:292                                     ; preds = %246
  %293 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_108, i32 0, i32 0), align 4
  %294 = and i8 %293, 7
  %295 = zext i8 %294 to i32
  %296 = zext i32 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %297)
  %298 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_109, i32 0, i32 0), align 4
  %299 = and i8 %298, 7
  %300 = zext i8 %299 to i32
  %301 = zext i32 %300 to i64
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %301, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %302)
  %303 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_110, i32 0, i32 0), align 4
  %304 = and i8 %303, 7
  %305 = zext i8 %304 to i32
  %306 = zext i32 %305 to i64
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %306, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %307)
  %308 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_111, i32 0, i32 0), align 4
  %309 = and i8 %308, 7
  %310 = zext i8 %309 to i32
  %311 = zext i32 %310 to i64
  %312 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %311, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %312)
  %313 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_112, i32 0, i32 0), align 4
  %314 = and i8 %313, 7
  %315 = zext i8 %314 to i32
  %316 = zext i32 %315 to i64
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 %317)
  %318 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_176, i32 0, i32 0), align 4
  %319 = and i8 %318, 7
  %320 = zext i8 %319 to i32
  %321 = zext i32 %320 to i64
  %322 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %321, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %322)
  %323 = load i32, i32* @g_177, align 4, !tbaa !1
  %324 = sext i32 %323 to i64
  %325 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %324, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %325)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %326

; <label>:326                                     ; preds = %357, %292
  %327 = load i32, i32* %i, align 4, !tbaa !1
  %328 = icmp slt i32 %327, 5
  br i1 %328, label %329, label %360

; <label>:329                                     ; preds = %326
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %330

; <label>:330                                     ; preds = %353, %329
  %331 = load i32, i32* %j, align 4, !tbaa !1
  %332 = icmp slt i32 %331, 3
  br i1 %332, label %333, label %356

; <label>:333                                     ; preds = %330
  %334 = load i32, i32* %j, align 4, !tbaa !1
  %335 = sext i32 %334 to i64
  %336 = load i32, i32* %i, align 4, !tbaa !1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [5 x [3 x %union.U2]], [5 x [3 x %union.U2]]* bitcast (<{ <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>, <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> }>* @g_188 to [5 x [3 x %union.U2]]*), i32 0, i64 %337
  %339 = getelementptr inbounds [3 x %union.U2], [3 x %union.U2]* %338, i32 0, i64 %335
  %340 = bitcast %union.U2* %339 to i8*
  %341 = load volatile i8, i8* %340, align 4
  %342 = and i8 %341, 7
  %343 = zext i8 %342 to i32
  %344 = zext i32 %343 to i64
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32 %345)
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %352

; <label>:348                                     ; preds = %333
  %349 = load i32, i32* %i, align 4, !tbaa !1
  %350 = load i32, i32* %j, align 4, !tbaa !1
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 %349, i32 %350)
  br label %352

; <label>:352                                     ; preds = %348, %333
  br label %353

; <label>:353                                     ; preds = %352
  %354 = load i32, i32* %j, align 4, !tbaa !1
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %j, align 4, !tbaa !1
  br label %330

; <label>:356                                     ; preds = %330
  br label %357

; <label>:357                                     ; preds = %356
  %358 = load i32, i32* %i, align 4, !tbaa !1
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %i, align 4, !tbaa !1
  br label %326

; <label>:360                                     ; preds = %326
  %361 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_189, i32 0, i32 0), align 4
  %362 = and i8 %361, 7
  %363 = zext i8 %362 to i32
  %364 = zext i32 %363 to i64
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %365)
  %366 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_190, i32 0, i32 0), align 4
  %367 = and i8 %366, 7
  %368 = zext i8 %367 to i32
  %369 = zext i32 %368 to i64
  %370 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %369, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %370)
  %371 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_191, i32 0, i32 0), align 4
  %372 = and i8 %371, 7
  %373 = zext i8 %372 to i32
  %374 = zext i32 %373 to i64
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %374, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %375)
  %376 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_192, i32 0, i32 0), align 4
  %377 = and i8 %376, 7
  %378 = zext i8 %377 to i32
  %379 = zext i32 %378 to i64
  %380 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %379, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %380)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %381

; <label>:381                                     ; preds = %400, %360
  %382 = load i32, i32* %i, align 4, !tbaa !1
  %383 = icmp slt i32 %382, 4
  br i1 %383, label %384, label %403

; <label>:384                                     ; preds = %381
  %385 = load i32, i32* %i, align 4, !tbaa !1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [4 x %union.U2], [4 x %union.U2]* bitcast (<{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>* @g_193 to [4 x %union.U2]*), i32 0, i64 %386
  %388 = bitcast %union.U2* %387 to i8*
  %389 = load volatile i8, i8* %388, align 4
  %390 = and i8 %389, 7
  %391 = zext i8 %390 to i32
  %392 = zext i32 %391 to i64
  %393 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %392, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i32 %393)
  %394 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %399

; <label>:396                                     ; preds = %384
  %397 = load i32, i32* %i, align 4, !tbaa !1
  %398 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i32 %397)
  br label %399

; <label>:399                                     ; preds = %396, %384
  br label %400

; <label>:400                                     ; preds = %399
  %401 = load i32, i32* %i, align 4, !tbaa !1
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %i, align 4, !tbaa !1
  br label %381

; <label>:403                                     ; preds = %381
  %404 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_194, i32 0, i32 0), align 4
  %405 = and i8 %404, 7
  %406 = zext i8 %405 to i32
  %407 = zext i32 %406 to i64
  %408 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %407, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 %408)
  %409 = load i32, i32* @g_215, align 4, !tbaa !1
  %410 = zext i32 %409 to i64
  %411 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %410, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %411)
  %412 = load i64, i64* @g_217, align 8, !tbaa !7
  %413 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %412, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %413)
  %414 = load i16, i16* @g_239, align 2, !tbaa !12
  %415 = zext i16 %414 to i64
  %416 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %415, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %416)
  %417 = load i64, i64* @g_242, align 8, !tbaa !7
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %417, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %418)
  %419 = load i32, i32* @g_256, align 4, !tbaa !1
  %420 = zext i32 %419 to i64
  %421 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %420, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %421)
  %422 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %422)
  %423 = load i64, i64* @g_300, align 8, !tbaa !7
  %424 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %423, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 %424)
  %425 = load i8, i8* @g_372, align 1, !tbaa !9
  %426 = sext i8 %425 to i64
  %427 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %426, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %427)
  %428 = load i32, i32* @g_381, align 4, !tbaa !1
  %429 = zext i32 %428 to i64
  %430 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %429, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 %430)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %431

; <label>:431                                     ; preds = %450, %403
  %432 = load i32, i32* %i, align 4, !tbaa !1
  %433 = icmp slt i32 %432, 4
  br i1 %433, label %434, label %453

; <label>:434                                     ; preds = %431
  %435 = load i32, i32* %i, align 4, !tbaa !1
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [4 x %union.U2], [4 x %union.U2]* bitcast (<{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>* @g_421 to [4 x %union.U2]*), i32 0, i64 %436
  %438 = bitcast %union.U2* %437 to i8*
  %439 = load volatile i8, i8* %438, align 4
  %440 = and i8 %439, 7
  %441 = zext i8 %440 to i32
  %442 = zext i32 %441 to i64
  %443 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %442, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i32 %443)
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %449

; <label>:446                                     ; preds = %434
  %447 = load i32, i32* %i, align 4, !tbaa !1
  %448 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i32 %447)
  br label %449

; <label>:449                                     ; preds = %446, %434
  br label %450

; <label>:450                                     ; preds = %449
  %451 = load i32, i32* %i, align 4, !tbaa !1
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %i, align 4, !tbaa !1
  br label %431

; <label>:453                                     ; preds = %431
  %454 = load volatile i64, i64* @g_431, align 8, !tbaa !7
  %455 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %454, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 %455)
  %456 = load i16, i16* @g_443, align 2, !tbaa !12
  %457 = sext i16 %456 to i64
  %458 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %457, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 %458)
  %459 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_453, i32 0, i32 0), align 4
  %460 = and i8 %459, 7
  %461 = zext i8 %460 to i32
  %462 = zext i32 %461 to i64
  %463 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %462, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 %463)
  %464 = load i16, i16* @g_473, align 2, !tbaa !12
  %465 = zext i16 %464 to i64
  %466 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %465, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32 %466)
  %467 = load i64, i64* @g_531, align 8, !tbaa !7
  %468 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %467, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 %468)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %469

; <label>:469                                     ; preds = %488, %453
  %470 = load i32, i32* %i, align 4, !tbaa !1
  %471 = icmp slt i32 %470, 1
  br i1 %471, label %472, label %491

; <label>:472                                     ; preds = %469
  %473 = load i32, i32* %i, align 4, !tbaa !1
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [1 x %union.U2], [1 x %union.U2]* bitcast (<{ { i8, [3 x i8] } }>* @g_544 to [1 x %union.U2]*), i32 0, i64 %474
  %476 = bitcast %union.U2* %475 to i8*
  %477 = load volatile i8, i8* %476, align 4
  %478 = and i8 %477, 7
  %479 = zext i8 %478 to i32
  %480 = zext i32 %479 to i64
  %481 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %480, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i32 %481)
  %482 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %487

; <label>:484                                     ; preds = %472
  %485 = load i32, i32* %i, align 4, !tbaa !1
  %486 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i32 %485)
  br label %487

; <label>:487                                     ; preds = %484, %472
  br label %488

; <label>:488                                     ; preds = %487
  %489 = load i32, i32* %i, align 4, !tbaa !1
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %i, align 4, !tbaa !1
  br label %469

; <label>:491                                     ; preds = %469
  %492 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_586, i32 0, i32 0), align 4
  %493 = and i8 %492, 7
  %494 = zext i8 %493 to i32
  %495 = zext i32 %494 to i64
  %496 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %495, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 %496)
  %497 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_629, i32 0, i32 0), align 4
  %498 = and i8 %497, 7
  %499 = zext i8 %498 to i32
  %500 = zext i32 %499 to i64
  %501 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %500, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i32 %501)
  %502 = load volatile i32, i32* @g_646, align 4, !tbaa !1
  %503 = zext i32 %502 to i64
  %504 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %503, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 %504)
  %505 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -31315, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 %505)
  %506 = load i32, i32* @g_745, align 4, !tbaa !1
  %507 = zext i32 %506 to i64
  %508 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %507, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i32 %508)
  %509 = load i16, i16* @g_933, align 2, !tbaa !12
  %510 = sext i16 %509 to i64
  %511 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %510, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 %511)
  %512 = load i16, i16* @g_935, align 2, !tbaa !12
  %513 = sext i16 %512 to i64
  %514 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %513, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 %514)
  %515 = load i32, i32* @g_958, align 4, !tbaa !1
  %516 = sext i32 %515 to i64
  %517 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %516, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i32 %517)
  %518 = load i16, i16* @g_987, align 2, !tbaa !12
  %519 = zext i16 %518 to i64
  %520 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %519, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i32 %520)
  %521 = load i32, i32* @g_995, align 4, !tbaa !1
  %522 = sext i32 %521 to i64
  %523 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %522, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i32 %523)
  %524 = load i16, i16* @g_1018, align 2, !tbaa !12
  %525 = zext i16 %524 to i64
  %526 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %525, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 %526)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %527

; <label>:527                                     ; preds = %543, %491
  %528 = load i32, i32* %i, align 4, !tbaa !1
  %529 = icmp slt i32 %528, 1
  br i1 %529, label %530, label %546

; <label>:530                                     ; preds = %527
  %531 = load i32, i32* %i, align 4, !tbaa !1
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [1 x i8], [1 x i8]* @g_1100, i32 0, i64 %532
  %534 = load i8, i8* %533, align 1, !tbaa !9
  %535 = zext i8 %534 to i64
  %536 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %535, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i32 %536)
  %537 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %542

; <label>:539                                     ; preds = %530
  %540 = load i32, i32* %i, align 4, !tbaa !1
  %541 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i32 %540)
  br label %542

; <label>:542                                     ; preds = %539, %530
  br label %543

; <label>:543                                     ; preds = %542
  %544 = load i32, i32* %i, align 4, !tbaa !1
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %i, align 4, !tbaa !1
  br label %527

; <label>:546                                     ; preds = %527
  %547 = load i32, i32* @g_1195, align 4, !tbaa !1
  %548 = zext i32 %547 to i64
  %549 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %548, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 %549)
  %550 = load i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* @g_1367, i32 0, i32 0), align 1, !tbaa !10
  %551 = zext i8 %550 to i64
  %552 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %551, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 %552)
  %553 = load i8, i8* @g_1389, align 1, !tbaa !9
  %554 = sext i8 %553 to i64
  %555 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %554, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 %555)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %556

; <label>:556                                     ; preds = %572, %546
  %557 = load i32, i32* %i, align 4, !tbaa !1
  %558 = icmp slt i32 %557, 1
  br i1 %558, label %559, label %575

; <label>:559                                     ; preds = %556
  %560 = load i32, i32* %i, align 4, !tbaa !1
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds [1 x i8], [1 x i8]* @g_1457, i32 0, i64 %561
  %563 = load i8, i8* %562, align 1, !tbaa !9
  %564 = sext i8 %563 to i64
  %565 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %564, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 %565)
  %566 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %571

; <label>:568                                     ; preds = %559
  %569 = load i32, i32* %i, align 4, !tbaa !1
  %570 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i32 0, i32 0), i32 %569)
  br label %571

; <label>:571                                     ; preds = %568, %559
  br label %572

; <label>:572                                     ; preds = %571
  %573 = load i32, i32* %i, align 4, !tbaa !1
  %574 = add nsw i32 %573, 1
  store i32 %574, i32* %i, align 4, !tbaa !1
  br label %556

; <label>:575                                     ; preds = %556
  %576 = load i64, i64* @g_1479, align 8, !tbaa !7
  %577 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %576, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 %577)
  %578 = load volatile i32, i32* @g_1487, align 4, !tbaa !1
  %579 = sext i32 %578 to i64
  %580 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %579, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 %580)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %581

; <label>:581                                     ; preds = %609, %575
  %582 = load i32, i32* %i, align 4, !tbaa !1
  %583 = icmp slt i32 %582, 1
  br i1 %583, label %584, label %612

; <label>:584                                     ; preds = %581
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %585

; <label>:585                                     ; preds = %605, %584
  %586 = load i32, i32* %j, align 4, !tbaa !1
  %587 = icmp slt i32 %586, 1
  br i1 %587, label %588, label %608

; <label>:588                                     ; preds = %585
  %589 = load i32, i32* %j, align 4, !tbaa !1
  %590 = sext i32 %589 to i64
  %591 = load i32, i32* %i, align 4, !tbaa !1
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* @g_1497, i32 0, i64 %592
  %594 = getelementptr inbounds [1 x i8], [1 x i8]* %593, i32 0, i64 %590
  %595 = load i8, i8* %594, align 1, !tbaa !9
  %596 = zext i8 %595 to i64
  %597 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %596, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i32 0, i32 0), i32 %597)
  %598 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %604

; <label>:600                                     ; preds = %588
  %601 = load i32, i32* %i, align 4, !tbaa !1
  %602 = load i32, i32* %j, align 4, !tbaa !1
  %603 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 %601, i32 %602)
  br label %604

; <label>:604                                     ; preds = %600, %588
  br label %605

; <label>:605                                     ; preds = %604
  %606 = load i32, i32* %j, align 4, !tbaa !1
  %607 = add nsw i32 %606, 1
  store i32 %607, i32* %j, align 4, !tbaa !1
  br label %585

; <label>:608                                     ; preds = %585
  br label %609

; <label>:609                                     ; preds = %608
  %610 = load i32, i32* %i, align 4, !tbaa !1
  %611 = add nsw i32 %610, 1
  store i32 %611, i32* %i, align 4, !tbaa !1
  br label %581

; <label>:612                                     ; preds = %581
  %613 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1499, i32 0, i32 0), align 4
  %614 = and i8 %613, 7
  %615 = zext i8 %614 to i32
  %616 = zext i32 %615 to i64
  %617 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %616, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i32 %617)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %618

; <label>:618                                     ; preds = %646, %612
  %619 = load i32, i32* %i, align 4, !tbaa !1
  %620 = icmp slt i32 %619, 6
  br i1 %620, label %621, label %649

; <label>:621                                     ; preds = %618
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %622

; <label>:622                                     ; preds = %642, %621
  %623 = load i32, i32* %j, align 4, !tbaa !1
  %624 = icmp slt i32 %623, 8
  br i1 %624, label %625, label %645

; <label>:625                                     ; preds = %622
  %626 = load i32, i32* %j, align 4, !tbaa !1
  %627 = sext i32 %626 to i64
  %628 = load i32, i32* %i, align 4, !tbaa !1
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds [6 x [8 x i16]], [6 x [8 x i16]]* @g_1588, i32 0, i64 %629
  %631 = getelementptr inbounds [8 x i16], [8 x i16]* %630, i32 0, i64 %627
  %632 = load volatile i16, i16* %631, align 2, !tbaa !12
  %633 = sext i16 %632 to i64
  %634 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %633, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0), i32 %634)
  %635 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %641

; <label>:637                                     ; preds = %625
  %638 = load i32, i32* %i, align 4, !tbaa !1
  %639 = load i32, i32* %j, align 4, !tbaa !1
  %640 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 %638, i32 %639)
  br label %641

; <label>:641                                     ; preds = %637, %625
  br label %642

; <label>:642                                     ; preds = %641
  %643 = load i32, i32* %j, align 4, !tbaa !1
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %j, align 4, !tbaa !1
  br label %622

; <label>:645                                     ; preds = %622
  br label %646

; <label>:646                                     ; preds = %645
  %647 = load i32, i32* %i, align 4, !tbaa !1
  %648 = add nsw i32 %647, 1
  store i32 %648, i32* %i, align 4, !tbaa !1
  br label %618

; <label>:649                                     ; preds = %618
  %650 = load volatile i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_1598, i32 0, i32 0), align 4
  %651 = and i8 %650, 7
  %652 = zext i8 %651 to i32
  %653 = zext i32 %652 to i64
  %654 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %653, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 %654)
  %655 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %656 = zext i32 %655 to i64
  %657 = xor i64 %656, 4294967295
  %658 = trunc i64 %657 to i32
  %659 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %658, i32 %659)
  %660 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %660) #1
  %661 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %661) #1
  %662 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %662) #1
  %663 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %663) #1
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
define internal signext i16 @func_1() #0 {
  %l_14 = alloca i16, align 2
  %l_1587 = alloca i32, align 4
  %l_1616 = alloca i16, align 2
  %l_1617 = alloca i32, align 4
  %l_1620 = alloca i8, align 1
  %i = alloca i32, align 4
  %1 = bitcast i16* %l_14 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  store i16 4, i16* %l_14, align 2, !tbaa !12
  %2 = bitcast i32* %l_1587 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 960937783, i32* %l_1587, align 4, !tbaa !1
  %3 = bitcast i16* %l_1616 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  store i16 -20909, i16* %l_1616, align 2, !tbaa !12
  store i32 0, i32* @g_4, align 4, !tbaa !1
  br label %4

; <label>:4                                       ; preds = %12, %0
  %5 = load i32, i32* @g_4, align 4, !tbaa !1
  %6 = icmp sgt i32 %5, -8
  br i1 %6, label %7, label %17

; <label>:7                                       ; preds = %4
  %8 = bitcast i32* %l_1617 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -30866356, i32* %l_1617, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1620) #1
  store i8 124, i8* %l_1620, align 1, !tbaa !9
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1620) #1
  %11 = bitcast i32* %l_1617 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  br label %12

; <label>:12                                      ; preds = %7
  %13 = load i32, i32* @g_4, align 4, !tbaa !1
  %14 = trunc i32 %13 to i16
  %15 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %14, i16 zeroext 5)
  %16 = zext i16 %15 to i32
  store i32 %16, i32* @g_4, align 4, !tbaa !1
  br label %4

; <label>:17                                      ; preds = %4
  %18 = bitcast i16* %l_1616 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %18) #1
  %19 = bitcast i32* %l_1587 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i16* %l_14 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %20) #1
  ret i16 4
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.79, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !12
  store i16 %ui2, i16* %2, align 2, !tbaa !12
  %3 = load i16, i16* %1, align 2, !tbaa !12
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !12
  %6 = zext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
!10 = !{!11, !3, i64 0}
!11 = !{!"S0", !3, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !3, i64 0}
