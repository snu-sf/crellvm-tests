; ModuleID = '00691.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 -1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_5 = internal global [2 x [9 x i32]] [[9 x i32] [i32 919384118, i32 919384118, i32 919384118, i32 919384118, i32 919384118, i32 919384118, i32 919384118, i32 919384118, i32 919384118], [9 x i32] [i32 919384118, i32 919384118, i32 919384118, i32 919384118, i32 919384118, i32 919384118, i32 919384118, i32 919384118, i32 919384118]], align 16
@.str.2 = private unnamed_addr constant [10 x i8] c"g_5[i][j]\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_6 = internal global i32 -1, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_7 = internal global [10 x i32] [i32 6, i32 846477771, i32 6, i32 1, i32 1, i32 6, i32 846477771, i32 6, i32 1, i32 1], align 16
@.str.5 = private unnamed_addr constant [7 x i8] c"g_7[i]\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_8 = internal global i32 58760449, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_9 = internal global [2 x [6 x i32]] [[6 x i32] [i32 -845318848, i32 -845318848, i32 -845318848, i32 -845318848, i32 -845318848, i32 -845318848], [6 x i32] [i32 -845318848, i32 -845318848, i32 -845318848, i32 -845318848, i32 -845318848, i32 -845318848]], align 16
@.str.8 = private unnamed_addr constant [10 x i8] c"g_9[i][j]\00", align 1
@g_41 = internal global i8 7, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"g_41\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"g_86.f0\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"g_86.f1\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"g_86.f2\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"g_86.f4\00", align 1
@g_111 = internal global i64 3, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"g_111\00", align 1
@g_118 = internal global i8 -8, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"g_118\00", align 1
@g_129 = internal global [5 x i16] [i16 8880, i16 8880, i16 8880, i16 8880, i16 8880], align 2
@.str.16 = private unnamed_addr constant [9 x i8] c"g_129[i]\00", align 1
@g_135 = internal global i8 -102, align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"g_135\00", align 1
@g_140 = internal global i8 124, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"g_140\00", align 1
@g_143 = internal global i64 -5858424770889124398, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"g_143\00", align 1
@g_151 = internal global i64 -1, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"g_151\00", align 1
@g_156 = internal global i64 8605014574764843164, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"g_156\00", align 1
@g_180 = internal global i8 -116, align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_180\00", align 1
@g_184 = internal global i32 9, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_184\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"g_210.f0\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"g_210.f1\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_210.f2\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"g_210.f4\00", align 1
@g_248 = internal global i32 -1, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_248\00", align 1
@g_262 = internal global i64 -4248957731010168472, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"g_262\00", align 1
@g_266 = internal global i8 -38, align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_266\00", align 1
@g_267 = internal global i16 0, align 2
@.str.31 = private unnamed_addr constant [6 x i8] c"g_267\00", align 1
@g_269 = internal global i32 -1, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_269\00", align 1
@g_291 = internal global i32 106546364, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"g_291\00", align 1
@g_306 = internal global [6 x [9 x i32]] [[9 x i32] [i32 -10, i32 -10, i32 -1344570631, i32 1285258068, i32 1442837533, i32 1661092656, i32 -1143131084, i32 -9232268, i32 -5], [9 x i32] [i32 1151874055, i32 654088302, i32 -511212992, i32 -10, i32 1, i32 1, i32 -10, i32 -511212992, i32 654088302], [9 x i32] [i32 1, i32 -1, i32 -1344570631, i32 1, i32 -1838902962, i32 1285258068, i32 -10, i32 -1143131084, i32 -5], [9 x i32] [i32 -9232268, i32 1151874055, i32 -1143131084, i32 654088302, i32 -1, i32 654088302, i32 -1143131084, i32 1151874055, i32 -9232268], [9 x i32] [i32 -1838902962, i32 -1, i32 1661092656, i32 -1, i32 -10, i32 654088302, i32 -5, i32 -1344570631, i32 1151874055], [9 x i32] [i32 -1, i32 654088302, i32 1285258068, i32 -511212992, i32 -511212992, i32 1285258068, i32 654088302, i32 -1, i32 1]], align 16
@.str.34 = private unnamed_addr constant [12 x i8] c"g_306[i][j]\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"g_327.f0\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"g_327.f1\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"g_327.f2\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"g_327.f4\00", align 1
@g_376 = internal global i32 9, align 4
@.str.39 = private unnamed_addr constant [6 x i8] c"g_376\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"g_441.f2\00", align 1
@g_459 = internal global i16 22924, align 2
@.str.41 = private unnamed_addr constant [6 x i8] c"g_459\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"g_547.f0\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"g_547.f1\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"g_547.f2\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"g_547.f4\00", align 1
@g_617 = internal global i32 2, align 4
@.str.46 = private unnamed_addr constant [6 x i8] c"g_617\00", align 1
@g_654 = internal global i32 -2, align 4
@.str.47 = private unnamed_addr constant [6 x i8] c"g_654\00", align 1
@g_713 = internal global i32 -531048255, align 4
@.str.48 = private unnamed_addr constant [6 x i8] c"g_713\00", align 1
@g_727 = internal global i16 -25835, align 2
@.str.49 = private unnamed_addr constant [6 x i8] c"g_727\00", align 1
@g_786 = internal global i8 -89, align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"g_786\00", align 1
@g_1087 = internal global i8 -3, align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1087\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"g_1134.f0\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"g_1134.f1\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"g_1134.f2\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"g_1134.f4\00", align 1
@g_1169 = internal global [3 x i64] [i64 4745171620544613084, i64 4745171620544613084, i64 4745171620544613084], align 16
@.str.56 = private unnamed_addr constant [10 x i8] c"g_1169[i]\00", align 1
@g_1189 = internal global i64 -8, align 8
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1189\00", align 1
@g_1246 = internal global i64 -1, align 8
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1246\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"g_1247.f0\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"g_1247.f1\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"g_1247.f2\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"g_1247.f4\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"g_1249.f0\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"g_1249.f1\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"g_1249.f2\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"g_1249.f4\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_110 = internal global i64* @g_111, align 8
@func_1.l_1306 = private unnamed_addr constant [10 x i32] [i32 1, i32 -9, i32 1, i32 -9, i32 1, i32 -9, i32 1, i32 -9, i32 1, i32 -9], align 16
@func_1.l_1346 = private unnamed_addr constant [4 x [3 x i8*]] [[3 x i8*] [i8* bitcast ({ i32, [4 x i8] }* @g_547 to i8*), i8* bitcast ({ i32, [4 x i8] }* @g_441 to i8*), i8* bitcast ({ i32, [4 x i8] }* @g_441 to i8*)], [3 x i8*] [i8* bitcast ({ i32, [4 x i8] }* @g_441 to i8*), i8* @g_1087, i8* @g_135], [3 x i8*] [i8* bitcast ({ i32, [4 x i8] }* @g_547 to i8*), i8* @g_1087, i8* bitcast ({ i32, [4 x i8] }* @g_547 to i8*)], [3 x i8*] [i8* bitcast ({ i32, [4 x i8] }* @g_210 to i8*), i8* bitcast ({ i32, [4 x i8] }* @g_441 to i8*), i8* @g_135]], align 16
@func_1.l_20 = private unnamed_addr constant [8 x [9 x [2 x i64]]] [[9 x [2 x i64]] [[2 x i64] [i64 -1, i64 -3673519743828467705], [2 x i64] [i64 352766737107888796, i64 -1], [2 x i64] [i64 3164001115614446346, i64 -1], [2 x i64] [i64 352766737107888796, i64 -3673519743828467705], [2 x i64] [i64 -1, i64 3164001115614446346], [2 x i64] [i64 -9, i64 2237056851792478800], [2 x i64] [i64 8495716970143417690, i64 0], [2 x i64] [i64 -7, i64 352766737107888796], [2 x i64] zeroinitializer], [9 x [2 x i64]] [[2 x i64] [i64 3164001115614446346, i64 352766737107888796], [2 x i64] [i64 -8621815752850882694, i64 -1], [2 x i64] [i64 -9, i64 3619059970346499714], [2 x i64] [i64 -7558746838183060212, i64 -9], [2 x i64] [i64 -8715842298790778461, i64 -5596718351381060576], [2 x i64] [i64 -8715842298790778461, i64 -9], [2 x i64] [i64 -7558746838183060212, i64 3619059970346499714], [2 x i64] [i64 -9, i64 -1], [2 x i64] [i64 -8621815752850882694, i64 352766737107888796]], [9 x [2 x i64]] [[2 x i64] [i64 3164001115614446346, i64 0], [2 x i64] [i64 0, i64 -4090674244970494547], [2 x i64] [i64 3337830848122512205, i64 4219914292292614216], [2 x i64] [i64 0, i64 -8715842298790778461], [2 x i64] [i64 2237056851792478800, i64 -7], [2 x i64] [i64 352766737107888796, i64 8495716970143417690], [2 x i64] [i64 -4090674244970494547, i64 0], [2 x i64] [i64 -7, i64 0], [2 x i64] [i64 -4090674244970494547, i64 8495716970143417690]], [9 x [2 x i64]] [[2 x i64] [i64 352766737107888796, i64 -7], [2 x i64] [i64 2237056851792478800, i64 -8715842298790778461], [2 x i64] [i64 0, i64 4219914292292614216], [2 x i64] [i64 3337830848122512205, i64 -4090674244970494547], [2 x i64] zeroinitializer, [2 x i64] [i64 3164001115614446346, i64 352766737107888796], [2 x i64] [i64 -8621815752850882694, i64 -1], [2 x i64] [i64 -9, i64 3619059970346499714], [2 x i64] [i64 -7558746838183060212, i64 -9]], [9 x [2 x i64]] [[2 x i64] [i64 -8715842298790778461, i64 -5596718351381060576], [2 x i64] [i64 -8715842298790778461, i64 -9], [2 x i64] [i64 -7558746838183060212, i64 3619059970346499714], [2 x i64] [i64 -9, i64 -1], [2 x i64] [i64 -8621815752850882694, i64 352766737107888796], [2 x i64] [i64 3164001115614446346, i64 0], [2 x i64] [i64 0, i64 -4090674244970494547], [2 x i64] [i64 3337830848122512205, i64 4219914292292614216], [2 x i64] [i64 0, i64 -8715842298790778461]], [9 x [2 x i64]] [[2 x i64] [i64 2237056851792478800, i64 -7], [2 x i64] [i64 352766737107888796, i64 8495716970143417690], [2 x i64] [i64 -4090674244970494547, i64 0], [2 x i64] [i64 -7, i64 0], [2 x i64] [i64 -4090674244970494547, i64 8495716970143417690], [2 x i64] [i64 352766737107888796, i64 -7], [2 x i64] [i64 2237056851792478800, i64 -8715842298790778461], [2 x i64] [i64 0, i64 4219914292292614216], [2 x i64] [i64 3337830848122512205, i64 -4090674244970494547]], [9 x [2 x i64]] [[2 x i64] zeroinitializer, [2 x i64] [i64 3164001115614446346, i64 352766737107888796], [2 x i64] [i64 -8621815752850882694, i64 -1], [2 x i64] [i64 -9, i64 3619059970346499714], [2 x i64] [i64 -7558746838183060212, i64 -9], [2 x i64] [i64 -8715842298790778461, i64 -5596718351381060576], [2 x i64] [i64 -8715842298790778461, i64 -9], [2 x i64] [i64 -7558746838183060212, i64 3619059970346499714], [2 x i64] [i64 -9, i64 -1]], [9 x [2 x i64]] [[2 x i64] [i64 -8621815752850882694, i64 352766737107888796], [2 x i64] [i64 3164001115614446346, i64 0], [2 x i64] [i64 0, i64 -4090674244970494547], [2 x i64] [i64 3337830848122512205, i64 4219914292292614216], [2 x i64] [i64 0, i64 -8715842298790778461], [2 x i64] [i64 2237056851792478800, i64 -7], [2 x i64] [i64 352766737107888796, i64 8495716970143417690], [2 x i64] [i64 -4090674244970494547, i64 0], [2 x i64] [i64 -7, i64 0]]], align 16
@func_1.l_1221 = private unnamed_addr constant [7 x [7 x i32*]] [[7 x i32*] [i32* @g_184, i32* @g_2, i32* @g_8, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [9 x i32]]* @g_5 to i8*), i64 56) to i32*), i32* @g_269, i32* null, i32* null], [7 x i32*] [i32* null, i32* @g_269, i32* @g_184, i32* @g_269, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [9 x i32]]* @g_5 to i8*), i64 48) to i32*), i32* null], [7 x i32*] [i32* @g_654, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_7 to i8*), i64 32) to i32*), i32* @g_376, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* @g_8, i32* null], [7 x i32*] [i32* @g_376, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [9 x i32]]* @g_5 to i8*), i64 48) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [9 x i32]]* @g_5 to i8*), i64 56) to i32*), i32* null, i32* @g_376, i32* null, i32* @g_8], [7 x i32*] [i32* @g_654, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* @g_8, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_654], [7 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_654, i32* null, i32* @g_269, i32* @g_654, i32* @g_184], [7 x i32*] [i32* @g_184, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [9 x i32]]* @g_5 to i8*), i64 48) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_7 to i8*), i64 32) to i32*), i32* @g_654, i32* @g_8, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_7 to i8*), i64 32) to i32*)]], align 16
@g_1186 = internal global i32** @g_90, align 8
@g_417 = internal global i32**** @g_418, align 8
@g_89 = internal global i32** @g_90, align 8
@g_893 = internal global i16* bitcast ({ i32, [4 x i8] }* @g_210 to i16*), align 8
@g_90 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32]* @g_7 to i8*), i64 16) to i32*), align 8
@g_418 = internal global i32*** @g_419, align 8
@g_419 = internal global i32** @g_90, align 8
@.str.67 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_86 = internal global { i32, [4 x i8] } { i32 -2, [4 x i8] undef }, align 8
@g_210 = internal global { i32, [4 x i8] } { i32 1945289746, [4 x i8] undef }, align 8
@g_327 = internal global { i32, [4 x i8] } { i32 -1, [4 x i8] undef }, align 8
@g_441 = internal global { i32, [4 x i8] } { i32 1500281443, [4 x i8] undef }, align 8
@g_547 = internal global { i32, [4 x i8] } { i32 -643193087, [4 x i8] undef }, align 8
@g_1134 = internal global { i32, [4 x i8] } { i32 394663477, [4 x i8] undef }, align 8
@g_1247 = internal global { i32, [4 x i8] } { i32 5, [4 x i8] undef }, align 8
@g_1249 = internal global { i32, [4 x i8] } { i32 -1673143551, [4 x i8] undef }, align 8
@.str.68 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %122, %89
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %125

