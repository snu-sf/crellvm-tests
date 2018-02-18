; ModuleID = '00350.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type { [9 x i8] }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_13 = internal global [8 x i8] c"\01\01\01\01\01\01\01\01", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"g_13[i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_51 = internal global [1 x [4 x i8]] [[4 x i8] c"\03\03\03\03"], align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"g_51[i][j]\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_68 = internal global i32 -1873572338, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_68\00", align 1
@g_77 = internal global i8 1, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"g_77\00", align 1
@g_92 = internal global i32 1414174116, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_92\00", align 1
@g_99 = internal global [1 x [10 x i16]] [[10 x i16] [i16 5438, i16 5438, i16 5438, i16 5438, i16 5438, i16 5438, i16 5438, i16 5438, i16 5438, i16 5438]], align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"g_99[i][j]\00", align 1
@g_104 = internal global i32 1, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"g_104\00", align 1
@g_123 = internal constant [3 x [6 x [9 x i32]]] [[6 x [9 x i32]] [[9 x i32] [i32 -901765889, i32 1989222197, i32 -362548267, i32 5, i32 -309220280, i32 5, i32 950916391, i32 1, i32 5], [9 x i32] [i32 -696426715, i32 -1640448672, i32 0, i32 1356115, i32 1356115, i32 0, i32 -1640448672, i32 -696426715, i32 -47538638], [9 x i32] [i32 0, i32 -362548267, i32 -309220280, i32 -1214412969, i32 5, i32 997518053, i32 0, i32 -1214412969, i32 -1], [9 x i32] [i32 -47538638, i32 1769014714, i32 1, i32 -696426715, i32 1604686447, i32 1356115, i32 -441324846, i32 1, i32 -441324846], [9 x i32] [i32 -2, i32 1989222197, i32 1833310240, i32 1833310240, i32 1989222197, i32 -2, i32 5, i32 4, i32 -1], [9 x i32] [i32 1356115, i32 1604686447, i32 -696426715, i32 1, i32 1769014714, i32 -47538638, i32 0, i32 0, i32 1]], [6 x [9 x i32]] [[9 x i32] [i32 997518053, i32 5, i32 5, i32 -1243267685, i32 9, i32 202480850, i32 5, i32 202480850, i32 9], [9 x i32] [i32 -9, i32 0, i32 0, i32 -9, i32 921971592, i32 -1, i32 -441324846, i32 1769014714, i32 0], [9 x i32] [i32 -362548267, i32 -1243267685, i32 -1, i32 9, i32 1, i32 -309220280, i32 0, i32 -1, i32 -1214412969], [9 x i32] [i32 1769014714, i32 -8, i32 0, i32 -5, i32 921971592, i32 1769014714, i32 921971592, i32 -5, i32 0], [9 x i32] [i32 1, i32 1, i32 -2, i32 -10, i32 9, i32 -1, i32 1, i32 -1243267685, i32 -10], [9 x i32] [i32 1, i32 3, i32 -9, i32 -1, i32 1769014714, i32 2, i32 3, i32 -1, i32 -696426715]], [6 x [9 x i32]] [[9 x i32] [i32 -1, i32 0, i32 -2, i32 5, i32 1989222197, i32 5, i32 -2, i32 0, i32 -1], [9 x i32] [i32 0, i32 -696426715, i32 0, i32 -441324846, i32 1604686447, i32 -348443748, i32 0, i32 0, i32 1769014714], [9 x i32] [i32 -2, i32 -901765889, i32 -1, i32 4, i32 5, i32 -2, i32 1989222197, i32 1833310240, i32 1833310240], [9 x i32] [i32 0, i32 1604686447, i32 0, i32 6, i32 0, i32 1604686447, i32 0, i32 -1, i32 6], [9 x i32] [i32 -1, i32 4, i32 5, i32 0, i32 -1243267685, i32 -1, i32 4, i32 202480850, i32 -2], [9 x i32] [i32 1, i32 -441324846, i32 -696426715, i32 -9, i32 -8, i32 0, i32 -1, i32 -1, i32 0]]], align 16
@.str.10 = private unnamed_addr constant [15 x i8] c"g_123[i][j][k]\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"g_125.f0\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"g_125.f1\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"g_125.f2\00", align 1
@g_155 = internal global [10 x [7 x [3 x i64]]] [[7 x [3 x i64]] [[3 x i64] [i64 -5228054730641023512, i64 4298938863332247873, i64 -5228054730641023512], [3 x i64] [i64 -3204201183602205248, i64 -1, i64 3776556465357364296], [3 x i64] [i64 6968110707292383026, i64 2096104004749342216, i64 4132555858672699675], [3 x i64] [i64 7, i64 -4, i64 0], [3 x i64] [i64 0, i64 -1, i64 5298383972633235943], [3 x i64] [i64 7, i64 9, i64 4125214240089464495], [3 x i64] [i64 6968110707292383026, i64 0, i64 -6293481083362016817]], [7 x [3 x i64]] [[3 x i64] [i64 -3204201183602205248, i64 -593216800248581148, i64 7], [3 x i64] [i64 -5228054730641023512, i64 0, i64 3178205571188721151], [3 x i64] [i64 4125214240089464495, i64 -593216800248581148, i64 8], [3 x i64] [i64 -3145000510993154045, i64 0, i64 0], [3 x i64] [i64 8, i64 9, i64 -9], [3 x i64] [i64 -6293481083362016817, i64 -1, i64 0], [3 x i64] [i64 -9, i64 -4, i64 -9]], [7 x [3 x i64]] [[3 x i64] [i64 0, i64 2096104004749342216, i64 0], [3 x i64] [i64 -1, i64 -1, i64 8], [3 x i64] [i64 5298383972633235943, i64 4298938863332247873, i64 3178205571188721151], [3 x i64] [i64 4546524893527692010, i64 8620715778304598919, i64 -7], [3 x i64] [i64 -4, i64 0, i64 -5644584439136629960], [3 x i64] [i64 0, i64 7, i64 6115517005368706929], [3 x i64] [i64 -1, i64 4132555858672699675, i64 -4]], [7 x [3 x i64]] [[3 x i64] [i64 -3532554853791580607, i64 8, i64 4080350474015358241], [3 x i64] [i64 -5644584439136629960, i64 4132555858672699675, i64 -6], [3 x i64] [i64 -10, i64 7, i64 -4091457854832268045], [3 x i64] [i64 8, i64 0, i64 -524055755022942810], [3 x i64] [i64 6115517005368706929, i64 8620715778304598919, i64 -1], [3 x i64] [i64 -524055755022942810, i64 0, i64 -524055755022942810], [3 x i64] [i64 2, i64 3923349314370741553, i64 -4091457854832268045]], [7 x [3 x i64]] [[3 x i64] [i64 -4, i64 188556293211721820, i64 -6], [3 x i64] [i64 -7, i64 -3204201183602205248, i64 4080350474015358241], [3 x i64] [i64 -1, i64 0, i64 -4], [3 x i64] [i64 -7, i64 3776556465357364296, i64 6115517005368706929], [3 x i64] [i64 -4, i64 5298383972633235943, i64 -5644584439136629960], [3 x i64] [i64 2, i64 8, i64 -7], [3 x i64] [i64 -524055755022942810, i64 -3145000510993154045, i64 2573242821602995335]], [7 x [3 x i64]] [[3 x i64] [i64 6115517005368706929, i64 8, i64 -1781914666571332786], [3 x i64] [i64 8, i64 5298383972633235943, i64 8], [3 x i64] [i64 -10, i64 3776556465357364296, i64 -3532554853791580607], [3 x i64] [i64 -5644584439136629960, i64 0, i64 1], [3 x i64] [i64 -3532554853791580607, i64 -3204201183602205248, i64 -3532554853791580607], [3 x i64] [i64 -1, i64 188556293211721820, i64 8], [3 x i64] [i64 0, i64 3923349314370741553, i64 -1781914666571332786]], [7 x [3 x i64]] [[3 x i64] [i64 -4, i64 0, i64 2573242821602995335], [3 x i64] [i64 4546524893527692010, i64 8620715778304598919, i64 -7], [3 x i64] [i64 -4, i64 0, i64 -5644584439136629960], [3 x i64] [i64 0, i64 7, i64 6115517005368706929], [3 x i64] [i64 -1, i64 4132555858672699675, i64 -4], [3 x i64] [i64 -3532554853791580607, i64 8, i64 4080350474015358241], [3 x i64] [i64 -5644584439136629960, i64 4132555858672699675, i64 -6]], [7 x [3 x i64]] [[3 x i64] [i64 -10, i64 7, i64 -4091457854832268045], [3 x i64] [i64 8, i64 0, i64 -524055755022942810], [3 x i64] [i64 6115517005368706929, i64 8620715778304598919, i64 -1], [3 x i64] [i64 -524055755022942810, i64 0, i64 -524055755022942810], [3 x i64] [i64 2, i64 3923349314370741553, i64 -4091457854832268045], [3 x i64] [i64 -4, i64 188556293211721820, i64 -6], [3 x i64] [i64 -7, i64 -3204201183602205248, i64 4080350474015358241]], [7 x [3 x i64]] [[3 x i64] [i64 -1, i64 0, i64 -4], [3 x i64] [i64 -7, i64 3776556465357364296, i64 6115517005368706929], [3 x i64] [i64 -4, i64 5298383972633235943, i64 -5644584439136629960], [3 x i64] [i64 2, i64 8, i64 -7], [3 x i64] [i64 -524055755022942810, i64 -3145000510993154045, i64 2573242821602995335], [3 x i64] [i64 6115517005368706929, i64 8, i64 -1781914666571332786], [3 x i64] [i64 8, i64 5298383972633235943, i64 8]], [7 x [3 x i64]] [[3 x i64] [i64 -10, i64 3776556465357364296, i64 -3532554853791580607], [3 x i64] [i64 -5644584439136629960, i64 0, i64 1], [3 x i64] [i64 -3532554853791580607, i64 -3204201183602205248, i64 -3532554853791580607], [3 x i64] [i64 -1, i64 188556293211721820, i64 8], [3 x i64] [i64 0, i64 3923349314370741553, i64 -1781914666571332786], [3 x i64] [i64 -4, i64 0, i64 2573242821602995335], [3 x i64] [i64 4546524893527692010, i64 8620715778304598919, i64 -7]]], align 16
@.str.15 = private unnamed_addr constant [15 x i8] c"g_155[i][j][k]\00", align 1
@g_169 = internal global i32 1080438002, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_169\00", align 1
@g_208 = internal global i64 2836546179210523960, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"g_208\00", align 1
@g_210 = internal global i16 0, align 2
@.str.18 = private unnamed_addr constant [6 x i8] c"g_210\00", align 1
@g_273 = internal global i8 1, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_273\00", align 1
@g_275 = internal global i8 -2, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_275\00", align 1
@g_390 = internal global i16 0, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_390\00", align 1
@g_424 = internal global i16 -2, align 2
@.str.22 = private unnamed_addr constant [6 x i8] c"g_424\00", align 1
@g_436 = internal global i32 -1458786471, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_436\00", align 1
@g_494 = internal global [3 x [5 x [3 x i16]]] [[5 x [3 x i16]] [[3 x i16] [i16 5, i16 1, i16 0], [3 x i16] [i16 16116, i16 -9, i16 -23524], [3 x i16] [i16 5, i16 -4187, i16 7], [3 x i16] [i16 -17933, i16 -7124, i16 -7124], [3 x i16] [i16 15579, i16 0, i16 -7124]], [5 x [3 x i16]] [[3 x i16] [i16 -1069, i16 16116, i16 7], [3 x i16] [i16 1, i16 -1069, i16 -23524], [3 x i16] [i16 0, i16 1, i16 0], [3 x i16] [i16 -4, i16 15579, i16 1], [3 x i16] [i16 16116, i16 -7124, i16 -1069]], [5 x [3 x i16]] [[3 x i16] [i16 0, i16 0, i16 15579], [3 x i16] [i16 0, i16 0, i16 -17933], [3 x i16] [i16 16116, i16 7, i16 5], [3 x i16] [i16 -17933, i16 1, i16 16116], [3 x i16] [i16 6714, i16 16116, i16 5]]], align 16
@.str.24 = private unnamed_addr constant [15 x i8] c"g_494[i][j][k]\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"g_507.f0\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_507.f1\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"g_507.f2\00", align 1
@g_655 = internal global i64 0, align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"g_655\00", align 1
@g_696 = internal global i8 -27, align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"g_696\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_2.l_695 = private unnamed_addr constant [4 x i16] [i16 -8, i16 -8, i16 -8, i16 -8], align 2
@g_274 = internal global i8* @g_275, align 8
@g_311 = internal global i32* @g_169, align 8
@g_199 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32*]* @g_200 to i8*), i64 8) to i32**), align 8
@g_121 = internal global i32** @g_122, align 8
@g_200 = internal global [6 x i32*] [i32* @g_68, i32* @g_68, i32* @g_68, i32* @g_68, i32* @g_68, i32* @g_68], align 16
@g_122 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [6 x [9 x i32]]]* @g_123 to i8*), i64 604) to i32*), align 8
@func_6.l_475 = private unnamed_addr constant [8 x [5 x [6 x i8]]] [[5 x [6 x i8]] [[6 x i8] c"\C8l\5C\0F\AC\FF", [6 x i8] c"\F6\0F\0F\0C\5C\A4", [6 x i8] c"\0C\5C\A4\FF\01\AC", [6 x i8] c"\01\F7\A8\00q\E4", [6 x i8] c"q\01\F4\01\F4\01"], [5 x [6 x i8]] [[6 x i8] c"\01\00\01\A8\FF?", [6 x i8] c"\01\01\C1\01\01\C1", [6 x i8] c"\F6\A8\A4\01\06=", [6 x i8] c"?\CFl\01\AC\F7", [6 x i8] c"\A8\E4\19\A8=\AC"], [5 x [6 x i8]] [[6 x i8] c"\F4\15\09\C6\00\01", [6 x i8] c"\CF\01\5C\5C\01\CF", [6 x i8] c"\0F\C1\15?\0F\FF", [6 x i8] c"\06\04\F6\00\00q", [6 x i8] c"\06\01\00?\01\04"], [5 x [6 x i8]] [[6 x i8] c"\0F\0F\0C\5C\A4\FF", [6 x i8] c"\CF\F4\FF\C6q\FB", [6 x i8] c"\F4\19\0F\A8\C6\01", [6 x i8] c"\A8\01\C6\01\A8\0C", [6 x i8] c"?\01\0F\01\A8\15"], [5 x [6 x i8]] [[6 x i8] c"\F6\01\C1\01\FF\15", [6 x i8] c"\00\FF\0F\09\01\0C", [6 x i8] c"\FF\A4\C6\FB\FF\01", [6 x i8] c"=?\0F\CF\F6\FB", [6 x i8] c"\FB\FD\FF\C8\FF\FF"], [5 x [6 x i8]] [[6 x i8] c"\FF\0C\0C\FF\19\04", [6 x i8] c"\5C\00\00\C1?q", [6 x i8] c"\0Cl\F6\A8?\FF", [6 x i8] c"\04\00\15=\19\CF", [6 x i8] c"\0F\0C\5C\A4\FF\01"], [5 x [6 x i8]] [[6 x i8] c"\D2\FD\09\FF\F6\AC", [6 x i8] c"\01?\19\F7\FF\F7", [6 x i8] c"l\A4l\93\01=", [6 x i8] c"\09\FF\A4\01\FF\C1", [6 x i8] c"\E4\01\F7\01\A8\93"], [5 x [6 x i8]] [[6 x i8] c"\09\01\01\93\A8\E4", [6 x i8] c"l\01\AC\F7\C6\F6", [6 x i8] c"\01\19\FF\FFq\0F", [6 x i8] c"\D2\F4\93??\93", [6 x i8] c"\D2\D2q\01\01\0C"]], align 16
@g_309 = internal global %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), align 8
@func_6.l_665 = private unnamed_addr constant [9 x i32] [i32 -893340943, i32 1, i32 -893340943, i32 1, i32 -893340943, i32 1, i32 -893340943, i32 1, i32 -893340943], align 16
@func_6.l_649 = private unnamed_addr constant [8 x [4 x i32]] [[4 x i32] [i32 871550645, i32 83231361, i32 0, i32 83231361], [4 x i32] [i32 83231361, i32 1, i32 0, i32 0], [4 x i32] [i32 871550645, i32 871550645, i32 83231361, i32 0], [4 x i32] [i32 4, i32 1, i32 4, i32 83231361], [4 x i32] [i32 4, i32 83231361, i32 83231361, i32 4], [4 x i32] [i32 871550645, i32 83231361, i32 0, i32 83231361], [4 x i32] [i32 83231361, i32 1, i32 0, i32 0], [4 x i32] [i32 871550645, i32 871550645, i32 83231361, i32 0]], align 16
@func_6.l_677 = private unnamed_addr constant [9 x [4 x i64]] [[4 x i64] [i64 3946642767725943267, i64 -8497615470146192003, i64 -8497615470146192003, i64 3946642767725943267], [4 x i64] [i64 -8497615470146192003, i64 3946642767725943267, i64 -7091622656652190237, i64 -1], [4 x i64] [i64 -8497615470146192003, i64 -7091622656652190237, i64 -8497615470146192003, i64 1], [4 x i64] [i64 3946642767725943267, i64 -1, i64 1, i64 1], [4 x i64] [i64 -7091622656652190237, i64 -7091622656652190237, i64 -7, i64 -1], [4 x i64] [i64 -1, i64 3946642767725943267, i64 -7, i64 3946642767725943267], [4 x i64] [i64 -7091622656652190237, i64 -8497615470146192003, i64 1, i64 -7], [4 x i64] [i64 3946642767725943267, i64 -8497615470146192003, i64 -8497615470146192003, i64 3946642767725943267], [4 x i64] [i64 -8497615470146192003, i64 3946642767725943267, i64 -7091622656652190237, i64 -1]], align 16
@func_16.l_433 = private unnamed_addr constant [9 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92], align 16
@g_422 = internal global i16** @g_423, align 8
@g_423 = internal global i16* @g_424, align 8
@g_67 = internal global i32* @g_68, align 8
@func_43.l_304 = private unnamed_addr constant [9 x [7 x [3 x i32]]] [[7 x [3 x i32]] [[3 x i32] [i32 -1, i32 -1547776205, i32 -648523291], [3 x i32] [i32 2015499680, i32 -622792170, i32 -2], [3 x i32] [i32 -684620897, i32 1457092649, i32 -1], [3 x i32] [i32 0, i32 -1, i32 1270439483], [3 x i32] [i32 3, i32 1, i32 -3], [3 x i32] [i32 -1, i32 -1, i32 -4], [3 x i32] [i32 1107265252, i32 1457092649, i32 3]], [7 x [3 x i32]] [[3 x i32] [i32 -1318243159, i32 -622792170, i32 0], [3 x i32] [i32 263994249, i32 -1547776205, i32 -1], [3 x i32] [i32 0, i32 -1318243159, i32 0], [3 x i32] [i32 0, i32 -2035083660, i32 3], [3 x i32] [i32 0, i32 1644502653, i32 -4], [3 x i32] [i32 -1547776205, i32 1107265252, i32 -3], [3 x i32] [i32 -1, i32 2015499680, i32 1270439483]], [7 x [3 x i32]] [[3 x i32] [i32 -1547776205, i32 1200159733, i32 -1], [3 x i32] [i32 0, i32 1, i32 -2], [3 x i32] [i32 0, i32 263994249, i32 -648523291], [3 x i32] [i32 0, i32 -917839645, i32 1362620896], [3 x i32] [i32 263994249, i32 263994249, i32 8], [3 x i32] [i32 -1318243159, i32 1, i32 4], [3 x i32] [i32 1107265252, i32 1200159733, i32 -264878047]], [7 x [3 x i32]] [[3 x i32] [i32 -1, i32 2015499680, i32 151817216], [3 x i32] [i32 3, i32 1107265252, i32 -264878047], [3 x i32] [i32 0, i32 1644502653, i32 4], [3 x i32] [i32 -684620897, i32 -2035083660, i32 8], [3 x i32] [i32 2015499680, i32 -1318243159, i32 1362620896], [3 x i32] [i32 -1, i32 -1547776205, i32 -648523291], [3 x i32] [i32 2015499680, i32 -622792170, i32 -2]], [7 x [3 x i32]] [[3 x i32] [i32 -684620897, i32 1457092649, i32 -1], [3 x i32] [i32 -2067727507, i32 -481416006, i32 -1], [3 x i32] [i32 6323276, i32 -7, i32 -684620897], [3 x i32] [i32 -481416006, i32 -481416006, i32 -1318243159], [3 x i32] [i32 1, i32 0, i32 -1], [3 x i32] [i32 2, i32 -332776411, i32 1], [3 x i32] [i32 -872640118, i32 -7, i32 -1547776205]], [7 x [3 x i32]] [[3 x i32] [i32 1965885167, i32 2, i32 1], [3 x i32] [i32 1, i32 -7, i32 -1], [3 x i32] [i32 1804664022, i32 -1660168678, i32 -1318243159], [3 x i32] [i32 -7, i32 1, i32 -684620897], [3 x i32] [i32 0, i32 1, i32 -1], [3 x i32] [i32 -7, i32 -2051807650, i32 1], [3 x i32] [i32 1804664022, i32 -845568125, i32 -917839645]], [7 x [3 x i32]] [[3 x i32] [i32 1, i32 -872640118, i32 -1], [3 x i32] [i32 1965885167, i32 1596046055, i32 0], [3 x i32] [i32 -872640118, i32 -872640118, i32 1107265252], [3 x i32] [i32 2, i32 -845568125, i32 7], [3 x i32] [i32 1, i32 -2051807650, i32 1457092649], [3 x i32] [i32 -481416006, i32 1, i32 2015499680], [3 x i32] [i32 6323276, i32 1, i32 1457092649]], [7 x [3 x i32]] [[3 x i32] [i32 -2067727507, i32 -1660168678, i32 7], [3 x i32] [i32 9, i32 -7, i32 1107265252], [3 x i32] [i32 1, i32 2, i32 0], [3 x i32] [i32 -304919924, i32 -7, i32 -1], [3 x i32] [i32 1, i32 -332776411, i32 -917839645], [3 x i32] [i32 9, i32 0, i32 1], [3 x i32] [i32 -2067727507, i32 -481416006, i32 -1]], [7 x [3 x i32]] [[3 x i32] [i32 6323276, i32 -7, i32 -684620897], [3 x i32] [i32 -481416006, i32 -481416006, i32 -1318243159], [3 x i32] [i32 1, i32 0, i32 -1], [3 x i32] [i32 2, i32 -332776411, i32 1], [3 x i32] [i32 -872640118, i32 -7, i32 -1547776205], [3 x i32] [i32 1965885167, i32 2, i32 1], [3 x i32] [i32 1, i32 -7, i32 -1]]], align 16
@func_43.l_328 = private unnamed_addr constant [7 x [9 x %struct.S0*]] [[9 x %struct.S0*] [%struct.S0* null, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*)], [9 x %struct.S0*] [%struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*)], [9 x %struct.S0*] [%struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* null, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*)], [9 x %struct.S0*] [%struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* null, %struct.S0* null, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* null], [9 x %struct.S0*] [%struct.S0* null, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* null, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*)], [9 x %struct.S0*] [%struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* null, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*)], [9 x %struct.S0*] [%struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0* null, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*)]], align 16
@func_43.l_373 = private unnamed_addr constant [5 x [10 x [5 x i16]]] [[10 x [5 x i16]] [[5 x i16] [i16 26933, i16 -10, i16 24486, i16 -7750, i16 -10], [5 x i16] [i16 -2277, i16 1, i16 0, i16 -2232, i16 0], [5 x i16] [i16 -18536, i16 1, i16 -1, i16 -1735, i16 0], [5 x i16] [i16 5, i16 0, i16 -9, i16 10870, i16 0], [5 x i16] [i16 3608, i16 -9, i16 -9, i16 3608, i16 7172], [5 x i16] [i16 -2277, i16 -1735, i16 -32376, i16 3, i16 30124], [5 x i16] [i16 -8, i16 -3, i16 -9, i16 14715, i16 -1], [5 x i16] [i16 -10, i16 1, i16 -1, i16 3, i16 -3], [5 x i16] [i16 0, i16 1, i16 0, i16 3, i16 -10], [5 x i16] [i16 -8, i16 15572, i16 -1, i16 -32376, i16 -1]], [10 x [5 x i16]] [[5 x i16] [i16 -557, i16 1, i16 27567, i16 24622, i16 10870], [5 x i16] [i16 0, i16 29869, i16 1, i16 -1, i16 -18536], [5 x i16] [i16 -9, i16 0, i16 8898, i16 0, i16 3], [5 x i16] [i16 16127, i16 -1, i16 -18536, i16 9038, i16 1], [5 x i16] [i16 1, i16 -3, i16 5, i16 -2277, i16 0], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 16127, i16 -8], [5 x i16] [i16 14715, i16 0, i16 3608, i16 1, i16 -1], [5 x i16] [i16 8898, i16 26933, i16 24486, i16 -21467, i16 -1], [5 x i16] [i16 -1, i16 0, i16 -24877, i16 -1, i16 -8], [5 x i16] [i16 7172, i16 -1, i16 -3, i16 1, i16 0]], [10 x [5 x i16]] [[5 x i16] [i16 13142, i16 0, i16 -1, i16 -20775, i16 1], [5 x i16] [i16 26933, i16 0, i16 1, i16 -18536, i16 3], [5 x i16] [i16 0, i16 0, i16 4, i16 0, i16 -18536], [5 x i16] [i16 -1, i16 3, i16 32045, i16 0, i16 10870], [5 x i16] [i16 4, i16 16127, i16 -20775, i16 -8, i16 -1], [5 x i16] [i16 -29456, i16 -10, i16 1, i16 1, i16 -10], [5 x i16] [i16 0, i16 13142, i16 1, i16 -29456, i16 -3], [5 x i16] [i16 -3, i16 -8, i16 26945, i16 1, i16 -1], [5 x i16] [i16 0, i16 -1, i16 26933, i16 0, i16 30124], [5 x i16] [i16 -3, i16 -14891, i16 -9106, i16 -1, i16 -1735]], [10 x [5 x i16]] [[5 x i16] [i16 0, i16 -7750, i16 -2232, i16 1, i16 0], [5 x i16] [i16 -29456, i16 1, i16 -26531, i16 -8, i16 8898], [5 x i16] [i16 4, i16 18949, i16 0, i16 1, i16 1], [5 x i16] [i16 -1, i16 -14643, i16 1, i16 -1, i16 -2232], [5 x i16] [i16 0, i16 -31912, i16 -26092, i16 -11384, i16 -557], [5 x i16] [i16 26933, i16 0, i16 -1, i16 29869, i16 -26531], [5 x i16] [i16 13142, i16 -1, i16 20995, i16 7172, i16 1], [5 x i16] [i16 7172, i16 -1, i16 0, i16 -31912, i16 1], [5 x i16] [i16 -1, i16 -1, i16 1, i16 20995, i16 -5], [5 x i16] [i16 8898, i16 -1, i16 15572, i16 -8, i16 22783]], [10 x [5 x i16]] [[5 x i16] [i16 14715, i16 -1, i16 1, i16 4, i16 -31912], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 -9495, i16 -8], [5 x i16] [i16 1, i16 0, i16 -9495, i16 26933, i16 -9], [5 x i16] [i16 16127, i16 -1, i16 0, i16 -3, i16 13142], [5 x i16] [i16 0, i16 -1, i16 -26092, i16 -2232, i16 16127], [5 x i16] [i16 0, i16 30124, i16 3, i16 -32376, i16 -1735], [5 x i16] [i16 22783, i16 18949, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -9, i16 0, i16 -9, i16 1, i16 1], [5 x i16] [i16 20211, i16 20218, i16 -1, i16 0, i16 -28071], [5 x i16] [i16 1, i16 0, i16 29869, i16 24622, i16 24486]]], align 16
@func_43.l_91 = private unnamed_addr constant [4 x [7 x [4 x i32*]]] [[7 x [4 x i32*]] [[4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* null], [4 x i32*] [i32* null, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* null, i32* null, i32* @g_92, i32* @g_92]], [7 x [4 x i32*]] [[4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* null, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* null], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92]], [7 x [4 x i32*]] [[4 x i32*] [i32* null, i32* @g_92, i32* null, i32* @g_92], [4 x i32*] [i32* null, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* null, i32* @g_92, i32* null, i32* @g_92], [4 x i32*] [i32* null, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92]], [7 x [4 x i32*]] [[4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* null], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* null], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* null, i32* @g_92, i32* @g_92, i32* @g_92], [4 x i32*] [i32* @g_92, i32* @g_92, i32* @g_92, i32* @g_92]]], align 16
@g_103 = internal global [2 x i32*] [i32* @g_104, i32* @g_104], align 16
@func_43.l_303 = private unnamed_addr constant [10 x i32] [i32 3, i32 8, i32 3, i32 8, i32 3, i32 8, i32 3, i32 8, i32 3, i32 8], align 16
@func_43.l_253 = private unnamed_addr constant [8 x i64*] [i64* @g_208, i64* @g_208, i64* @g_208, i64* @g_208, i64* @g_208, i64* @g_208, i64* @g_208, i64* @g_208], align 16
@func_43.l_276 = private unnamed_addr constant [5 x [9 x [3 x i32]]] [[9 x [3 x i32]] [[3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453]], [9 x [3 x i32]] [[3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363]], [9 x [3 x i32]] [[3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453]], [9 x [3 x i32]] [[3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363]], [9 x [3 x i32]] [[3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453], [3 x i32] [i32 1372413363, i32 1372413363, i32 1372413363], [3 x i32] [i32 1406199453, i32 1406199453, i32 1406199453]]], align 16
@func_43.l_295 = private unnamed_addr constant [8 x i32] [i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], align 16
@g_308 = internal global %struct.S0** @g_309, align 8
@g_124 = internal global i32* @g_68, align 8
@g_115 = internal global i32* @g_68, align 8
@func_80.l_166 = private unnamed_addr constant [5 x [2 x [5 x i32]]] [[2 x [5 x i32]] [[5 x i32] [i32 -1835597959, i32 1853389232, i32 1853389232, i32 -1835597959, i32 -1835597959], [5 x i32] [i32 -4, i32 -1793806909, i32 -4, i32 -1793806909, i32 -4]], [2 x [5 x i32]] [[5 x i32] [i32 -1835597959, i32 -1835597959, i32 1853389232, i32 1853389232, i32 -1835597959], [5 x i32] [i32 0, i32 -1793806909, i32 0, i32 -1793806909, i32 0]], [2 x [5 x i32]] [[5 x i32] [i32 -1835597959, i32 1853389232, i32 1853389232, i32 -1835597959, i32 -1835597959], [5 x i32] [i32 -4, i32 -1793806909, i32 -4, i32 -1793806909, i32 -4]], [2 x [5 x i32]] [[5 x i32] [i32 -1835597959, i32 -1835597959, i32 1853389232, i32 1853389232, i32 -1835597959], [5 x i32] [i32 0, i32 -1793806909, i32 0, i32 -1793806909, i32 0]], [2 x [5 x i32]] [[5 x i32] [i32 -1835597959, i32 1853389232, i32 1853389232, i32 -1835597959, i32 -1835597959], [5 x i32] [i32 -4, i32 -1793806909, i32 -4, i32 -1793806909, i32 -4]]], align 16
@.str.30 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_125 = internal global { i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -111, i8 1, i8 48, i8 4, i8 0, i8 -128, i8 11, i8 1, i8 0 }, align 1
@g_507 = internal global { i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 102, i8 -1, i8 15, i8 80, i8 1, i8 32, i8 -24, i8 0, i8 0 }, align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %107, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %94, label %110

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* @g_13, i32 0, i64 %96
  %98 = load i8, i8* %97, align 1, !tbaa !9
  %99 = sext i8 %98 to i64
  %100 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 %100)
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
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %111

