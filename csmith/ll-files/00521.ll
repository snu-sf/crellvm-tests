; ModuleID = '00521.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 -1512652709, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_3 = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_53 = internal global i64 -956433330504037081, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"g_53\00", align 1
@g_71 = internal global i64 2373570633796336167, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"g_71\00", align 1
@g_84 = internal global i8 -1, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"g_84\00", align 1
@g_86 = internal global i64 -4437383032627335671, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"g_86\00", align 1
@g_87 = internal global i32 -2118647864, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_87\00", align 1
@g_97 = internal global i16 3, align 2
@.str.8 = private unnamed_addr constant [5 x i8] c"g_97\00", align 1
@g_101 = internal global i32 -6, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"g_101\00", align 1
@g_116 = internal global i8 -98, align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"g_116\00", align 1
@g_141 = internal global i16 5, align 2
@.str.11 = private unnamed_addr constant [6 x i8] c"g_141\00", align 1
@g_162 = internal global i64 1, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"g_162\00", align 1
@g_164 = internal global i64 8122180082146418179, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"g_164\00", align 1
@g_166 = internal global i64 5406126560659514734, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"g_166\00", align 1
@g_209 = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_209\00", align 1
@g_213 = internal global i32 1384345040, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_213\00", align 1
@g_218 = internal global i16 1, align 2
@.str.17 = private unnamed_addr constant [6 x i8] c"g_218\00", align 1
@g_233 = internal global i32 903951894, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_233\00", align 1
@g_234 = internal global i16 27537, align 2
@.str.19 = private unnamed_addr constant [6 x i8] c"g_234\00", align 1
@g_285 = internal global i8 -8, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_285\00", align 1
@g_316 = internal global i8 -52, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_316\00", align 1
@g_377 = internal global i64 1, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"g_377\00", align 1
@g_378 = internal global i32 251198543, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_378\00", align 1
@g_451 = internal global i64 1, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"g_451\00", align 1
@g_453 = internal global i16 3, align 2
@.str.25 = private unnamed_addr constant [6 x i8] c"g_453\00", align 1
@g_467 = internal global i8 -2, align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_467\00", align 1
@g_490 = internal global i32 -2040543531, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_490\00", align 1
@g_558 = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_558\00", align 1
@g_608 = internal global i64 0, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"g_608\00", align 1
@g_642 = internal global i64 -8454301028307411664, align 8
@.str.30 = private unnamed_addr constant [6 x i8] c"g_642\00", align 1
@g_667 = internal global i32 371185690, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_667\00", align 1
@g_694 = internal global i32 2, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_694\00", align 1
@g_851 = internal global i32 -9, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"g_851\00", align 1
@g_852 = internal global i64 -208069446860084243, align 8
@.str.34 = private unnamed_addr constant [6 x i8] c"g_852\00", align 1
@g_993 = internal global [7 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\FF\00\05\D3", [4 x i8] c"\BE\12\01\15", [4 x i8] c"\FF\00\B4\BD", [4 x i8] c">\BE\01\03", [4 x i8] c"\03\FE\D3\00", [4 x i8] c"\00\C1\0E\01", [4 x i8] c"\BD\00X\00", [4 x i8] c"\A5H\FF\0B"], [8 x [4 x i8]] [[4 x i8] c"\E4\09\03\A4", [4 x i8] c"\00\E4\01\00", [4 x i8] c"\01\B5\02\05", [4 x i8] c"\8A\01\EE\FF", [4 x i8] c"|a\00\09", [4 x i8] c"X\00\01\7F", [4 x i8] c"\04\00w\CF", [4 x i8] c"\EE\03\93("], [8 x [4 x i8]] [[4 x i8] c"\01\0B\0B\01", [4 x i8] c"{\03\01\B5", [4 x i8] c"\01\04\A5\FC", [4 x i8] c"w\FF\CF\FC", [4 x i8] c"\B1\04\EA\B5", [4 x i8] c"\05\03\02\01", [4 x i8] c"\15\0B\FF(", [4 x i8] c"\CE\03\04\CF"], [8 x [4 x i8]] [[4 x i8] c"\FF\00{\7F", [4 x i8] c"\02\00(\09", [4 x i8] c"\01a\BE\FF", [4 x i8] c"\03\01\00\14", [4 x i8] c"\14\04\07\FF", [4 x i8] c"\0E\09O\7F", [4 x i8] c"\0B\FF\BD>", [4 x i8] c"\15\01\12\BE"], [8 x [4 x i8]] [[4 x i8] c"\05\FF\FF\B4", [4 x i8] c"\ED\08\D6\07", [4 x i8] c"5\16\FF\06", [4 x i8] c"(\B1\FF\FF", [4 x i8] c"\A5\07\D3\A5", [4 x i8] c"\02\EE\A5\CE", [4 x i8] c"H\FC\C1\01", [4 x i8] c"\F9\D3\FC\08"], [8 x [4 x i8]] [[4 x i8] c"\12\00\04\02", [4 x i8] c"\01\FFX\FF", [4 x i8] c"\07\D3\00\01", [4 x i8] c"\EA\8A\01\E4", [4 x i8] c"\04\00\BEH", [4 x i8] c"\04(\01\C1", [4 x i8] c"\EAH\00\BD", [4 x i8] c"\07\01X\EA"], [8 x [4 x i8]] [[4 x i8] c"\01\BE\04\FF", [4 x i8] c"\12\FF\FC\09", [4 x i8] c"\F9\A5\C1\15", [4 x i8] c"H\FF\A5\D3", [4 x i8] c"\02\E4\D35", [4 x i8] c"\A5\93\FF\02", [4 x i8] c"(\FF\FF\00", [4 x i8] c"5\03\D6\00"]], align 16
@.str.35 = private unnamed_addr constant [15 x i8] c"g_993[i][j][k]\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_1106 = internal global i8 0, align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1106\00", align 1
@g_1174 = internal global i64 -10, align 8
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1174\00", align 1
@g_1342 = internal global i8 101, align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1342\00", align 1
@g_1387 = internal global [1 x i32] [i32 -519502888], align 4
@.str.40 = private unnamed_addr constant [10 x i8] c"g_1387[i]\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_1389 = internal global i8 2, align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1389\00", align 1
@g_1514 = internal global i64 1, align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1514\00", align 1
@g_1533 = internal global i8 -96, align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1533\00", align 1
@g_1668 = internal global i32 -1, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1668\00", align 1
@g_1670 = internal global i32 16117946, align 4
@.str.46 = private unnamed_addr constant [7 x i8] c"g_1670\00", align 1
@g_1737 = internal global i64 -4, align 8
@.str.47 = private unnamed_addr constant [7 x i8] c"g_1737\00", align 1
@g_2082 = internal global i16 0, align 2
@.str.48 = private unnamed_addr constant [7 x i8] c"g_2082\00", align 1
@g_2187 = internal global i64 -2371632289062439487, align 8
@.str.49 = private unnamed_addr constant [7 x i8] c"g_2187\00", align 1
@g_2188 = internal global i8 -6, align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"g_2188\00", align 1
@g_2190 = internal global i32 -633031097, align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"g_2190\00", align 1
@g_2192 = internal global i32 5, align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"g_2192\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_35 = private unnamed_addr constant [4 x [8 x i64]] [[8 x i64] [i64 -1649298145626502516, i64 -1649298145626502516, i64 8, i64 8, i64 -1649298145626502516, i64 -1649298145626502516, i64 8, i64 8], [8 x i64] [i64 -1649298145626502516, i64 -1649298145626502516, i64 8, i64 8, i64 -1649298145626502516, i64 -1649298145626502516, i64 8, i64 8], [8 x i64] [i64 -1649298145626502516, i64 -1649298145626502516, i64 8, i64 8, i64 -1649298145626502516, i64 -1649298145626502516, i64 8, i64 8], [8 x i64] [i64 -1649298145626502516, i64 -1649298145626502516, i64 8, i64 8, i64 -1649298145626502516, i64 -1649298145626502516, i64 8, i64 8]], align 16
@func_1.l_2198 = private unnamed_addr constant [3 x [7 x i32]] [[7 x i32] [i32 0, i32 -1, i32 0, i32 -1555195228, i32 -1869512926, i32 -1869512926, i32 -1555195228], [7 x i32] [i32 0, i32 -1, i32 0, i32 -1555195228, i32 -1869512926, i32 -1869512926, i32 -1555195228], [7 x i32] [i32 0, i32 -1, i32 0, i32 -1555195228, i32 -1869512926, i32 -1869512926, i32 -1555195228]], align 16
@func_1.l_2222 = private unnamed_addr constant [7 x i32] [i32 226000433, i32 226000433, i32 226000433, i32 226000433, i32 226000433, i32 226000433, i32 226000433], align 16
@func_1.l_21 = internal constant [10 x [5 x [5 x i8]]] [[5 x [5 x i8]] [[5 x i8] c"\FF\DF\09\5C\EE", [5 x i8] c"\FF0\00\FF\00", [5 x i8] c"\FF\FF\F90\5C", [5 x i8] c"\FF\00\D5\91\00", [5 x i8] c"\EF\B2\C5\00\91"], [5 x [5 x i8]] [[5 x i8] c"\00\00\0A\5C0", [5 x i8] c"\04=\12\91\09", [5 x i8] c"\03\12\12\03\09", [5 x i8] c"\5C\00\0A=\FF", [5 x i8] c"\FF0\C5\09\00"], [5 x [5 x i8]] [[5 x i8] c"\FF\12\D5=\91", [5 x i8] c"\09\FF\FF\03\EF", [5 x i8] c"\FF\EF\91\91\EF", [5 x i8] c"\00\B2\04\5C\91", [5 x i8] c"0\5C\0A\00\00"], [5 x [5 x i8]] [[5 x i8] c"\04\09\B2\91\FF", [5 x i8] c"0\12\F90\09", [5 x i8] c"\00\03\0A\09\09", [5 x i8] c"\FF\03\FF\090", [5 x i8] c"\09\12\09\FF\91"], [5 x [5 x i8]] [[5 x i8] c"\FF\09\FF\00\00", [5 x i8] c"\FF\5C\09\91\5C", [5 x i8] c"\5C\B2\FF\EF\91", [5 x i8] c"\03\EF\0A\EF\03", [5 x i8] c"\04\FF\F9\91="], [5 x [5 x i8]] [[5 x i8] c"\00\12\B2\00\09", [5 x i8] c"\EF0\0A\FF=", [5 x i8] c"\FF\00\04\09\03", [5 x i8] c"=\12\91\09\91", [5 x i8] c"==\FF0\5C"], [5 x [5 x i8]] [[5 x i8] c"\FF\00\D5\91\00", [5 x i8] c"\EF\B2\C5\00\91", [5 x i8] c"\00\00\0A\5C0", [5 x i8] c"\04=\12\91\09", [5 x i8] c"\03\12\12\03\09"], [5 x [5 x i8]] [[5 x i8] c"\5C\00\0A=\FF", [5 x i8] c"\FF0\C5\09\00", [5 x i8] c"\FF\12\D5=\91", [5 x i8] c"\09\FF\FF\03\EF", [5 x i8] c"\FF\EF\91\91\EF"], [5 x [5 x i8]] [[5 x i8] c"\00\B2\04\5C\EE", [5 x i8] c"\12\09\FF\91\B2", [5 x i8] c"\1C\04\0A\EE\FF", [5 x i8] c"\12\FF\FF\12\9B", [5 x i8] c"\91\F9\FF\04\04"], [5 x [5 x i8]] [[5 x i8] c"B\F9B\9B\12", [5 x i8] c"\04\FF\9B\FF\EE", [5 x i8] c"\FF\04\09\B2\91", [5 x i8] c"B\09\9B\EE\09", [5 x i8] c"\09\0AB\D5\EE"]], align 16
@func_1.l_2191 = private unnamed_addr constant [9 x [3 x [9 x i32*]]] [[3 x [9 x i32*]] [[9 x i32*] [i32* null, i32* null, i32* null, i32* @g_2192, i32* @g_3, i32* @g_2192, i32* @g_3, i32* @g_2192, i32* @g_2192], [9 x i32*] [i32* null, i32* @g_3, i32* null, i32* null, i32* @g_3, i32* @g_2192, i32* @g_3, i32* @g_2192, i32* null], [9 x i32*] [i32* @g_3, i32* @g_3, i32* null, i32* null, i32* @g_2192, i32* null, i32* null, i32* @g_3, i32* @g_3]], [3 x [9 x i32*]] [[9 x i32*] [i32* @g_2192, i32* null, i32* @g_3, i32* null, i32* @g_2192, i32* @g_3, i32* null, i32* @g_3, i32* @g_3], [9 x i32*] [i32* null, i32* null, i32* null, i32* @g_2192, i32* @g_2192, i32* null, i32* @g_2192, i32* @g_3, i32* @g_3], [9 x i32*] [i32* @g_2192, i32* @g_2192, i32* null, i32* null, i32* null, i32* @g_2192, i32* @g_2192, i32* null, i32* null]], [3 x [9 x i32*]] [[9 x i32*] [i32* @g_3, i32* null, i32* null, i32* @g_3, i32* @g_2192, i32* @g_2192, i32* null, i32* @g_2192, i32* null], [9 x i32*] [i32* null, i32* null, i32* null, i32* null, i32* @g_2192, i32* @g_2192, i32* null, i32* null, i32* @g_2192], [9 x i32*] [i32* null, i32* null, i32* @g_3, i32* null, i32* null, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3]], [3 x [9 x i32*]] [[9 x i32*] [i32* @g_3, i32* @g_3, i32* @g_2192, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_2192, i32* @g_3, i32* @g_3], [9 x i32*] [i32* @g_3, i32* null, i32* @g_2192, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], [9 x i32*] [i32* null, i32* @g_3, i32* null, i32* @g_3, i32* null, i32* @g_2192, i32* @g_3, i32* @g_2192, i32* null]], [3 x [9 x i32*]] [[9 x i32*] [i32* @g_2192, i32* null, i32* @g_3, i32* null, i32* null, i32* @g_2192, i32* null, i32* @g_2192, i32* @g_3], [9 x i32*] [i32* @g_2192, i32* null, i32* @g_3, i32* @g_3, i32* @g_2192, i32* @g_2192, i32* @g_3, i32* @g_3, i32* null], [9 x i32*] [i32* null, i32* @g_2192, i32* @g_2192, i32* @g_3, i32* null, i32* null, i32* null, i32* null, i32* @g_2192]], [3 x [9 x i32*]] [[9 x i32*] [i32* @g_3, i32* @g_2192, i32* null, i32* @g_3, i32* null, i32* @g_3, i32* @g_2192, i32* @g_3, i32* @g_3], [9 x i32*] [i32* @g_2192, i32* @g_3, i32* null, i32* null, i32* null, i32* null, i32* @g_3, i32* @g_3, i32* @g_2192], [9 x i32*] [i32* @g_3, i32* @g_2192, i32* @g_2192, i32* @g_3, i32* @g_3, i32* null, i32* @g_2192, i32* null, i32* @g_2192]], [3 x [9 x i32*]] [[9 x i32*] [i32* @g_2192, i32* @g_2192, i32* null, i32* @g_2192, i32* null, i32* null, i32* @g_2192, i32* null, i32* @g_2192], [9 x i32*] [i32* null, i32* @g_2192, i32* @g_3, i32* @g_3, i32* @g_2192, i32* null, i32* @g_3, i32* @g_2192, i32* @g_3], [9 x i32*] [i32* null, i32* null, i32* @g_2192, i32* null, i32* @g_2192, i32* @g_2192, i32* @g_3, i32* null, i32* null]], [3 x [9 x i32*]] [[9 x i32*] [i32* null, i32* @g_3, i32* @g_3, i32* @g_2192, i32* @g_2192, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_2192], [9 x i32*] [i32* null, i32* null, i32* null, i32* null, i32* @g_3, i32* @g_3, i32* @g_2192, i32* @g_2192, i32* @g_2192], [9 x i32*] [i32* null, i32* @g_2192, i32* @g_3, i32* @g_2192, i32* @g_3, i32* null, i32* @g_2192, i32* @g_3, i32* null]], [3 x [9 x i32*]] [[9 x i32*] [i32* @g_2192, i32* @g_2192, i32* null, i32* @g_2192, i32* @g_3, i32* @g_2192, i32* @g_3, i32* @g_2192, i32* null], [9 x i32*] [i32* @g_3, i32* @g_3, i32* null, i32* @g_3, i32* @g_2192, i32* null, i32* null, i32* @g_2192, i32* @g_3], [9 x i32*] [i32* @g_2192, i32* @g_3, i32* null, i32* @g_3, i32* @g_2192, i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_2192]]], align 16
@func_1.l_2249 = private unnamed_addr constant [10 x [4 x i16]] [[4 x i16] [i16 -23789, i16 -1, i16 -15532, i16 -1], [4 x i16] [i16 -23789, i16 -1, i16 -15532, i16 -1], [4 x i16] [i16 -23789, i16 -1, i16 -15532, i16 -1], [4 x i16] [i16 -23789, i16 -1, i16 -15532, i16 -1], [4 x i16] [i16 -23789, i16 -1, i16 -15532, i16 -1], [4 x i16] [i16 -23789, i16 -1, i16 -15532, i16 -1], [4 x i16] [i16 -23789, i16 -1, i16 -15532, i16 -1], [4 x i16] [i16 -23789, i16 -1, i16 -15532, i16 -1], [4 x i16] [i16 -23789, i16 -1, i16 -15532, i16 -1], [4 x i16] [i16 -23789, i16 -1, i16 -15532, i16 -1]], align 16
@.str.53 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %94 = load i32, i32* @g_3, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i64, i64* @g_53, align 8, !tbaa !7
  %98 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %98)
  %99 = load i64, i64* @g_71, align 8, !tbaa !7
  %100 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %100)
  %101 = load i8, i8* @g_84, align 1, !tbaa !9
  %102 = sext i8 %101 to i64
  %103 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %103)
  %104 = load i64, i64* @g_86, align 8, !tbaa !7
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %105)
  %106 = load i32, i32* @g_87, align 4, !tbaa !1
  %107 = zext i32 %106 to i64
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %108)
  %109 = load i16, i16* @g_97, align 2, !tbaa !10
  %110 = sext i16 %109 to i64
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %111)
  %112 = load i32, i32* @g_101, align 4, !tbaa !1
  %113 = sext i32 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %114)
  %115 = load i8, i8* @g_116, align 1, !tbaa !9
  %116 = zext i8 %115 to i64
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %117)
  %118 = load i16, i16* @g_141, align 2, !tbaa !10
  %119 = zext i16 %118 to i64
  %120 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %120)
  %121 = load i64, i64* @g_162, align 8, !tbaa !7
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %122)
  %123 = load i64, i64* @g_164, align 8, !tbaa !7
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %124)
  %125 = load i64, i64* @g_166, align 8, !tbaa !7
  %126 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %126)
  %127 = load i32, i32* @g_209, align 4, !tbaa !1
  %128 = sext i32 %127 to i64
  %129 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %129)
  %130 = load i32, i32* @g_213, align 4, !tbaa !1
  %131 = zext i32 %130 to i64
  %132 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %132)
  %133 = load volatile i16, i16* @g_218, align 2, !tbaa !10
  %134 = zext i16 %133 to i64
  %135 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %135)
  %136 = load i32, i32* @g_233, align 4, !tbaa !1
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %138)
  %139 = load i16, i16* @g_234, align 2, !tbaa !10
  %140 = zext i16 %139 to i64
  %141 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %141)
  %142 = load i8, i8* @g_285, align 1, !tbaa !9
  %143 = zext i8 %142 to i64
  %144 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %144)
  %145 = load i8, i8* @g_316, align 1, !tbaa !9
  %146 = zext i8 %145 to i64
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %147)
  %148 = load i64, i64* @g_377, align 8, !tbaa !7
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %149)
  %150 = load i32, i32* @g_378, align 4, !tbaa !1
  %151 = zext i32 %150 to i64
  %152 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %152)
  %153 = load i64, i64* @g_451, align 8, !tbaa !7
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %154)
  %155 = load i16, i16* @g_453, align 2, !tbaa !10
  %156 = zext i16 %155 to i64
  %157 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %157)
  %158 = load i8, i8* @g_467, align 1, !tbaa !9
  %159 = sext i8 %158 to i64
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %160)
  %161 = load i32, i32* @g_490, align 4, !tbaa !1
  %162 = sext i32 %161 to i64
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %163)
  %164 = load volatile i32, i32* @g_558, align 4, !tbaa !1
  %165 = sext i32 %164 to i64
  %166 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %166)
  %167 = load i64, i64* @g_608, align 8, !tbaa !7
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %168)
  %169 = load i64, i64* @g_642, align 8, !tbaa !7
  %170 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %170)
  %171 = load i32, i32* @g_667, align 4, !tbaa !1
  %172 = zext i32 %171 to i64
  %173 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %173)
  %174 = load i32, i32* @g_694, align 4, !tbaa !1
  %175 = sext i32 %174 to i64
  %176 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %176)
  %177 = load i32, i32* @g_851, align 4, !tbaa !1
  %178 = sext i32 %177 to i64
  %179 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %179)
  %180 = load i64, i64* @g_852, align 8, !tbaa !7
  %181 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %181)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %182

