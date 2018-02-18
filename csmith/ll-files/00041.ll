; ModuleID = '00041.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 1347552799, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_24 = internal global i32 8, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"g_24\00", align 1
@g_25 = internal global i8 -35, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"g_25\00", align 1
@g_27 = internal global i64 1649102237329100181, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"g_27\00", align 1
@g_31 = internal global [3 x i8] c"\7F\7F\7F", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"g_31[i]\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_33 = internal global i16 29279, align 2
@.str.7 = private unnamed_addr constant [5 x i8] c"g_33\00", align 1
@g_34 = internal global i16 -32068, align 2
@.str.8 = private unnamed_addr constant [5 x i8] c"g_34\00", align 1
@g_114 = internal global i64 -1, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"g_114\00", align 1
@g_115 = internal global [1 x i64] [i64 -1], align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"g_115[i]\00", align 1
@g_122 = internal global i32 1, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_122\00", align 1
@g_136 = internal global i32 -1, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"g_136\00", align 1
@g_179 = internal global [2 x [10 x [1 x i16]]] [[10 x [1 x i16]] [[1 x i16] [i16 -1], [1 x i16] [i16 12532], [1 x i16] [i16 -31917], [1 x i16] [i16 12532], [1 x i16] [i16 -1], [1 x i16] [i16 9698], [1 x i16] [i16 9698], [1 x i16] [i16 -1], [1 x i16] [i16 12532], [1 x i16] [i16 -31917]], [10 x [1 x i16]] [[1 x i16] [i16 12532], [1 x i16] [i16 -1], [1 x i16] [i16 9698], [1 x i16] [i16 9698], [1 x i16] [i16 -1], [1 x i16] [i16 12532], [1 x i16] [i16 -31917], [1 x i16] [i16 12532], [1 x i16] [i16 -1], [1 x i16] [i16 9698]]], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"g_179[i][j][k]\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_205 = internal global i64 4517170035621354483, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"g_205\00", align 1
@g_244 = internal global i64 8, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"g_244\00", align 1
@g_253 = internal global i8 -57, align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"g_253\00", align 1
@g_255 = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_255\00", align 1
@g_289 = internal global [10 x [8 x i32]] [[8 x i32] [i32 -1043961738, i32 -764175836, i32 -1043961738, i32 -173481247, i32 -764175836, i32 1027974578, i32 1027974578, i32 -764175836], [8 x i32] [i32 -764175836, i32 1027974578, i32 1027974578, i32 -764175836, i32 -173481247, i32 -1043961738, i32 -764175836, i32 -1043961738], [8 x i32] [i32 -764175836, i32 -1, i32 1794045115, i32 -1, i32 -764175836, i32 1794045115, i32 -1, i32 -1], [8 x i32] [i32 -1043961738, i32 -1, i32 -173481247, i32 -173481247, i32 -1, i32 -1043961738, i32 1027974578, i32 -1], [8 x i32] [i32 -1, i32 1027974578, i32 -173481247, i32 -1, i32 -173481247, i32 1027974578, i32 -1, i32 -1043961738], [8 x i32] [i32 -1, i32 -764175836, i32 1794045115, i32 -1, i32 -1, i32 1794045115, i32 -764175836, i32 -1], [8 x i32] [i32 -1043961738, i32 -1, i32 1027974578, i32 -173481247, i32 -1, i32 -173481247, i32 1027974578, i32 -1], [8 x i32] [i32 -1, i32 1794045115, i32 1, i32 -173481247, i32 0, i32 0, i32 -173481247, i32 1], [8 x i32] [i32 -1043961738, i32 -1043961738, i32 -1, i32 1027974578, i32 -173481247, i32 -1, i32 -173481247, i32 1027974578], [8 x i32] [i32 1, i32 1027974578, i32 1, i32 0, i32 1027974578, i32 1794045115, i32 1794045115, i32 1027974578]], align 16
@.str.19 = private unnamed_addr constant [12 x i8] c"g_289[i][j]\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_359 = internal global [2 x i8] c"\04\04", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"g_359[i]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_4 = internal global i32* @g_3, align 8
@g_150 = internal global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), align 8
@g_121 = internal global i32* @g_122, align 8
@func_5.l_12 = private unnamed_addr constant [2 x [7 x i32]] [[7 x i32] [i32 -3, i32 0, i32 -412437842, i32 0, i32 -3, i32 -3, i32 0], [7 x i32] [i32 -349990453, i32 -704986846, i32 -349990453, i32 0, i32 0, i32 -349990453, i32 -704986846]], align 16
@func_5.l_23 = private unnamed_addr constant [4 x i32*] [i32* @g_3, i32* @g_3, i32* @g_3, i32* @g_3], align 16
@g_198 = internal global [3 x i16**] zeroinitializer, align 16
@func_5.l_301 = private unnamed_addr constant [10 x [6 x [4 x i8*]]] [[6 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* null]], [6 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* null]], [6 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0)]], [6 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)]], [6 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* null], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)]], [6 x [4 x i8*]] [[4 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)]], [6 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8* null], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null]], [6 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8* null]], [6 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null], [4 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null], [4 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* null]], [6 x [4 x i8*]] [[4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2)], [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8* null]]], align 16
@func_5.l_361 = internal constant [2 x [6 x [3 x i8]]] [[6 x [3 x i8]] [[3 x i8] c"\F6\04\04", [3 x i8] c"\01*\01", [3 x i8] c"\F6\F6\04", [3 x i8] c"\01*\01", [3 x i8] c"\F6\04\04", [3 x i8] c"\01*\01"], [6 x [3 x i8]] [[3 x i8] c"\F6\F6\04", [3 x i8] c"\01*\01", [3 x i8] c"\F6\04\04", [3 x i8] c"\01*\01", [3 x i8] c"\F6\F6\04", [3 x i8] c"\01*\01"]], align 16
@func_5.l_367 = private unnamed_addr constant [5 x [5 x [1 x i64]]] [[5 x [1 x i64]] [[1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] [i64 9106865478058062856], [1 x i64] [i64 -5248407264095266935], [1 x i64] [i64 -8]], [5 x [1 x i64]] [[1 x i64] [i64 -5248407264095266935], [1 x i64] [i64 9106865478058062856], [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] [i64 9106865478058062856]], [5 x [1 x i64]] [[1 x i64] [i64 -5248407264095266935], [1 x i64] [i64 -8], [1 x i64] [i64 -5248407264095266935], [1 x i64] [i64 9106865478058062856], [1 x i64] [i64 6]], [5 x [1 x i64]] [[1 x i64] [i64 6], [1 x i64] [i64 -8], [1 x i64] [i64 9106865478058062856], [1 x i64] [i64 1], [1 x i64] [i64 9106865478058062856]], [5 x [1 x i64]] [[1 x i64] [i64 -8], [1 x i64] [i64 6], [1 x i64] [i64 6], [1 x i64] [i64 -8], [1 x i64] [i64 9106865478058062856]]], align 16
@g_210 = internal global i16*** bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i16**]* @g_198 to i8*), i64 16) to i16***), align 8
@g_209 = internal global i16**** @g_210, align 8
@func_5.l_250 = private unnamed_addr constant [3 x [5 x i16*****]] [[5 x i16*****] [i16***** null, i16***** @g_209, i16***** null, i16***** null, i16***** null], [5 x i16*****] [i16***** null, i16***** @g_209, i16***** null, i16***** null, i16***** null], [5 x i16*****] [i16***** null, i16***** @g_209, i16***** null, i16***** null, i16***** null]], align 16
@g_269 = internal global i64** @g_270, align 8
@func_5.l_298 = private unnamed_addr constant [8 x i32*] [i32* null, i32* @g_255, i32* @g_255, i32* null, i32* @g_255, i32* @g_255, i32* null, i32* @g_255], align 16
@g_125 = internal global %union.U0 zeroinitializer, align 8
@func_5.l_332 = private unnamed_addr constant [8 x [9 x [3 x i8*]]] [[9 x [3 x i8*]] [[3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* @g_253]], [9 x [3 x i8*]] [[3 x i8*] [i8* @g_253, i8* null, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* @g_253]], [9 x [3 x i8*]] [[3 x i8*] [i8* @g_253, i8* null, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253]], [9 x [3 x i8*]] [[3 x i8*] [i8* @g_253, i8* @g_253, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253]], [9 x [3 x i8*]] [[3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253]], [9 x [3 x i8*]] [[3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253]], [9 x [3 x i8*]] [[3 x i8*] [i8* @g_253, i8* @g_253, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* null]], [9 x [3 x i8*]] [[3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* @g_253], [3 x i8*] [i8* @g_253, i8* null, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253], [3 x i8*] [i8* @g_253, i8* @g_253, i8* null], [3 x i8*] [i8* @g_253, i8* @g_253, i8* @g_253]]], align 16
@g_309 = internal global [4 x i64*] [i64* getelementptr inbounds ([1 x i64], [1 x i64]* @g_115, i32 0, i32 0), i64* getelementptr inbounds ([1 x i64], [1 x i64]* @g_115, i32 0, i32 0), i64* getelementptr inbounds ([1 x i64], [1 x i64]* @g_115, i32 0, i32 0), i64* getelementptr inbounds ([1 x i64], [1 x i64]* @g_115, i32 0, i32 0)], align 16
@func_5.l_360 = private unnamed_addr constant [8 x i64] [i64 -3, i64 -3, i64 -628889152631447844, i64 -3, i64 -3, i64 -628889152631447844, i64 -3, i64 -3], align 16
@g_95 = internal global i32** @g_4, align 8
@g_270 = internal global i64* @g_205, align 8
@.str.22 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i32, i32* @g_3, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load volatile i32, i32* @g_24, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load volatile i8, i8* @g_25, align 1, !tbaa !9
  %98 = sext i8 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i64, i64* @g_27, align 8, !tbaa !7
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %101)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %102

; <label>:102                                     ; preds = %118, %89
  %103 = load i32, i32* %i, align 4, !tbaa !1
  %104 = icmp slt i32 %103, 3
  br i1 %104, label %105, label %121

; <label>:105                                     ; preds = %102
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [3 x i8], [3 x i8]* @g_31, i32 0, i64 %107
  %109 = load i8, i8* %108, align 1, !tbaa !9
  %110 = sext i8 %109 to i64
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %111)
  %112 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

; <label>:114                                     ; preds = %105
  %115 = load i32, i32* %i, align 4, !tbaa !1
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %115)
  br label %117

; <label>:117                                     ; preds = %114, %105
  br label %118

; <label>:118                                     ; preds = %117
  %119 = load i32, i32* %i, align 4, !tbaa !1
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %i, align 4, !tbaa !1
  br label %102

; <label>:121                                     ; preds = %102
  %122 = load i16, i16* @g_33, align 2, !tbaa !10
  %123 = zext i16 %122 to i64
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %124)
  %125 = load i16, i16* @g_34, align 2, !tbaa !10
  %126 = zext i16 %125 to i64
  %127 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %127)
  %128 = load i64, i64* @g_114, align 8, !tbaa !7
  %129 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %129)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %130

; <label>:130                                     ; preds = %145, %121
  %131 = load i32, i32* %i, align 4, !tbaa !1
  %132 = icmp slt i32 %131, 1
  br i1 %132, label %133, label %148

; <label>:133                                     ; preds = %130
  %134 = load i32, i32* %i, align 4, !tbaa !1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [1 x i64], [1 x i64]* @g_115, i32 0, i64 %135
  %137 = load i64, i64* %136, align 8, !tbaa !7
  %138 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %138)
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

; <label>:141                                     ; preds = %133
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %142)
  br label %144

; <label>:144                                     ; preds = %141, %133
  br label %145

; <label>:145                                     ; preds = %144
  %146 = load i32, i32* %i, align 4, !tbaa !1
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %i, align 4, !tbaa !1
  br label %130

; <label>:148                                     ; preds = %130
  %149 = load volatile i32, i32* @g_122, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %151)
  %152 = load i32, i32* @g_136, align 4, !tbaa !1
  %153 = sext i32 %152 to i64
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %154)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %155

; <label>:155                                     ; preds = %195, %148
  %156 = load i32, i32* %i, align 4, !tbaa !1
  %157 = icmp slt i32 %156, 2
  br i1 %157, label %158, label %198

; <label>:158                                     ; preds = %155
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %159

; <label>:159                                     ; preds = %191, %158
  %160 = load i32, i32* %j, align 4, !tbaa !1
  %161 = icmp slt i32 %160, 10
  br i1 %161, label %162, label %194

; <label>:162                                     ; preds = %159
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %163

; <label>:163                                     ; preds = %187, %162
  %164 = load i32, i32* %k, align 4, !tbaa !1
  %165 = icmp slt i32 %164, 1
  br i1 %165, label %166, label %190

; <label>:166                                     ; preds = %163
  %167 = load i32, i32* %k, align 4, !tbaa !1
  %168 = sext i32 %167 to i64
  %169 = load i32, i32* %j, align 4, !tbaa !1
  %170 = sext i32 %169 to i64
  %171 = load i32, i32* %i, align 4, !tbaa !1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [2 x [10 x [1 x i16]]], [2 x [10 x [1 x i16]]]* @g_179, i32 0, i64 %172
  %174 = getelementptr inbounds [10 x [1 x i16]], [10 x [1 x i16]]* %173, i32 0, i64 %170
  %175 = getelementptr inbounds [1 x i16], [1 x i16]* %174, i32 0, i64 %168
  %176 = load volatile i16, i16* %175, align 2, !tbaa !10
  %177 = zext i16 %176 to i64
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %177, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %178)
  %179 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

; <label>:181                                     ; preds = %166
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %183 = load i32, i32* %j, align 4, !tbaa !1
  %184 = load i32, i32* %k, align 4, !tbaa !1
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %182, i32 %183, i32 %184)
  br label %186

; <label>:186                                     ; preds = %181, %166
  br label %187

; <label>:187                                     ; preds = %186
  %188 = load i32, i32* %k, align 4, !tbaa !1
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %k, align 4, !tbaa !1
  br label %163

; <label>:190                                     ; preds = %163
  br label %191

; <label>:191                                     ; preds = %190
  %192 = load i32, i32* %j, align 4, !tbaa !1
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %j, align 4, !tbaa !1
  br label %159

; <label>:194                                     ; preds = %159
  br label %195

; <label>:195                                     ; preds = %194
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %i, align 4, !tbaa !1
  br label %155