; <label>:111                                     ; preds = %139, %110
  %112 = load i32, i32* %i, align 4, !tbaa !1
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %114, label %142

; <label>:114                                     ; preds = %111
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %115

; <label>:115                                     ; preds = %135, %114
  %116 = load i32, i32* %j, align 4, !tbaa !1
  %117 = icmp slt i32 %116, 4
  br i1 %117, label %118, label %138

; <label>:118                                     ; preds = %115
  %119 = load i32, i32* %j, align 4, !tbaa !1
  %120 = sext i32 %119 to i64
  %121 = load i32, i32* %i, align 4, !tbaa !1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 %122
  %124 = getelementptr inbounds [4 x i8], [4 x i8]* %123, i32 0, i64 %120
  %125 = load i8, i8* %124, align 1, !tbaa !9
  %126 = zext i8 %125 to i64
  %127 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 %127)
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

; <label>:130                                     ; preds = %118
  %131 = load i32, i32* %i, align 4, !tbaa !1
  %132 = load i32, i32* %j, align 4, !tbaa !1
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %131, i32 %132)
  br label %134

; <label>:134                                     ; preds = %130, %118
  br label %135

; <label>:135                                     ; preds = %134
  %136 = load i32, i32* %j, align 4, !tbaa !1
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %j, align 4, !tbaa !1
  br label %115

; <label>:138                                     ; preds = %115
  br label %139

; <label>:139                                     ; preds = %138
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %i, align 4, !tbaa !1
  br label %111

; <label>:142                                     ; preds = %111
  %143 = load i32, i32* @g_68, align 4, !tbaa !1
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %145)
  %146 = load i8, i8* @g_77, align 1, !tbaa !9
  %147 = zext i8 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %148)
  %149 = load i32, i32* @g_92, align 4, !tbaa !1
  %150 = zext i32 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %151)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %152

; <label>:152                                     ; preds = %180, %142
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %155, label %183

; <label>:155                                     ; preds = %152
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %156

; <label>:156                                     ; preds = %176, %155
  %157 = load i32, i32* %j, align 4, !tbaa !1
  %158 = icmp slt i32 %157, 10
  br i1 %158, label %159, label %179

; <label>:159                                     ; preds = %156
  %160 = load i32, i32* %j, align 4, !tbaa !1
  %161 = sext i32 %160 to i64
  %162 = load i32, i32* %i, align 4, !tbaa !1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [1 x [10 x i16]], [1 x [10 x i16]]* @g_99, i32 0, i64 %163
  %165 = getelementptr inbounds [10 x i16], [10 x i16]* %164, i32 0, i64 %161
  %166 = load i16, i16* %165, align 2, !tbaa !10
  %167 = sext i16 %166 to i64
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %168)
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

; <label>:171                                     ; preds = %159
  %172 = load i32, i32* %i, align 4, !tbaa !1
  %173 = load i32, i32* %j, align 4, !tbaa !1
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %172, i32 %173)
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
  %184 = load i32, i32* @g_104, align 4, !tbaa !1
  %185 = zext i32 %184 to i64
  %186 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %186)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %187

; <label>:187                                     ; preds = %227, %183
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = icmp slt i32 %188, 3
  br i1 %189, label %190, label %230

; <label>:190                                     ; preds = %187
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %191

; <label>:191                                     ; preds = %223, %190
  %192 = load i32, i32* %j, align 4, !tbaa !1
  %193 = icmp slt i32 %192, 6
  br i1 %193, label %194, label %226

; <label>:194                                     ; preds = %191
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %195

; <label>:195                                     ; preds = %219, %194
  %196 = load i32, i32* %k, align 4, !tbaa !1
  %197 = icmp slt i32 %196, 9
  br i1 %197, label %198, label %222

; <label>:198                                     ; preds = %195
  %199 = load i32, i32* %k, align 4, !tbaa !1
  %200 = sext i32 %199 to i64
  %201 = load i32, i32* %j, align 4, !tbaa !1
  %202 = sext i32 %201 to i64
  %203 = load i32, i32* %i, align 4, !tbaa !1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [3 x [6 x [9 x i32]]], [3 x [6 x [9 x i32]]]* @g_123, i32 0, i64 %204
  %206 = getelementptr inbounds [6 x [9 x i32]], [6 x [9 x i32]]* %205, i32 0, i64 %202
  %207 = getelementptr inbounds [9 x i32], [9 x i32]* %206, i32 0, i64 %200
  %208 = load volatile i32, i32* %207, align 4, !tbaa !1
  %209 = sext i32 %208 to i64
  %210 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %209, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 %210)
  %211 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

; <label>:213                                     ; preds = %198
  %214 = load i32, i32* %i, align 4, !tbaa !1
  %215 = load i32, i32* %j, align 4, !tbaa !1
  %216 = load i32, i32* %k, align 4, !tbaa !1
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %214, i32 %215, i32 %216)
  br label %218

; <label>:218                                     ; preds = %213, %198
  br label %219

; <label>:219                                     ; preds = %218
  %220 = load i32, i32* %k, align 4, !tbaa !1
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %k, align 4, !tbaa !1
  br label %195

; <label>:222                                     ; preds = %195
  br label %223

; <label>:223                                     ; preds = %222
  %224 = load i32, i32* %j, align 4, !tbaa !1
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %j, align 4, !tbaa !1
  br label %191

; <label>:226                                     ; preds = %191
  br label %227

; <label>:227                                     ; preds = %226
  %228 = load i32, i32* %i, align 4, !tbaa !1
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %i, align 4, !tbaa !1
  br label %187

; <label>:230                                     ; preds = %187
  %231 = load volatile i72, i72* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to i72*), align 1
  %232 = shl i72 %231, 52
  %233 = ashr i72 %232, 52
  %234 = trunc i72 %233 to i32
  %235 = sext i32 %234 to i64
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %235, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %236)
  %237 = load i72, i72* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to i72*), align 1
  %238 = shl i72 %237, 27
  %239 = ashr i72 %238, 47
  %240 = trunc i72 %239 to i32
  %241 = sext i32 %240 to i64
  %242 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %241, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %242)
  %243 = load volatile i72, i72* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to i72*), align 1
  %244 = shl i72 %243, 4
  %245 = ashr i72 %244, 49
  %246 = trunc i72 %245 to i32
  %247 = sext i32 %246 to i64
  %248 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %247, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %248)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %249

; <label>:249                                     ; preds = %288, %230
  %250 = load i32, i32* %i, align 4, !tbaa !1
  %251 = icmp slt i32 %250, 10
  br i1 %251, label %252, label %291

; <label>:252                                     ; preds = %249
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %253

; <label>:253                                     ; preds = %284, %252
  %254 = load i32, i32* %j, align 4, !tbaa !1
  %255 = icmp slt i32 %254, 7
  br i1 %255, label %256, label %287

; <label>:256                                     ; preds = %253
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %257

; <label>:257                                     ; preds = %280, %256
  %258 = load i32, i32* %k, align 4, !tbaa !1
  %259 = icmp slt i32 %258, 3
  br i1 %259, label %260, label %283

; <label>:260                                     ; preds = %257
  %261 = load i32, i32* %k, align 4, !tbaa !1
  %262 = sext i32 %261 to i64
  %263 = load i32, i32* %j, align 4, !tbaa !1
  %264 = sext i32 %263 to i64
  %265 = load i32, i32* %i, align 4, !tbaa !1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [10 x [7 x [3 x i64]]], [10 x [7 x [3 x i64]]]* @g_155, i32 0, i64 %266
  %268 = getelementptr inbounds [7 x [3 x i64]], [7 x [3 x i64]]* %267, i32 0, i64 %264
  %269 = getelementptr inbounds [3 x i64], [3 x i64]* %268, i32 0, i64 %262
  %270 = load i64, i64* %269, align 8, !tbaa !7
  %271 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %270, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 %271)
  %272 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

; <label>:274                                     ; preds = %260
  %275 = load i32, i32* %i, align 4, !tbaa !1
  %276 = load i32, i32* %j, align 4, !tbaa !1
  %277 = load i32, i32* %k, align 4, !tbaa !1
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %275, i32 %276, i32 %277)
  br label %279

; <label>:279                                     ; preds = %274, %260
  br label %280

; <label>:280                                     ; preds = %279
  %281 = load i32, i32* %k, align 4, !tbaa !1
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %k, align 4, !tbaa !1
  br label %257

; <label>:283                                     ; preds = %257
  br label %284

; <label>:284                                     ; preds = %283
  %285 = load i32, i32* %j, align 4, !tbaa !1
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %j, align 4, !tbaa !1
  br label %253

; <label>:287                                     ; preds = %253
  br label %288

; <label>:288                                     ; preds = %287
  %289 = load i32, i32* %i, align 4, !tbaa !1
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %i, align 4, !tbaa !1
  br label %249

; <label>:291                                     ; preds = %249
  %292 = load volatile i32, i32* @g_169, align 4, !tbaa !1
  %293 = sext i32 %292 to i64
  %294 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %293, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %294)
  %295 = load i64, i64* @g_208, align 8, !tbaa !7
  %296 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %295, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %296)
  %297 = load i16, i16* @g_210, align 2, !tbaa !10
  %298 = zext i16 %297 to i64
  %299 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %298, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %299)
  %300 = load i8, i8* @g_273, align 1, !tbaa !9
  %301 = sext i8 %300 to i64
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %302)
  %303 = load i8, i8* @g_275, align 1, !tbaa !9
  %304 = zext i8 %303 to i64
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %304, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %305)
  %306 = load i16, i16* @g_390, align 2, !tbaa !10
  %307 = zext i16 %306 to i64
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %308)
  %309 = load volatile i16, i16* @g_424, align 2, !tbaa !10
  %310 = sext i16 %309 to i64
  %311 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %310, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %311)
  %312 = load i32, i32* @g_436, align 4, !tbaa !1
  %313 = sext i32 %312 to i64
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %314)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %315

; <label>:315                                     ; preds = %355, %291
  %316 = load i32, i32* %i, align 4, !tbaa !1
  %317 = icmp slt i32 %316, 3
  br i1 %317, label %318, label %358

; <label>:318                                     ; preds = %315
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %319

; <label>:319                                     ; preds = %351, %318
  %320 = load i32, i32* %j, align 4, !tbaa !1
  %321 = icmp slt i32 %320, 5
  br i1 %321, label %322, label %354

; <label>:322                                     ; preds = %319
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %323

; <label>:323                                     ; preds = %347, %322
  %324 = load i32, i32* %k, align 4, !tbaa !1
  %325 = icmp slt i32 %324, 3
  br i1 %325, label %326, label %350

; <label>:326                                     ; preds = %323
  %327 = load i32, i32* %k, align 4, !tbaa !1
  %328 = sext i32 %327 to i64
  %329 = load i32, i32* %j, align 4, !tbaa !1
  %330 = sext i32 %329 to i64
  %331 = load i32, i32* %i, align 4, !tbaa !1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [3 x [5 x [3 x i16]]], [3 x [5 x [3 x i16]]]* @g_494, i32 0, i64 %332
  %334 = getelementptr inbounds [5 x [3 x i16]], [5 x [3 x i16]]* %333, i32 0, i64 %330
  %335 = getelementptr inbounds [3 x i16], [3 x i16]* %334, i32 0, i64 %328
  %336 = load i16, i16* %335, align 2, !tbaa !10
  %337 = zext i16 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 %338)
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %346

; <label>:341                                     ; preds = %326
  %342 = load i32, i32* %i, align 4, !tbaa !1
  %343 = load i32, i32* %j, align 4, !tbaa !1
  %344 = load i32, i32* %k, align 4, !tbaa !1
  %345 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %342, i32 %343, i32 %344)
  br label %346

; <label>:346                                     ; preds = %341, %326
  br label %347

; <label>:347                                     ; preds = %346
  %348 = load i32, i32* %k, align 4, !tbaa !1
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %k, align 4, !tbaa !1
  br label %323

; <label>:350                                     ; preds = %323
  br label %351

; <label>:351                                     ; preds = %350
  %352 = load i32, i32* %j, align 4, !tbaa !1
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %j, align 4, !tbaa !1
  br label %319

; <label>:354                                     ; preds = %319
  br label %355

; <label>:355                                     ; preds = %354
  %356 = load i32, i32* %i, align 4, !tbaa !1
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %i, align 4, !tbaa !1
  br label %315

; <label>:358                                     ; preds = %315
  %359 = load volatile i72, i72* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_507 to i72*), align 1
  %360 = shl i72 %359, 52
  %361 = ashr i72 %360, 52
  %362 = trunc i72 %361 to i32
  %363 = sext i32 %362 to i64
  %364 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %363, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %364)
  %365 = load volatile i72, i72* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_507 to i72*), align 1
  %366 = shl i72 %365, 27
  %367 = ashr i72 %366, 47
  %368 = trunc i72 %367 to i32
  %369 = sext i32 %368 to i64
  %370 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %369, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %370)
  %371 = load volatile i72, i72* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_507 to i72*), align 1
  %372 = shl i72 %371, 4
  %373 = ashr i72 %372, 49
  %374 = trunc i72 %373 to i32
  %375 = sext i32 %374 to i64
  %376 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %375, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %376)
  %377 = load i64, i64* @g_655, align 8, !tbaa !7
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %377, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %378)
  %379 = load i8, i8* @g_696, align 1, !tbaa !9
  %380 = zext i8 %379 to i64
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %380, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %381)
  %382 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %383 = zext i32 %382 to i64
  %384 = xor i64 %383, 4294967295
  %385 = trunc i64 %384 to i32
  %386 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %385, i32 %386)
  %387 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %387) #1
  %388 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %388) #1
  %389 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %389) #1
  %390 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %390) #1
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
  %l_12 = alloca i64, align 8
  %1 = bitcast i64* %l_12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 1, i64* %l_12, align 8, !tbaa !7
  %2 = load i64, i64* %l_12, align 8, !tbaa !7
  %3 = trunc i64 %2 to i8
  %4 = load i64, i64* %l_12, align 8, !tbaa !7
  %5 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %3, i8 zeroext 5)
  %6 = zext i8 %5 to i16
  %7 = load i64, i64* %l_12, align 8, !tbaa !7
  %8 = trunc i64 %7 to i32
  %9 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_13, i32 0, i64 3), align 1, !tbaa !9
  %10 = sext i8 %9 to i32
  %11 = call zeroext i16 @func_6(i16 zeroext %6, i32 %8, i32 %10)
  %12 = call i32 @func_4(i16 zeroext %11)
  %13 = call i32 @func_2(i32 %12)
  %14 = load i8, i8* @g_696, align 1, !tbaa !9
  %15 = zext i8 %14 to i32
  %16 = xor i32 %15, %13
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* @g_696, align 1, !tbaa !9
  %18 = load i64, i64* %l_12, align 8, !tbaa !7
  %19 = trunc i64 %18 to i16
  %20 = bitcast i64* %l_12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i16 %19
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @func_2(i32 %p_3) #0 {
  %1 = alloca i32, align 4
  %l_682 = alloca [3 x i64], align 16
  %l_683 = alloca i8*, align 8
  %l_684 = alloca [3 x i8*], align 16
  %l_685 = alloca i32, align 4
  %l_690 = alloca %struct.S0*, align 8
  %l_689 = alloca [3 x [6 x [4 x %struct.S0**]]], align 16
  %l_688 = alloca %struct.S0***, align 8
  %l_691 = alloca %struct.S0****, align 8
  %l_695 = alloca [4 x i16], align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_694 = alloca i32*, align 8
  %2 = alloca i32
  store i32 %p_3, i32* %1, align 4, !tbaa !1
  %3 = bitcast [3 x i64]* %l_682 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i8** %l_683 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* null, i8** %l_683, align 8, !tbaa !5
  %5 = bitcast [3 x i8*]* %l_684 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #1
  %6 = bitcast i32* %l_685 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %l_685, align 4, !tbaa !1
  %7 = bitcast %struct.S0** %l_690 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0** %l_690, align 8, !tbaa !5
  %8 = bitcast [3 x [6 x [4 x %struct.S0**]]]* %l_689 to i8*
  call void @llvm.lifetime.start(i64 576, i8* %8) #1
  %9 = getelementptr inbounds [3 x [6 x [4 x %struct.S0**]]], [3 x [6 x [4 x %struct.S0**]]]* %l_689, i64 0, i64 0
  %10 = getelementptr inbounds [6 x [4 x %struct.S0**]], [6 x [4 x %struct.S0**]]* %9, i64 0, i64 0
  %11 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %10, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %11, !tbaa !5
  %12 = getelementptr inbounds %struct.S0**, %struct.S0*** %11, i64 1
  store %struct.S0** %l_690, %struct.S0*** %12, !tbaa !5
  %13 = getelementptr inbounds %struct.S0**, %struct.S0*** %12, i64 1
  store %struct.S0** %l_690, %struct.S0*** %13, !tbaa !5
  %14 = getelementptr inbounds %struct.S0**, %struct.S0*** %13, i64 1
  store %struct.S0** %l_690, %struct.S0*** %14, !tbaa !5
  %15 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %10, i64 1
  %16 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %15, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %16, !tbaa !5
  %17 = getelementptr inbounds %struct.S0**, %struct.S0*** %16, i64 1
  store %struct.S0** %l_690, %struct.S0*** %17, !tbaa !5
  %18 = getelementptr inbounds %struct.S0**, %struct.S0*** %17, i64 1
  store %struct.S0** %l_690, %struct.S0*** %18, !tbaa !5
  %19 = getelementptr inbounds %struct.S0**, %struct.S0*** %18, i64 1
  store %struct.S0** %l_690, %struct.S0*** %19, !tbaa !5
  %20 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %15, i64 1
  %21 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %20, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %21, !tbaa !5
  %22 = getelementptr inbounds %struct.S0**, %struct.S0*** %21, i64 1
  store %struct.S0** %l_690, %struct.S0*** %22, !tbaa !5
  %23 = getelementptr inbounds %struct.S0**, %struct.S0*** %22, i64 1
  store %struct.S0** %l_690, %struct.S0*** %23, !tbaa !5
  %24 = getelementptr inbounds %struct.S0**, %struct.S0*** %23, i64 1
  store %struct.S0** %l_690, %struct.S0*** %24, !tbaa !5
  %25 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %20, i64 1
  %26 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %25, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %26, !tbaa !5
  %27 = getelementptr inbounds %struct.S0**, %struct.S0*** %26, i64 1
  store %struct.S0** %l_690, %struct.S0*** %27, !tbaa !5
  %28 = getelementptr inbounds %struct.S0**, %struct.S0*** %27, i64 1
  store %struct.S0** %l_690, %struct.S0*** %28, !tbaa !5
  %29 = getelementptr inbounds %struct.S0**, %struct.S0*** %28, i64 1
  store %struct.S0** %l_690, %struct.S0*** %29, !tbaa !5
  %30 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %25, i64 1
  %31 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %30, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %31, !tbaa !5
  %32 = getelementptr inbounds %struct.S0**, %struct.S0*** %31, i64 1
  store %struct.S0** %l_690, %struct.S0*** %32, !tbaa !5
  %33 = getelementptr inbounds %struct.S0**, %struct.S0*** %32, i64 1
  store %struct.S0** null, %struct.S0*** %33, !tbaa !5
  %34 = getelementptr inbounds %struct.S0**, %struct.S0*** %33, i64 1
  store %struct.S0** %l_690, %struct.S0*** %34, !tbaa !5
  %35 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %30, i64 1
  %36 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %35, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %36, !tbaa !5
  %37 = getelementptr inbounds %struct.S0**, %struct.S0*** %36, i64 1
  store %struct.S0** %l_690, %struct.S0*** %37, !tbaa !5
  %38 = getelementptr inbounds %struct.S0**, %struct.S0*** %37, i64 1
  store %struct.S0** %l_690, %struct.S0*** %38, !tbaa !5
  %39 = getelementptr inbounds %struct.S0**, %struct.S0*** %38, i64 1
  store %struct.S0** %l_690, %struct.S0*** %39, !tbaa !5
  %40 = getelementptr inbounds [6 x [4 x %struct.S0**]], [6 x [4 x %struct.S0**]]* %9, i64 1
  %41 = getelementptr inbounds [6 x [4 x %struct.S0**]], [6 x [4 x %struct.S0**]]* %40, i64 0, i64 0
  %42 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %41, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %42, !tbaa !5
  %43 = getelementptr inbounds %struct.S0**, %struct.S0*** %42, i64 1
  store %struct.S0** %l_690, %struct.S0*** %43, !tbaa !5
  %44 = getelementptr inbounds %struct.S0**, %struct.S0*** %43, i64 1
  store %struct.S0** null, %struct.S0*** %44, !tbaa !5
  %45 = getelementptr inbounds %struct.S0**, %struct.S0*** %44, i64 1
  store %struct.S0** %l_690, %struct.S0*** %45, !tbaa !5
  %46 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %41, i64 1
  %47 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %46, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %47, !tbaa !5
  %48 = getelementptr inbounds %struct.S0**, %struct.S0*** %47, i64 1
  store %struct.S0** %l_690, %struct.S0*** %48, !tbaa !5
  %49 = getelementptr inbounds %struct.S0**, %struct.S0*** %48, i64 1
  store %struct.S0** %l_690, %struct.S0*** %49, !tbaa !5
  %50 = getelementptr inbounds %struct.S0**, %struct.S0*** %49, i64 1
  store %struct.S0** %l_690, %struct.S0*** %50, !tbaa !5
  %51 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %46, i64 1
  %52 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %51, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %52, !tbaa !5
  %53 = getelementptr inbounds %struct.S0**, %struct.S0*** %52, i64 1
  store %struct.S0** %l_690, %struct.S0*** %53, !tbaa !5
  %54 = getelementptr inbounds %struct.S0**, %struct.S0*** %53, i64 1
  store %struct.S0** %l_690, %struct.S0*** %54, !tbaa !5
  %55 = getelementptr inbounds %struct.S0**, %struct.S0*** %54, i64 1
  store %struct.S0** %l_690, %struct.S0*** %55, !tbaa !5
  %56 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %51, i64 1
  %57 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %56, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %57, !tbaa !5
  %58 = getelementptr inbounds %struct.S0**, %struct.S0*** %57, i64 1
  store %struct.S0** %l_690, %struct.S0*** %58, !tbaa !5
  %59 = getelementptr inbounds %struct.S0**, %struct.S0*** %58, i64 1
  store %struct.S0** %l_690, %struct.S0*** %59, !tbaa !5
  %60 = getelementptr inbounds %struct.S0**, %struct.S0*** %59, i64 1
  store %struct.S0** %l_690, %struct.S0*** %60, !tbaa !5
  %61 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %56, i64 1
  %62 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %61, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %62, !tbaa !5
  %63 = getelementptr inbounds %struct.S0**, %struct.S0*** %62, i64 1
  store %struct.S0** %l_690, %struct.S0*** %63, !tbaa !5
  %64 = getelementptr inbounds %struct.S0**, %struct.S0*** %63, i64 1
  store %struct.S0** %l_690, %struct.S0*** %64, !tbaa !5
  %65 = getelementptr inbounds %struct.S0**, %struct.S0*** %64, i64 1
  store %struct.S0** %l_690, %struct.S0*** %65, !tbaa !5
  %66 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %61, i64 1
  %67 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %66, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %67, !tbaa !5
  %68 = getelementptr inbounds %struct.S0**, %struct.S0*** %67, i64 1
  store %struct.S0** %l_690, %struct.S0*** %68, !tbaa !5
  %69 = getelementptr inbounds %struct.S0**, %struct.S0*** %68, i64 1
  store %struct.S0** %l_690, %struct.S0*** %69, !tbaa !5
  %70 = getelementptr inbounds %struct.S0**, %struct.S0*** %69, i64 1
  store %struct.S0** %l_690, %struct.S0*** %70, !tbaa !5
  %71 = getelementptr inbounds [6 x [4 x %struct.S0**]], [6 x [4 x %struct.S0**]]* %40, i64 1
  %72 = getelementptr inbounds [6 x [4 x %struct.S0**]], [6 x [4 x %struct.S0**]]* %71, i64 0, i64 0
  %73 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %72, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %73, !tbaa !5
  %74 = getelementptr inbounds %struct.S0**, %struct.S0*** %73, i64 1
  store %struct.S0** %l_690, %struct.S0*** %74, !tbaa !5
  %75 = getelementptr inbounds %struct.S0**, %struct.S0*** %74, i64 1
  store %struct.S0** %l_690, %struct.S0*** %75, !tbaa !5
  %76 = getelementptr inbounds %struct.S0**, %struct.S0*** %75, i64 1
  store %struct.S0** %l_690, %struct.S0*** %76, !tbaa !5
  %77 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %72, i64 1
  %78 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %77, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %78, !tbaa !5
  %79 = getelementptr inbounds %struct.S0**, %struct.S0*** %78, i64 1
  store %struct.S0** %l_690, %struct.S0*** %79, !tbaa !5
  %80 = getelementptr inbounds %struct.S0**, %struct.S0*** %79, i64 1
  store %struct.S0** null, %struct.S0*** %80, !tbaa !5
  %81 = getelementptr inbounds %struct.S0**, %struct.S0*** %80, i64 1
  store %struct.S0** %l_690, %struct.S0*** %81, !tbaa !5
  %82 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %77, i64 1
  %83 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %82, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %83, !tbaa !5
  %84 = getelementptr inbounds %struct.S0**, %struct.S0*** %83, i64 1
  store %struct.S0** %l_690, %struct.S0*** %84, !tbaa !5
  %85 = getelementptr inbounds %struct.S0**, %struct.S0*** %84, i64 1
  store %struct.S0** %l_690, %struct.S0*** %85, !tbaa !5
  %86 = getelementptr inbounds %struct.S0**, %struct.S0*** %85, i64 1
  store %struct.S0** %l_690, %struct.S0*** %86, !tbaa !5
  %87 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %82, i64 1
  %88 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %87, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %88, !tbaa !5
  %89 = getelementptr inbounds %struct.S0**, %struct.S0*** %88, i64 1
  store %struct.S0** %l_690, %struct.S0*** %89, !tbaa !5
  %90 = getelementptr inbounds %struct.S0**, %struct.S0*** %89, i64 1
  store %struct.S0** null, %struct.S0*** %90, !tbaa !5
  %91 = getelementptr inbounds %struct.S0**, %struct.S0*** %90, i64 1
  store %struct.S0** %l_690, %struct.S0*** %91, !tbaa !5
  %92 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %87, i64 1
  %93 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %92, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %93, !tbaa !5
  %94 = getelementptr inbounds %struct.S0**, %struct.S0*** %93, i64 1
  store %struct.S0** %l_690, %struct.S0*** %94, !tbaa !5
  %95 = getelementptr inbounds %struct.S0**, %struct.S0*** %94, i64 1
  store %struct.S0** %l_690, %struct.S0*** %95, !tbaa !5
  %96 = getelementptr inbounds %struct.S0**, %struct.S0*** %95, i64 1
  store %struct.S0** %l_690, %struct.S0*** %96, !tbaa !5
  %97 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %92, i64 1
  %98 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %97, i64 0, i64 0
  store %struct.S0** %l_690, %struct.S0*** %98, !tbaa !5
  %99 = getelementptr inbounds %struct.S0**, %struct.S0*** %98, i64 1
  store %struct.S0** %l_690, %struct.S0*** %99, !tbaa !5
  %100 = getelementptr inbounds %struct.S0**, %struct.S0*** %99, i64 1
  store %struct.S0** %l_690, %struct.S0*** %100, !tbaa !5
  %101 = getelementptr inbounds %struct.S0**, %struct.S0*** %100, i64 1
  store %struct.S0** %l_690, %struct.S0*** %101, !tbaa !5
  %102 = bitcast %struct.S0**** %l_688 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  %103 = getelementptr inbounds [3 x [6 x [4 x %struct.S0**]]], [3 x [6 x [4 x %struct.S0**]]]* %l_689, i32 0, i64 0
  %104 = getelementptr inbounds [6 x [4 x %struct.S0**]], [6 x [4 x %struct.S0**]]* %103, i32 0, i64 0
  %105 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %104, i32 0, i64 2
  store %struct.S0*** %105, %struct.S0**** %l_688, align 8, !tbaa !5
  %106 = bitcast %struct.S0***** %l_691 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  store %struct.S0**** %l_688, %struct.S0***** %l_691, align 8, !tbaa !5
  %107 = bitcast [4 x i16]* %l_695 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  %108 = bitcast [4 x i16]* %l_695 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* bitcast ([4 x i16]* @func_2.l_695 to i8*), i64 8, i32 2, i1 false)
  %109 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #1
  %110 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %110) #1
  %111 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %112

