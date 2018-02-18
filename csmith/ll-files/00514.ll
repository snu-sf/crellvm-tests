; ModuleID = '00514.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_5 = internal global i8 -10, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_8 = internal global [2 x i64] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"g_8[i]\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_10 = internal global i32 -9, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_10\00", align 1
@g_42 = internal global i32 760281743, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_42\00", align 1
@g_49 = internal global i64 8642584027595191488, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"g_49\00", align 1
@g_58 = internal global [9 x i32] [i32 416180262, i32 416180262, i32 416180262, i32 416180262, i32 416180262, i32 416180262, i32 416180262, i32 416180262, i32 416180262], align 16
@.str.7 = private unnamed_addr constant [8 x i8] c"g_58[i]\00", align 1
@g_59 = internal global i32 -1, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_59\00", align 1
@g_73 = internal global i32 -5, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"g_73\00", align 1
@g_92 = internal global i32 1, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"g_92\00", align 1
@g_98 = internal global i16 14625, align 2
@.str.11 = private unnamed_addr constant [5 x i8] c"g_98\00", align 1
@g_106 = internal global i16 -1, align 2
@.str.12 = private unnamed_addr constant [6 x i8] c"g_106\00", align 1
@g_108 = internal global i32 6, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_108\00", align 1
@g_114 = internal global i16 -10, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_114\00", align 1
@g_115 = internal global i16 9, align 2
@.str.15 = private unnamed_addr constant [6 x i8] c"g_115\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"g_132\00", align 1
@g_140 = internal global [10 x i8] c"\FF\E7\FF\E7\FF\E7\FF\E7\FF\E7", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"g_140[i]\00", align 1
@g_148 = internal global i8 3, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"g_148\00", align 1
@g_150 = internal global [4 x i8] c"....", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"g_150[i]\00", align 1
@g_291 = internal global i32 9, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_291\00", align 1
@g_347 = internal global [1 x [4 x i32]] [[4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1]], align 16
@.str.21 = private unnamed_addr constant [12 x i8] c"g_347[i][j]\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_356 = internal global i64 601062555719053194, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_356\00", align 1
@g_404 = internal global i64 -4507971816944810795, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"g_404\00", align 1
@g_532 = internal global i32 2, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_532\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_565\00", align 1
@g_572 = internal global i32 776739440, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_572\00", align 1
@g_573 = internal global i16 1, align 2
@.str.28 = private unnamed_addr constant [6 x i8] c"g_573\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"g_621\00", align 1
@g_624 = internal global i32 -6, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_624\00", align 1
@g_645 = internal global i8 -94, align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"g_645\00", align 1
@g_824 = internal global i32 -157116732, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_824\00", align 1
@g_865 = internal global i64 3021059491128530488, align 8
@.str.33 = private unnamed_addr constant [6 x i8] c"g_865\00", align 1
@g_1070 = internal global i8 -46, align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1070\00", align 1
@g_1167 = internal global i32 0, align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1167\00", align 1
@g_1176 = internal global i8 1, align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1176\00", align 1
@g_1388 = internal global i8 8, align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1388\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1398\00", align 1
@g_1403 = internal global i64 -1, align 8
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1403\00", align 1
@g_1416 = internal global i64 0, align 8
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1416\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_1065 = internal global i16** @g_720, align 8
@g_719 = internal global i16** @g_720, align 8
@g_292 = internal global i32** @g_293, align 8
@g_679 = internal global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_140, i32 0, i64 7), align 8
@g_1342 = internal global i64** @g_1343, align 8
@g_222 = internal global i32* @g_10, align 8
@g_1343 = internal global i64* @g_356, align 8
@g_675 = internal global i8** @g_676, align 8
@g_1062 = internal global i16***** @g_1063, align 8
@g_864 = internal global i64* @g_865, align 8
@g_293 = internal global i32* null, align 8
@func_1.l_1454 = private unnamed_addr constant [3 x [10 x i16]] [[10 x i16] [i16 -25657, i16 -27565, i16 1, i16 1, i16 -27565, i16 -25657, i16 -27565, i16 1, i16 1, i16 -27565], [10 x i16] [i16 -25657, i16 -27565, i16 1, i16 1, i16 -27565, i16 -25657, i16 -27565, i16 1, i16 1, i16 -27565], [10 x i16] [i16 -25657, i16 -27565, i16 1, i16 1, i16 -27565, i16 -25657, i16 -27565, i16 1, i16 1, i16 -27565]], align 16
@g_1166 = internal global [8 x [1 x [7 x i32*]]] [[1 x [7 x i32*]] [[7 x i32*] [i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167]], [1 x [7 x i32*]] [[7 x i32*] [i32* @g_1167, i32* @g_1167, i32* null, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167]], [1 x [7 x i32*]] [[7 x i32*] [i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167]], [1 x [7 x i32*]] [[7 x i32*] [i32* @g_1167, i32* @g_1167, i32* null, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167]], [1 x [7 x i32*]] [[7 x i32*] [i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167]], [1 x [7 x i32*]] [[7 x i32*] [i32* @g_1167, i32* @g_1167, i32* null, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167]], [1 x [7 x i32*]] [[7 x i32*] [i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167]], [1 x [7 x i32*]] [[7 x i32*] [i32* @g_1167, i32* @g_1167, i32* null, i32* @g_1167, i32* @g_1167, i32* @g_1167, i32* @g_1167]]], align 16
@func_6.l_1180 = private unnamed_addr constant [5 x [3 x [4 x i16]]] [[3 x [4 x i16]] [[4 x i16] [i16 -23881, i16 20154, i16 -28357, i16 -28357], [4 x i16] [i16 -5557, i16 -5557, i16 9402, i16 -1], [4 x i16] [i16 0, i16 -1, i16 -21462, i16 -20296]], [3 x [4 x i16]] [[4 x i16] [i16 -21462, i16 -20296, i16 -23881, i16 -21462], [4 x i16] [i16 -5557, i16 -20296, i16 30924, i16 -20296], [4 x i16] [i16 -20296, i16 -1, i16 -4, i16 -1]], [3 x [4 x i16]] [[4 x i16] [i16 9402, i16 -23881, i16 -22833, i16 -4], [4 x i16] [i16 -28357, i16 -12216, i16 -1, i16 -21462], [4 x i16] [i16 -28357, i16 -22833, i16 -22833, i16 -28357]], [3 x [4 x i16]] [[4 x i16] [i16 9402, i16 -21462, i16 -4, i16 -22833], [4 x i16] [i16 -21462, i16 -12216, i16 20154, i16 -1], [4 x i16] [i16 -23881, i16 9402, i16 -22833, i16 -1]], [3 x [4 x i16]] [[4 x i16] [i16 30924, i16 -12216, i16 30924, i16 -22833], [4 x i16] [i16 -28357, i16 -21462, i16 0, i16 -28357], [4 x i16] [i16 -23881, i16 -22833, i16 -4, i16 -21462]]], align 16
@func_6.l_1185 = private unnamed_addr constant [6 x [1 x [7 x i32]]] [[1 x [7 x i32]] [[7 x i32] [i32 -634791895, i32 -1035015992, i32 -634791895, i32 -1035015992, i32 -634791895, i32 -1035015992, i32 -634791895]], [1 x [7 x i32]] [[7 x i32] [i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4]], [1 x [7 x i32]] [[7 x i32] [i32 -634791895, i32 -1035015992, i32 -634791895, i32 -1035015992, i32 -634791895, i32 -1035015992, i32 -634791895]], [1 x [7 x i32]] [[7 x i32] [i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4]], [1 x [7 x i32]] [[7 x i32] [i32 -634791895, i32 -1035015992, i32 -634791895, i32 -1035015992, i32 -634791895, i32 -1035015992, i32 -634791895]], [1 x [7 x i32]] [[7 x i32] [i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4]]], align 16
@func_6.l_1186 = private unnamed_addr constant [8 x [10 x i8]] [[10 x i8] c"\C955\C9e\C955\C9e", [10 x i8] c"\C955\C9e\C955\C9e", [10 x i8] c"\C955\C9e\C955\C9e", [10 x i8] c"\C955\C9e\C955\C9e", [10 x i8] c"\C955\C9e\C955\C9e", [10 x i8] c"\C955\C9e\C955\C9e", [10 x i8] c"\C955\C9e\C955\C9e", [10 x i8] c"\C955\C9e\C955\C9e"], align 16
@func_6.l_1208 = private unnamed_addr constant [6 x [4 x [7 x i16]]] [[4 x [7 x i16]] [[7 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 1794, i16 9], [7 x i16] [i16 -26294, i16 1, i16 -9, i16 -19952, i16 -26294, i16 -14712, i16 11200], [7 x i16] [i16 7822, i16 0, i16 -19812, i16 0, i16 7822, i16 1794, i16 0], [7 x i16] [i16 -26294, i16 -19952, i16 -9, i16 1, i16 -26294, i16 11200, i16 11200]], [4 x [7 x i16]] [[7 x i16] [i16 0, i16 0, i16 0, i16 -11193, i16 9, i16 24859, i16 0], [7 x i16] [i16 -14712, i16 2, i16 -23855, i16 0, i16 -14712, i16 18992, i16 -9], [7 x i16] [i16 0, i16 -11193, i16 6, i16 -11193, i16 0, i16 24859, i16 -19812], [7 x i16] [i16 -14712, i16 0, i16 -23855, i16 2, i16 -14712, i16 -9, i16 -9]], [4 x [7 x i16]] [[7 x i16] [i16 9, i16 -11193, i16 1, i16 -11193, i16 9, i16 24859, i16 0], [7 x i16] [i16 -14712, i16 2, i16 -23855, i16 0, i16 -14712, i16 18992, i16 -9], [7 x i16] [i16 0, i16 -11193, i16 6, i16 -11193, i16 0, i16 24859, i16 -19812], [7 x i16] [i16 -14712, i16 0, i16 -23855, i16 2, i16 -14712, i16 -9, i16 -9]], [4 x [7 x i16]] [[7 x i16] [i16 9, i16 -11193, i16 1, i16 -11193, i16 9, i16 24859, i16 0], [7 x i16] [i16 -14712, i16 2, i16 -23855, i16 0, i16 -14712, i16 18992, i16 -9], [7 x i16] [i16 0, i16 -11193, i16 6, i16 -11193, i16 0, i16 24859, i16 -19812], [7 x i16] [i16 -14712, i16 0, i16 -23855, i16 2, i16 -14712, i16 -9, i16 -9]], [4 x [7 x i16]] [[7 x i16] [i16 9, i16 -11193, i16 1, i16 -11193, i16 9, i16 24859, i16 0], [7 x i16] [i16 -14712, i16 2, i16 -23855, i16 0, i16 -14712, i16 18992, i16 -9], [7 x i16] [i16 0, i16 -11193, i16 6, i16 -11193, i16 0, i16 24859, i16 -19812], [7 x i16] [i16 -14712, i16 0, i16 -23855, i16 2, i16 -14712, i16 -9, i16 -9]], [4 x [7 x i16]] [[7 x i16] [i16 9, i16 -11193, i16 1, i16 -11193, i16 9, i16 24859, i16 0], [7 x i16] [i16 -14712, i16 2, i16 -23855, i16 0, i16 -14712, i16 18992, i16 -9], [7 x i16] [i16 0, i16 -11193, i16 6, i16 -11193, i16 0, i16 24859, i16 -19812], [7 x i16] [i16 -14712, i16 0, i16 -23855, i16 2, i16 -14712, i16 -9, i16 -9]]], align 16
@func_6.l_1290 = private unnamed_addr constant [6 x [4 x i32]] [[4 x i32] [i32 0, i32 1728054026, i32 490789363, i32 490789363], [4 x i32] [i32 -644236112, i32 -644236112, i32 0, i32 490789363], [4 x i32] [i32 -1895509575, i32 1728054026, i32 -1895509575, i32 0], [4 x i32] [i32 -1895509575, i32 0, i32 0, i32 -1895509575], [4 x i32] [i32 -644236112, i32 0, i32 490789363, i32 0], [4 x i32] [i32 0, i32 1728054026, i32 490789363, i32 490789363]], align 16
@g_720 = internal global i16* @g_573, align 8
@func_6.l_1384 = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_140, i32 0, i64 7), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_140, i32 0, i64 7), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_140, i32 0, i64 7), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_140, i32 0, i64 7), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_140, i32 0, i64 7), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_140, i32 0, i64 7), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_140, i32 0, i64 7), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_140, i32 0, i64 7), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_140, i32 0, i64 7), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_140, i32 0, i64 7)], align 16
@func_21.l_1146 = private unnamed_addr constant [2 x [4 x i16**]] [[4 x i16**] [i16** @g_720, i16** @g_720, i16** @g_720, i16** @g_720], [4 x i16**] [i16** @g_720, i16** @g_720, i16** @g_720, i16** @g_720]], align 16
@g_718 = internal global i16*** @g_719, align 8
@g_676 = internal global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_140, i32 0, i64 2), align 8
@g_1138 = internal global i64** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [6 x [4 x i64*]]]* @g_1139 to i8*), i64 976) to i64**), align 8
@g_678 = internal global i8** @g_679, align 8
@g_1139 = internal global [6 x [6 x [4 x i64*]]] [[6 x [4 x i64*]] [[4 x i64*] [i64* @g_49, i64* @g_356, i64* @g_356, i64* @g_49], [4 x i64*] [i64* @g_356, i64* @g_49, i64* @g_356, i64* @g_49], [4 x i64*] [i64* null, i64* @g_356, i64* @g_356, i64* @g_356], [4 x i64*] [i64* @g_49, i64* @g_49, i64* @g_49, i64* @g_49], [4 x i64*] [i64* @g_49, i64* @g_49, i64* @g_356, i64* @g_356], [4 x i64*] [i64* @g_356, i64* null, i64* @g_356, i64* @g_356]], [6 x [4 x i64*]] [[4 x i64*] [i64* null, i64* @g_49, i64* @g_356, i64* @g_356], [4 x i64*] [i64* @g_356, i64* null, i64* @g_356, i64* @g_356], [4 x i64*] [i64* @g_49, i64* @g_49, i64* null, i64* @g_49], [4 x i64*] [i64* @g_49, i64* @g_49, i64* @g_356, i64* @g_356], [4 x i64*] [i64* @g_49, i64* @g_356, i64* @g_49, i64* @g_49], [4 x i64*] [i64* @g_49, i64* @g_49, i64* @g_356, i64* @g_49]], [6 x [4 x i64*]] [[4 x i64*] [i64* @g_356, i64* @g_356, i64* @g_49, i64* @g_49], [4 x i64*] [i64* @g_49, i64* @g_49, i64* @g_356, i64* @g_356], [4 x i64*] [i64* @g_49, i64* null, i64* null, i64* @g_49], [4 x i64*] [i64* @g_49, i64* @g_49, i64* @g_356, i64* null], [4 x i64*] [i64* @g_356, i64* @g_49, i64* @g_356, i64* @g_356], [4 x i64*] [i64* @g_49, i64* @g_49, i64* @g_356, i64* @g_49]], [6 x [4 x i64*]] [[4 x i64*] [i64* @g_49, i64* @g_49, i64* @g_49, i64* @g_49], [4 x i64*] [i64* @g_49, i64* @g_49, i64* @g_49, i64* @g_356], [4 x i64*] [i64* null, i64* @g_49, i64* @g_356, i64* @g_49], [4 x i64*] [i64* @g_49, i64* @g_356, i64* @g_356, i64* @g_49], [4 x i64*] [i64* @g_49, i64* @g_49, i64* @g_356, i64* @g_356], [4 x i64*] [i64* @g_49, i64* @g_356, i64* @g_356, i64* @g_49]], [6 x [4 x i64*]] [[4 x i64*] [i64* @g_49, i64* null, i64* @g_356, i64* @g_49], [4 x i64*] [i64* @g_356, i64* @g_49, i64* @g_49, i64* @g_49], [4 x i64*] [i64* @g_356, i64* @g_356, i64* @g_49, i64* @g_356], [4 x i64*] [i64* @g_49, i64* @g_356, i64* @g_49, i64* @g_356], [4 x i64*] [i64* @g_49, i64* @g_49, i64* @g_49, i64* @g_49], [4 x i64*] [i64* @g_356, i64* @g_49, i64* @g_49, i64* @g_49]], [6 x [4 x i64*]] [[4 x i64*] [i64* @g_49, i64* null, i64* null, i64* @g_356], [4 x i64*] [i64* @g_356, i64* @g_356, i64* null, i64* @g_356], [4 x i64*] [i64* @g_49, i64* @g_49, i64* @g_49, i64* @g_356], [4 x i64*] [i64* @g_356, i64* @g_49, i64* @g_356, i64* @g_356], [4 x i64*] [i64* @g_356, i64* @g_356, i64* @g_49, i64* @g_49], [4 x i64*] [i64* @g_356, i64* @g_356, i64* @g_49, i64* @g_356]]], align 16
@g_1063 = internal global i16**** @g_1064, align 8
@g_1064 = internal global i16*** @g_1065, align 8
@.str.41 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load volatile i8, i8* @g_5, align 1, !tbaa !9
  %92 = sext i8 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %109, %89
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %112

