; ModuleID = '00624.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i32 }
%union.U1 = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_20 = internal global %union.U0 { i32 -1 }, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"g_20.f0\00", align 1
@g_24 = internal global i64 -5, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"g_24\00", align 1
@g_42 = internal global i16 -6, align 2
@.str.4 = private unnamed_addr constant [5 x i8] c"g_42\00", align 1
@g_61 = internal global [5 x i64] [i64 -111251198495058952, i64 -111251198495058952, i64 -111251198495058952, i64 -111251198495058952, i64 -111251198495058952], align 16
@.str.5 = private unnamed_addr constant [8 x i8] c"g_61[i]\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_64 = internal global i8 97, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"g_64\00", align 1
@g_106 = internal global i16 -1, align 2
@.str.8 = private unnamed_addr constant [6 x i8] c"g_106\00", align 1
@g_123 = internal global [10 x i8] c"\FE\00\FE\00\FE\00\FE\00\FE\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"g_123[i]\00", align 1
@g_125 = internal global i64 7, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"g_125\00", align 1
@g_127 = internal global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"g_127\00", align 1
@g_129 = internal global i16 9, align 2
@.str.12 = private unnamed_addr constant [6 x i8] c"g_129\00", align 1
@g_131 = internal global i16 0, align 2
@.str.13 = private unnamed_addr constant [6 x i8] c"g_131\00", align 1
@g_148 = internal global i8 7, align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"g_148\00", align 1
@g_154 = internal global [8 x i8] c"\A2\A2\A2\A2\A2\A2\A2\A2", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"g_154[i]\00", align 1
@g_157 = internal global i16 1, align 2
@.str.16 = private unnamed_addr constant [6 x i8] c"g_157\00", align 1
@g_158 = internal global i64 9, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"g_158\00", align 1
@g_159 = internal global [5 x i32] [i32 -1020877887, i32 -1020877887, i32 -1020877887, i32 -1020877887, i32 -1020877887], align 16
@.str.18 = private unnamed_addr constant [9 x i8] c"g_159[i]\00", align 1
@g_160 = internal global i32 -1730052788, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_160\00", align 1
@g_161 = internal global [6 x [10 x i8]] [[10 x i8] c"\01\01\09\01\01\09\01\01\09\01", [10 x i8] c"\01\E7\E7\01\E7\E7\01\E7\09\E7", [10 x i8] c"\09\E7\09\09\E7\09\09\E7\09\09", [10 x i8] c"\E7\E7\01\E7\E7\01\E7\E7\01\E7", [10 x i8] c"\E7\09\09\E7\09\09\E7\09\09\E7", [10 x i8] c"\09\E7\09\09\E7\09\09\E7\09\09"], align 16
@.str.20 = private unnamed_addr constant [12 x i8] c"g_161[i][j]\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_176 = internal global i64 -3629251532935400858, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"g_176\00", align 1
@g_197 = internal global i32 -1551109084, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_197\00", align 1
@g_275 = internal global [2 x i16] [i16 -1, i16 -1], align 2
@.str.24 = private unnamed_addr constant [9 x i8] c"g_275[i]\00", align 1
@g_276 = internal global [7 x i32] [i32 -20957805, i32 -20957805, i32 -20957805, i32 -20957805, i32 -20957805, i32 -20957805, i32 -20957805], align 16
@.str.25 = private unnamed_addr constant [9 x i8] c"g_276[i]\00", align 1
@g_318 = internal global i16 0, align 2
@.str.26 = private unnamed_addr constant [6 x i8] c"g_318\00", align 1
@g_338 = internal global i32 -3, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_338\00", align 1
@g_375 = internal global i8 64, align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"g_375\00", align 1
@g_436 = internal constant [8 x [9 x [1 x i32]]] [[9 x [1 x i32]] [[1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9]], [9 x [1 x i32]] [[1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9]], [9 x [1 x i32]] [[1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9]], [9 x [1 x i32]] [[1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9]], [9 x [1 x i32]] [[1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9]], [9 x [1 x i32]] [[1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9]], [9 x [1 x i32]] [[1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9]], [9 x [1 x i32]] [[1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9], [1 x i32] [i32 9]]], align 16
@.str.29 = private unnamed_addr constant [15 x i8] c"g_436[i][j][k]\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_538 = internal global i16 16030, align 2
@.str.31 = private unnamed_addr constant [6 x i8] c"g_538\00", align 1
@g_551 = internal global [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@.str.32 = private unnamed_addr constant [9 x i8] c"g_551[i]\00", align 1
@g_613 = internal global i32 -1529710331, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"g_613\00", align 1
@g_659 = internal global i64 -1455502845429680080, align 8
@.str.34 = private unnamed_addr constant [6 x i8] c"g_659\00", align 1
@g_716 = internal global [6 x [4 x [9 x i8]]] [[4 x [9 x i8]] [[9 x i8] c"\FF\10Sb\01\FF\C2\F6\C2", [9 x i8] c"\C2\CF\90\90\CF\C2\C0\FFS", [9 x i8] c"\F6\81\90\FF\FF4\01\014", [9 x i8] c"\90\01S\01\90\F6\C0b\F8"], [4 x [9 x i8]] [[9 x i8] c"\00\01\F6\F8\81\10\C2\10\81", [9 x i8] c"\C0\81\81\C04\F6S\C2\22", [9 x i8] c"\C0\CF\FF\F6\2244\22\F6", [9 x i8] c"\00\10\00\FF4\C2\F8\FF\F6"], [4 x [9 x i8]] [[9 x i8] c"\90\00\22S\81\FF\81S\22", [9 x i8] c"\F6\F6\10\FF\90\00\22S\81", [9 x i8] c"\C2\F8\FF\F6\FF\FF\F6\FF\F8", [9 x i8] c"\FFb\F8\FF\81\CFS\FF\10"], [4 x [9 x i8]] [[9 x i8] c"b\01\FF\C2\F6\C2\FF\01b", [9 x i8] c"\81\C04\F6S\C2\22\F8\01", [9 x i8] c"\C0\C2\CF\90\90\CF\C2\C0\FF", [9 x i8] c"\81S\22\00\90\FF\10\F6\F6"], [4 x [9 x i8]] [[9 x i8] c"b4S\C0S4b\FF\FF", [9 x i8] c"\FF\F8b\C0\F6\90\01S\01", [9 x i8] c"\01\81\00\00\81\01\FF\FFb", [9 x i8] c"S\22\00\90\FF\10\F6\F6\10"], [4 x [9 x i8]] [[9 x i8] c"\00\F6b\F6\00S\FF\C0\C2", [9 x i8] c"4\F6S\C2\22\F8\01\F8\22", [9 x i8] c"\FF\22\22\FF\10Sb\01\FF", [9 x i8] c"\FF\81\CFS\FF\10\10\FFS"]], align 16
@.str.35 = private unnamed_addr constant [15 x i8] c"g_716[i][j][k]\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"g_745.f0\00", align 1
@g_841 = internal global [6 x [6 x i32]] [[6 x i32] [i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294], [6 x i32] [i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294], [6 x i32] [i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294], [6 x i32] [i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294], [6 x i32] [i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294], [6 x i32] [i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294, i32 -1381047294]], align 16
@.str.37 = private unnamed_addr constant [12 x i8] c"g_841[i][j]\00", align 1
@g_867 = internal global i64 9, align 8
@.str.38 = private unnamed_addr constant [6 x i8] c"g_867\00", align 1
@g_880 = internal global i64 -8686555912250668957, align 8
@.str.39 = private unnamed_addr constant [6 x i8] c"g_880\00", align 1
@g_932 = internal global i32 -7, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"g_932\00", align 1
@g_1052 = internal global i8 102, align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1052\00", align 1
@g_1092 = internal global i64 5484188206868594940, align 8
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1092\00", align 1
@g_1222 = internal global i8 1, align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1222\00", align 1
@g_1223 = internal global i32 2007090786, align 4
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1223\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"g_1310.f0\00", align 1
@g_1371 = internal global i16 -4, align 2
@.str.46 = private unnamed_addr constant [7 x i8] c"g_1371\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_12 = internal constant <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 50, i8 -119, i8 7, i8 1 }, { i8, i8, i8, i8 } { i8 50, i8 -119, i8 7, i8 1 }, { i8, i8, i8, i8 } { i8 50, i8 -119, i8 7, i8 1 }, { i8, i8, i8, i8 } { i8 50, i8 -119, i8 7, i8 1 }, { i8, i8, i8, i8 } { i8 50, i8 -119, i8 7, i8 1 } }>, align 16
@func_1.l_36 = private unnamed_addr constant [5 x [7 x i32*]] [[7 x i32*] [i32* getelementptr inbounds (%union.U0, %union.U0* @g_20, i32 0, i32 0), i32* @g_2, i32* null, i32* null, i32* null, i32* null, i32* @g_2], [7 x i32*] [i32* null, i32* null, i32* getelementptr inbounds (%union.U0, %union.U0* @g_20, i32 0, i32 0), i32* null, i32* null, i32* null, i32* getelementptr inbounds (%union.U0, %union.U0* @g_20, i32 0, i32 0)], [7 x i32*] [i32* null, i32* null, i32* null, i32* @g_2, i32* getelementptr inbounds (%union.U0, %union.U0* @g_20, i32 0, i32 0), i32* getelementptr inbounds (%union.U0, %union.U0* @g_20, i32 0, i32 0), i32* @g_2], [7 x i32*] [i32* @g_2, i32* null, i32* @g_2, i32* null, i32* @g_2, i32* null, i32* @g_2], [7 x i32*] [i32* null, i32* @g_2, i32* @g_2, i32* null, i32* getelementptr inbounds (%union.U0, %union.U0* @g_20, i32 0, i32 0), i32* null, i32* null]], align 16
@func_1.l_43 = private unnamed_addr constant [10 x i8] c"\00\83\09\09\83\00\83\09\09\83", align 1
@func_1.l_1191 = private unnamed_addr constant [6 x [9 x i8*]] [[9 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_154, i32 0, i64 7), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_154, i32 0, i64 7), i8* @g_148, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_154, i32 0, i32 0), i8* null, i8* @g_148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_154, i32 0, i64 7), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_154, i32 0, i64 7)], [9 x i8*] [i8* @g_1052, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_123, i32 0, i64 6), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_154, i32 0, i64 7), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_154, i32 0, i64 7), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_123, i32 0, i64 6), i8* @g_1052, i8* @g_1052, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_123, i32 0, i64 6)], [9 x i8*] [i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_123, i32 0, i64 6), i8* @g_148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_123, i32 0, i64 6), i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_123, i32 0, i64 6)], [9 x i8*] [i8* @g_1052, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_154, i32 0, i64 7), i8* @g_1052, i8* null, i8* @g_148, i8* @g_148, i8* null, i8* @g_1052, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_154, i32 0, i64 7)], [9 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_154, i32 0, i64 7), i8* @g_1052, i8* null, i8* @g_148, i8* @g_148, i8* null, i8* @g_1052, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_154, i32 0, i64 7), i8* @g_1052], [9 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_123, i32 0, i64 6), i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_123, i32 0, i64 6), i8* @g_148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_123, i32 0, i64 6), i8* null]], align 16
@g_591 = internal global i8** null, align 8
@func_1.l_41 = private unnamed_addr constant [9 x i16*] [i16* @g_42, i16* @g_42, i16* @g_42, i16* @g_42, i16* @g_42, i16* @g_42, i16* @g_42, i16* @g_42, i16* @g_42], align 16
@func_1.l_1354 = private unnamed_addr constant [10 x [3 x [8 x i16]]] [[3 x [8 x i16]] [[8 x i16] [i16 1, i16 -11480, i16 0, i16 0, i16 -18582, i16 2, i16 -3, i16 16480], [8 x i16] [i16 -477, i16 9, i16 1, i16 24435, i16 1, i16 1, i16 0, i16 0], [8 x i16] [i16 11556, i16 16480, i16 -1, i16 6431, i16 -1, i16 16480, i16 11556, i16 6]], [3 x [8 x i16]] [[8 x i16] [i16 31996, i16 1, i16 -20825, i16 -1, i16 -1, i16 26382, i16 -18846, i16 5746], [8 x i16] [i16 1, i16 -8, i16 5746, i16 -24555, i16 -1, i16 -477, i16 1837, i16 6431], [8 x i16] [i16 31996, i16 1, i16 2, i16 5746, i16 -1, i16 -5217, i16 -8, i16 -11480]], [3 x [8 x i16]] [[8 x i16] [i16 11556, i16 -23118, i16 24435, i16 17915, i16 1, i16 0, i16 0, i16 -477], [8 x i16] [i16 -477, i16 -24555, i16 -5217, i16 -9936, i16 -18582, i16 11556, i16 -1, i16 13737], [8 x i16] [i16 1, i16 3561, i16 31996, i16 -2, i16 0, i16 20182, i16 0, i16 -8]], [3 x [8 x i16]] [[8 x i16] [i16 0, i16 1, i16 -10099, i16 26382, i16 -30788, i16 -5945, i16 -1, i16 23673], [8 x i16] [i16 -1, i16 1, i16 1837, i16 0, i16 -8, i16 13737, i16 -5217, i16 -5217], [8 x i16] [i16 0, i16 30754, i16 -1, i16 -1, i16 30754, i16 0, i16 23083, i16 1]], [3 x [8 x i16]] [[8 x i16] [i16 19130, i16 5746, i16 1, i16 -31435, i16 6431, i16 -4067, i16 -1, i16 -27752], [8 x i16] [i16 26382, i16 -2, i16 11892, i16 -31435, i16 -1, i16 -5217, i16 0, i16 1], [8 x i16] [i16 0, i16 -1, i16 13737, i16 -1, i16 11556, i16 -18582, i16 -9936, i16 -5217]], [3 x [8 x i16]] [[8 x i16] [i16 7780, i16 0, i16 -1, i16 0, i16 1, i16 185, i16 -6549, i16 23673], [8 x i16] [i16 5746, i16 -4067, i16 0, i16 26382, i16 -31435, i16 -8, i16 11556, i16 -8], [8 x i16] [i16 23083, i16 185, i16 9, i16 -24555, i16 -27467, i16 0, i16 -30788, i16 -31435]], [3 x [8 x i16]] [[8 x i16] [i16 6, i16 0, i16 -27752, i16 -477, i16 9, i16 1, i16 24435, i16 1], [8 x i16] [i16 -4067, i16 -1, i16 -20825, i16 30754, i16 1, i16 1837, i16 5746, i16 1837], [8 x i16] [i16 3561, i16 6, i16 -6549, i16 6, i16 3561, i16 28899, i16 0, i16 -2]], [3 x [8 x i16]] [[8 x i16] [i16 -1, i16 -6549, i16 -3, i16 0, i16 -12882, i16 23673, i16 -31435, i16 6], [8 x i16] [i16 30754, i16 0, i16 -3, i16 13737, i16 0, i16 -1, i16 0, i16 5746], [8 x i16] [i16 -12882, i16 -1, i16 -6549, i16 -2, i16 1, i16 6, i16 5746, i16 11556]], [3 x [8 x i16]] [[8 x i16] [i16 1, i16 -18846, i16 -20825, i16 17915, i16 0, i16 -1, i16 24435, i16 -10099], [8 x i16] [i16 -18582, i16 1, i16 -27752, i16 -4067, i16 31996, i16 26437, i16 -30788, i16 -1], [8 x i16] [i16 -5945, i16 1, i16 9, i16 -20825, i16 19130, i16 17915, i16 11556, i16 23083]], [3 x [8 x i16]] [[8 x i16] [i16 -3, i16 23083, i16 0, i16 -23118, i16 2, i16 9, i16 -6549, i16 6431], [8 x i16] [i16 -1, i16 6, i16 -1, i16 0, i16 0, i16 -9936, i16 -9936, i16 0], [8 x i16] [i16 -18846, i16 13737, i16 13737, i16 -18846, i16 -23118, i16 -27752, i16 0, i16 0]]], align 16
@.str.47 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_745 = internal global { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 0 }, align 4
@g_1310 = internal global { i8, i8, i8, i8 } { i8 29, i8 53, i8 79, i8 9 }, align 4
@.str.48 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_20, i32 0, i32 0), align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i64, i64* @g_24, align 8, !tbaa !7
  %98 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %98)
  %99 = load i16, i16* @g_42, align 2, !tbaa !10
  %100 = zext i16 %99 to i64
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %101)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %102