; <label>:198                                     ; preds = %155
  %199 = load i64, i64* @g_205, align 8, !tbaa !7
  %200 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %200)
  %201 = load i64, i64* @g_244, align 8, !tbaa !7
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %202)
  %203 = load i8, i8* @g_253, align 1, !tbaa !9
  %204 = zext i8 %203 to i64
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %205)
  %206 = load i32, i32* @g_255, align 4, !tbaa !1
  %207 = sext i32 %206 to i64
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %208)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %209

; <label>:209                                     ; preds = %237, %198
  %210 = load i32, i32* %i, align 4, !tbaa !1
  %211 = icmp slt i32 %210, 10
  br i1 %211, label %212, label %240

; <label>:212                                     ; preds = %209
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %213

; <label>:213                                     ; preds = %233, %212
  %214 = load i32, i32* %j, align 4, !tbaa !1
  %215 = icmp slt i32 %214, 8
  br i1 %215, label %216, label %236

; <label>:216                                     ; preds = %213
  %217 = load i32, i32* %j, align 4, !tbaa !1
  %218 = sext i32 %217 to i64
  %219 = load i32, i32* %i, align 4, !tbaa !1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* @g_289, i32 0, i64 %220
  %222 = getelementptr inbounds [8 x i32], [8 x i32]* %221, i32 0, i64 %218
  %223 = load i32, i32* %222, align 4, !tbaa !1
  %224 = zext i32 %223 to i64
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 %225)
  %226 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

; <label>:228                                     ; preds = %216
  %229 = load i32, i32* %i, align 4, !tbaa !1
  %230 = load i32, i32* %j, align 4, !tbaa !1
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i32 %229, i32 %230)
  br label %232

; <label>:232                                     ; preds = %228, %216
  br label %233

; <label>:233                                     ; preds = %232
  %234 = load i32, i32* %j, align 4, !tbaa !1
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %j, align 4, !tbaa !1
  br label %213

; <label>:236                                     ; preds = %213
  br label %237

; <label>:237                                     ; preds = %236
  %238 = load i32, i32* %i, align 4, !tbaa !1
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %i, align 4, !tbaa !1
  br label %209

; <label>:240                                     ; preds = %209
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %241

; <label>:241                                     ; preds = %257, %240
  %242 = load i32, i32* %i, align 4, !tbaa !1
  %243 = icmp slt i32 %242, 2
  br i1 %243, label %244, label %260

; <label>:244                                     ; preds = %241
  %245 = load i32, i32* %i, align 4, !tbaa !1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [2 x i8], [2 x i8]* @g_359, i32 0, i64 %246
  %248 = load i8, i8* %247, align 1, !tbaa !9
  %249 = sext i8 %248 to i64
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %250)
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

; <label>:253                                     ; preds = %244
  %254 = load i32, i32* %i, align 4, !tbaa !1
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %254)
  br label %256

; <label>:256                                     ; preds = %253, %244
  br label %257

; <label>:257                                     ; preds = %256
  %258 = load i32, i32* %i, align 4, !tbaa !1
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %i, align 4, !tbaa !1
  br label %241

; <label>:260                                     ; preds = %241
  %261 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %262 = zext i32 %261 to i64
  %263 = xor i64 %262, 4294967295
  %264 = trunc i64 %263 to i32
  %265 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %264, i32 %265)
  %266 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #1
  %268 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  %269 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #1
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
  %l_2 = alloca [3 x i32*], align 16
  %l_375 = alloca i32*, align 8
  %l_377 = alloca i32**, align 8
  %l_379 = alloca i32**, align 8
  %i = alloca i32, align 4
  %1 = bitcast [3 x i32*]* %l_2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast i32** %l_375 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_136, i32** %l_375, align 8, !tbaa !5
  %3 = bitcast i32*** %l_377 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32** null, i32*** %l_377, align 8, !tbaa !5
  %4 = bitcast i32*** %l_379 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32** @g_4, i32*** %l_379, align 8, !tbaa !5
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %6

; <label>:6                                       ; preds = %13, %0
  %7 = load i32, i32* %i, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %16

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %i, align 4, !tbaa !1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x i32*], [3 x i32*]* %l_2, i32 0, i64 %11
  store i32* @g_3, i32** %12, align 8, !tbaa !5
  br label %13

; <label>:13                                      ; preds = %9
  %14 = load i32, i32* %i, align 4, !tbaa !1
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %i, align 4, !tbaa !1
  br label %6

; <label>:16                                      ; preds = %6
  %17 = getelementptr inbounds [3 x i32*], [3 x i32*]* %l_2, i32 0, i64 2
  %18 = load i32*, i32** %17, align 8, !tbaa !5
  store i32* %18, i32** @g_4, align 8, !tbaa !5
  %19 = load i32, i32* @g_3, align 4, !tbaa !1
  %20 = trunc i32 %19 to i8
  %21 = call i8* @func_5(i8 signext %20)
  store i8* %21, i8** @g_150, align 8, !tbaa !5
  %22 = icmp ne i8* %21, getelementptr inbounds ([2 x i8], [2 x i8]* @g_359, i32 0, i64 0)
  %23 = zext i1 %22 to i32
  %24 = load i32*, i32** @g_121, align 8, !tbaa !5
  store volatile i32 %23, i32* %24, align 4, !tbaa !1
  %25 = load i32*, i32** %l_375, align 8, !tbaa !5
  %26 = load i32**, i32*** %l_379, align 8, !tbaa !5
  store i32* %25, i32** %26, align 8, !tbaa !5
  %27 = load i8, i8* @g_253, align 1, !tbaa !9
  %28 = zext i8 %27 to i16
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32*** %l_379 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32*** %l_377 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i32** %l_375 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast [3 x i32*]* %l_2 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %33) #1
  ret i16 %28
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @func_5(i8 signext %p_6) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, align 1
  %l_7 = alloca i32, align 4
  %l_8 = alloca i32*, align 8
  %l_9 = alloca i32*, align 8
  %l_10 = alloca i32*, align 8
  %l_11 = alloca i32*, align 8
  %l_12 = alloca [2 x [7 x i32]], align 16
  %l_13 = alloca i32*, align 8
  %l_14 = alloca i32*, align 8
  %l_15 = alloca i32*, align 8
  %l_16 = alloca i32*, align 8
  %l_17 = alloca i32*, align 8
  %l_18 = alloca i32*, align 8
  %l_19 = alloca i32*, align 8
  %l_20 = alloca i32*, align 8
  %l_21 = alloca i32*, align 8
  %l_22 = alloca i32*, align 8
  %l_23 = alloca [4 x i32*], align 16
  %l_26 = alloca i32, align 4
  %l_30 = alloca i8*, align 8
  %l_32 = alloca i16*, align 8
  %l_204 = alloca i64, align 8
  %l_207 = alloca i16***, align 8
  %l_206 = alloca [9 x i16****], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_90 = alloca i16*, align 8
  %l_123 = alloca i32, align 4
  %l_201 = alloca i16*, align 8
  %l_263 = alloca i32, align 4
  %l_264 = alloca i32, align 4
  %l_265 = alloca i32, align 4
  %l_266 = alloca i16, align 2
  %l_277 = alloca %union.U0, align 8
  %l_278 = alloca i16*****, align 8
  %l_301 = alloca [10 x [6 x [4 x i8*]]], align 16
  %l_334 = alloca i64, align 8
  %l_367 = alloca [5 x [5 x [1 x i64]]], align 16
  %l_374 = alloca i32*, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_91 = alloca i8*, align 8
  %l_212 = alloca i32*, align 8
  %l_83 = alloca i32*, align 8
  %l_120 = alloca [2 x i32**], align 16
  %l_124 = alloca i64, align 8
  %l_211 = alloca i16*****, align 8
  %i3 = alloca i32, align 4
  %3 = alloca i32
  %l_217 = alloca i32, align 4
  %l_232 = alloca [9 x i16**], align 16
  %l_231 = alloca i16***, align 8
  %l_230 = alloca i16****, align 8
  %l_251 = alloca i16****, align 8
  %l_254 = alloca i8, align 1
  %l_257 = alloca i32, align 4
  %l_258 = alloca i32, align 4
  %l_259 = alloca i32, align 4
  %l_260 = alloca [5 x i32], align 16
  %l_307 = alloca i64*, align 8
  %i4 = alloca i32, align 4
  %l_213 = alloca i8, align 1
  %l_215 = alloca i32**, align 8
  %l_216 = alloca i64, align 8
  %l_245 = alloca i32, align 4
  %l_246 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %l_243 = alloca i64*, align 8
  %l_247 = alloca i16****, align 8
  %l_248 = alloca i16*****, align 8
  %l_249 = alloca i16*****, align 8
  %l_250 = alloca [3 x [5 x i16*****]], align 16
  %l_252 = alloca i8*, align 8
  %l_256 = alloca i32**, align 8
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %k8 = alloca i32, align 4
  %l_271 = alloca i64***, align 8
  %l_272 = alloca i64***, align 8
  %l_285 = alloca i8*, align 8
  %l_288 = alloca i32, align 4
  %l_300 = alloca i32, align 4
  %l_290 = alloca i64*, align 8
  %l_298 = alloca [8 x i32*], align 16
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %l_318 = alloca %union.U0, align 8
  %l_331 = alloca i32, align 4
  %l_315 = alloca i32, align 4
  %l_308 = alloca [9 x [4 x i64**]], align 16
  %l_312 = alloca i32, align 4
  %l_329 = alloca %union.U0*, align 8
  %l_330 = alloca [1 x [4 x %union.U0*]], align 16
  %l_332 = alloca [8 x [9 x [3 x i8*]]], align 16
  %l_333 = alloca i32*, align 8
  %i13 = alloca i32, align 4
  %j14 = alloca i32, align 4
  %k15 = alloca i32, align 4
  %l_335 = alloca i16, align 2
  %l_369 = alloca i32*, align 8
  %l_371 = alloca i16*, align 8
  %l_360 = alloca [8 x i64], align 16
  %l_362 = alloca i32, align 4
  %l_373 = alloca i16*, align 8
  %i18 = alloca i32, align 4
  %l_368 = alloca i32, align 4
  %l_370 = alloca [9 x [3 x i16*]], align 16
  %l_372 = alloca [9 x i32**], align 16
  %i19 = alloca i32, align 4
  %j20 = alloca i32, align 4
  store i8 %p_6, i8* %2, align 1, !tbaa !9
  %4 = bitcast i32* %l_7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 933865841, i32* %l_7, align 4, !tbaa !1
  %5 = bitcast i32** %l_8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* %l_7, i32** %l_8, align 8, !tbaa !5
  %6 = bitcast i32** %l_9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* null, i32** %l_9, align 8, !tbaa !5
  %7 = bitcast i32** %l_10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* @g_3, i32** %l_10, align 8, !tbaa !5
  %8 = bitcast i32** %l_11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_3, i32** %l_11, align 8, !tbaa !5
  %9 = bitcast [2 x [7 x i32]]* %l_12 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %9) #1
  %10 = bitcast [2 x [7 x i32]]* %l_12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([2 x [7 x i32]]* @func_5.l_12 to i8*), i64 56, i32 16, i1 false)
  %11 = bitcast i32** %l_13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32* null, i32** %l_13, align 8, !tbaa !5
  %12 = bitcast i32** %l_14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = getelementptr inbounds [2 x [7 x i32]], [2 x [7 x i32]]* %l_12, i32 0, i64 1
  %14 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i32 0, i64 0
  store i32* %14, i32** %l_14, align 8, !tbaa !5
  %15 = bitcast i32** %l_15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i32* %l_7, i32** %l_15, align 8, !tbaa !5
  %16 = bitcast i32** %l_16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = getelementptr inbounds [2 x [7 x i32]], [2 x [7 x i32]]* %l_12, i32 0, i64 1
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i32 0, i64 5
  store i32* %18, i32** %l_16, align 8, !tbaa !5
  %19 = bitcast i32** %l_17 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i32* null, i32** %l_17, align 8, !tbaa !5
  %20 = bitcast i32** %l_18 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i32* null, i32** %l_18, align 8, !tbaa !5
  %21 = bitcast i32** %l_19 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i32* null, i32** %l_19, align 8, !tbaa !5
  %22 = bitcast i32** %l_20 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i32* null, i32** %l_20, align 8, !tbaa !5
  %23 = bitcast i32** %l_21 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i32* null, i32** %l_21, align 8, !tbaa !5
  %24 = bitcast i32** %l_22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i32* %l_7, i32** %l_22, align 8, !tbaa !5
  %25 = bitcast [4 x i32*]* %l_23 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %25) #1
  %26 = bitcast [4 x i32*]* %l_23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast ([4 x i32*]* @func_5.l_23 to i8*), i64 32, i32 16, i1 false)
  %27 = bitcast i32* %l_26 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 -823158139, i32* %l_26, align 4, !tbaa !1
  %28 = bitcast i8** %l_30 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8** %l_30, align 8, !tbaa !5
  %29 = bitcast i16** %l_32 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i16* @g_33, i16** %l_32, align 8, !tbaa !5
  %30 = bitcast i64* %l_204 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i64 7433164217023004509, i64* %l_204, align 8, !tbaa !7
  %31 = bitcast i16**** %l_207 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i16*** getelementptr inbounds ([3 x i16**], [3 x i16**]* @g_198, i32 0, i64 2), i16**** %l_207, align 8, !tbaa !5
  %32 = bitcast [9 x i16****]* %l_206 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %32) #1
  %33 = getelementptr inbounds [9 x i16****], [9 x i16****]* %l_206, i64 0, i64 0
  store i16**** %l_207, i16***** %33, !tbaa !5
  %34 = getelementptr inbounds i16****, i16***** %33, i64 1
  store i16**** %l_207, i16***** %34, !tbaa !5
  %35 = getelementptr inbounds i16****, i16***** %34, i64 1
  store i16**** null, i16***** %35, !tbaa !5
  %36 = getelementptr inbounds i16****, i16***** %35, i64 1
  store i16**** %l_207, i16***** %36, !tbaa !5
  %37 = getelementptr inbounds i16****, i16***** %36, i64 1
  store i16**** %l_207, i16***** %37, !tbaa !5
  %38 = getelementptr inbounds i16****, i16***** %37, i64 1
  store i16**** null, i16***** %38, !tbaa !5
  %39 = getelementptr inbounds i16****, i16***** %38, i64 1
  store i16**** %l_207, i16***** %39, !tbaa !5
  %40 = getelementptr inbounds i16****, i16***** %39, i64 1
  store i16**** %l_207, i16***** %40, !tbaa !5
  %41 = getelementptr inbounds i16****, i16***** %40, i64 1
  store i16**** null, i16***** %41, !tbaa !5
  %42 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i64, i64* @g_27, align 8, !tbaa !7
  %45 = add i64 %44, 1
  store i64 %45, i64* @g_27, align 8, !tbaa !7
  %46 = load i8*, i8** %l_30, align 8, !tbaa !5
  %47 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), align 1, !tbaa !9
  %48 = sext i8 %47 to i16
  %49 = load i16*, i16** %l_32, align 8, !tbaa !5
  store i16 %48, i16* %49, align 2, !tbaa !10
  %50 = icmp ne i8* %46, null
  %51 = zext i1 %50 to i32
  %52 = load i32*, i32** %l_16, align 8, !tbaa !5
  store i32 %51, i32* %52, align 4, !tbaa !1
  %53 = load i16, i16* @g_34, align 2, !tbaa !10
  %54 = add i16 %53, -1
  store i16 %54, i16* @g_34, align 2, !tbaa !10
  %55 = load i32, i32* @g_3, align 4, !tbaa !1
  br i1 true, label %56, label %79