; <label>:97                                      ; preds = %94
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x i64], [2 x i64]* @g_8, i32 0, i64 %99
  %101 = load i64, i64* %100, align 8, !tbaa !7
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 %102)
  %103 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

; <label>:105                                     ; preds = %97
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %106)
  br label %108

; <label>:108                                     ; preds = %105, %97
  br label %109

; <label>:109                                     ; preds = %108
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:112                                     ; preds = %94
  %113 = load i32, i32* @g_10, align 4, !tbaa !1
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %115)
  %116 = load i32, i32* @g_42, align 4, !tbaa !1
  %117 = sext i32 %116 to i64
  %118 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %118)
  %119 = load i64, i64* @g_49, align 8, !tbaa !7
  %120 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %120)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %121

; <label>:121                                     ; preds = %137, %112
  %122 = load i32, i32* %i, align 4, !tbaa !1
  %123 = icmp slt i32 %122, 9
  br i1 %123, label %124, label %140

; <label>:124                                     ; preds = %121
  %125 = load i32, i32* %i, align 4, !tbaa !1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [9 x i32], [9 x i32]* @g_58, i32 0, i64 %126
  %128 = load i32, i32* %127, align 4, !tbaa !1
  %129 = zext i32 %128 to i64
  %130 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %130)
  %131 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

; <label>:133                                     ; preds = %124
  %134 = load i32, i32* %i, align 4, !tbaa !1
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %134)
  br label %136

; <label>:136                                     ; preds = %133, %124
  br label %137

; <label>:137                                     ; preds = %136
  %138 = load i32, i32* %i, align 4, !tbaa !1
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %i, align 4, !tbaa !1
  br label %121

; <label>:140                                     ; preds = %121
  %141 = load i32, i32* @g_59, align 4, !tbaa !1
  %142 = zext i32 %141 to i64
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %143)
  %144 = load i32, i32* @g_73, align 4, !tbaa !1
  %145 = zext i32 %144 to i64
  %146 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %146)
  %147 = load i32, i32* @g_92, align 4, !tbaa !1
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %149)
  %150 = load i16, i16* @g_98, align 2, !tbaa !10
  %151 = zext i16 %150 to i64
  %152 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %152)
  %153 = load i16, i16* @g_106, align 2, !tbaa !10
  %154 = zext i16 %153 to i64
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %155)
  %156 = load i32, i32* @g_108, align 4, !tbaa !1
  %157 = zext i32 %156 to i64
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %158)
  %159 = load i16, i16* @g_114, align 2, !tbaa !10
  %160 = sext i16 %159 to i64
  %161 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %161)
  %162 = load i16, i16* @g_115, align 2, !tbaa !10
  %163 = zext i16 %162 to i64
  %164 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %164)
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %165)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %166

; <label>:166                                     ; preds = %182, %140
  %167 = load i32, i32* %i, align 4, !tbaa !1
  %168 = icmp slt i32 %167, 10
  br i1 %168, label %169, label %185

; <label>:169                                     ; preds = %166
  %170 = load i32, i32* %i, align 4, !tbaa !1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [10 x i8], [10 x i8]* @g_140, i32 0, i64 %171
  %173 = load i8, i8* %172, align 1, !tbaa !9
  %174 = zext i8 %173 to i64
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %174, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %175)
  %176 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

; <label>:178                                     ; preds = %169
  %179 = load i32, i32* %i, align 4, !tbaa !1
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %179)
  br label %181

; <label>:181                                     ; preds = %178, %169
  br label %182

; <label>:182                                     ; preds = %181
  %183 = load i32, i32* %i, align 4, !tbaa !1
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %i, align 4, !tbaa !1
  br label %166

; <label>:185                                     ; preds = %166
  %186 = load i8, i8* @g_148, align 1, !tbaa !9
  %187 = sext i8 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %188)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %189

; <label>:189                                     ; preds = %205, %185
  %190 = load i32, i32* %i, align 4, !tbaa !1
  %191 = icmp slt i32 %190, 4
  br i1 %191, label %192, label %208

; <label>:192                                     ; preds = %189
  %193 = load i32, i32* %i, align 4, !tbaa !1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [4 x i8], [4 x i8]* @g_150, i32 0, i64 %194
  %196 = load i8, i8* %195, align 1, !tbaa !9
  %197 = sext i8 %196 to i64
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %198)
  %199 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

; <label>:201                                     ; preds = %192
  %202 = load i32, i32* %i, align 4, !tbaa !1
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %202)
  br label %204

; <label>:204                                     ; preds = %201, %192
  br label %205

; <label>:205                                     ; preds = %204
  %206 = load i32, i32* %i, align 4, !tbaa !1
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %i, align 4, !tbaa !1
  br label %189

; <label>:208                                     ; preds = %189
  %209 = load i32, i32* @g_291, align 4, !tbaa !1
  %210 = zext i32 %209 to i64
  %211 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %211)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %212

