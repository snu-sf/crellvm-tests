; ModuleID = '00976.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global i8 0, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_8 = internal global i32 4, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_41 = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"g_41\00", align 1
@g_66 = internal global [8 x [5 x [6 x i8]]] [[5 x [6 x i8]] [[6 x i8] c"\EE\00%\09\DA\01", [6 x i8] c"\00\F6\D4\FD\FF\A2", [6 x i8] c"\00\D1\F6\FD\05\01", [6 x i8] c"\D4\01\FD\EE\A8\DA", [6 x i8] c"\01\FD\CF\CF\FD\01"], [5 x [6 x i8]] [[6 x i8] c"\FD\07\C7\F6\EFx", [6 x i8] c"\A8\CF\01\05%\F8", [6 x i8] c"\A8\01\05\F6\A8\08", [6 x i8] c"\D1\FA\FD\FF\F8\FF", [6 x i8] c"\F8x\A8\05\D1\8F"], [5 x [6 x i8]] [[6 x i8] c"\00\01\05\D1\F9q", [6 x i8] c"\FD\F6\FF\FD@\BE", [6 x i8] c"\8Fq\DAq\8F\00", [6 x i8] c"\05@\07\DA\00\01", [6 x i8] c"\A8\EF\09@\F6\01"], [5 x [6 x i8]] [[6 x i8] c"\F9\B1\07\FD\00\00", [6 x i8] c"\F6\08\DA\00\FC\BE", [6 x i8] c"\BE[\FF\01\A8q", [6 x i8] c"\00\07\05\F7\CF\8F", [6 x i8] c"\01\F9\A8\FF\FF\FF"], [5 x [6 x i8]] [[6 x i8] c"[\FD\FD[\F7\08", [6 x i8] c"q\FC\EF\02\A2\01", [6 x i8] c"\08\BE%\A8\A2\DA", [6 x i8] c"\FF\FC\B1\FF\F7\F8", [6 x i8] c"\FA\FD\FF\F8\FFC"], [5 x [6 x i8]] [[6 x i8] c"\01\F9\FD\B1\CF%", [6 x i8] c"\EE\07\A2\01\A8\F9", [6 x i8] c"x[\00\EE\FC\EE", [6 x i8] c"\00\08\00\05\00\07", [6 x i8] c"\F7\B1\D4\12\F6\01"], [5 x [6 x i8]] [[6 x i8] c"\DA\EF\08\12\00\05", [6 x i8] c"\F7@\00\05\8F\A2", [6 x i8] c"\00qC\EE@\02", [6 x i8] c"x\F6\BE\01\F9\FF", [6 x i8] c"\EE\01\01\B1\D1\A8"], [5 x [6 x i8]] [[6 x i8] c"\01x\D1\F8\F8\D1", [6 x i8] c"\FA\FA\12\FF\A8\CF", [6 x i8] c"\FF\F8\F6\A8\00\12", [6 x i8] c"\08\FF\F6\02\FA\CF", [6 x i8] c"q\02\12\07\D1\FF"]], align 16
@.str.4 = private unnamed_addr constant [14 x i8] c"g_66[i][j][k]\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_71 = internal global i64 2949069758087146352, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"g_71\00", align 1
@g_74 = internal global i32 2041276211, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_74\00", align 1
@g_76 = internal global [9 x [1 x [8 x i16]]] [[1 x [8 x i16]] [[8 x i16] [i16 -10863, i16 -10863, i16 22167, i16 -1, i16 -5385, i16 -1, i16 22167, i16 -10863]], [1 x [8 x i16]] [[8 x i16] [i16 -10863, i16 2, i16 0, i16 22167, i16 22167, i16 0, i16 2, i16 -10863]], [1 x [8 x i16]] [[8 x i16] [i16 2, i16 -18124, i16 -10863, i16 -1, i16 -10863, i16 -18124, i16 2, i16 2]], [1 x [8 x i16]] [[8 x i16] [i16 -18124, i16 -1, i16 0, i16 0, i16 -1, i16 -18124, i16 22167, i16 -18124]], [1 x [8 x i16]] [[8 x i16] [i16 -1, i16 -18124, i16 22167, i16 -18124, i16 -1, i16 0, i16 0, i16 -1]], [1 x [8 x i16]] [[8 x i16] [i16 -18124, i16 2, i16 2, i16 -18124, i16 -10863, i16 -1, i16 -10863, i16 -18124]], [1 x [8 x i16]] [[8 x i16] [i16 2, i16 -10863, i16 2, i16 0, i16 22167, i16 22167, i16 0, i16 2]], [1 x [8 x i16]] [[8 x i16] [i16 -10863, i16 -10863, i16 22167, i16 -1, i16 -5385, i16 -1, i16 22167, i16 -10863]], [1 x [8 x i16]] [[8 x i16] [i16 -10863, i16 2, i16 0, i16 22167, i16 22167, i16 0, i16 2, i16 -10863]]], align 16
@.str.8 = private unnamed_addr constant [14 x i8] c"g_76[i][j][k]\00", align 1
@g_81 = internal global i32 -1, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"g_81\00", align 1
@g_83 = internal global [7 x i64] [i64 5447377351601703898, i64 1269501956994390775, i64 5447377351601703898, i64 5447377351601703898, i64 1269501956994390775, i64 5447377351601703898, i64 5447377351601703898], align 16
@.str.10 = private unnamed_addr constant [8 x i8] c"g_83[i]\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_88 = internal constant [10 x i32] [i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1], align 16
@.str.12 = private unnamed_addr constant [8 x i8] c"g_88[i]\00", align 1
@g_94 = internal global i32 -1799421538, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"g_94\00", align 1
@g_117 = internal global i8 0, align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"g_117\00", align 1
@g_140 = internal global [5 x i8] c"\FF\FF\FF\FF\FF", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"g_140[i]\00", align 1
@g_149 = internal global [9 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@.str.16 = private unnamed_addr constant [9 x i8] c"g_149[i]\00", align 1
@g_168 = internal global i8 -102, align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"g_168\00", align 1
@g_170 = internal global [5 x i32] [i32 -8, i32 -8, i32 -8, i32 -8, i32 -8], align 16
@.str.18 = private unnamed_addr constant [9 x i8] c"g_170[i]\00", align 1
@g_172 = internal global i16 -28424, align 2
@.str.19 = private unnamed_addr constant [6 x i8] c"g_172\00", align 1
@g_178 = internal global i8 36, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_178\00", align 1
@g_183 = internal global i64 6, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"g_183\00", align 1
@g_184 = internal global i16 1, align 2
@.str.22 = private unnamed_addr constant [6 x i8] c"g_184\00", align 1
@g_185 = internal global i16 -31124, align 2
@.str.23 = private unnamed_addr constant [6 x i8] c"g_185\00", align 1
@g_189 = internal global i32 511964836, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_189\00", align 1
@g_231 = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_231\00", align 1
@g_232 = internal global [7 x i32] [i32 914034123, i32 0, i32 914034123, i32 914034123, i32 0, i32 914034123, i32 914034123], align 16
@.str.26 = private unnamed_addr constant [9 x i8] c"g_232[i]\00", align 1
@g_235 = internal global [6 x [5 x i32]] [[5 x i32] [i32 -252288547, i32 1, i32 1, i32 1, i32 1], [5 x i32] [i32 -2032082950, i32 1, i32 -4, i32 2, i32 2], [5 x i32] [i32 -934106413, i32 -75953904, i32 -934106413, i32 1, i32 1], [5 x i32] [i32 -1, i32 1, i32 2, i32 1, i32 -1], [5 x i32] [i32 -934106413, i32 -252288547, i32 -75953904, i32 1, i32 -75953904], [5 x i32] [i32 -2032082950, i32 -2032082950, i32 2, i32 -1, i32 -1211253093]], align 16
@.str.27 = private unnamed_addr constant [12 x i8] c"g_235[i][j]\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_302 = internal global i64 7, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"g_302\00", align 1
@g_318 = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_318\00", align 1
@g_323 = internal global i32 -478364979, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_323\00", align 1
@g_505 = internal global i8 -122, align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"g_505\00", align 1
@g_686 = internal global i64 5494720092983206849, align 8
@.str.33 = private unnamed_addr constant [6 x i8] c"g_686\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"g_911\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"g_913\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"g_915\00", align 1
@g_951 = internal global [3 x [5 x i64]] [[5 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10], [5 x i64] [i64 1, i64 1, i64 1, i64 1, i64 1], [5 x i64] [i64 -10, i64 -10, i64 -10, i64 -10, i64 -10]], align 16
@.str.37 = private unnamed_addr constant [12 x i8] c"g_951[i][j]\00", align 1
@g_1169 = internal global [4 x i16] [i16 8, i16 8, i16 8, i16 8], align 2
@.str.38 = private unnamed_addr constant [10 x i8] c"g_1169[i]\00", align 1
@g_1250 = internal global i64 -7, align 8
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1250\00", align 1
@g_1606 = internal global i8 -1, align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1606\00", align 1
@g_1607 = internal global i64 -5818091781793663186, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1607\00", align 1
@g_1777 = internal global i8 -35, align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1777\00", align 1
@g_1936 = internal global i8 0, align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1936\00", align 1
@g_1953 = internal global i16 1, align 2
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1953\00", align 1
@g_1973 = internal global i32 1, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1973\00", align 1
@g_2191 = internal global i32 -6, align 4
@.str.46 = private unnamed_addr constant [7 x i8] c"g_2191\00", align 1
@g_2226 = internal global i16 -1, align 2
@.str.47 = private unnamed_addr constant [7 x i8] c"g_2226\00", align 1
@g_2230 = internal global i16 -9452, align 2
@.str.48 = private unnamed_addr constant [7 x i8] c"g_2230\00", align 1
@g_2404 = internal global [6 x [10 x [1 x i16]]] [[10 x [1 x i16]] [[1 x i16] [i16 -6], [1 x i16] [i16 13512], [1 x i16] [i16 13512], [1 x i16] [i16 -6], [1 x i16] [i16 -10], [1 x i16] [i16 5], [1 x i16] [i16 -22057], [1 x i16] [i16 1], [1 x i16] [i16 -1], [1 x i16] [i16 1]], [10 x [1 x i16]] [[1 x i16] [i16 -22057], [1 x i16] [i16 5], [1 x i16] [i16 -10], [1 x i16] [i16 -6], [1 x i16] [i16 13512], [1 x i16] [i16 13512], [1 x i16] [i16 -6], [1 x i16] [i16 -10], [1 x i16] [i16 5], [1 x i16] [i16 -22057]], [10 x [1 x i16]] [[1 x i16] [i16 1], [1 x i16] [i16 -1], [1 x i16] [i16 1], [1 x i16] [i16 -22057], [1 x i16] [i16 5], [1 x i16] [i16 -10], [1 x i16] [i16 -6], [1 x i16] [i16 13512], [1 x i16] [i16 13512], [1 x i16] [i16 -6]], [10 x [1 x i16]] [[1 x i16] [i16 -10], [1 x i16] [i16 5], [1 x i16] [i16 -22057], [1 x i16] [i16 1], [1 x i16] [i16 -1], [1 x i16] [i16 1], [1 x i16] [i16 -22057], [1 x i16] [i16 5], [1 x i16] [i16 -10], [1 x i16] [i16 -6]], [10 x [1 x i16]] [[1 x i16] [i16 13512], [1 x i16] [i16 13512], [1 x i16] [i16 -6], [1 x i16] [i16 -10], [1 x i16] [i16 5], [1 x i16] [i16 -22057], [1 x i16] [i16 1], [1 x i16] [i16 -1], [1 x i16] [i16 1], [1 x i16] [i16 -22057]], [10 x [1 x i16]] [[1 x i16] [i16 5], [1 x i16] [i16 -10], [1 x i16] [i16 -6], [1 x i16] [i16 13512], [1 x i16] [i16 13512], [1 x i16] [i16 -6], [1 x i16] [i16 -10], [1 x i16] [i16 5], [1 x i16] [i16 -22057], [1 x i16] [i16 1]]], align 16
@.str.49 = private unnamed_addr constant [16 x i8] c"g_2404[i][j][k]\00", align 1
@g_2428 = internal global i16 -11556, align 2
@.str.50 = private unnamed_addr constant [7 x i8] c"g_2428\00", align 1
@g_2485 = internal global i8 -1, align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"g_2485\00", align 1
@g_2508 = internal global i32 -1, align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"g_2508\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2509 = private unnamed_addr constant [2 x [6 x [8 x i16]]] [[6 x [8 x i16]] [[8 x i16] zeroinitializer, [8 x i16] [i16 0, i16 0, i16 1, i16 0, i16 0, i16 1, i16 0, i16 0], [8 x i16] zeroinitializer, [8 x i16] zeroinitializer, [8 x i16] [i16 0, i16 0, i16 1, i16 0, i16 0, i16 1, i16 0, i16 0], [8 x i16] zeroinitializer], [6 x [8 x i16]] [[8 x i16] zeroinitializer, [8 x i16] [i16 0, i16 0, i16 1, i16 0, i16 0, i16 1, i16 0, i16 0], [8 x i16] zeroinitializer, [8 x i16] zeroinitializer, [8 x i16] [i16 0, i16 0, i16 1, i16 0, i16 0, i16 1, i16 0, i16 0], [8 x i16] zeroinitializer]], align 16
@g_1715 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32*]* @g_1716 to i8*), i64 16) to i32**), align 8
@g_2354 = internal constant i16*** @g_2355, align 8
@g_1166 = internal global i16* @g_172, align 8
@g_330 = internal global i32* @g_81, align 8
@g_73 = internal global i32* @g_74, align 8
@g_2453 = internal global i8*** @g_2454, align 8
@g_342 = internal global i64*** getelementptr inbounds ([8 x i64**], [8 x i64**]* @g_343, i32 0, i32 0), align 8
@g_961 = internal global i64* @g_183, align 8
@g_1852 = internal global i8** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i8*]* @g_1853 to i8*), i64 8) to i8**), align 8
@g_912 = internal global i16* @g_913, align 8
@g_1898 = internal global i32** @g_1899, align 8
@g_1896 = internal global i32**** getelementptr inbounds ([1 x i32***], [1 x i32***]* @g_1897, i32 0, i32 0), align 8
@func_1.l_2482 = private unnamed_addr constant [7 x [5 x i8*]] [[5 x i8*] [i8* @g_168, i8* null, i8* null, i8* @g_168, i8* null], [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 1), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 1), i8* @g_168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 1), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 1)], [5 x i8*] [i8* null, i8* @g_168, i8* null, i8* null, i8* @g_168], [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 1), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 1), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 1), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 1), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 1)], [5 x i8*] [i8* @g_168, i8* @g_168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 2), i8* @g_168, i8* @g_168], [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 1), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 1), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 1), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 1), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_140, i32 0, i64 1)], [5 x i8*] [i8* @g_168, i8* null, i8* null, i8* @g_168, i8* null]], align 16
@func_1.l_2484 = private unnamed_addr constant [3 x [6 x [7 x i32]]] [[6 x [7 x i32]] [[7 x i32] [i32 1854874648, i32 4, i32 1854874648, i32 1, i32 6, i32 1454877196, i32 1586746719], [7 x i32] [i32 4, i32 -1, i32 1854874648, i32 1618659494, i32 0, i32 1618659494, i32 1854874648], [7 x i32] [i32 6, i32 6, i32 1618659494, i32 1043988576, i32 2040614581, i32 1454877196, i32 4], [7 x i32] [i32 1043988576, i32 6, i32 1, i32 1454877196, i32 1454877196, i32 1, i32 6], [7 x i32] [i32 1, i32 -1, i32 6, i32 1854874648, i32 2040614581, i32 1, i32 1043988576], [7 x i32] [i32 1, i32 4, i32 0, i32 6, i32 0, i32 4, i32 1]], [6 x [7 x i32]] [[7 x i32] [i32 1043988576, i32 1, i32 2040614581, i32 1854874648, i32 6, i32 -1, i32 1], [7 x i32] [i32 6, i32 1, i32 1454877196, i32 1454877196, i32 1, i32 6, i32 1043988576], [7 x i32] [i32 4, i32 1454877196, i32 2040614581, i32 1043988576, i32 4, i32 1618659494, i32 1618659494], [7 x i32] [i32 1454877196, i32 4, i32 1586746719, i32 4, i32 1454877196, i32 2040614581, i32 1043988576], [7 x i32] [i32 1854874648, i32 1, i32 1618659494, i32 -1, i32 1454877196, i32 1043988576, i32 1454877196], [7 x i32] [i32 6, i32 1188028257, i32 1188028257, i32 6, i32 4, i32 -1, i32 1854874648]], [6 x [7 x i32]] [[7 x i32] [i32 1854874648, i32 -1, i32 4, i32 6, i32 1188028257, i32 1188028257, i32 6], [7 x i32] [i32 1454877196, i32 1043988576, i32 1454877196, i32 -1, i32 1618659494, i32 1, i32 1854874648], [7 x i32] [i32 1043988576, i32 2040614581, i32 1454877196, i32 4, i32 1586746719, i32 4, i32 1454877196], [7 x i32] [i32 1618659494, i32 1618659494, i32 4, i32 1, i32 0, i32 1, i32 1043988576], [7 x i32] [i32 1, i32 1618659494, i32 1188028257, i32 1, i32 1, i32 1188028257, i32 1618659494], [7 x i32] [i32 1188028257, i32 2040614581, i32 1618659494, i32 1454877196, i32 0, i32 -1, i32 1]]], align 16
@g_2012 = internal global i32* @g_323, align 8
@g_2454 = internal global i8** @g_2455, align 8
@g_1482 = internal global i32* @g_231, align 8
@g_1903 = internal global [9 x [7 x [1 x i32*]]] [[7 x [1 x i32*]] [[1 x i32*] [i32* @g_81], [1 x i32*] zeroinitializer, [1 x i32*] zeroinitializer, [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_94]], [7 x [1 x i32*]] [[1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_81]], [7 x [1 x i32*]] [[1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_81], [1 x i32*] zeroinitializer, [1 x i32*] zeroinitializer, [1 x i32*] zeroinitializer], [7 x [1 x i32*]] [[1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_94]], [7 x [1 x i32*]] [[1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_81]], [7 x [1 x i32*]] [[1 x i32*] zeroinitializer, [1 x i32*] zeroinitializer, [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_81]], [7 x [1 x i32*]] [[1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_81]], [7 x [1 x i32*]] [[1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_81], [1 x i32*] zeroinitializer, [1 x i32*] zeroinitializer, [1 x i32*] zeroinitializer, [1 x i32*] [i32* @g_81]], [7 x [1 x i32*]] [[1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_81], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_94], [1 x i32*] [i32* @g_94]]], align 16
@g_1716 = internal global [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_170 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_170 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_170 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i32]* @g_170 to i8*), i64 16) to i32*)], align 16
@g_2355 = internal constant i16** getelementptr inbounds ([1 x i16*], [1 x i16*]* @g_2356, i32 0, i32 0), align 8
@g_2356 = internal global [1 x i16*] zeroinitializer, align 8
@g_343 = internal global [8 x i64**] [i64** @g_82, i64** @g_82, i64** @g_82, i64** @g_82, i64** @g_82, i64** @g_82, i64** @g_82, i64** @g_82], align 16
@g_82 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i64]* @g_83 to i8*), i64 16) to i64*), align 8
@g_1853 = internal global [6 x i8*] [i8* @g_168, i8* @g_168, i8* @g_168, i8* @g_168, i8* @g_168, i8* @g_168], align 16
@g_913 = internal constant i16 1, align 2
@g_1899 = internal global i32* null, align 8
@g_1897 = internal global [1 x i32***] [i32*** @g_1898], align 8
@g_2455 = internal global i8* @g_1606, align 8
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
  %90 = call i32 @func_1()
  %91 = load volatile i8, i8* @g_4, align 1, !tbaa !9
  %92 = sext i8 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_8, align 4, !tbaa !1
  %95 = zext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i64, i64* @g_41, align 8, !tbaa !7
  %98 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %98)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %99