; <label>:112                                     ; preds = %119, %0
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = icmp slt i32 %113, 3
  br i1 %114, label %115, label %122

; <label>:115                                     ; preds = %112
  %116 = load i32, i32* %i, align 4, !tbaa !1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x i64], [3 x i64]* %l_682, i32 0, i64 %117
  store i64 -2, i64* %118, align 8, !tbaa !7
  br label %119

; <label>:119                                     ; preds = %115
  %120 = load i32, i32* %i, align 4, !tbaa !1
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %i, align 4, !tbaa !1
  br label %112

; <label>:122                                     ; preds = %112
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %123

; <label>:123                                     ; preds = %130, %122
  %124 = load i32, i32* %i, align 4, !tbaa !1
  %125 = icmp slt i32 %124, 3
  br i1 %125, label %126, label %133

; <label>:126                                     ; preds = %123
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [3 x i8*], [3 x i8*]* %l_684, i32 0, i64 %128
  store i8* getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 0), i8** %129, align 8, !tbaa !5
  br label %130

; <label>:130                                     ; preds = %126
  %131 = load i32, i32* %i, align 4, !tbaa !1
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %i, align 4, !tbaa !1
  br label %123

; <label>:133                                     ; preds = %123
  %134 = load i32, i32* %1, align 4, !tbaa !1
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [3 x i64], [3 x i64]* %l_682, i32 0, i64 0
  %137 = load i64, i64* %136, align 8, !tbaa !7
  %138 = xor i64 %137, %135
  store i64 %138, i64* %136, align 8, !tbaa !7
  %139 = load i8*, i8** @g_274, align 8, !tbaa !5
  %140 = load i8, i8* %139, align 1, !tbaa !9
  %141 = zext i8 %140 to i64
  %142 = xor i64 %141, %138
  %143 = trunc i64 %142 to i8
  store i8 %143, i8* %139, align 1, !tbaa !9
  %144 = zext i8 %143 to i32
  %145 = load i32, i32* %l_685, align 4, !tbaa !1
  %146 = or i32 %145, %144
  store i32 %146, i32* %l_685, align 4, !tbaa !1
  %147 = icmp ne i8** %l_683, @g_274
  %148 = zext i1 %147 to i32
  %149 = xor i32 %146, %148
  %150 = sext i32 %149 to i64
  %151 = xor i64 %150, 3053561328277755010
  %152 = trunc i64 %151 to i32
  %153 = load i32*, i32** @g_311, align 8, !tbaa !5
  store volatile i32 %152, i32* %153, align 4, !tbaa !1
  %154 = load %struct.S0***, %struct.S0**** %l_688, align 8, !tbaa !5
  %155 = load %struct.S0****, %struct.S0***** %l_691, align 8, !tbaa !5
  store %struct.S0*** %154, %struct.S0**** %155, align 8, !tbaa !5
  %156 = getelementptr inbounds [3 x [6 x [4 x %struct.S0**]]], [3 x [6 x [4 x %struct.S0**]]]* %l_689, i32 0, i64 0
  %157 = getelementptr inbounds [6 x [4 x %struct.S0**]], [6 x [4 x %struct.S0**]]* %156, i32 0, i64 0
  %158 = getelementptr inbounds [4 x %struct.S0**], [4 x %struct.S0**]* %157, i32 0, i64 2
  %159 = icmp eq %struct.S0*** %154, %158
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %1, align 4, !tbaa !1
  %162 = call i32 @safe_mod_func_int32_t_s_s(i32 %160, i32 %161)
  %163 = load i32*, i32** @g_311, align 8, !tbaa !5
  store volatile i32 %162, i32* %163, align 4, !tbaa !1
  store i8 -2, i8* @g_273, align 1, !tbaa !9
  br label %164

; <label>:164                                     ; preds = %183, %133
  %165 = load i8, i8* @g_273, align 1, !tbaa !9
  %166 = sext i8 %165 to i32
  %167 = icmp sge i32 %166, 7
  br i1 %167, label %168, label %188

; <label>:168                                     ; preds = %164
  %169 = bitcast i32** %l_694 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #1
  store i32* @g_436, i32** %l_694, align 8, !tbaa !5
  %170 = load i32*, i32** %l_694, align 8, !tbaa !5
  %171 = load i32**, i32*** @g_199, align 8, !tbaa !5
  store i32* %170, i32** %171, align 8, !tbaa !5
  %172 = getelementptr inbounds [4 x i16], [4 x i16]* %l_695, i32 0, i64 2
  %173 = load i16, i16* %172, align 2, !tbaa !10
  %174 = icmp ne i16 %173, 0
  br i1 %174, label %175, label %176

; <label>:175                                     ; preds = %168
  store i32 8, i32* %2
  br label %180

; <label>:176                                     ; preds = %168
  %177 = load i32**, i32*** @g_121, align 8, !tbaa !5
  %178 = load volatile i32*, i32** %177, align 8, !tbaa !5
  %179 = load i32**, i32*** @g_121, align 8, !tbaa !5
  store volatile i32* %178, i32** %179, align 8, !tbaa !5
  store i32 0, i32* %2
  br label %180

; <label>:180                                     ; preds = %176, %175
  %181 = bitcast i32** %l_694 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %204 [
    i32 0, label %182
    i32 8, label %188
  ]

; <label>:182                                     ; preds = %180
  br label %183

; <label>:183                                     ; preds = %182
  %184 = load i8, i8* @g_273, align 1, !tbaa !9
  %185 = sext i8 %184 to i64
  %186 = call i64 @safe_add_func_uint64_t_u_u(i64 %185, i64 5)
  %187 = trunc i64 %186 to i8
  store i8 %187, i8* @g_273, align 1, !tbaa !9
  br label %164

; <label>:188                                     ; preds = %180, %164
  %189 = getelementptr inbounds [4 x i16], [4 x i16]* %l_695, i32 0, i64 3
  %190 = load i16, i16* %189, align 2, !tbaa !10
  %191 = sext i16 %190 to i32
  store i32 1, i32* %2
  %192 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast [4 x i16]* %l_695 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast %struct.S0***** %l_691 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast %struct.S0**** %l_688 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast [3 x [6 x [4 x %struct.S0**]]]* %l_689 to i8*
  call void @llvm.lifetime.end(i64 576, i8* %198) #1
  %199 = bitcast %struct.S0** %l_690 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = bitcast i32* %l_685 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast [3 x i8*]* %l_684 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %201) #1
  %202 = bitcast i8** %l_683 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast [3 x i64]* %l_682 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %203) #1
  ret i32 %191

; <label>:204                                     ; preds = %180
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @func_4(i16 zeroext %p_5) #0 {
  %1 = alloca i16, align 2
  %l_681 = alloca i32, align 4
  store i16 %p_5, i16* %1, align 2, !tbaa !10
  %2 = bitcast i32* %l_681 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 7, i32* %l_681, align 4, !tbaa !1
  %3 = load i32, i32* %l_681, align 4, !tbaa !1
  %4 = bitcast i32* %l_681 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #1
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @func_6(i16 zeroext %p_7, i32 %p_8, i32 %p_9) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %l_39 = alloca i8, align 1
  %l_50 = alloca i8*, align 8
  %l_391 = alloca i32, align 4
  %l_392 = alloca i8, align 1
  %l_457 = alloca i64, align 8
  %l_460 = alloca i32, align 4
  %l_461 = alloca i32, align 4
  %l_462 = alloca i32, align 4
  %l_463 = alloca i32, align 4
  %l_464 = alloca i16, align 2
  %l_465 = alloca i32, align 4
  %l_466 = alloca i32, align 4
  %l_467 = alloca i32, align 4
  %l_468 = alloca i32, align 4
  %l_469 = alloca i32, align 4
  %l_470 = alloca i32, align 4
  %l_471 = alloca [3 x i32], align 4
  %l_472 = alloca i64, align 8
  %l_474 = alloca i16, align 2
  %l_475 = alloca [8 x [5 x [6 x i8]]], align 16
  %l_580 = alloca %struct.S0**, align 8
  %l_604 = alloca i64, align 8
  %l_616 = alloca i32, align 4
  %l_661 = alloca i32, align 4
  %l_665 = alloca [9 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_458 = alloca [8 x i32*], align 16
  %l_459 = alloca i64, align 8
  %l_473 = alloca i16, align 2
  %l_533 = alloca i8, align 1
  %l_649 = alloca [8 x [4 x i32]], align 16
  %l_666 = alloca i16, align 2
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %l_671 = alloca i32*, align 8
  %l_672 = alloca i32*, align 8
  %l_673 = alloca i32*, align 8
  %l_674 = alloca i32*, align 8
  %l_675 = alloca i32*, align 8
  %l_676 = alloca [1 x [3 x i32*]], align 16
  %l_677 = alloca [9 x [4 x i64]], align 16
  %l_678 = alloca i8, align 1
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  store i16 %p_7, i16* %1, align 2, !tbaa !10
  store i32 %p_8, i32* %2, align 4, !tbaa !1
  store i32 %p_9, i32* %3, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_39) #1
  store i8 96, i8* %l_39, align 1, !tbaa !9
  %4 = bitcast i8** %l_50 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 0), i8** %l_50, align 8, !tbaa !5
  %5 = bitcast i32* %l_391 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 1310955056, i32* %l_391, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_392) #1
  store i8 77, i8* %l_392, align 1, !tbaa !9
  %6 = bitcast i64* %l_457 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64 4034679367021385524, i64* %l_457, align 8, !tbaa !7
  %7 = bitcast i32* %l_460 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -1279419466, i32* %l_460, align 4, !tbaa !1
  %8 = bitcast i32* %l_461 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 365191310, i32* %l_461, align 4, !tbaa !1
  %9 = bitcast i32* %l_462 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 1686485884, i32* %l_462, align 4, !tbaa !1
  %10 = bitcast i32* %l_463 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 1857058769, i32* %l_463, align 4, !tbaa !1
  %11 = bitcast i16* %l_464 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  store i16 -1, i16* %l_464, align 2, !tbaa !10
  %12 = bitcast i32* %l_465 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -1710866071, i32* %l_465, align 4, !tbaa !1
  %13 = bitcast i32* %l_466 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 -1, i32* %l_466, align 4, !tbaa !1
  %14 = bitcast i32* %l_467 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 209525790, i32* %l_467, align 4, !tbaa !1
  %15 = bitcast i32* %l_468 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 7, i32* %l_468, align 4, !tbaa !1
  %16 = bitcast i32* %l_469 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 -328398796, i32* %l_469, align 4, !tbaa !1
  %17 = bitcast i32* %l_470 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 -958179721, i32* %l_470, align 4, !tbaa !1
  %18 = bitcast [3 x i32]* %l_471 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %18) #1
  %19 = bitcast i64* %l_472 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64 -1, i64* %l_472, align 8, !tbaa !7
  %20 = bitcast i16* %l_474 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %20) #1
  store i16 -8, i16* %l_474, align 2, !tbaa !10
  %21 = bitcast [8 x [5 x [6 x i8]]]* %l_475 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %21) #1
  %22 = bitcast [8 x [5 x [6 x i8]]]* %l_475 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* getelementptr inbounds ([8 x [5 x [6 x i8]]], [8 x [5 x [6 x i8]]]* @func_6.l_475, i32 0, i32 0, i32 0, i32 0), i64 240, i32 16, i1 false)
  %23 = bitcast %struct.S0*** %l_580 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store %struct.S0** @g_309, %struct.S0*** %l_580, align 8, !tbaa !5
  %24 = bitcast i64* %l_604 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i64 -6474032420043458261, i64* %l_604, align 8, !tbaa !7
  %25 = bitcast i32* %l_616 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 -1003788218, i32* %l_616, align 4, !tbaa !1
  %26 = bitcast i32* %l_661 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 1, i32* %l_661, align 4, !tbaa !1
  %27 = bitcast [9 x i32]* %l_665 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %27) #1
  %28 = bitcast [9 x i32]* %l_665 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* bitcast ([9 x i32]* @func_6.l_665 to i8*), i64 36, i32 16, i1 false)
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %32

; <label>:32                                      ; preds = %39, %0
  %33 = load i32, i32* %i, align 4, !tbaa !1
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %42

; <label>:35                                      ; preds = %32
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %l_471, i32 0, i64 %37
  store i32 -4, i32* %38, align 4, !tbaa !1
  br label %39

; <label>:39                                      ; preds = %35
  %40 = load i32, i32* %i, align 4, !tbaa !1
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %i, align 4, !tbaa !1
  br label %32

; <label>:42                                      ; preds = %32
  %43 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_13, i32 0, i64 3), align 1, !tbaa !9
  %44 = load i32, i32* %3, align 4, !tbaa !1
  %45 = load i8, i8* %l_39, align 1, !tbaa !9
  %46 = load i8*, i8** %l_50, align 8, !tbaa !5
  %47 = load i8, i8* %46, align 1, !tbaa !9
  %48 = add i8 %47, -1
  store i8 %48, i8* %46, align 1, !tbaa !9
  %49 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext 3, i8 zeroext %47)
  %50 = zext i8 %49 to i64
  %51 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext 62, i32 1)
  %52 = zext i8 %51 to i64
  %53 = load i16, i16* %1, align 2, !tbaa !10
  %54 = zext i16 %53 to i32
  %55 = xor i32 %54, -1
  %56 = load i8*, i8** %l_50, align 8, !tbaa !5
  %57 = icmp eq i8* null, %56
  %58 = zext i1 %57 to i32
  %59 = load i16, i16* %1, align 2, !tbaa !10
  %60 = zext i16 %59 to i32
  %61 = icmp eq i32 %58, %60
  %62 = zext i1 %61 to i32
  %63 = trunc i32 %62 to i16
  %64 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %63, i16 zeroext -7687)
  %65 = zext i16 %64 to i32
  %66 = or i32 %55, %65
  %67 = sext i32 %66 to i64
  %68 = load i32, i32* %3, align 4, !tbaa !1
  %69 = sext i32 %68 to i64
  %70 = call i64 @safe_div_func_int64_t_s_s(i64 %67, i64 %69)
  %71 = and i64 %52, %70
  %72 = icmp sge i64 %50, %71
  %73 = zext i1 %72 to i32
  %74 = load i8, i8* %l_39, align 1, !tbaa !9
  %75 = load i8, i8* %l_39, align 1, !tbaa !9
  %76 = load i16, i16* %1, align 2, !tbaa !10
  %77 = call zeroext i16 @func_43(i32 -886126864, i8 signext %74, i8 zeroext %75, i16 signext %76)
  %78 = load i72, i72* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to i72*), align 1
  %79 = shl i72 %78, 27
  %80 = ashr i72 %79, 47
  %81 = trunc i72 %80 to i32
  %82 = trunc i32 %81 to i16
  %83 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %77, i16 zeroext %82)
  %84 = trunc i16 %83 to i8
  %85 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %84)
  %86 = load i32, i32* %2, align 4, !tbaa !1
  %87 = load i16, i16* %1, align 2, !tbaa !10
  %88 = zext i16 %87 to i32
  %89 = call signext i16 @func_34(i8 zeroext %45, i8 signext %85, i32 %86, i32 %88)
  %90 = sext i16 %89 to i32
  %91 = load i32, i32* %l_391, align 4, !tbaa !1
  %92 = xor i32 %91, %90
  store i32 %92, i32* %l_391, align 4, !tbaa !1
  %93 = sext i32 %92 to i64
  %94 = icmp ule i64 %93, 65535
  %95 = zext i1 %94 to i32
  %96 = trunc i32 %95 to i8
  %97 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %96, i8 signext 9)
  %98 = load i32, i32* %3, align 4, !tbaa !1
  %99 = call i32 @safe_sub_func_int32_t_s_s(i32 415073538, i32 %98)
  %100 = sext i32 %99 to i64
  %101 = call i64 @safe_div_func_uint64_t_u_u(i64 0, i64 %100)
  %102 = load i72, i72* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to i72*), align 1
  %103 = shl i72 %102, 27
  %104 = ashr i72 %103, 47
  %105 = trunc i72 %104 to i32
  %106 = sext i32 %105 to i64
  %107 = or i64 %101, %106
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* %3, align 4, !tbaa !1
  %110 = call i32 @safe_div_func_uint32_t_u_u(i32 %108, i32 %109)
  %111 = load i32, i32* %3, align 4, !tbaa !1
  %112 = call i32 @safe_div_func_int32_t_s_s(i32 %44, i32 %111)
  %113 = load i72, i72* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to i72*), align 1
  %114 = shl i72 %113, 27
  %115 = ashr i72 %114, 47
  %116 = trunc i72 %115 to i32
  %117 = or i32 %112, %116
  %118 = trunc i32 %117 to i16
  %119 = load i32, i32* %2, align 4, !tbaa !1
  %120 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %118, i32 %119)
  %121 = zext i16 %120 to i64
  %122 = icmp ule i64 %121, -1
  %123 = zext i1 %122 to i32
  %124 = load i8, i8* %l_392, align 1, !tbaa !9
  %125 = zext i8 %124 to i32
  %126 = call i32 @safe_add_func_int32_t_s_s(i32 %123, i32 %125)
  %127 = sext i32 %126 to i64
  %128 = load i72, i72* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to i72*), align 1
  %129 = shl i72 %128, 27
  %130 = ashr i72 %129, 47
  %131 = trunc i72 %130 to i32
  %132 = sext i32 %131 to i64
  %133 = call i64 @safe_div_func_int64_t_s_s(i64 %127, i64 %132)
  %134 = icmp ule i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = load i8, i8* %l_39, align 1, !tbaa !9
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %135, %137
  %139 = zext i1 %138 to i32
  %140 = trunc i32 %139 to i8
  %141 = call i32 @func_16(i8 zeroext %140)
  %142 = zext i32 %141 to i64
  %143 = load i64, i64* %l_457, align 8, !tbaa !7
  %144 = icmp ugt i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = trunc i32 %145 to i8
  %147 = load i16, i16* %1, align 2, !tbaa !10
  %148 = trunc i16 %147 to i8
  %149 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %146, i8 zeroext %148)
  %150 = icmp ne i8 %149, 0
  br i1 %150, label %151, label %173

; <label>:151                                     ; preds = %42
  %152 = bitcast [8 x i32*]* %l_458 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %152) #1
  %153 = bitcast [8 x i32*]* %l_458 to i8*
  call void @llvm.memset.p0i8.i64(i8* %153, i8 0, i64 64, i32 16, i1 false)
  %154 = bitcast i64* %l_459 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %154) #1
  store i64 -7, i64* %l_459, align 8, !tbaa !7
  %155 = bitcast i16* %l_473 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %155) #1
  store i16 -24688, i16* %l_473, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_533) #1
  store i8 -105, i8* %l_533, align 1, !tbaa !9
  %156 = bitcast [8 x [4 x i32]]* %l_649 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %156) #1
  %157 = bitcast [8 x [4 x i32]]* %l_649 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* bitcast ([8 x [4 x i32]]* @func_6.l_649 to i8*), i64 128, i32 16, i1 false)
  %158 = bitcast i16* %l_666 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %158) #1
  store i16 0, i16* %l_666, align 2, !tbaa !10
  %159 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  %160 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %160) #1
  %161 = getelementptr inbounds [8 x [5 x [6 x i8]]], [8 x [5 x [6 x i8]]]* %l_475, i32 0, i64 0
  %162 = getelementptr inbounds [5 x [6 x i8]], [5 x [6 x i8]]* %161, i32 0, i64 4
  %163 = getelementptr inbounds [6 x i8], [6 x i8]* %162, i32 0, i64 3
  %164 = load i8, i8* %163, align 1, !tbaa !9
  %165 = add i8 %164, -1
  store i8 %165, i8* %163, align 1, !tbaa !9
  %166 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i16* %l_666 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %168) #1
  %169 = bitcast [8 x [4 x i32]]* %l_649 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %169) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_533) #1
  %170 = bitcast i16* %l_473 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %170) #1
  %171 = bitcast i64* %l_459 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = bitcast [8 x i32*]* %l_458 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %172) #1
  br label %221

; <label>:173                                     ; preds = %42
  %174 = bitcast i32** %l_671 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %174) #1
  store i32* %l_661, i32** %l_671, align 8, !tbaa !5
  %175 = bitcast i32** %l_672 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #1
  store i32* %l_462, i32** %l_672, align 8, !tbaa !5
  %176 = bitcast i32** %l_673 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %176) #1
  store i32* %l_462, i32** %l_673, align 8, !tbaa !5
  %177 = bitcast i32** %l_674 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %177) #1
  store i32* %l_469, i32** %l_674, align 8, !tbaa !5
  %178 = bitcast i32** %l_675 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %178) #1
  store i32* %l_465, i32** %l_675, align 8, !tbaa !5
  %179 = bitcast [1 x [3 x i32*]]* %l_676 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %179) #1
  %180 = bitcast [9 x [4 x i64]]* %l_677 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %180) #1
  %181 = bitcast [9 x [4 x i64]]* %l_677 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %181, i8* bitcast ([9 x [4 x i64]]* @func_6.l_677 to i8*), i64 288, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_678) #1
  store i8 -31, i8* %l_678, align 1, !tbaa !9
  %182 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %182) #1
  %183 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %183) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %184

; <label>:184                                     ; preds = %202, %173
  %185 = load i32, i32* %i3, align 4, !tbaa !1
  %186 = icmp slt i32 %185, 1
  br i1 %186, label %187, label %205

; <label>:187                                     ; preds = %184
  store i32 0, i32* %j4, align 4, !tbaa !1
  br label %188

; <label>:188                                     ; preds = %198, %187
  %189 = load i32, i32* %j4, align 4, !tbaa !1
  %190 = icmp slt i32 %189, 3
  br i1 %190, label %191, label %201

; <label>:191                                     ; preds = %188
  %192 = load i32, i32* %j4, align 4, !tbaa !1
  %193 = sext i32 %192 to i64
  %194 = load i32, i32* %i3, align 4, !tbaa !1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [1 x [3 x i32*]], [1 x [3 x i32*]]* %l_676, i32 0, i64 %195
  %197 = getelementptr inbounds [3 x i32*], [3 x i32*]* %196, i32 0, i64 %193
  store i32* %l_463, i32** %197, align 8, !tbaa !5
  br label %198

; <label>:198                                     ; preds = %191
  %199 = load i32, i32* %j4, align 4, !tbaa !1
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %j4, align 4, !tbaa !1
  br label %188

; <label>:201                                     ; preds = %188
  br label %202

; <label>:202                                     ; preds = %201
  %203 = load i32, i32* %i3, align 4, !tbaa !1
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %i3, align 4, !tbaa !1
  br label %184

; <label>:205                                     ; preds = %184
  %206 = load i32*, i32** %l_671, align 8, !tbaa !5
  %207 = icmp eq i32* null, %206
  %208 = zext i1 %207 to i32
  %209 = load i32*, i32** @g_311, align 8, !tbaa !5
  store volatile i32 %208, i32* %209, align 4, !tbaa !1
  %210 = load i8, i8* %l_678, align 1, !tbaa !9
  %211 = add i8 %210, -1
  store i8 %211, i8* %l_678, align 1, !tbaa !9
  %212 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_678) #1
  %214 = bitcast [9 x [4 x i64]]* %l_677 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %214) #1
  %215 = bitcast [1 x [3 x i32*]]* %l_676 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %215) #1
  %216 = bitcast i32** %l_675 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  %217 = bitcast i32** %l_674 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast i32** %l_673 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i32** %l_672 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %220 = bitcast i32** %l_671 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  br label %221

; <label>:221                                     ; preds = %205, %151
  %222 = load i32, i32* %l_470, align 4, !tbaa !1
  %223 = trunc i32 %222 to i16
  %224 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast [9 x i32]* %l_665 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %227) #1
  %228 = bitcast i32* %l_661 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast i32* %l_616 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast i64* %l_604 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = bitcast %struct.S0*** %l_580 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  %232 = bitcast [8 x [5 x [6 x i8]]]* %l_475 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %232) #1
  %233 = bitcast i16* %l_474 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %233) #1
  %234 = bitcast i64* %l_472 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  %235 = bitcast [3 x i32]* %l_471 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %235) #1
  %236 = bitcast i32* %l_470 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #1
  %237 = bitcast i32* %l_469 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i32* %l_468 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast i32* %l_467 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %240 = bitcast i32* %l_466 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i32* %l_465 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  %242 = bitcast i16* %l_464 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %242) #1
  %243 = bitcast i32* %l_463 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32* %l_462 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast i32* %l_461 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast i32* %l_460 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast i64* %l_457 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_392) #1
  %248 = bitcast i32* %l_391 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  %249 = bitcast i8** %l_50 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_39) #1
  ret i16 %223
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
define internal i32 @func_16(i8 zeroext %p_17) #0 {
  %1 = alloca i8, align 1
  %l_398 = alloca i32*, align 8
  %l_399 = alloca %struct.S0**, align 8
  %l_401 = alloca %struct.S0**, align 8
  %l_400 = alloca %struct.S0***, align 8
  %l_405 = alloca i16*, align 8
  %l_404 = alloca i16**, align 8
  %l_427 = alloca i32, align 4
  %l_454 = alloca i8***, align 8
  %l_456 = alloca i8**, align 8
  %l_455 = alloca i8***, align 8
  %l_397 = alloca i32*, align 8
  %l_409 = alloca [1 x i16*], align 8
  %l_429 = alloca [2 x i32], align 4
  %l_430 = alloca i32, align 4
  %l_431 = alloca i32*, align 8
  %l_432 = alloca i64*, align 8
  %l_433 = alloca [9 x i32*], align 16
  %l_434 = alloca i32, align 4
  %l_435 = alloca i32*, align 8
  %i = alloca i32, align 4
  %l_451 = alloca i8, align 1
  %l_452 = alloca i32*, align 8
  %l_453 = alloca i32*, align 8
  store i8 %p_17, i8* %1, align 1, !tbaa !9
  %2 = bitcast i32** %l_398 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_68, i32** %l_398, align 8, !tbaa !5
  %3 = bitcast %struct.S0*** %l_399 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.S0** @g_309, %struct.S0*** %l_399, align 8, !tbaa !5
  %4 = bitcast %struct.S0*** %l_401 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.S0** @g_309, %struct.S0*** %l_401, align 8, !tbaa !5
  %5 = bitcast %struct.S0**** %l_400 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.S0*** %l_401, %struct.S0**** %l_400, align 8, !tbaa !5
  %6 = bitcast i16** %l_405 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16* null, i16** %l_405, align 8, !tbaa !5
  %7 = bitcast i16*** %l_404 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16** %l_405, i16*** %l_404, align 8, !tbaa !5
  %8 = bitcast i32* %l_427 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -1301097474, i32* %l_427, align 4, !tbaa !1
  %9 = bitcast i8**** %l_454 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i8*** null, i8**** %l_454, align 8, !tbaa !5
  %10 = bitcast i8*** %l_456 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8** @g_274, i8*** %l_456, align 8, !tbaa !5
  %11 = bitcast i8**** %l_455 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8*** %l_456, i8**** %l_455, align 8, !tbaa !5
  store i32 14, i32* @g_92, align 4, !tbaa !1
  br label %12

; <label>:12                                      ; preds = %29, %0
  %13 = load i32, i32* @g_92, align 4, !tbaa !1
  %14 = icmp ne i32 %13, 28
  br i1 %14, label %15, label %32

; <label>:15                                      ; preds = %12
  %16 = bitcast i32** %l_397 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32* @g_68, i32** %l_397, align 8, !tbaa !5
  store i64 0, i64* @g_208, align 8, !tbaa !7
  br label %17

; <label>:17                                      ; preds = %22, %15
  %18 = load i64, i64* @g_208, align 8, !tbaa !7
  %19 = icmp ult i64 %18, 52
  br i1 %19, label %20, label %27

; <label>:20                                      ; preds = %17
  %21 = load i32*, i32** %l_397, align 8, !tbaa !5
  store i32* %21, i32** %l_398, align 8, !tbaa !5
  br label %22

; <label>:22                                      ; preds = %20
  %23 = load i64, i64* @g_208, align 8, !tbaa !7
  %24 = trunc i64 %23 to i16
  %25 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %24, i16 zeroext 7)
  %26 = zext i16 %25 to i64
  store i64 %26, i64* @g_208, align 8, !tbaa !7
  br label %17

; <label>:27                                      ; preds = %17
  %28 = bitcast i32** %l_397 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  br label %29

; <label>:29                                      ; preds = %27
  %30 = load i32, i32* @g_92, align 4, !tbaa !1
  %31 = add i32 %30, 1
  store i32 %31, i32* @g_92, align 4, !tbaa !1
  br label %12

; <label>:32                                      ; preds = %12
  %33 = load %struct.S0**, %struct.S0*** %l_399, align 8, !tbaa !5
  %34 = load %struct.S0**, %struct.S0*** %l_399, align 8, !tbaa !5
  %35 = load %struct.S0***, %struct.S0**** %l_400, align 8, !tbaa !5
  store %struct.S0** %34, %struct.S0*** %35, align 8, !tbaa !5
  %36 = icmp eq %struct.S0** %33, %34
  br i1 %36, label %37, label %206

; <label>:37                                      ; preds = %32
  %38 = bitcast [1 x i16*]* %l_409 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = bitcast [2 x i32]* %l_429 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = bitcast i32* %l_430 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  store i32 -1812763457, i32* %l_430, align 4, !tbaa !1
  %41 = bitcast i32** %l_431 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  store i32* @g_104, i32** %l_431, align 8, !tbaa !5
  %42 = bitcast i64** %l_432 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  store i64* @g_208, i64** %l_432, align 8, !tbaa !5
  %43 = bitcast [9 x i32*]* %l_433 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %43) #1
  %44 = bitcast [9 x i32*]* %l_433 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* bitcast ([9 x i32*]* @func_16.l_433 to i8*), i64 72, i32 16, i1 false)
  %45 = bitcast i32* %l_434 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  store i32 1039861299, i32* %l_434, align 4, !tbaa !1
  %46 = bitcast i32** %l_435 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  store i32* @g_436, i32** %l_435, align 8, !tbaa !5
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %48

; <label>:48                                      ; preds = %55, %37
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %58

; <label>:51                                      ; preds = %48
  %52 = load i32, i32* %i, align 4, !tbaa !1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1 x i16*], [1 x i16*]* %l_409, i32 0, i64 %53
  store i16* null, i16** %54, align 8, !tbaa !5
  br label %55