; <label>:212                                     ; preds = %240, %208
  %213 = load i32, i32* %i, align 4, !tbaa !1
  %214 = icmp slt i32 %213, 1
  br i1 %214, label %215, label %243

; <label>:215                                     ; preds = %212
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %216

; <label>:216                                     ; preds = %236, %215
  %217 = load i32, i32* %j, align 4, !tbaa !1
  %218 = icmp slt i32 %217, 4
  br i1 %218, label %219, label %239

; <label>:219                                     ; preds = %216
  %220 = load i32, i32* %j, align 4, !tbaa !1
  %221 = sext i32 %220 to i64
  %222 = load i32, i32* %i, align 4, !tbaa !1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* @g_347, i32 0, i64 %223
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %224, i32 0, i64 %221
  %226 = load i32, i32* %225, align 4, !tbaa !1
  %227 = sext i32 %226 to i64
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 %228)
  %229 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

; <label>:231                                     ; preds = %219
  %232 = load i32, i32* %i, align 4, !tbaa !1
  %233 = load i32, i32* %j, align 4, !tbaa !1
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i32 %232, i32 %233)
  br label %235

; <label>:235                                     ; preds = %231, %219
  br label %236

; <label>:236                                     ; preds = %235
  %237 = load i32, i32* %j, align 4, !tbaa !1
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %j, align 4, !tbaa !1
  br label %216

; <label>:239                                     ; preds = %216
  br label %240

; <label>:240                                     ; preds = %239
  %241 = load i32, i32* %i, align 4, !tbaa !1
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %i, align 4, !tbaa !1
  br label %212

; <label>:243                                     ; preds = %212
  %244 = load i64, i64* @g_356, align 8, !tbaa !7
  %245 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %244, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %245)
  %246 = load i64, i64* @g_404, align 8, !tbaa !7
  %247 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %247)
  %248 = load i32, i32* @g_532, align 4, !tbaa !1
  %249 = zext i32 %248 to i64
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %250)
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 8408, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %251)
  %252 = load i32, i32* @g_572, align 4, !tbaa !1
  %253 = sext i32 %252 to i64
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %254)
  %255 = load i16, i16* @g_573, align 2, !tbaa !10
  %256 = sext i16 %255 to i64
  %257 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %257)
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 65535, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %258)
  %259 = load i32, i32* @g_624, align 4, !tbaa !1
  %260 = zext i32 %259 to i64
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %261)
  %262 = load i8, i8* @g_645, align 1, !tbaa !9
  %263 = sext i8 %262 to i64
  %264 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %263, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %264)
  %265 = load i32, i32* @g_824, align 4, !tbaa !1
  %266 = sext i32 %265 to i64
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %267)
  %268 = load volatile i64, i64* @g_865, align 8, !tbaa !7
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %268, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %269)
  %270 = load i8, i8* @g_1070, align 1, !tbaa !9
  %271 = sext i8 %270 to i64
  %272 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %271, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %272)
  %273 = load i32, i32* @g_1167, align 4, !tbaa !1
  %274 = sext i32 %273 to i64
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %275)
  %276 = load i8, i8* @g_1176, align 1, !tbaa !9
  %277 = zext i8 %276 to i64
  %278 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %277, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %278)
  %279 = load i8, i8* @g_1388, align 1, !tbaa !9
  %280 = zext i8 %279 to i64
  %281 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %280, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %281)
  %282 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %282)
  %283 = load i64, i64* @g_1403, align 8, !tbaa !7
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %283, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %284)
  %285 = load i64, i64* @g_1416, align 8, !tbaa !7
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %285, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %286)
  %287 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %288 = zext i32 %287 to i64
  %289 = xor i64 %288, 4294967295
  %290 = trunc i64 %289 to i32
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %290, i32 %291)
  %292 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
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
  %1 = alloca i16, align 2
  %l_1387 = alloca i8*, align 8
  %l_1390 = alloca i32, align 4
  %l_1399 = alloca i32*, align 8
  %l_1414 = alloca i32, align 4
  %l_1443 = alloca i16, align 2
  %l_1459 = alloca i64, align 8
  %l_1419 = alloca i16, align 2
  %l_1436 = alloca i32*, align 8
  %l_1435 = alloca i32**, align 8
  %l_1444 = alloca i32*, align 8
  %l_1415 = alloca [6 x i32*], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %2 = alloca i32
  %l_1445 = alloca i8, align 1
  %l_1450 = alloca [10 x i64], align 16
  %l_1451 = alloca i32*, align 8
  %l_1452 = alloca i8, align 1
  %l_1458 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %l_1453 = alloca i32, align 4
  %l_1455 = alloca i8, align 1
  %l_1456 = alloca i32*, align 8
  %l_1457 = alloca [1 x [1 x [6 x i32*]]], align 16
  %i4 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1454 = alloca [3 x [10 x i16]], align 16
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %3 = bitcast i8** %l_1387 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* @g_1388, i8** %l_1387, align 8, !tbaa !5
  %4 = bitcast i32* %l_1390 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -1440071242, i32* %l_1390, align 4, !tbaa !1
  %5 = bitcast i32** %l_1399 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_1167, i32** %l_1399, align 8, !tbaa !5
  %6 = bitcast i32* %l_1414 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 1, i32* %l_1414, align 4, !tbaa !1
  %7 = bitcast i16* %l_1443 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  store i16 -19200, i16* %l_1443, align 2, !tbaa !10
  %8 = bitcast i64* %l_1459 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64 0, i64* %l_1459, align 8, !tbaa !7
  %9 = load volatile i8, i8* @g_5, align 1, !tbaa !9
  %10 = sext i8 %9 to i32
  %11 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @g_8, i32 0, i64 0), align 8, !tbaa !7
  %12 = trunc i64 %11 to i16
  %13 = call i32 @func_6(i16 zeroext %12)
  %14 = load i8*, i8** %l_1387, align 8, !tbaa !5
  %15 = load i8, i8* %14, align 1, !tbaa !9
  %16 = zext i8 %15 to i64
  %17 = xor i64 %16, 110
  %18 = trunc i64 %17 to i8
  store i8 %18, i8* %14, align 1, !tbaa !9
  %19 = zext i8 %18 to i32
  %20 = icmp sle i32 %10, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %l_1390, align 4, !tbaa !1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %56, label %24

; <label>:24                                      ; preds = %0
  %25 = load i32, i32* %l_1390, align 4, !tbaa !1
  %26 = trunc i32 %25 to i8
  %27 = call i64 @safe_add_func_int64_t_s_s(i64 65535, i64 8)
  %28 = trunc i64 %27 to i8
  %29 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %26, i8 zeroext %28)
  %30 = zext i8 %29 to i64
  %31 = or i64 %30, 3807503371
  %32 = trunc i64 %31 to i8
  %33 = load i8, i8* @g_1070, align 1, !tbaa !9
  %34 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %32, i8 signext %33)
  %35 = icmp ne i8 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 2656910471, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %l_1390, align 4, !tbaa !1
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %l_1390, align 4, !tbaa !1
  br i1 %42, label %44, label %47

; <label>:44                                      ; preds = %24
  %45 = load i32, i32* %l_1390, align 4, !tbaa !1
  %46 = icmp ne i32 %45, 0
  br label %47

; <label>:47                                      ; preds = %44, %24
  %48 = phi i1 [ false, %24 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  %50 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %51 = icmp eq i32* %l_1390, %50
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %54 = load i32, i32* %53, align 4, !tbaa !1
  %55 = icmp sgt i32 %52, %54
  br label %56

; <label>:56                                      ; preds = %47, %0
  %57 = phi i1 [ true, %0 ], [ %55, %47 ]
  %58 = zext i1 %57 to i32
  %59 = icmp sle i32 %21, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* @g_1167, align 4, !tbaa !1
  %62 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %63 = load i32, i32* %62, align 4, !tbaa !1
  %64 = call i32 @func_2(i32 %61, i32 %63)
  %65 = load i32*, i32** %l_1399, align 8, !tbaa !5
  store i32 %64, i32* %65, align 4, !tbaa !1
  %66 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %67 = load i32, i32* %66, align 4, !tbaa !1
  %68 = trunc i32 %67 to i16
  %69 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %68)
  %70 = sext i16 %69 to i64
  %71 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %72 = load i32, i32* %71, align 4, !tbaa !1
  %73 = sext i32 %72 to i64
  %74 = icmp ne i64 -4472780979885529254, %73
  %75 = zext i1 %74 to i32
  %76 = sext i32 %75 to i64
  store i64 %76, i64* @g_1403, align 8, !tbaa !7
  %77 = trunc i64 %76 to i16
  %78 = load i16**, i16*** @g_1065, align 8, !tbaa !5
  %79 = load volatile i16*, i16** %78, align 8, !tbaa !5
  %80 = load i16, i16* %79, align 2, !tbaa !10
  %81 = sext i16 %80 to i32
  %82 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext 1, i32 %81)
  %83 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %77, i16 zeroext %82)
  %84 = zext i16 %83 to i32
  %85 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %86 = load i32, i32* %85, align 4, !tbaa !1
  %87 = and i32 %84, %86
  %88 = load i16**, i16*** @g_719, align 8, !tbaa !5
  %89 = load i16*, i16** %88, align 8, !tbaa !5
  %90 = load i16, i16* %89, align 2, !tbaa !10
  %91 = sext i16 %90 to i32
  %92 = icmp ne i32 %87, %91
  %93 = zext i1 %92 to i32
  %94 = sext i32 %93 to i64
  %95 = xor i64 %94, 0
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

; <label>:97                                      ; preds = %56
  br label %98

; <label>:98                                      ; preds = %97, %56
  %99 = phi i1 [ false, %56 ], [ true, %97 ]
  %100 = zext i1 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = xor i64 8, %101
  %103 = xor i64 %102, 795004515
  %104 = icmp sle i64 %70, %103
  %105 = zext i1 %104 to i32
  %106 = sext i32 %105 to i64
  %107 = icmp sle i64 %106, 3588404255
  br i1 %107, label %108, label %302

; <label>:108                                     ; preds = %98
  %109 = bitcast i16* %l_1419 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %109) #1
  store i16 -23031, i16* %l_1419, align 2, !tbaa !10
  %110 = bitcast i32** %l_1436 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  store i32* @g_532, i32** %l_1436, align 8, !tbaa !5
  %111 = bitcast i32*** %l_1435 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %111) #1
  store i32** %l_1436, i32*** %l_1435, align 8, !tbaa !5
  %112 = bitcast i32** %l_1444 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  store i32* %l_1390, i32** %l_1444, align 8, !tbaa !5
  store i32 0, i32* @g_108, align 4, !tbaa !1
  br label %113

; <label>:113                                     ; preds = %186, %108
  %114 = load i32, i32* @g_108, align 4, !tbaa !1
  %115 = icmp ule i32 %114, 1
  br i1 %115, label %116, label %189

; <label>:116                                     ; preds = %113
  %117 = bitcast [6 x i32*]* %l_1415 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %117) #1
  %118 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %119

; <label>:119                                     ; preds = %126, %116
  %120 = load i32, i32* %i, align 4, !tbaa !1
  %121 = icmp slt i32 %120, 6
  br i1 %121, label %122, label %129