; <label>:97                                      ; preds = %94
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %118, %97
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 9
  br i1 %100, label %101, label %121

; <label>:101                                     ; preds = %98
  %102 = load i32, i32* %j, align 4, !tbaa !1
  %103 = sext i32 %102 to i64
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [2 x [9 x i32]], [2 x [9 x i32]]* @g_5, i32 0, i64 %105
  %107 = getelementptr inbounds [9 x i32], [9 x i32]* %106, i32 0, i64 %103
  %108 = load i32, i32* %107, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %110)
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

; <label>:113                                     ; preds = %101
  %114 = load i32, i32* %i, align 4, !tbaa !1
  %115 = load i32, i32* %j, align 4, !tbaa !1
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %114, i32 %115)
  br label %117

; <label>:117                                     ; preds = %113, %101
  br label %118

; <label>:118                                     ; preds = %117
  %119 = load i32, i32* %j, align 4, !tbaa !1
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:121                                     ; preds = %98
  br label %122

; <label>:122                                     ; preds = %121
  %123 = load i32, i32* %i, align 4, !tbaa !1
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:125                                     ; preds = %94
  %126 = load volatile i32, i32* @g_6, align 4, !tbaa !1
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %128)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %129

; <label>:129                                     ; preds = %145, %125
  %130 = load i32, i32* %i, align 4, !tbaa !1
  %131 = icmp slt i32 %130, 10
  br i1 %131, label %132, label %148