; <label>:102                                     ; preds = %117, %89
  %103 = load i32, i32* %i, align 4, !tbaa !1
  %104 = icmp slt i32 %103, 5
  br i1 %104, label %105, label %120

; <label>:105                                     ; preds = %102
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [5 x i64], [5 x i64]* @g_61, i32 0, i64 %107
  %109 = load i64, i64* %108, align 8, !tbaa !7
  %110 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %110)
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

; <label>:113                                     ; preds = %105
  %114 = load i32, i32* %i, align 4, !tbaa !1
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %114)
  br label %116

; <label>:116                                     ; preds = %113, %105
  br label %117

; <label>:117                                     ; preds = %116
  %118 = load i32, i32* %i, align 4, !tbaa !1
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %i, align 4, !tbaa !1
  br label %102

; <label>:120                                     ; preds = %102
  %121 = load i8, i8* @g_64, align 1, !tbaa !9
  %122 = zext i8 %121 to i64
  %123 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %123)
  %124 = load i16, i16* @g_106, align 2, !tbaa !10
  %125 = sext i16 %124 to i64
  %126 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %126)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %127

; <label>:127                                     ; preds = %143, %120
  %128 = load i32, i32* %i, align 4, !tbaa !1
  %129 = icmp slt i32 %128, 10
  br i1 %129, label %130, label %146