; <label>:122                                     ; preds = %119
  %123 = load i32, i32* %i, align 4, !tbaa !1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [6 x i32*], [6 x i32*]* %l_1415, i32 0, i64 %124
  store i32* @g_1167, i32** %125, align 8, !tbaa !5
  br label %126

; <label>:126                                     ; preds = %122
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %i, align 4, !tbaa !1
  br label %119

; <label>:129                                     ; preds = %119
  %130 = getelementptr inbounds [6 x i32*], [6 x i32*]* %l_1415, i32 0, i64 0
  %131 = load i32*, i32** %130, align 8, !tbaa !5
  %132 = load i32**, i32*** @g_292, align 8, !tbaa !5
  store i32* %131, i32** %132, align 8, !tbaa !5
  store i32 1, i32* @g_10, align 4, !tbaa !1
  br label %133

; <label>:133                                     ; preds = %178, %129
  %134 = load i32, i32* @g_10, align 4, !tbaa !1
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %181

; <label>:136                                     ; preds = %133
  %137 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #1
  %138 = load i32, i32* @g_108, align 4, !tbaa !1
  %139 = add i32 %138, 7
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [9 x i32], [9 x i32]* @g_58, i32 0, i64 %140
  %142 = load i32, i32* %141, align 4, !tbaa !1
  %143 = load i32*, i32** %l_1399, align 8, !tbaa !5
  store i32 %142, i32* %143, align 4, !tbaa !1
  %144 = load i32**, i32*** @g_292, align 8, !tbaa !5
  %145 = load i32*, i32** %144, align 8, !tbaa !5
  %146 = load i32, i32* %145, align 4, !tbaa !1
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

; <label>:148                                     ; preds = %136
  %149 = load i32**, i32*** @g_292, align 8, !tbaa !5
  %150 = load i32*, i32** %149, align 8, !tbaa !5
  %151 = load i32**, i32*** @g_292, align 8, !tbaa !5
  store i32* %150, i32** %151, align 8, !tbaa !5
  br label %171

; <label>:152                                     ; preds = %136
  %153 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %154 = load i32, i32* %153, align 4, !tbaa !1
  %155 = sext i32 %154 to i64
  %156 = xor i64 %155, 2295999230
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 4, !tbaa !1
  store i16 1, i16* @g_114, align 2, !tbaa !10
  br label %158

; <label>:158                                     ; preds = %165, %152
  %159 = load i16, i16* @g_114, align 2, !tbaa !10
  %160 = sext i16 %159 to i32
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %170

; <label>:162                                     ; preds = %158
  %163 = load i64, i64* @g_1416, align 8, !tbaa !7
  %164 = trunc i64 %163 to i16
  store i16 %164, i16* %1
  store i32 1, i32* %2
  br label %175
                                                  ; No predecessors!
  %166 = load i16, i16* @g_114, align 2, !tbaa !10
  %167 = sext i16 %166 to i32
  %168 = sub nsw i32 %167, 1
  %169 = trunc i32 %168 to i16
  store i16 %169, i16* @g_114, align 2, !tbaa !10
  br label %158

; <label>:170                                     ; preds = %158
  br label %171

; <label>:171                                     ; preds = %170, %148
  %172 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %173 = load i32, i32* %172, align 4, !tbaa !1
  %174 = load i32*, i32** %l_1399, align 8, !tbaa !5
  store i32 %173, i32* %174, align 4, !tbaa !1
  store i32 0, i32* %2
  br label %175

; <label>:175                                     ; preds = %171, %162
  %176 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %182 [
    i32 0, label %177
  ]

; <label>:177                                     ; preds = %175
  br label %178

; <label>:178                                     ; preds = %177
  %179 = load i32, i32* @g_10, align 4, !tbaa !1
  %180 = sub nsw i32 %179, 1
  store i32 %180, i32* @g_10, align 4, !tbaa !1
  br label %133

; <label>:181                                     ; preds = %133
  store i32 0, i32* %2
  br label %182

; <label>:182                                     ; preds = %181, %175
  %183 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast [6 x i32*]* %l_1415 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %184) #1
  %cleanup.dest.2 = load i32, i32* %2
  switch i32 %cleanup.dest.2, label %297 [
    i32 0, label %185
  ]

; <label>:185                                     ; preds = %182
  br label %186

; <label>:186                                     ; preds = %185
  %187 = load i32, i32* @g_108, align 4, !tbaa !1
  %188 = add i32 %187, 1
  store i32 %188, i32* @g_108, align 4, !tbaa !1
  br label %113

; <label>:189                                     ; preds = %113
  %190 = load i16, i16* %l_1419, align 2, !tbaa !10
  %191 = zext i16 %190 to i32
  %192 = load i32*, i32** %l_1399, align 8, !tbaa !5
  store i32 -1806145402, i32* %192, align 4, !tbaa !1
  %193 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %194 = load i32, i32* %193, align 4, !tbaa !1
  %195 = trunc i32 %194 to i8
  %196 = load i32**, i32*** %l_1435, align 8, !tbaa !5
  %197 = icmp ne i32** null, %196
  %198 = zext i1 %197 to i32
  %199 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %195, i32 %198)
  %200 = zext i8 %199 to i64
  %201 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %202 = load i32, i32* %201, align 4, !tbaa !1
  %203 = sext i32 %202 to i64
  %204 = call i64 @safe_div_func_uint64_t_u_u(i64 -1, i64 %203)
  %205 = or i64 %200, %204
  %206 = load i64, i64* @g_49, align 8, !tbaa !7
  %207 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %208 = load i32, i32* %207, align 4, !tbaa !1
  %209 = sext i32 %208 to i64
  %210 = icmp ne i64 %206, %209
  %211 = zext i1 %210 to i32
  %212 = sext i32 %211 to i64
  %213 = load i16, i16* @g_115, align 2, !tbaa !10
  %214 = zext i16 %213 to i64
  %215 = call i64 @safe_mod_func_int64_t_s_s(i64 %212, i64 %214)
  %216 = load volatile i8, i8* @g_5, align 1, !tbaa !9
  %217 = sext i8 %216 to i64
  %218 = or i64 %215, %217
  %219 = trunc i64 %218 to i16
  %220 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %219, i16 signext -4)
  %221 = load i8*, i8** @g_679, align 8, !tbaa !5
  %222 = load i8, i8* %221, align 1, !tbaa !9
  %223 = load i8*, i8** @g_679, align 8, !tbaa !5
  store i8 %222, i8* %223, align 1, !tbaa !9
  %224 = zext i8 %222 to i32
  %225 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @g_150, i32 0, i64 0), align 1, !tbaa !9
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %224, %226
  %228 = zext i1 %227 to i32
  %229 = sext i32 %228 to i64
  %230 = icmp ne i64 -2369262206995764063, %229
  %231 = zext i1 %230 to i32
  %232 = load i16, i16* %l_1419, align 2, !tbaa !10
  %233 = zext i16 %232 to i32
  %234 = icmp sle i32 %231, %233
  %235 = zext i1 %234 to i32
  %236 = sext i32 %235 to i64
  %237 = and i64 %205, %236
  %238 = load i64**, i64*** @g_1342, align 8, !tbaa !5
  %239 = load i64*, i64** %238, align 8, !tbaa !5
  %240 = load i64, i64* %239, align 8, !tbaa !7
  %241 = call i64 @safe_mod_func_uint64_t_u_u(i64 %237, i64 %240)
  %242 = load i32*, i32** @g_222, align 8, !tbaa !5
  %243 = load i32, i32* %242, align 4, !tbaa !1
  %244 = sext i32 %243 to i64
  %245 = or i64 %241, %244
  %246 = trunc i64 %245 to i32
  %247 = load i16, i16* %l_1419, align 2, !tbaa !10
  %248 = zext i16 %247 to i32
  %249 = call i32 @safe_mod_func_int32_t_s_s(i32 %246, i32 %248)
  %250 = trunc i32 %249 to i16
  %251 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %250, i32 9)
  %252 = zext i16 %251 to i32
  %253 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_58, i32 0, i64 3), align 4, !tbaa !1
  %254 = call i32 @safe_mod_func_uint32_t_u_u(i32 %252, i32 %253)
  %255 = load i16, i16* %l_1443, align 2, !tbaa !10
  %256 = zext i16 %255 to i32
  %257 = icmp uge i32 %254, %256
  %258 = zext i1 %257 to i32
  %259 = sext i32 %258 to i64
  %260 = load i64*, i64** @g_1343, align 8, !tbaa !5
  store i64 %259, i64* %260, align 8, !tbaa !7
  %261 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %262 = load i32, i32* %261, align 4, !tbaa !1
  %263 = sext i32 %262 to i64
  %264 = icmp ugt i64 %259, %263
  %265 = zext i1 %264 to i32
  %266 = load i32**, i32*** %l_1435, align 8, !tbaa !5
  %267 = load i32*, i32** %266, align 8, !tbaa !5
  %268 = icmp ne i32* %267, null
  %269 = zext i1 %268 to i32
  %270 = sext i32 %269 to i64
  %271 = load i32, i32* @g_73, align 4, !tbaa !1
  %272 = zext i32 %271 to i64
  %273 = call i64 @safe_sub_func_int64_t_s_s(i64 %270, i64 %272)
  %274 = trunc i64 %273 to i16
  %275 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %274, i32 14)
  %276 = sext i16 %275 to i64
  %277 = icmp slt i64 %276, -2
  br i1 %277, label %279, label %278

; <label>:278                                     ; preds = %189
  br label %279

; <label>:279                                     ; preds = %278, %189
  %280 = phi i1 [ true, %189 ], [ true, %278 ]
  %281 = zext i1 %280 to i32
  %282 = sext i32 %281 to i64
  %283 = icmp sge i64 %282, 249
  %284 = zext i1 %283 to i32
  %285 = icmp sle i32 %191, %284
  %286 = zext i1 %285 to i32
  %287 = load i32*, i32** %l_1444, align 8, !tbaa !5
  %288 = load i32, i32* %287, align 4, !tbaa !1
  %289 = xor i32 %288, %286
  store i32 %289, i32* %287, align 4, !tbaa !1
  %290 = load i16, i16* %l_1419, align 2, !tbaa !10
  %291 = zext i16 %290 to i32
  %292 = call i32 @safe_add_func_int32_t_s_s(i32 %289, i32 %291)
  %293 = load i32*, i32** @g_222, align 8, !tbaa !5
  store i32 %292, i32* %293, align 4, !tbaa !1
  %294 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %295 = load i32, i32* %294, align 4, !tbaa !1
  %296 = trunc i32 %295 to i16
  store i16 %296, i16* %1
  store i32 1, i32* %2
  br label %297

; <label>:297                                     ; preds = %279, %182
  %298 = bitcast i32** %l_1444 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %298) #1
  %299 = bitcast i32*** %l_1435 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %300 = bitcast i32** %l_1436 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #1
  %301 = bitcast i16* %l_1419 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %301) #1
  br label %446