; <label>:99                                      ; preds = %139, %89
  %100 = load i32, i32* %i, align 4, !tbaa !1
  %101 = icmp slt i32 %100, 8
  br i1 %101, label %102, label %142

; <label>:102                                     ; preds = %99
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %103

; <label>:103                                     ; preds = %135, %102
  %104 = load i32, i32* %j, align 4, !tbaa !1
  %105 = icmp slt i32 %104, 5
  br i1 %105, label %106, label %138

; <label>:106                                     ; preds = %103
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %107

; <label>:107                                     ; preds = %131, %106
  %108 = load i32, i32* %k, align 4, !tbaa !1
  %109 = icmp slt i32 %108, 6
  br i1 %109, label %110, label %134

; <label>:110                                     ; preds = %107
  %111 = load i32, i32* %k, align 4, !tbaa !1
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %j, align 4, !tbaa !1
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %i, align 4, !tbaa !1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [8 x [5 x [6 x i8]]], [8 x [5 x [6 x i8]]]* @g_66, i32 0, i64 %116
  %118 = getelementptr inbounds [5 x [6 x i8]], [5 x [6 x i8]]* %117, i32 0, i64 %114
  %119 = getelementptr inbounds [6 x i8], [6 x i8]* %118, i32 0, i64 %112
  %120 = load i8, i8* %119, align 1, !tbaa !9
  %121 = sext i8 %120 to i64
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %122)
  %123 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