; <label>:132                                     ; preds = %129
  %133 = load i32, i32* %i, align 4, !tbaa !1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [10 x i32], [10 x i32]* @g_7, i32 0, i64 %134
  %136 = load i32, i32* %135, align 4, !tbaa !1
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %138)
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

; <label>:141                                     ; preds = %132
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %142)
  br label %144

; <label>:144                                     ; preds = %141, %132
  br label %145

; <label>:145                                     ; preds = %144
  %146 = load i32, i32* %i, align 4, !tbaa !1
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %i, align 4, !tbaa !1
  br label %129

; <label>:148                                     ; preds = %129
  %149 = load i32, i32* @g_8, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 %151)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %152

; <label>:152                                     ; preds = %180, %148
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = icmp slt i32 %153, 2
  br i1 %154, label %155, label %183

; <label>:155                                     ; preds = %152
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %156

; <label>:156                                     ; preds = %176, %155
  %157 = load i32, i32* %j, align 4, !tbaa !1
  %158 = icmp slt i32 %157, 6
  br i1 %158, label %159, label %179

; <label>:159                                     ; preds = %156
  %160 = load i32, i32* %j, align 4, !tbaa !1
  %161 = sext i32 %160 to i64
  %162 = load i32, i32* %i, align 4, !tbaa !1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* @g_9, i32 0, i64 %163
  %165 = getelementptr inbounds [6 x i32], [6 x i32]* %164, i32 0, i64 %161
  %166 = load i32, i32* %165, align 4, !tbaa !1
  %167 = sext i32 %166 to i64
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 %168)
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