; <label>:302                                     ; preds = %98
  call void @llvm.lifetime.start(i64 1, i8* %l_1445) #1
  store i8 -10, i8* %l_1445, align 1, !tbaa !9
  %303 = bitcast [10 x i64]* %l_1450 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %303) #1
  %304 = bitcast i32** %l_1451 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %304) #1
  store i32* @g_624, i32** %l_1451, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1452) #1
  store i8 -18, i8* %l_1452, align 1, !tbaa !9
  %305 = bitcast i32* %l_1458 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %305) #1
  store i32 1136766691, i32* %l_1458, align 4, !tbaa !1
  %306 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %306) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %307

; <label>:307                                     ; preds = %314, %302
  %308 = load i32, i32* %i3, align 4, !tbaa !1
  %309 = icmp slt i32 %308, 10
  br i1 %309, label %310, label %317

; <label>:310                                     ; preds = %307
  %311 = load i32, i32* %i3, align 4, !tbaa !1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [10 x i64], [10 x i64]* %l_1450, i32 0, i64 %312
  store i64 -1, i64* %313, align 8, !tbaa !7
  br label %314

; <label>:314                                     ; preds = %310
  %315 = load i32, i32* %i3, align 4, !tbaa !1
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %i3, align 4, !tbaa !1
  br label %307

; <label>:317                                     ; preds = %307
  %318 = load i8, i8* %l_1445, align 1, !tbaa !9
  %319 = sext i8 %318 to i32
  %320 = load i32*, i32** @g_222, align 8, !tbaa !5
  store i32 %319, i32* %320, align 4, !tbaa !1
  %321 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %322 = load i32, i32* %321, align 4, !tbaa !1
  %323 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %324 = load i32, i32* %323, align 4, !tbaa !1
  %325 = icmp sge i32 %322, %324
  br i1 %325, label %326, label %332

; <label>:326                                     ; preds = %317
  %327 = load i8**, i8*** @g_675, align 8, !tbaa !5
  %328 = load i8*, i8** %327, align 8, !tbaa !5
  %329 = load i8, i8* %328, align 1, !tbaa !9
  %330 = zext i8 %329 to i32
  %331 = icmp ne i32 %330, 0
  br label %332

; <label>:332                                     ; preds = %326, %317
  %333 = phi i1 [ false, %317 ], [ %331, %326 ]
  %334 = zext i1 %333 to i32
  %335 = sext i32 %334 to i64
  %336 = load i16*****, i16****** @g_1062, align 8, !tbaa !5
  %337 = load volatile i16****, i16***** %336, align 8, !tbaa !5
  %338 = load i16***, i16**** %337, align 8, !tbaa !5
  %339 = load i16**, i16*** %338, align 8, !tbaa !5
  %340 = load volatile i16*, i16** %339, align 8, !tbaa !5
  %341 = load i16, i16* %340, align 2, !tbaa !10
  %342 = getelementptr inbounds [10 x i64], [10 x i64]* %l_1450, i32 0, i64 5
  %343 = load i64, i64* %342, align 8, !tbaa !7
  %344 = trunc i64 %343 to i32
  %345 = load i32*, i32** %l_1451, align 8, !tbaa !5
  store i32 %344, i32* %345, align 4, !tbaa !1
  %346 = zext i32 %344 to i64
  %347 = or i64 %346, 7
  %348 = icmp slt i64 1500514314, %347
  %349 = zext i1 %348 to i32
  %350 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %351 = load i32, i32* %350, align 4, !tbaa !1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [10 x i64], [10 x i64]* %l_1450, i32 0, i64 5
  %354 = load i64, i64* %353, align 8, !tbaa !7
  %355 = xor i64 %352, %354
  %356 = load i64*, i64** @g_864, align 8, !tbaa !5
  %357 = load volatile i64, i64* %356, align 8, !tbaa !7
  %358 = icmp eq i64 %355, %357
  br i1 %358, label %362, label %359

; <label>:359                                     ; preds = %332
  %360 = load i32, i32* @g_108, align 4, !tbaa !1
  %361 = icmp ne i32 %360, 0
  br label %362

; <label>:362                                     ; preds = %359, %332
  %363 = phi i1 [ true, %332 ], [ %361, %359 ]
  %364 = zext i1 %363 to i32
  %365 = icmp sgt i32 %349, %364
  %366 = zext i1 %365 to i32
  %367 = sext i32 %366 to i64
  %368 = or i64 %367, 241
  %369 = icmp ne i64 %335, %368
  %370 = zext i1 %369 to i32
  %371 = call i32 @safe_sub_func_uint32_t_u_u(i32 %370, i32 -2)
  %372 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %373 = load i32, i32* %372, align 4, !tbaa !1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [10 x i64], [10 x i64]* %l_1450, i32 0, i64 5
  %376 = load i64, i64* %375, align 8, !tbaa !7
  %377 = or i64 %374, %376
  %378 = load i32, i32* getelementptr inbounds ([1 x [4 x i32]], [1 x [4 x i32]]* @g_347, i32 0, i64 0, i64 2), align 4, !tbaa !1
  %379 = sext i32 %378 to i64
  %380 = xor i64 %377, %379
  %381 = getelementptr inbounds [10 x i64], [10 x i64]* %l_1450, i32 0, i64 7
  %382 = load i64, i64* %381, align 8, !tbaa !7
  %383 = xor i64 %380, %382
  %384 = getelementptr inbounds [10 x i64], [10 x i64]* %l_1450, i32 0, i64 5
  %385 = load i64, i64* %384, align 8, !tbaa !7
  %386 = xor i64 %383, %385
  %387 = icmp ule i64 %386, 4
  %388 = zext i1 %387 to i32
  %389 = icmp eq i32** %l_1399, @g_293
  br i1 %389, label %390, label %394

; <label>:390                                     ; preds = %362
  %391 = getelementptr inbounds [10 x i64], [10 x i64]* %l_1450, i32 0, i64 5
  %392 = load i64, i64* %391, align 8, !tbaa !7
  %393 = trunc i64 %392 to i16
  store i16 %393, i16* %1
  store i32 1, i32* %2
  br label %441

; <label>:394                                     ; preds = %362
  %395 = bitcast i32* %l_1453 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %395) #1
  store i32 -1401982277, i32* %l_1453, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1455) #1
  store i8 -21, i8* %l_1455, align 1, !tbaa !9
  %396 = bitcast i32** %l_1456 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %396) #1
  store i32* getelementptr inbounds ([1 x [4 x i32]], [1 x [4 x i32]]* @g_347, i32 0, i64 0, i64 2), i32** %l_1456, align 8, !tbaa !5
  %397 = bitcast [1 x [1 x [6 x i32*]]]* %l_1457 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %397) #1
  %398 = getelementptr inbounds [1 x [1 x [6 x i32*]]], [1 x [1 x [6 x i32*]]]* %l_1457, i64 0, i64 0
  %399 = getelementptr inbounds [1 x [6 x i32*]], [1 x [6 x i32*]]* %398, i64 0, i64 0
  %400 = getelementptr inbounds [6 x i32*], [6 x i32*]* %399, i64 0, i64 0
  store i32* %l_1390, i32** %400, !tbaa !5
  %401 = getelementptr inbounds i32*, i32** %400, i64 1
  store i32* getelementptr inbounds ([1 x [4 x i32]], [1 x [4 x i32]]* @g_347, i32 0, i64 0, i64 2), i32** %401, !tbaa !5
  %402 = getelementptr inbounds i32*, i32** %401, i64 1
  store i32* %l_1390, i32** %402, !tbaa !5
  %403 = getelementptr inbounds i32*, i32** %402, i64 1
  store i32* %l_1390, i32** %403, !tbaa !5
  %404 = getelementptr inbounds i32*, i32** %403, i64 1
  store i32* getelementptr inbounds ([1 x [4 x i32]], [1 x [4 x i32]]* @g_347, i32 0, i64 0, i64 2), i32** %404, !tbaa !5
  %405 = getelementptr inbounds i32*, i32** %404, i64 1
  store i32* %l_1390, i32** %405, !tbaa !5
  %406 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %406) #1
  %407 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %407) #1
  %408 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %408) #1
  %409 = load i8, i8* %l_1452, align 1, !tbaa !9
  %410 = sext i8 %409 to i32
  store i32 %410, i32* %l_1453, align 4, !tbaa !1
  store i32 0, i32* @g_291, align 4, !tbaa !1
  br label %411

; <label>:411                                     ; preds = %425, %394
  %412 = load i32, i32* @g_291, align 4, !tbaa !1
  %413 = icmp ule i32 %412, 1
  br i1 %413, label %414, label %428

; <label>:414                                     ; preds = %411
  %415 = bitcast [3 x [10 x i16]]* %l_1454 to i8*
  call void @llvm.lifetime.start(i64 60, i8* %415) #1
  %416 = bitcast [3 x [10 x i16]]* %l_1454 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %416, i8* bitcast ([3 x [10 x i16]]* @func_1.l_1454 to i8*), i64 60, i32 16, i1 false)
  %417 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %417) #1
  %418 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %418) #1
  %419 = getelementptr inbounds [3 x [10 x i16]], [3 x [10 x i16]]* %l_1454, i32 0, i64 1
  %420 = getelementptr inbounds [10 x i16], [10 x i16]* %419, i32 0, i64 0
  %421 = load i16, i16* %420, align 2, !tbaa !10
  store i16 %421, i16* %1
  store i32 1, i32* %2
  %422 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %422) #1
  %423 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %423) #1
  %424 = bitcast [3 x [10 x i16]]* %l_1454 to i8*
  call void @llvm.lifetime.end(i64 60, i8* %424) #1
  br label %434
                                                  ; No predecessors!
  %426 = load i32, i32* @g_291, align 4, !tbaa !1
  %427 = add i32 %426, 1
  store i32 %427, i32* @g_291, align 4, !tbaa !1
  br label %411

; <label>:428                                     ; preds = %411
  %429 = load i64, i64* %l_1459, align 8, !tbaa !7
  %430 = add i64 %429, 1
  store i64 %430, i64* %l_1459, align 8, !tbaa !7
  %431 = load i32*, i32** %l_1399, align 8, !tbaa !5
  %432 = load i32, i32* %431, align 4, !tbaa !1
  %433 = trunc i32 %432 to i16
  store i16 %433, i16* %1
  store i32 1, i32* %2
  br label %434

; <label>:434                                     ; preds = %428, %414
  %435 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %435) #1
  %436 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %436) #1
  %437 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %437) #1
  %438 = bitcast [1 x [1 x [6 x i32*]]]* %l_1457 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %438) #1
  %439 = bitcast i32** %l_1456 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %439) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1455) #1
  %440 = bitcast i32* %l_1453 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %440) #1
  br label %441

; <label>:441                                     ; preds = %434, %390
  %442 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %442) #1
  %443 = bitcast i32* %l_1458 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %443) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1452) #1
  %444 = bitcast i32** %l_1451 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %444) #1
  %445 = bitcast [10 x i64]* %l_1450 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %445) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1445) #1
  br label %446