; <label>:130                                     ; preds = %127
  %131 = load i32, i32* %i, align 4, !tbaa !1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [10 x i8], [10 x i8]* @g_123, i32 0, i64 %132
  %134 = load i8, i8* %133, align 1, !tbaa !9
  %135 = sext i8 %134 to i64
  %136 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %136)
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

; <label>:139                                     ; preds = %130
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %140)
  br label %142

; <label>:142                                     ; preds = %139, %130
  br label %143

; <label>:143                                     ; preds = %142
  %144 = load i32, i32* %i, align 4, !tbaa !1
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %i, align 4, !tbaa !1
  br label %127

; <label>:146                                     ; preds = %127
  %147 = load i64, i64* @g_125, align 8, !tbaa !7
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %148)
  %149 = load i64, i64* @g_127, align 8, !tbaa !7
  %150 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %150)
  %151 = load i16, i16* @g_129, align 2, !tbaa !10
  %152 = zext i16 %151 to i64
  %153 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %153)
  %154 = load i16, i16* @g_131, align 2, !tbaa !10
  %155 = sext i16 %154 to i64
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %156)
  %157 = load i8, i8* @g_148, align 1, !tbaa !9
  %158 = sext i8 %157 to i64
  %159 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %159)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %160

; <label>:160                                     ; preds = %176, %146
  %161 = load i32, i32* %i, align 4, !tbaa !1
  %162 = icmp slt i32 %161, 8
  br i1 %162, label %163, label %179