; <label>:125                                     ; preds = %110
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %127 = load i32, i32* %j, align 4, !tbaa !1
  %128 = load i32, i32* %k, align 4, !tbaa !1
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %126, i32 %127, i32 %128)
  br label %130

; <label>:130                                     ; preds = %125, %110
  br label %131

; <label>:131                                     ; preds = %130
  %132 = load i32, i32* %k, align 4, !tbaa !1
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %k, align 4, !tbaa !1
  br label %107

; <label>:134                                     ; preds = %107
  br label %135

; <label>:135                                     ; preds = %134
  %136 = load i32, i32* %j, align 4, !tbaa !1
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %j, align 4, !tbaa !1
  br label %103

; <label>:138                                     ; preds = %103
  br label %139

; <label>:139                                     ; preds = %138
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %i, align 4, !tbaa !1
  br label %99

; <label>:142                                     ; preds = %99
  %143 = load i64, i64* @g_71, align 8, !tbaa !7
  %144 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %144)
  %145 = load volatile i32, i32* @g_74, align 4, !tbaa !1
  %146 = sext i32 %145 to i64
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %147)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %148

; <label>:148                                     ; preds = %188, %142
  %149 = load i32, i32* %i, align 4, !tbaa !1
  %150 = icmp slt i32 %149, 9
  br i1 %150, label %151, label %191

; <label>:151                                     ; preds = %148
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %152

; <label>:152                                     ; preds = %184, %151
  %153 = load i32, i32* %j, align 4, !tbaa !1
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %155, label %187

; <label>:155                                     ; preds = %152
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %156

; <label>:156                                     ; preds = %180, %155
  %157 = load i32, i32* %k, align 4, !tbaa !1
  %158 = icmp slt i32 %157, 8
  br i1 %158, label %159, label %183

; <label>:159                                     ; preds = %156
  %160 = load i32, i32* %k, align 4, !tbaa !1
  %161 = sext i32 %160 to i64
  %162 = load i32, i32* %j, align 4, !tbaa !1
  %163 = sext i32 %162 to i64
  %164 = load i32, i32* %i, align 4, !tbaa !1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [9 x [1 x [8 x i16]]], [9 x [1 x [8 x i16]]]* @g_76, i32 0, i64 %165
  %167 = getelementptr inbounds [1 x [8 x i16]], [1 x [8 x i16]]* %166, i32 0, i64 %163
  %168 = getelementptr inbounds [8 x i16], [8 x i16]* %167, i32 0, i64 %161
  %169 = load i16, i16* %168, align 2, !tbaa !10
  %170 = zext i16 %169 to i64
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %170, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %171)
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

; <label>:174                                     ; preds = %159
  %175 = load i32, i32* %i, align 4, !tbaa !1
  %176 = load i32, i32* %j, align 4, !tbaa !1
  %177 = load i32, i32* %k, align 4, !tbaa !1
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %175, i32 %176, i32 %177)
  br label %179

; <label>:179                                     ; preds = %174, %159
  br label %180

; <label>:180                                     ; preds = %179
  %181 = load i32, i32* %k, align 4, !tbaa !1
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %k, align 4, !tbaa !1
  br label %156

; <label>:183                                     ; preds = %156
  br label %184

; <label>:184                                     ; preds = %183
  %185 = load i32, i32* %j, align 4, !tbaa !1
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %j, align 4, !tbaa !1
  br label %152

; <label>:187                                     ; preds = %152
  br label %188

; <label>:188                                     ; preds = %187
  %189 = load i32, i32* %i, align 4, !tbaa !1
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %i, align 4, !tbaa !1
  br label %148

; <label>:191                                     ; preds = %148
  %192 = load i32, i32* @g_81, align 4, !tbaa !1
  %193 = sext i32 %192 to i64
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %194)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %195

; <label>:195                                     ; preds = %210, %191
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = icmp slt i32 %196, 7
  br i1 %197, label %198, label %213

; <label>:198                                     ; preds = %195
  %199 = load i32, i32* %i, align 4, !tbaa !1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [7 x i64], [7 x i64]* @g_83, i32 0, i64 %200
  %202 = load i64, i64* %201, align 8, !tbaa !7
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %202, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 %203)
  %204 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

; <label>:206                                     ; preds = %198
  %207 = load i32, i32* %i, align 4, !tbaa !1
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %207)
  br label %209

; <label>:209                                     ; preds = %206, %198
  br label %210

; <label>:210                                     ; preds = %209
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %i, align 4, !tbaa !1
  br label %195

; <label>:213                                     ; preds = %195
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %214

; <label>:214                                     ; preds = %230, %213
  %215 = load i32, i32* %i, align 4, !tbaa !1
  %216 = icmp slt i32 %215, 10
  br i1 %216, label %217, label %233

; <label>:217                                     ; preds = %214
  %218 = load i32, i32* %i, align 4, !tbaa !1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [10 x i32], [10 x i32]* @g_88, i32 0, i64 %219
  %221 = load i32, i32* %220, align 4, !tbaa !1
  %222 = sext i32 %221 to i64
  %223 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %222, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 %223)
  %224 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

; <label>:226                                     ; preds = %217
  %227 = load i32, i32* %i, align 4, !tbaa !1
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %227)
  br label %229

; <label>:229                                     ; preds = %226, %217
  br label %230

; <label>:230                                     ; preds = %229
  %231 = load i32, i32* %i, align 4, !tbaa !1
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %i, align 4, !tbaa !1
  br label %214

; <label>:233                                     ; preds = %214
  %234 = load i32, i32* @g_94, align 4, !tbaa !1
  %235 = sext i32 %234 to i64
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %236)
  %237 = load i8, i8* @g_117, align 1, !tbaa !9
  %238 = sext i8 %237 to i64
  %239 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %239)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %240

; <label>:240                                     ; preds = %256, %233
  %241 = load i32, i32* %i, align 4, !tbaa !1
  %242 = icmp slt i32 %241, 5
  br i1 %242, label %243, label %259

; <label>:243                                     ; preds = %240
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [5 x i8], [5 x i8]* @g_140, i32 0, i64 %245
  %247 = load i8, i8* %246, align 1, !tbaa !9
  %248 = zext i8 %247 to i64
  %249 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %249)
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

; <label>:252                                     ; preds = %243
  %253 = load i32, i32* %i, align 4, !tbaa !1
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %253)
  br label %255

; <label>:255                                     ; preds = %252, %243
  br label %256

; <label>:256                                     ; preds = %255
  %257 = load i32, i32* %i, align 4, !tbaa !1
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %i, align 4, !tbaa !1
  br label %240

; <label>:259                                     ; preds = %240
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %260

; <label>:260                                     ; preds = %276, %259
  %261 = load i32, i32* %i, align 4, !tbaa !1
  %262 = icmp slt i32 %261, 9
  br i1 %262, label %263, label %279

; <label>:263                                     ; preds = %260
  %264 = load i32, i32* %i, align 4, !tbaa !1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [9 x i16], [9 x i16]* @g_149, i32 0, i64 %265
  %267 = load i16, i16* %266, align 2, !tbaa !10
  %268 = sext i16 %267 to i64
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %268, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %269)
  %270 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

; <label>:272                                     ; preds = %263
  %273 = load i32, i32* %i, align 4, !tbaa !1
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %273)
  br label %275

; <label>:275                                     ; preds = %272, %263
  br label %276

; <label>:276                                     ; preds = %275
  %277 = load i32, i32* %i, align 4, !tbaa !1
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %i, align 4, !tbaa !1
  br label %260

; <label>:279                                     ; preds = %260
  %280 = load i8, i8* @g_168, align 1, !tbaa !9
  %281 = zext i8 %280 to i64
  %282 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %281, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %282)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %283

; <label>:283                                     ; preds = %299, %279
  %284 = load i32, i32* %i, align 4, !tbaa !1
  %285 = icmp slt i32 %284, 5
  br i1 %285, label %286, label %302

; <label>:286                                     ; preds = %283
  %287 = load i32, i32* %i, align 4, !tbaa !1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [5 x i32], [5 x i32]* @g_170, i32 0, i64 %288
  %290 = load i32, i32* %289, align 4, !tbaa !1
  %291 = sext i32 %290 to i64
  %292 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %291, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %292)
  %293 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

; <label>:295                                     ; preds = %286
  %296 = load i32, i32* %i, align 4, !tbaa !1
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %296)
  br label %298

; <label>:298                                     ; preds = %295, %286
  br label %299

; <label>:299                                     ; preds = %298
  %300 = load i32, i32* %i, align 4, !tbaa !1
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %i, align 4, !tbaa !1
  br label %283