; <label>:446                                     ; preds = %441, %297
  %447 = bitcast i64* %l_1459 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %447) #1
  %448 = bitcast i16* %l_1443 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %448) #1
  %449 = bitcast i32* %l_1414 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %449) #1
  %450 = bitcast i32** %l_1399 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %450) #1
  %451 = bitcast i32* %l_1390 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %451) #1
  %452 = bitcast i8** %l_1387 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %452) #1
  %453 = load i16, i16* %1
  ret i16 %453
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @func_2(i32 %p_3, i32 %p_4) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %p_3, i32* %1, align 4, !tbaa !1
  store i32 %p_4, i32* %2, align 4, !tbaa !1
  store i32 0, i32* @g_291, align 4, !tbaa !1
  br label %3

; <label>:3                                       ; preds = %32, %0
  %4 = load i32, i32* @g_291, align 4, !tbaa !1
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %6, label %35

; <label>:6                                       ; preds = %3
  store i32 0, i32* @g_824, align 4, !tbaa !1
  br label %7

; <label>:7                                       ; preds = %28, %6
  %8 = load i32, i32* @g_824, align 4, !tbaa !1
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %31

; <label>:10                                      ; preds = %7
  store i32 0, i32* @g_42, align 4, !tbaa !1
  br label %11

; <label>:11                                      ; preds = %24, %10
  %12 = load i32, i32* @g_42, align 4, !tbaa !1
  %13 = icmp slt i32 %12, 7
  br i1 %13, label %14, label %27

; <label>:14                                      ; preds = %11
  %15 = load i32, i32* @g_42, align 4, !tbaa !1
  %16 = sext i32 %15 to i64
  %17 = load i32, i32* @g_824, align 4, !tbaa !1
  %18 = sext i32 %17 to i64
  %19 = load i32, i32* @g_291, align 4, !tbaa !1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [8 x [1 x [7 x i32*]]], [8 x [1 x [7 x i32*]]]* @g_1166, i32 0, i64 %20
  %22 = getelementptr inbounds [1 x [7 x i32*]], [1 x [7 x i32*]]* %21, i32 0, i64 %18
  %23 = getelementptr inbounds [7 x i32*], [7 x i32*]* %22, i32 0, i64 %16
  store i32* @g_42, i32** %23, align 8, !tbaa !5
  br label %24

; <label>:24                                      ; preds = %14
  %25 = load i32, i32* @g_42, align 4, !tbaa !1
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @g_42, align 4, !tbaa !1
  br label %11

; <label>:27                                      ; preds = %11
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load i32, i32* @g_824, align 4, !tbaa !1
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @g_824, align 4, !tbaa !1
  br label %7

; <label>:31                                      ; preds = %7
  br label %32

; <label>:32                                      ; preds = %31
  %33 = load i32, i32* @g_291, align 4, !tbaa !1
  %34 = add i32 %33, 1
  store i32 %34, i32* @g_291, align 4, !tbaa !1
  br label %3

; <label>:35                                      ; preds = %3
  %36 = load i32, i32* %2, align 4, !tbaa !1
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @func_6(i16 zeroext %p_7) #0 {
  %1 = alloca i16, align 2
  %l_9 = alloca i32*, align 8
  %l_1165 = alloca i32, align 4
  %l_1175 = alloca i8*, align 8
  %l_1177 = alloca [7 x i32], align 16
  %l_1178 = alloca i16, align 2
  %l_1179 = alloca [2 x [1 x i32*]], align 16
  %l_1180 = alloca [5 x [3 x [4 x i16]]], align 16
  %l_1244 = alloca i16**, align 8
  %l_1298 = alloca [3 x i8], align 1
  %l_1310 = alloca [3 x i64****], align 16
  %l_1325 = alloca i8, align 1
  %l_1357 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1181 = alloca i32, align 4
  %l_1182 = alloca i32, align 4
  %l_1183 = alloca i32, align 4
  %l_1184 = alloca i32, align 4
  %l_1185 = alloca [6 x [1 x [7 x i32]]], align 16
  %l_1186 = alloca [8 x [10 x i8]], align 16
  %l_1187 = alloca i64, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %l_1208 = alloca [6 x [4 x [7 x i16]]], align 16
  %l_1220 = alloca i32, align 4
  %l_1284 = alloca [6 x i64*], align 16
  %l_1287 = alloca i32, align 4
  %l_1290 = alloca [6 x [4 x i32]], align 16
  %l_1362 = alloca i64, align 8
  %l_1382 = alloca i16**, align 8
  %l_1381 = alloca i16***, align 8
  %l_1380 = alloca [10 x i16****], align 16
  %l_1384 = alloca [10 x i8*], align 16
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %k6 = alloca i32, align 4
  store i16 %p_7, i16* %1, align 2, !tbaa !10
  %2 = bitcast i32** %l_9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_10, i32** %l_9, align 8, !tbaa !5
  %3 = bitcast i32* %l_1165 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %l_1165, align 4, !tbaa !1
  %4 = bitcast i8** %l_1175 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* @g_1176, i8** %l_1175, align 8, !tbaa !5
  %5 = bitcast [7 x i32]* %l_1177 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %5) #1
  %6 = bitcast i16* %l_1178 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  store i16 15813, i16* %l_1178, align 2, !tbaa !10
  %7 = bitcast [2 x [1 x i32*]]* %l_1179 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast [5 x [3 x [4 x i16]]]* %l_1180 to i8*
  call void @llvm.lifetime.start(i64 120, i8* %8) #1
  %9 = bitcast [5 x [3 x [4 x i16]]]* %l_1180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([5 x [3 x [4 x i16]]]* @func_6.l_1180 to i8*), i64 120, i32 16, i1 false)
  %10 = bitcast i16*** %l_1244 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i16** null, i16*** %l_1244, align 8, !tbaa !5
  %11 = bitcast [3 x i8]* %l_1298 to i8*
  call void @llvm.lifetime.start(i64 3, i8* %11) #1
  %12 = bitcast [3 x i64****]* %l_1310 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %12) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_1325) #1
  store i8 -60, i8* %l_1325, align 1, !tbaa !9
  %13 = bitcast i16* %l_1357 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  store i16 12041, i16* %l_1357, align 2, !tbaa !10
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:17                                      ; preds = %24, %0
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %19 = icmp slt i32 %18, 7
  br i1 %19, label %20, label %27

; <label>:20                                      ; preds = %17
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1177, i32 0, i64 %22
  store i32 -738985212, i32* %23, align 4, !tbaa !1
  br label %24

; <label>:24                                      ; preds = %20
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:27                                      ; preds = %17
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %28

; <label>:28                                      ; preds = %46, %27
  %29 = load i32, i32* %i, align 4, !tbaa !1
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %49

; <label>:31                                      ; preds = %28
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %32

; <label>:32                                      ; preds = %42, %31
  %33 = load i32, i32* %j, align 4, !tbaa !1
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %45

; <label>:35                                      ; preds = %32
  %36 = load i32, i32* %j, align 4, !tbaa !1
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2 x [1 x i32*]], [2 x [1 x i32*]]* %l_1179, i32 0, i64 %39
  %41 = getelementptr inbounds [1 x i32*], [1 x i32*]* %40, i32 0, i64 %37
  store i32* @g_1167, i32** %41, align 8, !tbaa !5
  br label %42

; <label>:42                                      ; preds = %35
  %43 = load i32, i32* %j, align 4, !tbaa !1
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %j, align 4, !tbaa !1
  br label %32

; <label>:45                                      ; preds = %32
  br label %46

; <label>:46                                      ; preds = %45
  %47 = load i32, i32* %i, align 4, !tbaa !1
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %i, align 4, !tbaa !1
  br label %28

; <label>:49                                      ; preds = %28
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %50

; <label>:50                                      ; preds = %57, %49
  %51 = load i32, i32* %i, align 4, !tbaa !1
  %52 = icmp slt i32 %51, 3
  br i1 %52, label %53, label %60

; <label>:53                                      ; preds = %50
  %54 = load i32, i32* %i, align 4, !tbaa !1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [3 x i8], [3 x i8]* %l_1298, i32 0, i64 %55
  store i8 -43, i8* %56, align 1, !tbaa !9
  br label %57

; <label>:57                                      ; preds = %53
  %58 = load i32, i32* %i, align 4, !tbaa !1
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %i, align 4, !tbaa !1
  br label %50

; <label>:60                                      ; preds = %50
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %61

; <label>:61                                      ; preds = %68, %60
  %62 = load i32, i32* %i, align 4, !tbaa !1
  %63 = icmp slt i32 %62, 3
  br i1 %63, label %64, label %71

; <label>:64                                      ; preds = %61
  %65 = load i32, i32* %i, align 4, !tbaa !1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x i64****], [3 x i64****]* %l_1310, i32 0, i64 %66
  store i64**** null, i64***** %67, align 8, !tbaa !5
  br label %68

; <label>:68                                      ; preds = %64
  %69 = load i32, i32* %i, align 4, !tbaa !1
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %i, align 4, !tbaa !1
  br label %61

; <label>:71                                      ; preds = %61
  %72 = load i32*, i32** %l_9, align 8, !tbaa !5
  store i32 -7, i32* %72, align 4, !tbaa !1
  %73 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @g_8, i32 0, i64 0), align 8, !tbaa !7
  %74 = trunc i64 %73 to i32
  %75 = call signext i8 @func_21(i32 %74)
  %76 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %75, i32 6)
  %77 = sext i8 %76 to i32
  %78 = load i32, i32* %l_1165, align 4, !tbaa !1
  %79 = trunc i32 %78 to i8
  %80 = load i32*, i32** getelementptr inbounds ([8 x [1 x [7 x i32*]]], [8 x [1 x [7 x i32*]]]* @g_1166, i32 0, i64 1, i64 0, i64 6), align 8, !tbaa !5
  %81 = load i32*, i32** %l_9, align 8, !tbaa !5
  %82 = call zeroext i16 @func_13(i32 %77, i8 zeroext %79, i32* %80, i32* %81, i32* @g_1167)
  %83 = load i16, i16* %1, align 2, !tbaa !10
  %84 = load i8*, i8** %l_1175, align 8, !tbaa !5
  store i8 5, i8* %84, align 1, !tbaa !9
  %85 = getelementptr inbounds [7 x i32], [7 x i32]* %l_1177, i32 0, i64 0
  %86 = load i32, i32* %85, align 4, !tbaa !1
  %87 = zext i32 %86 to i64
  %88 = icmp sge i64 93, %87
  %89 = zext i1 %88 to i32
  %90 = trunc i32 %89 to i8
  %91 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %90, i32 0)
  %92 = zext i8 %91 to i16
  %93 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %83, i16 signext %92)
  %94 = sext i16 %93 to i32
  %95 = load i16, i16* %l_1178, align 2, !tbaa !10
  %96 = sext i16 %95 to i32
  %97 = or i32 %94, %96
  %98 = trunc i32 %97 to i8
  %99 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %98, i32 0)
  %100 = zext i8 %99 to i32
  %101 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %82, i32 %100)
  %102 = zext i16 %101 to i32
  %103 = getelementptr inbounds [5 x [3 x [4 x i16]]], [5 x [3 x [4 x i16]]]* %l_1180, i32 0, i64 3
  %104 = getelementptr inbounds [3 x [4 x i16]], [3 x [4 x i16]]* %103, i32 0, i64 2
  %105 = getelementptr inbounds [4 x i16], [4 x i16]* %104, i32 0, i64 3
  %106 = load i16, i16* %105, align 2, !tbaa !10
  %107 = zext i16 %106 to i32
  %108 = or i32 %107, %102
  %109 = trunc i32 %108 to i16
  store i16 %109, i16* %105, align 2, !tbaa !10
  br label %110