; <label>:171                                     ; preds = %159
  %172 = load i32, i32* %i, align 4, !tbaa !1
  %173 = load i32, i32* %j, align 4, !tbaa !1
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %172, i32 %173)
  br label %175

; <label>:175                                     ; preds = %171, %159
  br label %176

; <label>:176                                     ; preds = %175
  %177 = load i32, i32* %j, align 4, !tbaa !1
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %j, align 4, !tbaa !1
  br label %156

; <label>:179                                     ; preds = %156
  br label %180

; <label>:180                                     ; preds = %179
  %181 = load i32, i32* %i, align 4, !tbaa !1
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %i, align 4, !tbaa !1
  br label %152

; <label>:183                                     ; preds = %152
  %184 = load i8, i8* @g_41, align 1, !tbaa !9
  %185 = sext i8 %184 to i64
  %186 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %186)
  %187 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_86, i32 0, i32 0), align 4, !tbaa !1
  %188 = zext i32 %187 to i64
  %189 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %188, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 %189)
  %190 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_86, i32 0, i32 0), align 8
  %191 = and i32 %190, 67108863
  %192 = zext i32 %191 to i64
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 %193)
  %194 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_86 to i8*), align 1, !tbaa !9
  %195 = zext i8 %194 to i64
  %196 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 %196)
  %197 = load volatile i16, i16* bitcast ({ i32, [4 x i8] }* @g_86 to i16*), align 2, !tbaa !10
  %198 = sext i16 %197 to i64
  %199 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 %199)
  %200 = load i64, i64* @g_111, align 8, !tbaa !7
  %201 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %201)
  %202 = load i8, i8* @g_118, align 1, !tbaa !9
  %203 = sext i8 %202 to i64
  %204 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %204)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %205

; <label>:205                                     ; preds = %221, %183
  %206 = load i32, i32* %i, align 4, !tbaa !1
  %207 = icmp slt i32 %206, 5
  br i1 %207, label %208, label %224

; <label>:208                                     ; preds = %205
  %209 = load i32, i32* %i, align 4, !tbaa !1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [5 x i16], [5 x i16]* @g_129, i32 0, i64 %210
  %212 = load i16, i16* %211, align 2, !tbaa !10
  %213 = zext i16 %212 to i64
  %214 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %213, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %214)
  %215 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

; <label>:217                                     ; preds = %208
  %218 = load i32, i32* %i, align 4, !tbaa !1
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %218)
  br label %220

; <label>:220                                     ; preds = %217, %208
  br label %221

; <label>:221                                     ; preds = %220
  %222 = load i32, i32* %i, align 4, !tbaa !1
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %i, align 4, !tbaa !1
  br label %205

; <label>:224                                     ; preds = %205
  %225 = load i8, i8* @g_135, align 1, !tbaa !9
  %226 = zext i8 %225 to i64
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %227)
  %228 = load i8, i8* @g_140, align 1, !tbaa !9
  %229 = zext i8 %228 to i64
  %230 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %230)
  %231 = load i64, i64* @g_143, align 8, !tbaa !7
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %231, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %232)
  %233 = load i64, i64* @g_151, align 8, !tbaa !7
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %234)
  %235 = load i64, i64* @g_156, align 8, !tbaa !7
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %236)
  %237 = load i8, i8* @g_180, align 1, !tbaa !9
  %238 = sext i8 %237 to i64
  %239 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %239)
  %240 = load i32, i32* @g_184, align 4, !tbaa !1
  %241 = sext i32 %240 to i64
  %242 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %242)
  %243 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_210, i32 0, i32 0), align 4, !tbaa !1
  %244 = zext i32 %243 to i64
  %245 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %244, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %245)
  %246 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_210, i32 0, i32 0), align 8
  %247 = and i32 %246, 67108863
  %248 = zext i32 %247 to i64
  %249 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %249)
  %250 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_210 to i8*), align 1, !tbaa !9
  %251 = zext i8 %250 to i64
  %252 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %251, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %252)
  %253 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_210 to i16*), align 2, !tbaa !10
  %254 = sext i16 %253 to i64
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %254, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %255)
  %256 = load i32, i32* @g_248, align 4, !tbaa !1
  %257 = zext i32 %256 to i64
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %258)
  %259 = load i64, i64* @g_262, align 8, !tbaa !7
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %260)
  %261 = load i8, i8* @g_266, align 1, !tbaa !9
  %262 = zext i8 %261 to i64
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %263)
  %264 = load i16, i16* @g_267, align 2, !tbaa !10
  %265 = sext i16 %264 to i64
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %266)
  %267 = load i32, i32* @g_269, align 4, !tbaa !1
  %268 = sext i32 %267 to i64
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %268, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %269)
  %270 = load i32, i32* @g_291, align 4, !tbaa !1
  %271 = sext i32 %270 to i64
  %272 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %271, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %272)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %273