; <label>:163                                     ; preds = %160
  %164 = load i32, i32* %i, align 4, !tbaa !1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [8 x i8], [8 x i8]* @g_154, i32 0, i64 %165
  %167 = load i8, i8* %166, align 1, !tbaa !9
  %168 = sext i8 %167 to i64
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %169)
  %170 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

; <label>:172                                     ; preds = %163
  %173 = load i32, i32* %i, align 4, !tbaa !1
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %173)
  br label %175

; <label>:175                                     ; preds = %172, %163
  br label %176

; <label>:176                                     ; preds = %175
  %177 = load i32, i32* %i, align 4, !tbaa !1
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %i, align 4, !tbaa !1
  br label %160

; <label>:179                                     ; preds = %160
  %180 = load volatile i16, i16* @g_157, align 2, !tbaa !10
  %181 = sext i16 %180 to i64
  %182 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %182)
  %183 = load volatile i64, i64* @g_158, align 8, !tbaa !7
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %184)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %185

; <label>:185                                     ; preds = %201, %179
  %186 = load i32, i32* %i, align 4, !tbaa !1
  %187 = icmp slt i32 %186, 5
  br i1 %187, label %188, label %204

; <label>:188                                     ; preds = %185
  %189 = load i32, i32* %i, align 4, !tbaa !1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [5 x i32], [5 x i32]* @g_159, i32 0, i64 %190
  %192 = load volatile i32, i32* %191, align 4, !tbaa !1
  %193 = sext i32 %192 to i64
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %194)
  %195 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

; <label>:197                                     ; preds = %188
  %198 = load i32, i32* %i, align 4, !tbaa !1
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %198)
  br label %200

; <label>:200                                     ; preds = %197, %188
  br label %201

; <label>:201                                     ; preds = %200
  %202 = load i32, i32* %i, align 4, !tbaa !1
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %i, align 4, !tbaa !1
  br label %185

; <label>:204                                     ; preds = %185
  %205 = load i32, i32* @g_160, align 4, !tbaa !1
  %206 = sext i32 %205 to i64
  %207 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %207)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %208

; <label>:208                                     ; preds = %236, %204
  %209 = load i32, i32* %i, align 4, !tbaa !1
  %210 = icmp slt i32 %209, 6
  br i1 %210, label %211, label %239

; <label>:211                                     ; preds = %208
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %212

; <label>:212                                     ; preds = %232, %211
  %213 = load i32, i32* %j, align 4, !tbaa !1
  %214 = icmp slt i32 %213, 10
  br i1 %214, label %215, label %235

; <label>:215                                     ; preds = %212
  %216 = load i32, i32* %j, align 4, !tbaa !1
  %217 = sext i32 %216 to i64
  %218 = load i32, i32* %i, align 4, !tbaa !1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [6 x [10 x i8]], [6 x [10 x i8]]* @g_161, i32 0, i64 %219
  %221 = getelementptr inbounds [10 x i8], [10 x i8]* %220, i32 0, i64 %217
  %222 = load i8, i8* %221, align 1, !tbaa !9
  %223 = zext i8 %222 to i64
  %224 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %223, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 %224)
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

; <label>:227                                     ; preds = %215
  %228 = load i32, i32* %i, align 4, !tbaa !1
  %229 = load i32, i32* %j, align 4, !tbaa !1
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i32 %228, i32 %229)
  br label %231

; <label>:231                                     ; preds = %227, %215
  br label %232

; <label>:232                                     ; preds = %231
  %233 = load i32, i32* %j, align 4, !tbaa !1
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %j, align 4, !tbaa !1
  br label %212

; <label>:235                                     ; preds = %212
  br label %236

; <label>:236                                     ; preds = %235
  %237 = load i32, i32* %i, align 4, !tbaa !1
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %i, align 4, !tbaa !1
  br label %208

