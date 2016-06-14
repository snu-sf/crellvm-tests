; ModuleID = 'patterns/owl_vital_apat.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type { [80 x i8], i32, %struct.state_rt*, %struct.attrib_rt* }
%struct.state_rt = type { i16, [4 x i16] }
%struct.attrib_rt = type { i16, i16 }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }

@owl_vital_apat = internal global [53 x %struct.pattern] [%struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat0, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 2, i32 3, i32 3, i32 0, i32 721, [8 x i32] [i32 -50332672, i32 -50463696, i32 -50529264, i32 -50529280, i32 -50463744, i32 -50332656, i32 -50529232, i32 -50529280], [8 x i32] [i32 -2011068416, i32 -2011133936, i32 -2011133952, i32 -2011133952, i32 -2011133952, i32 -2011068416, i32 -2011133936, i32 -2011133952], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat0, i32 3, float 0x3FCE282400000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat1, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 2, i32 3, i32 3, i32 10, i32 647, [8 x i32] [i32 -256, i32 -4, i32 -50529028, i32 -50529280, i32 -256, i32 -4, i32 -50529028, i32 -50529280], [8 x i32] [i32 153225728, i32 35817892, i32 -2145353624, i32 -2011168768, i32 -1994259968, i32 170002852, i32 2132072, i32 -2145353728], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat1, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat2, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 -2, i32 -2, i32 1, i32 2, i32 3, i32 4, i32 10, i32 758, [8 x i32] [i32 -738197760, i32 -724740, i32 -57585, i32 1014824188, i32 -252379137, i32 -11328, i32 -58966788, i32 536870656], [8 x i32] [i32 -2128084992, i32 169877508, i32 10553610, i32 539000912, i32 538970646, i32 2654592, i32 -2145378240, i32 161546240], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat3, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 10, i32 686, [8 x i32] [i32 -252379137, i32 -50540352, i32 -58967040, i32 536870656, i32 -788726784, i32 -724992, i32 -57585, i32 1014824188], [8 x i32] [i32 -1604302334, i32 1479049344, i32 -2078005248, i32 144741376, i32 -2144839680, i32 1247846400, i32 -1801451510, i32 673481728], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat4, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 10, i32 647, [8 x i32] [i32 -1057950492, i32 -51363840, i32 2084310016, i32 88014592, i32 1089534976, i32 -185548800, i32 -12712704, i32 205290604], [8 x i32] [i32 -2145349568, i32 -2006974464, i32 404752384, i32 2394368, i32 6326272, i32 -1876918272, i32 -1994129408, i32 136321028], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_vital_apat5, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 2, i32 1, i32 4, i32 2, i32 759, [8 x i32] [i32 16580352, i32 -252645184, i32 -65536, i32 1010580540, i32 -252645136, i32 -262144, i32 1010580492, i32 16776960], [8 x i32] [i32 10754048, i32 543199232, i32 -1855324160, i32 405020708, i32 -1872748448, i32 413401088, i32 539236352, i32 6983936], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat5, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat6, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 1, i32 3, i32 2, i32 10, i32 648, [8 x i32] [i32 -51053568, i32 -8960, i32 -58917764, i32 -587400192, i32 -570425600, i32 -51053324, i32 -50537472, i32 -58917888], [8 x i32] [i32 1214257152, i32 375556096, i32 -1876655064, i32 -2010886144, i32 -2006837760, i32 408963232, i32 1344571392, i32 -2077978624], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat7, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 683, [8 x i32] [i32 1027555072, i32 16579828, i32 -252645376, i32 -50593792, i32 -50593792, i32 1061108992, i32 16579708, i32 -252645376], [8 x i32] [i32 136456448, i32 10520672, i32 -1608482816, i32 -2010644480, i32 -2002780160, i32 690096128, i32 2656292, i32 -2145345536], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat7, i32 3, float 0x3FA47AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_vital_apat8, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 721, [8 x i32] [i32 3932160, i32 3158016, i32 15728640, i32 808452096, i32 808452096, i32 3932160, i32 3158016, i32 15728640], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat8, i32 3, float 0x3FC6723240000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_vital_apat9, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 721, [8 x i32] [i32 3932160, i32 3158016, i32 15728640, i32 808452096, i32 808452096, i32 3932160, i32 3158016, i32 15728640], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat9, i32 3, float 0x3FD09D4960000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @owl_vital_apat10, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 3, i32 2, i32 5, i32 2, i32 722, [8 x i32] [i32 -251658496, i32 -50532112, i32 -50176, i32 1023212604, i32 -251855632, i32 -4096, i32 -50578372, i32 1023409920], [8 x i32] [i32 -1604689920, i32 1486364704, i32 613820416, i32 546870304, i32 546854944, i32 1616551936, i32 -1801969632, i32 680928256], i32 16777232, float 6.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat10, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @owl_vital_apat11, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 10, i32 686, [8 x i32] [i32 1357970941, i32 -185286592, i32 -63171584, i32 260013824, i32 -1057688576, i32 -34582528, i32 2139033349, i32 339541244], [8 x i32] [i32 2123904, i32 1084260352, i32 -1541406720, i32 136840704, i32 -2136981504, i32 1746927616, i32 103286784, i32 2139144], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat12, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 10, i32 647, [8 x i32] [i32 -251855620, i32 -50532352, i32 -50578432, i32 1073741568, i32 -251855872, i32 -50532352, i32 -49408, i32 1023212796], [8 x i32] [i32 -1607952316, i32 -2006409216, i32 -1734334464, i32 698648832, i32 -1603762176, i32 -1742168064, i32 -1985730304, i32 681613380], i32 16777232, float 8.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat12, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_vital_apat13, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 648, [8 x i32] [i32 1023212544, i32 -251855872, i32 -50532352, i32 -50578432, i32 -50532352, i32 -50578432, i32 1023212544, i32 -251855872], [8 x i32] [i32 408953856, i32 279201792, i32 1613008896, i32 -2073554944, i32 1218711552, i32 610277376, i32 275284992, i32 -1876664320], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat13, i32 3, float 0x3FCE282400000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_vital_apat14, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 1010777856, i32 16579824, i32 -252645376, i32 -50593792, i32 -50593792, i32 1061108736, i32 16579644, i32 -252645376], [8 x i32] [i32 539105280, i32 6848544, i32 -1876942848, i32 144965632, i32 -2140667904, i32 404889600, i32 10749984, i32 539004928], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat14, i32 3, float 0x3FD8106240000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat15, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 1, i32 647, [8 x i32] [i32 -51056640, i32 -50586624, i32 1065352960, i32 -788726532, i32 486341884, i32 -252380160, i32 -50540544, i32 -8438016], [8 x i32] [i32 -2011168768, i32 136316928, i32 35686400, i32 -2145353720, i32 136317056, i32 2131968, i32 -2145353728, i32 -2011168256], i32 16777216, float 4.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat15, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat16, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 3, i32 2, i32 4, i32 0, i32 721, [8 x i32] [i32 2147483392, i32 -184746756, i32 -50531328, i32 -50562048, i32 -50531328, i32 -33024, i32 2096954620, i32 -184747008], [8 x i32] [i32 689054208, i32 9963684, i32 537960448, i32 -2137522176, i32 144179200, i32 571615488, i32 9994344, i32 -1609555968], i32 16777232, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat16, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat17, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 0, i32 647, [8 x i32] [i32 -51318784, i32 -50590720, i32 1061158656, i32 -1057161988, i32 217906428, i32 -252642304, i32 -50544640, i32 -12632320], [8 x i32] [i32 -2078240768, i32 -2006973440, i32 438323712, i32 1076136072, i32 73435272, i32 -1876917248, i32 -2010890240, i32 1243617792], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat17, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat18, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 722, [8 x i32] [i32 16646143, i32 -252645168, i32 -50593792, i32 1061109504, i32 -252645376, i32 -196608, i32 1061109535, i32 16579836], [8 x i32] [i32 6324384, i32 -1876951040, i32 136577024, i32 2234880, i32 2134016, i32 -2141192192, i32 438435840, i32 2361384], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat18, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat19, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 -2, i32 -1, i32 2, i32 1, i32 4, i32 2, i32 0, i32 647, [8 x i32] [i32 -51315664, i32 -50344960, i32 -63112144, i32 -855639040, i32 -855639040, i32 -51315664, i32 -50344960, i32 -63112144], [8 x i32] [i32 -2011133920, i32 -2011002880, i32 -2011133920, i32 -2011002880, i32 -2011002880, i32 -2011133920, i32 -2011002880, i32 -2011133920], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat19, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_vital_apat20, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 685, [8 x i32] [i32 15793404, i32 -252657664, i32 -63176704, i32 255803136, i32 -1057951744, i32 -51380224, i32 1061097216, i32 3996924], [8 x i32] [i32 9439232, i32 537952256, i32 -2145910784, i32 135274496, i32 -2146426880, i32 143654912, i32 537921536, i32 1605632], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat20, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_vital_apat21, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 0, i32 2, i32 2, i32 2, i32 647, [8 x i32] [i32 -252645376, i32 -50593792, i32 1061108992, i32 16579708, i32 16579828, i32 -252645376, i32 -50593792, i32 1027555072], [8 x i32] [i32 270532608, i32 2359296, i32 2101248, i32 6291456, i32 2359296, i32 2101248, i32 6291456, i32 270532608], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat21, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_vital_apat22, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 1, i32 3, i32 3, i32 2, i32 685, [8 x i32] [i32 3210492, i32 -1057964032, i32 -47185920, i32 255790855, i32 -1057963968, i32 -63963136, i32 255790848, i32 3210751], [8 x i32] [i32 1050624, i32 1081344, i32 -2146435072, i32 135266304, i32 -2146435072, i32 135266304, i32 1050624, i32 1081344], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat22, i32 0, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_vital_apat23, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 721, [8 x i32] [i32 3932160, i32 3158016, i32 15728640, i32 808452096, i32 808452096, i32 3932160, i32 3158016, i32 15728640], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 16777216, float 7.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat23, i32 3, float 0x3FA16872C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_vital_apat24, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 6, i32 647, [8 x i32] [i32 1023212796, i32 -251855872, i32 -50532352, i32 -49408, i32 -50532352, i32 -50578432, i32 1073741568, i32 -251855620], [8 x i32] [i32 337680528, i32 -2140896256, i32 -1742712832, i32 1214581248, i32 -2073788416, i32 -1742728192, i32 174409728, i32 1344313368], i32 16777216, float 7.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @owl_vital_apat25, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 -2, i32 -2, i32 2, i32 2, i32 4, i32 4, i32 0, i32 647, [8 x i32] [i32 -784, i32 -50331844, i32 -784, i32 -50331844, i32 -784, i32 -50331844, i32 -784, i32 -50331844], [8 x i32] [i32 -1842997088, i32 140939816, i32 -1839064928, i32 409371176, i32 -1838806880, i32 405180968, i32 -2107238240, i32 409113128], i32 16777232, float 7.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @owl_vital_apat26, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 -2, i32 -2, i32 2, i32 2, i32 4, i32 4, i32 0, i32 648, [8 x i32] [i32 -784, i32 -50331844, i32 -784, i32 -50331844, i32 -784, i32 -50331844, i32 -784, i32 -50331844], [8 x i32] [i32 -1842997088, i32 140939816, i32 -1839064928, i32 409371176, i32 -1838806880, i32 405180968, i32 -2107238240, i32 409113128], i32 16777232, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat27, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 685, [8 x i32] [i32 15792125, i32 -252690240, i32 2084306944, i32 121585408, i32 1089531904, i32 -135266304, i32 1061095181, i32 3964156], [8 x i32] [i32 10486372, i32 538968192, i32 2621440, i32 19013888, i32 2105344, i32 44040192, i32 555876616, i32 2621540], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat27, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat28, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 648, [8 x i32] [i32 -252183296, i32 -50540432, i32 -58967040, i32 486341632, i32 -788726784, i32 -34082816, i32 -50586572, i32 1014823936], [8 x i32] [i32 -1609423872, i32 144195616, i32 1611671552, i32 77103104, i32 1083705344, i32 605200384, i32 -2137521120, i32 672161792], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat28, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat29, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 10, i32 722, [8 x i32] [i32 -50332416, i32 -50529168, i32 -50529280, i32 -50529280, i32 -50529280, i32 -33555456, i32 -50529228, i32 -50529280], [8 x i32] [i32 -1475190784, i32 1217923104, i32 605071360, i32 -2137488384, i32 144197632, i32 1611835392, i32 -2070380512, i32 -1475337216], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat30, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 0, i32 722, [8 x i32] [i32 4194108, i32 -1057951504, i32 -51380224, i32 1061096448, i32 -252657664, i32 -12648448, i32 205471548, i32 15793392], [8 x i32] [i32 2654760, i32 -2145378176, i32 144703488, i32 572655616, i32 539000832, i32 -2111307776, i32 136454664, i32 10487968], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat30, i32 3, float 0x3FD8106240000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat31, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 -2, i32 0, i32 2, i32 2, i32 4, i32 2, i32 4, i32 759, [8 x i32] [i32 1061109507, i32 16580607, i32 -252645184, i32 -50593792, i32 -262144, i32 1061109519, i32 16579839, i32 -252645376], [8 x i32] [i32 404889600, i32 10750240, i32 539004992, i32 -2140667904, i32 161742848, i32 539105284, i32 6848544, i32 -1876942848], i32 16777232, float 7.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat32, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 4, i32 720, [8 x i32] [i32 1023212796, i32 -251855872, i32 -50532352, i32 -49408, i32 -50532352, i32 -50578432, i32 1073741568, i32 -251855620], [8 x i32] [i32 274761892, i32 -1876656128, i32 -2010902528, i32 157424128, i32 -2145087488, i32 -2006970368, i32 442632448, i32 270829672], i32 16777232, float 7.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_vital_apat33, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 1, i32 3, i32 1, i32 4, i32 686, [8 x i32] [i32 205274172, i32 15793152, i32 -252657664, i32 -12648448, i32 -51380224, i32 1010568192, i32 4194048, i32 -1057951504], [8 x i32] [i32 136578056, i32 2119680, i32 1080066048, i32 -1776287744, i32 1478492160, i32 69470208, i32 2135552, i32 -2141175680], i32 16777216, float 7.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat34, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 0, i32 649, [8 x i32] [i32 821886204, i32 -251858944, i32 -50581504, i32 1073692416, i32 -251858944, i32 -50581504, i32 1073692416, i32 821886204], [8 x i32] [i32 546838564, i32 542679040, i32 -1869078528, i32 697704448, i32 -1604837376, i32 412622848, i32 546711808, i32 546869344], i32 16777216, float 7.600000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat34, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat35, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 6, i32 722, [8 x i32] [i32 255803199, i32 15793404, i32 -252657664, i32 -12648448, i32 -51380224, i32 1061097216, i32 4194303, i32 -1057951504], [8 x i32] [i32 169878052, i32 10487944, i32 539000832, i32 -2127953920, i32 144703488, i32 572525056, i32 2785672, i32 -2145378208], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat35, i32 3, float 0x3FA99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @owl_vital_apat36, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 -2, i32 -1, i32 2, i32 2, i32 4, i32 3, i32 4, i32 721, [8 x i32] [i32 -49393, i32 1023410175, i32 -251855632, i32 -200704, i32 -50176, i32 1073741631, i32 -251854849, i32 -50532160], [8 x i32] [i32 -2036262902, i32 677545498, i32 -1876408160, i32 1243914240, i32 -2040387584, i32 413238826, i32 -1608234350, i32 1210617984], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @owl_vital_apat37, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 3, i32 2, i32 4, i32 2, i32 796, [8 x i32] [i32 524287744, i32 -1057686276, i32 -51326976, i32 -58979328, i32 -51068928, i32 -12640512, i32 209517820, i32 -789513216], [8 x i32] [i32 153241600, i32 1075873828, i32 -2078244864, i32 -2011167744, i32 -2011152384, i32 1210190080, i32 69240928, i32 -2145352704], i32 16777216, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat37, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_vital_apat38, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 -2, i32 -2, i32 1, i32 0, i32 3, i32 2, i32 2, i32 647, [8 x i32] [i32 -252645376, i32 -50397184, i32 1061109040, i32 16579708, i32 16776436, i32 -252645328, i32 -50593792, i32 1027555072], [8 x i32] [i32 2097152, i32 2162688, i32 2097168, i32 2097152, i32 2162688, i32 2097168, i32 2097152, i32 2097152], i32 16777216, float 8.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat38, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat39, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 4, i32 720, [8 x i32] [i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280, i32 -50529280], [8 x i32] [i32 -1876388864, i32 -2006687744, i32 1486886912, i32 610568192, i32 1617201152, i32 -1809281024, i32 -2006703104, i32 413161472], i32 16777232, float 9.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat39, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat40, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 0, i32 759, [8 x i32] [i32 1027555135, i32 16579828, i32 -252645376, i32 -65536, i32 -50593792, i32 1061108992, i32 16777087, i32 -252645136], [8 x i32] [i32 404758560, i32 10749952, i32 539004928, i32 -2140536832, i32 144965632, i32 538974208, i32 6979584, i32 -1876942816], i32 16777232, float 9.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat40, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat41, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504, i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836], [8 x i32] [i32 10749960, i32 539004928, i32 -2140667904, i32 438312960, i32 -1876942848, i32 144965632, i32 538974720, i32 6848640], i32 16777232, float 9.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat41, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @owl_vital_apat42, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 0, i32 683, [8 x i32] [i32 -50529028, i32 -50529280, i32 -50529280, i32 -256, i32 -50529280, i32 -50529280, i32 -256, i32 -50529028], [8 x i32] [i32 -2011133848, i32 -2011133952, i32 -2011133952, i32 -1977448192, i32 -2011133952, i32 -2011133952, i32 -1994225152, i32 -2011133788], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat42, i32 3, float 0x3FFF5C2900000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_vital_apat43, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 722, [8 x i32] [i32 16776960, i32 -252645136, i32 -50593792, i32 1010580480, i32 -252645376, i32 -65536, i32 1010580540, i32 16579584], [8 x i32] [i32 11014144, i32 543170560, i32 279445504, i32 539238400, i32 543170560, i32 279445504, i32 539238400, i32 11014144], i32 16777232, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat43, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_vital_apat44, i32 0, i32 0), i32 2, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 722, [8 x i32] [i32 3878400, i32 11591856, i32 -525336576, i32 741867520, i32 -525336576, i32 775618560, i32 3681336, i32 11591680], [8 x i32] [i32 2228224, i32 2097184, i32 2097152, i32 2097152, i32 2097152, i32 2228224, i32 2097184, i32 2097152], i32 16777232, float 5.700000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat44, i32 3, float 0x3FC9721500000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_vital_apat45, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 721, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2103296, i32 6324224, i32 -1876951040, i32 136577024, i32 -2141192192, i32 404750336, i32 2361344, i32 2134016], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat45, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @owl_vital_apat46, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 2, i32 2, i32 4, i32 0, i32 759, [8 x i32] [i32 -1057947904, i32 -51330880, i32 -62977024, i32 205323312, i32 -1057948624, i32 -999424, i32 -63173620, i32 205519872], [8 x i32] [i32 -2145352704, i32 -2011152384, i32 1210189824, i32 69240864, i32 1075873824, i32 -2078244864, i32 -2011167744, i32 136464384], i32 16777216, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat46, i32 3, float 0x3FB5F45E00000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([1 x %struct.patval], [1 x %struct.patval]* @owl_vital_apat47, i32 0, i32 0), i32 1, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1057792, i32 9453568, i32 1611661312, i32 68681728, i32 1083179008, i32 605028352, i32 1573888, i32 1073152], i32 16777216, float 9.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat47, i32 0, float 0x3FF28F5C20000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @owl_vital_apat48, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 2, i32 1, i32 3, i32 9, i32 683, [8 x i32] [i32 -65536, i32 1010580540, i32 16579584, i32 -252645376, i32 1010580480, i32 16776960, i32 -252645136, i32 -50593792], [8 x i32] [i32 10551296, i32 538968080, i32 2621440, i32 2105344, i32 2105344, i32 10551296, i32 538968080, i32 2621440], i32 16777232, float 7.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @owl_vital_apat49, i32 0, i32 0), i32 2, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 3943424, i32 11595776, i32 -521142272, i32 1010302976, i32 -256901120, i32 742129664, i32 3685376, i32 15785984], [8 x i32] [i32 2099200, i32 2129920, i32 -2145386496, i32 136314880, i32 -2145386496, i32 136314880, i32 2099200, i32 2129920], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperowl_vital_apat49, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @owl_vital_apat50, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 2, i32 3, i32 3, i32 10, i32 685, [8 x i32] [i32 -788660992, i32 -34213808, i32 -50586604, i32 1014823936, i32 -252314368, i32 -33697712, i32 -58967020, i32 486341632], [8 x i32] [i32 1080590336, i32 -1809833984, i32 144966656, i32 538990592, i32 539005952, i32 -2140651520, i32 1478500352, i32 77858816], i32 16777232, float 4.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @owl_vital_apat51, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 -2, i32 0, i32 2, i32 2, i32 4, i32 2, i32 10, i32 682, [8 x i32] [i32 1061109055, i32 16777086, i32 -252645136, i32 -65536, i32 -65536, i32 1027555134, i32 16777207, i32 -252645136], [8 x i32] [i32 153225220, i32 2132260, i32 -2145353664, i32 -1994391552, i32 -1994391552, i32 136448260, i32 2132320, i32 -2145353664], i32 16777216, float 3.500000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern zeroinitializer], align 16
@dfa_owl_vital_apat = internal global %struct.dfa_rt { [80 x i8] c"owl_vital_apat\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, %struct.state_rt* getelementptr inbounds ([1127 x %struct.state_rt], [1127 x %struct.state_rt]* @state_owl_vital_apat, i32 0, i32 0), %struct.attrib_rt* getelementptr inbounds ([55 x %struct.attrib_rt], [55 x %struct.attrib_rt]* @idx_owl_vital_apat, i32 0, i32 0) }, align 8
@owl_vital_apat_db = global %struct.pattern_db { i32 -1, i32 0, %struct.pattern* getelementptr inbounds ([53 x %struct.pattern], [53 x %struct.pattern]* @owl_vital_apat, i32 0, i32 0), %struct.dfa_rt* @dfa_owl_vital_apat }, align 8
@owl_vital_apat0 = internal global [6 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 682, i32 3 }], align 16
@.str = private unnamed_addr constant [4 x i8] c"VA1\00", align 1
@owl_vital_apat1 = internal global [7 x %struct.patval] [%struct.patval { i32 645, i32 1 }, %struct.patval { i32 682, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"VA2\00", align 1
@owl_vital_apat2 = internal global [6 x %struct.patval] [%struct.patval { i32 608, i32 1 }, %struct.patval { i32 645, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"VA3\00", align 1
@owl_vital_apat3 = internal global [7 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 721, i32 3 }], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"VA4\00", align 1
@owl_vital_apat4 = internal global [5 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 723, i32 3 }], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"VA5\00", align 1
@owl_vital_apat5 = internal global [4 x %struct.patval] [%struct.patval { i32 610, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"VA6\00", align 1
@owl_vital_apat6 = internal global [7 x %struct.patval] [%struct.patval { i32 645, i32 1 }, %struct.patval { i32 682, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 719, i32 3 }], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c"VA7\00", align 1
@owl_vital_apat7 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 757, i32 3 }], align 16
@.str.7 = private unnamed_addr constant [4 x i8] c"VA8\00", align 1
@owl_vital_apat8 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"VA9\00", align 1
@owl_vital_apat9 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"VA10\00", align 1
@owl_vital_apat10 = internal global [9 x %struct.patval] [%struct.patval { i32 611, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 796, i32 3 }], align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"VA11\00", align 1
@owl_vital_apat11 = internal global [8 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 759, i32 3 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.11 = private unnamed_addr constant [5 x i8] c"VA12\00", align 1
@owl_vital_apat12 = internal global [7 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 683, i32 1 }], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"VA13\00", align 1
@owl_vital_apat13 = internal global [4 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"VA14\00", align 1
@owl_vital_apat14 = internal global [4 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"VA15\00", align 1
@owl_vital_apat15 = internal global [5 x %struct.patval] [%struct.patval { i32 611, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 721, i32 3 }], align 16
@.str.15 = private unnamed_addr constant [5 x i8] c"VA16\00", align 1
@owl_vital_apat16 = internal global [7 x %struct.patval] [%struct.patval { i32 647, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 646, i32 3 }], align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"VA17\00", align 1
@owl_vital_apat17 = internal global [6 x %struct.patval] [%struct.patval { i32 683, i32 7 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 609, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 611, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.17 = private unnamed_addr constant [5 x i8] c"VA18\00", align 1
@owl_vital_apat18 = internal global [5 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 758, i32 3 }], align 16
@.str.18 = private unnamed_addr constant [5 x i8] c"VA19\00", align 1
@owl_vital_apat19 = internal global [7 x %struct.patval] [%struct.patval { i32 682, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }], align 16
@.str.19 = private unnamed_addr constant [5 x i8] c"VA20\00", align 1
@owl_vital_apat20 = internal global [2 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.20 = private unnamed_addr constant [5 x i8] c"VA21\00", align 1
@owl_vital_apat21 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 609, i32 3 }], align 16
@.str.21 = private unnamed_addr constant [5 x i8] c"VA22\00", align 1
@owl_vital_apat22 = internal global [2 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 611, i32 3 }], align 16
@.str.22 = private unnamed_addr constant [5 x i8] c"VA23\00", align 1
@owl_vital_apat23 = internal global [1 x %struct.patval] [%struct.patval { i32 684, i32 1 }], align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"VA24\00", align 1
@owl_vital_apat24 = internal global [4 x %struct.patval] [%struct.patval { i32 649, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.24 = private unnamed_addr constant [5 x i8] c"VA25\00", align 1
@owl_vital_apat25 = internal global [12 x %struct.patval] [%struct.patval { i32 720, i32 7 }, %struct.patval { i32 719, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 682, i32 1 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 611, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 649, i32 1 }], align 16
@.str.25 = private unnamed_addr constant [5 x i8] c"VA26\00", align 1
@owl_vital_apat26 = internal global [11 x %struct.patval] [%struct.patval { i32 682, i32 1 }, %struct.patval { i32 719, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 611, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.26 = private unnamed_addr constant [6 x i8] c"VA26b\00", align 1
@owl_vital_apat27 = internal global [6 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 760, i32 3 }], align 16
@.str.27 = private unnamed_addr constant [5 x i8] c"VA27\00", align 1
@owl_vital_apat28 = internal global [6 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.28 = private unnamed_addr constant [5 x i8] c"VA28\00", align 1
@owl_vital_apat29 = internal global [7 x %struct.patval] [%struct.patval { i32 647, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.29 = private unnamed_addr constant [5 x i8] c"VA29\00", align 1
@owl_vital_apat30 = internal global [7 x %struct.patval] [%struct.patval { i32 758, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 759, i32 1 }], align 16
@.str.30 = private unnamed_addr constant [5 x i8] c"VA30\00", align 1
@owl_vital_apat31 = internal global [5 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.31 = private unnamed_addr constant [5 x i8] c"VA31\00", align 1
@owl_vital_apat32 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.32 = private unnamed_addr constant [5 x i8] c"VA32\00", align 1
@owl_vital_apat33 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 720, i32 1 }], align 16
@.str.33 = private unnamed_addr constant [5 x i8] c"VA33\00", align 1
@owl_vital_apat34 = internal global [6 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 686, i32 1 }], align 16
@.str.34 = private unnamed_addr constant [5 x i8] c"VA34\00", align 1
@owl_vital_apat35 = internal global [6 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 685, i32 1 }], align 16
@.str.35 = private unnamed_addr constant [5 x i8] c"VA35\00", align 1
@owl_vital_apat36 = internal global [10 x %struct.patval] [%struct.patval { i32 682, i32 1 }, %struct.patval { i32 719, i32 1 }, %struct.patval { i32 756, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 760, i32 1 }], align 16
@.str.36 = private unnamed_addr constant [5 x i8] c"VA36\00", align 1
@owl_vital_apat37 = internal global [6 x %struct.patval] [%struct.patval { i32 759, i32 7 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 683, i32 3 }], align 16
@.str.37 = private unnamed_addr constant [5 x i8] c"VA37\00", align 1
@owl_vital_apat38 = internal global [3 x %struct.patval] [%struct.patval { i32 646, i32 7 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 609, i32 3 }], align 16
@.str.38 = private unnamed_addr constant [5 x i8] c"VA38\00", align 1
@owl_vital_apat39 = internal global [5 x %struct.patval] [%struct.patval { i32 647, i32 7 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.39 = private unnamed_addr constant [5 x i8] c"VA39\00", align 1
@owl_vital_apat40 = internal global [5 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }], align 16
@.str.40 = private unnamed_addr constant [5 x i8] c"VA40\00", align 1
@owl_vital_apat41 = internal global [5 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.41 = private unnamed_addr constant [5 x i8] c"VA41\00", align 1
@owl_vital_apat42 = internal global [7 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 648, i32 1 }], align 16
@.str.42 = private unnamed_addr constant [5 x i8] c"VA42\00", align 1
@owl_vital_apat43 = internal global [3 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }], align 16
@.str.43 = private unnamed_addr constant [5 x i8] c"VA43\00", align 1
@owl_vital_apat44 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }], align 16
@.str.44 = private unnamed_addr constant [5 x i8] c"VA44\00", align 1
@owl_vital_apat45 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.45 = private unnamed_addr constant [5 x i8] c"VA45\00", align 1
@owl_vital_apat46 = internal global [4 x %struct.patval] [%struct.patval { i32 646, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.46 = private unnamed_addr constant [5 x i8] c"VA46\00", align 1
@owl_vital_apat47 = internal global [1 x %struct.patval] [%struct.patval { i32 685, i32 1 }], align 4
@.str.47 = private unnamed_addr constant [5 x i8] c"VA47\00", align 1
@owl_vital_apat48 = internal global [3 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 1 }], align 16
@.str.48 = private unnamed_addr constant [5 x i8] c"VA48\00", align 1
@owl_vital_apat49 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }], align 16
@.str.49 = private unnamed_addr constant [5 x i8] c"VA49\00", align 1
@owl_vital_apat50 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.50 = private unnamed_addr constant [5 x i8] c"VA50\00", align 1
@owl_vital_apat51 = internal global [5 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.51 = private unnamed_addr constant [5 x i8] c"VA51\00", align 1
@transformation = external global [1369 x [8 x i32]], align 16
@board = external global [421 x i8], align 16
@stackp = external global i32, align 4
@worm = external global [400 x %struct.worm_data], align 16
@state_owl_vital_apat = internal constant [1127 x %struct.state_rt] [%struct.state_rt zeroinitializer, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 1, i16 2, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 3, i16 4, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 4, i16 5, i16 6, i16 7] }, %struct.state_rt { i16 0, [4 x i16] [i16 7, i16 7, i16 7, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 7, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 7, i16 0, i16 8, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 9, i16 10, i16 11] }, %struct.state_rt { i16 0, [4 x i16] [i16 11, i16 12, i16 13, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 13, i16 14, i16 14, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 14, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 15, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 15, i16 0] }, %struct.state_rt { i16 11, [4 x i16] [i16 15, i16 16, i16 17, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 19, i16 20, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 22, i16 23, i16 24] }, %struct.state_rt { i16 0, [4 x i16] [i16 24, i16 25, i16 0, i16 0] }, %struct.state_rt { i16 11, [4 x i16] [i16 25, i16 26, i16 27, i16 28] }, %struct.state_rt { i16 0, [4 x i16] [i16 28, i16 29, i16 30, i16 31] }, %struct.state_rt { i16 0, [4 x i16] [i16 31, i16 32, i16 33, i16 34] }, %struct.state_rt { i16 11, [4 x i16] [i16 34, i16 35, i16 36, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 36, i16 0, i16 36, i16 0] }, %struct.state_rt { i16 11, [4 x i16] [i16 36, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 36, i16 36, i16 37, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 37, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 37, i16 37, i16 37, i16 37] }, %struct.state_rt { i16 0, [4 x i16] [i16 37, i16 36, i16 36, i16 36] }, %struct.state_rt { i16 0, [4 x i16] [i16 37, i16 38, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 38, i16 39, i16 40, i16 41] }, %struct.state_rt { i16 0, [4 x i16] [i16 41, i16 42, i16 43, i16 44] }, %struct.state_rt { i16 0, [4 x i16] [i16 44, i16 45, i16 46, i16 43] }, %struct.state_rt { i16 0, [4 x i16] [i16 42, i16 46, i16 41, i16 42] }, %struct.state_rt { i16 0, [4 x i16] [i16 46, i16 47, i16 48, i16 47] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 46, i16 47, i16 46] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 45, i16 46, i16 45] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 48, i16 49, i16 48] }, %struct.state_rt { i16 0, [4 x i16] [i16 49, i16 50, i16 51, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 52, i16 50, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 53, i16 49, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 48, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 53, i16 54, i16 55] }, %struct.state_rt { i16 0, [4 x i16] [i16 55, i16 54, i16 54, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 55, i16 56, i16 56, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 55, i16 37, i16 56, i16 37] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 36, i16 55, i16 36] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 35, i16 54, i16 35] }, %struct.state_rt { i16 0, [4 x i16] [i16 34, i16 34, i16 53, i16 34] }, %struct.state_rt { i16 0, [4 x i16] [i16 55, i16 56, i16 57, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 0, i16 56, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 0, i16 55, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 54, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 57, i16 58, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 58, i16 59, i16 58, i16 58] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 62, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 64, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 66, i16 67] }, %struct.state_rt { i16 0, [4 x i16] [i16 67, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 67, i16 67, i16 67, i16 68] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 68, i16 59] }, %struct.state_rt { i16 0, [4 x i16] [i16 58, i16 58, i16 68, i16 58] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 63, i16 67] }, %struct.state_rt { i16 0, [4 x i16] [i16 67, i16 55, i16 56, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 54, i16 64, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 54, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 66, i16 67, i16 68] }, %struct.state_rt { i16 0, [4 x i16] [i16 68, i16 69, i16 69, i16 69] }, %struct.state_rt { i16 0, [4 x i16] [i16 69, i16 68, i16 70, i16 68] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 63, i16 63, i16 70] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 68, i16 64, i16 66, i16 64] }, %struct.state_rt { i16 0, [4 x i16] [i16 68, i16 68, i16 69, i16 70] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 70, i16 71] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 71, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 71, i16 71, i16 72, i16 73] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 67, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 69, i16 69, i16 70, i16 72] }, %struct.state_rt { i16 0, [4 x i16] [i16 72, i16 0, i16 65, i16 66] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 72] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 72] }, %struct.state_rt { i16 0, [4 x i16] [i16 72, i16 72, i16 73, i16 74] }, %struct.state_rt { i16 0, [4 x i16] [i16 35, i16 35, i16 35, i16 74] }, %struct.state_rt { i16 0, [4 x i16] [i16 74, i16 74, i16 74, i16 75] }, %struct.state_rt { i16 0, [4 x i16] [i16 33, i16 33, i16 33, i16 75] }, %struct.state_rt { i16 0, [4 x i16] [i16 75, i16 76, i16 32, i16 74] }, %struct.state_rt { i16 0, [4 x i16] [i16 76, i16 76, i16 77, i16 78] }, %struct.state_rt { i16 0, [4 x i16] [i16 76, i16 76, i16 76, i16 77] }, %struct.state_rt { i16 0, [4 x i16] [i16 77, i16 77, i16 78, i16 78] }, %struct.state_rt { i16 0, [4 x i16] [i16 46, i16 46, i16 46, i16 78] }, %struct.state_rt { i16 0, [4 x i16] [i16 78, i16 78, i16 79, i16 45] }, %struct.state_rt { i16 0, [4 x i16] [i16 77, i16 77, i16 44, i16 44] }, %struct.state_rt { i16 0, [4 x i16] [i16 78, i16 78, i16 79, i16 79] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 79] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 79] }, %struct.state_rt { i16 0, [4 x i16] [i16 79, i16 79, i16 80, i16 80] }, %struct.state_rt { i16 0, [4 x i16] [i16 80, i16 81, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 81, i16 82, i16 83, i16 82] }, %struct.state_rt { i16 0, [4 x i16] [i16 81, i16 81, i16 82, i16 81] }, %struct.state_rt { i16 0, [4 x i16] [i16 82, i16 82, i16 83, i16 82] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 83, i16 84, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 82, i16 82, i16 83, i16 84] }, %struct.state_rt { i16 0, [4 x i16] [i16 84, i16 0, i16 85, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 84, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 82, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 83, i16 83, i16 83] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 83, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 83, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 83, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 83, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 82, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 84, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 84, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 84, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 84, i16 85, i16 86, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 84, i16 86, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 86, i16 87, i16 88, i16 89] }, %struct.state_rt { i16 0, [4 x i16] [i16 89, i16 0, i16 90, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 90, i16 0, i16 89, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 87, i16 0, i16 90, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 90, i16 91, i16 92, i16 91] }, %struct.state_rt { i16 0, [4 x i16] [i16 92, i16 90, i16 93, i16 90] }, %struct.state_rt { i16 0, [4 x i16] [i16 88, i16 89, i16 93, i16 89] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 0, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 82, i16 93, i16 83, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 93, i16 94, i16 95, i16 96] }, %struct.state_rt { i16 0, [4 x i16] [i16 82, i16 0, i16 96, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 96, i16 0, i16 97, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 78, i16 89, i16 81, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 77, i16 0, i16 96, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 76, i16 96, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 75, i16 86, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 74, i16 85, i16 95, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 95, i16 96, i16 72, i16 72] }, %struct.state_rt { i16 0, [4 x i16] [i16 72, i16 96, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 71, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 70, i16 94, i16 95, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 86, i16 0, i16 95, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 80, i16 81, i16 83, i16 83] }, %struct.state_rt { i16 0, [4 x i16] [i16 67, i16 0, i16 92, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 93, i16 59, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 93, i16 58, i16 94, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 94, i16 61, i16 95, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 95, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 95, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 95, i16 0, i16 87, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 71, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 91, i16 70, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 73, i16 71, i16 73, i16 73] }, %struct.state_rt { i16 0, [4 x i16] [i16 92, i16 68, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 92, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 54, i16 54, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 69, i16 69, i16 69, i16 69] }, %struct.state_rt { i16 0, [4 x i16] [i16 90, i16 91, i16 92, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 92, i16 90, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 91, i16 89, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 0, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 54, i16 93, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 53, i16 93, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 0, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 93, i16 0, i16 94, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 92, i16 0, i16 94, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 91, i16 0, i16 94, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 43, i16 0, i16 94, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 42, i16 0, i16 94, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 78, i16 79, i16 94, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 80, i16 78, i16 78, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 39, i16 0, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 85, i16 0, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 37, i16 0, i16 93, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 89, i16 74, i16 89, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 73, i16 73, i16 73, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 91, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 91, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 87, i16 91, i16 87, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 90, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 85, i16 0, i16 90, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 84, i16 0, i16 84, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 89, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 89, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 89, i16 0, i16 88, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 30, i16 30, i16 89, i16 30] }, %struct.state_rt { i16 0, [4 x i16] [i16 89, i16 29, i16 88, i16 29] }, %struct.state_rt { i16 0, [4 x i16] [i16 89, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 89, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 89, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 89, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 82, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 87, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 87, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 87, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 4, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 86, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 85, i16 86, i16 0, i16 0] }, %struct.state_rt { i16 4, [4 x i16] [i16 86, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 85, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 85, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 85, i16 86, i16 86, i16 86] }, %struct.state_rt { i16 0, [4 x i16] [i16 86, i16 0, i16 87, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 85, i16 0, i16 87, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 84, i16 0, i16 87, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 87, i16 82, i16 82, i16 82] }, %struct.state_rt { i16 0, [4 x i16] [i16 87, i16 0, i16 83, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 87, i16 88, i16 83, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 88, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 78, i16 78, i16 78, i16 78] }, %struct.state_rt { i16 15, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 76, i16 76, i16 86, i16 76] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 83, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 85, i16 85, i16 85, i16 85] }, %struct.state_rt { i16 0, [4 x i16] [i16 85, i16 85, i16 85, i16 85] }, %struct.state_rt { i16 15, [4 x i16] [i16 84, i16 84, i16 84, i16 84] }, %struct.state_rt { i16 0, [4 x i16] [i16 84, i16 82, i16 82, i16 82] }, %struct.state_rt { i16 15, [4 x i16] [i16 84, i16 82, i16 82, i16 82] }, %struct.state_rt { i16 15, [4 x i16] [i16 81, i16 84, i16 81, i16 81] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 0, i16 0, i16 84] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 69, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 66, i16 66, i16 66] }, %struct.state_rt { i16 0, [4 x i16] [i16 83, i16 0, i16 67, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 82, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 81, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 0, i16 81, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 81, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 15, [4 x i16] [i16 81, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 81, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 81, i16 81, i16 82, i16 81] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 82, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 82, i16 56, i16 56, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 64, i16 0, i16 57, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 77, i16 77, i16 77, i16 77] }, %struct.state_rt { i16 0, [4 x i16] [i16 80, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 73, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 0, i16 78, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 0, i16 74, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 77, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 74, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 75, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 0, i16 72, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 74, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 64, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 41, i16 41, i16 73, i16 41] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 73, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 0, i16 73, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 38, i16 38, i16 73, i16 38] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 0, i16 70, i16 0] }, %struct.state_rt { i16 38, [4 x i16] [i16 0, i16 0, i16 69, i16 0] }, %struct.state_rt { i16 38, [4 x i16] [i16 71, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 71, i16 71, i16 71, i16 46] }, %struct.state_rt { i16 38, [4 x i16] [i16 45, i16 45, i16 45, i16 45] }, %struct.state_rt { i16 38, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 31, i16 31, i16 69, i16 31] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 0, i16 69, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 0, i16 0, i16 69, i16 0] }, %struct.state_rt { i16 15, [4 x i16] [i16 69, i16 69, i16 70, i16 69] }, %struct.state_rt { i16 15, [4 x i16] [i16 68, i16 68, i16 68, i16 68] }, %struct.state_rt { i16 38, [4 x i16] [i16 67, i16 67, i16 67, i16 67] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 67, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 66, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 66, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 64, i16 64, i16 64, i16 64] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 65, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 66, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 66, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 63, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 65, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 66, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 66, i16 66, i16 67, i16 66] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 64, i16 64, i16 66, i16 64] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 66, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 66, i16 66, i16 66, i16 66] }, %struct.state_rt { i16 0, [4 x i16] [i16 66, i16 0, i16 67, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 67, i16 55, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 66, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 66, i16 67, i16 68, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 66, i16 65, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 63, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 66, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 66, i16 66, i16 67, i16 66] }, %struct.state_rt { i16 0, [4 x i16] [i16 65, i16 65, i16 65, i16 65] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 66] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 58, i16 58, i16 58, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 64, i16 64, i16 64, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 64] }, %struct.state_rt { i16 0, [4 x i16] [i16 43, i16 43, i16 43, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 63, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 49, i16 49, i16 63, i16 49] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 63, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 42, i16 42, i16 42] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 0, i16 63, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 64, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 64, i16 64, i16 64, i16 64] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 63, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 63, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 63, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 64, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 63, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 63, i16 59] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 63, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 63, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 63, i16 63] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 63, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 63, i16 64, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 64, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 27, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 26, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 56, i16 56, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 62, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 62, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 63, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 63, i16 59] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 63, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 45, i16 45, i16 45, i16 45] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 62, i16 40] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 63, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 64, i16 63, i16 30] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 64, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 28, i16 64, i16 28, i16 28] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 64, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 40, i16 64, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 56, i16 56, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 24] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 62, i16 54, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 52, i16 52, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 63, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 63, i16 61, i16 64, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 64, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 63, i16 0, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 63, i16 54, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 62, i16 53, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 60, i16 62, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 62, i16 62, i16 62] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 63, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 62, i16 61, i16 33] }, %struct.state_rt { i16 0, [4 x i16] [i16 62, i16 0, i16 62, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 54, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 60, i16 59] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 51, i16 51, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 59, i16 59, i16 59] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 40, i16 40, i16 40] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 40, i16 0, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 59, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 28, i16 28, i16 59, i16 28] }, %struct.state_rt { i16 0, [4 x i16] [i16 27, i16 27, i16 59, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 59, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 59, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 59, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 59, i16 59, i16 60, i16 59] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 0, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 58, i16 60, i16 58] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 61, i16 61, i16 61] }, %struct.state_rt { i16 0, [4 x i16] [i16 61, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 61, i16 0] }, %struct.state_rt { i16 16, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 60, i16 60, i16 60, i16 60] }, %struct.state_rt { i16 18, [4 x i16] [i16 59, i16 59, i16 59, i16 59] }, %struct.state_rt { i16 16, [4 x i16] [i16 58, i16 58, i16 58, i16 58] }, %struct.state_rt { i16 19, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 56, i16 56, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 41, i16 41, i16 41] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 57] }, %struct.state_rt { i16 0, [4 x i16] [i16 57, i16 57, i16 57, i16 57] }, %struct.state_rt { i16 18, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 56, i16 56, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 56, i16 56, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 56, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 0, i16 0, i16 55] }, %struct.state_rt { i16 0, [4 x i16] [i16 30, i16 30, i16 30, i16 56] }, %struct.state_rt { i16 0, [4 x i16] [i16 56, i16 29, i16 29, i16 55] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 27, i16 27, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 54, i16 54, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 54, i16 54, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 54, i16 54, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 54] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 54, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 54, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 54, i16 54, i16 54, i16 54] }, %struct.state_rt { i16 47, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 51, i16 51, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 47, i16 47, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 43, i16 43, i16 43, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 39, i16 39, i16 39, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 36, i16 36, i16 36, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 51, i16 51, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 53, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 48, i16 48, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 44, i16 44, i16 44] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 53, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 53, i16 51, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 40, i16 53, i16 40, i16 40] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 53, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 37, i16 37, i16 37, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 53, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 27, i16 53, i16 27] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 46, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 52, i16 53, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 40, i16 53, i16 40, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 53] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 51, i16 51, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 53, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 53, i16 53, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 53, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 50, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 52, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 47, i16 47, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 52, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 43, i16 43, i16 52, i16 43] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 52, i16 52, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 52, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 52, i16 50, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 39, i16 52, i16 39, i16 39] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 36, i16 36, i16 36, i16 52] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 52, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 52, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 30, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 51, i16 51, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 51, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 51, i16 51, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 51, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 51, i16 51, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 51] }, %struct.state_rt { i16 0, [4 x i16] [i16 51, i16 51, i16 51, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 51, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 44, i16 50, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 49, i16 50, i16 49, i16 49] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 50, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 50, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 50, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 48, i16 50, i16 48] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 50] }, %struct.state_rt { i16 0, [4 x i16] [i16 50, i16 50, i16 50, i16 50] }, %struct.state_rt { i16 2, [4 x i16] zeroinitializer }, %struct.state_rt { i16 3, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 48, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 0, i16 48, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 0, i16 48, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 48, i16 48, i16 48] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 48, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 48, i16 46, i16 46] }, %struct.state_rt { i16 0, [4 x i16] [i16 48, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 17, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 47, i16 47, i16 47] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 47, i16 46, i16 46] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 47, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 39, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 47, i16 47, i16 47, i16 47] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 47, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 45, i16 45, i16 47, i16 45] }, %struct.state_rt { i16 0, [4 x i16] [i16 35, i16 35, i16 45, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 46, i16 0, i16 46, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 46, i16 46, i16 46, i16 46] }, %struct.state_rt { i16 0, [4 x i16] [i16 46, i16 46, i16 45, i16 45] }, %struct.state_rt { i16 28, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 45, i16 0] }, %struct.state_rt { i16 31, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 44, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 44, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 44, i16 0, i16 44, i16 0] }, %struct.state_rt { i16 35, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 43, i16 43, i16 43, i16 43] }, %struct.state_rt { i16 35, [4 x i16] [i16 23, i16 23, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 42, i16 42, i16 41, i16 41] }, %struct.state_rt { i16 0, [4 x i16] [i16 42, i16 42, i16 42, i16 42] }, %struct.state_rt { i16 0, [4 x i16] [i16 42, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 41, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 41, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 35, [4 x i16] [i16 40, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 40, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 40, i16 40, i16 40, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 40, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 48, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 39, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 39, i16 0, i16 39, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 38, i16 37, i16 38, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 38, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 38, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 38, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 38, i16 0, i16 38, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 38, i16 38, i16 38, i16 38] }, %struct.state_rt { i16 6, [4 x i16] zeroinitializer }, %struct.state_rt { i16 7, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 36, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 36, i16 0] }, %struct.state_rt { i16 13, [4 x i16] zeroinitializer }, %struct.state_rt { i16 13, [4 x i16] [i16 0, i16 0, i16 34, i16 0] }, %struct.state_rt { i16 14, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 33, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 13, [4 x i16] [i16 32, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 32] }, %struct.state_rt { i16 0, [4 x i16] [i16 32, i16 32, i16 32, i16 32] }, %struct.state_rt { i16 0, [4 x i16] [i16 32, i16 32, i16 32, i16 32] }, %struct.state_rt { i16 13, [4 x i16] [i16 31, i16 31, i16 31, i16 31] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 31] }, %struct.state_rt { i16 0, [4 x i16] [i16 31, i16 31, i16 31, i16 31] }, %struct.state_rt { i16 0, [4 x i16] [i16 30, i16 30, i16 30, i16 31] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 31] }, %struct.state_rt { i16 0, [4 x i16] [i16 31, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 13, [4 x i16] [i16 30, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 30] }, %struct.state_rt { i16 32, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 29, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 29] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 29, i16 0] }, %struct.state_rt { i16 13, [4 x i16] [i16 0, i16 0, i16 28, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 28] }, %struct.state_rt { i16 0, [4 x i16] [i16 28, i16 28, i16 28, i16 28] }, %struct.state_rt { i16 42, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 27, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 27, i16 0] }, %struct.state_rt { i16 46, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 26, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 0, i16 26, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 26, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 26, i16 26, i16 26, i16 26] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 26] }, %struct.state_rt { i16 43, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 25, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 25, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 25, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 24, i16 24, i16 24] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 25, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 25, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 0, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 0, i16 25, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 25, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 0, [4 x i16] [i16 25, i16 25, i16 25, i16 25] }, %struct.state_rt { i16 24, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 24, i16 24, i16 24, i16 24] }, %struct.state_rt { i16 24, [4 x i16] [i16 23, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 23, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 23, i16 23, i16 23] }, %struct.state_rt { i16 0, [4 x i16] [i16 23, i16 0, i16 23, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 23, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 23, i16 0] }, %struct.state_rt { i16 49, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 22, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 0, [4 x i16] [i16 22, i16 22, i16 22, i16 22] }, %struct.state_rt { i16 45, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 0, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 21] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 21, i16 21, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 21, i16 0, i16 21, i16 0] }, %struct.state_rt { i16 21, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 20, i16 20, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 20, i16 20, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 20, i16 20, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 20, i16 0, i16 20, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 20] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 20, i16 0, i16 0] }, %struct.state_rt { i16 34, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 19, i16 0] }, %struct.state_rt { i16 39, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 0, [4 x i16] [i16 18, i16 18, i16 18, i16 18] }, %struct.state_rt { i16 12, [4 x i16] zeroinitializer }, %struct.state_rt { i16 20, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 16, i16 16, i16 16, i16 16] }, %struct.state_rt { i16 0, [4 x i16] [i16 16, i16 16, i16 16, i16 16] }, %struct.state_rt { i16 0, [4 x i16] [i16 16, i16 16, i16 16, i16 16] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 16] }, %struct.state_rt { i16 27, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 15] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 15] }, %struct.state_rt { i16 36, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 14, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 14, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 14, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 14, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 14, i16 14, i16 14, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 14] }, %struct.state_rt { i16 23, [4 x i16] zeroinitializer }, %struct.state_rt { i16 25, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 12] }, %struct.state_rt { i16 29, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 11] }, %struct.state_rt { i16 0, [4 x i16] [i16 11, i16 11, i16 11, i16 11] }, %struct.state_rt { i16 50, [4 x i16] zeroinitializer }, %struct.state_rt { i16 51, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 9, i16 9, i16 9, i16 9] }, %struct.state_rt { i16 53, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 8, i16 8] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 0, i16 8, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 8, i16 8] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 8, i16 8] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 8] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 8] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 8, i16 8] }, %struct.state_rt { i16 0, [4 x i16] [i16 8, i16 8, i16 8, i16 8] }, %struct.state_rt { i16 8, [4 x i16] zeroinitializer }, %struct.state_rt { i16 22, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 6] }, %struct.state_rt { i16 0, [4 x i16] [i16 6, i16 6, i16 6, i16 6] }, %struct.state_rt { i16 5, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 5, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 5, i16 5, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 5, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 5, i16 5, i16 5, i16 5] }, %struct.state_rt { i16 26, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 4, i16 4, i16 4, i16 4] }, %struct.state_rt { i16 40, [4 x i16] zeroinitializer }, %struct.state_rt { i16 52, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 2, i16 0] }, %struct.state_rt { i16 0, [4 x i16] [i16 2, i16 2, i16 2, i16 2] }, %struct.state_rt { i16 33, [4 x i16] zeroinitializer }, %struct.state_rt { i16 0, [4 x i16] [i16 1, i16 1, i16 1, i16 1] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 1] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 1] }, %struct.state_rt { i16 0, [4 x i16] [i16 0, i16 0, i16 0, i16 1] }, %struct.state_rt { i16 0, [4 x i16] [i16 1, i16 1, i16 1, i16 1] }, %struct.state_rt { i16 0, [4 x i16] [i16 1, i16 0, i16 0, i16 0] }, %struct.state_rt { i16 1, [4 x i16] zeroinitializer }], align 16
@idx_owl_vital_apat = internal constant [55 x %struct.attrib_rt] [%struct.attrib_rt { i16 -1, i16 0 }, %struct.attrib_rt { i16 22, i16 0 }, %struct.attrib_rt { i16 20, i16 0 }, %struct.attrib_rt { i16 34, i16 0 }, %struct.attrib_rt { i16 47, i16 0 }, %struct.attrib_rt { i16 16, i16 0 }, %struct.attrib_rt { i16 29, i16 0 }, %struct.attrib_rt { i16 28, i16 0 }, %struct.attrib_rt { i16 10, i16 0 }, %struct.attrib_rt { i16 23, i16 0 }, %struct.attrib_rt { i16 8, i16 9 }, %struct.attrib_rt { i16 9, i16 10 }, %struct.attrib_rt { i16 15, i16 0 }, %struct.attrib_rt { i16 44, i16 0 }, %struct.attrib_rt { i16 46, i16 0 }, %struct.attrib_rt { i16 49, i16 0 }, %struct.attrib_rt zeroinitializer, %struct.attrib_rt { i16 42, i16 0 }, %struct.attrib_rt { i16 19, i16 0 }, %struct.attrib_rt { i16 19, i16 16 }, %struct.attrib_rt { i16 38, i16 0 }, %struct.attrib_rt { i16 1, i16 0 }, %struct.attrib_rt { i16 37, i16 0 }, %struct.attrib_rt { i16 18, i16 0 }, %struct.attrib_rt { i16 48, i16 0 }, %struct.attrib_rt { i16 27, i16 0 }, %struct.attrib_rt { i16 51, i16 0 }, %struct.attrib_rt { i16 21, i16 0 }, %struct.attrib_rt { i16 32, i16 0 }, %struct.attrib_rt { i16 3, i16 0 }, %struct.attrib_rt { i16 33, i16 0 }, %struct.attrib_rt { i16 41, i16 0 }, %struct.attrib_rt { i16 30, i16 0 }, %struct.attrib_rt { i16 2, i16 0 }, %struct.attrib_rt { i16 50, i16 0 }, %struct.attrib_rt { i16 4, i16 0 }, %struct.attrib_rt { i16 17, i16 0 }, %struct.attrib_rt { i16 45, i16 0 }, %struct.attrib_rt { i16 49, i16 37 }, %struct.attrib_rt { i16 6, i16 0 }, %struct.attrib_rt { i16 36, i16 0 }, %struct.attrib_rt { i16 24, i16 0 }, %struct.attrib_rt { i16 14, i16 0 }, %struct.attrib_rt { i16 5, i16 0 }, %struct.attrib_rt { i16 26, i16 0 }, %struct.attrib_rt { i16 25, i16 44 }, %struct.attrib_rt { i16 43, i16 0 }, %struct.attrib_rt { i16 39, i16 0 }, %struct.attrib_rt { i16 12, i16 0 }, %struct.attrib_rt { i16 7, i16 0 }, %struct.attrib_rt { i16 11, i16 0 }, %struct.attrib_rt { i16 35, i16 0 }, %struct.attrib_rt { i16 31, i16 0 }, %struct.attrib_rt { i16 40, i16 0 }, %struct.attrib_rt { i16 13, i16 0 }], align 16

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat0(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 609), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %A, align 4
  %17 = load i32, i32* %a, align 4
  %call = call i32 @countlib(i32 %17)
  %cmp = icmp sgt i32 %call, 2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %18 = load i32, i32* %b, align 4
  %19 = load i32, i32* %A, align 4
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom13
  %20 = load i8, i8* %arrayidx14, align 1
  %conv = zext i8 %20 to i32
  %call15 = call i32 @owl_topological_eye(i32 %18, i32 %conv)
  %cmp16 = icmp eq i32 %call15, 2
  br i1 %cmp16, label %land.lhs.true.18, label %land.end

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %21 = load i32, i32* %c, align 4
  %22 = load i32, i32* %A, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %23 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %23 to i32
  %call22 = call i32 @owl_topological_eye(i32 %21, i32 %conv21)
  %cmp23 = icmp eq i32 %call22, 2
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.18
  %24 = load i32, i32* %color.addr, align 4
  %25 = load i32, i32* %move.addr, align 4
  %26 = load i32, i32* %d, align 4
  %call25 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %24, i32 1, i32 1, i32 %25, i32 %26)
  %tobool = icmp ne i32 %call25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.18, %land.lhs.true, %entry
  %27 = phi i1 [ false, %land.lhs.true.18 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %27 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat1(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 682), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 795), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %B, align 4
  %8 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %8)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %9 = load i32, i32* %B, align 4
  %call4 = call i32 @countlib(i32 %9)
  %cmp5 = icmp eq i32 %call4, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat5(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 536), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %a, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp eq i32 %call, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat7(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load i32, i32* %move.addr, align 4
  %7 = load i32, i32* %color.addr, align 4
  %call1 = call i32 @accuratelib(i32 %6, i32 %7, i32 20, i32* null)
  %cmp2 = icmp sgt i32 %call1, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat8(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %move.addr, align 4
  %7 = load i32, i32* %color.addr, align 4
  %call1 = call i32 @accuratelib(i32 %6, i32 %7, i32 20, i32* null)
  %cmp2 = icmp sgt i32 %call1, 1
  br i1 %cmp2, label %land.lhs.true.3, label %land.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* %move.addr, align 4
  %call4 = call i32 @owl_big_eyespace(i32 %8)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.3
  %9 = load i32, i32* %move.addr, align 4
  %call5 = call i32 @owl_eye_size(i32 %9)
  %cmp6 = icmp sle i32 %call5, 8
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %10 = load i32, i32* %color.addr, align 4
  %11 = load i32, i32* %move.addr, align 4
  %12 = load i32, i32* %move.addr, align 4
  %call7 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %10, i32 1, i32 1, i32 %11, i32 %12)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %13 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true.3, %land.lhs.true, %entry
  %14 = phi i1 [ false, %land.lhs.true.3 ], [ false, %land.lhs.true ], [ false, %entry ], [ %13, %lor.end ]
  %land.ext = zext i1 %14 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat9(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %move.addr, align 4
  %7 = load i32, i32* %color.addr, align 4
  %call1 = call i32 @accuratelib(i32 %6, i32 %7, i32 20, i32* null)
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %land.lhs.true.3, label %land.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* %move.addr, align 4
  %call4 = call i32 @owl_big_eyespace(i32 %8)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.3
  %9 = load i32, i32* %color.addr, align 4
  %10 = load i32, i32* %move.addr, align 4
  %11 = load i32, i32* %move.addr, align 4
  %call5 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %9, i32 1, i32 1, i32 %10, i32 %11)
  %cmp6 = icmp ne i32 %call5, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.3, %land.lhs.true, %entry
  %12 = phi i1 [ false, %land.lhs.true.3 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat10(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 609), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %a, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 16
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %7 = load i32, i32* %arrayidx3, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.rhs, label %land.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %a, align 4
  %call = call i32 @attack(i32 %8, i32* null)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false, %cond.true
  %9 = load i32, i32* @stackp, align 4
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %cond.true.6, label %cond.false.10

cond.true.6:                                      ; preds = %land.rhs
  %10 = load i32, i32* %a, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom7
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx8, i32 0, i32 18
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %11 = load i32, i32* %arrayidx9, align 4
  br label %cond.end

cond.false.10:                                    ; preds = %land.rhs
  %12 = load i32, i32* %a, align 4
  %call11 = call i32 @find_defense(i32 %12, i32* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.6
  %cond = phi i32 [ %11, %cond.true.6 ], [ %call11, %cond.false.10 ]
  %tobool12 = icmp ne i32 %cond, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %cond.end, %cond.false, %cond.true
  %13 = phi i1 [ false, %cond.false ], [ false, %cond.true ], [ %lnot, %cond.end ]
  %land.ext = zext i1 %13 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat12(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %A, align 4
  %8 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %8)
  %cmp = icmp sle i32 %call, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %9 = load i32, i32* %color.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %a, align 4
  %call4 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %9, i32 1, i32 1, i32 %10, i32 %11)
  %tobool = icmp ne i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat13(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %D = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 757), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 719), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %D, align 4
  %14 = load i32, i32* %b, align 4
  %call = call i32 @countlib(i32 %14)
  %cmp = icmp sgt i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %15 = load i32, i32* %c, align 4
  %call10 = call i32 @countlib(i32 %15)
  %cmp11 = icmp sgt i32 %call10, 1
  br i1 %cmp11, label %land.lhs.true.12, label %land.end

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %16 = load i32, i32* %a, align 4
  %call13 = call i32 @owl_eyespace(i32 %16)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.12
  %17 = load i32, i32* @stackp, align 4
  %cmp14 = icmp eq i32 %17, 0
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %18 = load i32, i32* %D, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom15
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx16, i32 0, i32 16
  %arrayidx17 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %19 = load i32, i32* %arrayidx17, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %20 = load i32, i32* %D, align 4
  %call18 = call i32 @attack(i32 %20, i32* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %call18, %cond.false ]
  %tobool19 = icmp ne i32 %cond, 0
  %lnot = xor i1 %tobool19, true
  br label %land.end

land.end:                                         ; preds = %cond.end, %land.lhs.true.12, %land.lhs.true, %entry
  %21 = phi i1 [ false, %land.lhs.true.12 ], [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %cond.end ]
  %land.ext = zext i1 %21 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat14(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %b, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %c, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %d, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %A, align 4
  %14 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %14)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %15 = load i32, i32* %b, align 4
  %call10 = call i32 @countlib(i32 %15)
  %cmp11 = icmp sgt i32 %call10, 1
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %16 = load i32, i32* %color.addr, align 4
  %17 = load i32, i32* %move.addr, align 4
  %18 = load i32, i32* %c, align 4
  %19 = load i32, i32* %d, align 4
  %20 = load i32, i32* %d, align 4
  %call12 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %16, i32 1, i32 3, i32 %17, i32 %18, i32 %19, i32 %20)
  %tobool = icmp ne i32 %call12, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %21 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat15(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %trans.addr, align 4
  %1 = load i32, i32* %color.addr, align 4
  %2 = load i32, i32* %action.addr, align 4
  %3 = load i32, i32* %move.addr, align 4
  %4 = load i32, i32* %move.addr, align 4
  %call = call i32 @owl_eyespace(i32 %4)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat16(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %color.addr, align 4
  %6 = load i32, i32* %move.addr, align 4
  %7 = load i32, i32* %a, align 4
  %8 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %5, i32 1, i32 2, i32 %6, i32 %7, i32 %8)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat17(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %color.addr, align 4
  %6 = load i32, i32* %move.addr, align 4
  %7 = load i32, i32* %a, align 4
  %8 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %5, i32 1, i32 2, i32 %6, i32 %7, i32 %8)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat18(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load i32, i32* %move.addr, align 4
  %call1 = call i32 @owl_big_eyespace(i32 %6)
  %tobool = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %7 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat19(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %C = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %C, align 4
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %C, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %13 = load i8, i8* %arrayidx8, align 1
  %conv = zext i8 %13 to i32
  %call = call i32 @owl_topological_eye(i32 %11, i32 %conv)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %C, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %16 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %16 to i32
  %call13 = call i32 @owl_topological_eye(i32 %14, i32 %conv12)
  %cmp14 = icmp eq i32 %call13, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %17 = phi i1 [ false, %entry ], [ %cmp14, %land.rhs ]
  %land.ext = zext i1 %17 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat20(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %a, align 4
  %call = call i32 @owl_big_eyespace(i32 %5)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat21(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %B = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %B, align 4
  %8 = load i32, i32* %move.addr, align 4
  %call = call i32 @owl_big_eyespace(i32 %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %9 = load i32, i32* %color.addr, align 4
  %10 = load i32, i32* %move.addr, align 4
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %B, align 4
  %call4 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %9, i32 1, i32 2, i32 %10, i32 %11, i32 %12)
  %tobool5 = icmp ne i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %13 = phi i1 [ false, %entry ], [ %tobool5, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat22(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %move.addr, align 4
  %call = call i32 @owl_big_eyespace(i32 %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %12 = load i32, i32* %color.addr, align 4
  %13 = load i32, i32* %move.addr, align 4
  %14 = load i32, i32* %a, align 4
  %15 = load i32, i32* %b, align 4
  %16 = load i32, i32* %c, align 4
  %17 = load i32, i32* %a, align 4
  %call7 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %12, i32 1, i32 4, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %tobool8 = icmp ne i32 %call7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %18 = phi i1 [ false, %entry ], [ %tobool8, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat23(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %move.addr, align 4
  %call1 = call i32 @owl_eyespace(i32 %6)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* %move.addr, align 4
  %8 = load i32, i32* %color.addr, align 4
  %call2 = call i32 @accuratelib(i32 %7, i32 %8, i32 20, i32* null)
  %cmp3 = icmp sgt i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %9 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp3, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat27(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %B, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %A, align 4
  %10 = load i32, i32* %B, align 4
  %call = call i32 (i32, i32, i32, ...) @somewhere(i32 %sub, i32 0, i32 2, i32 %9, i32 %10)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat28(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 757), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 795), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %B, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %A, align 4
  %10 = load i32, i32* %B, align 4
  %call = call i32 (i32, i32, i32, ...) @somewhere(i32 %sub, i32 0, i32 2, i32 %9, i32 %10)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat30(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %C = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %C, align 4
  %11 = load i32, i32* %C, align 4
  %call = call i32 @countlib(i32 %11)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %12 = load i32, i32* %a, align 4
  %call7 = call i32 @owl_eyespace(i32 %12)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %13 = load i32, i32* %color.addr, align 4
  %14 = load i32, i32* %move.addr, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %b, align 4
  %call8 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %13, i32 1, i32 3, i32 %14, i32 %15, i32 %16, i32 %17)
  %cmp9 = icmp ne i32 %call8, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %18 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp9, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat34(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %color.addr, align 4
  %6 = load i32, i32* %move.addr, align 4
  %7 = load i32, i32* %A, align 4
  %8 = load i32, i32* %move.addr, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %5, i32 0, i32 1, i32 %6, i32 %7, i32 %8)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat35(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %A, align 4
  %6 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %6
  %call = call i32 @accuratelib(i32 %5, i32 %sub, i32 20, i32* null)
  %cmp = icmp eq i32 %call, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat37(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 536), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp sgt i32 %call, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat38(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %move.addr, align 4
  %call = call i32 @owl_big_eyespace(i32 %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load i32, i32* %color.addr, align 4
  %7 = load i32, i32* %move.addr, align 4
  %8 = load i32, i32* %A, align 4
  %call1 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %6, i32 0, i32 1, i32 %7, i32 %8)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %9 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat39(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %A, align 4
  %call = call i32 @owl_eyespace(i32 %5)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat40(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp eq i32 %call, 3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat41(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %B, align 4
  %8 = load i32, i32* %A, align 4
  %call = call i32 @countlib(i32 %8)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %9 = load i32, i32* %B, align 4
  %call4 = call i32 @countlib(i32 %9)
  %cmp5 = icmp eq i32 %call4, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %10 = phi i1 [ true, %entry ], [ %cmp5, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat42(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %D = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %b, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %c, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 650), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %D, align 4
  %11 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load i32, i32* %D, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom7
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx8, i32 0, i32 16
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %13 = load i32, i32* %arrayidx9, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %D, align 4
  %call = call i32 @attack(i32 %14, i32* null)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %15 = load i32, i32* %color.addr, align 4
  %16 = load i32, i32* %move.addr, align 4
  %17 = load i32, i32* %b, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %15, i32 1, i32 1, i32 %16, i32 %17)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %18 = load i32, i32* %color.addr, align 4
  %19 = load i32, i32* %move.addr, align 4
  %20 = load i32, i32* %c, align 4
  %call13 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %18, i32 1, i32 1, i32 %19, i32 %20)
  %tobool14 = icmp ne i32 %call13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %cond.false, %cond.true
  %21 = phi i1 [ false, %land.lhs.true ], [ false, %cond.false ], [ false, %cond.true ], [ %tobool14, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat43(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %b, align 4
  %12 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %8, i32 1, i32 3, i32 %9, i32 %10, i32 %11, i32 %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %13 = load i32, i32* %color.addr, align 4
  %14 = load i32, i32* %move.addr, align 4
  %15 = load i32, i32* %b, align 4
  %16 = load i32, i32* %a, align 4
  %17 = load i32, i32* %a, align 4
  %call4 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %13, i32 1, i32 3, i32 %14, i32 %15, i32 %16, i32 %17)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %18 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat44(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %move.addr, align 4
  %call = call i32 @owl_proper_eye(i32 %11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %12 = load i32, i32* %a, align 4
  %call7 = call i32 @owl_proper_eye(i32 %12)
  %13 = load i32, i32* %b, align 4
  %call8 = call i32 @owl_proper_eye(i32 %13)
  %add9 = add nsw i32 %call7, %call8
  %14 = load i32, i32* %c, align 4
  %call10 = call i32 @owl_proper_eye(i32 %14)
  %add11 = add nsw i32 %add9, %call10
  %cmp = icmp sgt i32 %add11, 2
  br i1 %cmp, label %land.lhs.true.12, label %land.end

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %15 = load i32, i32* %move.addr, align 4
  %16 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %16
  %call13 = call i32 @safe_move(i32 %15, i32 %sub)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.12
  %17 = load i32, i32* %move.addr, align 4
  %call15 = call i32 @owl_eye_size(i32 %17)
  %cmp16 = icmp sle i32 %call15, 8
  br i1 %cmp16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %18 = load i32, i32* %color.addr, align 4
  %19 = load i32, i32* %move.addr, align 4
  %20 = load i32, i32* %move.addr, align 4
  %call17 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %18, i32 1, i32 1, i32 %19, i32 %20)
  %tobool18 = icmp ne i32 %call17, 0
  %lnot = xor i1 %tobool18, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %21 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true.12, %land.lhs.true, %entry
  %22 = phi i1 [ false, %land.lhs.true.12 ], [ false, %land.lhs.true ], [ false, %entry ], [ %21, %lor.end ]
  %land.ext = zext i1 %22 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat45(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %trans.addr, align 4
  %1 = load i32, i32* %color.addr, align 4
  %2 = load i32, i32* %action.addr, align 4
  %3 = load i32, i32* %move.addr, align 4
  %4 = load i32, i32* %move.addr, align 4
  %call = call i32 @is_ko_point(i32 %4)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat46(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %b = alloca i32, align 4
  %A = alloca i32, align 4
  %C = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 572), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %b, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %A, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 535), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %C, align 4
  %11 = load i32, i32* %A, align 4
  %12 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %12
  %call = call i32 @accuratelib(i32 %11, i32 %sub, i32 20, i32* null)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, i32* %A, align 4
  %14 = load i32, i32* %color.addr, align 4
  %call7 = call i32 @accuratelib(i32 %13, i32 %14, i32 20, i32* null)
  %cmp8 = icmp eq i32 %call7, 1
  br i1 %cmp8, label %land.lhs.true.9, label %land.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %15 = load i32, i32* %b, align 4
  %16 = load i32, i32* %C, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %17 = load i8, i8* %arrayidx11, align 1
  %conv = zext i8 %17 to i32
  %call12 = call i32 @owl_topological_eye(i32 %15, i32 %conv)
  %cmp13 = icmp slt i32 %call12, 4
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.9
  %18 = load i32, i32* %b, align 4
  %19 = load i32, i32* %C, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom15
  %20 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %20 to i32
  %call18 = call i32 @owl_topological_eye(i32 %18, i32 %conv17)
  %cmp19 = icmp sgt i32 %call18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.9, %land.lhs.true, %entry
  %21 = phi i1 [ false, %land.lhs.true.9 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp19, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat47(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %a, align 4
  %call = call i32 @vital_chain(i32 %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* %b, align 4
  %call4 = call i32 @vital_chain(i32 %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %10 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %10
  %11 = load i32, i32* %move.addr, align 4
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %call6 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 0, i32 1, i32 %11, i32 %12, i32 %13)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperowl_vital_apat49(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %B, align 4
  %8 = load i32, i32* %B, align 4
  %call = call i32 @countlib(i32 %8)
  %cmp = icmp sle i32 %call, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %9 = load i32, i32* %A, align 4
  %call4 = call i32 @owl_eyespace(i32 %9)
  %tobool = icmp ne i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  ret i32 %land.ext
}

declare i32 @countlib(i32) #1

declare i32 @owl_topological_eye(i32, i32) #1

declare i32 @play_attack_defend_n(i32, i32, i32, ...) #1

declare i32 @accuratelib(i32, i32, i32, i32*) #1

declare i32 @owl_big_eyespace(i32) #1

declare i32 @owl_eye_size(i32) #1

declare i32 @attack(i32, i32*) #1

declare i32 @find_defense(i32, i32*) #1

declare i32 @owl_eyespace(i32) #1

declare i32 @somewhere(i32, i32, i32, ...) #1

declare i32 @play_attack_defend2_n(i32, i32, i32, ...) #1

declare i32 @owl_proper_eye(i32) #1

declare i32 @safe_move(i32, i32) #1

declare i32 @is_ko_point(i32) #1

declare i32 @vital_chain(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