; <label>:182                                     ; preds = %222, %89
  %183 = load i32, i32* %i, align 4, !tbaa !1
  %184 = icmp slt i32 %183, 7
  br i1 %184, label %185, label %225

; <label>:185                                     ; preds = %182
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %186

; <label>:186                                     ; preds = %218, %185
  %187 = load i32, i32* %j, align 4, !tbaa !1
  %188 = icmp slt i32 %187, 8
  br i1 %188, label %189, label %221

; <label>:189                                     ; preds = %186
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %190

; <label>:190                                     ; preds = %214, %189
  %191 = load i32, i32* %k, align 4, !tbaa !1
  %192 = icmp slt i32 %191, 4
  br i1 %192, label %193, label %217

; <label>:193                                     ; preds = %190
  %194 = load i32, i32* %k, align 4, !tbaa !1
  %195 = sext i32 %194 to i64
  %196 = load i32, i32* %j, align 4, !tbaa !1
  %197 = sext i32 %196 to i64
  %198 = load i32, i32* %i, align 4, !tbaa !1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [7 x [8 x [4 x i8]]], [7 x [8 x [4 x i8]]]* @g_993, i32 0, i64 %199
  %201 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %200, i32 0, i64 %197
  %202 = getelementptr inbounds [4 x i8], [4 x i8]* %201, i32 0, i64 %195
  %203 = load i8, i8* %202, align 1, !tbaa !9
  %204 = sext i8 %203 to i64
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i32 %205)
  %206 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