; <label>:56                                      ; preds = %0
  %57 = load i32*, i32** %l_16, align 8, !tbaa !5
  %58 = load i32, i32* %57, align 4, !tbaa !1
  %59 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext 1, i32 5)
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* %2, align 1, !tbaa !9
  %62 = load i16, i16* @g_33, align 2, !tbaa !10
  %63 = load i8, i8* %2, align 1, !tbaa !9
  %64 = sext i8 %63 to i16
  %65 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %62, i16 zeroext %64)
  %66 = trunc i16 %65 to i8
  %67 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %61, i8 signext %66)
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 %60, %68
  %70 = zext i1 %69 to i32
  %71 = icmp sle i32 %58, %70
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = xor i64 5, %73
  %75 = load i32, i32* @g_3, align 4, !tbaa !1
  %76 = sext i32 %75 to i64
  %77 = xor i64 %74, %76
  %78 = icmp ne i64 %77, 6
  br label %79

; <label>:79                                      ; preds = %56, %0
  %80 = phi i1 [ false, %0 ], [ %78, %56 ]
  %81 = zext i1 %80 to i32
  store i8 72, i8* %2, align 1, !tbaa !9
  br i1 false, label %82, label %1102

; <label>:82                                      ; preds = %79
  %83 = bitcast i16** %l_90 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  store i16* @g_33, i16** %l_90, align 8, !tbaa !5
  %84 = bitcast i32* %l_123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  store i32 -939909801, i32* %l_123, align 4, !tbaa !1
  %85 = bitcast i16** %l_201 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  store i16* @g_33, i16** %l_201, align 8, !tbaa !5
  %86 = bitcast i32* %l_263 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  store i32 0, i32* %l_263, align 4, !tbaa !1
  %87 = bitcast i32* %l_264 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  store i32 -9, i32* %l_264, align 4, !tbaa !1
  %88 = bitcast i32* %l_265 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  store i32 1712110604, i32* %l_265, align 4, !tbaa !1
  %89 = bitcast i16* %l_266 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %89) #1
  store i16 -1, i16* %l_266, align 2, !tbaa !10
  %90 = bitcast %union.U0* %l_277 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #1
  %91 = bitcast %union.U0* %l_277 to i8*
  call void @llvm.memset.p0i8.i64(i8* %91, i8 0, i64 8, i32 8, i1 false)
  %92 = bitcast i16****** %l_278 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  store i16***** null, i16****** %l_278, align 8, !tbaa !5
  %93 = bitcast [10 x [6 x [4 x i8*]]]* %l_301 to i8*
  call void @llvm.lifetime.start(i64 1920, i8* %93) #1
  %94 = bitcast [10 x [6 x [4 x i8*]]]* %l_301 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* bitcast ([10 x [6 x [4 x i8*]]]* @func_5.l_301 to i8*), i64 1920, i32 16, i1 false)
  %95 = bitcast i64* %l_334 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  store i64 9, i64* %l_334, align 8, !tbaa !7
  %96 = bitcast [5 x [5 x [1 x i64]]]* %l_367 to i8*
  call void @llvm.lifetime.start(i64 200, i8* %96) #1
  %97 = bitcast [5 x [5 x [1 x i64]]]* %l_367 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* bitcast ([5 x [5 x [1 x i64]]]* @func_5.l_367 to i8*), i64 200, i32 16, i1 false)
  %98 = bitcast i32** %l_374 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  %99 = getelementptr inbounds [2 x [7 x i32]], [2 x [7 x i32]]* %l_12, i32 0, i64 0
  %100 = getelementptr inbounds [7 x i32], [7 x i32]* %99, i32 0, i64 1
  store i32* %100, i32** %l_374, align 8, !tbaa !5
  %101 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  %102 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #1
  %103 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  store i16 -26, i16* @g_33, align 2, !tbaa !10
  br label %104

; <label>:104                                     ; preds = %154, %82
  %105 = load i16, i16* @g_33, align 2, !tbaa !10
  %106 = zext i16 %105 to i32
  %107 = icmp eq i32 %106, 14
  br i1 %107, label %108, label %157

; <label>:108                                     ; preds = %104
  %109 = bitcast i8** %l_91 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8** %l_91, align 8, !tbaa !5
  %110 = bitcast i32** %l_212 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  store i32* %l_7, i32** %l_212, align 8, !tbaa !5
  store i32 -7, i32* %l_26, align 4, !tbaa !1
  br label %111

; <label>:111                                     ; preds = %146, %108
  %112 = load i32, i32* %l_26, align 4, !tbaa !1
  %113 = icmp slt i32 %112, -22
  br i1 %113, label %114, label %151

; <label>:114                                     ; preds = %111
  %115 = bitcast i32** %l_83 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #1
  %116 = getelementptr inbounds [2 x [7 x i32]], [2 x [7 x i32]]* %l_12, i32 0, i64 0
  %117 = getelementptr inbounds [7 x i32], [7 x i32]* %116, i32 0, i64 1
  store i32* %117, i32** %l_83, align 8, !tbaa !5
  %118 = bitcast [2 x i32**]* %l_120 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %118) #1
  %119 = bitcast i64* %l_124 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %119) #1
  store i64 2, i64* %l_124, align 8, !tbaa !7
  %120 = bitcast i16****** %l_211 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #1
  %121 = getelementptr inbounds [9 x i16****], [9 x i16****]* %l_206, i32 0, i64 7
  store i16***** %121, i16****** %l_211, align 8, !tbaa !5
  %122 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %123

; <label>:123                                     ; preds = %130, %114
  %124 = load i32, i32* %i3, align 4, !tbaa !1
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %126, label %133

; <label>:126                                     ; preds = %123
  %127 = load i32, i32* %i3, align 4, !tbaa !1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2 x i32**], [2 x i32**]* %l_120, i32 0, i64 %128
  store i32** %l_15, i32*** %129, align 8, !tbaa !5
  br label %130

; <label>:130                                     ; preds = %126
  %131 = load i32, i32* %i3, align 4, !tbaa !1
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %i3, align 4, !tbaa !1
  br label %123

; <label>:133                                     ; preds = %123
  %134 = call i64 @safe_sub_func_uint64_t_u_u(i64 1, i64 0)
  %135 = load i64, i64* @g_205, align 8, !tbaa !7
  %136 = or i64 %135, %134
  store i64 %136, i64* @g_205, align 8, !tbaa !7
  %137 = getelementptr inbounds [9 x i16****], [9 x i16****]* %l_206, i32 0, i64 8
  %138 = load i16****, i16***** %137, align 8, !tbaa !5
  %139 = load i16*****, i16****** %l_211, align 8, !tbaa !5
  store i16**** %138, i16***** %139, align 8, !tbaa !5
  %140 = load i32*, i32** %l_212, align 8, !tbaa !5
  store i32* %140, i32** %l_212, align 8, !tbaa !5
  %141 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i16****** %l_211 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i64* %l_124 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast [2 x i32**]* %l_120 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %144) #1
  %145 = bitcast i32** %l_83 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  br label %146

; <label>:146                                     ; preds = %133
  %147 = load i32, i32* %l_26, align 4, !tbaa !1
  %148 = sext i32 %147 to i64
  %149 = call i64 @safe_sub_func_uint64_t_u_u(i64 %148, i64 6)
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %l_26, align 4, !tbaa !1
  br label %111

; <label>:151                                     ; preds = %111
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8** %1
  store i32 1, i32* %3
  %152 = bitcast i32** %l_212 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast i8** %l_91 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  br label %1085
                                                  ; No predecessors!
  %155 = load i16, i16* @g_33, align 2, !tbaa !10
  %156 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %155, i16 zeroext 4)
  store i16 %156, i16* @g_33, align 2, !tbaa !10
  br label %104

; <label>:157                                     ; preds = %104
  store i64 2, i64* @g_114, align 8, !tbaa !7
  br label %158

; <label>:158                                     ; preds = %884, %157
  %159 = load i64, i64* @g_114, align 8, !tbaa !7
  %160 = icmp sge i64 %159, 0
  br i1 %160, label %161, label %887

; <label>:161                                     ; preds = %158
  %162 = bitcast i32* %l_217 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #1
  store i32 402179636, i32* %l_217, align 4, !tbaa !1
  %163 = bitcast [9 x i16**]* %l_232 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %163) #1
  %164 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_232, i64 0, i64 0
  store i16** %l_90, i16*** %164, !tbaa !5
  %165 = getelementptr inbounds i16**, i16*** %164, i64 1
  store i16** %l_90, i16*** %165, !tbaa !5
  %166 = getelementptr inbounds i16**, i16*** %165, i64 1
  store i16** %l_90, i16*** %166, !tbaa !5
  %167 = getelementptr inbounds i16**, i16*** %166, i64 1
  store i16** %l_90, i16*** %167, !tbaa !5
  %168 = getelementptr inbounds i16**, i16*** %167, i64 1
  store i16** %l_90, i16*** %168, !tbaa !5
  %169 = getelementptr inbounds i16**, i16*** %168, i64 1
  store i16** %l_90, i16*** %169, !tbaa !5
  %170 = getelementptr inbounds i16**, i16*** %169, i64 1
  store i16** %l_90, i16*** %170, !tbaa !5
  %171 = getelementptr inbounds i16**, i16*** %170, i64 1
  store i16** %l_90, i16*** %171, !tbaa !5
  %172 = getelementptr inbounds i16**, i16*** %171, i64 1
  store i16** %l_90, i16*** %172, !tbaa !5
  %173 = bitcast i16**** %l_231 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %173) #1
  %174 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_232, i32 0, i64 4
  store i16*** %174, i16**** %l_231, align 8, !tbaa !5
  %175 = bitcast i16***** %l_230 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #1
  store i16**** %l_231, i16***** %l_230, align 8, !tbaa !5
  %176 = bitcast i16***** %l_251 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %176) #1
  store i16**** @g_210, i16***** %l_251, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_254) #1
  store i8 -9, i8* %l_254, align 1, !tbaa !9
  %177 = bitcast i32* %l_257 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %177) #1
  store i32 1, i32* %l_257, align 4, !tbaa !1
  %178 = bitcast i32* %l_258 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %178) #1
  store i32 -1, i32* %l_258, align 4, !tbaa !1
  %179 = bitcast i32* %l_259 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %179) #1
  store i32 -3, i32* %l_259, align 4, !tbaa !1
  %180 = bitcast [5 x i32]* %l_260 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %180) #1
  %181 = bitcast i64** %l_307 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #1
  store i64* getelementptr inbounds ([1 x i64], [1 x i64]* @g_115, i32 0, i64 0), i64** %l_307, align 8, !tbaa !5
  %182 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %182) #1
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %183

; <label>:183                                     ; preds = %190, %161
  %184 = load i32, i32* %i4, align 4, !tbaa !1
  %185 = icmp slt i32 %184, 5
  br i1 %185, label %186, label %193

; <label>:186                                     ; preds = %183
  %187 = load i32, i32* %i4, align 4, !tbaa !1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [5 x i32], [5 x i32]* %l_260, i32 0, i64 %188
  store i32 -3, i32* %189, align 4, !tbaa !1
  br label %190

; <label>:190                                     ; preds = %186
  %191 = load i32, i32* %i4, align 4, !tbaa !1
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %i4, align 4, !tbaa !1
  br label %183

; <label>:193                                     ; preds = %183
  store i16 0, i16* @g_33, align 2, !tbaa !10
  br label %194

; <label>:194                                     ; preds = %237, %193
  %195 = load i16, i16* @g_33, align 2, !tbaa !10
  %196 = zext i16 %195 to i32
  %197 = icmp sle i32 %196, 8
  br i1 %197, label %198, label %242

; <label>:198                                     ; preds = %194
  call void @llvm.lifetime.start(i64 1, i8* %l_213) #1
  store i8 88, i8* %l_213, align 1, !tbaa !9
  %199 = bitcast i32*** %l_215 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %199) #1
  %200 = getelementptr inbounds [4 x i32*], [4 x i32*]* %l_23, i32 0, i64 3
  store i32** %200, i32*** %l_215, align 8, !tbaa !5
  store i16 0, i16* @g_34, align 2, !tbaa !10
  br label %201

; <label>:201                                     ; preds = %224, %198
  %202 = load i16, i16* @g_34, align 2, !tbaa !10
  %203 = zext i16 %202 to i32
  %204 = icmp sle i32 %203, 2
  br i1 %204, label %205, label %229

; <label>:205                                     ; preds = %201
  %206 = load i8, i8* %l_213, align 1, !tbaa !9
  %207 = sext i8 %206 to i32
  %208 = load i32*, i32** %l_15, align 8, !tbaa !5
  store i32 %207, i32* %208, align 4, !tbaa !1
  store i32 0, i32* @g_3, align 4, !tbaa !1
  br label %209

; <label>:209                                     ; preds = %220, %205
  %210 = load i32, i32* @g_3, align 4, !tbaa !1
  %211 = icmp sle i32 %210, 2
  br i1 %211, label %212, label %223