; <label>:55                                      ; preds = %51
  %56 = load i32, i32* %i, align 4, !tbaa !1
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %i, align 4, !tbaa !1
  br label %48

; <label>:58                                      ; preds = %48
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %59

; <label>:59                                      ; preds = %66, %58
  %60 = load i32, i32* %i, align 4, !tbaa !1
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %69

; <label>:62                                      ; preds = %59
  %63 = load i32, i32* %i, align 4, !tbaa !1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %l_429, i32 0, i64 %64
  store i32 -1897831099, i32* %65, align 4, !tbaa !1
  br label %66

; <label>:66                                      ; preds = %62
  %67 = load i32, i32* %i, align 4, !tbaa !1
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %i, align 4, !tbaa !1
  br label %59

; <label>:69                                      ; preds = %59
  %70 = load i16**, i16*** %l_404, align 8, !tbaa !5
  %71 = icmp eq i16** null, %70
  br i1 %71, label %191, label %72

; <label>:72                                      ; preds = %69
  %73 = load i8, i8* %1, align 1, !tbaa !9
  %74 = zext i8 %73 to i32
  %75 = load i32*, i32** %l_398, align 8, !tbaa !5
  store i32 %74, i32* %75, align 4, !tbaa !1
  %76 = trunc i32 %74 to i16
  %77 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %76, i32 2)
  %78 = icmp ne i16 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load i8, i8* %1, align 1, !tbaa !9
  %82 = zext i8 %81 to i32
  %83 = load i64, i64* getelementptr inbounds ([10 x [7 x [3 x i64]]], [10 x [7 x [3 x i64]]]* @g_155, i32 0, i64 4, i64 5, i64 0), align 8, !tbaa !7
  %84 = trunc i64 %83 to i16
  %85 = load i16**, i16*** @g_422, align 8, !tbaa !5
  %86 = icmp ne i16** null, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %l_427, align 4, !tbaa !1
  %89 = sext i32 %88 to i64
  %90 = load i8, i8* %1, align 1, !tbaa !9
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* %1, align 1, !tbaa !9
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %91, %93
  %95 = zext i1 %94 to i32
  %96 = load i8, i8* %1, align 1, !tbaa !9
  %97 = zext i8 %96 to i32
  %98 = icmp ne i32 %95, %97
  %99 = zext i1 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = call i64 @safe_unary_minus_func_uint64_t_u(i64 %100)
  %102 = or i64 %89, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %72
  br label %105

; <label>:105                                     ; preds = %104, %72
  %106 = phi i1 [ false, %72 ], [ true, %104 ]
  %107 = zext i1 %106 to i32
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %l_429, i32 0, i64 1
  %109 = load i32, i32* %108, align 4, !tbaa !1
  %110 = icmp ule i32 %107, %109
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %105
  br label %112

; <label>:112                                     ; preds = %111, %105
  %113 = phi i1 [ false, %105 ], [ true, %111 ]
  %114 = zext i1 %113 to i32
  %115 = trunc i32 %114 to i8
  %116 = load i8, i8* %1, align 1, !tbaa !9
  %117 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %115, i8 signext %116)
  %118 = sext i8 %117 to i32
  %119 = and i32 %87, %118
  %120 = load volatile i16*, i16** @g_423, align 8, !tbaa !5
  %121 = load volatile i16, i16* %120, align 2, !tbaa !10
  %122 = sext i16 %121 to i32
  %123 = icmp eq i32 %119, %122
  %124 = zext i1 %123 to i32
  %125 = trunc i32 %124 to i16
  %126 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %125, i16 signext 31287)
  %127 = sext i16 %126 to i32
  %128 = load i16, i16* getelementptr inbounds ([1 x [10 x i16]], [1 x [10 x i16]]* @g_99, i32 0, i64 0, i64 2), align 2, !tbaa !10
  %129 = sext i16 %128 to i32
  %130 = xor i32 %129, %127
  %131 = trunc i32 %130 to i16
  store i16 %131, i16* getelementptr inbounds ([1 x [10 x i16]], [1 x [10 x i16]]* @g_99, i32 0, i64 0, i64 2), align 2, !tbaa !10
  %132 = sext i16 %131 to i32
  %133 = load i32, i32* @g_92, align 4, !tbaa !1
  %134 = icmp ule i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i8*, i8** @g_274, align 8, !tbaa !5
  %137 = load i8, i8* %136, align 1, !tbaa !9
  %138 = zext i8 %137 to i32
  %139 = xor i32 %135, %138
  %140 = load i8, i8* %1, align 1, !tbaa !9
  %141 = zext i8 %140 to i32
  %142 = or i32 %139, %141
  %143 = load i8*, i8** @g_274, align 8, !tbaa !5
  %144 = load i8, i8* %143, align 1, !tbaa !9
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %142, %145
  %147 = zext i1 %146 to i32
  %148 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %84, i32 4302)
  %149 = sext i16 %148 to i32
  %150 = icmp sle i32 %82, %149
  %151 = zext i1 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = load i8, i8* %1, align 1, !tbaa !9
  %154 = zext i8 %153 to i64
  %155 = call i64 @safe_add_func_uint64_t_u_u(i64 %152, i64 %154)
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %l_429, i32 0, i64 1
  %158 = load i32, i32* %157, align 4, !tbaa !1
  %159 = call i32 @safe_add_func_int32_t_s_s(i32 %156, i32 %158)
  %160 = load i32, i32* %l_430, align 4, !tbaa !1
  %161 = xor i32 %160, %159
  store i32 %161, i32* %l_430, align 4, !tbaa !1
  %162 = load i8, i8* %1, align 1, !tbaa !9
  %163 = zext i8 %162 to i32
  %164 = and i32 %161, %163
  %165 = trunc i32 %164 to i16
  %166 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %165, i32 1)
  %167 = trunc i16 %166 to i8
  %168 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %167, i8 zeroext 1)
  %169 = zext i8 %168 to i32
  %170 = load i32*, i32** %l_431, align 8, !tbaa !5
  %171 = load i32, i32* %170, align 4, !tbaa !1
  %172 = and i32 %171, %169
  store i32 %172, i32* %170, align 4, !tbaa !1
  %173 = load i8, i8* %1, align 1, !tbaa !9
  %174 = zext i8 %173 to i32
  %175 = icmp ult i32 %172, %174
  %176 = zext i1 %175 to i32
  %177 = sext i32 %176 to i64
  %178 = load i64*, i64** %l_432, align 8, !tbaa !5
  store i64 %177, i64* %178, align 8, !tbaa !7
  %179 = load i8, i8* %1, align 1, !tbaa !9
  %180 = zext i8 %179 to i64
  %181 = icmp uge i64 %177, %180
  %182 = zext i1 %181 to i32
  %183 = icmp eq i32 %80, %182
  %184 = zext i1 %183 to i32
  store i32 %184, i32* %l_434, align 4, !tbaa !1
  %185 = load i8, i8* %1, align 1, !tbaa !9
  %186 = zext i8 %185 to i32
  %187 = xor i32 %184, %186
  %188 = load i16, i16* @g_390, align 2, !tbaa !10
  %189 = zext i16 %188 to i32
  %190 = icmp ne i32 %187, %189
  br label %191

; <label>:191                                     ; preds = %112, %69
  %192 = phi i1 [ true, %69 ], [ %190, %112 ]
  %193 = zext i1 %192 to i32
  %194 = load i32*, i32** %l_435, align 8, !tbaa !5
  %195 = load i32, i32* %194, align 4, !tbaa !1
  %196 = or i32 %195, %193
  store i32 %196, i32* %194, align 4, !tbaa !1
  %197 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32** %l_435 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast i32* %l_434 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast [9 x i32*]* %l_433 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %200) #1
  %201 = bitcast i64** %l_432 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast i32** %l_431 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast i32* %l_430 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast [2 x i32]* %l_429 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast [1 x i16*]* %l_409 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  br label %278

; <label>:206                                     ; preds = %32
  call void @llvm.lifetime.start(i64 1, i8* %l_451) #1
  store i8 1, i8* %l_451, align 1, !tbaa !9
  %207 = bitcast i32** %l_452 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %207) #1
  store i32* @g_104, i32** %l_452, align 8, !tbaa !5
  %208 = bitcast i32** %l_453 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %208) #1
  store i32* @g_436, i32** %l_453, align 8, !tbaa !5
  %209 = load i32*, i32** %l_398, align 8, !tbaa !5
  %210 = load i32, i32* %209, align 4, !tbaa !1
  %211 = load i8*, i8** @g_274, align 8, !tbaa !5
  store i8 -24, i8* %211, align 1, !tbaa !9
  %212 = load i32**, i32*** @g_199, align 8, !tbaa !5
  %213 = load i32*, i32** %212, align 8, !tbaa !5
  %214 = load i32, i32* %213, align 4, !tbaa !1
  %215 = call i32 @safe_mod_func_int32_t_s_s(i32 -642322967, i32 %214)
  %216 = load i8, i8* %l_451, align 1, !tbaa !9
  %217 = sext i8 %216 to i16
  %218 = load i8, i8* %1, align 1, !tbaa !9
  %219 = zext i8 %218 to i16
  %220 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %217, i16 signext %219)
  %221 = sext i16 %220 to i64
  %222 = icmp ne i64 %221, 182
  %223 = zext i1 %222 to i32
  %224 = trunc i32 %223 to i16
  store i16 %224, i16* getelementptr inbounds ([1 x [10 x i16]], [1 x [10 x i16]]* @g_99, i32 0, i64 0, i64 1), align 2, !tbaa !10
  %225 = sext i16 %224 to i32
  %226 = or i32 %215, %225
  %227 = trunc i32 %226 to i8
  %228 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext 8, i8 signext %227)
  %229 = sext i8 %228 to i32
  %230 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_13, i32 0, i64 3), align 1, !tbaa !9
  %231 = sext i8 %230 to i32
  %232 = and i32 %229, %231
  %233 = load i32*, i32** %l_452, align 8, !tbaa !5
  %234 = load i32, i32* %233, align 4, !tbaa !1
  %235 = xor i32 %234, %232
  store i32 %235, i32* %233, align 4, !tbaa !1
  %236 = load volatile i32*, i32** @g_67, align 8, !tbaa !5
  %237 = load i32, i32* %236, align 4, !tbaa !1
  %238 = icmp ne i32 %235, %237
  %239 = zext i1 %238 to i32
  %240 = sext i32 %239 to i64
  %241 = load i8, i8* %1, align 1, !tbaa !9
  %242 = zext i8 %241 to i64
  %243 = call i64 @safe_mod_func_int64_t_s_s(i64 %240, i64 %242)
  %244 = icmp sgt i64 2417851172, %243
  %245 = zext i1 %244 to i32
  %246 = load i32*, i32** %l_398, align 8, !tbaa !5
  %247 = load i32, i32* %246, align 4, !tbaa !1
  %248 = icmp sle i32 %245, %247
  %249 = zext i1 %248 to i32
  %250 = load i32**, i32*** @g_199, align 8, !tbaa !5
  %251 = load i32*, i32** %250, align 8, !tbaa !5
  %252 = load i32, i32* %251, align 4, !tbaa !1
  %253 = icmp sge i32 %249, %252
  br i1 %253, label %258, label %254

; <label>:254                                     ; preds = %206
  %255 = load i32*, i32** %l_398, align 8, !tbaa !5
  %256 = load i32, i32* %255, align 4, !tbaa !1
  %257 = icmp ne i32 %256, 0
  br label %258

; <label>:258                                     ; preds = %254, %206
  %259 = phi i1 [ true, %206 ], [ %257, %254 ]
  %260 = zext i1 %259 to i32
  %261 = trunc i32 %260 to i8
  %262 = load i32*, i32** %l_398, align 8, !tbaa !5
  %263 = load i32, i32* %262, align 4, !tbaa !1
  %264 = trunc i32 %263 to i8
  %265 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %261, i8 zeroext %264)
  %266 = zext i8 %265 to i32
  %267 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext 0, i32 %266)
  %268 = sext i16 %267 to i32
  %269 = call i32 @safe_sub_func_int32_t_s_s(i32 %268, i32 1)
  %270 = sext i32 %269 to i64
  %271 = icmp uge i64 %270, 4
  %272 = zext i1 %271 to i32
  %273 = load i32*, i32** %l_453, align 8, !tbaa !5
  %274 = load i32, i32* %273, align 4, !tbaa !1
  %275 = or i32 %274, %272
  store i32 %275, i32* %273, align 4, !tbaa !1
  %276 = bitcast i32** %l_453 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %277 = bitcast i32** %l_452 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_451) #1
  br label %278

; <label>:278                                     ; preds = %258, %191
  %279 = load i8***, i8**** %l_455, align 8, !tbaa !5
  store i8** @g_274, i8*** %279, align 8, !tbaa !5
  %280 = load i32*, i32** %l_398, align 8, !tbaa !5
  store i32 1, i32* %280, align 4, !tbaa !1
  %281 = load i8, i8* %1, align 1, !tbaa !9
  %282 = zext i8 %281 to i32
  %283 = bitcast i8**** %l_455 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %283) #1
  %284 = bitcast i8*** %l_456 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %284) #1
  %285 = bitcast i8**** %l_454 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %285) #1
  %286 = bitcast i32* %l_427 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #1
  %287 = bitcast i16*** %l_404 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #1
  %288 = bitcast i16** %l_405 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %288) #1
  %289 = bitcast %struct.S0**** %l_400 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #1
  %290 = bitcast %struct.S0*** %l_401 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %290) #1
  %291 = bitcast %struct.S0*** %l_399 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #1
  %292 = bitcast i32** %l_398 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %292) #1
  ret i32 %282
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
define internal signext i16 @func_34(i8 zeroext %p_35, i8 signext %p_36, i32 %p_37, i32 %p_38) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8 %p_35, i8* %1, align 1, !tbaa !9
  store i8 %p_36, i8* %2, align 1, !tbaa !9
  store i32 %p_37, i32* %3, align 4, !tbaa !1
  store i32 %p_38, i32* %4, align 4, !tbaa !1
  %5 = load volatile i32, i32* getelementptr inbounds ([3 x [6 x [9 x i32]]], [3 x [6 x [9 x i32]]]* @g_123, i32 0, i64 2, i64 4, i64 7), align 4, !tbaa !1
  %6 = trunc i32 %5 to i16
  ret i16 %6
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %ui) #0 {
  %1 = alloca i8, align 1
  store i8 %ui, i8* %1, align 1, !tbaa !9
  %2 = load i8, i8* %1, align 1, !tbaa !9
  %3 = zext i8 %2 to i32
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
define internal zeroext i16 @func_43(i32 %p_44, i8 signext %p_45, i8 zeroext %p_46, i16 signext %p_47) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %l_63 = alloca i16, align 2
  %l_66 = alloca i8*, align 8
  %l_93 = alloca i32, align 4
  %l_251 = alloca i8*, align 8
  %l_297 = alloca [3 x i64], align 16
  %l_301 = alloca i32, align 4
  %l_302 = alloca i32, align 4
  %l_304 = alloca [9 x [7 x [3 x i32]]], align 16
  %l_316 = alloca i16*, align 8
  %l_317 = alloca i32*, align 8
  %l_328 = alloca [7 x [9 x %struct.S0*]], align 16
  %l_373 = alloca [5 x [10 x [5 x i16]]], align 16
  %l_374 = alloca [2 x i64], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %6 = alloca i32
  %i1 = alloca i32, align 4
  %l_69 = alloca i32*, align 8
  %l_70 = alloca i32*, align 8
  %l_71 = alloca i32*, align 8
  %l_72 = alloca i32*, align 8
  %l_73 = alloca i32*, align 8
  %l_74 = alloca i32*, align 8
  %l_75 = alloca i32*, align 8
  %l_76 = alloca i32*, align 8
  %l_91 = alloca [4 x [7 x [4 x i32*]]], align 16
  %l_98 = alloca i16*, align 8
  %l_109 = alloca i8*, align 8
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k4 = alloca i32, align 4
  %7 = alloca %struct.S0, align 1
  %8 = alloca { i64, i8 }, align 1
  %l_250 = alloca i64*, align 8
  %l_254 = alloca i8, align 1
  %l_291 = alloca [10 x i16], align 16
  %l_296 = alloca i32, align 4
  %l_299 = alloca i32, align 4
  %l_300 = alloca i32, align 4
  %l_303 = alloca [10 x i32], align 16
  %i5 = alloca i32, align 4
  %l_235 = alloca i8, align 1
  %l_236 = alloca i32*, align 8
  %l_237 = alloca i32*, align 8
  %l_252 = alloca i64*, align 8
  %l_253 = alloca [8 x i64*], align 16
  %l_255 = alloca i8*, align 8
  %l_256 = alloca [6 x i8*], align 16
  %l_257 = alloca i32, align 4
  %l_276 = alloca [5 x [9 x [3 x i32]]], align 16
  %l_277 = alloca i16, align 2
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %k8 = alloca i32, align 4
  %l_289 = alloca i64, align 8
  %l_290 = alloca i32, align 4
  %l_294 = alloca [1 x i32], align 4
  %l_298 = alloca [8 x i16], align 16
  %l_310 = alloca i32*, align 8
  %i9 = alloca i32, align 4
  %l_295 = alloca [8 x i32], align 16
  %l_305 = alloca i16, align 2
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %l_292 = alloca i32*, align 8
  %l_293 = alloca [10 x [5 x i32*]], align 16
  %i12 = alloca i32, align 4
  %j13 = alloca i32, align 4
  %i14 = alloca i32, align 4
  %j15 = alloca i32, align 4
  %l_322 = alloca i16*, align 8
  %l_323 = alloca i16**, align 8
  %l_329 = alloca i32, align 4
  %l_363 = alloca i8*, align 8
  %l_364 = alloca i32, align 4
  %l_365 = alloca i16*, align 8
  %l_366 = alloca i64*, align 8
  %l_367 = alloca i64*, align 8
  %l_368 = alloca i16, align 2
  %l_369 = alloca i32, align 4
  %l_371 = alloca i32***, align 8
  %l_370 = alloca i32****, align 8
  %l_372 = alloca [3 x [4 x i32*]], align 16
  %l_375 = alloca i8, align 1
  %l_389 = alloca i16*, align 8
  %i17 = alloca i32, align 4
  %j18 = alloca i32, align 4
  store i32 %p_44, i32* %2, align 4, !tbaa !1
  store i8 %p_45, i8* %3, align 1, !tbaa !9
  store i8 %p_46, i8* %4, align 1, !tbaa !9
  store i16 %p_47, i16* %5, align 2, !tbaa !10
  %9 = bitcast i16* %l_63 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  store i16 15908, i16* %l_63, align 2, !tbaa !10
  %10 = bitcast i8** %l_66 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8* getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 3), i8** %l_66, align 8, !tbaa !5
  %11 = bitcast i32* %l_93 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -1774630167, i32* %l_93, align 4, !tbaa !1
  %12 = bitcast i8** %l_251 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i8* @g_77, i8** %l_251, align 8, !tbaa !5
  %13 = bitcast [3 x i64]* %l_297 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %13) #1
  %14 = bitcast i32* %l_301 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 -5, i32* %l_301, align 4, !tbaa !1
  %15 = bitcast i32* %l_302 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 -441695913, i32* %l_302, align 4, !tbaa !1
  %16 = bitcast [9 x [7 x [3 x i32]]]* %l_304 to i8*
  call void @llvm.lifetime.start(i64 756, i8* %16) #1
  %17 = bitcast [9 x [7 x [3 x i32]]]* %l_304 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast ([9 x [7 x [3 x i32]]]* @func_43.l_304 to i8*), i64 756, i32 16, i1 false)
  %18 = bitcast i16** %l_316 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i16* @g_210, i16** %l_316, align 8, !tbaa !5
  %19 = bitcast i32** %l_317 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i32* %l_302, i32** %l_317, align 8, !tbaa !5
  %20 = bitcast [7 x [9 x %struct.S0*]]* %l_328 to i8*
  call void @llvm.lifetime.start(i64 504, i8* %20) #1
  %21 = bitcast [7 x [9 x %struct.S0*]]* %l_328 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast ([7 x [9 x %struct.S0*]]* @func_43.l_328 to i8*), i64 504, i32 16, i1 false)
  %22 = bitcast [5 x [10 x [5 x i16]]]* %l_373 to i8*
  call void @llvm.lifetime.start(i64 500, i8* %22) #1
  %23 = bitcast [5 x [10 x [5 x i16]]]* %l_373 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast ([5 x [10 x [5 x i16]]]* @func_43.l_373 to i8*), i64 500, i32 16, i1 false)
  %24 = bitcast [2 x i64]* %l_374 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %24) #1
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %28

; <label>:28                                      ; preds = %35, %0
  %29 = load i32, i32* %i, align 4, !tbaa !1
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %38

; <label>:31                                      ; preds = %28
  %32 = load i32, i32* %i, align 4, !tbaa !1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x i64], [3 x i64]* %l_297, i32 0, i64 %33
  store i64 -6, i64* %34, align 8, !tbaa !7
  br label %35

; <label>:35                                      ; preds = %31
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %i, align 4, !tbaa !1
  br label %28

; <label>:38                                      ; preds = %28
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %39

; <label>:39                                      ; preds = %46, %38
  %40 = load i32, i32* %i, align 4, !tbaa !1
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %49

; <label>:42                                      ; preds = %39
  %43 = load i32, i32* %i, align 4, !tbaa !1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %l_374, i32 0, i64 %44
  store i64 -5379076858732236019, i64* %45, align 8, !tbaa !7
  br label %46

; <label>:46                                      ; preds = %42
  %47 = load i32, i32* %i, align 4, !tbaa !1
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %i, align 4, !tbaa !1
  br label %39

; <label>:49                                      ; preds = %39
  store i8 -2, i8* %3, align 1, !tbaa !9
  br label %50

; <label>:50                                      ; preds = %56, %49
  %51 = load i8, i8* %3, align 1, !tbaa !9
  %52 = sext i8 %51 to i32
  %53 = icmp slt i32 %52, 10
  br i1 %53, label %54, label %61

; <label>:54                                      ; preds = %50
  %55 = load i16, i16* %l_63, align 2, !tbaa !10
  store i16 %55, i16* %1
  store i32 1, i32* %6
  br label %1041
                                                  ; No predecessors!
  %57 = load i8, i8* %3, align 1, !tbaa !9
  %58 = sext i8 %57 to i32
  %59 = call i32 @safe_add_func_int32_t_s_s(i32 %58, i32 7)
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %3, align 1, !tbaa !9
  br label %50

; <label>:61                                      ; preds = %50
  store i16 0, i16* %l_63, align 2, !tbaa !10
  br label %62

; <label>:62                                      ; preds = %76, %61
  %63 = load i16, i16* %l_63, align 2, !tbaa !10
  %64 = sext i16 %63 to i32
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %81

; <label>:66                                      ; preds = %62
  %67 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = load i16, i16* %l_63, align 2, !tbaa !10
  %69 = sext i16 %68 to i32
  %70 = add nsw i32 %69, 7
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* @g_13, i32 0, i64 %71
  %73 = load i8, i8* %72, align 1, !tbaa !9
  %74 = sext i8 %73 to i16
  store i16 %74, i16* %1
  store i32 1, i32* %6
  %75 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  br label %1041
                                                  ; No predecessors!
  %77 = load i16, i16* %l_63, align 2, !tbaa !10
  %78 = sext i16 %77 to i32
  %79 = sub nsw i32 %78, 1
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %l_63, align 2, !tbaa !10
  br label %62

; <label>:81                                      ; preds = %62
  %82 = load i16, i16* %l_63, align 2, !tbaa !10
  %83 = icmp ne i16 %82, 0
  br i1 %83, label %84, label %199

; <label>:84                                      ; preds = %81
  %85 = bitcast i32** %l_69 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  store i32* @g_68, i32** %l_69, align 8, !tbaa !5
  %86 = bitcast i32** %l_70 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  store i32* @g_68, i32** %l_70, align 8, !tbaa !5
  %87 = bitcast i32** %l_71 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  store i32* @g_68, i32** %l_71, align 8, !tbaa !5
  %88 = bitcast i32** %l_72 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  store i32* @g_68, i32** %l_72, align 8, !tbaa !5
  %89 = bitcast i32** %l_73 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  store i32* @g_68, i32** %l_73, align 8, !tbaa !5
  %90 = bitcast i32** %l_74 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #1
  store i32* @g_68, i32** %l_74, align 8, !tbaa !5
  %91 = bitcast i32** %l_75 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #1
  store i32* @g_68, i32** %l_75, align 8, !tbaa !5
  %92 = bitcast i32** %l_76 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  store i32* @g_68, i32** %l_76, align 8, !tbaa !5
  %93 = bitcast [4 x [7 x [4 x i32*]]]* %l_91 to i8*
  call void @llvm.lifetime.start(i64 896, i8* %93) #1
  %94 = bitcast [4 x [7 x [4 x i32*]]]* %l_91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* bitcast ([4 x [7 x [4 x i32*]]]* @func_43.l_91 to i8*), i64 896, i32 16, i1 false)
  %95 = bitcast i16** %l_98 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  store i16* getelementptr inbounds ([1 x [10 x i16]], [1 x [10 x i16]]* @g_99, i32 0, i64 0, i64 2), i16** %l_98, align 8, !tbaa !5
  %96 = bitcast i8** %l_109 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_13, i32 0, i64 6), i8** %l_109, align 8, !tbaa !5
  %97 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  %98 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  %99 = bitcast i32* %k4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #1
  %100 = load i8*, i8** %l_66, align 8, !tbaa !5
  %101 = icmp eq i8* %100, null
  %102 = zext i1 %101 to i32
  %103 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext -1, i32 %102)
  %104 = sext i16 %103 to i32
  %105 = load volatile i32*, i32** @g_67, align 8, !tbaa !5
  %106 = load i32, i32* %105, align 4, !tbaa !1
  %107 = and i32 %106, %104
  store i32 %107, i32* %105, align 4, !tbaa !1
  %108 = load i8, i8* @g_77, align 1, !tbaa !9
  %109 = add i8 %108, 1
  store i8 %109, i8* @g_77, align 1, !tbaa !9
  %110 = load i32, i32* @g_92, align 4, !tbaa !1
  %111 = add i32 %110, 1
  store i32 %111, i32* @g_92, align 4, !tbaa !1
  %112 = load i32*, i32** %l_76, align 8, !tbaa !5
  %113 = load i32, i32* %112, align 4, !tbaa !1
  %114 = load i16, i16* %l_63, align 2, !tbaa !10
  %115 = sext i16 %114 to i32
  %116 = icmp sgt i32 %113, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @safe_add_func_uint32_t_u_u(i32 %111, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

; <label>:120                                     ; preds = %84
  %121 = load i16, i16* %l_63, align 2, !tbaa !10
  %122 = sext i16 %121 to i32
  %123 = icmp ne i32 %122, 0
  br label %124

; <label>:124                                     ; preds = %120, %84
  %125 = phi i1 [ true, %84 ], [ %123, %120 ]
  %126 = zext i1 %125 to i32
  %127 = load i8, i8* getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 0), align 1, !tbaa !9
  %128 = zext i8 %127 to i16
  %129 = load i16*, i16** %l_98, align 8, !tbaa !5
  store i16 %128, i16* %129, align 2, !tbaa !10
  %130 = load i8, i8* @g_77, align 1, !tbaa !9
  %131 = zext i8 %130 to i32
  %132 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %128, i32 %131)
  %133 = load i32*, i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @g_103, i32 0, i64 1), align 8, !tbaa !5
  %134 = load i8, i8* @g_77, align 1, !tbaa !9
  %135 = zext i8 %134 to i64
  %136 = icmp sge i64 %135, 78
  %137 = zext i1 %136 to i32
  %138 = load i16, i16* %l_63, align 2, !tbaa !10
  %139 = sext i16 %138 to i32
  %140 = icmp sgt i32 %137, %139
  %141 = zext i1 %140 to i32
  %142 = load i8*, i8** %l_109, align 8, !tbaa !5
  %143 = load i8, i8* %142, align 1, !tbaa !9
  %144 = sext i8 %143 to i32
  %145 = or i32 %144, %141
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %142, align 1, !tbaa !9
  %147 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %146, i32 2)
  %148 = load i16, i16* %5, align 2, !tbaa !10
  %149 = trunc i16 %148 to i8
  %150 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %147, i8 zeroext %149)
  %151 = zext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

; <label>:153                                     ; preds = %124
  %154 = load i32*, i32** %l_70, align 8, !tbaa !5
  %155 = load i32, i32* %154, align 4, !tbaa !1
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %153, %124
  br label %158

; <label>:158                                     ; preds = %157, %153
  %159 = phi i1 [ false, %153 ], [ true, %157 ]
  %160 = zext i1 %159 to i32
  %161 = load i8*, i8** %l_66, align 8, !tbaa !5
  %162 = call i8* @func_100(i32* %133, i8* %161)
  %163 = load i8*, i8** %l_66, align 8, !tbaa !5
  %164 = icmp eq i8* %162, %163
  %165 = zext i1 %164 to i32
  %166 = icmp sge i32 %126, %165
  br i1 %166, label %167, label %168

; <label>:167                                     ; preds = %158
  br label %168

; <label>:168                                     ; preds = %167, %158
  %169 = phi i1 [ false, %158 ], [ true, %167 ]
  %170 = zext i1 %169 to i32
  %171 = call { i64, i8 } @func_86(i32 %170, i32* @g_68)
  %172 = getelementptr %struct.S0, %struct.S0* %7, i32 0, i32 0
  store { i64, i8 } %171, { i64, i8 }* %8, align 1
  %173 = bitcast { i64, i8 }* %8 to i8*
  %174 = bitcast [9 x i8]* %172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %174, i8* %173, i64 9, i32 1, i1 false)
  %175 = load i8, i8* %4, align 1, !tbaa !9
  %176 = load i8, i8* getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 0), align 1, !tbaa !9
  %177 = load i8, i8* @g_77, align 1, !tbaa !9
  %178 = zext i8 %177 to i32
  %179 = load i32, i32* %2, align 4, !tbaa !1
  %180 = trunc i32 %179 to i8
  %181 = call i32 @func_80(i32* @g_68, i32 -4, i8 signext %176, i32 %178, i8 signext %180)
  %182 = load i32*, i32** %l_70, align 8, !tbaa !5
  store i32 %181, i32* %182, align 4, !tbaa !1
  %183 = load i32, i32* %l_93, align 4, !tbaa !1
  %184 = load i32*, i32** %l_69, align 8, !tbaa !5
  store i32 %183, i32* %184, align 4, !tbaa !1
  %185 = bitcast i32* %k4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i8** %l_109 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = bitcast i16** %l_98 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast [4 x [7 x [4 x i32*]]]* %l_91 to i8*
  call void @llvm.lifetime.end(i64 896, i8* %190) #1
  %191 = bitcast i32** %l_76 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast i32** %l_75 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast i32** %l_74 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast i32** %l_73 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast i32** %l_72 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast i32** %l_71 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i32** %l_70 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast i32** %l_69 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  br label %761