; <label>:302                                     ; preds = %283
  %303 = load i16, i16* @g_172, align 2, !tbaa !10
  %304 = zext i16 %303 to i64
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %304, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %305)
  %306 = load i8, i8* @g_178, align 1, !tbaa !9
  %307 = zext i8 %306 to i64
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %308)
  %309 = load i64, i64* @g_183, align 8, !tbaa !7
  %310 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %309, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %310)
  %311 = load i16, i16* @g_184, align 2, !tbaa !10
  %312 = sext i16 %311 to i64
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %313)
  %314 = load i16, i16* @g_185, align 2, !tbaa !10
  %315 = zext i16 %314 to i64
  %316 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %315, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %316)
  %317 = load i32, i32* @g_189, align 4, !tbaa !1
  %318 = zext i32 %317 to i64
  %319 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %318, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %319)
  %320 = load i32, i32* @g_231, align 4, !tbaa !1
  %321 = zext i32 %320 to i64
  %322 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %322)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %323

; <label>:323                                     ; preds = %339, %302
  %324 = load i32, i32* %i, align 4, !tbaa !1
  %325 = icmp slt i32 %324, 7
  br i1 %325, label %326, label %342

; <label>:326                                     ; preds = %323
  %327 = load i32, i32* %i, align 4, !tbaa !1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [7 x i32], [7 x i32]* @g_232, i32 0, i64 %328
  %330 = load i32, i32* %329, align 4, !tbaa !1
  %331 = zext i32 %330 to i64
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %331, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %332)
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

; <label>:335                                     ; preds = %326
  %336 = load i32, i32* %i, align 4, !tbaa !1
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %336)
  br label %338

; <label>:338                                     ; preds = %335, %326
  br label %339

; <label>:339                                     ; preds = %338
  %340 = load i32, i32* %i, align 4, !tbaa !1
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %i, align 4, !tbaa !1
  br label %323

; <label>:342                                     ; preds = %323
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %343

; <label>:343                                     ; preds = %371, %342
  %344 = load i32, i32* %i, align 4, !tbaa !1
  %345 = icmp slt i32 %344, 6
  br i1 %345, label %346, label %374

; <label>:346                                     ; preds = %343
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %347

; <label>:347                                     ; preds = %367, %346
  %348 = load i32, i32* %j, align 4, !tbaa !1
  %349 = icmp slt i32 %348, 5
  br i1 %349, label %350, label %370

; <label>:350                                     ; preds = %347
  %351 = load i32, i32* %j, align 4, !tbaa !1
  %352 = sext i32 %351 to i64
  %353 = load i32, i32* %i, align 4, !tbaa !1
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [6 x [5 x i32]], [6 x [5 x i32]]* @g_235, i32 0, i64 %354
  %356 = getelementptr inbounds [5 x i32], [5 x i32]* %355, i32 0, i64 %352
  %357 = load i32, i32* %356, align 4, !tbaa !1
  %358 = zext i32 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 %359)
  %360 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %366

; <label>:362                                     ; preds = %350
  %363 = load i32, i32* %i, align 4, !tbaa !1
  %364 = load i32, i32* %j, align 4, !tbaa !1
  %365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i32 %363, i32 %364)
  br label %366

; <label>:366                                     ; preds = %362, %350
  br label %367

; <label>:367                                     ; preds = %366
  %368 = load i32, i32* %j, align 4, !tbaa !1
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %j, align 4, !tbaa !1
  br label %347

; <label>:370                                     ; preds = %347
  br label %371

; <label>:371                                     ; preds = %370
  %372 = load i32, i32* %i, align 4, !tbaa !1
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %i, align 4, !tbaa !1
  br label %343

; <label>:374                                     ; preds = %343
  %375 = load i64, i64* @g_302, align 8, !tbaa !7
  %376 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %375, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %376)
  %377 = load i32, i32* @g_318, align 4, !tbaa !1
  %378 = zext i32 %377 to i64
  %379 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %379)
  %380 = load i32, i32* @g_323, align 4, !tbaa !1
  %381 = zext i32 %380 to i64
  %382 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %381, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %382)
  %383 = load volatile i8, i8* @g_505, align 1, !tbaa !9
  %384 = zext i8 %383 to i64
  %385 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %384, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %385)
  %386 = load i64, i64* @g_686, align 8, !tbaa !7
  %387 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %386, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %387)
  %388 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 45907, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %388)
  %389 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %389)
  %390 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %390)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %391

; <label>:391                                     ; preds = %418, %374
  %392 = load i32, i32* %i, align 4, !tbaa !1
  %393 = icmp slt i32 %392, 3
  br i1 %393, label %394, label %421

; <label>:394                                     ; preds = %391
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %395

; <label>:395                                     ; preds = %414, %394
  %396 = load i32, i32* %j, align 4, !tbaa !1
  %397 = icmp slt i32 %396, 5
  br i1 %397, label %398, label %417

; <label>:398                                     ; preds = %395
  %399 = load i32, i32* %j, align 4, !tbaa !1
  %400 = sext i32 %399 to i64
  %401 = load i32, i32* %i, align 4, !tbaa !1
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [3 x [5 x i64]], [3 x [5 x i64]]* @g_951, i32 0, i64 %402
  %404 = getelementptr inbounds [5 x i64], [5 x i64]* %403, i32 0, i64 %400
  %405 = load i64, i64* %404, align 8, !tbaa !7
  %406 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %405, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 %406)
  %407 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %413

; <label>:409                                     ; preds = %398
  %410 = load i32, i32* %i, align 4, !tbaa !1
  %411 = load i32, i32* %j, align 4, !tbaa !1
  %412 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i32 %410, i32 %411)
  br label %413

; <label>:413                                     ; preds = %409, %398
  br label %414

; <label>:414                                     ; preds = %413
  %415 = load i32, i32* %j, align 4, !tbaa !1
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %j, align 4, !tbaa !1
  br label %395

; <label>:417                                     ; preds = %395
  br label %418

; <label>:418                                     ; preds = %417
  %419 = load i32, i32* %i, align 4, !tbaa !1
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %i, align 4, !tbaa !1
  br label %391

; <label>:421                                     ; preds = %391
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %422

; <label>:422                                     ; preds = %438, %421
  %423 = load i32, i32* %i, align 4, !tbaa !1
  %424 = icmp slt i32 %423, 4
  br i1 %424, label %425, label %441

; <label>:425                                     ; preds = %422
  %426 = load i32, i32* %i, align 4, !tbaa !1
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [4 x i16], [4 x i16]* @g_1169, i32 0, i64 %427
  %429 = load i16, i16* %428, align 2, !tbaa !10
  %430 = sext i16 %429 to i64
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 %431)
  %432 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %437

; <label>:434                                     ; preds = %425
  %435 = load i32, i32* %i, align 4, !tbaa !1
  %436 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %435)
  br label %437

; <label>:437                                     ; preds = %434, %425
  br label %438

; <label>:438                                     ; preds = %437
  %439 = load i32, i32* %i, align 4, !tbaa !1
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %i, align 4, !tbaa !1
  br label %422

; <label>:441                                     ; preds = %422
  %442 = load i64, i64* @g_1250, align 8, !tbaa !7
  %443 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %442, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %443)
  %444 = load i8, i8* @g_1606, align 1, !tbaa !9
  %445 = sext i8 %444 to i64
  %446 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %445, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %446)
  %447 = load i64, i64* @g_1607, align 8, !tbaa !7
  %448 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %447, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %448)
  %449 = load i8, i8* @g_1777, align 1, !tbaa !9
  %450 = sext i8 %449 to i64
  %451 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %450, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %451)
  %452 = load i8, i8* @g_1936, align 1, !tbaa !9
  %453 = sext i8 %452 to i64
  %454 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %453, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %454)
  %455 = load i16, i16* @g_1953, align 2, !tbaa !10
  %456 = zext i16 %455 to i64
  %457 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %456, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %457)
  %458 = load i32, i32* @g_1973, align 4, !tbaa !1
  %459 = sext i32 %458 to i64
  %460 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %459, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %460)
  %461 = load i32, i32* @g_2191, align 4, !tbaa !1
  %462 = sext i32 %461 to i64
  %463 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %462, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %463)
  %464 = load i16, i16* @g_2226, align 2, !tbaa !10
  %465 = zext i16 %464 to i64
  %466 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %465, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %466)
  %467 = load i16, i16* @g_2230, align 2, !tbaa !10
  %468 = zext i16 %467 to i64
  %469 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %468, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %469)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %470

; <label>:470                                     ; preds = %510, %441
  %471 = load i32, i32* %i, align 4, !tbaa !1
  %472 = icmp slt i32 %471, 6
  br i1 %472, label %473, label %513

; <label>:473                                     ; preds = %470
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %474

; <label>:474                                     ; preds = %506, %473
  %475 = load i32, i32* %j, align 4, !tbaa !1
  %476 = icmp slt i32 %475, 10
  br i1 %476, label %477, label %509

; <label>:477                                     ; preds = %474
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %478

; <label>:478                                     ; preds = %502, %477
  %479 = load i32, i32* %k, align 4, !tbaa !1
  %480 = icmp slt i32 %479, 1
  br i1 %480, label %481, label %505

; <label>:481                                     ; preds = %478
  %482 = load i32, i32* %k, align 4, !tbaa !1
  %483 = sext i32 %482 to i64
  %484 = load i32, i32* %j, align 4, !tbaa !1
  %485 = sext i32 %484 to i64
  %486 = load i32, i32* %i, align 4, !tbaa !1
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [6 x [10 x [1 x i16]]], [6 x [10 x [1 x i16]]]* @g_2404, i32 0, i64 %487
  %489 = getelementptr inbounds [10 x [1 x i16]], [10 x [1 x i16]]* %488, i32 0, i64 %485
  %490 = getelementptr inbounds [1 x i16], [1 x i16]* %489, i32 0, i64 %483
  %491 = load i16, i16* %490, align 2, !tbaa !10
  %492 = sext i16 %491 to i64
  %493 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %492, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), i32 %493)
  %494 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %501

; <label>:496                                     ; preds = %481
  %497 = load i32, i32* %i, align 4, !tbaa !1
  %498 = load i32, i32* %j, align 4, !tbaa !1
  %499 = load i32, i32* %k, align 4, !tbaa !1
  %500 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %497, i32 %498, i32 %499)
  br label %501

; <label>:501                                     ; preds = %496, %481
  br label %502

; <label>:502                                     ; preds = %501
  %503 = load i32, i32* %k, align 4, !tbaa !1
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %k, align 4, !tbaa !1
  br label %478