; <label>:273                                     ; preds = %301, %224
  %274 = load i32, i32* %i, align 4, !tbaa !1
  %275 = icmp slt i32 %274, 6
  br i1 %275, label %276, label %304

; <label>:276                                     ; preds = %273
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %277

; <label>:277                                     ; preds = %297, %276
  %278 = load i32, i32* %j, align 4, !tbaa !1
  %279 = icmp slt i32 %278, 9
  br i1 %279, label %280, label %300

; <label>:280                                     ; preds = %277
  %281 = load i32, i32* %j, align 4, !tbaa !1
  %282 = sext i32 %281 to i64
  %283 = load i32, i32* %i, align 4, !tbaa !1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [6 x [9 x i32]], [6 x [9 x i32]]* @g_306, i32 0, i64 %284
  %286 = getelementptr inbounds [9 x i32], [9 x i32]* %285, i32 0, i64 %282
  %287 = load i32, i32* %286, align 4, !tbaa !1
  %288 = sext i32 %287 to i64
  %289 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i32 %289)
  %290 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

; <label>:292                                     ; preds = %280
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = load i32, i32* %j, align 4, !tbaa !1
  %295 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %293, i32 %294)
  br label %296

; <label>:296                                     ; preds = %292, %280
  br label %297

; <label>:297                                     ; preds = %296
  %298 = load i32, i32* %j, align 4, !tbaa !1
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %j, align 4, !tbaa !1
  br label %277

; <label>:300                                     ; preds = %277
  br label %301

; <label>:301                                     ; preds = %300
  %302 = load i32, i32* %i, align 4, !tbaa !1
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %i, align 4, !tbaa !1
  br label %273

; <label>:304                                     ; preds = %273
  %305 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_327, i32 0, i32 0), align 4, !tbaa !1
  %306 = zext i32 %305 to i64
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %306, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %307)
  %308 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_327, i32 0, i32 0), align 8
  %309 = and i32 %308, 67108863
  %310 = zext i32 %309 to i64
  %311 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %310, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %311)
  %312 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_327 to i8*), align 1, !tbaa !9
  %313 = zext i8 %312 to i64
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %314)
  %315 = load volatile i16, i16* bitcast ({ i32, [4 x i8] }* @g_327 to i16*), align 2, !tbaa !10
  %316 = sext i16 %315 to i64
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %317)
  %318 = load i32, i32* @g_376, align 4, !tbaa !1
  %319 = sext i32 %318 to i64
  %320 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %319, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %320)
  %321 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_441 to i8*), align 1, !tbaa !9
  %322 = zext i8 %321 to i64
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %322, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 %323)
  %324 = load i16, i16* @g_459, align 2, !tbaa !10
  %325 = zext i16 %324 to i64
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %326)
  %327 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_547, i32 0, i32 0), align 4, !tbaa !1
  %328 = zext i32 %327 to i64
  %329 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %328, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 %329)
  %330 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_547, i32 0, i32 0), align 8
  %331 = and i32 %330, 67108863
  %332 = zext i32 %331 to i64
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %332, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %333)
  %334 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_547 to i8*), align 1, !tbaa !9
  %335 = zext i8 %334 to i64
  %336 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %335, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %336)
  %337 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_547 to i16*), align 2, !tbaa !10
  %338 = sext i16 %337 to i64
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %338, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 %339)
  %340 = load volatile i32, i32* @g_617, align 4, !tbaa !1
  %341 = zext i32 %340 to i64
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %341, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %342)
  %343 = load i32, i32* @g_654, align 4, !tbaa !1
  %344 = sext i32 %343 to i64
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 %345)
  %346 = load i32, i32* @g_713, align 4, !tbaa !1
  %347 = zext i32 %346 to i64
  %348 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %347, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %348)
  %349 = load i16, i16* @g_727, align 2, !tbaa !10
  %350 = sext i16 %349 to i64
  %351 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %350, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 %351)
  %352 = load i8, i8* @g_786, align 1, !tbaa !9
  %353 = sext i8 %352 to i64
  %354 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %353, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 %354)
  %355 = load i8, i8* @g_1087, align 1, !tbaa !9
  %356 = zext i8 %355 to i64
  %357 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %356, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %357)
  %358 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1134, i32 0, i32 0), align 4, !tbaa !1
  %359 = zext i32 %358 to i64
  %360 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %359, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 %360)
  %361 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1134, i32 0, i32 0), align 8
  %362 = and i32 %361, 67108863
  %363 = zext i32 %362 to i64
  %364 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %363, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32 %364)
  %365 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_1134 to i8*), align 1, !tbaa !9
  %366 = zext i8 %365 to i64
  %367 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %366, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 %367)
  %368 = load volatile i16, i16* bitcast ({ i32, [4 x i8] }* @g_1134 to i16*), align 2, !tbaa !10
  %369 = sext i16 %368 to i64
  %370 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %369, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 %370)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %371

; <label>:371                                     ; preds = %386, %304
  %372 = load i32, i32* %i, align 4, !tbaa !1
  %373 = icmp slt i32 %372, 3
  br i1 %373, label %374, label %389

; <label>:374                                     ; preds = %371
  %375 = load i32, i32* %i, align 4, !tbaa !1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [3 x i64], [3 x i64]* @g_1169, i32 0, i64 %376
  %378 = load volatile i64, i64* %377, align 8, !tbaa !7
  %379 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %378, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i32 %379)
  %380 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %385

; <label>:382                                     ; preds = %374
  %383 = load i32, i32* %i, align 4, !tbaa !1
  %384 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %383)
  br label %385

; <label>:385                                     ; preds = %382, %374
  br label %386