; <label>:212                                     ; preds = %209
  %213 = load i8, i8* %2, align 1, !tbaa !9
  %214 = icmp ne i8 %213, 0
  br i1 %214, label %215, label %216

; <label>:215                                     ; preds = %212
  br label %223

; <label>:216                                     ; preds = %212
  %217 = load i8, i8* %2, align 1, !tbaa !9
  %218 = sext i8 %217 to i32
  %219 = load i32*, i32** %l_8, align 8, !tbaa !5
  store i32 %218, i32* %219, align 4, !tbaa !1
  br label %220

; <label>:220                                     ; preds = %216
  %221 = load i32, i32* @g_3, align 4, !tbaa !1
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* @g_3, align 4, !tbaa !1
  br label %209

; <label>:223                                     ; preds = %215, %209
  br label %224

; <label>:224                                     ; preds = %223
  %225 = load i16, i16* @g_34, align 2, !tbaa !10
  %226 = zext i16 %225 to i32
  %227 = add nsw i32 %226, 1
  %228 = trunc i32 %227 to i16
  store i16 %228, i16* @g_34, align 2, !tbaa !10
  br label %201

; <label>:229                                     ; preds = %201
  %230 = load i32**, i32*** %l_215, align 8, !tbaa !5
  store i32* %l_123, i32** %230, align 8, !tbaa !5
  %231 = load i32*, i32** @g_121, align 8, !tbaa !5
  %232 = load volatile i32, i32* %231, align 4, !tbaa !1
  %233 = load i32*, i32** %l_8, align 8, !tbaa !5
  %234 = load i32, i32* %233, align 4, !tbaa !1
  %235 = and i32 %234, %232
  store i32 %235, i32* %233, align 4, !tbaa !1
  %236 = bitcast i32*** %l_215 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_213) #1
  br label %237

; <label>:237                                     ; preds = %229
  %238 = load i16, i16* @g_33, align 2, !tbaa !10
  %239 = zext i16 %238 to i32
  %240 = add nsw i32 %239, 1
  %241 = trunc i32 %240 to i16
  store i16 %241, i16* @g_33, align 2, !tbaa !10
  br label %194

; <label>:242                                     ; preds = %194
  store i64 0, i64* @g_27, align 8, !tbaa !7
  br label %243

; <label>:243                                     ; preds = %426, %242
  %244 = load i64, i64* @g_27, align 8, !tbaa !7
  %245 = icmp ule i64 %244, 0
  br i1 %245, label %246, label %429

; <label>:246                                     ; preds = %243
  %247 = bitcast i64* %l_216 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %247) #1
  store i64 5796508903679467066, i64* %l_216, align 8, !tbaa !7
  %248 = bitcast i32* %l_245 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %248) #1
  store i32 -7, i32* %l_245, align 4, !tbaa !1
  %249 = bitcast i32* %l_246 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %249) #1
  store i32 422278244, i32* %l_246, align 4, !tbaa !1
  %250 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %250) #1
  store i64 0, i64* %l_204, align 8, !tbaa !7
  br label %251

; <label>:251                                     ; preds = %405, %246
  %252 = load i64, i64* %l_204, align 8, !tbaa !7
  %253 = icmp sle i64 %252, 2
  br i1 %253, label %254, label %408

; <label>:254                                     ; preds = %251
  %255 = bitcast i64** %l_243 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %255) #1
  store i64* @g_244, i64** %l_243, align 8, !tbaa !5
  %256 = bitcast i16***** %l_247 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %256) #1
  store i16**** @g_210, i16***** %l_247, align 8, !tbaa !5
  %257 = bitcast i16****** %l_248 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %257) #1
  store i16***** null, i16****** %l_248, align 8, !tbaa !5
  %258 = bitcast i16****** %l_249 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %258) #1
  store i16***** null, i16****** %l_249, align 8, !tbaa !5
  %259 = bitcast [3 x [5 x i16*****]]* %l_250 to i8*
  call void @llvm.lifetime.start(i64 120, i8* %259) #1
  %260 = bitcast [3 x [5 x i16*****]]* %l_250 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %260, i8* bitcast ([3 x [5 x i16*****]]* @func_5.l_250 to i8*), i64 120, i32 16, i1 false)
  %261 = bitcast i8** %l_252 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %261) #1
  store i8* @g_253, i8** %l_252, align 8, !tbaa !5
  %262 = bitcast i32*** %l_256 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %262) #1
  store i32** %l_18, i32*** %l_256, align 8, !tbaa !5
  %263 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %263) #1
  %264 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %264) #1
  %265 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %265) #1
  %266 = load i32, i32* %l_217, align 4, !tbaa !1
  %267 = add i32 %266, 1
  store i32 %267, i32* %l_217, align 4, !tbaa !1
  %268 = load i64, i64* @g_27, align 8, !tbaa !7
  %269 = getelementptr inbounds [1 x i64], [1 x i64]* @g_115, i32 0, i64 %268
  %270 = load i64, i64* %269, align 8, !tbaa !7
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %273

; <label>:272                                     ; preds = %254
  store i32 31, i32* %3
  br label %393

; <label>:273                                     ; preds = %254
  %274 = load i64, i64* @g_27, align 8, !tbaa !7
  %275 = getelementptr inbounds [1 x i64], [1 x i64]* @g_115, i32 0, i64 %274
  %276 = load i64, i64* %275, align 8, !tbaa !7
  %277 = load i64, i64* @g_27, align 8, !tbaa !7
  %278 = getelementptr inbounds [1 x i64], [1 x i64]* @g_115, i32 0, i64 %277
  %279 = load i64, i64* %278, align 8, !tbaa !7
  %280 = load i32, i32* @g_136, align 4, !tbaa !1
  %281 = sext i32 %280 to i64
  %282 = load i16****, i16***** %l_230, align 8, !tbaa !5
  %283 = icmp eq i8* null, %2
  %284 = zext i1 %283 to i32
  %285 = load i64*, i64** %l_243, align 8, !tbaa !5
  store i64 -4764460063054154799, i64* %285, align 8, !tbaa !7
  %286 = load i16, i16* @g_33, align 2, !tbaa !10
  %287 = zext i16 %286 to i64
  %288 = icmp eq i64 -4764460063054154799, %287
  %289 = zext i1 %288 to i32
  %290 = load i32, i32* %l_245, align 4, !tbaa !1
  %291 = xor i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @g_115, i32 0, i64 0), align 8, !tbaa !7
  %294 = icmp eq i64 %292, %293
  %295 = zext i1 %294 to i32
  %296 = xor i32 %295, -1
  %297 = sext i32 %296 to i64
  %298 = icmp sle i64 %297, 8
  %299 = zext i1 %298 to i32
  %300 = sext i32 %299 to i64
  %301 = icmp eq i64 50, %300
  %302 = zext i1 %301 to i32
  %303 = trunc i32 %302 to i8
  %304 = load i16, i16* @g_34, align 2, !tbaa !10
  %305 = trunc i16 %304 to i8
  %306 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %303, i8 zeroext %305)
  %307 = zext i8 %306 to i32
  %308 = load i32, i32* %l_123, align 4, !tbaa !1
  %309 = icmp sgt i32 %307, %308
  %310 = zext i1 %309 to i32
  %311 = trunc i32 %310 to i16
  %312 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %311, i16 signext -24180)
  %313 = sext i16 %312 to i32
  %314 = load i8, i8* %2, align 1, !tbaa !9
  %315 = sext i8 %314 to i32
  %316 = icmp ne i32 %313, %315
  %317 = xor i1 %316, true
  %318 = zext i1 %317 to i32
  %319 = trunc i32 %318 to i8
  %320 = load i8, i8* %2, align 1, !tbaa !9
  %321 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %319, i8 zeroext %320)
  %322 = zext i8 %321 to i32
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %328

; <label>:324                                     ; preds = %273
  %325 = load i8, i8* %2, align 1, !tbaa !9
  %326 = sext i8 %325 to i32
  %327 = icmp ne i32 %326, 0
  br label %328

; <label>:328                                     ; preds = %324, %273
  %329 = phi i1 [ false, %273 ], [ %327, %324 ]
  %330 = zext i1 %329 to i32
  %331 = sext i32 %330 to i64
  %332 = icmp sgt i64 %331, 105
  %333 = zext i1 %332 to i32
  %334 = icmp sle i32 %284, %333
  %335 = zext i1 %334 to i32
  store i32 %335, i32* %l_246, align 4, !tbaa !1
  br i1 %334, label %340, label %336

; <label>:336                                     ; preds = %328
  %337 = load i8, i8* %2, align 1, !tbaa !9
  %338 = sext i8 %337 to i32
  %339 = icmp ne i32 %338, 0
  br label %340

; <label>:340                                     ; preds = %336, %328
  %341 = phi i1 [ true, %328 ], [ %339, %336 ]
  %342 = zext i1 %341 to i32
  %343 = load i16****, i16***** %l_247, align 8, !tbaa !5
  store i16**** %343, i16***** %l_251, align 8, !tbaa !5
  %344 = icmp eq i16**** %282, %343
  %345 = zext i1 %344 to i32
  %346 = trunc i32 %345 to i8
  %347 = load i8*, i8** %l_252, align 8, !tbaa !5
  store i8 %346, i8* %347, align 1, !tbaa !9
  %348 = zext i8 %346 to i32
  %349 = load i8, i8* %2, align 1, !tbaa !9
  %350 = sext i8 %349 to i32
  %351 = icmp slt i32 %348, %350
  %352 = zext i1 %351 to i32
  %353 = sext i32 %352 to i64
  %354 = load volatile i32, i32* @g_122, align 4, !tbaa !1
  %355 = sext i32 %354 to i64
  %356 = call i64 @safe_add_func_uint64_t_u_u(i64 %353, i64 %355)
  %357 = trunc i64 %356 to i32
  %358 = call i32 @safe_div_func_int32_t_s_s(i32 %357, i32 169130493)
  %359 = trunc i32 %358 to i8
  %360 = load i64, i64* @g_114, align 8, !tbaa !7
  %361 = trunc i64 %360 to i8
  %362 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %359, i8 zeroext %361)
  %363 = load i32, i32* %l_123, align 4, !tbaa !1
  %364 = sext i32 %363 to i64
  %365 = icmp sge i64 56027, %364
  %366 = zext i1 %365 to i32
  %367 = sext i32 %366 to i64
  %368 = icmp slt i64 %367, 12578
  %369 = zext i1 %368 to i32
  %370 = load i8, i8* %l_254, align 1, !tbaa !9
  %371 = sext i8 %370 to i32
  %372 = icmp sge i32 %369, %371
  %373 = zext i1 %372 to i32
  %374 = load i32, i32* @g_255, align 4, !tbaa !1
  %375 = or i32 %374, %373
  store i32 %375, i32* @g_255, align 4, !tbaa !1
  %376 = sext i32 %375 to i64
  %377 = call i64 @safe_div_func_int64_t_s_s(i64 %281, i64 %376)
  %378 = icmp eq i64 %279, %377
  %379 = zext i1 %378 to i32
  %380 = sext i32 %379 to i64
  %381 = icmp eq i64 %276, %380
  br i1 %381, label %383, label %382

; <label>:382                                     ; preds = %340
  br label %383

; <label>:383                                     ; preds = %382, %340
  %384 = phi i1 [ true, %340 ], [ true, %382 ]
  %385 = zext i1 %384 to i32
  %386 = trunc i32 %385 to i8
  %387 = load i16*, i16** %l_201, align 8, !tbaa !5
  %388 = getelementptr inbounds [2 x [7 x i32]], [2 x [7 x i32]]* %l_12, i32 0, i64 0
  %389 = getelementptr inbounds [7 x i32], [7 x i32]* %388, i32 0, i64 3
  %390 = load i16*, i16** %l_201, align 8, !tbaa !5
  %391 = call i32* @func_77(i8 signext %386, i32* %l_123, i16* %387, i32* %389, i16* %390)
  %392 = load i32**, i32*** %l_256, align 8, !tbaa !5
  store i32* %391, i32** %392, align 8, !tbaa !5
  store i32 0, i32* %3
  br label %393

; <label>:393                                     ; preds = %383, %272
  %394 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %394) #1
  %395 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %395) #1
  %396 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %396) #1
  %397 = bitcast i32*** %l_256 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %397) #1
  %398 = bitcast i8** %l_252 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %398) #1
  %399 = bitcast [3 x [5 x i16*****]]* %l_250 to i8*
  call void @llvm.lifetime.end(i64 120, i8* %399) #1
  %400 = bitcast i16****** %l_249 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %400) #1
  %401 = bitcast i16****** %l_248 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %401) #1
  %402 = bitcast i16***** %l_247 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %402) #1
  %403 = bitcast i64** %l_243 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %403) #1
  %cleanup.dest = load i32, i32* %3
  switch i32 %cleanup.dest, label %1130 [
    i32 0, label %404
    i32 31, label %405
  ]

; <label>:404                                     ; preds = %393
  br label %405

; <label>:405                                     ; preds = %404, %393
  %406 = load i64, i64* %l_204, align 8, !tbaa !7
  %407 = add nsw i64 %406, 1
  store i64 %407, i64* %l_204, align 8, !tbaa !7
  br label %251

; <label>:408                                     ; preds = %251
  %409 = getelementptr inbounds [5 x i32], [5 x i32]* %l_260, i32 0, i64 1
  %410 = load i32, i32* %409, align 4, !tbaa !1
  %411 = add i32 %410, 1
  store i32 %411, i32* %409, align 4, !tbaa !1
  %412 = load i16, i16* %l_266, align 2, !tbaa !10
  %413 = add i16 %412, 1
  store i16 %413, i16* %l_266, align 2, !tbaa !10
  %414 = load i64, i64* @g_27, align 8, !tbaa !7
  %415 = getelementptr inbounds [1 x i64], [1 x i64]* @g_115, i32 0, i64 %414
  %416 = load i64, i64* %415, align 8, !tbaa !7
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %419

; <label>:418                                     ; preds = %408
  store i32 26, i32* %3
  br label %420

; <label>:419                                     ; preds = %408
  store i32 0, i32* %3
  br label %420

; <label>:420                                     ; preds = %419, %418
  %421 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %421) #1
  %422 = bitcast i32* %l_246 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %422) #1
  %423 = bitcast i32* %l_245 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %423) #1
  %424 = bitcast i64* %l_216 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %424) #1
  %cleanup.dest.9 = load i32, i32* %3
  switch i32 %cleanup.dest.9, label %1130 [
    i32 0, label %425
    i32 26, label %429
  ]