; <label>:505                                     ; preds = %478
  br label %506

; <label>:506                                     ; preds = %505
  %507 = load i32, i32* %j, align 4, !tbaa !1
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %j, align 4, !tbaa !1
  br label %474

; <label>:509                                     ; preds = %474
  br label %510

; <label>:510                                     ; preds = %509
  %511 = load i32, i32* %i, align 4, !tbaa !1
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %i, align 4, !tbaa !1
  br label %470

; <label>:513                                     ; preds = %470
  %514 = load i16, i16* @g_2428, align 2, !tbaa !10
  %515 = zext i16 %514 to i64
  %516 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %515, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %516)
  %517 = load volatile i8, i8* @g_2485, align 1, !tbaa !9
  %518 = zext i8 %517 to i64
  %519 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %518, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %519)
  %520 = load volatile i32, i32* @g_2508, align 4, !tbaa !1
  %521 = sext i32 %520 to i64
  %522 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %521, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %522)
  %523 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %524 = zext i32 %523 to i64
  %525 = xor i64 %524, 4294967295
  %526 = trunc i64 %525 to i32
  %527 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %526, i32 %527)
  %528 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %528) #1
  %529 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %529) #1
  %530 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %530) #1
  %531 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %531) #1
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
  %l_7 = alloca i8, align 1
  %l_2427 = alloca i16*, align 8
  %l_2426 = alloca i16**, align 8
  %l_2425 = alloca i16***, align 8
  %l_2424 = alloca i16****, align 8
  %l_2423 = alloca i16*****, align 8
  %l_2429 = alloca i32*, align 8
  %l_2430 = alloca i32*, align 8
  %l_2468 = alloca i32*, align 8
  %l_2477 = alloca i32*, align 8
  %l_2487 = alloca i64, align 8
  %l_2502 = alloca i32, align 4
  %l_2503 = alloca i32, align 4
  %l_2504 = alloca i32, align 4
  %l_2507 = alloca [3 x i32*], align 16
  %l_2509 = alloca [2 x [6 x [8 x i16]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_2433 = alloca i16, align 2
  %l_2456 = alloca i32, align 4
  %l_2463 = alloca i8*, align 8
  %l_2467 = alloca i32, align 4
  %l_2473 = alloca i32**, align 8
  %l_2472 = alloca i32***, align 8
  %l_2476 = alloca i32, align 4
  %l_2482 = alloca [7 x [5 x i8*]], align 16
  %l_2483 = alloca i32, align 4
  %l_2484 = alloca [3 x [6 x [7 x i32]]], align 16
  %l_2486 = alloca i64*, align 8
  %l_2488 = alloca i32*, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %l_2489 = alloca i8, align 1
  %l_2490 = alloca i32, align 4
  %l_2491 = alloca i32*, align 8
  %l_2492 = alloca i32*, align 8
  %l_2493 = alloca i32*, align 8
  %l_2494 = alloca i32*, align 8
  %l_2495 = alloca i32*, align 8
  %l_2496 = alloca i32*, align 8
  %l_2497 = alloca i32*, align 8
  %l_2498 = alloca i32*, align 8
  %l_2499 = alloca i32*, align 8
  %l_2500 = alloca i32*, align 8
  %l_2501 = alloca [6 x [9 x i32*]], align 16
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  call void @llvm.lifetime.start(i64 1, i8* %l_7) #1
  store i8 -1, i8* %l_7, align 1, !tbaa !9
  %1 = bitcast i16** %l_2427 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i16* @g_2428, i16** %l_2427, align 8, !tbaa !5
  %2 = bitcast i16*** %l_2426 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i16** %l_2427, i16*** %l_2426, align 8, !tbaa !5
  %3 = bitcast i16**** %l_2425 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i16*** %l_2426, i16**** %l_2425, align 8, !tbaa !5
  %4 = bitcast i16***** %l_2424 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i16**** %l_2425, i16***** %l_2424, align 8, !tbaa !5
  %5 = bitcast i16****** %l_2423 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i16***** %l_2424, i16****** %l_2423, align 8, !tbaa !5
  %6 = bitcast i32** %l_2429 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* null, i32** %l_2429, align 8, !tbaa !5
  %7 = bitcast i32** %l_2430 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* @g_1973, i32** %l_2430, align 8, !tbaa !5
  %8 = bitcast i32** %l_2468 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* null, i32** %l_2468, align 8, !tbaa !5
  %9 = bitcast i32** %l_2477 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* @g_8, i32** %l_2477, align 8, !tbaa !5
  %10 = bitcast i64* %l_2487 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 3822282126985083277, i64* %l_2487, align 8, !tbaa !7
  %11 = bitcast i32* %l_2502 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 626944597, i32* %l_2502, align 4, !tbaa !1
  %12 = bitcast i32* %l_2503 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 1, i32* %l_2503, align 4, !tbaa !1
  %13 = bitcast i32* %l_2504 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 -205312586, i32* %l_2504, align 4, !tbaa !1
  %14 = bitcast [3 x i32*]* %l_2507 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %14) #1
  %15 = bitcast [2 x [6 x [8 x i16]]]* %l_2509 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %15) #1
  %16 = bitcast [2 x [6 x [8 x i16]]]* %l_2509 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast ([2 x [6 x [8 x i16]]]* @func_1.l_2509 to i8*), i64 192, i32 16, i1 false)
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %20

; <label>:20                                      ; preds = %27, %0
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %30

; <label>:23                                      ; preds = %20
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x i32*], [3 x i32*]* %l_2507, i32 0, i64 %25
  store i32* %l_2502, i32** %26, align 8, !tbaa !5
  br label %27

; <label>:27                                      ; preds = %23
  %28 = load i32, i32* %i, align 4, !tbaa !1
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4, !tbaa !1
  br label %20

; <label>:30                                      ; preds = %20
  %31 = load volatile i8, i8* @g_4, align 1, !tbaa !9
  %32 = sext i8 %31 to i16
  %33 = load i8, i8* %l_7, align 1, !tbaa !9
  %34 = sext i8 %33 to i16
  %35 = load i32, i32* @g_8, align 4, !tbaa !1
  %36 = trunc i32 %35 to i16
  %37 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %34, i16 zeroext %36)
  %38 = zext i16 %37 to i32
  %39 = load i8, i8* %l_7, align 1, !tbaa !9
  %40 = sext i8 %39 to i32
  %41 = call zeroext i16 @func_13(i32 %40)
  %42 = zext i16 %41 to i32
  %43 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext 1, i32 %42)
  %44 = load i16*****, i16****** %l_2423, align 8, !tbaa !5
  store i16**** null, i16***** %44, align 8, !tbaa !5
  %45 = load i8, i8* %l_7, align 1, !tbaa !9
  %46 = sext i8 %45 to i32
  %47 = load i32**, i32*** @g_1715, align 8, !tbaa !5
  %48 = load i32*, i32** %47, align 8, !tbaa !5
  store i32 %46, i32* %48, align 4, !tbaa !1
  %49 = load i32*, i32** %l_2430, align 8, !tbaa !5
  store i32 %46, i32* %49, align 4, !tbaa !1
  %50 = load i8, i8* %l_7, align 1, !tbaa !9
  %51 = load i32, i32* @g_323, align 4, !tbaa !1
  %52 = trunc i32 %51 to i16
  %53 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext 1, i16 zeroext %52)
  %54 = zext i16 %53 to i64
  %55 = icmp slt i64 %54, 62229
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = icmp sle i64 %57, 7584945981756693212
  %59 = zext i1 %58 to i32
  %60 = trunc i32 %59 to i16
  %61 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %43, i16 zeroext %60)
  %62 = zext i16 %61 to i32
  %63 = icmp sgt i32 %38, %62
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = xor i64 %65, 3
  %67 = trunc i64 %66 to i16
  %68 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %32, i16 zeroext %67)
  %69 = icmp ne i16 %68, 0
  br i1 %69, label %70, label %187