; <label>:386                                     ; preds = %385
  %387 = load i32, i32* %i, align 4, !tbaa !1
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %i, align 4, !tbaa !1
  br label %371

; <label>:389                                     ; preds = %371
  %390 = load i64, i64* @g_1189, align 8, !tbaa !7
  %391 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %390, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %391)
  %392 = load volatile i64, i64* @g_1246, align 8, !tbaa !7
  %393 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %392, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %393)
  %394 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1247, i32 0, i32 0), align 4, !tbaa !1
  %395 = zext i32 %394 to i64
  %396 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %395, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 %396)
  %397 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1247, i32 0, i32 0), align 8
  %398 = and i32 %397, 67108863
  %399 = zext i32 %398 to i64
  %400 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %399, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 %400)
  %401 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_1247 to i8*), align 1, !tbaa !9
  %402 = zext i8 %401 to i64
  %403 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %402, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 %403)
  %404 = load volatile i16, i16* bitcast ({ i32, [4 x i8] }* @g_1247 to i16*), align 2, !tbaa !10
  %405 = sext i16 %404 to i64
  %406 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %405, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 %406)
  %407 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1249, i32 0, i32 0), align 4, !tbaa !1
  %408 = zext i32 %407 to i64
  %409 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %408, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 %409)
  %410 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_1249, i32 0, i32 0), align 8
  %411 = and i32 %410, 67108863
  %412 = zext i32 %411 to i64
  %413 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %412, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 %413)
  %414 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_1249 to i8*), align 1, !tbaa !9
  %415 = zext i8 %414 to i64
  %416 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %415, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 %416)
  %417 = load i16, i16* bitcast ({ i32, [4 x i8] }* @g_1249 to i16*), align 2, !tbaa !10
  %418 = sext i16 %417 to i64
  %419 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %418, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 %419)
  %420 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %421 = zext i32 %420 to i64
  %422 = xor i64 %421, 4294967295
  %423 = trunc i64 %422 to i32
  %424 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %423, i32 %424)
  %425 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %425) #1
  %426 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %426) #1
  %427 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %427) #1
  %428 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %428) #1
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
  %l_92 = alloca i8, align 1
  %l_883 = alloca i32*, align 8
  %l_1273 = alloca i64**, align 8
  %l_1290 = alloca i32, align 4
  %l_1293 = alloca i32, align 4
  %l_1295 = alloca i32, align 4
  %l_1298 = alloca i32, align 4
  %l_1302 = alloca i32, align 4
  %l_1306 = alloca [10 x i32], align 16
  %l_1343 = alloca i8**, align 8
  %l_1346 = alloca [4 x [3 x i8*]], align 16
  %l_1345 = alloca i8**, align 8
  %l_1363 = alloca i8, align 1
  %l_1368 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_10 = alloca i16, align 2
  %l_15 = alloca i8, align 1
  %l_20 = alloca [8 x [9 x [2 x i64]]], align 16
  %l_85 = alloca i16, align 2
  %l_1221 = alloca [7 x [7 x i32*]], align 16
  %l_1238 = alloca %union.U0**, align 8
  %l_1237 = alloca %union.U0***, align 8
  %l_1236 = alloca %union.U0****, align 8
  %l_1267 = alloca i32, align 4
  %l_1294 = alloca [2 x i32], align 4
  %l_1339 = alloca i64, align 8
  %l_1344 = alloca i8***, align 8
  %l_1357 = alloca i32***, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1375 = alloca i32***, align 8
  %l_1376 = alloca i8, align 1
  %i3 = alloca i32, align 4
  call void @llvm.lifetime.start(i64 1, i8* %l_92) #1
  store i8 6, i8* %l_92, align 1, !tbaa !9
  %1 = bitcast i32** %l_883 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32* null, i32** %l_883, align 8, !tbaa !5
  %2 = bitcast i64*** %l_1273 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i64** @g_110, i64*** %l_1273, align 8, !tbaa !5
  %3 = bitcast i32* %l_1290 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 768341400, i32* %l_1290, align 4, !tbaa !1
  %4 = bitcast i32* %l_1293 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 4, i32* %l_1293, align 4, !tbaa !1
  %5 = bitcast i32* %l_1295 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %l_1295, align 4, !tbaa !1
  %6 = bitcast i32* %l_1298 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 941142070, i32* %l_1298, align 4, !tbaa !1
  %7 = bitcast i32* %l_1302 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -1889367736, i32* %l_1302, align 4, !tbaa !1
  %8 = bitcast [10 x i32]* %l_1306 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %8) #1
  %9 = bitcast [10 x i32]* %l_1306 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([10 x i32]* @func_1.l_1306 to i8*), i64 40, i32 16, i1 false)
  %10 = bitcast i8*** %l_1343 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8** null, i8*** %l_1343, align 8, !tbaa !5
  %11 = bitcast [4 x [3 x i8*]]* %l_1346 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %11) #1
  %12 = bitcast [4 x [3 x i8*]]* %l_1346 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast ([4 x [3 x i8*]]* @func_1.l_1346 to i8*), i64 96, i32 16, i1 false)
  %13 = bitcast i8*** %l_1345 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = getelementptr inbounds [4 x [3 x i8*]], [4 x [3 x i8*]]* %l_1346, i32 0, i64 2
  %15 = getelementptr inbounds [3 x i8*], [3 x i8*]* %14, i32 0, i64 2
  store i8** %15, i8*** %l_1345, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1363) #1
  store i8 -35, i8* %l_1363, align 1, !tbaa !9
  %16 = bitcast i32** %l_1368 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_547, i32 0, i32 0), i32** %l_1368, align 8, !tbaa !5
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 4, i32* @g_2, align 4, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %66, %0
  %20 = load i32, i32* @g_2, align 4, !tbaa !1
  %21 = icmp sgt i32 %20, 22
  br i1 %21, label %22, label %71