; <label>:199                                     ; preds = %81
  %200 = bitcast i64** %l_250 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %200) #1
  store i64* getelementptr inbounds ([10 x [7 x [3 x i64]]], [10 x [7 x [3 x i64]]]* @g_155, i32 0, i64 8, i64 3, i64 2), i64** %l_250, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_254) #1
  store i8 -10, i8* %l_254, align 1, !tbaa !9
  %201 = bitcast [10 x i16]* %l_291 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %201) #1
  %202 = bitcast i32* %l_296 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %202) #1
  store i32 1, i32* %l_296, align 4, !tbaa !1
  %203 = bitcast i32* %l_299 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %203) #1
  store i32 -1, i32* %l_299, align 4, !tbaa !1
  %204 = bitcast i32* %l_300 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %204) #1
  store i32 -1, i32* %l_300, align 4, !tbaa !1
  %205 = bitcast [10 x i32]* %l_303 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %205) #1
  %206 = bitcast [10 x i32]* %l_303 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %206, i8* bitcast ([10 x i32]* @func_43.l_303 to i8*), i64 40, i32 16, i1 false)
  %207 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %207) #1
  store i32 0, i32* %i5, align 4, !tbaa !1
  br label %208

; <label>:208                                     ; preds = %215, %199
  %209 = load i32, i32* %i5, align 4, !tbaa !1
  %210 = icmp slt i32 %209, 10
  br i1 %210, label %211, label %218

; <label>:211                                     ; preds = %208
  %212 = load i32, i32* %i5, align 4, !tbaa !1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [10 x i16], [10 x i16]* %l_291, i32 0, i64 %213
  store i16 11207, i16* %214, align 2, !tbaa !10
  br label %215

; <label>:215                                     ; preds = %211
  %216 = load i32, i32* %i5, align 4, !tbaa !1
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %i5, align 4, !tbaa !1
  br label %208

; <label>:218                                     ; preds = %208
  store i32 0, i32* %2, align 4, !tbaa !1
  br label %219

; <label>:219                                     ; preds = %744, %218
  %220 = load i32, i32* %2, align 4, !tbaa !1
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %747

; <label>:222                                     ; preds = %219
  call void @llvm.lifetime.start(i64 1, i8* %l_235) #1
  store i8 -1, i8* %l_235, align 1, !tbaa !9
  %223 = bitcast i32** %l_236 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %223) #1
  store i32* null, i32** %l_236, align 8, !tbaa !5
  %224 = bitcast i32** %l_237 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %224) #1
  store i32* @g_104, i32** %l_237, align 8, !tbaa !5
  %225 = bitcast i64** %l_252 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %225) #1
  store i64* null, i64** %l_252, align 8, !tbaa !5
  %226 = bitcast [8 x i64*]* %l_253 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %226) #1
  %227 = bitcast [8 x i64*]* %l_253 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %227, i8* bitcast ([8 x i64*]* @func_43.l_253 to i8*), i64 64, i32 16, i1 false)
  %228 = bitcast i8** %l_255 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %228) #1
  store i8* null, i8** %l_255, align 8, !tbaa !5
  %229 = bitcast [6 x i8*]* %l_256 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %229) #1
  %230 = bitcast [6 x i8*]* %l_256 to i8*
  call void @llvm.memset.p0i8.i64(i8* %230, i8 0, i64 48, i32 16, i1 false)
  %231 = bitcast i8* %230 to [6 x i8*]*
  %232 = getelementptr [6 x i8*], [6 x i8*]* %231, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_13, i32 0, i64 3), i8** %232
  %233 = getelementptr [6 x i8*], [6 x i8*]* %231, i32 0, i32 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_13, i32 0, i64 3), i8** %233
  %234 = bitcast i32* %l_257 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %234) #1
  store i32 -1, i32* %l_257, align 4, !tbaa !1
  %235 = bitcast [5 x [9 x [3 x i32]]]* %l_276 to i8*
  call void @llvm.lifetime.start(i64 540, i8* %235) #1
  %236 = bitcast [5 x [9 x [3 x i32]]]* %l_276 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %236, i8* bitcast ([5 x [9 x [3 x i32]]]* @func_43.l_276 to i8*), i64 540, i32 16, i1 false)
  %237 = bitcast i16* %l_277 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %237) #1
  store i16 -5211, i16* %l_277, align 2, !tbaa !10
  %238 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %238) #1
  %239 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %239) #1
  %240 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %240) #1
  %241 = load i8, i8* %3, align 1, !tbaa !9
  %242 = load i8, i8* %l_235, align 1, !tbaa !9
  %243 = sext i8 %242 to i32
  %244 = load i32*, i32** %l_237, align 8, !tbaa !5
  store i32 %243, i32* %244, align 4, !tbaa !1
  %245 = load i8*, i8** %l_66, align 8, !tbaa !5
  %246 = load i8, i8* %245, align 1, !tbaa !9
  %247 = add i8 %246, 1
  store i8 %247, i8* %245, align 1, !tbaa !9
  %248 = zext i8 %246 to i64
  %249 = icmp ult i64 2, %248
  %250 = zext i1 %249 to i32
  %251 = load i32, i32* %2, align 4, !tbaa !1
  %252 = or i32 %250, %251
  %253 = load i64*, i64** %l_250, align 8, !tbaa !5
  %254 = icmp ne i64* null, %253
  %255 = zext i1 %254 to i32
  %256 = trunc i32 %255 to i16
  %257 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %256, i32 6)
  %258 = load i32, i32* %2, align 4, !tbaa !1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [2 x i32*], [2 x i32*]* @g_103, i32 0, i64 %259
  %261 = load i32*, i32** %260, align 8, !tbaa !5
  %262 = load i8*, i8** %l_251, align 8, !tbaa !5
  %263 = call i8* @func_100(i32* %261, i8* %262)
  %264 = icmp ne i8* %263, null
  %265 = zext i1 %264 to i32
  %266 = sext i32 %265 to i64
  store i64 %266, i64* @g_208, align 8, !tbaa !7
  %267 = load i8, i8* %l_254, align 1, !tbaa !9
  %268 = zext i8 %267 to i64
  %269 = icmp ne i64 %266, %268
  %270 = zext i1 %269 to i32
  %271 = load volatile i32, i32* @g_169, align 4, !tbaa !1
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %274, label %273

; <label>:273                                     ; preds = %222
  br label %274

; <label>:274                                     ; preds = %273, %222
  %275 = phi i1 [ true, %222 ], [ true, %273 ]
  %276 = zext i1 %275 to i32
  %277 = trunc i32 %276 to i16
  %278 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %277, i16 zeroext 0)
  %279 = load i64, i64* getelementptr inbounds ([10 x [7 x [3 x i64]]], [10 x [7 x [3 x i64]]]* @g_155, i32 0, i64 4, i64 5, i64 0), align 8, !tbaa !7
  %280 = load i8, i8* %3, align 1, !tbaa !9
  %281 = sext i8 %280 to i64
  %282 = or i64 %279, %281
  %283 = and i64 %282, -3
  %284 = trunc i64 %283 to i8
  %285 = load i32, i32* @g_92, align 4, !tbaa !1
  %286 = trunc i32 %285 to i8
  %287 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %284, i8 signext %286)
  %288 = sext i8 %287 to i32
  %289 = load i32, i32* %l_257, align 4, !tbaa !1
  %290 = xor i32 %289, %288
  store i32 %290, i32* %l_257, align 4, !tbaa !1
  %291 = trunc i32 %290 to i8
  %292 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %291, i8 signext 0)
  %293 = sext i8 %292 to i32
  %294 = or i32 %252, %293
  %295 = load i8, i8* %4, align 1, !tbaa !9
  %296 = zext i8 %295 to i32
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %301, label %298

; <label>:298                                     ; preds = %274
  %299 = load i32, i32* %l_93, align 4, !tbaa !1
  %300 = icmp ne i32 %299, 0
  br label %301

; <label>:301                                     ; preds = %298, %274
  %302 = phi i1 [ true, %274 ], [ %300, %298 ]
  %303 = zext i1 %302 to i32
  %304 = trunc i32 %303 to i8
  %305 = load i8, i8* %l_254, align 1, !tbaa !9
  %306 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %304, i8 zeroext %305)
  %307 = zext i8 %306 to i64
  %308 = icmp ne i64 %307, 3451551876
  %309 = zext i1 %308 to i32
  %310 = sext i32 %309 to i64
  %311 = xor i64 %310, 1223107057
  %312 = icmp eq i64 %311, 4294967295
  %313 = zext i1 %312 to i32
  %314 = sext i32 %313 to i64
  %315 = xor i64 %314, -4461815619376532243
  %316 = trunc i64 %315 to i32
  %317 = call i32 @safe_add_func_uint32_t_u_u(i32 %243, i32 %316)
  %318 = load i32, i32* %l_93, align 4, !tbaa !1
  %319 = or i32 %317, %318
  %320 = trunc i32 %319 to i16
  %321 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext 1, i16 signext %320)
  %322 = load i32, i32* %l_93, align 4, !tbaa !1
  %323 = sext i32 %322 to i64
  %324 = and i64 %323, 2515811646
  %325 = trunc i64 %324 to i32
  %326 = call i32 @safe_div_func_uint32_t_u_u(i32 %325, i32 1816146864)
  %327 = load i32**, i32*** @g_199, align 8, !tbaa !5
  %328 = load i32*, i32** %327, align 8, !tbaa !5
  store i32 %326, i32* %328, align 4, !tbaa !1
  %329 = load i8*, i8** %l_66, align 8, !tbaa !5
  %330 = load i8, i8* %329, align 1, !tbaa !9
  %331 = add i8 %330, -1
  store i8 %331, i8* %329, align 1, !tbaa !9
  %332 = zext i8 %331 to i32
  %333 = load volatile i72, i72* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to i72*), align 1
  %334 = shl i72 %333, 4
  %335 = ashr i72 %334, 49
  %336 = trunc i72 %335 to i32
  %337 = load i32, i32* %l_257, align 4, !tbaa !1
  %338 = load i32, i32* @g_104, align 4, !tbaa !1
  %339 = trunc i32 %338 to i8
  %340 = load i8*, i8** %l_251, align 8, !tbaa !5
  store i8 %339, i8* %340, align 1, !tbaa !9
  store i8 %339, i8* @g_273, align 1, !tbaa !9
  %341 = load i32, i32* %l_93, align 4, !tbaa !1
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %350

; <label>:343                                     ; preds = %301
  %344 = load i8*, i8** @g_274, align 8, !tbaa !5
  %345 = icmp ne i8* %344, @g_275
  %346 = zext i1 %345 to i32
  %347 = getelementptr inbounds [5 x [9 x [3 x i32]]], [5 x [9 x [3 x i32]]]* %l_276, i32 0, i64 1
  %348 = getelementptr inbounds [9 x [3 x i32]], [9 x [3 x i32]]* %347, i32 0, i64 1
  %349 = getelementptr inbounds [3 x i32], [3 x i32]* %348, i32 0, i64 1
  store i32 %346, i32* %349, align 4, !tbaa !1
  br label %350

; <label>:350                                     ; preds = %343, %301
  %351 = phi i1 [ false, %301 ], [ %345, %343 ]
  %352 = zext i1 %351 to i32
  %353 = trunc i32 %352 to i8
  %354 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %339, i8 zeroext %353)
  %355 = zext i8 %354 to i64
  %356 = icmp eq i64 %355, 8
  %357 = zext i1 %356 to i32
  %358 = icmp slt i32 %337, 0
  %359 = zext i1 %358 to i32
  %360 = load i32, i32* %l_93, align 4, !tbaa !1
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %363, label %362

; <label>:362                                     ; preds = %350
  br label %363

; <label>:363                                     ; preds = %362, %350
  %364 = phi i1 [ true, %350 ], [ true, %362 ]
  %365 = zext i1 %364 to i32
  %366 = trunc i32 %365 to i16
  %367 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext 0, i16 zeroext %366)
  %368 = zext i16 %367 to i32
  %369 = call i32 @safe_unary_minus_func_int32_t_s(i32 %368)
  %370 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_13, i32 0, i64 3), align 1, !tbaa !9
  %371 = sext i8 %370 to i32
  %372 = icmp sle i32 %369, %371
  %373 = zext i1 %372 to i32
  %374 = trunc i32 %373 to i16
  %375 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %374, i32 1)
  %376 = sext i16 %375 to i64
  %377 = icmp ne i64 %376, 21336
  %378 = zext i1 %377 to i32
  %379 = load i8, i8* %4, align 1, !tbaa !9
  %380 = load i32, i32* %2, align 4, !tbaa !1
  %381 = trunc i32 %380 to i8
  %382 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %379, i8 zeroext %381)
  %383 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext 19, i8 zeroext %382)
  %384 = zext i8 %383 to i32
  %385 = load i16, i16* %l_277, align 2, !tbaa !10
  %386 = sext i16 %385 to i32
  %387 = call i32 @safe_sub_func_uint32_t_u_u(i32 %384, i32 %386)
  %388 = xor i32 %336, %387
  %389 = icmp ugt i32 %332, %388
  %390 = zext i1 %389 to i32
  %391 = sext i32 %390 to i64
  %392 = icmp eq i64 189, %391
  %393 = zext i1 %392 to i32
  %394 = load i8, i8* %l_254, align 1, !tbaa !9
  %395 = zext i8 %394 to i32
  %396 = icmp ne i32 %393, %395
  %397 = zext i1 %396 to i32
  %398 = load i8, i8* %l_254, align 1, !tbaa !9
  %399 = zext i8 %398 to i64
  %400 = icmp ne i64 %399, -6
  br i1 %400, label %401, label %404

; <label>:401                                     ; preds = %363
  %402 = load i32, i32* @g_104, align 4, !tbaa !1
  %403 = trunc i32 %402 to i16
  store i16 %403, i16* %1
  store i32 1, i32* %6
  br label %730

; <label>:404                                     ; preds = %363
  %405 = bitcast i64* %l_289 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %405) #1
  store i64 0, i64* %l_289, align 8, !tbaa !7
  %406 = bitcast i32* %l_290 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %406) #1
  store i32 1897093014, i32* %l_290, align 4, !tbaa !1
  %407 = bitcast [1 x i32]* %l_294 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %407) #1
  %408 = bitcast [8 x i16]* %l_298 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %408) #1
  %409 = bitcast [8 x i16]* %l_298 to i8*
  call void @llvm.memset.p0i8.i64(i8* %409, i8 0, i64 16, i32 16, i1 false)
  %410 = bitcast i32** %l_310 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %410) #1
  store i32* null, i32** %l_310, align 8, !tbaa !5
  %411 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %411) #1
  store i32 0, i32* %i9, align 4, !tbaa !1
  br label %412

; <label>:412                                     ; preds = %419, %404
  %413 = load i32, i32* %i9, align 4, !tbaa !1
  %414 = icmp slt i32 %413, 1
  br i1 %414, label %415, label %422

; <label>:415                                     ; preds = %412
  %416 = load i32, i32* %i9, align 4, !tbaa !1
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [1 x i32], [1 x i32]* %l_294, i32 0, i64 %417
  store i32 1, i32* %418, align 4, !tbaa !1
  br label %419

; <label>:419                                     ; preds = %415
  %420 = load i32, i32* %i9, align 4, !tbaa !1
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %i9, align 4, !tbaa !1
  br label %412

; <label>:422                                     ; preds = %412
  store i16 0, i16* @g_210, align 2, !tbaa !10
  br label %423

; <label>:423                                     ; preds = %651, %422
  %424 = load i16, i16* @g_210, align 2, !tbaa !10
  %425 = zext i16 %424 to i32
  %426 = icmp sle i32 %425, 7
  br i1 %426, label %427, label %656

; <label>:427                                     ; preds = %423
  %428 = bitcast [8 x i32]* %l_295 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %428) #1
  %429 = bitcast [8 x i32]* %l_295 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %429, i8* bitcast ([8 x i32]* @func_43.l_295 to i8*), i64 32, i32 16, i1 false)
  %430 = bitcast i16* %l_305 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %430) #1
  store i16 -8, i16* %l_305, align 2, !tbaa !10
  %431 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %431) #1
  %432 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %432) #1
  %433 = load i16, i16* @g_210, align 2, !tbaa !10
  %434 = zext i16 %433 to i32
  %435 = add nsw i32 %434, 1
  %436 = sext i32 %435 to i64
  %437 = load i32, i32* %2, align 4, !tbaa !1
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [1 x [10 x i16]], [1 x [10 x i16]]* @g_99, i32 0, i64 %438
  %440 = getelementptr inbounds [10 x i16], [10 x i16]* %439, i32 0, i64 %436
  %441 = load i16, i16* %440, align 2, !tbaa !10
  %442 = sext i16 %441 to i64
  %443 = load i32, i32* %2, align 4, !tbaa !1
  %444 = add nsw i32 %443, 2
  %445 = sext i32 %444 to i64
  %446 = load i32, i32* %2, align 4, !tbaa !1
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds [1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 %447
  %449 = getelementptr inbounds [4 x i8], [4 x i8]* %448, i32 0, i64 %445
  %450 = load i8, i8* %449, align 1, !tbaa !9
  %451 = zext i8 %450 to i64
  %452 = load i32, i32* %2, align 4, !tbaa !1
  %453 = sext i32 %452 to i64
  %454 = load i64, i64* %l_289, align 8, !tbaa !7
  %455 = icmp ne i64 %453, %454
  %456 = zext i1 %455 to i32
  %457 = load i16, i16* %5, align 2, !tbaa !10
  %458 = sext i16 %457 to i32
  %459 = and i32 %456, %458
  %460 = load i32, i32* %l_290, align 4, !tbaa !1
  %461 = and i32 %459, %460
  %462 = icmp ne i32 %461, 0
  %463 = zext i1 %462 to i32
  %464 = trunc i32 %463 to i8
  %465 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %464, i32 7)
  %466 = sext i8 %465 to i32
  %467 = load volatile i32, i32* getelementptr inbounds ([3 x [6 x [9 x i32]]], [3 x [6 x [9 x i32]]]* @g_123, i32 0, i64 2, i64 4, i64 7), align 4, !tbaa !1
  %468 = or i32 %466, %467
  %469 = load i32, i32* @g_92, align 4, !tbaa !1
  %470 = and i32 %468, %469
  %471 = zext i32 %470 to i64
  %472 = and i64 %471, 0
  %473 = xor i64 %472, -1
  %474 = load i16, i16* %5, align 2, !tbaa !10
  %475 = sext i16 %474 to i64
  %476 = icmp eq i64 %473, %475
  %477 = zext i1 %476 to i32
  %478 = sext i32 %477 to i64
  store i64 %478, i64* getelementptr inbounds ([10 x [7 x [3 x i64]]], [10 x [7 x [3 x i64]]]* @g_155, i32 0, i64 4, i64 5, i64 0), align 8, !tbaa !7
  %479 = and i64 %451, %478
  %480 = load i32, i32* @g_104, align 4, !tbaa !1
  %481 = zext i32 %480 to i64
  %482 = xor i64 %479, %481
  %483 = icmp slt i64 %442, %482
  %484 = zext i1 %483 to i32
  %485 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_13, i32 0, i64 5), align 1, !tbaa !9
  %486 = sext i8 %485 to i32
  %487 = icmp sle i32 %484, %486
  br i1 %487, label %489, label %488

; <label>:488                                     ; preds = %427
  br label %489

; <label>:489                                     ; preds = %488, %427
  %490 = phi i1 [ true, %427 ], [ true, %488 ]
  %491 = zext i1 %490 to i32
  %492 = trunc i32 %491 to i8
  %493 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %492, i8 signext 0)
  %494 = load i32, i32* %l_290, align 4, !tbaa !1
  %495 = trunc i32 %494 to i8
  %496 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %493, i8 zeroext %495)
  store i8 -61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_13, i32 0, i64 7), align 1, !tbaa !9
  %497 = getelementptr inbounds [5 x [9 x [3 x i32]]], [5 x [9 x [3 x i32]]]* %l_276, i32 0, i64 4
  %498 = getelementptr inbounds [9 x [3 x i32]], [9 x [3 x i32]]* %497, i32 0, i64 2
  %499 = getelementptr inbounds [3 x i32], [3 x i32]* %498, i32 0, i64 2
  store i32 -61, i32* %499, align 4, !tbaa !1
  %500 = load i8, i8* %4, align 1, !tbaa !9
  %501 = zext i8 %500 to i32
  %502 = icmp sge i32 -61, %501
  %503 = zext i1 %502 to i32
  %504 = load i8, i8* %l_235, align 1, !tbaa !9
  %505 = sext i8 %504 to i32
  %506 = icmp slt i32 %503, %505
  %507 = zext i1 %506 to i32
  %508 = trunc i32 %507 to i16
  %509 = getelementptr inbounds [10 x i16], [10 x i16]* %l_291, i32 0, i64 0
  %510 = load i16, i16* %509, align 2, !tbaa !10
  %511 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %508, i16 signext %510)
  %512 = sext i16 %511 to i32
  %513 = icmp ne i32 %512, 0
  %514 = zext i1 %513 to i32
  %515 = trunc i32 %514 to i16
  %516 = load i64, i64* %l_289, align 8, !tbaa !7
  %517 = trunc i64 %516 to i16
  %518 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %515, i16 zeroext %517)
  %519 = zext i16 %518 to i32
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %526

; <label>:521                                     ; preds = %489
  %522 = getelementptr inbounds [10 x i16], [10 x i16]* %l_291, i32 0, i64 0
  %523 = load i16, i16* %522, align 2, !tbaa !10
  %524 = zext i16 %523 to i32
  %525 = icmp ne i32 %524, 0
  br label %526

; <label>:526                                     ; preds = %521, %489
  %527 = phi i1 [ false, %489 ], [ %525, %521 ]
  %528 = zext i1 %527 to i32
  %529 = load i32**, i32*** @g_199, align 8, !tbaa !5
  %530 = load i32*, i32** %529, align 8, !tbaa !5
  store i32 %528, i32* %530, align 4, !tbaa !1
  store i64 0, i64* @g_208, align 8, !tbaa !7
  br label %531

; <label>:531                                     ; preds = %627, %526
  %532 = load i64, i64* @g_208, align 8, !tbaa !7
  %533 = icmp ule i64 %532, 0
  br i1 %533, label %534, label %630

; <label>:534                                     ; preds = %531
  %535 = bitcast i32** %l_292 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %535) #1
  store i32* null, i32** %l_292, align 8, !tbaa !5
  %536 = bitcast [10 x [5 x i32*]]* %l_293 to i8*
  call void @llvm.lifetime.start(i64 400, i8* %536) #1
  %537 = getelementptr inbounds [10 x [5 x i32*]], [10 x [5 x i32*]]* %l_293, i64 0, i64 0
  %538 = bitcast [5 x i32*]* %537 to i8*
  call void @llvm.memset.p0i8.i64(i8* %538, i8 0, i64 40, i32 8, i1 false)
  %539 = getelementptr inbounds [5 x i32*], [5 x i32*]* %537, i64 0, i64 0
  %540 = getelementptr inbounds i32*, i32** %539, i64 1
  %541 = getelementptr inbounds i32*, i32** %540, i64 1
  %542 = getelementptr inbounds i32*, i32** %541, i64 1
  %543 = getelementptr inbounds i32*, i32** %542, i64 1
  store i32* %l_257, i32** %543, !tbaa !5
  %544 = getelementptr inbounds [5 x i32*], [5 x i32*]* %537, i64 1
  %545 = getelementptr inbounds [5 x i32*], [5 x i32*]* %544, i64 0, i64 0
  store i32* %l_257, i32** %545, !tbaa !5
  %546 = getelementptr inbounds i32*, i32** %545, i64 1
  store i32* null, i32** %546, !tbaa !5
  %547 = getelementptr inbounds i32*, i32** %546, i64 1
  store i32* %l_93, i32** %547, !tbaa !5
  %548 = getelementptr inbounds i32*, i32** %547, i64 1
  store i32* @g_68, i32** %548, !tbaa !5
  %549 = getelementptr inbounds i32*, i32** %548, i64 1
  %550 = getelementptr inbounds [5 x [9 x [3 x i32]]], [5 x [9 x [3 x i32]]]* %l_276, i32 0, i64 1
  %551 = getelementptr inbounds [9 x [3 x i32]], [9 x [3 x i32]]* %550, i32 0, i64 1
  %552 = getelementptr inbounds [3 x i32], [3 x i32]* %551, i32 0, i64 1
  store i32* %552, i32** %549, !tbaa !5
  %553 = getelementptr inbounds [5 x i32*], [5 x i32*]* %544, i64 1
  %554 = bitcast [5 x i32*]* %553 to i8*
  call void @llvm.memset.p0i8.i64(i8* %554, i8 0, i64 40, i32 8, i1 false)
  %555 = getelementptr inbounds [5 x i32*], [5 x i32*]* %553, i64 0, i64 0
  %556 = getelementptr inbounds i32*, i32** %555, i64 1
  %557 = getelementptr inbounds i32*, i32** %556, i64 1
  %558 = getelementptr inbounds i32*, i32** %557, i64 1
  %559 = getelementptr inbounds i32*, i32** %558, i64 1
  store i32* %l_257, i32** %559, !tbaa !5
  %560 = getelementptr inbounds [5 x i32*], [5 x i32*]* %553, i64 1
  %561 = getelementptr inbounds [5 x i32*], [5 x i32*]* %560, i64 0, i64 0
  store i32* %l_257, i32** %561, !tbaa !5
  %562 = getelementptr inbounds i32*, i32** %561, i64 1
  store i32* null, i32** %562, !tbaa !5
  %563 = getelementptr inbounds i32*, i32** %562, i64 1
  store i32* %l_93, i32** %563, !tbaa !5
  %564 = getelementptr inbounds i32*, i32** %563, i64 1
  store i32* @g_68, i32** %564, !tbaa !5
  %565 = getelementptr inbounds i32*, i32** %564, i64 1
  %566 = getelementptr inbounds [5 x [9 x [3 x i32]]], [5 x [9 x [3 x i32]]]* %l_276, i32 0, i64 1
  %567 = getelementptr inbounds [9 x [3 x i32]], [9 x [3 x i32]]* %566, i32 0, i64 1
  %568 = getelementptr inbounds [3 x i32], [3 x i32]* %567, i32 0, i64 1
  store i32* %568, i32** %565, !tbaa !5
  %569 = getelementptr inbounds [5 x i32*], [5 x i32*]* %560, i64 1
  %570 = bitcast [5 x i32*]* %569 to i8*
  call void @llvm.memset.p0i8.i64(i8* %570, i8 0, i64 40, i32 8, i1 false)
  %571 = getelementptr inbounds [5 x i32*], [5 x i32*]* %569, i64 0, i64 0
  %572 = getelementptr inbounds i32*, i32** %571, i64 1
  %573 = getelementptr inbounds i32*, i32** %572, i64 1
  %574 = getelementptr inbounds i32*, i32** %573, i64 1
  %575 = getelementptr inbounds i32*, i32** %574, i64 1
  store i32* %l_257, i32** %575, !tbaa !5
  %576 = getelementptr inbounds [5 x i32*], [5 x i32*]* %569, i64 1
  %577 = getelementptr inbounds [5 x i32*], [5 x i32*]* %576, i64 0, i64 0
  store i32* %l_257, i32** %577, !tbaa !5
  %578 = getelementptr inbounds i32*, i32** %577, i64 1
  store i32* null, i32** %578, !tbaa !5
  %579 = getelementptr inbounds i32*, i32** %578, i64 1
  store i32* %l_93, i32** %579, !tbaa !5
  %580 = getelementptr inbounds i32*, i32** %579, i64 1
  store i32* @g_68, i32** %580, !tbaa !5
  %581 = getelementptr inbounds i32*, i32** %580, i64 1
  %582 = getelementptr inbounds [5 x [9 x [3 x i32]]], [5 x [9 x [3 x i32]]]* %l_276, i32 0, i64 1
  %583 = getelementptr inbounds [9 x [3 x i32]], [9 x [3 x i32]]* %582, i32 0, i64 1
  %584 = getelementptr inbounds [3 x i32], [3 x i32]* %583, i32 0, i64 1
  store i32* %584, i32** %581, !tbaa !5
  %585 = getelementptr inbounds [5 x i32*], [5 x i32*]* %576, i64 1
  %586 = bitcast [5 x i32*]* %585 to i8*
  call void @llvm.memset.p0i8.i64(i8* %586, i8 0, i64 40, i32 8, i1 false)
  %587 = getelementptr inbounds [5 x i32*], [5 x i32*]* %585, i64 0, i64 0
  %588 = getelementptr inbounds i32*, i32** %587, i64 1
  %589 = getelementptr inbounds i32*, i32** %588, i64 1
  %590 = getelementptr inbounds i32*, i32** %589, i64 1
  %591 = getelementptr inbounds i32*, i32** %590, i64 1
  store i32* %l_257, i32** %591, !tbaa !5
  %592 = getelementptr inbounds [5 x i32*], [5 x i32*]* %585, i64 1
  %593 = getelementptr inbounds [5 x i32*], [5 x i32*]* %592, i64 0, i64 0
  store i32* %l_257, i32** %593, !tbaa !5
  %594 = getelementptr inbounds i32*, i32** %593, i64 1
  store i32* null, i32** %594, !tbaa !5
  %595 = getelementptr inbounds i32*, i32** %594, i64 1
  store i32* %l_93, i32** %595, !tbaa !5
  %596 = getelementptr inbounds i32*, i32** %595, i64 1
  store i32* @g_68, i32** %596, !tbaa !5
  %597 = getelementptr inbounds i32*, i32** %596, i64 1
  %598 = getelementptr inbounds [5 x [9 x [3 x i32]]], [5 x [9 x [3 x i32]]]* %l_276, i32 0, i64 1
  %599 = getelementptr inbounds [9 x [3 x i32]], [9 x [3 x i32]]* %598, i32 0, i64 1
  %600 = getelementptr inbounds [3 x i32], [3 x i32]* %599, i32 0, i64 1
  store i32* %600, i32** %597, !tbaa !5
  %601 = getelementptr inbounds [5 x i32*], [5 x i32*]* %592, i64 1
  %602 = bitcast [5 x i32*]* %601 to i8*
  call void @llvm.memset.p0i8.i64(i8* %602, i8 0, i64 40, i32 8, i1 false)
  %603 = getelementptr inbounds [5 x i32*], [5 x i32*]* %601, i64 0, i64 0
  %604 = getelementptr inbounds i32*, i32** %603, i64 1
  %605 = getelementptr inbounds i32*, i32** %604, i64 1
  %606 = getelementptr inbounds i32*, i32** %605, i64 1
  %607 = getelementptr inbounds i32*, i32** %606, i64 1
  store i32* %l_257, i32** %607, !tbaa !5
  %608 = getelementptr inbounds [5 x i32*], [5 x i32*]* %601, i64 1
  %609 = getelementptr inbounds [5 x i32*], [5 x i32*]* %608, i64 0, i64 0
  store i32* %l_257, i32** %609, !tbaa !5
  %610 = getelementptr inbounds i32*, i32** %609, i64 1
  store i32* null, i32** %610, !tbaa !5
  %611 = getelementptr inbounds i32*, i32** %610, i64 1
  store i32* %l_93, i32** %611, !tbaa !5
  %612 = getelementptr inbounds i32*, i32** %611, i64 1
  store i32* @g_68, i32** %612, !tbaa !5
  %613 = getelementptr inbounds i32*, i32** %612, i64 1
  %614 = getelementptr inbounds [5 x [9 x [3 x i32]]], [5 x [9 x [3 x i32]]]* %l_276, i32 0, i64 1
  %615 = getelementptr inbounds [9 x [3 x i32]], [9 x [3 x i32]]* %614, i32 0, i64 1
  %616 = getelementptr inbounds [3 x i32], [3 x i32]* %615, i32 0, i64 1
  store i32* %616, i32** %613, !tbaa !5
  %617 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %617) #1
  %618 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %618) #1
  %619 = load i16, i16* %l_305, align 2, !tbaa !10
  %620 = add i16 %619, 1
  store i16 %620, i16* %l_305, align 2, !tbaa !10
  %621 = load volatile %struct.S0**, %struct.S0*** @g_308, align 8, !tbaa !5
  store %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), %struct.S0** %621, align 8, !tbaa !5
  %622 = load volatile i32*, i32** @g_124, align 8, !tbaa !5
  store i32 2, i32* %622, align 4, !tbaa !1
  %623 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %623) #1
  %624 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %624) #1
  %625 = bitcast [10 x [5 x i32*]]* %l_293 to i8*
  call void @llvm.lifetime.end(i64 400, i8* %625) #1
  %626 = bitcast i32** %l_292 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %626) #1
  br label %627