; <label>:239                                     ; preds = %208
  %240 = load i64, i64* @g_176, align 8, !tbaa !7
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %241)
  %242 = load i32, i32* @g_197, align 4, !tbaa !1
  %243 = zext i32 %242 to i64
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %243, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %244)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %245

; <label>:245                                     ; preds = %261, %239
  %246 = load i32, i32* %i, align 4, !tbaa !1
  %247 = icmp slt i32 %246, 2
  br i1 %247, label %248, label %264

; <label>:248                                     ; preds = %245
  %249 = load i32, i32* %i, align 4, !tbaa !1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [2 x i16], [2 x i16]* @g_275, i32 0, i64 %250
  %252 = load i16, i16* %251, align 2, !tbaa !10
  %253 = sext i16 %252 to i64
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %254)
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

; <label>:257                                     ; preds = %248
  %258 = load i32, i32* %i, align 4, !tbaa !1
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %258)
  br label %260

; <label>:260                                     ; preds = %257, %248
  br label %261

; <label>:261                                     ; preds = %260
  %262 = load i32, i32* %i, align 4, !tbaa !1
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %i, align 4, !tbaa !1
  br label %245

; <label>:264                                     ; preds = %245
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %265

; <label>:265                                     ; preds = %281, %264
  %266 = load i32, i32* %i, align 4, !tbaa !1
  %267 = icmp slt i32 %266, 7
  br i1 %267, label %268, label %284

; <label>:268                                     ; preds = %265
  %269 = load i32, i32* %i, align 4, !tbaa !1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [7 x i32], [7 x i32]* @g_276, i32 0, i64 %270
  %272 = load i32, i32* %271, align 4, !tbaa !1
  %273 = sext i32 %272 to i64
  %274 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %273, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %274)
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

; <label>:277                                     ; preds = %268
  %278 = load i32, i32* %i, align 4, !tbaa !1
  %279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %278)
  br label %280

; <label>:280                                     ; preds = %277, %268
  br label %281

; <label>:281                                     ; preds = %280
  %282 = load i32, i32* %i, align 4, !tbaa !1
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %i, align 4, !tbaa !1
  br label %265

; <label>:284                                     ; preds = %265
  %285 = load volatile i16, i16* @g_318, align 2, !tbaa !10
  %286 = zext i16 %285 to i64
  %287 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %286, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %287)
  %288 = load volatile i32, i32* @g_338, align 4, !tbaa !1
  %289 = zext i32 %288 to i64
  %290 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %289, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %290)
  %291 = load volatile i8, i8* @g_375, align 1, !tbaa !9
  %292 = zext i8 %291 to i64
  %293 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %293)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %294

; <label>:294                                     ; preds = %334, %284
  %295 = load i32, i32* %i, align 4, !tbaa !1
  %296 = icmp slt i32 %295, 8
  br i1 %296, label %297, label %337

; <label>:297                                     ; preds = %294
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %298

; <label>:298                                     ; preds = %330, %297
  %299 = load i32, i32* %j, align 4, !tbaa !1
  %300 = icmp slt i32 %299, 9
  br i1 %300, label %301, label %333

; <label>:301                                     ; preds = %298
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %302

; <label>:302                                     ; preds = %326, %301
  %303 = load i32, i32* %k, align 4, !tbaa !1
  %304 = icmp slt i32 %303, 1
  br i1 %304, label %305, label %329

; <label>:305                                     ; preds = %302
  %306 = load i32, i32* %k, align 4, !tbaa !1
  %307 = sext i32 %306 to i64
  %308 = load i32, i32* %j, align 4, !tbaa !1
  %309 = sext i32 %308 to i64
  %310 = load i32, i32* %i, align 4, !tbaa !1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [8 x [9 x [1 x i32]]], [8 x [9 x [1 x i32]]]* @g_436, i32 0, i64 %311
  %313 = getelementptr inbounds [9 x [1 x i32]], [9 x [1 x i32]]* %312, i32 0, i64 %309
  %314 = getelementptr inbounds [1 x i32], [1 x i32]* %313, i32 0, i64 %307
  %315 = load i32, i32* %314, align 4, !tbaa !1
  %316 = sext i32 %315 to i64
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 %317)
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %325

; <label>:320                                     ; preds = %305
  %321 = load i32, i32* %i, align 4, !tbaa !1
  %322 = load i32, i32* %j, align 4, !tbaa !1
  %323 = load i32, i32* %k, align 4, !tbaa !1
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i32 %321, i32 %322, i32 %323)
  br label %325

; <label>:325                                     ; preds = %320, %305
  br label %326

; <label>:326                                     ; preds = %325
  %327 = load i32, i32* %k, align 4, !tbaa !1
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %k, align 4, !tbaa !1
  br label %302

; <label>:329                                     ; preds = %302
  br label %330

; <label>:330                                     ; preds = %329
  %331 = load i32, i32* %j, align 4, !tbaa !1
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %j, align 4, !tbaa !1
  br label %298

; <label>:333                                     ; preds = %298
  br label %334

; <label>:334                                     ; preds = %333
  %335 = load i32, i32* %i, align 4, !tbaa !1
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %i, align 4, !tbaa !1
  br label %294

; <label>:337                                     ; preds = %294
  %338 = load i16, i16* @g_538, align 2, !tbaa !10
  %339 = zext i16 %338 to i64
  %340 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %339, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %340)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %341

; <label>:341                                     ; preds = %357, %337
  %342 = load i32, i32* %i, align 4, !tbaa !1
  %343 = icmp slt i32 %342, 4
  br i1 %343, label %344, label %360

; <label>:344                                     ; preds = %341
  %345 = load i32, i32* %i, align 4, !tbaa !1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [4 x i32], [4 x i32]* @g_551, i32 0, i64 %346
  %348 = load i32, i32* %347, align 4, !tbaa !1
  %349 = zext i32 %348 to i64
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %350)
  %351 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