; <label>:208                                     ; preds = %193
  %209 = load i32, i32* %i, align 4, !tbaa !1
  %210 = load i32, i32* %j, align 4, !tbaa !1
  %211 = load i32, i32* %k, align 4, !tbaa !1
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i32 %209, i32 %210, i32 %211)
  br label %213

; <label>:213                                     ; preds = %208, %193
  br label %214

; <label>:214                                     ; preds = %213
  %215 = load i32, i32* %k, align 4, !tbaa !1
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %k, align 4, !tbaa !1
  br label %190

; <label>:217                                     ; preds = %190
  br label %218

; <label>:218                                     ; preds = %217
  %219 = load i32, i32* %j, align 4, !tbaa !1
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %j, align 4, !tbaa !1
  br label %186

; <label>:221                                     ; preds = %186
  br label %222

; <label>:222                                     ; preds = %221
  %223 = load i32, i32* %i, align 4, !tbaa !1
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %i, align 4, !tbaa !1
  br label %182

; <label>:225                                     ; preds = %182
  %226 = load i8, i8* @g_1106, align 1, !tbaa !9
  %227 = zext i8 %226 to i64
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %228)
  %229 = load volatile i64, i64* @g_1174, align 8, !tbaa !7
  %230 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %230)
  %231 = load i8, i8* @g_1342, align 1, !tbaa !9
  %232 = sext i8 %231 to i64
  %233 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %232, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %233)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %234