; <label>:22                                      ; preds = %19
  %23 = bitcast i16* %l_10 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %23) #1
  store i16 -26999, i16* %l_10, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_15) #1
  store i8 1, i8* %l_15, align 1, !tbaa !9
  %24 = bitcast [8 x [9 x [2 x i64]]]* %l_20 to i8*
  call void @llvm.lifetime.start(i64 1152, i8* %24) #1
  %25 = bitcast [8 x [9 x [2 x i64]]]* %l_20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast ([8 x [9 x [2 x i64]]]* @func_1.l_20 to i8*), i64 1152, i32 16, i1 false)
  %26 = bitcast i16* %l_85 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %26) #1
  store i16 -1, i16* %l_85, align 2, !tbaa !10
  %27 = bitcast [7 x [7 x i32*]]* %l_1221 to i8*
  call void @llvm.lifetime.start(i64 392, i8* %27) #1
  %28 = bitcast [7 x [7 x i32*]]* %l_1221 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* bitcast ([7 x [7 x i32*]]* @func_1.l_1221 to i8*), i64 392, i32 16, i1 false)
  %29 = bitcast %union.U0*** %l_1238 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store %union.U0** null, %union.U0*** %l_1238, align 8, !tbaa !5
  %30 = bitcast %union.U0**** %l_1237 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store %union.U0*** %l_1238, %union.U0**** %l_1237, align 8, !tbaa !5
  %31 = bitcast %union.U0***** %l_1236 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store %union.U0**** %l_1237, %union.U0***** %l_1236, align 8, !tbaa !5
  %32 = bitcast i32* %l_1267 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 1682294087, i32* %l_1267, align 4, !tbaa !1
  %33 = bitcast [2 x i32]* %l_1294 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = bitcast i64* %l_1339 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  store i64 -622687949998455625, i64* %l_1339, align 8, !tbaa !7
  %35 = bitcast i8**** %l_1344 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store i8*** %l_1343, i8**** %l_1344, align 8, !tbaa !5
  %36 = bitcast i32**** %l_1357 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i32*** @g_1186, i32**** %l_1357, align 8, !tbaa !5
  %37 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %40

; <label>:40                                      ; preds = %47, %22
  %41 = load i32, i32* %i1, align 4, !tbaa !1
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %50

; <label>:43                                      ; preds = %40
  %44 = load i32, i32* %i1, align 4, !tbaa !1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %l_1294, i32 0, i64 %45
  store i32 0, i32* %46, align 4, !tbaa !1
  br label %47

; <label>:47                                      ; preds = %43
  %48 = load i32, i32* %i1, align 4, !tbaa !1
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %i1, align 4, !tbaa !1
  br label %40

; <label>:50                                      ; preds = %40
  %51 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32**** %l_1357 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i8**** %l_1344 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i64* %l_1339 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast [2 x i32]* %l_1294 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32* %l_1267 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast %union.U0***** %l_1236 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %union.U0**** %l_1237 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast %union.U0*** %l_1238 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast [7 x [7 x i32*]]* %l_1221 to i8*
  call void @llvm.lifetime.end(i64 392, i8* %62) #1
  %63 = bitcast i16* %l_85 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %63) #1
  %64 = bitcast [8 x [9 x [2 x i64]]]* %l_20 to i8*
  call void @llvm.lifetime.end(i64 1152, i8* %64) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_15) #1
  %65 = bitcast i16* %l_10 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %65) #1
  br label %66

; <label>:66                                      ; preds = %50
  %67 = load i32, i32* @g_2, align 4, !tbaa !1
  %68 = trunc i32 %67 to i16
  %69 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %68, i16 zeroext 1)
  %70 = zext i16 %69 to i32
  store i32 %70, i32* @g_2, align 4, !tbaa !1
  br label %19

; <label>:71                                      ; preds = %19
  %72 = load i32, i32* getelementptr inbounds ([6 x [9 x i32]], [6 x [9 x i32]]* @g_306, i32 0, i64 3, i64 2), align 4, !tbaa !1
  %73 = load i32****, i32***** @g_417, align 8, !tbaa !5
  %74 = load i32***, i32**** %73, align 8, !tbaa !5
  %75 = load i32**, i32*** %74, align 8, !tbaa !5
  %76 = load i32*, i32** %75, align 8, !tbaa !5
  %77 = icmp ne i32* %76, %l_1293
  %78 = zext i1 %77 to i32
  %79 = trunc i32 %78 to i16
  %80 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %79, i32 15)
  %81 = sext i16 %80 to i64
  %82 = load i32, i32* %l_1298, align 4, !tbaa !1
  %83 = sext i32 %82 to i64
  %84 = call i64 @safe_div_func_uint64_t_u_u(i64 %81, i64 %83)
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %l_1368, align 8, !tbaa !5
  store i32 %85, i32* %86, align 4, !tbaa !1
  %87 = zext i32 %85 to i64
  %88 = load i64, i64* @g_111, align 8, !tbaa !7
  %89 = or i64 %87, %88
  %90 = load i32**, i32*** @g_1186, align 8, !tbaa !5
  %91 = load i32*, i32** %90, align 8, !tbaa !5
  %92 = load i32, i32* %91, align 4, !tbaa !1
  %93 = sext i32 %92 to i64
  %94 = xor i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4, !tbaa !1
  store i32 0, i32* @g_269, align 4, !tbaa !1
  br label %96

; <label>:96                                      ; preds = %176, %71
  %97 = load i32, i32* @g_269, align 4, !tbaa !1
  %98 = icmp slt i32 %97, 13
  br i1 %98, label %99, label %181