; <label>:70                                      ; preds = %30
  %71 = bitcast i16* %l_2433 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %71) #1
  store i16 -14266, i16* %l_2433, align 2, !tbaa !10
  %72 = bitcast i32* %l_2456 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  store i32 0, i32* %l_2456, align 4, !tbaa !1
  %73 = bitcast i8** %l_2463 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  store i8* null, i8** %l_2463, align 8, !tbaa !5
  %74 = bitcast i32* %l_2467 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  store i32 -1096539304, i32* %l_2467, align 4, !tbaa !1
  %75 = load i16, i16* %l_2433, align 2, !tbaa !10
  %76 = trunc i16 %75 to i8
  %77 = load i16, i16* %l_2433, align 2, !tbaa !10
  %78 = zext i16 %77 to i32
  %79 = load i8, i8* %l_7, align 1, !tbaa !9
  %80 = load i16*, i16** @g_1166, align 8, !tbaa !5
  %81 = load i16, i16* %80, align 2, !tbaa !10
  %82 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %81, i16 zeroext 1)
  %83 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %82)
  %84 = zext i16 %83 to i32
  %85 = load i32*, i32** @g_330, align 8, !tbaa !5
  %86 = load i32, i32* %85, align 4, !tbaa !1
  %87 = xor i32 %86, %84
  store i32 %87, i32* %85, align 4, !tbaa !1
  %88 = call i32 @safe_sub_func_uint32_t_u_u(i32 1, i32 %87)
  %89 = load i32*, i32** @g_73, align 8, !tbaa !5
  %90 = load volatile i32, i32* %89, align 4, !tbaa !1
  %91 = load i8***, i8**** @g_2453, align 8, !tbaa !5
  %92 = icmp eq i8*** null, %91
  %93 = zext i1 %92 to i32
  %94 = icmp slt i32 %90, %93
  %95 = zext i1 %94 to i32
  %96 = icmp ult i32 %88, %95
  %97 = zext i1 %96 to i32
  %98 = trunc i32 %97 to i16
  %99 = load i16, i16* %l_2433, align 2, !tbaa !10
  %100 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %98, i16 signext %99)
  %101 = sext i16 %100 to i64
  %102 = load i64***, i64**** @g_342, align 8, !tbaa !5
  %103 = load i64**, i64*** %102, align 8, !tbaa !5
  %104 = load i64*, i64** %103, align 8, !tbaa !5
  %105 = load i64, i64* %104, align 8, !tbaa !7
  %106 = icmp ne i64 %101, %105
  %107 = zext i1 %106 to i32
  %108 = trunc i32 %107 to i8
  %109 = load i32, i32* %l_2456, align 4, !tbaa !1
  %110 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %108, i32 %109)
  %111 = zext i8 %110 to i32
  %112 = icmp sgt i32 %78, %111
  %113 = zext i1 %112 to i32
  %114 = sext i32 %113 to i64
  %115 = load i64*, i64** @g_961, align 8, !tbaa !5
  %116 = load i64, i64* %115, align 8, !tbaa !7
  %117 = xor i64 %116, %114
  store i64 %117, i64* %115, align 8, !tbaa !7
  %118 = call i64 @safe_sub_func_int64_t_s_s(i64 %117, i64 -6227896962216183833)
  %119 = load i16, i16* %l_2433, align 2, !tbaa !10
  %120 = zext i16 %119 to i64
  %121 = icmp sge i64 %118, %120
  %122 = zext i1 %121 to i32
  %123 = trunc i32 %122 to i8
  %124 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %123, i32 4)
  %125 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %124, i8 signext 7)
  %126 = sext i8 %125 to i16
  %127 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %126, i16 zeroext 4)
  %128 = zext i16 %127 to i32
  %129 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %76, i32 %128)
  %130 = zext i8 %129 to i32
  %131 = load i32**, i32*** @g_1715, align 8, !tbaa !5
  %132 = load i32*, i32** %131, align 8, !tbaa !5
  store i32 %130, i32* %132, align 4, !tbaa !1
  %133 = load i8**, i8*** @g_1852, align 8, !tbaa !5
  %134 = load i8*, i8** %133, align 8, !tbaa !5
  %135 = load i8, i8* %134, align 1, !tbaa !9
  %136 = load i32*, i32** @g_73, align 8, !tbaa !5
  store volatile i32 147955957, i32* %136, align 4, !tbaa !1
  %137 = load i8, i8* %l_7, align 1, !tbaa !9
  %138 = load i8, i8* %l_7, align 1, !tbaa !9
  %139 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %137, i8 zeroext %138)
  %140 = load i8, i8* %l_7, align 1, !tbaa !9
  %141 = sext i8 %140 to i32
  %142 = load i8*, i8** %l_2463, align 8, !tbaa !5
  %143 = load i8, i8* %l_7, align 1, !tbaa !9
  %144 = load i16, i16* %l_2433, align 2, !tbaa !10
  %145 = zext i16 %144 to i32
  %146 = icmp eq i32 1, %145
  %147 = zext i1 %146 to i32
  %148 = load i16*, i16** @g_912, align 8, !tbaa !5
  %149 = load i16, i16* %148, align 2, !tbaa !10
  %150 = zext i16 %149 to i32
  %151 = xor i32 %150, -1
  %152 = sext i32 %151 to i64
  %153 = xor i64 %152, 247
  %154 = icmp ne i8* %142, null
  %155 = zext i1 %154 to i32
  %156 = icmp ne i32 %141, %155
  %157 = zext i1 %156 to i32
  br i1 false, label %160, label %158

; <label>:158                                     ; preds = %70
  br i1 true, label %160, label %159

; <label>:159                                     ; preds = %158
  br label %160

; <label>:160                                     ; preds = %159, %158, %70
  %161 = phi i1 [ true, %158 ], [ true, %70 ], [ true, %159 ]
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* @g_2191, align 4, !tbaa !1
  %164 = trunc i32 %163 to i16
  store i16 %164, i16* getelementptr inbounds ([4 x i16], [4 x i16]* @g_1169, i32 0, i64 0), align 2, !tbaa !10
  %165 = load i16, i16* getelementptr inbounds ([9 x i16], [9 x i16]* @g_149, i32 0, i64 1), align 2, !tbaa !10
  %166 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %164, i16 signext %165)
  %167 = trunc i16 %166 to i8
  %168 = load i8***, i8**** @g_2453, align 8, !tbaa !5
  %169 = load volatile i8**, i8*** %168, align 8, !tbaa !5
  %170 = load volatile i8*, i8** %169, align 8, !tbaa !5
  %171 = load i8, i8* %170, align 1, !tbaa !9
  %172 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %167, i8 zeroext %171)
  %173 = zext i8 %172 to i32
  %174 = load i32**, i32*** @g_1715, align 8, !tbaa !5
  %175 = load i32*, i32** %174, align 8, !tbaa !5
  %176 = load i32, i32* %175, align 4, !tbaa !1
  %177 = and i32 %176, %173
  store i32 %177, i32* %175, align 4, !tbaa !1
  %178 = load i32*, i32** %l_2468, align 8, !tbaa !5
  %179 = load i32**, i32*** @g_1898, align 8, !tbaa !5
  store i32* %178, i32** %179, align 8, !tbaa !5
  %180 = load i32****, i32***** @g_1896, align 8, !tbaa !5
  %181 = load i32***, i32**** %180, align 8, !tbaa !5
  %182 = load i32**, i32*** %181, align 8, !tbaa !5
  store i32* null, i32** %182, align 8, !tbaa !5
  %183 = bitcast i32* %l_2467 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i8** %l_2463 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = bitcast i32* %l_2456 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i16* %l_2433 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %186) #1
  br label %279

; <label>:187                                     ; preds = %30
  %188 = bitcast i32*** %l_2473 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %188) #1
  store i32** null, i32*** %l_2473, align 8, !tbaa !5
  %189 = bitcast i32**** %l_2472 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %189) #1
  store i32*** %l_2473, i32**** %l_2472, align 8, !tbaa !5
  %190 = bitcast i32* %l_2476 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #1
  store i32 -292095283, i32* %l_2476, align 4, !tbaa !1
  %191 = bitcast [7 x [5 x i8*]]* %l_2482 to i8*
  call void @llvm.lifetime.start(i64 280, i8* %191) #1
  %192 = bitcast [7 x [5 x i8*]]* %l_2482 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %192, i8* bitcast ([7 x [5 x i8*]]* @func_1.l_2482 to i8*), i64 280, i32 16, i1 false)
  %193 = bitcast i32* %l_2483 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %193) #1
  store i32 -1, i32* %l_2483, align 4, !tbaa !1
  %194 = bitcast [3 x [6 x [7 x i32]]]* %l_2484 to i8*
  call void @llvm.lifetime.start(i64 504, i8* %194) #1
  %195 = bitcast [3 x [6 x [7 x i32]]]* %l_2484 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %195, i8* bitcast ([3 x [6 x [7 x i32]]]* @func_1.l_2484 to i8*), i64 504, i32 16, i1 false)
  %196 = bitcast i64** %l_2486 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %196) #1
  store i64* @g_1250, i64** %l_2486, align 8, !tbaa !5
  %197 = bitcast i32** %l_2488 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %197) #1
  store i32* @g_94, i32** %l_2488, align 8, !tbaa !5
  %198 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %198) #1
  %199 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %199) #1
  %200 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %200) #1
  %201 = load i32***, i32**** %l_2472, align 8, !tbaa !5
  %202 = icmp ne i32*** null, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @safe_unary_minus_func_int32_t_s(i32 %203)
  %205 = trunc i32 %204 to i16
  %206 = load i32, i32* %l_2476, align 4, !tbaa !1
  %207 = trunc i32 %206 to i8
  %208 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %207, i32 1)
  %209 = zext i8 %208 to i32
  %210 = load i32*, i32** @g_2012, align 8, !tbaa !5
  %211 = load i32, i32* %210, align 4, !tbaa !1
  %212 = load i32*, i32** %l_2477, align 8, !tbaa !5
  %213 = icmp ne i32* null, %212
  %214 = zext i1 %213 to i32
  %215 = load i8**, i8*** @g_2454, align 8, !tbaa !5
  %216 = load volatile i8*, i8** %215, align 8, !tbaa !5
  %217 = load i8, i8* %216, align 1, !tbaa !9
  %218 = load i16*, i16** @g_912, align 8, !tbaa !5
  %219 = load i16, i16* %218, align 2, !tbaa !10
  %220 = load i32, i32* %l_2476, align 4, !tbaa !1
  %221 = load i32*, i32** @g_1482, align 8, !tbaa !5
  store i32 %220, i32* %221, align 4, !tbaa !1
  %222 = load i32, i32* @g_189, align 4, !tbaa !1
  %223 = and i32 %222, %220
  store i32 %223, i32* @g_189, align 4, !tbaa !1
  %224 = zext i32 %223 to i64
  %225 = xor i64 %224, 1
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %l_2483, align 4, !tbaa !1
  %227 = getelementptr inbounds [3 x [6 x [7 x i32]]], [3 x [6 x [7 x i32]]]* %l_2484, i32 0, i64 2
  %228 = getelementptr inbounds [6 x [7 x i32]], [6 x [7 x i32]]* %227, i32 0, i64 2
  %229 = getelementptr inbounds [7 x i32], [7 x i32]* %228, i32 0, i64 0
  store i32 %226, i32* %229, align 4, !tbaa !1
  %230 = load i32, i32* %l_2476, align 4, !tbaa !1
  %231 = and i32 %226, %230
  %232 = trunc i32 %231 to i8
  %233 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %217, i8 signext %232)
  %234 = sext i8 %233 to i32
  %235 = load i32, i32* %l_2476, align 4, !tbaa !1
  %236 = call i32 @safe_add_func_uint32_t_u_u(i32 %234, i32 %235)
  %237 = and i32 %214, %236
  %238 = load volatile i8, i8* @g_2485, align 1, !tbaa !9
  %239 = zext i8 %238 to i32
  %240 = icmp eq i32 %237, %239
  %241 = zext i1 %240 to i32
  %242 = icmp ugt i32 %211, %241
  %243 = zext i1 %242 to i32
  %244 = icmp slt i32 %209, %243
  %245 = zext i1 %244 to i32
  %246 = load i64*, i64** @g_961, align 8, !tbaa !5
  %247 = load i64, i64* %246, align 8, !tbaa !7
  %248 = icmp sgt i64 1, %247
  %249 = zext i1 %248 to i32
  %250 = load i32, i32* %l_2476, align 4, !tbaa !1
  %251 = sext i32 %250 to i64
  %252 = icmp sge i64 -3, %251
  %253 = zext i1 %252 to i32
  %254 = trunc i32 %253 to i16
  %255 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %205, i16 zeroext %254)
  %256 = zext i16 %255 to i64
  %257 = load i64*, i64** %l_2486, align 8, !tbaa !5
  %258 = load i64, i64* %257, align 8, !tbaa !7
  %259 = xor i64 %258, %256
  store i64 %259, i64* %257, align 8, !tbaa !7
  %260 = load i64, i64* %l_2487, align 8, !tbaa !7
  %261 = and i64 %259, %260
  %262 = icmp ne i64 %261, 43138
  %263 = zext i1 %262 to i32
  %264 = load i32*, i32** @g_330, align 8, !tbaa !5
  store i32 %263, i32* %264, align 4, !tbaa !1
  %265 = load i32*, i32** %l_2488, align 8, !tbaa !5
  %266 = load i32, i32* %265, align 4, !tbaa !1
  %267 = and i32 %266, %263
  store i32 %267, i32* %265, align 4, !tbaa !1
  %268 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  %269 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #1
  %270 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #1
  %271 = bitcast i32** %l_2488 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %271) #1
  %272 = bitcast i64** %l_2486 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  %273 = bitcast [3 x [6 x [7 x i32]]]* %l_2484 to i8*
  call void @llvm.lifetime.end(i64 504, i8* %273) #1
  %274 = bitcast i32* %l_2483 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #1
  %275 = bitcast [7 x [5 x i8*]]* %l_2482 to i8*
  call void @llvm.lifetime.end(i64 280, i8* %275) #1
  %276 = bitcast i32* %l_2476 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast i32**** %l_2472 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = bitcast i32*** %l_2473 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #1
  br label %279