; <label>:353                                     ; preds = %344
  %354 = load i32, i32* %i, align 4, !tbaa !1
  %355 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %354)
  br label %356

; <label>:356                                     ; preds = %353, %344
  br label %357

; <label>:357                                     ; preds = %356
  %358 = load i32, i32* %i, align 4, !tbaa !1
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %i, align 4, !tbaa !1
  br label %341

; <label>:360                                     ; preds = %341
  %361 = load i32, i32* @g_613, align 4, !tbaa !1
  %362 = sext i32 %361 to i64
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %362, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %363)
  %364 = load volatile i64, i64* @g_659, align 8, !tbaa !7
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %365)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %366

; <label>:366                                     ; preds = %406, %360
  %367 = load i32, i32* %i, align 4, !tbaa !1
  %368 = icmp slt i32 %367, 6
  br i1 %368, label %369, label %409

; <label>:369                                     ; preds = %366
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %370

; <label>:370                                     ; preds = %402, %369
  %371 = load i32, i32* %j, align 4, !tbaa !1
  %372 = icmp slt i32 %371, 4
  br i1 %372, label %373, label %405

; <label>:373                                     ; preds = %370
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %374

; <label>:374                                     ; preds = %398, %373
  %375 = load i32, i32* %k, align 4, !tbaa !1
  %376 = icmp slt i32 %375, 9
  br i1 %376, label %377, label %401

; <label>:377                                     ; preds = %374
  %378 = load i32, i32* %k, align 4, !tbaa !1
  %379 = sext i32 %378 to i64
  %380 = load i32, i32* %j, align 4, !tbaa !1
  %381 = sext i32 %380 to i64
  %382 = load i32, i32* %i, align 4, !tbaa !1
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [6 x [4 x [9 x i8]]], [6 x [4 x [9 x i8]]]* @g_716, i32 0, i64 %383
  %385 = getelementptr inbounds [4 x [9 x i8]], [4 x [9 x i8]]* %384, i32 0, i64 %381
  %386 = getelementptr inbounds [9 x i8], [9 x i8]* %385, i32 0, i64 %379
  %387 = load i8, i8* %386, align 1, !tbaa !9
  %388 = zext i8 %387 to i64
  %389 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %388, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i32 %389)
  %390 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %397

; <label>:392                                     ; preds = %377
  %393 = load i32, i32* %i, align 4, !tbaa !1
  %394 = load i32, i32* %j, align 4, !tbaa !1
  %395 = load i32, i32* %k, align 4, !tbaa !1
  %396 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i32 %393, i32 %394, i32 %395)
  br label %397

; <label>:397                                     ; preds = %392, %377
  br label %398

; <label>:398                                     ; preds = %397
  %399 = load i32, i32* %k, align 4, !tbaa !1
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %k, align 4, !tbaa !1
  br label %374

; <label>:401                                     ; preds = %374
  br label %402

; <label>:402                                     ; preds = %401
  %403 = load i32, i32* %j, align 4, !tbaa !1
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %j, align 4, !tbaa !1
  br label %370

; <label>:405                                     ; preds = %370
  br label %406

; <label>:406                                     ; preds = %405
  %407 = load i32, i32* %i, align 4, !tbaa !1
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %i, align 4, !tbaa !1
  br label %366

; <label>:409                                     ; preds = %366
  %410 = load volatile i32, i32* getelementptr inbounds (%union.U1, %union.U1* bitcast ({ i8, i8, i8, i8 }* @g_745 to %union.U1*), i32 0, i32 0), align 4
  %411 = shl i32 %410, 4
  %412 = ashr i32 %411, 4
  %413 = sext i32 %412 to i64
  %414 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %413, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %414)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %415

; <label>:415                                     ; preds = %443, %409
  %416 = load i32, i32* %i, align 4, !tbaa !1
  %417 = icmp slt i32 %416, 6
  br i1 %417, label %418, label %446

; <label>:418                                     ; preds = %415
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %419

; <label>:419                                     ; preds = %439, %418
  %420 = load i32, i32* %j, align 4, !tbaa !1
  %421 = icmp slt i32 %420, 6
  br i1 %421, label %422, label %442

; <label>:422                                     ; preds = %419
  %423 = load i32, i32* %j, align 4, !tbaa !1
  %424 = sext i32 %423 to i64
  %425 = load i32, i32* %i, align 4, !tbaa !1
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @g_841, i32 0, i64 %426
  %428 = getelementptr inbounds [6 x i32], [6 x i32]* %427, i32 0, i64 %424
  %429 = load i32, i32* %428, align 4, !tbaa !1
  %430 = zext i32 %429 to i64
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 %431)
  %432 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %438

; <label>:434                                     ; preds = %422
  %435 = load i32, i32* %i, align 4, !tbaa !1
  %436 = load i32, i32* %j, align 4, !tbaa !1
  %437 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i32 %435, i32 %436)
  br label %438

; <label>:438                                     ; preds = %434, %422
  br label %439

; <label>:439                                     ; preds = %438
  %440 = load i32, i32* %j, align 4, !tbaa !1
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %j, align 4, !tbaa !1
  br label %419

; <label>:442                                     ; preds = %419
  br label %443

; <label>:443                                     ; preds = %442
  %444 = load i32, i32* %i, align 4, !tbaa !1
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %i, align 4, !tbaa !1
  br label %415