; <label>:110                                     ; preds = %117, %71
  %111 = load i16, i16* %1, align 2, !tbaa !10
  %112 = icmp ne i16 %111, 0
  br i1 %112, label %113, label %119

; <label>:113                                     ; preds = %110
  %114 = load i32*, i32** @g_222, align 8, !tbaa !5
  store i32 -653372911, i32* %114, align 4, !tbaa !1
  %115 = load i16, i16* %l_1178, align 2, !tbaa !10
  %116 = icmp ne i16 %115, 0
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %113
  br label %110

; <label>:118                                     ; preds = %113
  br label %144

; <label>:119                                     ; preds = %110
  %120 = bitcast i32* %l_1181 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %120) #1
  store i32 955200165, i32* %l_1181, align 4, !tbaa !1
  %121 = bitcast i32* %l_1182 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #1
  store i32 1, i32* %l_1182, align 4, !tbaa !1
  %122 = bitcast i32* %l_1183 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  store i32 1826076902, i32* %l_1183, align 4, !tbaa !1
  %123 = bitcast i32* %l_1184 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %123) #1
  store i32 -1, i32* %l_1184, align 4, !tbaa !1
  %124 = bitcast [6 x [1 x [7 x i32]]]* %l_1185 to i8*
  call void @llvm.lifetime.start(i64 168, i8* %124) #1
  %125 = bitcast [6 x [1 x [7 x i32]]]* %l_1185 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* bitcast ([6 x [1 x [7 x i32]]]* @func_6.l_1185 to i8*), i64 168, i32 16, i1 false)
  %126 = bitcast [8 x [10 x i8]]* %l_1186 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %126) #1
  %127 = bitcast [8 x [10 x i8]]* %l_1186 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* getelementptr inbounds ([8 x [10 x i8]], [8 x [10 x i8]]* @func_6.l_1186, i32 0, i32 0, i32 0), i64 80, i32 16, i1 false)
  %128 = bitcast i64* %l_1187 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %128) #1
  store i64 7523359834573509605, i64* %l_1187, align 8, !tbaa !7
  %129 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #1
  %130 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #1
  %131 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #1
  %132 = load i64, i64* %l_1187, align 8, !tbaa !7
  %133 = add i64 %132, -1
  store i64 %133, i64* %l_1187, align 8, !tbaa !7
  %134 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i64* %l_1187 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast [8 x [10 x i8]]* %l_1186 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %138) #1
  %139 = bitcast [6 x [1 x [7 x i32]]]* %l_1185 to i8*
  call void @llvm.lifetime.end(i64 168, i8* %139) #1
  %140 = bitcast i32* %l_1184 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %l_1183 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32* %l_1182 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %l_1181 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  br label %144

; <label>:144                                     ; preds = %119, %118
  store i32 0, i32* @g_572, align 4, !tbaa !1
  br label %145

; <label>:145                                     ; preds = %199, %144
  %146 = load i32, i32* @g_572, align 4, !tbaa !1
  %147 = icmp eq i32 %146, 25
  br i1 %147, label %148, label %204

; <label>:148                                     ; preds = %145
  %149 = bitcast [6 x [4 x [7 x i16]]]* %l_1208 to i8*
  call void @llvm.lifetime.start(i64 336, i8* %149) #1
  %150 = bitcast [6 x [4 x [7 x i16]]]* %l_1208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %150, i8* bitcast ([6 x [4 x [7 x i16]]]* @func_6.l_1208 to i8*), i64 336, i32 16, i1 false)
  %151 = bitcast i32* %l_1220 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #1
  store i32 1452878102, i32* %l_1220, align 4, !tbaa !1
  %152 = bitcast [6 x i64*]* %l_1284 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %152) #1
  %153 = bitcast i32* %l_1287 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %153) #1
  store i32 -1, i32* %l_1287, align 4, !tbaa !1
  %154 = bitcast [6 x [4 x i32]]* %l_1290 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %154) #1
  %155 = bitcast [6 x [4 x i32]]* %l_1290 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %155, i8* bitcast ([6 x [4 x i32]]* @func_6.l_1290 to i8*), i64 96, i32 16, i1 false)
  %156 = bitcast i64* %l_1362 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %156) #1
  store i64 6, i64* %l_1362, align 8, !tbaa !7
  %157 = bitcast i16*** %l_1382 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #1
  store i16** @g_720, i16*** %l_1382, align 8, !tbaa !5
  %158 = bitcast i16**** %l_1381 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %158) #1
  store i16*** %l_1382, i16**** %l_1381, align 8, !tbaa !5
  %159 = bitcast [10 x i16****]* %l_1380 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %159) #1
  %160 = getelementptr inbounds [10 x i16****], [10 x i16****]* %l_1380, i64 0, i64 0
  store i16**** %l_1381, i16***** %160, !tbaa !5
  %161 = getelementptr inbounds i16****, i16***** %160, i64 1
  store i16**** null, i16***** %161, !tbaa !5
  %162 = getelementptr inbounds i16****, i16***** %161, i64 1
  store i16**** %l_1381, i16***** %162, !tbaa !5
  %163 = getelementptr inbounds i16****, i16***** %162, i64 1
  store i16**** null, i16***** %163, !tbaa !5
  %164 = getelementptr inbounds i16****, i16***** %163, i64 1
  store i16**** %l_1381, i16***** %164, !tbaa !5
  %165 = getelementptr inbounds i16****, i16***** %164, i64 1
  store i16**** null, i16***** %165, !tbaa !5
  %166 = getelementptr inbounds i16****, i16***** %165, i64 1
  store i16**** %l_1381, i16***** %166, !tbaa !5
  %167 = getelementptr inbounds i16****, i16***** %166, i64 1
  store i16**** null, i16***** %167, !tbaa !5
  %168 = getelementptr inbounds i16****, i16***** %167, i64 1
  store i16**** %l_1381, i16***** %168, !tbaa !5
  %169 = getelementptr inbounds i16****, i16***** %168, i64 1
  store i16**** null, i16***** %169, !tbaa !5
  %170 = bitcast [10 x i8*]* %l_1384 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %170) #1
  %171 = bitcast [10 x i8*]* %l_1384 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %171, i8* bitcast ([10 x i8*]* @func_6.l_1384 to i8*), i64 80, i32 16, i1 false)
  %172 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #1
  %173 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #1
  %174 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #1
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %175

; <label>:175                                     ; preds = %182, %148
  %176 = load i32, i32* %i4, align 4, !tbaa !1
  %177 = icmp slt i32 %176, 6
  br i1 %177, label %178, label %185

; <label>:178                                     ; preds = %175
  %179 = load i32, i32* %i4, align 4, !tbaa !1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [6 x i64*], [6 x i64*]* %l_1284, i32 0, i64 %180
  store i64* null, i64** %181, align 8, !tbaa !5
  br label %182

; <label>:182                                     ; preds = %178
  %183 = load i32, i32* %i4, align 4, !tbaa !1
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %i4, align 4, !tbaa !1
  br label %175

; <label>:185                                     ; preds = %175
  %186 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast [10 x i8*]* %l_1384 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %189) #1
  %190 = bitcast [10 x i16****]* %l_1380 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %190) #1
  %191 = bitcast i16**** %l_1381 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast i16*** %l_1382 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast i64* %l_1362 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast [6 x [4 x i32]]* %l_1290 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %194) #1
  %195 = bitcast i32* %l_1287 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast [6 x i64*]* %l_1284 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %196) #1
  %197 = bitcast i32* %l_1220 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast [6 x [4 x [7 x i16]]]* %l_1208 to i8*
  call void @llvm.lifetime.end(i64 336, i8* %198) #1
  br label %199

; <label>:199                                     ; preds = %185
  %200 = load i32, i32* @g_572, align 4, !tbaa !1
  %201 = sext i32 %200 to i64
  %202 = call i64 @safe_add_func_int64_t_s_s(i64 %201, i64 5)
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* @g_572, align 4, !tbaa !1
  br label %145

; <label>:204                                     ; preds = %145
  %205 = load i16, i16* %1, align 2, !tbaa !10
  %206 = zext i16 %205 to i32
  %207 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i16* %l_1357 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %210) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1325) #1
  %211 = bitcast [3 x i64****]* %l_1310 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %211) #1
  %212 = bitcast [3 x i8]* %l_1298 to i8*
  call void @llvm.lifetime.end(i64 3, i8* %212) #1
  %213 = bitcast i16*** %l_1244 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = bitcast [5 x [3 x [4 x i16]]]* %l_1180 to i8*
  call void @llvm.lifetime.end(i64 120, i8* %214) #1
  %215 = bitcast [2 x [1 x i32*]]* %l_1179 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %215) #1
  %216 = bitcast i16* %l_1178 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %216) #1
  %217 = bitcast [7 x i32]* %l_1177 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %217) #1
  %218 = bitcast i8** %l_1175 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i32* %l_1165 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i32** %l_9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  ret i32 %206
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
define internal zeroext i16 @func_13(i32 %p_14, i8 zeroext %p_15, i32* %p_16, i32* %p_17, i32* %p_18) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %l_1168 = alloca i32, align 4
  store i32 %p_14, i32* %1, align 4, !tbaa !1
  store i8 %p_15, i8* %2, align 1, !tbaa !9
  store i32* %p_16, i32** %3, align 8, !tbaa !5
  store i32* %p_17, i32** %4, align 8, !tbaa !5
  store i32* %p_18, i32** %5, align 8, !tbaa !5
  %6 = bitcast i32* %l_1168 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 -67841970, i32* %l_1168, align 4, !tbaa !1
  %7 = load i32*, i32** %4, align 8, !tbaa !5
  store i32 -271429026, i32* %7, align 4, !tbaa !1
  %8 = load i32, i32* %l_1168, align 4, !tbaa !1
  %9 = trunc i32 %8 to i16
  %10 = bitcast i32* %l_1168 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i16 %9
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
define internal signext i8 @func_21(i32 %p_22) #0 {
  %1 = alloca i32, align 4
  %l_23 = alloca [9 x i32], align 16
  %l_1072 = alloca [3 x [1 x i32*]], align 16
  %l_1146 = alloca [2 x [4 x i16**]], align 16
  %l_1161 = alloca i16, align 2
  %l_1162 = alloca i16, align 2
  %l_1163 = alloca i16**, align 8
  %l_1164 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %p_22, i32* %1, align 4, !tbaa !1
  %2 = bitcast [9 x i32]* %l_23 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #1
  %3 = bitcast [3 x [1 x i32*]]* %l_1072 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast [2 x [4 x i16**]]* %l_1146 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = bitcast [2 x [4 x i16**]]* %l_1146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([2 x [4 x i16**]]* @func_21.l_1146 to i8*), i64 64, i32 16, i1 false)
  %6 = bitcast i16* %l_1161 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  store i16 14214, i16* %l_1161, align 2, !tbaa !10
  %7 = bitcast i16* %l_1162 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  store i16 17377, i16* %l_1162, align 2, !tbaa !10
  %8 = bitcast i16*** %l_1163 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i16** @g_720, i16*** %l_1163, align 8, !tbaa !5
  %9 = bitcast i32** %l_1164 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* @g_42, i32** %l_1164, align 8, !tbaa !5
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %12