; <label>:425                                     ; preds = %420
  br label %426

; <label>:426                                     ; preds = %425
  %427 = load i64, i64* @g_27, align 8, !tbaa !7
  %428 = add i64 %427, 1
  store i64 %428, i64* @g_27, align 8, !tbaa !7
  br label %243

; <label>:429                                     ; preds = %420, %243
  store i64 2, i64* %l_204, align 8, !tbaa !7
  br label %430

; <label>:430                                     ; preds = %614, %429
  %431 = load i64, i64* %l_204, align 8, !tbaa !7
  %432 = icmp sge i64 %431, 0
  br i1 %432, label %433, label %617

; <label>:433                                     ; preds = %430
  %434 = bitcast i64**** %l_271 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %434) #1
  store i64*** null, i64**** %l_271, align 8, !tbaa !5
  %435 = bitcast i64**** %l_272 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %435) #1
  store i64*** @g_269, i64**** %l_272, align 8, !tbaa !5
  %436 = bitcast i8** %l_285 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %436) #1
  store i8* @g_253, i8** %l_285, align 8, !tbaa !5
  %437 = bitcast i32* %l_288 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %437) #1
  store i32 0, i32* %l_288, align 4, !tbaa !1
  %438 = load i32*, i32** %l_10, align 8, !tbaa !5
  %439 = load i32, i32* %438, align 4, !tbaa !1
  %440 = sext i32 %439 to i64
  %441 = xor i64 %440, 2004174626
  %442 = trunc i64 %441 to i32
  store i32 %442, i32* %438, align 4, !tbaa !1
  %443 = load i64**, i64*** @g_269, align 8, !tbaa !5
  %444 = load i64***, i64**** %l_272, align 8, !tbaa !5
  store i64** %443, i64*** %444, align 8, !tbaa !5
  %445 = load i16*****, i16****** %l_278, align 8, !tbaa !5
  store i16***** %445, i16****** %l_278, align 8, !tbaa !5
  %446 = icmp ne i16***** @g_209, %445
  br i1 %446, label %474, label %447

; <label>:447                                     ; preds = %433
  %448 = load i8, i8* %2, align 1, !tbaa !9
  %449 = sext i8 %448 to i64
  %450 = load i8, i8* @g_253, align 1, !tbaa !9
  %451 = load i8*, i8** %l_285, align 8, !tbaa !5
  store i8 %450, i8* %451, align 1, !tbaa !9
  %452 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %450, i32 1)
  %453 = zext i8 %452 to i32
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %458, label %455

; <label>:455                                     ; preds = %447
  %456 = load i32, i32* %l_123, align 4, !tbaa !1
  %457 = icmp ne i32 %456, 0
  br label %458

; <label>:458                                     ; preds = %455, %447
  %459 = phi i1 [ true, %447 ], [ %457, %455 ]
  %460 = zext i1 %459 to i32
  %461 = trunc i32 %460 to i16
  %462 = load i32, i32* %l_288, align 4, !tbaa !1
  %463 = trunc i32 %462 to i8
  %464 = load i8, i8* %2, align 1, !tbaa !9
  %465 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %463, i8 zeroext %464)
  %466 = zext i8 %465 to i32
  %467 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %461, i32 %466)
  %468 = sext i16 %467 to i64
  %469 = load i32, i32* %l_259, align 4, !tbaa !1
  %470 = sext i32 %469 to i64
  %471 = call i64 @safe_add_func_uint64_t_u_u(i64 %468, i64 %470)
  %472 = xor i64 %449, %471
  %473 = icmp ne i64 53, %472
  br label %474

; <label>:474                                     ; preds = %458, %433
  %475 = phi i1 [ true, %433 ], [ %473, %458 ]
  %476 = zext i1 %475 to i32
  %477 = sext i32 %476 to i64
  %478 = icmp sle i64 %477, 8
  %479 = zext i1 %478 to i32
  %480 = load i8, i8* %2, align 1, !tbaa !9
  %481 = sext i8 %480 to i32
  %482 = icmp sge i32 %479, %481
  %483 = zext i1 %482 to i32
  %484 = trunc i32 %483 to i8
  %485 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %484, i8 zeroext 78)
  %486 = zext i8 %485 to i64
  %487 = icmp sge i64 150, %486
  %488 = zext i1 %487 to i32
  store i32 %488, i32* %l_288, align 4, !tbaa !1
  %489 = trunc i32 %488 to i16
  %490 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %489, i32 2)
  %491 = zext i16 %490 to i32
  %492 = load i32*, i32** %l_22, align 8, !tbaa !5
  %493 = load i32, i32* %492, align 4, !tbaa !1
  %494 = xor i32 %493, %491
  store i32 %494, i32* %492, align 4, !tbaa !1
  store i8 2, i8* %2, align 1, !tbaa !9
  br label %495

; <label>:495                                     ; preds = %602, %474
  %496 = load i8, i8* %2, align 1, !tbaa !9
  %497 = sext i8 %496 to i32
  %498 = icmp sge i32 %497, 0
  br i1 %498, label %499, label %607

; <label>:499                                     ; preds = %495
  %500 = bitcast i32* %l_300 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %500) #1
  store i32 1, i32* %l_300, align 4, !tbaa !1
  %501 = load i32, i32* getelementptr inbounds ([10 x [8 x i32]], [10 x [8 x i32]]* @g_289, i32 0, i64 4, i64 7), align 4, !tbaa !1
  %502 = load i32*, i32** %l_10, align 8, !tbaa !5
  store i32 %501, i32* %502, align 4, !tbaa !1
  store i32 0, i32* %l_26, align 4, !tbaa !1
  br label %503

; <label>:503                                     ; preds = %595, %499
  %504 = load i32, i32* %l_26, align 4, !tbaa !1
  %505 = icmp sle i32 %504, 2
  br i1 %505, label %506, label %598

; <label>:506                                     ; preds = %503
  %507 = bitcast i64** %l_290 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %507) #1
  store i64* @g_27, i64** %l_290, align 8, !tbaa !5
  %508 = bitcast [8 x i32*]* %l_298 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %508) #1
  %509 = bitcast [8 x i32*]* %l_298 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %509, i8* bitcast ([8 x i32*]* @func_5.l_298 to i8*), i64 64, i32 16, i1 false)
  %510 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %510) #1
  %511 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %511) #1
  %512 = load i64*, i64** %l_290, align 8, !tbaa !5
  %513 = load i64, i64* %512, align 8, !tbaa !7
  %514 = add i64 %513, 1
  store i64 %514, i64* %512, align 8, !tbaa !7
  %515 = load i8, i8* %2, align 1, !tbaa !9
  %516 = sext i8 %515 to i32
  %517 = add nsw i32 %516, 1
  %518 = sext i32 %517 to i64
  %519 = load i64, i64* @g_114, align 8, !tbaa !7
  %520 = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* @g_289, i32 0, i64 %519
  %521 = getelementptr inbounds [8 x i32], [8 x i32]* %520, i32 0, i64 %518
  %522 = load i32, i32* %521, align 4, !tbaa !1
  %523 = zext i32 %522 to i64
  %524 = call i64 @safe_unary_minus_func_int64_t_s(i64 %523)
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %537, label %526

; <label>:526                                     ; preds = %506
  %527 = load i8*, i8** @g_150, align 8, !tbaa !5
  %528 = load i8, i8* %527, align 1, !tbaa !9
  %529 = icmp ne i8 %528, 0
  %530 = xor i1 %529, true
  %531 = zext i1 %530 to i32
  %532 = trunc i32 %531 to i16
  %533 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %532)
  %534 = load i16*, i16** %l_201, align 8, !tbaa !5
  store i16 %533, i16* %534, align 2, !tbaa !10
  %535 = zext i16 %533 to i32
  %536 = icmp ne i32 %535, 0
  br label %537

; <label>:537                                     ; preds = %526, %506
  %538 = phi i1 [ true, %506 ], [ %536, %526 ]
  %539 = zext i1 %538 to i32
  %540 = load i32, i32* %l_288, align 4, !tbaa !1
  %541 = icmp eq i32 %539, %540
  %542 = zext i1 %541 to i32
  %543 = load i16, i16* @g_34, align 2, !tbaa !10
  %544 = zext i16 %543 to i32
  %545 = icmp sge i32 %542, %544
  %546 = zext i1 %545 to i32
  %547 = load i32, i32* %l_264, align 4, !tbaa !1
  %548 = and i32 %547, %546
  store i32 %548, i32* %l_264, align 4, !tbaa !1
  store i32 %548, i32* @g_255, align 4, !tbaa !1
  %549 = load i32, i32* %l_264, align 4, !tbaa !1
  %550 = load i32, i32* %l_288, align 4, !tbaa !1
  %551 = load i32, i32* %l_26, align 4, !tbaa !1
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds [3 x i8], [3 x i8]* @g_31, i32 0, i64 %552
  %554 = load i8, i8* %553, align 1, !tbaa !9
  %555 = sext i8 %554 to i32
  %556 = xor i32 %555, %550
  %557 = trunc i32 %556 to i8
  store i8 %557, i8* %553, align 1, !tbaa !9
  %558 = sext i8 %557 to i32
  %559 = xor i32 %558, -1
  %560 = load i32, i32* %l_265, align 4, !tbaa !1
  %561 = and i32 %560, %559
  store i32 %561, i32* %l_265, align 4, !tbaa !1
  %562 = load i8*, i8** %l_285, align 8, !tbaa !5
  %563 = load i8, i8* %562, align 1, !tbaa !9
  %564 = zext i8 %563 to i32
  %565 = or i32 %564, %561
  %566 = trunc i32 %565 to i8
  store i8 %566, i8* %562, align 1, !tbaa !9
  %567 = zext i8 %566 to i32
  %568 = load i32, i32* %l_258, align 4, !tbaa !1
  %569 = icmp eq i32 %567, %568
  %570 = zext i1 %569 to i32
  %571 = load i32, i32* %l_300, align 4, !tbaa !1
  %572 = icmp ult i32 %570, %571
  %573 = zext i1 %572 to i32
  %574 = icmp sgt i32 %549, %573
  %575 = zext i1 %574 to i32
  %576 = load i8, i8* %2, align 1, !tbaa !9
  %577 = sext i8 %576 to i32
  %578 = xor i32 %575, %577
  %579 = trunc i32 %578 to i16
  %580 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext -1, i16 signext %579)
  %581 = sext i16 %580 to i64
  %582 = icmp ult i64 %514, %581
  %583 = zext i1 %582 to i32
  %584 = load i32*, i32** %l_15, align 8, !tbaa !5
  %585 = load i32, i32* %584, align 4, !tbaa !1
  %586 = xor i32 %585, %583
  store i32 %586, i32* %584, align 4, !tbaa !1
  %587 = getelementptr inbounds [10 x [6 x [4 x i8*]]], [10 x [6 x [4 x i8*]]]* %l_301, i32 0, i64 3
  %588 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %587, i32 0, i64 5
  %589 = getelementptr inbounds [4 x i8*], [4 x i8*]* %588, i32 0, i64 0
  %590 = load i8*, i8** %589, align 8, !tbaa !5
  store i8* %590, i8** %1
  store i32 1, i32* %3
  %591 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %591) #1
  %592 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %592) #1
  %593 = bitcast [8 x i32*]* %l_298 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %593) #1
  %594 = bitcast i64** %l_290 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %594) #1
  br label %600
                                                  ; No predecessors!
  %596 = load i32, i32* %l_26, align 4, !tbaa !1
  %597 = add nsw i32 %596, 1
  store i32 %597, i32* %l_26, align 4, !tbaa !1
  br label %503

; <label>:598                                     ; preds = %503
  %599 = load i8*, i8** %l_30, align 8, !tbaa !5
  store i8* %599, i8** %1
  store i32 1, i32* %3
  br label %600

; <label>:600                                     ; preds = %598, %537
  %601 = bitcast i32* %l_300 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %601) #1
  br label %608
                                                  ; No predecessors!
  %603 = load i8, i8* %2, align 1, !tbaa !9
  %604 = sext i8 %603 to i32
  %605 = sub nsw i32 %604, 1
  %606 = trunc i32 %605 to i8
  store i8 %606, i8* %2, align 1, !tbaa !9
  br label %495

; <label>:607                                     ; preds = %495
  store i32 0, i32* %3
  br label %608

; <label>:608                                     ; preds = %607, %600
  %609 = bitcast i32* %l_288 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %609) #1
  %610 = bitcast i8** %l_285 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %610) #1
  %611 = bitcast i64**** %l_272 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %611) #1
  %612 = bitcast i64**** %l_271 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %612) #1
  %cleanup.dest.12 = load i32, i32* %3
  switch i32 %cleanup.dest.12, label %871 [
    i32 0, label %613
  ]

; <label>:613                                     ; preds = %608
  br label %614

; <label>:614                                     ; preds = %613
  %615 = load i64, i64* %l_204, align 8, !tbaa !7
  %616 = sub nsw i64 %615, 1
  store i64 %616, i64* %l_204, align 8, !tbaa !7
  br label %430

; <label>:617                                     ; preds = %430
  store i32 2, i32* %l_26, align 4, !tbaa !1
  br label %618

; <label>:618                                     ; preds = %867, %617
  %619 = load i32, i32* %l_26, align 4, !tbaa !1
  %620 = icmp sge i32 %619, 0
  br i1 %620, label %621, label %870

; <label>:621                                     ; preds = %618
  %622 = bitcast %union.U0* %l_318 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %622) #1
  %623 = bitcast %union.U0* %l_318 to i8*
  call void @llvm.memset.p0i8.i64(i8* %623, i8 0, i64 8, i32 8, i1 false)
  %624 = bitcast i32* %l_331 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %624) #1
  store i32 9, i32* %l_331, align 4, !tbaa !1
  store i32 2, i32* %l_257, align 4, !tbaa !1
  br label %625

; <label>:625                                     ; preds = %848, %621
  %626 = load i32, i32* %l_257, align 4, !tbaa !1
  %627 = icmp sge i32 %626, 0
  br i1 %627, label %628, label %851