; <label>:279                                     ; preds = %187, %160
  store i32 5, i32* @g_2191, align 4, !tbaa !1
  br label %280

; <label>:280                                     ; preds = %374, %279
  %281 = load i32, i32* @g_2191, align 4, !tbaa !1
  %282 = icmp sge i32 %281, 1
  br i1 %282, label %283, label %377

; <label>:283                                     ; preds = %280
  call void @llvm.lifetime.start(i64 1, i8* %l_2489) #1
  store i8 -9, i8* %l_2489, align 1, !tbaa !9
  %284 = bitcast i32* %l_2490 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %284) #1
  store i32 8, i32* %l_2490, align 4, !tbaa !1
  %285 = bitcast i32** %l_2491 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %285) #1
  store i32* @g_81, i32** %l_2491, align 8, !tbaa !5
  %286 = bitcast i32** %l_2492 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %286) #1
  store i32* @g_81, i32** %l_2492, align 8, !tbaa !5
  %287 = bitcast i32** %l_2493 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %287) #1
  store i32* %l_2490, i32** %l_2493, align 8, !tbaa !5
  %288 = bitcast i32** %l_2494 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %288) #1
  store i32* @g_94, i32** %l_2494, align 8, !tbaa !5
  %289 = bitcast i32** %l_2495 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %289) #1
  store i32* null, i32** %l_2495, align 8, !tbaa !5
  %290 = bitcast i32** %l_2496 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %290) #1
  store i32* @g_94, i32** %l_2496, align 8, !tbaa !5
  %291 = bitcast i32** %l_2497 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %291) #1
  store i32* @g_94, i32** %l_2497, align 8, !tbaa !5
  %292 = bitcast i32** %l_2498 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %292) #1
  store i32* %l_2490, i32** %l_2498, align 8, !tbaa !5
  %293 = bitcast i32** %l_2499 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %293) #1
  store i32* null, i32** %l_2499, align 8, !tbaa !5
  %294 = bitcast i32** %l_2500 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %294) #1
  store i32* null, i32** %l_2500, align 8, !tbaa !5
  %295 = bitcast [6 x [9 x i32*]]* %l_2501 to i8*
  call void @llvm.lifetime.start(i64 432, i8* %295) #1
  %296 = getelementptr inbounds [6 x [9 x i32*]], [6 x [9 x i32*]]* %l_2501, i64 0, i64 0
  %297 = getelementptr inbounds [9 x i32*], [9 x i32*]* %296, i64 0, i64 0
  store i32* @g_81, i32** %297, !tbaa !5
  %298 = getelementptr inbounds i32*, i32** %297, i64 1
  store i32* @g_2191, i32** %298, !tbaa !5
  %299 = getelementptr inbounds i32*, i32** %298, i64 1
  store i32* %l_2490, i32** %299, !tbaa !5
  %300 = getelementptr inbounds i32*, i32** %299, i64 1
  store i32* @g_94, i32** %300, !tbaa !5
  %301 = getelementptr inbounds i32*, i32** %300, i64 1
  store i32* %l_2490, i32** %301, !tbaa !5
  %302 = getelementptr inbounds i32*, i32** %301, i64 1
  store i32* @g_2191, i32** %302, !tbaa !5
  %303 = getelementptr inbounds i32*, i32** %302, i64 1
  store i32* @g_81, i32** %303, !tbaa !5
  %304 = getelementptr inbounds i32*, i32** %303, i64 1
  store i32* null, i32** %304, !tbaa !5
  %305 = getelementptr inbounds i32*, i32** %304, i64 1
  store i32* %l_2490, i32** %305, !tbaa !5
  %306 = getelementptr inbounds [9 x i32*], [9 x i32*]* %296, i64 1
  %307 = getelementptr inbounds [9 x i32*], [9 x i32*]* %306, i64 0, i64 0
  store i32* %l_2490, i32** %307, !tbaa !5
  %308 = getelementptr inbounds i32*, i32** %307, i64 1
  store i32* @g_94, i32** %308, !tbaa !5
  %309 = getelementptr inbounds i32*, i32** %308, i64 1
  store i32* null, i32** %309, !tbaa !5
  %310 = getelementptr inbounds i32*, i32** %309, i64 1
  store i32* @g_94, i32** %310, !tbaa !5
  %311 = getelementptr inbounds i32*, i32** %310, i64 1
  store i32* @g_94, i32** %311, !tbaa !5
  %312 = getelementptr inbounds i32*, i32** %311, i64 1
  store i32* @g_81, i32** %312, !tbaa !5
  %313 = getelementptr inbounds i32*, i32** %312, i64 1
  store i32* @g_94, i32** %313, !tbaa !5
  %314 = getelementptr inbounds i32*, i32** %313, i64 1
  store i32* @g_94, i32** %314, !tbaa !5
  %315 = getelementptr inbounds i32*, i32** %314, i64 1
  store i32* null, i32** %315, !tbaa !5
  %316 = getelementptr inbounds [9 x i32*], [9 x i32*]* %306, i64 1
  %317 = getelementptr inbounds [9 x i32*], [9 x i32*]* %316, i64 0, i64 0
  store i32* @g_94, i32** %317, !tbaa !5
  %318 = getelementptr inbounds i32*, i32** %317, i64 1
  store i32* @g_94, i32** %318, !tbaa !5
  %319 = getelementptr inbounds i32*, i32** %318, i64 1
  store i32* @g_2191, i32** %319, !tbaa !5
  %320 = getelementptr inbounds i32*, i32** %319, i64 1
  store i32* null, i32** %320, !tbaa !5
  %321 = getelementptr inbounds i32*, i32** %320, i64 1
  store i32* %l_2490, i32** %321, !tbaa !5
  %322 = getelementptr inbounds i32*, i32** %321, i64 1
  store i32* @g_81, i32** %322, !tbaa !5
  %323 = getelementptr inbounds i32*, i32** %322, i64 1
  store i32* @g_2191, i32** %323, !tbaa !5
  %324 = getelementptr inbounds i32*, i32** %323, i64 1
  store i32* null, i32** %324, !tbaa !5
  %325 = getelementptr inbounds i32*, i32** %324, i64 1
  store i32* @g_2191, i32** %325, !tbaa !5
  %326 = getelementptr inbounds [9 x i32*], [9 x i32*]* %316, i64 1
  %327 = getelementptr inbounds [9 x i32*], [9 x i32*]* %326, i64 0, i64 0
  store i32* null, i32** %327, !tbaa !5
  %328 = getelementptr inbounds i32*, i32** %327, i64 1
  store i32* @g_81, i32** %328, !tbaa !5
  %329 = getelementptr inbounds i32*, i32** %328, i64 1
  store i32* @g_94, i32** %329, !tbaa !5
  %330 = getelementptr inbounds i32*, i32** %329, i64 1
  store i32* @g_94, i32** %330, !tbaa !5
  %331 = getelementptr inbounds i32*, i32** %330, i64 1
  store i32* @g_81, i32** %331, !tbaa !5
  %332 = getelementptr inbounds i32*, i32** %331, i64 1
  store i32* null, i32** %332, !tbaa !5
  %333 = getelementptr inbounds i32*, i32** %332, i64 1
  store i32* @g_94, i32** %333, !tbaa !5
  %334 = getelementptr inbounds i32*, i32** %333, i64 1
  store i32* @g_2191, i32** %334, !tbaa !5
  %335 = getelementptr inbounds i32*, i32** %334, i64 1
  store i32* %l_2490, i32** %335, !tbaa !5
  %336 = getelementptr inbounds [9 x i32*], [9 x i32*]* %326, i64 1
  %337 = getelementptr inbounds [9 x i32*], [9 x i32*]* %336, i64 0, i64 0
  store i32* null, i32** %337, !tbaa !5
  %338 = getelementptr inbounds i32*, i32** %337, i64 1
  store i32* %l_2490, i32** %338, !tbaa !5
  %339 = getelementptr inbounds i32*, i32** %338, i64 1
  store i32* @g_2191, i32** %339, !tbaa !5
  %340 = getelementptr inbounds i32*, i32** %339, i64 1
  store i32* @g_94, i32** %340, !tbaa !5
  %341 = getelementptr inbounds i32*, i32** %340, i64 1
  store i32* @g_81, i32** %341, !tbaa !5
  %342 = getelementptr inbounds i32*, i32** %341, i64 1
  store i32* @g_81, i32** %342, !tbaa !5
  %343 = getelementptr inbounds i32*, i32** %342, i64 1
  store i32* @g_94, i32** %343, !tbaa !5
  %344 = getelementptr inbounds i32*, i32** %343, i64 1
  store i32* @g_2191, i32** %344, !tbaa !5
  %345 = getelementptr inbounds i32*, i32** %344, i64 1
  store i32* %l_2490, i32** %345, !tbaa !5
  %346 = getelementptr inbounds [9 x i32*], [9 x i32*]* %336, i64 1
  %347 = getelementptr inbounds [9 x i32*], [9 x i32*]* %346, i64 0, i64 0
  store i32* @g_81, i32** %347, !tbaa !5
  %348 = getelementptr inbounds i32*, i32** %347, i64 1
  store i32* @g_94, i32** %348, !tbaa !5
  %349 = getelementptr inbounds i32*, i32** %348, i64 1
  store i32* null, i32** %349, !tbaa !5
  %350 = getelementptr inbounds i32*, i32** %349, i64 1
  store i32* @g_94, i32** %350, !tbaa !5
  %351 = getelementptr inbounds i32*, i32** %350, i64 1
  store i32* null, i32** %351, !tbaa !5
  %352 = getelementptr inbounds i32*, i32** %351, i64 1
  store i32* @g_94, i32** %352, !tbaa !5
  %353 = getelementptr inbounds i32*, i32** %352, i64 1
  store i32* @g_94, i32** %353, !tbaa !5
  %354 = getelementptr inbounds i32*, i32** %353, i64 1
  store i32* @g_94, i32** %354, !tbaa !5
  %355 = getelementptr inbounds i32*, i32** %354, i64 1
  store i32* @g_94, i32** %355, !tbaa !5
  %356 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %356) #1
  %357 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %357) #1
  %358 = load i32, i32* %l_2504, align 4, !tbaa !1
  %359 = add i32 %358, 1
  store i32 %359, i32* %l_2504, align 4, !tbaa !1
  %360 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %360) #1
  %361 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %361) #1
  %362 = bitcast [6 x [9 x i32*]]* %l_2501 to i8*
  call void @llvm.lifetime.end(i64 432, i8* %362) #1
  %363 = bitcast i32** %l_2500 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %363) #1
  %364 = bitcast i32** %l_2499 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %364) #1
  %365 = bitcast i32** %l_2498 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %365) #1
  %366 = bitcast i32** %l_2497 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %366) #1
  %367 = bitcast i32** %l_2496 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %367) #1
  %368 = bitcast i32** %l_2495 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %368) #1
  %369 = bitcast i32** %l_2494 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %369) #1
  %370 = bitcast i32** %l_2493 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %370) #1
  %371 = bitcast i32** %l_2492 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %371) #1
  %372 = bitcast i32** %l_2491 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %372) #1
  %373 = bitcast i32* %l_2490 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %373) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2489) #1
  br label %374