; <label>:446                                     ; preds = %415
  %447 = load i64, i64* @g_867, align 8, !tbaa !7
  %448 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %447, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %448)
  %449 = load i64, i64* @g_880, align 8, !tbaa !7
  %450 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %449, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %450)
  %451 = load i32, i32* @g_932, align 4, !tbaa !1
  %452 = sext i32 %451 to i64
  %453 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %452, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %453)
  %454 = load i8, i8* @g_1052, align 1, !tbaa !9
  %455 = sext i8 %454 to i64
  %456 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %455, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %456)
  %457 = load i64, i64* @g_1092, align 8, !tbaa !7
  %458 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %457, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %458)
  %459 = load i8, i8* @g_1222, align 1, !tbaa !9
  %460 = zext i8 %459 to i64
  %461 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %460, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %461)
  %462 = load i32, i32* @g_1223, align 4, !tbaa !1
  %463 = sext i32 %462 to i64
  %464 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %463, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %464)
  %465 = load i32, i32* getelementptr inbounds (%union.U1, %union.U1* bitcast ({ i8, i8, i8, i8 }* @g_1310 to %union.U1*), i32 0, i32 0), align 4
  %466 = shl i32 %465, 4
  %467 = ashr i32 %466, 4
  %468 = sext i32 %467 to i64
  %469 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %468, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 %469)
  %470 = load i16, i16* @g_1371, align 2, !tbaa !10
  %471 = zext i16 %470 to i64
  %472 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %471, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %472)
  %473 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %474 = zext i32 %473 to i64
  %475 = xor i64 %474, 4294967295
  %476 = trunc i64 %475 to i32
  %477 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %476, i32 %477)
  %478 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %478) #1
  %479 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %479) #1
  %480 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %480) #1
  %481 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %481) #1
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
  %l_36 = alloca [5 x [7 x i32*]], align 16
  %l_43 = alloca [10 x i8], align 1
  %l_1111 = alloca i64*, align 8
  %l_1130 = alloca i16, align 2
  %l_1145 = alloca i32, align 4
  %l_1172 = alloca i64, align 8
  %l_1191 = alloca [6 x [9 x i8*]], align 16
  %l_1240 = alloca i8, align 1
  %l_1347 = alloca i32, align 4
  %l_1396 = alloca [5 x [1 x i8*]], align 16
  %l_1408 = alloca i16***, align 8
  %l_1409 = alloca i16, align 2
  %l_1410 = alloca i8, align 1
  %l_1418 = alloca i32, align 4
  %l_1430 = alloca i8, align 1
  %l_1443 = alloca i64, align 8
  %l_1460 = alloca i8***, align 8
  %l_1459 = alloca i8****, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_29 = alloca i32*, align 8
  %l_41 = alloca [9 x i16*], align 16
  %l_1093 = alloca i32, align 4
  %l_1094 = alloca i32, align 4
  %l_1134 = alloca [9 x i32], align 16
  %l_1177 = alloca i8, align 1
  %l_1235 = alloca [1 x [3 x i64]], align 16
  %l_1237 = alloca i32, align 4
  %l_1262 = alloca i8, align 1
  %l_1303 = alloca i32, align 4
  %l_1354 = alloca [10 x [3 x [8 x i16]]], align 16
  %l_1417 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast [5 x [7 x i32*]]* %l_36 to i8*
  call void @llvm.lifetime.start(i64 280, i8* %1) #1
  %2 = bitcast [5 x [7 x i32*]]* %l_36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([5 x [7 x i32*]]* @func_1.l_36 to i8*), i64 280, i32 16, i1 false)
  %3 = bitcast [10 x i8]* %l_43 to i8*
  call void @llvm.lifetime.start(i64 10, i8* %3) #1
  %4 = bitcast [10 x i8]* %l_43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @func_1.l_43, i32 0, i32 0), i64 10, i32 1, i1 false)
  %5 = bitcast i64** %l_1111 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64* getelementptr inbounds ([5 x i64], [5 x i64]* @g_61, i32 0, i64 4), i64** %l_1111, align 8, !tbaa !5
  %6 = bitcast i16* %l_1130 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  store i16 24413, i16* %l_1130, align 2, !tbaa !10
  %7 = bitcast i32* %l_1145 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %l_1145, align 4, !tbaa !1
  %8 = bitcast i64* %l_1172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64 -1, i64* %l_1172, align 8, !tbaa !7
  %9 = bitcast [6 x [9 x i8*]]* %l_1191 to i8*
  call void @llvm.lifetime.start(i64 432, i8* %9) #1
  %10 = bitcast [6 x [9 x i8*]]* %l_1191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([6 x [9 x i8*]]* @func_1.l_1191 to i8*), i64 432, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_1240) #1
  store i8 6, i8* %l_1240, align 1, !tbaa !9
  %11 = bitcast i32* %l_1347 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 20962511, i32* %l_1347, align 4, !tbaa !1
  %12 = bitcast [5 x [1 x i8*]]* %l_1396 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %12) #1
  %13 = bitcast [5 x [1 x i8*]]* %l_1396 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 40, i32 16, i1 false)
  %14 = bitcast i16**** %l_1408 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i16*** null, i16**** %l_1408, align 8, !tbaa !5
  %15 = bitcast i16* %l_1409 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #1
  store i16 0, i16* %l_1409, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_1410) #1
  store i8 -3, i8* %l_1410, align 1, !tbaa !9
  %16 = bitcast i32* %l_1418 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 1, i32* %l_1418, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1430) #1
  store i8 0, i8* %l_1430, align 1, !tbaa !9
  %17 = bitcast i64* %l_1443 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i64 -7, i64* %l_1443, align 8, !tbaa !7
  %18 = bitcast i8**** %l_1460 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i8*** @g_591, i8**** %l_1460, align 8, !tbaa !5
  %19 = bitcast i8***** %l_1459 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i8**** %l_1460, i8***** %l_1459, align 8, !tbaa !5
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 17, i32* @g_2, align 4, !tbaa !1
  br label %22

; <label>:22                                      ; preds = %82, %0
  %23 = load i32, i32* @g_2, align 4, !tbaa !1
  %24 = icmp slt i32 %23, -9
  br i1 %24, label %25, label %87