; <label>:627                                     ; preds = %534
  %628 = load i64, i64* @g_208, align 8, !tbaa !7
  %629 = add i64 %628, 1
  store i64 %629, i64* @g_208, align 8, !tbaa !7
  br label %531

; <label>:630                                     ; preds = %531
  store i8 0, i8* @g_273, align 1, !tbaa !9
  br label %631

; <label>:631                                     ; preds = %641, %630
  %632 = load i8, i8* @g_273, align 1, !tbaa !9
  %633 = sext i8 %632 to i32
  %634 = icmp sle i32 %633, 0
  br i1 %634, label %635, label %646

; <label>:635                                     ; preds = %631
  %636 = load i32**, i32*** @g_199, align 8, !tbaa !5
  %637 = load i32*, i32** %636, align 8, !tbaa !5
  store i32* %637, i32** %l_310, align 8, !tbaa !5
  %638 = load i32**, i32*** @g_199, align 8, !tbaa !5
  store i32* %637, i32** %638, align 8, !tbaa !5
  %639 = load i32*, i32** @g_311, align 8, !tbaa !5
  %640 = load i32**, i32*** @g_121, align 8, !tbaa !5
  store volatile i32* %639, i32** %640, align 8, !tbaa !5
  br label %641

; <label>:641                                     ; preds = %635
  %642 = load i8, i8* @g_273, align 1, !tbaa !9
  %643 = sext i8 %642 to i32
  %644 = add nsw i32 %643, 1
  %645 = trunc i32 %644 to i8
  store i8 %645, i8* @g_273, align 1, !tbaa !9
  br label %631

; <label>:646                                     ; preds = %631
  %647 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %647) #1
  %648 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %648) #1
  %649 = bitcast i16* %l_305 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %649) #1
  %650 = bitcast [8 x i32]* %l_295 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %650) #1
  br label %651

; <label>:651                                     ; preds = %646
  %652 = load i16, i16* @g_210, align 2, !tbaa !10
  %653 = zext i16 %652 to i32
  %654 = add nsw i32 %653, 1
  %655 = trunc i32 %654 to i16
  store i16 %655, i16* @g_210, align 2, !tbaa !10
  br label %423

; <label>:656                                     ; preds = %423
  %657 = load i16, i16* %5, align 2, !tbaa !10
  %658 = sext i16 %657 to i32
  %659 = getelementptr inbounds [10 x i32], [10 x i32]* %l_303, i32 0, i64 8
  %660 = load i32, i32* %659, align 4, !tbaa !1
  %661 = and i32 %660, %658
  store i32 %661, i32* %659, align 4, !tbaa !1
  %662 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %662) #1
  %663 = bitcast i32** %l_310 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %663) #1
  %664 = bitcast [8 x i16]* %l_298 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %664) #1
  %665 = bitcast [1 x i32]* %l_294 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %665) #1
  %666 = bitcast i32* %l_290 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %666) #1
  %667 = bitcast i64* %l_289 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %667) #1
  br label %668

; <label>:668                                     ; preds = %656
  store i64 0, i64* @g_208, align 8, !tbaa !7
  br label %669

; <label>:669                                     ; preds = %726, %668
  %670 = load i64, i64* @g_208, align 8, !tbaa !7
  %671 = icmp ule i64 %670, 0
  br i1 %671, label %672, label %729

; <label>:672                                     ; preds = %669
  %673 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %673) #1
  %674 = bitcast i32* %j15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %674) #1
  %675 = load volatile i32*, i32** @g_115, align 8, !tbaa !5
  store i32 1, i32* %675, align 4, !tbaa !1
  %676 = load i8*, i8** %l_66, align 8, !tbaa !5
  %677 = load i8, i8* %676, align 1, !tbaa !9
  %678 = add i8 %677, -1
  store i8 %678, i8* %676, align 1, !tbaa !9
  %679 = zext i8 %677 to i32
  %680 = load i8*, i8** @g_274, align 8, !tbaa !5
  %681 = load i8, i8* %680, align 1, !tbaa !9
  %682 = zext i8 %681 to i32
  %683 = or i32 %682, %679
  %684 = trunc i32 %683 to i8
  store i8 %684, i8* %680, align 1, !tbaa !9
  %685 = zext i8 %684 to i32
  %686 = load i64, i64* @g_208, align 8, !tbaa !7
  %687 = add i64 %686, 7
  %688 = load i64, i64* @g_208, align 8, !tbaa !7
  %689 = getelementptr inbounds [1 x [10 x i16]], [1 x [10 x i16]]* @g_99, i32 0, i64 %688
  %690 = getelementptr inbounds [10 x i16], [10 x i16]* %689, i32 0, i64 %687
  %691 = load i16, i16* %690, align 2, !tbaa !10
  %692 = sext i16 %691 to i32
  %693 = icmp sge i32 %692, 1
  %694 = zext i1 %693 to i32
  %695 = load i16*, i16** %l_316, align 8, !tbaa !5
  %696 = icmp eq i16* null, %695
  %697 = zext i1 %696 to i32
  %698 = load i64, i64* @g_208, align 8, !tbaa !7
  %699 = trunc i64 %698 to i8
  %700 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %699, i32 2)
  %701 = sext i8 %700 to i32
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %704

; <label>:703                                     ; preds = %672
  br label %704

; <label>:704                                     ; preds = %703, %672
  %705 = phi i1 [ false, %672 ], [ false, %703 ]
  %706 = zext i1 %705 to i32
  %707 = xor i32 1, %706
  %708 = icmp eq i32* %2, null
  %709 = zext i1 %708 to i32
  %710 = load i32, i32* %l_300, align 4, !tbaa !1
  %711 = icmp eq i32 %709, %710
  %712 = zext i1 %711 to i32
  %713 = load i8, i8* %4, align 1, !tbaa !9
  %714 = zext i8 %713 to i32
  %715 = and i32 %712, %714
  %716 = trunc i32 %715 to i8
  store i8 %716, i8* %3, align 1, !tbaa !9
  %717 = sext i8 %716 to i32
  %718 = icmp sgt i32 %685, %717
  %719 = zext i1 %718 to i32
  %720 = load volatile i32, i32* getelementptr inbounds ([3 x [6 x [9 x i32]]], [3 x [6 x [9 x i32]]]* @g_123, i32 0, i64 1, i64 4, i64 2), align 4, !tbaa !1
  %721 = icmp ne i32 %719, %720
  %722 = zext i1 %721 to i32
  %723 = load i32*, i32** @g_311, align 8, !tbaa !5
  store volatile i32 %722, i32* %723, align 4, !tbaa !1
  %724 = bitcast i32* %j15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %724) #1
  %725 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %725) #1
  br label %726

; <label>:726                                     ; preds = %704
  %727 = load i64, i64* @g_208, align 8, !tbaa !7
  %728 = add i64 %727, 1
  store i64 %728, i64* @g_208, align 8, !tbaa !7
  br label %669

; <label>:729                                     ; preds = %669
  store i32 0, i32* %6
  br label %730

; <label>:730                                     ; preds = %729, %401
  %731 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %731) #1
  %732 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %732) #1
  %733 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %733) #1
  %734 = bitcast i16* %l_277 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %734) #1
  %735 = bitcast [5 x [9 x [3 x i32]]]* %l_276 to i8*
  call void @llvm.lifetime.end(i64 540, i8* %735) #1
  %736 = bitcast i32* %l_257 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %736) #1
  %737 = bitcast [6 x i8*]* %l_256 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %737) #1
  %738 = bitcast i8** %l_255 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %738) #1
  %739 = bitcast [8 x i64*]* %l_253 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %739) #1
  %740 = bitcast i64** %l_252 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %740) #1
  %741 = bitcast i32** %l_237 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %741) #1
  %742 = bitcast i32** %l_236 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %742) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_235) #1
  %cleanup.dest = load i32, i32* %6
  switch i32 %cleanup.dest, label %752 [
    i32 0, label %743
  ]

; <label>:743                                     ; preds = %730
  br label %744

; <label>:744                                     ; preds = %743
  %745 = load i32, i32* %2, align 4, !tbaa !1
  %746 = sub nsw i32 %745, 1
  store i32 %746, i32* %2, align 4, !tbaa !1
  br label %219

; <label>:747                                     ; preds = %219
  %748 = load i32**, i32*** @g_121, align 8, !tbaa !5
  %749 = load volatile i32*, i32** %748, align 8, !tbaa !5
  %750 = load i32**, i32*** @g_121, align 8, !tbaa !5
  store volatile i32* %749, i32** %750, align 8, !tbaa !5
  %751 = getelementptr inbounds [10 x i32], [10 x i32]* %l_303, i32 0, i64 8
  store i32* %751, i32** %l_317, align 8, !tbaa !5
  store i32 0, i32* %6
  br label %752

; <label>:752                                     ; preds = %747, %730
  %753 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %753) #1
  %754 = bitcast [10 x i32]* %l_303 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %754) #1
  %755 = bitcast i32* %l_300 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %755) #1
  %756 = bitcast i32* %l_299 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %756) #1
  %757 = bitcast i32* %l_296 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %757) #1
  %758 = bitcast [10 x i16]* %l_291 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %758) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_254) #1
  %759 = bitcast i64** %l_250 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %759) #1
  %cleanup.dest.16 = load i32, i32* %6
  switch i32 %cleanup.dest.16, label %1041 [
    i32 0, label %760
  ]

; <label>:760                                     ; preds = %752
  br label %761

; <label>:761                                     ; preds = %760, %168
  store i8 -9, i8* @g_273, align 1, !tbaa !9
  br label %762

; <label>:762                                     ; preds = %1036, %761
  %763 = load i8, i8* @g_273, align 1, !tbaa !9
  %764 = sext i8 %763 to i32
  %765 = icmp eq i32 %764, -3
  br i1 %765, label %766, label %1039

; <label>:766                                     ; preds = %762
  %767 = bitcast i16** %l_322 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %767) #1
  store i16* getelementptr inbounds ([1 x [10 x i16]], [1 x [10 x i16]]* @g_99, i32 0, i64 0, i64 7), i16** %l_322, align 8, !tbaa !5
  %768 = bitcast i16*** %l_323 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %768) #1
  store i16** %l_322, i16*** %l_323, align 8, !tbaa !5
  %769 = bitcast i32* %l_329 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %769) #1
  store i32 -1, i32* %l_329, align 4, !tbaa !1
  %770 = bitcast i8** %l_363 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %770) #1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_13, i32 0, i64 7), i8** %l_363, align 8, !tbaa !5
  %771 = bitcast i32* %l_364 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %771) #1
  store i32 5, i32* %l_364, align 4, !tbaa !1
  %772 = bitcast i16** %l_365 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %772) #1
  store i16* %l_63, i16** %l_365, align 8, !tbaa !5
  %773 = bitcast i64** %l_366 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %773) #1
  %774 = getelementptr inbounds [3 x i64], [3 x i64]* %l_297, i32 0, i64 1
  store i64* %774, i64** %l_366, align 8, !tbaa !5
  %775 = bitcast i64** %l_367 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %775) #1
  store i64* @g_208, i64** %l_367, align 8, !tbaa !5
  %776 = bitcast i16* %l_368 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %776) #1
  store i16 -1, i16* %l_368, align 2, !tbaa !10
  %777 = bitcast i32* %l_369 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %777) #1
  store i32 -1, i32* %l_369, align 4, !tbaa !1
  %778 = bitcast i32**** %l_371 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %778) #1
  store i32*** null, i32**** %l_371, align 8, !tbaa !5
  %779 = bitcast i32***** %l_370 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %779) #1
  store i32**** %l_371, i32***** %l_370, align 8, !tbaa !5
  %780 = bitcast [3 x [4 x i32*]]* %l_372 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %780) #1
  %781 = getelementptr inbounds [3 x [4 x i32*]], [3 x [4 x i32*]]* %l_372, i64 0, i64 0
  %782 = getelementptr inbounds [4 x i32*], [4 x i32*]* %781, i64 0, i64 0
  store i32* %l_301, i32** %782, !tbaa !5
  %783 = getelementptr inbounds i32*, i32** %782, i64 1
  store i32* %l_301, i32** %783, !tbaa !5
  %784 = getelementptr inbounds i32*, i32** %783, i64 1
  store i32* %l_301, i32** %784, !tbaa !5
  %785 = getelementptr inbounds i32*, i32** %784, i64 1
  store i32* %l_301, i32** %785, !tbaa !5
  %786 = getelementptr inbounds [4 x i32*], [4 x i32*]* %781, i64 1
  %787 = getelementptr inbounds [4 x i32*], [4 x i32*]* %786, i64 0, i64 0
  store i32* %l_301, i32** %787, !tbaa !5
  %788 = getelementptr inbounds i32*, i32** %787, i64 1
  store i32* %l_301, i32** %788, !tbaa !5
  %789 = getelementptr inbounds i32*, i32** %788, i64 1
  store i32* %l_301, i32** %789, !tbaa !5
  %790 = getelementptr inbounds i32*, i32** %789, i64 1
  store i32* %l_301, i32** %790, !tbaa !5
  %791 = getelementptr inbounds [4 x i32*], [4 x i32*]* %786, i64 1
  %792 = getelementptr inbounds [4 x i32*], [4 x i32*]* %791, i64 0, i64 0
  store i32* %l_301, i32** %792, !tbaa !5
  %793 = getelementptr inbounds i32*, i32** %792, i64 1
  store i32* %l_301, i32** %793, !tbaa !5
  %794 = getelementptr inbounds i32*, i32** %793, i64 1
  store i32* %l_301, i32** %794, !tbaa !5
  %795 = getelementptr inbounds i32*, i32** %794, i64 1
  store i32* %l_301, i32** %795, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_375) #1
  store i8 -1, i8* %l_375, align 1, !tbaa !9
  %796 = bitcast i16** %l_389 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %796) #1
  store i16* @g_390, i16** %l_389, align 8, !tbaa !5
  %797 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %797) #1
  %798 = bitcast i32* %j18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %798) #1
  %799 = load i16*, i16** %l_322, align 8, !tbaa !5
  %800 = load i16**, i16*** %l_323, align 8, !tbaa !5
  store i16* %799, i16** %800, align 8, !tbaa !5
  %801 = icmp eq i16* %799, %5
  %802 = zext i1 %801 to i32
  %803 = trunc i32 %802 to i16
  %804 = getelementptr inbounds [7 x [9 x %struct.S0*]], [7 x [9 x %struct.S0*]]* %l_328, i32 0, i64 5
  %805 = getelementptr inbounds [9 x %struct.S0*], [9 x %struct.S0*]* %804, i32 0, i64 0
  %806 = load %struct.S0*, %struct.S0** %805, align 8, !tbaa !5
  %807 = load i32, i32* %2, align 4, !tbaa !1
  %808 = load i32, i32* %l_329, align 4, !tbaa !1
  %809 = sext i32 %808 to i64
  %810 = and i64 %809, -9
  %811 = trunc i64 %810 to i32
  store i32 %811, i32* %l_329, align 4, !tbaa !1
  %812 = load i32, i32* %2, align 4, !tbaa !1
  %813 = trunc i32 %812 to i8
  %814 = load i8, i8* %3, align 1, !tbaa !9
  %815 = sext i8 %814 to i32
  %816 = load i8*, i8** @g_274, align 8, !tbaa !5
  %817 = load i8, i8* %816, align 1, !tbaa !9
  %818 = add i8 %817, -1
  store i8 %818, i8* %816, align 1, !tbaa !9
  %819 = load i32, i32* %l_302, align 4, !tbaa !1
  %820 = trunc i32 %819 to i8
  %821 = load i8*, i8** %l_363, align 8, !tbaa !5
  store i8 %820, i8* %821, align 1, !tbaa !9
  %822 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %818, i8 zeroext %820)
  %823 = zext i8 %822 to i32
  %824 = load i8, i8* %3, align 1, !tbaa !9
  %825 = sext i8 %824 to i32
  %826 = call i32 @safe_div_func_uint32_t_u_u(i32 %823, i32 %825)
  %827 = trunc i32 %826 to i8
  %828 = load i32, i32* %2, align 4, !tbaa !1
  %829 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %827, i32 %828)
  %830 = sext i8 %829 to i32
  %831 = load volatile i32, i32* @g_169, align 4, !tbaa !1
  %832 = and i32 %830, %831
  %833 = load i32, i32* %l_364, align 4, !tbaa !1
  %834 = icmp sle i32 %832, %833
  %835 = zext i1 %834 to i32
  %836 = load i16, i16* %5, align 2, !tbaa !10
  %837 = sext i16 %836 to i32
  %838 = or i32 %835, %837
  %839 = trunc i32 %838 to i8
  %840 = load i16, i16* getelementptr inbounds ([1 x [10 x i16]], [1 x [10 x i16]]* @g_99, i32 0, i64 0, i64 2), align 2, !tbaa !10
  %841 = trunc i16 %840 to i8
  %842 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %839, i8 zeroext %841)
  %843 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %842, i32 5)
  %844 = sext i8 %843 to i16
  %845 = load i16*, i16** %l_365, align 8, !tbaa !5
  store i16 %844, i16* %845, align 2, !tbaa !10
  %846 = sext i16 %844 to i64
  %847 = icmp ne i64 %846, 64154
  %848 = zext i1 %847 to i32
  %849 = sext i32 %848 to i64
  %850 = icmp sgt i64 %849, 106
  %851 = zext i1 %850 to i32
  %852 = call i32 @safe_add_func_uint32_t_u_u(i32 %815, i32 %851)
  %853 = load i64*, i64** %l_366, align 8, !tbaa !5
  %854 = load i64, i64* %853, align 8, !tbaa !7
  %855 = or i64 %854, 1
  store i64 %855, i64* %853, align 8, !tbaa !7
  %856 = icmp sle i64 %855, -10
  %857 = zext i1 %856 to i32
  %858 = load i8, i8* %3, align 1, !tbaa !9
  %859 = load i32, i32* %l_364, align 4, !tbaa !1
  %860 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %858, i32 %859)
  %861 = sext i8 %860 to i32
  %862 = load i32, i32* %2, align 4, !tbaa !1
  %863 = and i32 %861, %862
  %864 = trunc i32 %863 to i8
  %865 = load i16, i16* %5, align 2, !tbaa !10
  %866 = sext i16 %865 to i32
  %867 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %864, i32 %866)
  %868 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %867, i8 zeroext -18)
  %869 = zext i8 %868 to i32
  %870 = load i8, i8* %4, align 1, !tbaa !9
  %871 = zext i8 %870 to i32
  %872 = call i32 @safe_add_func_int32_t_s_s(i32 %869, i32 %871)
  %873 = trunc i32 %872 to i8
  %874 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %813, i8 zeroext %873)
  %875 = zext i8 %874 to i32
  %876 = icmp ne i32 %875, 0
  br i1 %876, label %877, label %878

; <label>:877                                     ; preds = %766
  br label %878

; <label>:878                                     ; preds = %877, %766
  %879 = phi i1 [ false, %766 ], [ true, %877 ]
  %880 = zext i1 %879 to i32
  %881 = call i32 @safe_mod_func_uint32_t_u_u(i32 1914858137, i32 %880)
  %882 = trunc i32 %881 to i16
  %883 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %882)
  %884 = zext i16 %883 to i32
  %885 = xor i32 %884, -1
  %886 = load i32, i32* %2, align 4, !tbaa !1
  %887 = trunc i32 %886 to i16
  %888 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %887, i32 11)
  %889 = sext i16 %888 to i64
  %890 = or i64 %889, -2
  %891 = load i64*, i64** %l_367, align 8, !tbaa !5
  store i64 %890, i64* %891, align 8, !tbaa !7
  %892 = load i8, i8* @g_77, align 1, !tbaa !9
  %893 = zext i8 %892 to i64
  %894 = and i64 %890, %893
  %895 = trunc i64 %894 to i16
  %896 = load i8, i8* getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 3), align 1, !tbaa !9
  %897 = zext i8 %896 to i16
  %898 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %895, i16 zeroext %897)
  %899 = zext i16 %898 to i32
  %900 = icmp sgt i32 %811, %899
  %901 = zext i1 %900 to i32
  br i1 true, label %903, label %902

; <label>:902                                     ; preds = %878
  br label %903

; <label>:903                                     ; preds = %902, %878
  %904 = phi i1 [ true, %878 ], [ true, %902 ]
  %905 = zext i1 %904 to i32
  %906 = icmp sle i32 %807, %905
  %907 = zext i1 %906 to i32
  %908 = load volatile %struct.S0**, %struct.S0*** @g_308, align 8, !tbaa !5
  %909 = load %struct.S0*, %struct.S0** %908, align 8, !tbaa !5
  %910 = icmp eq %struct.S0* %806, %909
  %911 = zext i1 %910 to i32
  %912 = trunc i32 %911 to i16
  %913 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %912, i32 9)
  %914 = sext i16 %913 to i32
  %915 = icmp ne i32 %914, 0
  br i1 %915, label %916, label %920

; <label>:916                                     ; preds = %903
  %917 = load i8, i8* %4, align 1, !tbaa !9
  %918 = zext i8 %917 to i32
  %919 = icmp ne i32 %918, 0
  br label %920

; <label>:920                                     ; preds = %916, %903
  %921 = phi i1 [ false, %903 ], [ %919, %916 ]
  %922 = zext i1 %921 to i32
  %923 = trunc i32 %922 to i8
  %924 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %923, i32 5)
  %925 = sext i8 %924 to i32
  %926 = load i32, i32* @g_104, align 4, !tbaa !1
  %927 = icmp eq i32 %925, %926
  %928 = zext i1 %927 to i32
  %929 = load i32, i32* %l_364, align 4, !tbaa !1
  %930 = icmp sgt i32 %928, %929
  %931 = zext i1 %930 to i32
  %932 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %803, i16 zeroext -2)
  %933 = zext i16 %932 to i32
  %934 = load i32, i32* %l_369, align 4, !tbaa !1
  %935 = or i32 %934, %933
  store i32 %935, i32* %l_369, align 4, !tbaa !1
  %936 = load i32****, i32***** %l_370, align 8, !tbaa !5
  store i32*** @g_121, i32**** %936, align 8, !tbaa !5
  %937 = load i8, i8* %l_375, align 1, !tbaa !9
  %938 = add i8 %937, 1
  store i8 %938, i8* %l_375, align 1, !tbaa !9
  %939 = load volatile i72, i72* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to i72*), align 1
  %940 = shl i72 %939, 52
  %941 = ashr i72 %940, 52
  %942 = trunc i72 %941 to i32
  %943 = trunc i32 %942 to i8
  %944 = load i8*, i8** @g_274, align 8, !tbaa !5
  %945 = load i8, i8* %944, align 1, !tbaa !9
  %946 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %943, i8 signext %945)
  %947 = sext i8 %946 to i16
  %948 = load i32, i32* @g_92, align 4, !tbaa !1
  %949 = trunc i32 %948 to i8
  %950 = load i32, i32* %2, align 4, !tbaa !1
  %951 = sext i32 %950 to i64
  %952 = icmp ne i64 38053477698909038, %951
  %953 = zext i1 %952 to i32
  %954 = load i16, i16* %5, align 2, !tbaa !10
  %955 = sext i16 %954 to i64
  %956 = load i8*, i8** @g_274, align 8, !tbaa !5
  %957 = load i8, i8* %956, align 1, !tbaa !9
  %958 = zext i8 %957 to i32
  %959 = load i16, i16* %5, align 2, !tbaa !10
  %960 = sext i16 %959 to i32
  %961 = getelementptr inbounds [7 x [9 x %struct.S0*]], [7 x [9 x %struct.S0*]]* %l_328, i32 0, i64 6
  %962 = getelementptr inbounds [9 x %struct.S0*], [9 x %struct.S0*]* %961, i32 0, i64 1
  %963 = load %struct.S0*, %struct.S0** %962, align 8, !tbaa !5
  %964 = icmp eq %struct.S0* null, %963
  %965 = zext i1 %964 to i32
  %966 = call i32 @safe_div_func_uint32_t_u_u(i32 %965, i32 -638065732)
  %967 = load i8, i8* %3, align 1, !tbaa !9
  %968 = sext i8 %967 to i32
  %969 = or i32 %966, %968
  %970 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_13, i32 0, i64 0), align 1, !tbaa !9
  %971 = sext i8 %970 to i32
  %972 = icmp ne i32 %971, 0
  br i1 %972, label %977, label %973

; <label>:973                                     ; preds = %920
  %974 = load i16, i16* %5, align 2, !tbaa !10
  %975 = sext i16 %974 to i32
  %976 = icmp ne i32 %975, 0
  br label %977

; <label>:977                                     ; preds = %973, %920
  %978 = phi i1 [ true, %920 ], [ %976, %973 ]
  %979 = zext i1 %978 to i32
  %980 = trunc i32 %979 to i8
  %981 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %980, i8 signext 0)
  %982 = sext i8 %981 to i64
  %983 = icmp sge i64 %982, 1
  %984 = zext i1 %983 to i32
  %985 = sext i32 %984 to i64
  %986 = icmp sgt i64 %985, 7689
  %987 = zext i1 %986 to i32
  %988 = icmp eq i32 %960, %987
  %989 = zext i1 %988 to i32
  %990 = sext i32 %989 to i64
  %991 = icmp sge i64 %990, 238
  %992 = zext i1 %991 to i32
  %993 = load i32, i32* %2, align 4, !tbaa !1
  %994 = icmp ne i32 %992, %993
  %995 = zext i1 %994 to i32
  %996 = load i32, i32* %2, align 4, !tbaa !1
  %997 = icmp eq i32 %995, %996
  %998 = zext i1 %997 to i32
  %999 = sext i32 %998 to i64
  %1000 = icmp sgt i64 %999, 6
  %1001 = zext i1 %1000 to i32
  %1002 = and i32 %958, %1001
  %1003 = load i8, i8* %3, align 1, !tbaa !9
  %1004 = sext i8 %1003 to i32
  %1005 = or i32 %1002, %1004
  %1006 = or i64 %955, -7577329773427125979
  %1007 = load i8, i8* %3, align 1, !tbaa !9
  %1008 = sext i8 %1007 to i64
  %1009 = icmp ule i64 %1006, %1008
  %1010 = zext i1 %1009 to i32
  %1011 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %949, i8 signext 2)
  %1012 = sext i8 %1011 to i16
  store i16 %1012, i16* @g_210, align 2, !tbaa !10
  %1013 = load i16*, i16** %l_389, align 8, !tbaa !5
  store i16 %1012, i16* %1013, align 2, !tbaa !10
  %1014 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %947, i16 zeroext %1012)
  %1015 = zext i16 %1014 to i32
  %1016 = load i32**, i32*** @g_199, align 8, !tbaa !5
  %1017 = load i32*, i32** %1016, align 8, !tbaa !5
  %1018 = load i32, i32* %1017, align 4, !tbaa !1
  %1019 = and i32 %1018, %1015
  store i32 %1019, i32* %1017, align 4, !tbaa !1
  %1020 = bitcast i32* %j18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1020) #1
  %1021 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1021) #1
  %1022 = bitcast i16** %l_389 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1022) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_375) #1
  %1023 = bitcast [3 x [4 x i32*]]* %l_372 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %1023) #1
  %1024 = bitcast i32***** %l_370 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1024) #1
  %1025 = bitcast i32**** %l_371 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1025) #1
  %1026 = bitcast i32* %l_369 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1026) #1
  %1027 = bitcast i16* %l_368 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1027) #1
  %1028 = bitcast i64** %l_367 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1028) #1
  %1029 = bitcast i64** %l_366 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1029) #1
  %1030 = bitcast i16** %l_365 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1030) #1
  %1031 = bitcast i32* %l_364 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1031) #1
  %1032 = bitcast i8** %l_363 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1032) #1
  %1033 = bitcast i32* %l_329 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1033) #1
  %1034 = bitcast i16*** %l_323 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1034) #1
  %1035 = bitcast i16** %l_322 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1035) #1
  br label %1036