; <label>:374                                     ; preds = %283
  %375 = load i32, i32* @g_2191, align 4, !tbaa !1
  %376 = sub nsw i32 %375, 1
  store i32 %376, i32* @g_2191, align 4, !tbaa !1
  br label %280

; <label>:377                                     ; preds = %280
  %378 = getelementptr inbounds [2 x [6 x [8 x i16]]], [2 x [6 x [8 x i16]]]* %l_2509, i32 0, i64 1
  %379 = getelementptr inbounds [6 x [8 x i16]], [6 x [8 x i16]]* %378, i32 0, i64 1
  %380 = getelementptr inbounds [8 x i16], [8 x i16]* %379, i32 0, i64 2
  %381 = load i16, i16* %380, align 2, !tbaa !10
  %382 = add i16 %381, 1
  store i16 %382, i16* %380, align 2, !tbaa !10
  %383 = load i32*, i32** @g_1482, align 8, !tbaa !5
  %384 = load i32, i32* %383, align 4, !tbaa !1
  %385 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %385) #1
  %386 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %386) #1
  %387 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %387) #1
  %388 = bitcast [2 x [6 x [8 x i16]]]* %l_2509 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %388) #1
  %389 = bitcast [3 x i32*]* %l_2507 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %389) #1
  %390 = bitcast i32* %l_2504 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %390) #1
  %391 = bitcast i32* %l_2503 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %391) #1
  %392 = bitcast i32* %l_2502 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %392) #1
  %393 = bitcast i64* %l_2487 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %393) #1
  %394 = bitcast i32** %l_2477 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %394) #1
  %395 = bitcast i32** %l_2468 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %395) #1
  %396 = bitcast i32** %l_2430 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %396) #1
  %397 = bitcast i32** %l_2429 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %397) #1
  %398 = bitcast i16****** %l_2423 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %398) #1
  %399 = bitcast i16***** %l_2424 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %399) #1
  %400 = bitcast i16**** %l_2425 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %400) #1
  %401 = bitcast i16*** %l_2426 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %401) #1
  %402 = bitcast i16** %l_2427 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %402) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_7) #1
  ret i32 %384
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
define internal zeroext i16 @func_13(i32 %p_14) #0 {
  %1 = alloca i32, align 4
  %l_69 = alloca i8, align 1
  %l_335 = alloca [6 x i64*], align 16
  %l_685 = alloca i64*, align 8
  %l_2157 = alloca i16, align 2
  %l_2405 = alloca i32, align 4
  %l_2412 = alloca i32**, align 8
  %l_2411 = alloca i32***, align 8
  %i = alloca i32, align 4
  %l_25 = alloca i64, align 8
  %l_39 = alloca i32, align 4
  %l_40 = alloca i64*, align 8
  %l_65 = alloca i8*, align 8
  %l_70 = alloca i64*, align 8
  %l_2403 = alloca i16*, align 8
  %l_2410 = alloca [5 x i32*], align 16
  %l_2420 = alloca i32*, align 8
  %i1 = alloca i32, align 4
  store i32 %p_14, i32* %1, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_69) #1
  store i8 1, i8* %l_69, align 1, !tbaa !9
  %2 = bitcast [6 x i64*]* %l_335 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %2) #1
  %3 = bitcast [6 x i64*]* %l_335 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 48, i32 16, i1 false)
  %4 = bitcast i64** %l_685 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64* @g_686, i64** %l_685, align 8, !tbaa !5
  %5 = bitcast i16* %l_2157 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  store i16 324, i16* %l_2157, align 2, !tbaa !10
  %6 = bitcast i32* %l_2405 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 531354308, i32* %l_2405, align 4, !tbaa !1
  %7 = bitcast i32*** %l_2412 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32** getelementptr inbounds ([9 x [7 x [1 x i32*]]], [9 x [7 x [1 x i32*]]]* @g_1903, i32 0, i64 4, i64 2, i64 0), i32*** %l_2412, align 8, !tbaa !5
  %8 = bitcast i32**** %l_2411 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32*** %l_2412, i32**** %l_2411, align 8, !tbaa !5
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -20, i32* %1, align 4, !tbaa !1
  br label %10

; <label>:10                                      ; preds = %39, %0
  %11 = load i32, i32* %1, align 4, !tbaa !1
  %12 = icmp sle i32 %11, -14
  br i1 %12, label %13, label %42

; <label>:13                                      ; preds = %10
  %14 = bitcast i64* %l_25 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i64 1, i64* %l_25, align 8, !tbaa !7
  %15 = bitcast i32* %l_39 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 146526600, i32* %l_39, align 4, !tbaa !1
  %16 = bitcast i64** %l_40 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64* @g_41, i64** %l_40, align 8, !tbaa !5
  %17 = bitcast i8** %l_65 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i8* getelementptr inbounds ([8 x [5 x [6 x i8]]], [8 x [5 x [6 x i8]]]* @g_66, i32 0, i64 0, i64 1, i64 2), i8** %l_65, align 8, !tbaa !5
  %18 = bitcast i64** %l_70 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i64* @g_71, i64** %l_70, align 8, !tbaa !5
  %19 = bitcast i16** %l_2403 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i16* getelementptr inbounds ([6 x [10 x [1 x i16]]], [6 x [10 x [1 x i16]]]* @g_2404, i32 0, i64 4, i64 8, i64 0), i16** %l_2403, align 8, !tbaa !5
  %20 = bitcast [5 x i32*]* %l_2410 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %20) #1
  %21 = bitcast [5 x i32*]* %l_2410 to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 40, i32 16, i1 false)
  %22 = bitcast i8* %21 to [5 x i32*]*
  %23 = getelementptr [5 x i32*], [5 x i32*]* %22, i32 0, i32 0
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_232 to i8*), i64 12) to i32*), i32** %23
  %24 = getelementptr [5 x i32*], [5 x i32*]* %22, i32 0, i32 1
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_232 to i8*), i64 12) to i32*), i32** %24
  %25 = getelementptr [5 x i32*], [5 x i32*]* %22, i32 0, i32 2
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_232 to i8*), i64 12) to i32*), i32** %25
  %26 = getelementptr [5 x i32*], [5 x i32*]* %22, i32 0, i32 3
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_232 to i8*), i64 12) to i32*), i32** %26
  %27 = getelementptr [5 x i32*], [5 x i32*]* %22, i32 0, i32 4
  store i32* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32]* @g_232 to i8*), i64 12) to i32*), i32** %27
  %28 = bitcast i32** %l_2420 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i32* @g_94, i32** %l_2420, align 8, !tbaa !5
  %29 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32** %l_2420 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast [5 x i32*]* %l_2410 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %32) #1
  %33 = bitcast i16** %l_2403 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i64** %l_70 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i8** %l_65 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i64** %l_40 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32* %l_39 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i64* %l_25 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  br label %39

; <label>:39                                      ; preds = %13
  %40 = load i32, i32* %1, align 4, !tbaa !1
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4, !tbaa !1
  br label %10

; <label>:42                                      ; preds = %10
  %43 = load i16*, i16** @g_1166, align 8, !tbaa !5
  %44 = load i16, i16* %43, align 2, !tbaa !10
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32**** %l_2411 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32*** %l_2412 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %l_2405 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i16* %l_2157 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %49) #1
  %50 = bitcast i64** %l_685 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast [6 x i64*]* %l_335 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %51) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_69) #1
  ret i16 %44
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