; <label>:25                                      ; preds = %22
  %26 = bitcast i32** %l_29 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i32* getelementptr inbounds (%union.U0, %union.U0* @g_20, i32 0, i32 0), i32** %l_29, align 8, !tbaa !5
  %27 = bitcast [9 x i16*]* %l_41 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %27) #1
  %28 = bitcast [9 x i16*]* %l_41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* bitcast ([9 x i16*]* @func_1.l_41 to i8*), i64 72, i32 16, i1 false)
  %29 = bitcast i32* %l_1093 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  store i32 10095303, i32* %l_1093, align 4, !tbaa !1
  %30 = bitcast i32* %l_1094 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  store i32 6, i32* %l_1094, align 4, !tbaa !1
  %31 = bitcast [9 x i32]* %l_1134 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %31) #1
  %32 = bitcast [9 x i32]* %l_1134 to i8*
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 36, i32 16, i1 false)
  %33 = bitcast i8* %32 to [9 x i32]*
  %34 = getelementptr [9 x i32], [9 x i32]* %33, i32 0, i32 1
  store i32 662979004, i32* %34
  %35 = getelementptr [9 x i32], [9 x i32]* %33, i32 0, i32 3
  store i32 662979004, i32* %35
  %36 = getelementptr [9 x i32], [9 x i32]* %33, i32 0, i32 5
  store i32 662979004, i32* %36
  %37 = getelementptr [9 x i32], [9 x i32]* %33, i32 0, i32 7
  store i32 662979004, i32* %37
  call void @llvm.lifetime.start(i64 1, i8* %l_1177) #1
  store i8 9, i8* %l_1177, align 1, !tbaa !9
  %38 = bitcast [1 x [3 x i64]]* %l_1235 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %38) #1
  %39 = bitcast i32* %l_1237 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 -1, i32* %l_1237, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1262) #1
  store i8 29, i8* %l_1262, align 1, !tbaa !9
  %40 = bitcast i32* %l_1303 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  store i32 -711274627, i32* %l_1303, align 4, !tbaa !1
  %41 = bitcast [10 x [3 x [8 x i16]]]* %l_1354 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %41) #1
  %42 = bitcast [10 x [3 x [8 x i16]]]* %l_1354 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* bitcast ([10 x [3 x [8 x i16]]]* @func_1.l_1354 to i8*), i64 480, i32 16, i1 false)
  %43 = bitcast i32* %l_1417 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 0, i32* %l_1417, align 4, !tbaa !1
  %44 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %47

; <label>:47                                      ; preds = %65, %25
  %48 = load i32, i32* %i1, align 4, !tbaa !1
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %68

; <label>:50                                      ; preds = %47
  store i32 0, i32* %j2, align 4, !tbaa !1
  br label %51

; <label>:51                                      ; preds = %61, %50
  %52 = load i32, i32* %j2, align 4, !tbaa !1
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %64

; <label>:54                                      ; preds = %51
  %55 = load i32, i32* %j2, align 4, !tbaa !1
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %i1, align 4, !tbaa !1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [1 x [3 x i64]], [1 x [3 x i64]]* %l_1235, i32 0, i64 %58
  %60 = getelementptr inbounds [3 x i64], [3 x i64]* %59, i32 0, i64 %56
  store i64 1, i64* %60, align 8, !tbaa !7
  br label %61

; <label>:61                                      ; preds = %54
  %62 = load i32, i32* %j2, align 4, !tbaa !1
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %j2, align 4, !tbaa !1
  br label %51

; <label>:64                                      ; preds = %51
  br label %65

; <label>:65                                      ; preds = %64
  %66 = load i32, i32* %i1, align 4, !tbaa !1
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %i1, align 4, !tbaa !1
  br label %47

; <label>:68                                      ; preds = %47
  %69 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %l_1417 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast [10 x [3 x [8 x i16]]]* %l_1354 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %73) #1
  %74 = bitcast i32* %l_1303 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1262) #1
  %75 = bitcast i32* %l_1237 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast [1 x [3 x i64]]* %l_1235 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %76) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1177) #1
  %77 = bitcast [9 x i32]* %l_1134 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %77) #1
  %78 = bitcast i32* %l_1094 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %l_1093 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast [9 x i16*]* %l_41 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %80) #1
  %81 = bitcast i32** %l_29 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  br label %82

; <label>:82                                      ; preds = %68
  %83 = load i32, i32* @g_2, align 4, !tbaa !1
  %84 = trunc i32 %83 to i8
  %85 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %84, i8 zeroext 1)
  %86 = zext i8 %85 to i32
  store i32 %86, i32* @g_2, align 4, !tbaa !1
  br label %22

; <label>:87                                      ; preds = %22
  %88 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_551, i32 0, i64 3), align 4, !tbaa !1
  %89 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i8***** %l_1459 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i8**** %l_1460 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i64* %l_1443 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1430) #1
  %94 = bitcast i32* %l_1418 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1410) #1
  %95 = bitcast i16* %l_1409 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %95) #1
  %96 = bitcast i16**** %l_1408 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast [5 x [1 x i8*]]* %l_1396 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %97) #1
  %98 = bitcast i32* %l_1347 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1240) #1
  %99 = bitcast [6 x [9 x i8*]]* %l_1191 to i8*
  call void @llvm.lifetime.end(i64 432, i8* %99) #1
  %100 = bitcast i64* %l_1172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i32* %l_1145 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i16* %l_1130 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %102) #1
  %103 = bitcast i64** %l_1111 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast [10 x i8]* %l_43 to i8*
  call void @llvm.lifetime.end(i64 10, i8* %104) #1
  %105 = bitcast [5 x [7 x i32*]]* %l_36 to i8*
  call void @llvm.lifetime.end(i64 280, i8* %105) #1
  ret i32 %88
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