; <label>:628                                     ; preds = %625
  %629 = bitcast i32* %l_315 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %629) #1
  store i32 257783058, i32* %l_315, align 4, !tbaa !1
  store i32 0, i32* %l_259, align 4, !tbaa !1
  br label %630

; <label>:630                                     ; preds = %827, %628
  %631 = load i32, i32* %l_259, align 4, !tbaa !1
  %632 = icmp sle i32 %631, 2
  br i1 %632, label %633, label %830

; <label>:633                                     ; preds = %630
  %634 = bitcast [9 x [4 x i64**]]* %l_308 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %634) #1
  %635 = getelementptr inbounds [9 x [4 x i64**]], [9 x [4 x i64**]]* %l_308, i64 0, i64 0
  %636 = getelementptr inbounds [4 x i64**], [4 x i64**]* %635, i64 0, i64 0
  store i64** %l_307, i64*** %636, !tbaa !5
  %637 = getelementptr inbounds i64**, i64*** %636, i64 1
  store i64** %l_307, i64*** %637, !tbaa !5
  %638 = getelementptr inbounds i64**, i64*** %637, i64 1
  store i64** %l_307, i64*** %638, !tbaa !5
  %639 = getelementptr inbounds i64**, i64*** %638, i64 1
  store i64** %l_307, i64*** %639, !tbaa !5
  %640 = getelementptr inbounds [4 x i64**], [4 x i64**]* %635, i64 1
  %641 = getelementptr inbounds [4 x i64**], [4 x i64**]* %640, i64 0, i64 0
  store i64** %l_307, i64*** %641, !tbaa !5
  %642 = getelementptr inbounds i64**, i64*** %641, i64 1
  store i64** %l_307, i64*** %642, !tbaa !5
  %643 = getelementptr inbounds i64**, i64*** %642, i64 1
  store i64** %l_307, i64*** %643, !tbaa !5
  %644 = getelementptr inbounds i64**, i64*** %643, i64 1
  store i64** %l_307, i64*** %644, !tbaa !5
  %645 = getelementptr inbounds [4 x i64**], [4 x i64**]* %640, i64 1
  %646 = getelementptr inbounds [4 x i64**], [4 x i64**]* %645, i64 0, i64 0
  store i64** %l_307, i64*** %646, !tbaa !5
  %647 = getelementptr inbounds i64**, i64*** %646, i64 1
  store i64** %l_307, i64*** %647, !tbaa !5
  %648 = getelementptr inbounds i64**, i64*** %647, i64 1
  store i64** %l_307, i64*** %648, !tbaa !5
  %649 = getelementptr inbounds i64**, i64*** %648, i64 1
  store i64** %l_307, i64*** %649, !tbaa !5
  %650 = getelementptr inbounds [4 x i64**], [4 x i64**]* %645, i64 1
  %651 = getelementptr inbounds [4 x i64**], [4 x i64**]* %650, i64 0, i64 0
  store i64** %l_307, i64*** %651, !tbaa !5
  %652 = getelementptr inbounds i64**, i64*** %651, i64 1
  store i64** %l_307, i64*** %652, !tbaa !5
  %653 = getelementptr inbounds i64**, i64*** %652, i64 1
  store i64** %l_307, i64*** %653, !tbaa !5
  %654 = getelementptr inbounds i64**, i64*** %653, i64 1
  store i64** %l_307, i64*** %654, !tbaa !5
  %655 = getelementptr inbounds [4 x i64**], [4 x i64**]* %650, i64 1
  %656 = getelementptr inbounds [4 x i64**], [4 x i64**]* %655, i64 0, i64 0
  store i64** %l_307, i64*** %656, !tbaa !5
  %657 = getelementptr inbounds i64**, i64*** %656, i64 1
  store i64** %l_307, i64*** %657, !tbaa !5
  %658 = getelementptr inbounds i64**, i64*** %657, i64 1
  store i64** %l_307, i64*** %658, !tbaa !5
  %659 = getelementptr inbounds i64**, i64*** %658, i64 1
  store i64** %l_307, i64*** %659, !tbaa !5
  %660 = getelementptr inbounds [4 x i64**], [4 x i64**]* %655, i64 1
  %661 = getelementptr inbounds [4 x i64**], [4 x i64**]* %660, i64 0, i64 0
  store i64** %l_307, i64*** %661, !tbaa !5
  %662 = getelementptr inbounds i64**, i64*** %661, i64 1
  store i64** %l_307, i64*** %662, !tbaa !5
  %663 = getelementptr inbounds i64**, i64*** %662, i64 1
  store i64** %l_307, i64*** %663, !tbaa !5
  %664 = getelementptr inbounds i64**, i64*** %663, i64 1
  store i64** %l_307, i64*** %664, !tbaa !5
  %665 = getelementptr inbounds [4 x i64**], [4 x i64**]* %660, i64 1
  %666 = getelementptr inbounds [4 x i64**], [4 x i64**]* %665, i64 0, i64 0
  store i64** %l_307, i64*** %666, !tbaa !5
  %667 = getelementptr inbounds i64**, i64*** %666, i64 1
  store i64** %l_307, i64*** %667, !tbaa !5
  %668 = getelementptr inbounds i64**, i64*** %667, i64 1
  store i64** %l_307, i64*** %668, !tbaa !5
  %669 = getelementptr inbounds i64**, i64*** %668, i64 1
  store i64** %l_307, i64*** %669, !tbaa !5
  %670 = getelementptr inbounds [4 x i64**], [4 x i64**]* %665, i64 1
  %671 = getelementptr inbounds [4 x i64**], [4 x i64**]* %670, i64 0, i64 0
  store i64** %l_307, i64*** %671, !tbaa !5
  %672 = getelementptr inbounds i64**, i64*** %671, i64 1
  store i64** %l_307, i64*** %672, !tbaa !5
  %673 = getelementptr inbounds i64**, i64*** %672, i64 1
  store i64** %l_307, i64*** %673, !tbaa !5
  %674 = getelementptr inbounds i64**, i64*** %673, i64 1
  store i64** %l_307, i64*** %674, !tbaa !5
  %675 = getelementptr inbounds [4 x i64**], [4 x i64**]* %670, i64 1
  %676 = getelementptr inbounds [4 x i64**], [4 x i64**]* %675, i64 0, i64 0
  store i64** %l_307, i64*** %676, !tbaa !5
  %677 = getelementptr inbounds i64**, i64*** %676, i64 1
  store i64** %l_307, i64*** %677, !tbaa !5
  %678 = getelementptr inbounds i64**, i64*** %677, i64 1
  store i64** %l_307, i64*** %678, !tbaa !5
  %679 = getelementptr inbounds i64**, i64*** %678, i64 1
  store i64** %l_307, i64*** %679, !tbaa !5
  %680 = bitcast i32* %l_312 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %680) #1
  store i32 0, i32* %l_312, align 4, !tbaa !1
  %681 = bitcast %union.U0** %l_329 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %681) #1
  store %union.U0* %l_318, %union.U0** %l_329, align 8, !tbaa !5
  %682 = bitcast [1 x [4 x %union.U0*]]* %l_330 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %682) #1
  %683 = bitcast [8 x [9 x [3 x i8*]]]* %l_332 to i8*
  call void @llvm.lifetime.start(i64 1728, i8* %683) #1
  %684 = bitcast [8 x [9 x [3 x i8*]]]* %l_332 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %684, i8* bitcast ([8 x [9 x [3 x i8*]]]* @func_5.l_332 to i8*), i64 1728, i32 16, i1 false)
  %685 = bitcast i32** %l_333 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %685) #1
  %686 = getelementptr inbounds [5 x i32], [5 x i32]* %l_260, i32 0, i64 1
  store i32* %686, i32** %l_333, align 8, !tbaa !5
  %687 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %687) #1
  %688 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %688) #1
  %689 = bitcast i32* %k15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %689) #1
  store i32 0, i32* %i13, align 4, !tbaa !1
  br label %690

; <label>:690                                     ; preds = %708, %633
  %691 = load i32, i32* %i13, align 4, !tbaa !1
  %692 = icmp slt i32 %691, 1
  br i1 %692, label %693, label %711

; <label>:693                                     ; preds = %690
  store i32 0, i32* %j14, align 4, !tbaa !1
  br label %694

; <label>:694                                     ; preds = %704, %693
  %695 = load i32, i32* %j14, align 4, !tbaa !1
  %696 = icmp slt i32 %695, 4
  br i1 %696, label %697, label %707

; <label>:697                                     ; preds = %694
  %698 = load i32, i32* %j14, align 4, !tbaa !1
  %699 = sext i32 %698 to i64
  %700 = load i32, i32* %i13, align 4, !tbaa !1
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds [1 x [4 x %union.U0*]], [1 x [4 x %union.U0*]]* %l_330, i32 0, i64 %701
  %703 = getelementptr inbounds [4 x %union.U0*], [4 x %union.U0*]* %702, i32 0, i64 %699
  store %union.U0* %l_277, %union.U0** %703, align 8, !tbaa !5
  br label %704

; <label>:704                                     ; preds = %697
  %705 = load i32, i32* %j14, align 4, !tbaa !1
  %706 = add nsw i32 %705, 1
  store i32 %706, i32* %j14, align 4, !tbaa !1
  br label %694

; <label>:707                                     ; preds = %694
  br label %708

; <label>:708                                     ; preds = %707
  %709 = load i32, i32* %i13, align 4, !tbaa !1
  %710 = add nsw i32 %709, 1
  store i32 %710, i32* %i13, align 4, !tbaa !1
  br label %690

; <label>:711                                     ; preds = %690
  %712 = load i64*, i64** %l_307, align 8, !tbaa !5
  store i64* %712, i64** getelementptr inbounds ([4 x i64*], [4 x i64*]* @g_309, i32 0, i64 1), align 8, !tbaa !5
  %713 = load i32, i32* %l_312, align 4, !tbaa !1
  %714 = load i32, i32* %l_315, align 4, !tbaa !1
  %715 = trunc i32 %714 to i16
  %716 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %715, i32 11)
  %717 = zext i16 %716 to i32
  %718 = load i64*, i64** %l_307, align 8, !tbaa !5
  %719 = load i64, i64* %718, align 8, !tbaa !7
  %720 = add i64 %719, 1
  store i64 %720, i64* %718, align 8, !tbaa !7
  %721 = load %union.U0*, %union.U0** %l_329, align 8, !tbaa !5
  %722 = bitcast %union.U0* %721 to i8*
  %723 = bitcast %union.U0* %l_318 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %722, i8* %723, i64 8, i32 8, i1 false), !tbaa.struct !12
  %724 = bitcast %union.U0* %721 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%union.U0* @g_125 to i8*), i8* %724, i64 8, i32 8, i1 false), !tbaa.struct !12
  %725 = bitcast i32** %l_19 to i8*
  %726 = icmp eq i8* null, %725
  %727 = zext i1 %726 to i32
  %728 = load i32, i32* %l_331, align 4, !tbaa !1
  %729 = icmp sle i32 %727, %728
  br i1 %729, label %730, label %731

; <label>:730                                     ; preds = %711
  br label %731

; <label>:731                                     ; preds = %730, %711
  %732 = phi i1 [ false, %711 ], [ true, %730 ]
  %733 = zext i1 %732 to i32
  %734 = trunc i32 %733 to i8
  store i8 %734, i8* @g_253, align 1, !tbaa !9
  %735 = load i32, i32* %l_331, align 4, !tbaa !1
  %736 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %734, i32 %735)
  %737 = zext i8 %736 to i32
  %738 = load i32*, i32** %l_333, align 8, !tbaa !5
  %739 = load i32, i32* %738, align 4, !tbaa !1
  %740 = xor i32 %739, %737
  store i32 %740, i32* %738, align 4, !tbaa !1
  store i32 %740, i32* getelementptr inbounds ([10 x [8 x i32]], [10 x [8 x i32]]* @g_289, i32 0, i64 4, i64 7), align 4, !tbaa !1
  %741 = call i32 @safe_add_func_uint32_t_u_u(i32 %740, i32 0)
  %742 = zext i32 %741 to i64
  %743 = call i64 @safe_sub_func_uint64_t_u_u(i64 -3000803814386897007, i64 %742)
  %744 = trunc i64 %743 to i8
  %745 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext -61, i8 zeroext %744)
  %746 = zext i8 %745 to i32
  %747 = load volatile i16, i16* getelementptr inbounds ([2 x [10 x [1 x i16]]], [2 x [10 x [1 x i16]]]* @g_179, i32 0, i64 1, i64 8, i64 0), align 2, !tbaa !10
  %748 = zext i16 %747 to i32
  %749 = icmp sge i32 %746, %748
  %750 = zext i1 %749 to i32
  %751 = load i32*, i32** @g_4, align 8, !tbaa !5
  store i32 %750, i32* %751, align 4, !tbaa !1
  %752 = load i8, i8* %2, align 1, !tbaa !9
  %753 = sext i8 %752 to i32
  %754 = call i32 @safe_div_func_int32_t_s_s(i32 %750, i32 %753)
  %755 = icmp sgt i32 %717, %754
  %756 = zext i1 %755 to i32
  %757 = load i32, i32* %l_315, align 4, !tbaa !1
  %758 = icmp ule i32 %756, %757
  %759 = zext i1 %758 to i32
  %760 = trunc i32 %759 to i8
  %761 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %760, i8 signext -111)
  %762 = sext i8 %761 to i32
  %763 = icmp sge i32 0, %762
  %764 = zext i1 %763 to i32
  %765 = icmp eq i64* %712, @g_244
  %766 = zext i1 %765 to i32
  %767 = sext i32 %766 to i64
  %768 = load i8, i8* %2, align 1, !tbaa !9
  %769 = sext i8 %768 to i64
  %770 = call i64 @safe_sub_func_int64_t_s_s(i64 %767, i64 %769)
  %771 = xor i64 %770, -1
  %772 = icmp ne i64 %771, 0
  br i1 %772, label %773, label %776

; <label>:773                                     ; preds = %731
  %774 = load i64, i64* %l_334, align 8, !tbaa !7
  %775 = icmp ne i64 %774, 0
  br label %776

; <label>:776                                     ; preds = %773, %731
  %777 = phi i1 [ false, %731 ], [ %775, %773 ]
  %778 = zext i1 %777 to i32
  %779 = sext i32 %778 to i64
  %780 = icmp ugt i64 %779, 3
  %781 = zext i1 %780 to i32
  %782 = load i8, i8* %2, align 1, !tbaa !9
  %783 = sext i8 %782 to i32
  %784 = and i32 %781, %783
  %785 = icmp ne i32 %784, 0
  br i1 %785, label %790, label %786