; <label>:1036                                    ; preds = %977
  %1037 = load i8, i8* @g_273, align 1, !tbaa !9
  %1038 = add i8 %1037, 1
  store i8 %1038, i8* @g_273, align 1, !tbaa !9
  br label %762

; <label>:1039                                    ; preds = %762
  %1040 = load i16, i16* @g_210, align 2, !tbaa !10
  store i16 %1040, i16* %1
  store i32 1, i32* %6
  br label %1041

; <label>:1041                                    ; preds = %1039, %752, %66, %54
  %1042 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1042) #1
  %1043 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1043) #1
  %1044 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1044) #1
  %1045 = bitcast [2 x i64]* %l_374 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1045) #1
  %1046 = bitcast [5 x [10 x [5 x i16]]]* %l_373 to i8*
  call void @llvm.lifetime.end(i64 500, i8* %1046) #1
  %1047 = bitcast [7 x [9 x %struct.S0*]]* %l_328 to i8*
  call void @llvm.lifetime.end(i64 504, i8* %1047) #1
  %1048 = bitcast i32** %l_317 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1048) #1
  %1049 = bitcast i16** %l_316 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1049) #1
  %1050 = bitcast [9 x [7 x [3 x i32]]]* %l_304 to i8*
  call void @llvm.lifetime.end(i64 756, i8* %1050) #1
  %1051 = bitcast i32* %l_302 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1051) #1
  %1052 = bitcast i32* %l_301 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1052) #1
  %1053 = bitcast [3 x i64]* %l_297 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1053) #1
  %1054 = bitcast i8** %l_251 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1054) #1
  %1055 = bitcast i32* %l_93 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1055) #1
  %1056 = bitcast i8** %l_66 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1056) #1
  %1057 = bitcast i16* %l_63 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1057) #1
  %1058 = load i16, i16* %1
  ret i16 %1058
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal i64 @safe_unary_minus_func_uint64_t_u(i64 %ui) #0 {
  %1 = alloca i64, align 8
  store i64 %ui, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = sub i64 0, %2
  ret i64 %3
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
define internal i32 @func_80(i32* %p_81, i32 %p_82, i8 signext %p_83, i32 %p_84, i8 signext %p_85) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %l_131 = alloca [2 x i32], align 4
  %l_132 = alloca i8*, align 8
  %l_183 = alloca i32*, align 8
  %l_203 = alloca i32**, align 8
  %l_204 = alloca i32**, align 8
  %l_221 = alloca i32*, align 8
  %l_223 = alloca i32, align 4
  %i = alloca i32, align 4
  %l_173 = alloca [1 x i16], align 2
  %l_190 = alloca i8*, align 8
  %i1 = alloca i32, align 4
  %l_144 = alloca i32*, align 8
  %l_166 = alloca [5 x [2 x [5 x i32]]], align 16
  %i2 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_153 = alloca i64*, align 8
  %l_154 = alloca i64*, align 8
  %l_164 = alloca i32, align 4
  %l_165 = alloca i32*, align 8
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k5 = alloca i32, align 4
  %7 = alloca i32
  %l_174 = alloca [4 x i32*], align 16
  %l_175 = alloca i32, align 4
  %i7 = alloca i32, align 4
  %l_192 = alloca i8*, align 8
  %l_191 = alloca i8**, align 8
  %l_195 = alloca i16*, align 8
  %l_201 = alloca i32***, align 8
  %l_202 = alloca i32***, align 8
  %l_205 = alloca i64*, align 8
  %l_206 = alloca i64*, align 8
  %l_207 = alloca i64*, align 8
  %l_209 = alloca i16*, align 8
  %l_178 = alloca [1 x [9 x [8 x i32*]]], align 16
  %l_180 = alloca i32*, align 8
  %l_179 = alloca i32**, align 8
  %l_184 = alloca i32**, align 8
  %l_185 = alloca i8*, align 8
  %i8 = alloca i32, align 4
  %j9 = alloca i32, align 4
  %k10 = alloca i32, align 4
  %i11 = alloca i32, align 4
  %8 = alloca %struct.S0, align 1
  %9 = alloca { i64, i8 }, align 1
  %l_215 = alloca i32*, align 8
  %l_218 = alloca i32, align 4
  store i32* %p_81, i32** %2, align 8, !tbaa !5
  store i32 %p_82, i32* %3, align 4, !tbaa !1
  store i8 %p_83, i8* %4, align 1, !tbaa !9
  store i32 %p_84, i32* %5, align 4, !tbaa !1
  store i8 %p_85, i8* %6, align 1, !tbaa !9
  %10 = bitcast [2 x i32]* %l_131 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %l_132 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_13, i32 0, i64 3), i8** %l_132, align 8, !tbaa !5
  %12 = bitcast i32** %l_183 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32* @g_92, i32** %l_183, align 8, !tbaa !5
  %13 = bitcast i32*** %l_203 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32** getelementptr inbounds ([6 x i32*], [6 x i32*]* @g_200, i32 0, i64 1), i32*** %l_203, align 8, !tbaa !5
  %14 = bitcast i32*** %l_204 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32** getelementptr inbounds ([6 x i32*], [6 x i32*]* @g_200, i32 0, i64 2), i32*** %l_204, align 8, !tbaa !5
  %15 = bitcast i32** %l_221 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %16, i32** %l_221, align 8, !tbaa !5
  %17 = bitcast i32* %l_223 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 1, i32* %l_223, align 4, !tbaa !1
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %26, %0
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %29

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 %24
  store i32 1, i32* %25, align 4, !tbaa !1
  br label %26

; <label>:26                                      ; preds = %22
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4, !tbaa !1
  br label %19

; <label>:29                                      ; preds = %19
  %30 = load i8, i8* %6, align 1, !tbaa !9
  %31 = load i8, i8* %6, align 1, !tbaa !9
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  %33 = load i32, i32* %32, align 4, !tbaa !1
  %34 = trunc i32 %33 to i8
  %35 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %31, i8 zeroext %34)
  %36 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %35, i8 signext 0)
  %37 = sext i8 %36 to i32
  %38 = call i32 @safe_unary_minus_func_int32_t_s(i32 %37)
  %39 = load i8*, i8** %l_132, align 8, !tbaa !5
  %40 = icmp ne i8* %4, %39
  %41 = zext i1 %40 to i32
  %42 = load i8*, i8** %l_132, align 8, !tbaa !5
  %43 = icmp ne i8* null, %42
  br i1 %43, label %44, label %615

; <label>:44                                      ; preds = %29
  %45 = load i8*, i8** %l_132, align 8, !tbaa !5
  %46 = load i8*, i8** %l_132, align 8, !tbaa !5
  %47 = icmp ne i8* %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32*, i32** %2, align 8, !tbaa !5
  %50 = load i32, i32* %49, align 4, !tbaa !1
  %51 = call i32 @safe_sub_func_uint32_t_u_u(i32 %48, i32 %50)
  %52 = load volatile i32, i32* getelementptr inbounds ([3 x [6 x [9 x i32]]], [3 x [6 x [9 x i32]]]* @g_123, i32 0, i64 2, i64 4, i64 7), align 4, !tbaa !1
  %53 = icmp ugt i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  %56 = load i32, i32* %55, align 4, !tbaa !1
  %57 = or i32 %54, %56
  %58 = trunc i32 %57 to i16
  %59 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %58, i16 zeroext 6973)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 0
  %61 = load i32, i32* %60, align 4, !tbaa !1
  %62 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %59, i32 %61)
  %63 = sext i16 %62 to i32
  %64 = xor i32 %63, -1
  %65 = trunc i32 %64 to i16
  %66 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %65, i32 7)
  %67 = sext i16 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %615

; <label>:69                                      ; preds = %44
  %70 = bitcast [1 x i16]* %l_173 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %70) #1
  %71 = bitcast i8** %l_190 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  store i8* @g_77, i8** %l_190, align 8, !tbaa !5
  %72 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %73

; <label>:73                                      ; preds = %80, %69
  %74 = load i32, i32* %i1, align 4, !tbaa !1
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %76, label %83

; <label>:76                                      ; preds = %73
  %77 = load i32, i32* %i1, align 4, !tbaa !1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [1 x i16], [1 x i16]* %l_173, i32 0, i64 %78
  store i16 -4254, i16* %79, align 2, !tbaa !10
  br label %80

; <label>:80                                      ; preds = %76
  %81 = load i32, i32* %i1, align 4, !tbaa !1
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %i1, align 4, !tbaa !1
  br label %73

; <label>:83                                      ; preds = %73
  store i32 0, i32* @g_68, align 4, !tbaa !1
  br label %84

; <label>:84                                      ; preds = %249, %83
  %85 = load i32, i32* @g_68, align 4, !tbaa !1
  %86 = icmp sge i32 %85, -3
  br i1 %86, label %87, label %252

; <label>:87                                      ; preds = %84
  %88 = bitcast i32** %l_144 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  store i32* null, i32** %l_144, align 8, !tbaa !5
  %89 = bitcast [5 x [2 x [5 x i32]]]* %l_166 to i8*
  call void @llvm.lifetime.start(i64 200, i8* %89) #1
  %90 = bitcast [5 x [2 x [5 x i32]]]* %l_166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* bitcast ([5 x [2 x [5 x i32]]]* @func_80.l_166 to i8*), i64 200, i32 16, i1 false)
  %91 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  %92 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #1
  %93 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #1
  %94 = load volatile i32*, i32** @g_122, align 8, !tbaa !5
  %95 = load volatile i32, i32* %94, align 4, !tbaa !1
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 0
  store i32 %95, i32* %96, align 4, !tbaa !1
  store i8 4, i8* %6, align 1, !tbaa !9
  br label %97

; <label>:97                                      ; preds = %228, %87
  %98 = load i8, i8* %6, align 1, !tbaa !9
  %99 = sext i8 %98 to i32
  %100 = icmp slt i32 %99, -26
  br i1 %100, label %101, label %231

; <label>:101                                     ; preds = %97
  %102 = bitcast i64** %l_153 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  store i64* null, i64** %l_153, align 8, !tbaa !5
  %103 = bitcast i64** %l_154 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %103) #1
  store i64* getelementptr inbounds ([10 x [7 x [3 x i64]]], [10 x [7 x [3 x i64]]]* @g_155, i32 0, i64 4, i64 5, i64 0), i64** %l_154, align 8, !tbaa !5
  %104 = bitcast i32* %l_164 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  store i32 -835435007, i32* %l_164, align 4, !tbaa !1
  %105 = bitcast i32** %l_165 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 0
  store i32* %106, i32** %l_165, align 8, !tbaa !5
  %107 = load volatile i32, i32* getelementptr inbounds ([3 x [6 x [9 x i32]]], [3 x [6 x [9 x i32]]]* @g_123, i32 0, i64 0, i64 5, i64 5), align 4, !tbaa !1
  %108 = load i8, i8* getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 0), align 1, !tbaa !9
  %109 = icmp sge i32 %107, 1
  %110 = zext i1 %109 to i32
  %111 = trunc i32 %110 to i16
  %112 = load i16, i16* getelementptr inbounds ([1 x [10 x i16]], [1 x [10 x i16]]* @g_99, i32 0, i64 0, i64 9), align 2, !tbaa !10
  %113 = sext i16 %112 to i64
  %114 = load i64*, i64** %l_154, align 8, !tbaa !5
  %115 = load i64, i64* %114, align 8, !tbaa !7
  %116 = and i64 %115, %113
  store i64 %116, i64* %114, align 8, !tbaa !7
  %117 = icmp ne i64 %116, 1
  %118 = zext i1 %117 to i32
  %119 = load i8, i8* %6, align 1, !tbaa !9
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %148

; <label>:122                                     ; preds = %101
  %123 = load i8, i8* %4, align 1, !tbaa !9
  %124 = load i32, i32* @g_68, align 4, !tbaa !1
  %125 = load i8*, i8** %l_132, align 8, !tbaa !5
  %126 = load i8, i8* %125, align 1, !tbaa !9
  %127 = sext i8 %126 to i32
  %128 = xor i32 %127, -835435007
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %125, align 1, !tbaa !9
  %130 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %123, i8 zeroext %129)
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

; <label>:133                                     ; preds = %122
  %134 = load i32, i32* %5, align 4, !tbaa !1
  %135 = icmp ne i32 %134, 0
  br label %136

; <label>:136                                     ; preds = %133, %122
  %137 = phi i1 [ false, %122 ], [ %135, %133 ]
  %138 = zext i1 %137 to i32
  %139 = trunc i32 %138 to i16
  %140 = load i64, i64* getelementptr inbounds ([10 x [7 x [3 x i64]]], [10 x [7 x [3 x i64]]]* @g_155, i32 0, i64 0, i64 5, i64 2), align 8, !tbaa !7
  %141 = trunc i64 %140 to i16
  %142 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %139, i16 signext %141)
  %143 = trunc i16 %142 to i8
  %144 = load i8, i8* %6, align 1, !tbaa !9
  %145 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %143, i8 zeroext %144)
  %146 = zext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br label %148

; <label>:148                                     ; preds = %136, %101
  %149 = phi i1 [ false, %101 ], [ %147, %136 ]
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %3, align 4, !tbaa !1
  %152 = trunc i32 %151 to i8
  %153 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext 1, i8 signext %152)
  %154 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext 17921, i32 10)
  %155 = zext i16 %154 to i32
  %156 = load i8, i8* getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 3), align 1, !tbaa !9
  %157 = zext i8 %156 to i32
  %158 = and i32 %155, %157
  %159 = sext i32 %158 to i64
  %160 = xor i64 %159, 64
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

; <label>:162                                     ; preds = %148
  %163 = load i32*, i32** %2, align 8, !tbaa !5
  %164 = load i32, i32* %163, align 4, !tbaa !1
  %165 = icmp ne i32 %164, 0
  br label %166

; <label>:166                                     ; preds = %162, %148
  %167 = phi i1 [ false, %148 ], [ %165, %162 ]
  %168 = zext i1 %167 to i32
  %169 = trunc i32 %168 to i16
  %170 = load i8, i8* getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 2), align 1, !tbaa !9
  %171 = zext i8 %170 to i16
  %172 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %169, i16 zeroext %171)
  %173 = zext i16 %172 to i32
  %174 = icmp ne i32 %173, -835435007
  %175 = zext i1 %174 to i32
  %176 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %111, i32 %175)
  %177 = zext i16 %176 to i32
  %178 = load i32*, i32** %l_165, align 8, !tbaa !5
  %179 = load i32, i32* %178, align 4, !tbaa !1
  %180 = and i32 %179, %177
  store i32 %180, i32* %178, align 4, !tbaa !1
  store i32 0, i32* %3, align 4, !tbaa !1
  br label %181

; <label>:181                                     ; preds = %218, %166
  %182 = load i32, i32* %3, align 4, !tbaa !1
  %183 = icmp ule i32 %182, 2
  br i1 %183, label %184, label %221

; <label>:184                                     ; preds = %181
  %185 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %185) #1
  %186 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  %187 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %187) #1
  %188 = load i32, i32* %3, align 4, !tbaa !1
  %189 = zext i32 %188 to i64
  %190 = load i32, i32* %3, align 4, !tbaa !1
  %191 = add i32 %190, 2
  %192 = zext i32 %191 to i64
  %193 = load i32, i32* %3, align 4, !tbaa !1
  %194 = add i32 %193, 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [10 x [7 x [3 x i64]]], [10 x [7 x [3 x i64]]]* @g_155, i32 0, i64 %195
  %197 = getelementptr inbounds [7 x [3 x i64]], [7 x [3 x i64]]* %196, i32 0, i64 %192
  %198 = getelementptr inbounds [3 x i64], [3 x i64]* %197, i32 0, i64 %189
  %199 = load i64, i64* %198, align 8, !tbaa !7
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %211

; <label>:201                                     ; preds = %184
  %202 = load i32*, i32** %l_165, align 8, !tbaa !5
  %203 = load i32, i32* %202, align 4, !tbaa !1
  %204 = sext i32 %203 to i64
  %205 = and i64 %204, 1
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %202, align 4, !tbaa !1
  %207 = getelementptr inbounds [5 x [2 x [5 x i32]]], [5 x [2 x [5 x i32]]]* %l_166, i32 0, i64 2
  %208 = getelementptr inbounds [2 x [5 x i32]], [2 x [5 x i32]]* %207, i32 0, i64 0
  %209 = getelementptr inbounds [5 x i32], [5 x i32]* %208, i32 0, i64 1
  %210 = load i32, i32* %209, align 4, !tbaa !1
  store i32 %210, i32* %1
  store i32 1, i32* %7
  br label %214

; <label>:211                                     ; preds = %184
  %212 = load volatile i32*, i32** @g_115, align 8, !tbaa !5
  %213 = load i32, i32* %212, align 4, !tbaa !1
  store i32 %213, i32* %1
  store i32 1, i32* %7
  br label %214

; <label>:214                                     ; preds = %211, %201
  %215 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  br label %222
                                                  ; No predecessors!
  %219 = load i32, i32* %3, align 4, !tbaa !1
  %220 = add i32 %219, 1
  store i32 %220, i32* %3, align 4, !tbaa !1
  br label %181

; <label>:221                                     ; preds = %181
  store i32 0, i32* %7
  br label %222

; <label>:222                                     ; preds = %221, %214
  %223 = bitcast i32** %l_165 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast i32* %l_164 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast i64** %l_154 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast i64** %l_153 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %cleanup.dest = load i32, i32* %7
  switch i32 %cleanup.dest, label %242 [
    i32 0, label %227
  ]

; <label>:227                                     ; preds = %222
  br label %228

; <label>:228                                     ; preds = %227
  %229 = load i8, i8* %6, align 1, !tbaa !9
  %230 = add i8 %229, -1
  store i8 %230, i8* %6, align 1, !tbaa !9
  br label %97

; <label>:231                                     ; preds = %97
  store i32 0, i32* %5, align 4, !tbaa !1
  br label %232

; <label>:232                                     ; preds = %238, %231
  %233 = load i32, i32* %5, align 4, !tbaa !1
  %234 = icmp sge i32 %233, -1
  br i1 %234, label %235, label %241

; <label>:235                                     ; preds = %232
  %236 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  %237 = load i32, i32* %236, align 4, !tbaa !1
  store i32 %237, i32* %1
  store i32 1, i32* %7
  br label %242
                                                  ; No predecessors!
  %239 = load i32, i32* %5, align 4, !tbaa !1
  %240 = add nsw i32 %239, -1
  store i32 %240, i32* %5, align 4, !tbaa !1
  br label %232

; <label>:241                                     ; preds = %232
  store i32 0, i32* %7
  br label %242

; <label>:242                                     ; preds = %241, %235, %222
  %243 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast [5 x [2 x [5 x i32]]]* %l_166 to i8*
  call void @llvm.lifetime.end(i64 200, i8* %246) #1
  %247 = bitcast i32** %l_144 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %cleanup.dest.6 = load i32, i32* %7
  switch i32 %cleanup.dest.6, label %611 [
    i32 0, label %248
  ]

; <label>:248                                     ; preds = %242
  br label %249

; <label>:249                                     ; preds = %248
  %250 = load i32, i32* @g_68, align 4, !tbaa !1
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* @g_68, align 4, !tbaa !1
  br label %84

; <label>:252                                     ; preds = %84
  %253 = load volatile i32, i32* @g_169, align 4, !tbaa !1
  %254 = icmp eq i32 %253, 1
  %255 = zext i1 %254 to i32
  %256 = load i32*, i32** %2, align 8, !tbaa !5
  store i32 %255, i32* %256, align 4, !tbaa !1
  %257 = load i32*, i32** %2, align 8, !tbaa !5
  %258 = load i32, i32* %257, align 4, !tbaa !1
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %302

; <label>:260                                     ; preds = %252
  %261 = bitcast [4 x i32*]* %l_174 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %261) #1
  %262 = bitcast i32* %l_175 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %262) #1
  store i32 1, i32* %l_175, align 4, !tbaa !1
  %263 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %263) #1
  store i32 0, i32* %i7, align 4, !tbaa !1
  br label %264

; <label>:264                                     ; preds = %271, %260
  %265 = load i32, i32* %i7, align 4, !tbaa !1
  %266 = icmp slt i32 %265, 4
  br i1 %266, label %267, label %274

; <label>:267                                     ; preds = %264
  %268 = load i32, i32* %i7, align 4, !tbaa !1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [4 x i32*], [4 x i32*]* %l_174, i32 0, i64 %269
  store i32* @g_92, i32** %270, align 8, !tbaa !5
  br label %271

; <label>:271                                     ; preds = %267
  %272 = load i32, i32* %i7, align 4, !tbaa !1
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %i7, align 4, !tbaa !1
  br label %264

; <label>:274                                     ; preds = %264
  %275 = getelementptr inbounds [1 x i16], [1 x i16]* %l_173, i32 0, i64 0
  %276 = load i16, i16* %275, align 2, !tbaa !10
  %277 = sext i16 %276 to i32
  %278 = load i32, i32* %5, align 4, !tbaa !1
  %279 = icmp eq i32 %277, %278
  %280 = zext i1 %279 to i32
  %281 = trunc i32 %280 to i16
  %282 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %281)
  %283 = zext i16 %282 to i32
  %284 = load i32, i32* %l_175, align 4, !tbaa !1
  %285 = and i32 %284, %283
  store i32 %285, i32* %l_175, align 4, !tbaa !1
  %286 = load i32*, i32** %2, align 8, !tbaa !5
  %287 = load i32, i32* %286, align 4, !tbaa !1
  %288 = xor i32 %285, %287
  %289 = trunc i32 %288 to i16
  %290 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext 5, i16 zeroext %289)
  %291 = icmp ne i16 %290, 0
  br i1 %291, label %292, label %295

; <label>:292                                     ; preds = %274
  %293 = load i32*, i32** %2, align 8, !tbaa !5
  %294 = load i32, i32* %293, align 4, !tbaa !1
  store i32 %294, i32* %1
  store i32 1, i32* %7
  br label %298

; <label>:295                                     ; preds = %274
  %296 = load i32*, i32** %2, align 8, !tbaa !5
  %297 = load i32, i32* %296, align 4, !tbaa !1
  store i32 %297, i32* %1
  store i32 1, i32* %7
  br label %298

; <label>:298                                     ; preds = %295, %292
  %299 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast i32* %l_175 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  %301 = bitcast [4 x i32*]* %l_174 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %301) #1
  br label %611

; <label>:302                                     ; preds = %252
  %303 = bitcast i8** %l_192 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %303) #1
  store i8* @g_77, i8** %l_192, align 8, !tbaa !5
  %304 = bitcast i8*** %l_191 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %304) #1
  store i8** %l_192, i8*** %l_191, align 8, !tbaa !5
  %305 = bitcast i16** %l_195 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %305) #1
  %306 = getelementptr inbounds [1 x i16], [1 x i16]* %l_173, i32 0, i64 0
  store i16* %306, i16** %l_195, align 8, !tbaa !5
  %307 = bitcast i32**** %l_201 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %307) #1
  store i32*** null, i32**** %l_201, align 8, !tbaa !5
  %308 = bitcast i32**** %l_202 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %308) #1
  store i32*** null, i32**** %l_202, align 8, !tbaa !5
  %309 = bitcast i64** %l_205 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %309) #1
  store i64* null, i64** %l_205, align 8, !tbaa !5
  %310 = bitcast i64** %l_206 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %310) #1
  store i64* getelementptr inbounds ([10 x [7 x [3 x i64]]], [10 x [7 x [3 x i64]]]* @g_155, i32 0, i64 0, i64 2, i64 0), i64** %l_206, align 8, !tbaa !5
  %311 = bitcast i64** %l_207 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %311) #1
  store i64* @g_208, i64** %l_207, align 8, !tbaa !5
  %312 = bitcast i16** %l_209 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %312) #1
  store i16* @g_210, i16** %l_209, align 8, !tbaa !5
  store i8 0, i8* %4, align 1, !tbaa !9
  br label %313

; <label>:313                                     ; preds = %498, %302
  %314 = load i8, i8* %4, align 1, !tbaa !9
  %315 = sext i8 %314 to i32
  %316 = icmp eq i32 %315, -10
  br i1 %316, label %317, label %501