; <label>:234                                     ; preds = %250, %225
  %235 = load i32, i32* %i, align 4, !tbaa !1
  %236 = icmp slt i32 %235, 1
  br i1 %236, label %237, label %253

; <label>:237                                     ; preds = %234
  %238 = load i32, i32* %i, align 4, !tbaa !1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [1 x i32], [1 x i32]* @g_1387, i32 0, i64 %239
  %241 = load i32, i32* %240, align 4, !tbaa !1
  %242 = zext i32 %241 to i64
  %243 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %242, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 %243)
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

; <label>:246                                     ; preds = %237
  %247 = load i32, i32* %i, align 4, !tbaa !1
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), i32 %247)
  br label %249

; <label>:249                                     ; preds = %246, %237
  br label %250

; <label>:250                                     ; preds = %249
  %251 = load i32, i32* %i, align 4, !tbaa !1
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %i, align 4, !tbaa !1
  br label %234

; <label>:253                                     ; preds = %234
  %254 = load i8, i8* @g_1389, align 1, !tbaa !9
  %255 = sext i8 %254 to i64
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %255, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %256)
  %257 = load i64, i64* @g_1514, align 8, !tbaa !7
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %258)
  %259 = load volatile i8, i8* @g_1533, align 1, !tbaa !9
  %260 = sext i8 %259 to i64
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %261)
  %262 = load volatile i32, i32* @g_1668, align 4, !tbaa !1
  %263 = sext i32 %262 to i64
  %264 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %263, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %264)
  %265 = load volatile i32, i32* @g_1670, align 4, !tbaa !1
  %266 = sext i32 %265 to i64
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %267)
  %268 = load i64, i64* @g_1737, align 8, !tbaa !7
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %268, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %269)
  %270 = load i16, i16* @g_2082, align 2, !tbaa !10
  %271 = sext i16 %270 to i64
  %272 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %271, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %272)
  %273 = load i64, i64* @g_2187, align 8, !tbaa !7
  %274 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %273, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %274)
  %275 = load i8, i8* @g_2188, align 1, !tbaa !9
  %276 = sext i8 %275 to i64
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %277)
  %278 = load i32, i32* @g_2190, align 4, !tbaa !1
  %279 = sext i32 %278 to i64
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %279, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %280)
  %281 = load i32, i32* @g_2192, align 4, !tbaa !1
  %282 = sext i32 %281 to i64
  %283 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %282, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %283)
  %284 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %285 = zext i32 %284 to i64
  %286 = xor i64 %285, 4294967295
  %287 = trunc i64 %286 to i32
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %287, i32 %288)
  %289 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
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
  %l_35 = alloca [4 x [8 x i64]], align 16
  %l_2198 = alloca [3 x [7 x i32]], align 16
  %l_2199 = alloca i32, align 4
  %l_2205 = alloca i16*, align 8
  %l_2204 = alloca i16**, align 8
  %l_2222 = alloca [7 x i32], align 16
  %l_2235 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_2186 = alloca i64*, align 8
  %l_2189 = alloca i32*, align 8
  %l_2191 = alloca [9 x [3 x [9 x i32*]]], align 16
  %l_2217 = alloca i32, align 4
  %l_2249 = alloca [10 x [4 x i16]], align 16
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast [4 x [8 x i64]]* %l_35 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %1) #1
  %2 = bitcast [4 x [8 x i64]]* %l_35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([4 x [8 x i64]]* @func_1.l_35 to i8*), i64 256, i32 16, i1 false)
  %3 = bitcast [3 x [7 x i32]]* %l_2198 to i8*
  call void @llvm.lifetime.start(i64 84, i8* %3) #1
  %4 = bitcast [3 x [7 x i32]]* %l_2198 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([3 x [7 x i32]]* @func_1.l_2198 to i8*), i64 84, i32 16, i1 false)
  %5 = bitcast i32* %l_2199 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -208211315, i32* %l_2199, align 4, !tbaa !1
  %6 = bitcast i16** %l_2205 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16* @g_453, i16** %l_2205, align 8, !tbaa !5
  %7 = bitcast i16*** %l_2204 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16** %l_2205, i16*** %l_2204, align 8, !tbaa !5
  %8 = bitcast [7 x i32]* %l_2222 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %8) #1
  %9 = bitcast [7 x i32]* %l_2222 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([7 x i32]* @func_1.l_2222 to i8*), i64 28, i32 16, i1 false)
  %10 = bitcast i64* %l_2235 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 1, i64* %l_2235, align 8, !tbaa !7
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -2, i32* @g_3, align 4, !tbaa !1
  br label %13