; <label>:786                                     ; preds = %776
  %787 = load i8, i8* %2, align 1, !tbaa !9
  %788 = sext i8 %787 to i32
  %789 = icmp ne i32 %788, 0
  br label %790

; <label>:790                                     ; preds = %786, %776
  %791 = phi i1 [ true, %776 ], [ %789, %786 ]
  %792 = zext i1 %791 to i32
  %793 = load i32, i32* %l_265, align 4, !tbaa !1
  %794 = icmp sgt i32 %792, %793
  %795 = zext i1 %794 to i32
  %796 = sext i32 %795 to i64
  %797 = icmp eq i64 %796, 132
  %798 = zext i1 %797 to i32
  %799 = trunc i32 %798 to i16
  %800 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %799, i16 signext -1)
  %801 = sext i16 %800 to i32
  %802 = load i32*, i32** %l_15, align 8, !tbaa !5
  %803 = load i32, i32* %802, align 4, !tbaa !1
  %804 = or i32 %803, %801
  store i32 %804, i32* %802, align 4, !tbaa !1
  %805 = load i32, i32* %l_263, align 4, !tbaa !1
  %806 = icmp ne i32 %805, 0
  br i1 %806, label %807, label %808

; <label>:807                                     ; preds = %790
  store i32 47, i32* %3
  br label %816

; <label>:808                                     ; preds = %790
  %809 = load i8, i8* %2, align 1, !tbaa !9
  %810 = sext i8 %809 to i32
  %811 = load i32*, i32** %l_8, align 8, !tbaa !5
  store i32 %810, i32* %811, align 4, !tbaa !1
  %812 = load i8, i8* %2, align 1, !tbaa !9
  %813 = icmp ne i8 %812, 0
  br i1 %813, label %814, label %815

; <label>:814                                     ; preds = %808
  store i32 49, i32* %3
  br label %816

; <label>:815                                     ; preds = %808
  store i32 0, i32* %3
  br label %816

; <label>:816                                     ; preds = %815, %814, %807
  %817 = bitcast i32* %k15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %817) #1
  %818 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %818) #1
  %819 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %819) #1
  %820 = bitcast i32** %l_333 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %820) #1
  %821 = bitcast [8 x [9 x [3 x i8*]]]* %l_332 to i8*
  call void @llvm.lifetime.end(i64 1728, i8* %821) #1
  %822 = bitcast [1 x [4 x %union.U0*]]* %l_330 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %822) #1
  %823 = bitcast %union.U0** %l_329 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %823) #1
  %824 = bitcast i32* %l_312 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %824) #1
  %825 = bitcast [9 x [4 x i64**]]* %l_308 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %825) #1
  %cleanup.dest.16 = load i32, i32* %3
  switch i32 %cleanup.dest.16, label %1130 [
    i32 0, label %826
    i32 47, label %830
    i32 49, label %827
  ]

; <label>:826                                     ; preds = %816
  br label %827

; <label>:827                                     ; preds = %826, %816
  %828 = load i32, i32* %l_259, align 4, !tbaa !1
  %829 = add nsw i32 %828, 1
  store i32 %829, i32* %l_259, align 4, !tbaa !1
  br label %630

; <label>:830                                     ; preds = %816, %630
  %831 = load i32, i32* %l_259, align 4, !tbaa !1
  %832 = load i32, i32* %l_257, align 4, !tbaa !1
  %833 = load i32, i32* %l_331, align 4, !tbaa !1
  %834 = icmp sle i32 %832, %833
  %835 = zext i1 %834 to i32
  %836 = sext i32 %835 to i64
  %837 = icmp slt i64 %836, 4104668900
  %838 = zext i1 %837 to i32
  %839 = getelementptr inbounds [5 x i32], [5 x i32]* %l_260, i32 0, i64 2
  %840 = icmp ne i32* %839, null
  %841 = zext i1 %840 to i32
  %842 = or i32 %831, %841
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %844, label %845

; <label>:844                                     ; preds = %830
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8** %1
  store i32 1, i32* %3
  br label %846

; <label>:845                                     ; preds = %830
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8** %1
  store i32 1, i32* %3
  br label %846

; <label>:846                                     ; preds = %845, %844
  %847 = bitcast i32* %l_315 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %847) #1
  br label %864
                                                  ; No predecessors!
  %849 = load i32, i32* %l_257, align 4, !tbaa !1
  %850 = sub nsw i32 %849, 1
  store i32 %850, i32* %l_257, align 4, !tbaa !1
  br label %625

; <label>:851                                     ; preds = %625
  store i64 2, i64* %l_334, align 8, !tbaa !7
  br label %852

; <label>:852                                     ; preds = %860, %851
  %853 = load i64, i64* %l_334, align 8, !tbaa !7
  %854 = icmp sge i64 %853, 0
  br i1 %854, label %855, label %863

; <label>:855                                     ; preds = %852
  %856 = bitcast i16* %l_335 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %856) #1
  store i16 -8, i16* %l_335, align 2, !tbaa !10
  %857 = load i16, i16* %l_335, align 2, !tbaa !10
  %858 = add i16 %857, 1
  store i16 %858, i16* %l_335, align 2, !tbaa !10
  %859 = bitcast i16* %l_335 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %859) #1
  br label %860

; <label>:860                                     ; preds = %855
  %861 = load i64, i64* %l_334, align 8, !tbaa !7
  %862 = sub nsw i64 %861, 1
  store i64 %862, i64* %l_334, align 8, !tbaa !7
  br label %852

; <label>:863                                     ; preds = %852
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 2), i8** %1
  store i32 1, i32* %3
  br label %864

; <label>:864                                     ; preds = %863, %846
  %865 = bitcast i32* %l_331 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %865) #1
  %866 = bitcast %union.U0* %l_318 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %866) #1
  br label %871
                                                  ; No predecessors!
  %868 = load i32, i32* %l_26, align 4, !tbaa !1
  %869 = sub nsw i32 %868, 1
  store i32 %869, i32* %l_26, align 4, !tbaa !1
  br label %618

; <label>:870                                     ; preds = %618
  store i32 0, i32* %3
  br label %871

; <label>:871                                     ; preds = %870, %864, %608
  %872 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %872) #1
  %873 = bitcast i64** %l_307 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %873) #1
  %874 = bitcast [5 x i32]* %l_260 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %874) #1
  %875 = bitcast i32* %l_259 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %875) #1
  %876 = bitcast i32* %l_258 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %876) #1
  %877 = bitcast i32* %l_257 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %877) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_254) #1
  %878 = bitcast i16***** %l_251 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %878) #1
  %879 = bitcast i16***** %l_230 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %879) #1
  %880 = bitcast i16**** %l_231 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %880) #1
  %881 = bitcast [9 x i16**]* %l_232 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %881) #1
  %882 = bitcast i32* %l_217 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %882) #1
  %cleanup.dest.17 = load i32, i32* %3
  switch i32 %cleanup.dest.17, label %1085 [
    i32 0, label %883
  ]

; <label>:883                                     ; preds = %871
  br label %884

; <label>:884                                     ; preds = %883
  %885 = load i64, i64* @g_114, align 8, !tbaa !7
  %886 = sub nsw i64 %885, 1
  store i64 %886, i64* @g_114, align 8, !tbaa !7
  br label %158

; <label>:887                                     ; preds = %158
  store i32 3, i32* %l_265, align 4, !tbaa !1
  br label %888

; <label>:888                                     ; preds = %1081, %887
  %889 = load i32, i32* %l_265, align 4, !tbaa !1
  %890 = icmp sge i32 %889, -3
  br i1 %890, label %891, label %1084

; <label>:891                                     ; preds = %888
  %892 = bitcast i32** %l_369 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %892) #1
  store i32* %l_123, i32** %l_369, align 8, !tbaa !5
  %893 = bitcast i16** %l_371 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %893) #1
  store i16* @g_33, i16** %l_371, align 8, !tbaa !5
  store i64 0, i64* @g_114, align 8, !tbaa !7
  br label %894

; <label>:894                                     ; preds = %1075, %891
  %895 = load i64, i64* @g_114, align 8, !tbaa !7
  %896 = icmp sle i64 %895, -8
  br i1 %896, label %897, label %1078

; <label>:897                                     ; preds = %894
  %898 = bitcast [8 x i64]* %l_360 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %898) #1
  %899 = bitcast [8 x i64]* %l_360 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %899, i8* bitcast ([8 x i64]* @func_5.l_360 to i8*), i64 64, i32 16, i1 false)
  %900 = bitcast i32* %l_362 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %900) #1
  store i32 -1074057201, i32* %l_362, align 4, !tbaa !1
  %901 = bitcast i16** %l_373 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %901) #1
  store i16* @g_34, i16** %l_373, align 8, !tbaa !5
  %902 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %902) #1
  %903 = load i8*, i8** @g_150, align 8, !tbaa !5
  %904 = load i8, i8* %903, align 1, !tbaa !9
  %905 = load i16, i16* %l_266, align 2, !tbaa !10
  %906 = zext i16 %905 to i32
  %907 = load volatile i16, i16* getelementptr inbounds ([2 x [10 x [1 x i16]]], [2 x [10 x [1 x i16]]]* @g_179, i32 0, i64 1, i64 8, i64 0), align 2, !tbaa !10
  %908 = zext i16 %907 to i32
  %909 = load i64, i64* %l_334, align 8, !tbaa !7
  %910 = load i64, i64* @g_244, align 8, !tbaa !7
  %911 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), align 1, !tbaa !9
  %912 = sext i8 %911 to i64
  %913 = and i64 %910, %912
  %914 = trunc i64 %913 to i16
  %915 = load i8, i8* %2, align 1, !tbaa !9
  %916 = sext i8 %915 to i16
  %917 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %914, i16 signext %916)
  %918 = load i16, i16* %l_266, align 2, !tbaa !10
  %919 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %917, i16 signext %918)
  %920 = sext i16 %919 to i32
  %921 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_359, i32 0, i64 0), align 1, !tbaa !9
  %922 = sext i8 %921 to i32
  %923 = icmp slt i32 %920, %922
  %924 = zext i1 %923 to i32
  %925 = icmp ne i32 0, %924
  %926 = zext i1 %925 to i32
  %927 = sext i32 %926 to i64
  %928 = icmp sgt i64 77, %927
  %929 = zext i1 %928 to i32
  %930 = getelementptr inbounds [8 x i64], [8 x i64]* %l_360, i32 0, i64 5
  %931 = load i64, i64* %930, align 8, !tbaa !7
  %932 = icmp ne i64 %909, %931
  %933 = zext i1 %932 to i32
  %934 = sext i32 %933 to i64
  %935 = load i8, i8* getelementptr inbounds ([2 x [6 x [3 x i8]]], [2 x [6 x [3 x i8]]]* @func_5.l_361, i32 0, i64 0, i64 3, i64 2), align 1, !tbaa !9
  %936 = zext i8 %935 to i64
  %937 = call i64 @safe_add_func_uint64_t_u_u(i64 %934, i64 %936)
  %938 = load i8, i8* %2, align 1, !tbaa !9
  %939 = sext i8 %938 to i64
  %940 = icmp ne i64 %937, %939
  %941 = zext i1 %940 to i32
  %942 = icmp sle i32 %908, %941
  %943 = zext i1 %942 to i32
  %944 = load i32, i32* @g_255, align 4, !tbaa !1
  %945 = icmp slt i32 %943, %944
  %946 = zext i1 %945 to i32
  %947 = load i32, i32* %l_362, align 4, !tbaa !1
  %948 = and i32 %947, %946
  store i32 %948, i32* %l_362, align 4, !tbaa !1
  %949 = sext i32 %948 to i64
  %950 = load i8, i8* %2, align 1, !tbaa !9
  %951 = sext i8 %950 to i64
  %952 = call i64 @safe_sub_func_uint64_t_u_u(i64 %949, i64 %951)
  %953 = trunc i64 %952 to i32
  %954 = load i32, i32* @g_255, align 4, !tbaa !1
  %955 = call i32 @safe_sub_func_uint32_t_u_u(i32 %953, i32 %954)
  %956 = icmp ule i32 %906, %955
  %957 = zext i1 %956 to i32
  %958 = load i32, i32* @g_136, align 4, !tbaa !1
  %959 = load i8, i8* %2, align 1, !tbaa !9
  %960 = sext i8 %959 to i64
  %961 = call i64 @safe_mod_func_uint64_t_u_u(i64 %960, i64 -8667074923988012344)
  %962 = trunc i64 %961 to i8
  %963 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %904, i8 signext %962)
  %964 = sext i8 %963 to i64
  %965 = icmp ne i64 %964, 1
  %966 = zext i1 %965 to i32
  %967 = load i32*, i32** %l_10, align 8, !tbaa !5
  store i32 %966, i32* %967, align 4, !tbaa !1
  %968 = load i8, i8* %2, align 1, !tbaa !9
  %969 = sext i8 %968 to i32
  %970 = load i32*, i32** %l_11, align 8, !tbaa !5
  %971 = load i32, i32* %970, align 4, !tbaa !1
  %972 = and i32 %971, %969
  store i32 %972, i32* %970, align 4, !tbaa !1
  %973 = load i32*, i32** %l_8, align 8, !tbaa !5
  %974 = load i32, i32* %973, align 4, !tbaa !1
  %975 = xor i32 %974, %972
  store i32 %975, i32* %973, align 4, !tbaa !1
  store i64 0, i64* @g_205, align 8, !tbaa !7
  br label %976

; <label>:976                                     ; preds = %1067, %897
  %977 = load i64, i64* @g_205, align 8, !tbaa !7
  %978 = icmp sle i64 %977, -13
  br i1 %978, label %979, label %1070