; <label>:317                                     ; preds = %313
  %318 = bitcast [1 x [9 x [8 x i32*]]]* %l_178 to i8*
  call void @llvm.lifetime.start(i64 576, i8* %318) #1
  %319 = getelementptr inbounds [1 x [9 x [8 x i32*]]], [1 x [9 x [8 x i32*]]]* %l_178, i64 0, i64 0
  %320 = getelementptr inbounds [9 x [8 x i32*]], [9 x [8 x i32*]]* %319, i64 0, i64 0
  %321 = getelementptr inbounds [8 x i32*], [8 x i32*]* %320, i64 0, i64 0
  store i32* @g_68, i32** %321, !tbaa !5
  %322 = getelementptr inbounds i32*, i32** %321, i64 1
  store i32* @g_68, i32** %322, !tbaa !5
  %323 = getelementptr inbounds i32*, i32** %322, i64 1
  %324 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %324, i32** %323, !tbaa !5
  %325 = getelementptr inbounds i32*, i32** %323, i64 1
  store i32* @g_68, i32** %325, !tbaa !5
  %326 = getelementptr inbounds i32*, i32** %325, i64 1
  %327 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %327, i32** %326, !tbaa !5
  %328 = getelementptr inbounds i32*, i32** %326, i64 1
  store i32* @g_68, i32** %328, !tbaa !5
  %329 = getelementptr inbounds i32*, i32** %328, i64 1
  store i32* @g_68, i32** %329, !tbaa !5
  %330 = getelementptr inbounds i32*, i32** %329, i64 1
  %331 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %331, i32** %330, !tbaa !5
  %332 = getelementptr inbounds [8 x i32*], [8 x i32*]* %320, i64 1
  %333 = getelementptr inbounds [8 x i32*], [8 x i32*]* %332, i64 0, i64 0
  store i32* @g_68, i32** %333, !tbaa !5
  %334 = getelementptr inbounds i32*, i32** %333, i64 1
  %335 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %335, i32** %334, !tbaa !5
  %336 = getelementptr inbounds i32*, i32** %334, i64 1
  %337 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %337, i32** %336, !tbaa !5
  %338 = getelementptr inbounds i32*, i32** %336, i64 1
  store i32* @g_68, i32** %338, !tbaa !5
  %339 = getelementptr inbounds i32*, i32** %338, i64 1
  %340 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %340, i32** %339, !tbaa !5
  %341 = getelementptr inbounds i32*, i32** %339, i64 1
  store i32* @g_68, i32** %341, !tbaa !5
  %342 = getelementptr inbounds i32*, i32** %341, i64 1
  %343 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %343, i32** %342, !tbaa !5
  %344 = getelementptr inbounds i32*, i32** %342, i64 1
  %345 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %345, i32** %344, !tbaa !5
  %346 = getelementptr inbounds [8 x i32*], [8 x i32*]* %332, i64 1
  %347 = getelementptr inbounds [8 x i32*], [8 x i32*]* %346, i64 0, i64 0
  %348 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %348, i32** %347, !tbaa !5
  %349 = getelementptr inbounds i32*, i32** %347, i64 1
  %350 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %350, i32** %349, !tbaa !5
  %351 = getelementptr inbounds i32*, i32** %349, i64 1
  store i32* @g_68, i32** %351, !tbaa !5
  %352 = getelementptr inbounds i32*, i32** %351, i64 1
  store i32* @g_68, i32** %352, !tbaa !5
  %353 = getelementptr inbounds i32*, i32** %352, i64 1
  %354 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %354, i32** %353, !tbaa !5
  %355 = getelementptr inbounds i32*, i32** %353, i64 1
  %356 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %356, i32** %355, !tbaa !5
  %357 = getelementptr inbounds i32*, i32** %355, i64 1
  %358 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %358, i32** %357, !tbaa !5
  %359 = getelementptr inbounds i32*, i32** %357, i64 1
  store i32* @g_68, i32** %359, !tbaa !5
  %360 = getelementptr inbounds [8 x i32*], [8 x i32*]* %346, i64 1
  %361 = getelementptr inbounds [8 x i32*], [8 x i32*]* %360, i64 0, i64 0
  store i32* @g_68, i32** %361, !tbaa !5
  %362 = getelementptr inbounds i32*, i32** %361, i64 1
  %363 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %363, i32** %362, !tbaa !5
  %364 = getelementptr inbounds i32*, i32** %362, i64 1
  store i32* @g_68, i32** %364, !tbaa !5
  %365 = getelementptr inbounds i32*, i32** %364, i64 1
  %366 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %366, i32** %365, !tbaa !5
  %367 = getelementptr inbounds i32*, i32** %365, i64 1
  %368 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %368, i32** %367, !tbaa !5
  %369 = getelementptr inbounds i32*, i32** %367, i64 1
  store i32* @g_68, i32** %369, !tbaa !5
  %370 = getelementptr inbounds i32*, i32** %369, i64 1
  %371 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %371, i32** %370, !tbaa !5
  %372 = getelementptr inbounds i32*, i32** %370, i64 1
  store i32* @g_68, i32** %372, !tbaa !5
  %373 = getelementptr inbounds [8 x i32*], [8 x i32*]* %360, i64 1
  %374 = getelementptr inbounds [8 x i32*], [8 x i32*]* %373, i64 0, i64 0
  store i32* @g_68, i32** %374, !tbaa !5
  %375 = getelementptr inbounds i32*, i32** %374, i64 1
  %376 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %376, i32** %375, !tbaa !5
  %377 = getelementptr inbounds i32*, i32** %375, i64 1
  store i32* @g_68, i32** %377, !tbaa !5
  %378 = getelementptr inbounds i32*, i32** %377, i64 1
  %379 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %379, i32** %378, !tbaa !5
  %380 = getelementptr inbounds i32*, i32** %378, i64 1
  store i32* @g_68, i32** %380, !tbaa !5
  %381 = getelementptr inbounds i32*, i32** %380, i64 1
  store i32* @g_68, i32** %381, !tbaa !5
  %382 = getelementptr inbounds i32*, i32** %381, i64 1
  %383 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %383, i32** %382, !tbaa !5
  %384 = getelementptr inbounds i32*, i32** %382, i64 1
  store i32* @g_68, i32** %384, !tbaa !5
  %385 = getelementptr inbounds [8 x i32*], [8 x i32*]* %373, i64 1
  %386 = getelementptr inbounds [8 x i32*], [8 x i32*]* %385, i64 0, i64 0
  store i32* @g_68, i32** %386, !tbaa !5
  %387 = getelementptr inbounds i32*, i32** %386, i64 1
  store i32* @g_68, i32** %387, !tbaa !5
  %388 = getelementptr inbounds i32*, i32** %387, i64 1
  %389 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %389, i32** %388, !tbaa !5
  %390 = getelementptr inbounds i32*, i32** %388, i64 1
  store i32* @g_68, i32** %390, !tbaa !5
  %391 = getelementptr inbounds i32*, i32** %390, i64 1
  %392 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %392, i32** %391, !tbaa !5
  %393 = getelementptr inbounds i32*, i32** %391, i64 1
  store i32* @g_68, i32** %393, !tbaa !5
  %394 = getelementptr inbounds i32*, i32** %393, i64 1
  store i32* @g_68, i32** %394, !tbaa !5
  %395 = getelementptr inbounds i32*, i32** %394, i64 1
  %396 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %396, i32** %395, !tbaa !5
  %397 = getelementptr inbounds [8 x i32*], [8 x i32*]* %385, i64 1
  %398 = getelementptr inbounds [8 x i32*], [8 x i32*]* %397, i64 0, i64 0
  store i32* @g_68, i32** %398, !tbaa !5
  %399 = getelementptr inbounds i32*, i32** %398, i64 1
  %400 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %400, i32** %399, !tbaa !5
  %401 = getelementptr inbounds i32*, i32** %399, i64 1
  %402 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %402, i32** %401, !tbaa !5
  %403 = getelementptr inbounds i32*, i32** %401, i64 1
  store i32* @g_68, i32** %403, !tbaa !5
  %404 = getelementptr inbounds i32*, i32** %403, i64 1
  %405 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %405, i32** %404, !tbaa !5
  %406 = getelementptr inbounds i32*, i32** %404, i64 1
  store i32* @g_68, i32** %406, !tbaa !5
  %407 = getelementptr inbounds i32*, i32** %406, i64 1
  %408 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %408, i32** %407, !tbaa !5
  %409 = getelementptr inbounds i32*, i32** %407, i64 1
  %410 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %410, i32** %409, !tbaa !5
  %411 = getelementptr inbounds [8 x i32*], [8 x i32*]* %397, i64 1
  %412 = getelementptr inbounds [8 x i32*], [8 x i32*]* %411, i64 0, i64 0
  %413 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %413, i32** %412, !tbaa !5
  %414 = getelementptr inbounds i32*, i32** %412, i64 1
  %415 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %415, i32** %414, !tbaa !5
  %416 = getelementptr inbounds i32*, i32** %414, i64 1
  store i32* @g_68, i32** %416, !tbaa !5
  %417 = getelementptr inbounds i32*, i32** %416, i64 1
  store i32* @g_68, i32** %417, !tbaa !5
  %418 = getelementptr inbounds i32*, i32** %417, i64 1
  %419 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %419, i32** %418, !tbaa !5
  %420 = getelementptr inbounds i32*, i32** %418, i64 1
  %421 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %421, i32** %420, !tbaa !5
  %422 = getelementptr inbounds i32*, i32** %420, i64 1
  %423 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %423, i32** %422, !tbaa !5
  %424 = getelementptr inbounds i32*, i32** %422, i64 1
  store i32* @g_68, i32** %424, !tbaa !5
  %425 = getelementptr inbounds [8 x i32*], [8 x i32*]* %411, i64 1
  %426 = getelementptr inbounds [8 x i32*], [8 x i32*]* %425, i64 0, i64 0
  store i32* @g_68, i32** %426, !tbaa !5
  %427 = getelementptr inbounds i32*, i32** %426, i64 1
  %428 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %428, i32** %427, !tbaa !5
  %429 = getelementptr inbounds i32*, i32** %427, i64 1
  store i32* @g_68, i32** %429, !tbaa !5
  %430 = getelementptr inbounds i32*, i32** %429, i64 1
  %431 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %431, i32** %430, !tbaa !5
  %432 = getelementptr inbounds i32*, i32** %430, i64 1
  %433 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %433, i32** %432, !tbaa !5
  %434 = getelementptr inbounds i32*, i32** %432, i64 1
  store i32* @g_68, i32** %434, !tbaa !5
  %435 = getelementptr inbounds i32*, i32** %434, i64 1
  %436 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %436, i32** %435, !tbaa !5
  %437 = getelementptr inbounds i32*, i32** %435, i64 1
  store i32* @g_68, i32** %437, !tbaa !5
  %438 = bitcast i32** %l_180 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %438) #1
  store i32* null, i32** %l_180, align 8, !tbaa !5
  %439 = bitcast i32*** %l_179 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %439) #1
  store i32** %l_180, i32*** %l_179, align 8, !tbaa !5
  %440 = bitcast i32*** %l_184 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %440) #1
  store i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @g_103, i32 0, i64 0), i32*** %l_184, align 8, !tbaa !5
  %441 = bitcast i8** %l_185 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %441) #1
  store i8* getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 0), i8** %l_185, align 8, !tbaa !5
  %442 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %442) #1
  %443 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %443) #1
  %444 = bitcast i32* %k10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %444) #1
  %445 = getelementptr inbounds [1 x [9 x [8 x i32*]]], [1 x [9 x [8 x i32*]]]* %l_178, i32 0, i64 0
  %446 = getelementptr inbounds [9 x [8 x i32*]], [9 x [8 x i32*]]* %445, i32 0, i64 7
  %447 = getelementptr inbounds [8 x i32*], [8 x i32*]* %446, i32 0, i64 2
  %448 = load i32*, i32** %447, align 8, !tbaa !5
  %449 = load i32**, i32*** %l_179, align 8, !tbaa !5
  store i32* %448, i32** %449, align 8, !tbaa !5
  %450 = load i8, i8* %4, align 1, !tbaa !9
  store i32* @g_104, i32** %l_183, align 8, !tbaa !5
  %451 = load i32, i32* %3, align 4, !tbaa !1
  %452 = load i32*, i32** %2, align 8, !tbaa !5
  %453 = load i32**, i32*** %l_184, align 8, !tbaa !5
  store i32* %452, i32** %453, align 8, !tbaa !5
  %454 = icmp ne i32* @g_104, %452
  %455 = zext i1 %454 to i32
  %456 = xor i32 %455, 0
  %457 = trunc i32 %456 to i8
  %458 = load i8*, i8** %l_185, align 8, !tbaa !5
  store i8 %457, i8* %458, align 1, !tbaa !9
  %459 = zext i8 %457 to i32
  %460 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %450, i32 %459)
  %461 = sext i8 %460 to i32
  %462 = load i32*, i32** %l_180, align 8, !tbaa !5
  store i32 %461, i32* %462, align 4, !tbaa !1
  store i32 0, i32* @g_68, align 4, !tbaa !1
  br label %463

; <label>:463                                     ; preds = %486, %317
  %464 = load i32, i32* @g_68, align 4, !tbaa !1
  %465 = icmp sle i32 %464, 0
  br i1 %465, label %466, label %489

; <label>:466                                     ; preds = %463
  store i32 0, i32* @g_104, align 4, !tbaa !1
  br label %467

; <label>:467                                     ; preds = %482, %466
  %468 = load i32, i32* @g_104, align 4, !tbaa !1
  %469 = icmp ule i32 %468, 1
  br i1 %469, label %470, label %485

; <label>:470                                     ; preds = %467
  %471 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %471) #1
  %472 = load i32, i32* @g_68, align 4, !tbaa !1
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [1 x i16], [1 x i16]* %l_173, i32 0, i64 %473
  %475 = load i16, i16* %474, align 2, !tbaa !10
  %476 = icmp ne i16 %475, 0
  br i1 %476, label %477, label %478

; <label>:477                                     ; preds = %470
  store i32 29, i32* %7
  br label %479

; <label>:478                                     ; preds = %470
  store i32 0, i32* %7
  br label %479

; <label>:479                                     ; preds = %478, %477
  %480 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %480) #1
  %cleanup.dest.12 = load i32, i32* %7
  switch i32 %cleanup.dest.12, label %686 [
    i32 0, label %481
    i32 29, label %485
  ]

; <label>:481                                     ; preds = %479
  br label %482

; <label>:482                                     ; preds = %481
  %483 = load i32, i32* @g_104, align 4, !tbaa !1
  %484 = add i32 %483, 1
  store i32 %484, i32* @g_104, align 4, !tbaa !1
  br label %467

; <label>:485                                     ; preds = %479, %467
  br label %486

; <label>:486                                     ; preds = %485
  %487 = load i32, i32* @g_68, align 4, !tbaa !1
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* @g_68, align 4, !tbaa !1
  br label %463

; <label>:489                                     ; preds = %463
  %490 = bitcast i32* %k10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %490) #1
  %491 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %491) #1
  %492 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %492) #1
  %493 = bitcast i8** %l_185 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %493) #1
  %494 = bitcast i32*** %l_184 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %494) #1
  %495 = bitcast i32*** %l_179 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %495) #1
  %496 = bitcast i32** %l_180 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %496) #1
  %497 = bitcast [1 x [9 x [8 x i32*]]]* %l_178 to i8*
  call void @llvm.lifetime.end(i64 576, i8* %497) #1
  br label %498

; <label>:498                                     ; preds = %489
  %499 = load i8, i8* %4, align 1, !tbaa !9
  %500 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %499, i8 signext 9)
  store i8 %500, i8* %4, align 1, !tbaa !9
  br label %313

; <label>:501                                     ; preds = %313
  %502 = load i8, i8* %6, align 1, !tbaa !9
  %503 = sext i8 %502 to i32
  %504 = load i32*, i32** %2, align 8, !tbaa !5
  %505 = call { i64, i8 } @func_86(i32 %503, i32* %504)
  %506 = getelementptr %struct.S0, %struct.S0* %8, i32 0, i32 0
  store { i64, i8 } %505, { i64, i8 }* %9, align 1
  %507 = bitcast { i64, i8 }* %9 to i8*
  %508 = bitcast [9 x i8]* %506 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %508, i8* %507, i64 9, i32 1, i1 false)
  %509 = load i8*, i8** %l_190, align 8, !tbaa !5
  %510 = load i8**, i8*** %l_191, align 8, !tbaa !5
  store i8* getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 0), i8** %510, align 8, !tbaa !5
  %511 = icmp ne i8* %509, getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 0)
  br i1 %511, label %512, label %545

; <label>:512                                     ; preds = %501
  %513 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  %514 = load i32, i32* %513, align 4, !tbaa !1
  %515 = trunc i32 %514 to i16
  %516 = load i16*, i16** %l_195, align 8, !tbaa !5
  store i16 %515, i16* %516, align 2, !tbaa !10
  %517 = sext i16 %515 to i64
  %518 = load i32**, i32*** @g_199, align 8, !tbaa !5
  store i32** %518, i32*** %l_203, align 8, !tbaa !5
  store i32** %518, i32*** %l_204, align 8, !tbaa !5
  %519 = icmp eq i32** %518, %2
  %520 = zext i1 %519 to i32
  %521 = load volatile i72, i72* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to i72*), align 1
  %522 = shl i72 %521, 4
  %523 = ashr i72 %522, 49
  %524 = trunc i72 %523 to i32
  %525 = icmp sgt i32 %520, %524
  %526 = zext i1 %525 to i32
  %527 = sext i32 %526 to i64
  %528 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @g_13, i32 0, i64 3), align 1, !tbaa !9
  %529 = sext i8 %528 to i64
  %530 = call i64 @safe_sub_func_uint64_t_u_u(i64 %527, i64 %529)
  %531 = or i64 %517, %530
  %532 = trunc i64 %531 to i8
  %533 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %532, i32 1)
  %534 = zext i8 %533 to i32
  %535 = load i8, i8* %4, align 1, !tbaa !9
  %536 = sext i8 %535 to i32
  %537 = icmp sle i32 %534, %536
  br i1 %537, label %543, label %538

; <label>:538                                     ; preds = %512
  %539 = load i32**, i32*** %l_204, align 8, !tbaa !5
  %540 = load i32*, i32** %539, align 8, !tbaa !5
  %541 = load i32, i32* %540, align 4, !tbaa !1
  %542 = icmp ne i32 %541, 0
  br label %543

; <label>:543                                     ; preds = %538, %512
  %544 = phi i1 [ true, %512 ], [ %542, %538 ]
  br label %545

; <label>:545                                     ; preds = %543, %501
  %546 = phi i1 [ false, %501 ], [ %544, %543 ]
  %547 = zext i1 %546 to i32
  %548 = load i32*, i32** %2, align 8, !tbaa !5
  %549 = bitcast i32* %548 to i8*
  %550 = icmp eq i8* null, %549
  %551 = zext i1 %550 to i32
  %552 = sext i32 %551 to i64
  %553 = icmp ult i64 %552, 254
  %554 = zext i1 %553 to i32
  %555 = sext i32 %554 to i64
  %556 = load i64*, i64** %l_206, align 8, !tbaa !5
  store i64 %555, i64* %556, align 8, !tbaa !7
  %557 = load i32, i32* %3, align 4, !tbaa !1
  %558 = zext i32 %557 to i64
  %559 = call i64 @safe_mod_func_int64_t_s_s(i64 %555, i64 %558)
  %560 = load i64*, i64** %l_207, align 8, !tbaa !5
  store i64 %559, i64* %560, align 8, !tbaa !7
  %561 = load i32, i32* %5, align 4, !tbaa !1
  %562 = sext i32 %561 to i64
  %563 = or i64 %559, %562
  %564 = load i16*, i16** %l_209, align 8, !tbaa !5
  %565 = load i16, i16* %564, align 2, !tbaa !10
  %566 = zext i16 %565 to i64
  %567 = or i64 %566, 1
  %568 = trunc i64 %567 to i16
  store i16 %568, i16* %564, align 2, !tbaa !10
  %569 = load i32, i32* @g_104, align 4, !tbaa !1
  %570 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %568, i32 %569)
  %571 = zext i16 %570 to i32
  %572 = load i32**, i32*** @g_199, align 8, !tbaa !5
  %573 = load i32*, i32** %572, align 8, !tbaa !5
  store i32 %571, i32* %573, align 4, !tbaa !1
  %574 = load i32**, i32*** @g_199, align 8, !tbaa !5
  %575 = load i32*, i32** %574, align 8, !tbaa !5
  %576 = load i32**, i32*** %l_204, align 8, !tbaa !5
  store i32* %575, i32** %576, align 8, !tbaa !5
  store i32 5, i32* @g_68, align 4, !tbaa !1
  br label %577

; <label>:577                                     ; preds = %592, %545
  %578 = load i32, i32* @g_68, align 4, !tbaa !1
  %579 = icmp ne i32 %578, -2
  br i1 %579, label %580, label %595

; <label>:580                                     ; preds = %577
  %581 = bitcast i32** %l_215 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %581) #1
  %582 = getelementptr inbounds [2 x i32], [2 x i32]* %l_131, i32 0, i64 1
  store i32* %582, i32** %l_215, align 8, !tbaa !5
  %583 = load volatile i32, i32* getelementptr inbounds ([3 x [6 x [9 x i32]]], [3 x [6 x [9 x i32]]]* @g_123, i32 0, i64 2, i64 4, i64 7), align 4, !tbaa !1
  %584 = trunc i32 %583 to i16
  %585 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %584, i32 4)
  %586 = sext i16 %585 to i32
  %587 = load i32*, i32** %l_215, align 8, !tbaa !5
  store i32 %586, i32* %587, align 4, !tbaa !1
  %588 = load i32**, i32*** @g_121, align 8, !tbaa !5
  %589 = load volatile i32*, i32** %588, align 8, !tbaa !5
  %590 = load volatile i32, i32* %589, align 4, !tbaa !1
  store i32 %590, i32* %1
  store i32 1, i32* %7
  %591 = bitcast i32** %l_215 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %591) #1
  br label %596
                                                  ; No predecessors!
  %593 = load i32, i32* @g_68, align 4, !tbaa !1
  %594 = add nsw i32 %593, -1
  store i32 %594, i32* @g_68, align 4, !tbaa !1
  br label %577

; <label>:595                                     ; preds = %577
  store i32 0, i32* %7
  br label %596

; <label>:596                                     ; preds = %595, %580
  %597 = bitcast i16** %l_209 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %597) #1
  %598 = bitcast i64** %l_207 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %598) #1
  %599 = bitcast i64** %l_206 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %599) #1
  %600 = bitcast i64** %l_205 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %600) #1
  %601 = bitcast i32**** %l_202 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %601) #1
  %602 = bitcast i32**** %l_201 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %602) #1
  %603 = bitcast i16** %l_195 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %603) #1
  %604 = bitcast i8*** %l_191 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %604) #1
  %605 = bitcast i8** %l_192 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %605) #1
  %cleanup.dest.13 = load i32, i32* %7
  switch i32 %cleanup.dest.13, label %611 [
    i32 0, label %606
  ]

; <label>:606                                     ; preds = %596
  br label %607

; <label>:607                                     ; preds = %606
  %608 = load i32**, i32*** %l_203, align 8, !tbaa !5
  %609 = load i32*, i32** %608, align 8, !tbaa !5
  %610 = load i32, i32* %609, align 4, !tbaa !1
  store i32 %610, i32* %1
  store i32 1, i32* %7
  br label %611

; <label>:611                                     ; preds = %607, %596, %298, %242
  %612 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %612) #1
  %613 = bitcast i8** %l_190 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %613) #1
  %614 = bitcast [1 x i16]* %l_173 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %614) #1
  br label %676

; <label>:615                                     ; preds = %44, %29
  %616 = bitcast i32* %l_218 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %616) #1
  store i32 -1609176585, i32* %l_218, align 4, !tbaa !1
  store i8 0, i8* @g_77, align 1, !tbaa !9
  br label %617

; <label>:617                                     ; preds = %623, %615
  %618 = load i8, i8* @g_77, align 1, !tbaa !9
  %619 = zext i8 %618 to i32
  %620 = icmp sgt i32 %619, 29
  br i1 %620, label %621, label %626

; <label>:621                                     ; preds = %617
  %622 = load i32, i32* %l_218, align 4, !tbaa !1
  store i32 %622, i32* %1
  store i32 1, i32* %7
  br label %641
                                                  ; No predecessors!
  %624 = load i8, i8* @g_77, align 1, !tbaa !9
  %625 = add i8 %624, 1
  store i8 %625, i8* @g_77, align 1, !tbaa !9
  br label %617

; <label>:626                                     ; preds = %617
  %627 = load i32, i32* %5, align 4, !tbaa !1
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %630

; <label>:629                                     ; preds = %626
  store i32 38, i32* %7
  br label %641

; <label>:630                                     ; preds = %626
  store i32 -23, i32* %3, align 4, !tbaa !1
  br label %631

; <label>:631                                     ; preds = %637, %630
  %632 = load i32, i32* %3, align 4, !tbaa !1
  %633 = icmp uge i32 %632, 38
  br i1 %633, label %634, label %640

; <label>:634                                     ; preds = %631
  %635 = load i32*, i32** %2, align 8, !tbaa !5
  %636 = load i32**, i32*** %l_203, align 8, !tbaa !5
  store i32* %635, i32** %636, align 8, !tbaa !5
  br label %637

; <label>:637                                     ; preds = %634
  %638 = load i32, i32* %3, align 4, !tbaa !1
  %639 = add i32 %638, 1
  store i32 %639, i32* %3, align 4, !tbaa !1
  br label %631

; <label>:640                                     ; preds = %631
  store i32 0, i32* %7
  br label %641

; <label>:641                                     ; preds = %629, %640, %621
  %642 = bitcast i32* %l_218 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %642) #1
  %cleanup.dest.14 = load i32, i32* %7
  switch i32 %cleanup.dest.14, label %676 [
    i32 0, label %643
    i32 38, label %645
  ]

; <label>:643                                     ; preds = %641
  br label %644

; <label>:644                                     ; preds = %643
  br label %645

; <label>:645                                     ; preds = %644, %641
  %646 = load i32*, i32** %2, align 8, !tbaa !5
  %647 = load i32, i32* %646, align 4, !tbaa !1
  %648 = load i32**, i32*** %l_204, align 8, !tbaa !5
  %649 = load i32*, i32** %648, align 8, !tbaa !5
  store i32 %647, i32* %649, align 4, !tbaa !1
  %650 = load i32*, i32** %l_221, align 8, !tbaa !5
  store i32 %647, i32* %650, align 4, !tbaa !1
  %651 = load i32, i32* %l_223, align 4, !tbaa !1
  %652 = or i32 %651, %647
  store i32 %652, i32* %l_223, align 4, !tbaa !1
  store i8 0, i8* %4, align 1, !tbaa !9
  br label %653

; <label>:653                                     ; preds = %669, %645
  %654 = load i8, i8* %4, align 1, !tbaa !9
  %655 = sext i8 %654 to i32
  %656 = icmp ne i32 %655, 4
  br i1 %656, label %657, label %672

; <label>:657                                     ; preds = %653
  store i32 0, i32* %l_223, align 4, !tbaa !1
  br label %658

; <label>:658                                     ; preds = %665, %657
  %659 = load i32, i32* %l_223, align 4, !tbaa !1
  %660 = icmp ne i32 %659, 7
  br i1 %660, label %661, label %668

; <label>:661                                     ; preds = %658
  %662 = load i32**, i32*** %l_203, align 8, !tbaa !5
  %663 = load i32*, i32** %662, align 8, !tbaa !5
  %664 = load i32**, i32*** %l_204, align 8, !tbaa !5
  store i32* %663, i32** %664, align 8, !tbaa !5
  br label %665

; <label>:665                                     ; preds = %661
  %666 = load i32, i32* %l_223, align 4, !tbaa !1
  %667 = add nsw i32 %666, 1
  store i32 %667, i32* %l_223, align 4, !tbaa !1
  br label %658

; <label>:668                                     ; preds = %658
  br label %669

; <label>:669                                     ; preds = %668
  %670 = load i8, i8* %4, align 1, !tbaa !9
  %671 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %670, i8 signext 4)
  store i8 %671, i8* %4, align 1, !tbaa !9
  br label %653

; <label>:672                                     ; preds = %653
  %673 = load i32**, i32*** %l_203, align 8, !tbaa !5
  %674 = load i32*, i32** %673, align 8, !tbaa !5
  %675 = load i32, i32* %674, align 4, !tbaa !1
  store i32 %675, i32* %1
  store i32 1, i32* %7
  br label %676

; <label>:676                                     ; preds = %672, %641, %611
  %677 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %677) #1
  %678 = bitcast i32* %l_223 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %678) #1
  %679 = bitcast i32** %l_221 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %679) #1
  %680 = bitcast i32*** %l_204 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %680) #1
  %681 = bitcast i32*** %l_203 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %681) #1
  %682 = bitcast i32** %l_183 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %682) #1
  %683 = bitcast i8** %l_132 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %683) #1
  %684 = bitcast [2 x i32]* %l_131 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %684) #1
  %685 = load i32, i32* %1
  ret i32 %685

; <label>:686                                     ; preds = %479
  unreachable
}

; Function Attrs: nounwind uwtable
define internal { i64, i8 } @func_86(i32 %p_87, i32* %p_88) #0 {
  %1 = alloca %struct.S0, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %l_112 = alloca i64, align 8
  %l_113 = alloca [4 x i8*], align 16
  %l_114 = alloca i32, align 4
  %i = alloca i32, align 4
  %4 = alloca { i64, i8 }, align 1
  store i32 %p_87, i32* %2, align 4, !tbaa !1
  store i32* %p_88, i32** %3, align 8, !tbaa !5
  %5 = bitcast i64* %l_112 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64 -392952194962241122, i64* %l_112, align 8, !tbaa !7
  %6 = bitcast [4 x i8*]* %l_113 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #1
  %7 = bitcast i32* %l_114 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1754189023, i32* %l_114, align 4, !tbaa !1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %9

; <label>:9                                       ; preds = %16, %0
  %10 = load i32, i32* %i, align 4, !tbaa !1
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %9
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8*], [4 x i8*]* %l_113, i32 0, i64 %14
  store i8* getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 1), i8** %15, align 8, !tbaa !5
  br label %16

; <label>:16                                      ; preds = %12
  %17 = load i32, i32* %i, align 4, !tbaa !1
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %i, align 4, !tbaa !1
  br label %9

; <label>:19                                      ; preds = %9
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %l_113, i32 0, i64 3
  %21 = load i8*, i8** %20, align 8, !tbaa !5
  %22 = call i8* @func_100(i32* @g_92, i8* %21)
  %23 = call i8* @func_100(i32* @g_92, i8* %22)
  %24 = icmp eq i8* getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 0), %23
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 37914, %26
  br i1 %27, label %28, label %32

; <label>:28                                      ; preds = %19
  %29 = load i32*, i32** %3, align 8, !tbaa !5
  %30 = load i32, i32* %29, align 4, !tbaa !1
  %31 = icmp ne i32 %30, 0
  br label %32

; <label>:32                                      ; preds = %28, %19
  %33 = phi i1 [ false, %19 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %l_114, align 4, !tbaa !1
  %35 = load volatile i32*, i32** @g_115, align 8, !tbaa !5
  store i32 %34, i32* %35, align 4, !tbaa !1
  %36 = load i32, i32* %2, align 4, !tbaa !1
  %37 = load i32, i32* %2, align 4, !tbaa !1
  %38 = icmp ult i32 1, %37
  %39 = zext i1 %38 to i32
  %40 = trunc i32 %39 to i16
  %41 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %40, i32 2)
  %42 = zext i16 %41 to i32
  %43 = icmp uge i32 %36, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %2, align 4, !tbaa !1
  %46 = zext i32 %45 to i64
  %47 = icmp slt i64 %46, 161
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %2, align 4, !tbaa !1
  %50 = load i8, i8* @g_77, align 1, !tbaa !9
  %51 = zext i8 %50 to i16
  %52 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %51, i32 8)
  %53 = zext i16 %52 to i32
  %54 = load volatile i32*, i32** @g_115, align 8, !tbaa !5
  %55 = load i32, i32* %54, align 4, !tbaa !1
  %56 = or i32 %53, %55
  %57 = and i32 %49, %56
  %58 = icmp ult i32 %48, %57
  %59 = zext i1 %58 to i32
  %60 = load i8, i8* @g_77, align 1, !tbaa !9
  %61 = zext i8 %60 to i32
  %62 = and i32 %44, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

; <label>:64                                      ; preds = %32
  %65 = load i16, i16* getelementptr inbounds ([1 x [10 x i16]], [1 x [10 x i16]]* @g_99, i32 0, i64 0, i64 8), align 2, !tbaa !10
  %66 = sext i16 %65 to i32
  %67 = icmp ne i32 %66, 0
  br label %68

; <label>:68                                      ; preds = %64, %32
  %69 = phi i1 [ false, %32 ], [ %67, %64 ]
  %70 = zext i1 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = icmp sge i64 %71, 3480488257
  %73 = zext i1 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = xor i64 %74, -392952194962241122
  %76 = or i64 0, %75
  %77 = load i32**, i32*** @g_121, align 8, !tbaa !5
  %78 = icmp eq i32** @g_67, %77
  %79 = zext i1 %78 to i32
  %80 = load volatile i32*, i32** @g_124, align 8, !tbaa !5
  store i32 %79, i32* %80, align 4, !tbaa !1
  %81 = bitcast %struct.S0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_125 to %struct.S0*), i32 0, i32 0, i32 0), i64 9, i32 1, i1 false), !tbaa.struct !12
  %82 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %l_114 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast [4 x i8*]* %l_113 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %84) #1
  %85 = bitcast i64* %l_112 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = getelementptr %struct.S0, %struct.S0* %1, i32 0, i32 0
  %87 = bitcast { i64, i8 }* %4 to i8*
  %88 = bitcast [9 x i8]* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 9, i32 1, i1 false)
  %89 = load { i64, i8 }, { i64, i8 }* %4, align 1
  ret { i64, i8 } %89
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
define internal i8* @func_100(i32* %p_101, i8* %p_102) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %l_111 = alloca i32*, align 8
  %l_110 = alloca [1 x i32**], align 8
  %i = alloca i32, align 4
  store i32* %p_101, i32** %1, align 8, !tbaa !5
  store i8* %p_102, i8** %2, align 8, !tbaa !5
  %3 = bitcast i32** %l_111 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* @g_68, i32** %l_111, align 8, !tbaa !5
  %4 = bitcast [1 x i32**]* %l_110 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %6

; <label>:6                                       ; preds = %13, %0
  %7 = load i32, i32* %i, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %16

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %i, align 4, !tbaa !1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [1 x i32**], [1 x i32**]* %l_110, i32 0, i64 %11
  store i32** %l_111, i32*** %12, align 8, !tbaa !5
  br label %13

; <label>:13                                      ; preds = %9
  %14 = load i32, i32* %i, align 4, !tbaa !1
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %i, align 4, !tbaa !1
  br label %6

; <label>:16                                      ; preds = %6
  store volatile i32* @g_68, i32** @g_67, align 8, !tbaa !5
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast [1 x i32**]* %l_110 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast i32** %l_111 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret i8* getelementptr inbounds ([1 x [4 x i8]], [1 x [4 x i8]]* @g_51, i32 0, i64 0, i64 0)
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
!12 = !{i64 0, i64 4, !1, i64 2, i64 4, !1, i64 5, i64 4, !1}