; <label>:12                                      ; preds = %19, %0
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %14 = icmp slt i32 %13, 9
  br i1 %14, label %15, label %22

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [9 x i32], [9 x i32]* %l_23, i32 0, i64 %17
  store i32 540792402, i32* %18, align 4, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %15
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %i, align 4, !tbaa !1
  br label %12

; <label>:22                                      ; preds = %12
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %23

; <label>:23                                      ; preds = %41, %22
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %44

; <label>:26                                      ; preds = %23
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %27

; <label>:27                                      ; preds = %37, %26
  %28 = load i32, i32* %j, align 4, !tbaa !1
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %40

; <label>:30                                      ; preds = %27
  %31 = load i32, i32* %j, align 4, !tbaa !1
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* %i, align 4, !tbaa !1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x [1 x i32*]], [3 x [1 x i32*]]* %l_1072, i32 0, i64 %34
  %36 = getelementptr inbounds [1 x i32*], [1 x i32*]* %35, i32 0, i64 %32
  store i32* null, i32** %36, align 8, !tbaa !5
  br label %37

; <label>:37                                      ; preds = %30
  %38 = load i32, i32* %j, align 4, !tbaa !1
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %j, align 4, !tbaa !1
  br label %27

; <label>:40                                      ; preds = %27
  br label %41

; <label>:41                                      ; preds = %40
  %42 = load i32, i32* %i, align 4, !tbaa !1
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %i, align 4, !tbaa !1
  br label %23

; <label>:44                                      ; preds = %23
  %45 = getelementptr inbounds [9 x i32], [9 x i32]* %l_23, i32 0, i64 0
  store i32 0, i32* %45, align 4, !tbaa !1
  %46 = load i32, i32* %1, align 4, !tbaa !1
  %47 = sext i32 %46 to i64
  %48 = icmp sle i64 %47, 57738
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds [9 x i32], [9 x i32]* %l_23, i32 0, i64 1
  store i32 %49, i32* %50, align 4, !tbaa !1
  %51 = getelementptr inbounds [9 x i32], [9 x i32]* %l_23, i32 0, i64 0
  %52 = load i32, i32* %51, align 4, !tbaa !1
  %53 = load i32*, i32** @g_222, align 8, !tbaa !5
  %54 = load i32, i32* %53, align 4, !tbaa !1
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4, !tbaa !1
  %56 = load i16***, i16**** @g_718, align 8, !tbaa !5
  %57 = load i16**, i16*** %56, align 8, !tbaa !5
  %58 = getelementptr inbounds [2 x [4 x i16**]], [2 x [4 x i16**]]* %l_1146, i32 0, i64 1
  %59 = getelementptr inbounds [4 x i16**], [4 x i16**]* %58, i32 0, i64 3
  store i16** %57, i16*** %59, align 8, !tbaa !5
  %60 = load i16***, i16**** @g_718, align 8, !tbaa !5
  store i16** %57, i16*** %60, align 8, !tbaa !5
  %61 = load i32, i32* %1, align 4, !tbaa !1
  %62 = trunc i32 %61 to i16
  %63 = load i8*, i8** @g_676, align 8, !tbaa !5
  %64 = load i8, i8* %63, align 1, !tbaa !9
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds [9 x i32], [9 x i32]* %l_23, i32 0, i64 7
  %67 = load i32, i32* %66, align 4, !tbaa !1
  %68 = icmp sle i32 %65, %67
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = load i64**, i64*** @g_1138, align 8, !tbaa !5
  %72 = load i64*, i64** %71, align 8, !tbaa !5
  %73 = icmp eq i64* null, %72
  %74 = zext i1 %73 to i32
  %75 = getelementptr inbounds [9 x i32], [9 x i32]* %l_23, i32 0, i64 5
  %76 = load i32, i32* %75, align 4, !tbaa !1
  %77 = sext i32 %76 to i64
  %78 = load i32, i32* %1, align 4, !tbaa !1
  %79 = trunc i32 %78 to i16
  %80 = load i16*****, i16****** @g_1062, align 8, !tbaa !5
  %81 = load volatile i16****, i16***** %80, align 8, !tbaa !5
  %82 = load i16***, i16**** %81, align 8, !tbaa !5
  %83 = load i16**, i16*** %82, align 8, !tbaa !5
  %84 = load volatile i16*, i16** %83, align 8, !tbaa !5
  store i16 %79, i16* %84, align 2, !tbaa !10
  %85 = sext i16 %79 to i64
  %86 = call i64 @safe_div_func_int64_t_s_s(i64 0, i64 1)
  %87 = icmp sge i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @g_49, align 8, !tbaa !7
  %91 = xor i64 %89, %90
  %92 = icmp ule i64 %77, %91
  %93 = zext i1 %92 to i32
  %94 = trunc i32 %93 to i8
  %95 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %94, i8 signext -3)
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

; <label>:98                                      ; preds = %44
  %99 = getelementptr inbounds [9 x i32], [9 x i32]* %l_23, i32 0, i64 5
  %100 = load i32, i32* %99, align 4, !tbaa !1
  %101 = icmp ne i32 %100, 0
  br label %102

; <label>:102                                     ; preds = %98, %44
  %103 = phi i1 [ true, %44 ], [ %101, %98 ]
  %104 = zext i1 %103 to i32
  %105 = sext i32 %104 to i64
  %106 = call i64 @safe_unary_minus_func_uint64_t_u(i64 %105)
  %107 = trunc i64 %106 to i32
  %108 = load i32*, i32** @g_222, align 8, !tbaa !5
  store i32 %107, i32* %108, align 4, !tbaa !1
  %109 = load i32, i32* @g_73, align 4, !tbaa !1
  %110 = or i32 %107, %109
  %111 = getelementptr inbounds [9 x i32], [9 x i32]* %l_23, i32 0, i64 0
  %112 = load i32, i32* %111, align 4, !tbaa !1
  %113 = load i16, i16* %l_1161, align 2, !tbaa !10
  %114 = sext i16 %113 to i32
  %115 = icmp ne i32 %112, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %1, align 4, !tbaa !1
  %118 = load i8**, i8*** @g_675, align 8, !tbaa !5
  %119 = load i8*, i8** %118, align 8, !tbaa !5
  %120 = load i8, i8* %119, align 1, !tbaa !9
  %121 = zext i8 %120 to i32
  %122 = icmp ne i32 %117, %121
  %123 = zext i1 %122 to i32
  %124 = sext i32 %123 to i64
  %125 = or i64 %124, 4294967286
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %130, label %127

; <label>:127                                     ; preds = %102
  %128 = load i32, i32* %1, align 4, !tbaa !1
  %129 = icmp ne i32 %128, 0
  br label %130

; <label>:130                                     ; preds = %127, %102
  %131 = phi i1 [ true, %102 ], [ %129, %127 ]
  %132 = zext i1 %131 to i32
  %133 = sext i32 %132 to i64
  %134 = icmp sgt i64 %133, -8
  br i1 %134, label %138, label %135

; <label>:135                                     ; preds = %130
  %136 = load i32, i32* %1, align 4, !tbaa !1
  %137 = icmp ne i32 %136, 0
  br label %138

; <label>:138                                     ; preds = %135, %130
  %139 = phi i1 [ true, %130 ], [ %137, %135 ]
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %1, align 4, !tbaa !1
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = trunc i32 %143 to i8
  %145 = load i8**, i8*** @g_678, align 8, !tbaa !5
  %146 = load i8*, i8** %145, align 8, !tbaa !5
  %147 = load i8, i8* %146, align 1, !tbaa !9
  %148 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %144, i8 zeroext %147)
  %149 = zext i8 %148 to i64
  %150 = or i64 %149, 22265
  %151 = load i16, i16* %l_1161, align 2, !tbaa !10
  %152 = sext i16 %151 to i32
  %153 = load i16, i16* %l_1162, align 2, !tbaa !10
  %154 = zext i16 %153 to i32
  %155 = xor i32 %152, %154
  %156 = sext i32 %155 to i64
  %157 = call i64 @safe_add_func_uint64_t_u_u(i64 %70, i64 %156)
  %158 = getelementptr inbounds [9 x i32], [9 x i32]* %l_23, i32 0, i64 6
  %159 = load i32, i32* %158, align 4, !tbaa !1
  %160 = sext i32 %159 to i64
  %161 = icmp ne i64 %157, %160
  %162 = zext i1 %161 to i32
  %163 = trunc i32 %162 to i16
  %164 = getelementptr inbounds [9 x i32], [9 x i32]* %l_23, i32 0, i64 0
  %165 = load i32, i32* %164, align 4, !tbaa !1
  %166 = trunc i32 %165 to i16
  %167 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %163, i16 signext %166)
  %168 = sext i16 %167 to i32
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

; <label>:170                                     ; preds = %138
  br label %171

; <label>:171                                     ; preds = %170, %138
  %172 = phi i1 [ false, %138 ], [ true, %170 ]
  %173 = zext i1 %172 to i32
  %174 = trunc i32 %173 to i16
  %175 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %62, i16 signext %174)
  %176 = sext i16 %175 to i32
  %177 = getelementptr inbounds [9 x i32], [9 x i32]* %l_23, i32 0, i64 4
  %178 = load i32, i32* %177, align 4, !tbaa !1
  %179 = icmp sge i32 %176, %178
  %180 = zext i1 %179 to i32
  %181 = load i16**, i16*** %l_1163, align 8, !tbaa !5
  %182 = icmp ne i16** %57, %181
  %183 = zext i1 %182 to i32
  %184 = load i32*, i32** %l_1164, align 8, !tbaa !5
  store i32 %183, i32* %184, align 4, !tbaa !1
  %185 = load i32, i32* %1, align 4, !tbaa !1
  %186 = trunc i32 %185 to i8
  %187 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32** %l_1164 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast i16*** %l_1163 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast i16* %l_1162 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %191) #1
  %192 = bitcast i16* %l_1161 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %192) #1
  %193 = bitcast [2 x [4 x i16**]]* %l_1146 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %193) #1
  %194 = bitcast [3 x [1 x i32*]]* %l_1072 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %194) #1
  %195 = bitcast [9 x i32]* %l_23 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %195) #1
  ret i8 %186
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
define internal i64 @safe_unary_minus_func_uint64_t_u(i64 %ui) #0 {
  %1 = alloca i64, align 8
  store i64 %ui, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = sub i64 0, %2
  ret i64 %3
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