; <label>:979                                     ; preds = %976
  %980 = bitcast i32* %l_368 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %980) #1
  store i32 382263713, i32* %l_368, align 4, !tbaa !1
  %981 = bitcast [9 x [3 x i16*]]* %l_370 to i8*
  call void @llvm.lifetime.start(i64 216, i8* %981) #1
  %982 = getelementptr inbounds [9 x [3 x i16*]], [9 x [3 x i16*]]* %l_370, i64 0, i64 0
  %983 = getelementptr inbounds [3 x i16*], [3 x i16*]* %982, i64 0, i64 0
  store i16* @g_33, i16** %983, !tbaa !5
  %984 = getelementptr inbounds i16*, i16** %983, i64 1
  store i16* @g_33, i16** %984, !tbaa !5
  %985 = getelementptr inbounds i16*, i16** %984, i64 1
  store i16* @g_33, i16** %985, !tbaa !5
  %986 = getelementptr inbounds [3 x i16*], [3 x i16*]* %982, i64 1
  %987 = getelementptr inbounds [3 x i16*], [3 x i16*]* %986, i64 0, i64 0
  store i16* null, i16** %987, !tbaa !5
  %988 = getelementptr inbounds i16*, i16** %987, i64 1
  store i16* null, i16** %988, !tbaa !5
  %989 = getelementptr inbounds i16*, i16** %988, i64 1
  store i16* @g_33, i16** %989, !tbaa !5
  %990 = getelementptr inbounds [3 x i16*], [3 x i16*]* %986, i64 1
  %991 = getelementptr inbounds [3 x i16*], [3 x i16*]* %990, i64 0, i64 0
  store i16* @g_33, i16** %991, !tbaa !5
  %992 = getelementptr inbounds i16*, i16** %991, i64 1
  store i16* @g_33, i16** %992, !tbaa !5
  %993 = getelementptr inbounds i16*, i16** %992, i64 1
  store i16* @g_33, i16** %993, !tbaa !5
  %994 = getelementptr inbounds [3 x i16*], [3 x i16*]* %990, i64 1
  %995 = getelementptr inbounds [3 x i16*], [3 x i16*]* %994, i64 0, i64 0
  store i16* @g_33, i16** %995, !tbaa !5
  %996 = getelementptr inbounds i16*, i16** %995, i64 1
  store i16* %l_266, i16** %996, !tbaa !5
  %997 = getelementptr inbounds i16*, i16** %996, i64 1
  store i16* %l_266, i16** %997, !tbaa !5
  %998 = getelementptr inbounds [3 x i16*], [3 x i16*]* %994, i64 1
  %999 = getelementptr inbounds [3 x i16*], [3 x i16*]* %998, i64 0, i64 0
  store i16* @g_33, i16** %999, !tbaa !5
  %1000 = getelementptr inbounds i16*, i16** %999, i64 1
  store i16* %l_266, i16** %1000, !tbaa !5
  %1001 = getelementptr inbounds i16*, i16** %1000, i64 1
  store i16* @g_33, i16** %1001, !tbaa !5
  %1002 = getelementptr inbounds [3 x i16*], [3 x i16*]* %998, i64 1
  %1003 = getelementptr inbounds [3 x i16*], [3 x i16*]* %1002, i64 0, i64 0
  store i16* null, i16** %1003, !tbaa !5
  %1004 = getelementptr inbounds i16*, i16** %1003, i64 1
  store i16* @g_33, i16** %1004, !tbaa !5
  %1005 = getelementptr inbounds i16*, i16** %1004, i64 1
  store i16* %l_266, i16** %1005, !tbaa !5
  %1006 = getelementptr inbounds [3 x i16*], [3 x i16*]* %1002, i64 1
  %1007 = getelementptr inbounds [3 x i16*], [3 x i16*]* %1006, i64 0, i64 0
  store i16* @g_33, i16** %1007, !tbaa !5
  %1008 = getelementptr inbounds i16*, i16** %1007, i64 1
  store i16* @g_33, i16** %1008, !tbaa !5
  %1009 = getelementptr inbounds i16*, i16** %1008, i64 1
  store i16* @g_33, i16** %1009, !tbaa !5
  %1010 = getelementptr inbounds [3 x i16*], [3 x i16*]* %1006, i64 1
  %1011 = getelementptr inbounds [3 x i16*], [3 x i16*]* %1010, i64 0, i64 0
  store i16* %l_266, i16** %1011, !tbaa !5
  %1012 = getelementptr inbounds i16*, i16** %1011, i64 1
  store i16* @g_33, i16** %1012, !tbaa !5
  %1013 = getelementptr inbounds i16*, i16** %1012, i64 1
  store i16* @g_33, i16** %1013, !tbaa !5
  %1014 = getelementptr inbounds [3 x i16*], [3 x i16*]* %1010, i64 1
  %1015 = getelementptr inbounds [3 x i16*], [3 x i16*]* %1014, i64 0, i64 0
  store i16* @g_33, i16** %1015, !tbaa !5
  %1016 = getelementptr inbounds i16*, i16** %1015, i64 1
  store i16* %l_266, i16** %1016, !tbaa !5
  %1017 = getelementptr inbounds i16*, i16** %1016, i64 1
  store i16* @g_33, i16** %1017, !tbaa !5
  %1018 = bitcast [9 x i32**]* %l_372 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1018) #1
  %1019 = bitcast i32* %i19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1019) #1
  %1020 = bitcast i32* %j20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1020) #1
  store i32 0, i32* %i19, align 4, !tbaa !1
  br label %1021

; <label>:1021                                    ; preds = %1028, %979
  %1022 = load i32, i32* %i19, align 4, !tbaa !1
  %1023 = icmp slt i32 %1022, 9
  br i1 %1023, label %1024, label %1031

; <label>:1024                                    ; preds = %1021
  %1025 = load i32, i32* %i19, align 4, !tbaa !1
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds [9 x i32**], [9 x i32**]* %l_372, i32 0, i64 %1026
  store i32** null, i32*** %1027, align 8, !tbaa !5
  br label %1028

; <label>:1028                                    ; preds = %1024
  %1029 = load i32, i32* %i19, align 4, !tbaa !1
  %1030 = add nsw i32 %1029, 1
  store i32 %1030, i32* %i19, align 4, !tbaa !1
  br label %1021

; <label>:1031                                    ; preds = %1021
  %1032 = load i8*, i8** @g_150, align 8, !tbaa !5
  %1033 = load i8, i8* %1032, align 1, !tbaa !9
  %1034 = getelementptr inbounds [5 x [5 x [1 x i64]]], [5 x [5 x [1 x i64]]]* %l_367, i32 0, i64 3
  %1035 = getelementptr inbounds [5 x [1 x i64]], [5 x [1 x i64]]* %1034, i32 0, i64 0
  %1036 = getelementptr inbounds [1 x i64], [1 x i64]* %1035, i32 0, i64 0
  %1037 = load i64, i64* %1036, align 8, !tbaa !7
  %1038 = trunc i64 %1037 to i16
  %1039 = load i8, i8* %2, align 1, !tbaa !9
  %1040 = sext i8 %1039 to i32
  %1041 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %1038, i32 %1040)
  %1042 = trunc i16 %1041 to i8
  %1043 = load i32, i32* %l_368, align 4, !tbaa !1
  %1044 = trunc i32 %1043 to i8
  %1045 = load i32*, i32** %l_369, align 8, !tbaa !5
  %1046 = getelementptr inbounds [9 x [3 x i16*]], [9 x [3 x i16*]]* %l_370, i32 0, i64 8
  %1047 = getelementptr inbounds [3 x i16*], [3 x i16*]* %1046, i32 0, i64 0
  %1048 = load i16*, i16** %1047, align 8, !tbaa !5
  %1049 = load i16*, i16** %l_371, align 8, !tbaa !5
  %1050 = call i32* @func_77(i8 signext %1044, i32* %1045, i16* %1048, i32* %l_263, i16* %1049)
  store i32* %1050, i32** %l_20, align 8, !tbaa !5
  %1051 = load i16*, i16** %l_371, align 8, !tbaa !5
  %1052 = load i16*, i16** %l_373, align 8, !tbaa !5
  %1053 = call i32* @func_77(i8 signext %1042, i32* %1050, i16* %1051, i32* %l_362, i16* %1052)
  %1054 = load i16*, i16** %l_373, align 8, !tbaa !5
  %1055 = load volatile i32**, i32*** @g_95, align 8, !tbaa !5
  %1056 = load i32*, i32** %1055, align 8, !tbaa !5
  %1057 = getelementptr inbounds [9 x [3 x i16*]], [9 x [3 x i16*]]* %l_370, i32 0, i64 8
  %1058 = getelementptr inbounds [3 x i16*], [3 x i16*]* %1057, i32 0, i64 0
  %1059 = load i16*, i16** %1058, align 8, !tbaa !5
  %1060 = call i32* @func_77(i8 signext %1033, i32* %1053, i16* %1054, i32* %1056, i16* %1059)
  store i32* %1060, i32** %l_374, align 8, !tbaa !5
  %1061 = load volatile i32**, i32*** @g_95, align 8, !tbaa !5
  store i32* %1060, i32** %1061, align 8, !tbaa !5
  %1062 = bitcast i32* %j20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1062) #1
  %1063 = bitcast i32* %i19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1063) #1
  %1064 = bitcast [9 x i32**]* %l_372 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %1064) #1
  %1065 = bitcast [9 x [3 x i16*]]* %l_370 to i8*
  call void @llvm.lifetime.end(i64 216, i8* %1065) #1
  %1066 = bitcast i32* %l_368 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1066) #1
  br label %1067

; <label>:1067                                    ; preds = %1031
  %1068 = load i64, i64* @g_205, align 8, !tbaa !7
  %1069 = add nsw i64 %1068, -1
  store i64 %1069, i64* @g_205, align 8, !tbaa !7
  br label %976

; <label>:1070                                    ; preds = %976
  %1071 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1071) #1
  %1072 = bitcast i16** %l_373 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1072) #1
  %1073 = bitcast i32* %l_362 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1073) #1
  %1074 = bitcast [8 x i64]* %l_360 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1074) #1
  br label %1075

; <label>:1075                                    ; preds = %1070
  %1076 = load i64, i64* @g_114, align 8, !tbaa !7
  %1077 = add nsw i64 %1076, -1
  store i64 %1077, i64* @g_114, align 8, !tbaa !7
  br label %894

; <label>:1078                                    ; preds = %894
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 0), i8** %1
  store i32 1, i32* %3
  %1079 = bitcast i16** %l_371 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1079) #1
  %1080 = bitcast i32** %l_369 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1080) #1
  br label %1085
                                                  ; No predecessors!
  %1082 = load i32, i32* %l_265, align 4, !tbaa !1
  %1083 = add nsw i32 %1082, -1
  store i32 %1083, i32* %l_265, align 4, !tbaa !1
  br label %888

; <label>:1084                                    ; preds = %888
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_31, i32 0, i64 1), i8** %1
  store i32 1, i32* %3
  br label %1085

; <label>:1085                                    ; preds = %1084, %1078, %871, %151
  %1086 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1086) #1
  %1087 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1087) #1
  %1088 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1088) #1
  %1089 = bitcast i32** %l_374 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1089) #1
  %1090 = bitcast [5 x [5 x [1 x i64]]]* %l_367 to i8*
  call void @llvm.lifetime.end(i64 200, i8* %1090) #1
  %1091 = bitcast i64* %l_334 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1091) #1
  %1092 = bitcast [10 x [6 x [4 x i8*]]]* %l_301 to i8*
  call void @llvm.lifetime.end(i64 1920, i8* %1092) #1
  %1093 = bitcast i16****** %l_278 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1093) #1
  %1094 = bitcast %union.U0* %l_277 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1094) #1
  %1095 = bitcast i16* %l_266 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1095) #1
  %1096 = bitcast i32* %l_265 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1096) #1
  %1097 = bitcast i32* %l_264 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1097) #1
  %1098 = bitcast i32* %l_263 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1098) #1
  %1099 = bitcast i16** %l_201 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1099) #1
  %1100 = bitcast i32* %l_123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1100) #1
  %1101 = bitcast i16** %l_90 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1101) #1
  br label %1103

; <label>:1102                                    ; preds = %79
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_359, i32 0, i64 1), i8** %1
  store i32 1, i32* %3
  br label %1103

; <label>:1103                                    ; preds = %1102, %1085
  %1104 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1104) #1
  %1105 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1105) #1
  %1106 = bitcast [9 x i16****]* %l_206 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %1106) #1
  %1107 = bitcast i16**** %l_207 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1107) #1
  %1108 = bitcast i64* %l_204 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1108) #1
  %1109 = bitcast i16** %l_32 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1109) #1
  %1110 = bitcast i8** %l_30 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1110) #1
  %1111 = bitcast i32* %l_26 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1111) #1
  %1112 = bitcast [4 x i32*]* %l_23 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1112) #1
  %1113 = bitcast i32** %l_22 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1113) #1
  %1114 = bitcast i32** %l_21 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1114) #1
  %1115 = bitcast i32** %l_20 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1115) #1
  %1116 = bitcast i32** %l_19 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1116) #1
  %1117 = bitcast i32** %l_18 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1117) #1
  %1118 = bitcast i32** %l_17 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1118) #1
  %1119 = bitcast i32** %l_16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1119) #1
  %1120 = bitcast i32** %l_15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1120) #1
  %1121 = bitcast i32** %l_14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1121) #1
  %1122 = bitcast i32** %l_13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1122) #1
  %1123 = bitcast [2 x [7 x i32]]* %l_12 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %1123) #1
  %1124 = bitcast i32** %l_11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1124) #1
  %1125 = bitcast i32** %l_10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1125) #1
  %1126 = bitcast i32** %l_9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1126) #1
  %1127 = bitcast i32** %l_8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1127) #1
  %1128 = bitcast i32* %l_7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1128) #1
  %1129 = load i8*, i8** %1
  ret i8* %1129

; <label>:1130                                    ; preds = %816, %420, %393
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal i32* @func_77(i8 signext %p_78, i32* %p_79, i16* %p_80, i32* %p_81, i16* %p_82) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i16*, align 8
  %l_119 = alloca i32*, align 8
  store i8 %p_78, i8* %1, align 1, !tbaa !9
  store i32* %p_79, i32** %2, align 8, !tbaa !5
  store i16* %p_80, i16** %3, align 8, !tbaa !5
  store i32* %p_81, i32** %4, align 8, !tbaa !5
  store i16* %p_82, i16** %5, align 8, !tbaa !5
  %6 = bitcast i32** %l_119 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_3, i32** %l_119, align 8, !tbaa !5
  %7 = load i32*, i32** %l_119, align 8, !tbaa !5
  %8 = bitcast i32** %l_119 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i32* %7
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
!12 = !{i64 0, i64 8, !5}