; <label>:13                                      ; preds = %35, %0
  %14 = load i32, i32* @g_3, align 4, !tbaa !1
  %15 = icmp sgt i32 %14, -11
  br i1 %15, label %16, label %38

; <label>:16                                      ; preds = %13
  %17 = bitcast i64** %l_2186 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i64* @g_2187, i64** %l_2186, align 8, !tbaa !5
  %18 = bitcast i32** %l_2189 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32* @g_2190, i32** %l_2189, align 8, !tbaa !5
  %19 = bitcast [9 x [3 x [9 x i32*]]]* %l_2191 to i8*
  call void @llvm.lifetime.start(i64 1944, i8* %19) #1
  %20 = bitcast [9 x [3 x [9 x i32*]]]* %l_2191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* bitcast ([9 x [3 x [9 x i32*]]]* @func_1.l_2191 to i8*), i64 1944, i32 16, i1 false)
  %21 = bitcast i32* %l_2217 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 0, i32* %l_2217, align 4, !tbaa !1
  %22 = bitcast [10 x [4 x i16]]* %l_2249 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %22) #1
  %23 = bitcast [10 x [4 x i16]]* %l_2249 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast ([10 x [4 x i16]]* @func_1.l_2249 to i8*), i64 80, i32 16, i1 false)
  %24 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast [10 x [4 x i16]]* %l_2249 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %30) #1
  %31 = bitcast i32* %l_2217 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast [9 x [3 x [9 x i32*]]]* %l_2191 to i8*
  call void @llvm.lifetime.end(i64 1944, i8* %32) #1
  %33 = bitcast i32** %l_2189 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i64** %l_2186 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  br label %35

; <label>:35                                      ; preds = %16
  %36 = load i32, i32* @g_3, align 4, !tbaa !1
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* @g_3, align 4, !tbaa !1
  br label %13

; <label>:38                                      ; preds = %13
  %39 = getelementptr inbounds [4 x [8 x i64]], [4 x [8 x i64]]* %l_35, i32 0, i64 1
  %40 = getelementptr inbounds [8 x i64], [8 x i64]* %39, i32 0, i64 1
  %41 = load i64, i64* %40, align 8, !tbaa !7
  %42 = trunc i64 %41 to i16
  %43 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i64* %l_2235 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast [7 x i32]* %l_2222 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %46) #1
  %47 = bitcast i16*** %l_2204 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i16** %l_2205 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %l_2199 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast [3 x [7 x i32]]* %l_2198 to i8*
  call void @llvm.lifetime.end(i64 84, i8* %50) #1
  %51 = bitcast [4 x [8 x i64]]* %l_35 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %51) #1
  ret i16 %42
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i32 %3)
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