; <label>:99                                      ; preds = %96
  store i8 1, i8* bitcast ({ i32, [4 x i8] }* @g_441 to i8*), align 1, !tbaa !9
  br label %100

; <label>:100                                     ; preds = %170, %99
  %101 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_441 to i8*), align 1, !tbaa !9
  %102 = zext i8 %101 to i32
  %103 = icmp sle i32 %102, 9
  br i1 %103, label %104, label %175

; <label>:104                                     ; preds = %100
  %105 = bitcast i32**** %l_1375 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  store i32*** @g_89, i32**** %l_1375, align 8, !tbaa !5
  store i16 0, i16* @g_459, align 2, !tbaa !10
  br label %106

; <label>:106                                     ; preds = %163, %104
  %107 = load i16, i16* @g_459, align 2, !tbaa !10
  %108 = zext i16 %107 to i32
  %109 = icmp sle i32 %108, 9
  br i1 %109, label %110, label %168

; <label>:110                                     ; preds = %106
  call void @llvm.lifetime.start(i64 1, i8* %l_1376) #1
  store i8 -68, i8* %l_1376, align 1, !tbaa !9
  %111 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #1
  %112 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_441 to i8*), align 1, !tbaa !9
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1306, i32 0, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !1
  %116 = sext i32 %115 to i64
  %117 = icmp eq i64 %116, 41209
  %118 = zext i1 %117 to i32
  %119 = sext i32 %118 to i64
  %120 = icmp eq i64 3222851385, %119
  %121 = zext i1 %120 to i32
  %122 = load i16, i16* @g_459, align 2, !tbaa !10
  %123 = zext i16 %122 to i64
  %124 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1306, i32 0, i64 %123
  %125 = load i32, i32* %124, align 4, !tbaa !1
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %138, label %127

; <label>:127                                     ; preds = %110
  %128 = load i16, i16* @g_459, align 2, !tbaa !10
  %129 = zext i16 %128 to i64
  %130 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1306, i32 0, i64 %129
  %131 = load i32, i32* %130, align 4, !tbaa !1
  %132 = sext i32 %131 to i64
  %133 = icmp sgt i64 %132, 245
  %134 = zext i1 %133 to i32
  %135 = sext i32 %134 to i64
  %136 = call i64 @safe_sub_func_int64_t_s_s(i64 0, i64 %135)
  %137 = icmp ne i64 %136, 0
  br label %138

; <label>:138                                     ; preds = %127, %110
  %139 = phi i1 [ true, %110 ], [ %137, %127 ]
  %140 = zext i1 %139 to i32
  %141 = load i32***, i32**** %l_1375, align 8, !tbaa !5
  %142 = load i32***, i32**** %l_1375, align 8, !tbaa !5
  %143 = icmp eq i32*** %141, %142
  %144 = zext i1 %143 to i32
  %145 = sext i32 %144 to i64
  %146 = and i64 65535, %145
  %147 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_441 to i8*), align 1, !tbaa !9
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1306, i32 0, i64 %148
  %150 = load i32, i32* %149, align 4, !tbaa !1
  %151 = sext i32 %150 to i64
  %152 = icmp eq i64 7503162815114407597, %151
  %153 = zext i1 %152 to i32
  %154 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_441 to i8*), align 1, !tbaa !9
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1306, i32 0, i64 %155
  store i32 %153, i32* %156, align 4, !tbaa !1
  %157 = load i32****, i32***** @g_417, align 8, !tbaa !5
  %158 = load i32***, i32**** %157, align 8, !tbaa !5
  %159 = load i32**, i32*** %158, align 8, !tbaa !5
  %160 = load i32*, i32** %159, align 8, !tbaa !5
  store i32 %153, i32* %160, align 4, !tbaa !1
  %161 = trunc i32 %153 to i8
  store i8 %161, i8* %l_1376, align 1, !tbaa !9
  %162 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1376) #1
  br label %163

; <label>:163                                     ; preds = %138
  %164 = load i16, i16* @g_459, align 2, !tbaa !10
  %165 = zext i16 %164 to i32
  %166 = add nsw i32 %165, 1
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* @g_459, align 2, !tbaa !10
  br label %106

; <label>:168                                     ; preds = %106
  %169 = bitcast i32**** %l_1375 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  br label %170

; <label>:170                                     ; preds = %168
  %171 = load i8, i8* bitcast ({ i32, [4 x i8] }* @g_441 to i8*), align 1, !tbaa !9
  %172 = zext i8 %171 to i32
  %173 = add nsw i32 %172, 1
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* bitcast ({ i32, [4 x i8] }* @g_441 to i8*), align 1, !tbaa !9
  br label %100

; <label>:175                                     ; preds = %100
  br label %176

; <label>:176                                     ; preds = %175
  %177 = load i32, i32* @g_269, align 4, !tbaa !1
  %178 = trunc i32 %177 to i16
  %179 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %178, i16 signext 2)
  %180 = sext i16 %179 to i32
  store i32 %180, i32* @g_269, align 4, !tbaa !1
  br label %96

; <label>:181                                     ; preds = %96
  %182 = load i16*, i16** @g_893, align 8, !tbaa !5
  %183 = load i16, i16* %182, align 2, !tbaa !10
  %184 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32** %l_1368 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1363) #1
  %187 = bitcast i8*** %l_1345 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast [4 x [3 x i8*]]* %l_1346 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %188) #1
  %189 = bitcast i8*** %l_1343 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast [10 x i32]* %l_1306 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %190) #1
  %191 = bitcast i32* %l_1302 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %l_1298 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %l_1295 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %l_1293 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %l_1290 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i64*** %l_1273 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i32** %l_883 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_92) #1
  ret i16 %183
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.67, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
