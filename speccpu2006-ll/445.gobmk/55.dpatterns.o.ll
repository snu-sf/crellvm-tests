; ModuleID = 'patterns/dpatterns.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.dfa_rt = type opaque
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }

@defpat = internal global [33 x %struct.pattern] [%struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @defpat0, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 720, [8 x i32] [i32 1010040832, i32 3939328, i32 7401472, i32 -789577728, i32 473694208, i32 3423232, i32 15781888, i32 -261095424], [8 x i32] [i32 537919488, i32 1572864, i32 1056768, i32 9437184, i32 1572864, i32 1056768, i32 9437184, i32 537919488], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperdefpat0, i32 0, float 0x3FA99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @defpat1, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 758, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1052672, i32 5242880, i32 269484032, i32 1310720, i32 5242880, i32 269484032, i32 1310720, i32 1052672], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperdefpat1, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @defpat2, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 0, i32 723, [8 x i32] [i32 16580604, i32 -252645184, i32 -50593792, i32 1061109504, i32 -252645376, i32 -262144, i32 1061109516, i32 16579836], [8 x i32] [i32 9723968, i32 1620054016, i32 609746944, i32 270017792, i32 277897216, i32 1620312064, i32 622333952, i32 5776388], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @defpat3, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 2, i32 722, [8 x i32] [i32 4079423, i32 15790304, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061027840, i32 4144943, i32 15790320], [8 x i32] [i32 1576960, i32 5251072, i32 277872640, i32 538181632, i32 542113792, i32 270008320, i32 1318912, i32 9441280], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @defpat4, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 2, i32 759, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1708032, i32 5251104, i32 277872640, i32 538181632, i32 542113792, i32 270139392, i32 1318944, i32 9441280], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @defpat5, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 758, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1574400, i32 1073280, i32 1083179008, i32 605028352, i32 1611661312, i32 102236160, i32 1057800, i32 9453568], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @defpat6, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 648, [8 x i32] [i32 15793200, i32 -252657664, i32 -63176704, i32 205470720, i32 -1057951744, i32 -51380224, i32 1010764800, i32 3996720], [8 x i32] [i32 9438208, i32 537935872, i32 1075314688, i32 68165632, i32 1074798592, i32 76546048, i32 537920512, i32 1589248], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @defpat7, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 0, i32 721, [8 x i32] [i32 4177727, i32 -2131693328, i32 -118489088, i32 1061095424, i32 -252674048, i32 -1086390272, i32 138362687, i32 15792368], [8 x i32] [i32 1181970, i32 1081440, i32 -2146435072, i32 135331840, i32 -2146435072, i32 152174592, i32 1116198, i32 1081360], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([15 x %struct.patval], [15 x %struct.patval]* @defpat8, i32 0, i32 0), i32 15, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 -3, i32 3, i32 1, i32 3, i32 4, i32 1, i32 574, [8 x i32] [i32 15793392, i32 -252657664, i32 -12648448, i32 205471551, i32 -1057951504, i32 -51380224, i32 1061096448, i32 4194111], [8 x i32] [i32 1074208, i32 1083195392, i32 1678770176, i32 68813825, i32 1083195392, i32 1678770176, i32 68813824, i32 1074209], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @defpat9, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 3, i32 3, i32 3, i32 9, i32 720, [8 x i32] [i32 1044266812, i32 16579816, i32 -252645376, i32 -65536, i32 -50593792, i32 1061043712, i32 16777132, i32 -252645136], [8 x i32] [i32 1058088, i32 9453632, i32 1611661312, i32 102367232, i32 1083179008, i32 621805568, i32 1705476, i32 1073312], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([14 x %struct.patval], [14 x %struct.patval]* @defpat10, i32 0, i32 0), i32 14, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 -1, i32 4, i32 1, i32 4, i32 2, i32 8, i32 650, [8 x i32] [i32 12385532, i32 -521080832, i32 -50855936, i32 1061105408, i32 -252649472, i32 -54788096, i32 792674048, i32 16317692], [8 x i32] [i32 1318936, i32 9441280, i32 542113792, i32 303628288, i32 277872640, i32 538181632, i32 1643008, i32 5251216], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperdefpat10, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @defpat11, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 0, i32 3, i32 2, i32 0, i32 686, [8 x i32] [i32 15790320, i32 -252706816, i32 1010565120, i32 4144899, i32 15790080, i32 -252706816, i32 1061093376, i32 3947583], [8 x i32] [i32 9461760, i32 1620049920, i32 605552640, i32 1582080, i32 9461760, i32 1620049920, i32 605552640, i32 1582080], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @defpat12, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 759, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1118208, i32 5242896, i32 269484032, i32 1310720, i32 5242880, i32 269549568, i32 1310736, i32 1052672], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @defpat13, i32 0, i32 0), i32 5, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 3202096, i32 -1066352640, i32 -600834048, i32 204934144, i32 -1066352640, i32 -600834048, i32 204934144, i32 3202096], [8 x i32] [i32 1064976, i32 1074790400, i32 68157440, i32 1115136, i32 1064960, i32 1074790400, i32 68222976, i32 1049616], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @defpat14, i32 0, i32 0), i32 11, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 -1, i32 -1, i32 3, i32 1, i32 4, i32 2, i32 0, i32 686, [8 x i32] [i32 821886204, i32 -251858944, i32 -50581504, i32 1073692416, i32 -251858944, i32 -50581504, i32 1073692416, i32 821886204], [8 x i32] [i32 537919488, i32 1572864, i32 1056768, i32 9437184, i32 1572864, i32 1056768, i32 9437184, i32 537919488], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([17 x %struct.patval], [17 x %struct.patval]* @defpat15, i32 0, i32 0), i32 17, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 5, i32 3, i32 5, i32 2, i32 795, [8 x i32] [i32 205471535, i32 15793392, i32 -252657664, i32 -12713984, i32 -51380224, i32 1061096448, i32 4128575, i32 -1057951520], [8 x i32] [i32 135270400, i32 5244928, i32 269516800, i32 -2146172928, i32 139460608, i32 269486080, i32 1343488, i32 -2146430976], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([17 x %struct.patval], [17 x %struct.patval]* @defpat16, i32 0, i32 0), i32 17, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 2, i32 3, i32 4, i32 2, i32 721, [8 x i32] [i32 889192447, i32 -251857680, i32 -36864, i32 2147434303, i32 -184749840, i32 -52224, i32 1073708863, i32 1895825407], [8 x i32] [i32 546324480, i32 1612185600, i32 85598208, i32 9446436, i32 1597536, i32 1083187200, i32 613416960, i32 538576128], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @defpat17, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 2, i32 796, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1444096, i32 1085536, i32 -2142240768, i32 403701760, i32 -1877999616, i32 152436736, i32 1054756, i32 5275648], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @defpat18, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 3, i32 3, i32 3, i32 2, i32 721, [8 x i32] [i32 54476607, i32 15790332, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061094144, i32 4145151, i32 15790320], [8 x i32] [i32 34603264, i32 1048648, i32 1048576, i32 1048576, i32 1048576, i32 17826304, i32 1048708, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @defpat19, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 758, [8 x i32] [i32 138411776, i32 -1057949456, i32 -51347456, i32 -1136915456, i32 -118439936, i32 -12646400, i32 205306940, i32 -2131690496], [8 x i32] [i32 1090560, i32 -2138030080, i32 1745879040, i32 68683776, i32 1083211776, i32 -1542455296, i32 135791616, i32 1075200], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([15 x %struct.patval], [15 x %struct.patval]* @defpat20, i32 0, i32 0), i32 15, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 -2, i32 -4, i32 2, i32 1, i32 4, i32 5, i32 0, i32 610, [8 x i32] [i32 -184749056, i32 -50564096, i32 2147450624, i32 1962736892, i32 1962736892, i32 -184749056, i32 -50564096, i32 2147450624], [8 x i32] [i32 1310720, i32 1052672, i32 5242880, i32 269484032, i32 269484032, i32 1310720, i32 1052672, i32 5242880], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @defpat21, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 708787968, i32 16316664, i32 -252665856, i32 -1128529920, i32 -117964800, i32 1061104128, i32 12369084, i32 -1594822656], [8 x i32] [i32 1114624, i32 1048720, i32 1048576, i32 1048576, i32 1048576, i32 34668544, i32 1048600, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @defpat22, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 0, i32 3, i32 2, i32 0, i32 649, [8 x i32] [i32 15790320, i32 -252706816, i32 1060962304, i32 4144927, i32 15790288, i32 -252706816, i32 1061093376, i32 4013887], [8 x i32] [i32 9453568, i32 1611661312, i32 102236160, i32 1057800, i32 1073280, i32 1083179008, i32 605028352, i32 1574400], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @defpat23, i32 0, i32 0), i32 9, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 648, [8 x i32] [i32 15790320, i32 -252706816, i32 1044316160, i32 4144955, i32 15790256, i32 -252706816, i32 1061093376, i32 4144703], [8 x i32] [i32 1056784, i32 9437184, i32 537919488, i32 1638400, i32 9437184, i32 537919488, i32 1638400, i32 1056784], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @defpat24, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 -2, i32 0, i32 2, i32 4, i32 4, i32 4, i32 0, i32 758, [8 x i32] [i32 1061109567, i32 16579836, i32 -252645376, i32 -65536, i32 -50593792, i32 1061109504, i32 16777215, i32 -252645136], [8 x i32] [i32 1048608, i32 1048576, i32 1048576, i32 1179648, i32 1048576, i32 1048576, i32 1179648, i32 1048608], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @defpat25, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 3, i32 3, i32 3, i32 0, i32 758, [8 x i32] [i32 1061109567, i32 16579836, i32 -252645376, i32 -65536, i32 -50593792, i32 1061109504, i32 16777215, i32 -252645136], [8 x i32] [i32 1048610, i32 1048576, i32 1048576, i32 1179648, i32 1048576, i32 1048576, i32 1179650, i32 1048608], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @defpat26, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 4144908, i32 15790320, i32 -252706816, i32 1060896768, i32 -252706816, i32 1061093376, i32 3948348, i32 15790272], [8 x i32] [i32 1638400, i32 1056784, i32 9437184, i32 537919488, i32 537919488, i32 1638400, i32 1056784, i32 9437184], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @defpat27, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 -2, i32 -1, i32 2, i32 1, i32 4, i32 2, i32 0, i32 683, [8 x i32] [i32 -51318544, i32 -50394112, i32 1010629680, i32 -1056964864, i32 218102784, i32 -252642256, i32 -16384, i32 -63161284], [8 x i32] [i32 9470096, i32 -1609564160, i32 135790592, i32 1124864, i32 1089536, i32 -2138046464, i32 705757184, i32 1574936], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @defpat28, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 0, i32 686, [8 x i32] [i32 12123391, i32 -521084928, i32 -55050240, i32 792669952, i32 -521084928, i32 -55050240, i32 792669955, i32 12123388], [8 x i32] [i32 1048584, i32 1048576, i32 1048576, i32 34603008, i32 1048576, i32 1048576, i32 1049088, i32 1048704], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @defpat29, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 0, i32 760, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1123368, i32 9453584, i32 1611661312, i32 102367232, i32 1083179008, i32 605093888, i32 1705488, i32 1073312], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @defpat30, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 2, i32 758, [8 x i32] [i32 792674048, i32 16317692, i32 -252649472, i32 -54788096, i32 -50855936, i32 1061105408, i32 12385532, i32 -521080832], [8 x i32] [i32 35127296, i32 1056776, i32 9437184, i32 537919488, i32 537919488, i32 1573376, i32 1056896, i32 9437184], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @defpat31, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 758, [8 x i32] [i32 4132608, i32 3207408, i32 -1058013184, i32 1009778688, i32 -265289728, i32 255787008, i32 3161148, i32 15777792], [8 x i32] [i32 1573888, i32 1073152, i32 1083179008, i32 605028352, i32 1611661312, i32 68681728, i32 1057792, i32 9453568], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperdefpat31, i32 0, float 0x3F9F212D80000000 }, %struct.pattern zeroinitializer], align 16
@defpat_db = global %struct.pattern_db { i32 -1, i32 0, %struct.pattern* getelementptr inbounds ([33 x %struct.pattern], [33 x %struct.pattern]* @defpat, i32 0, i32 0), %struct.dfa_rt* null }, align 8
@defpat0 = internal global [4 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 720, i32 0 }], align 16
@.str = private unnamed_addr constant [5 x i8] c"Def1\00", align 1
@defpat1 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"Def2\00", align 1
@defpat2 = internal global [11 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 687, i32 0 }], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"Def4\00", align 1
@defpat3 = internal global [12 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"Def5\00", align 1
@defpat4 = internal global [12 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"Def6\00", align 1
@defpat5 = internal global [7 x %struct.patval] [%struct.patval { i32 759, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.5 = private unnamed_addr constant [5 x i8] c"Def9\00", align 1
@defpat6 = internal global [6 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"Def10\00", align 1
@defpat7 = internal global [10 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"Def12\00", align 1
@defpat8 = internal global [15 x %struct.patval] [%struct.patval { i32 650, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 613, i32 1 }, %struct.patval { i32 575, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 612, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 574, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 573, i32 0 }], align 16
@.str.8 = private unnamed_addr constant [6 x i8] c"Def16\00", align 1
@defpat9 = internal global [13 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 794, i32 4 }, %struct.patval { i32 757, i32 4 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"Def17\00", align 1
@defpat10 = internal global [14 x %struct.patval] [%struct.patval { i32 723, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 687, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 688, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 724, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 651, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.10 = private unnamed_addr constant [6 x i8] c"Def21\00", align 1
@defpat11 = internal global [9 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 650, i32 2 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 687, i32 0 }], align 16
@.str.11 = private unnamed_addr constant [6 x i8] c"Def25\00", align 1
@defpat12 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.12 = private unnamed_addr constant [6 x i8] c"Def26\00", align 1
@defpat13 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.13 = private unnamed_addr constant [6 x i8] c"Def28\00", align 1
@defpat14 = internal global [11 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 687, i32 0 }], align 16
@.str.14 = private unnamed_addr constant [6 x i8] c"Def29\00", align 1
@defpat15 = internal global [17 x %struct.patval] [%struct.patval { i32 720, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 4 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 794, i32 0 }, %struct.patval { i32 832, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 833, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }, %struct.patval { i32 834, i32 0 }], align 16
@.str.15 = private unnamed_addr constant [6 x i8] c"Def39\00", align 1
@defpat16 = internal global [17 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.16 = private unnamed_addr constant [6 x i8] c"Def44\00", align 1
@defpat17 = internal global [12 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 795, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.17 = private unnamed_addr constant [6 x i8] c"Def45\00", align 1
@defpat18 = internal global [13 x %struct.patval] [%struct.patval { i32 757, i32 1 }, %struct.patval { i32 796, i32 1 }, %struct.patval { i32 795, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.18 = private unnamed_addr constant [6 x i8] c"Def49\00", align 1
@defpat19 = internal global [8 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.19 = private unnamed_addr constant [6 x i8] c"Def50\00", align 1
@defpat20 = internal global [15 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 646, i32 0 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 572, i32 0 }, %struct.patval { i32 609, i32 0 }, %struct.patval { i32 574, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 683, i32 0 }], align 16
@.str.20 = private unnamed_addr constant [6 x i8] c"Def52\00", align 1
@defpat21 = internal global [9 x %struct.patval] [%struct.patval { i32 759, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 4 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.21 = private unnamed_addr constant [6 x i8] c"Def55\00", align 1
@defpat22 = internal global [12 x %struct.patval] [%struct.patval { i32 611, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 610, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }], align 16
@.str.22 = private unnamed_addr constant [6 x i8] c"Def56\00", align 1
@defpat23 = internal global [9 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 611, i32 4 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.23 = private unnamed_addr constant [6 x i8] c"Def57\00", align 1
@defpat24 = internal global [16 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 794, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.24 = private unnamed_addr constant [6 x i8] c"Def58\00", align 1
@defpat25 = internal global [16 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 794, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.25 = private unnamed_addr constant [6 x i8] c"Def59\00", align 1
@defpat26 = internal global [7 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.26 = private unnamed_addr constant [6 x i8] c"Def60\00", align 1
@defpat27 = internal global [10 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 682, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 646, i32 0 }, %struct.patval { i32 683, i32 0 }], align 16
@.str.27 = private unnamed_addr constant [6 x i8] c"Def61\00", align 1
@defpat28 = internal global [13 x %struct.patval] [%struct.patval { i32 723, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.28 = private unnamed_addr constant [6 x i8] c"Def62\00", align 1
@defpat29 = internal global [12 x %struct.patval] [%struct.patval { i32 723, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 797, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 4 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.29 = private unnamed_addr constant [6 x i8] c"Def63\00", align 1
@defpat30 = internal global [11 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.30 = private unnamed_addr constant [6 x i8] c"Def68\00", align 1
@defpat31 = internal global [5 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.31 = private unnamed_addr constant [6 x i8] c"Def69\00", align 1
@transformation = external global [1369 x [8 x i32]], align 16
@stackp = external global i32, align 4
@worm = external global [400 x %struct.worm_data], align 16

; Function Attrs: nounwind uwtable
define internal i32 @autohelperdefpat0(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %5 = load i32, i32* %color.addr, align 4
  %call = call i32 @accuratelib(i32 %4, i32 %5, i32 20, i32* null)
  %cmp = icmp sgt i32 %call, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperdefpat1(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom
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
  %8 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i32, i32* %a, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom4
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx5, i32 0, i32 16
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %10 = load i32, i32* %arrayidx6, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.rhs, label %land.end

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %a, align 4
  %call = call i32 @attack(i32 %11, i32* null)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false, %cond.true
  %12 = load i32, i32* %color.addr, align 4
  %13 = load i32, i32* %move.addr, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %a, align 4
  %call8 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %12, i32 0, i32 2, i32 %13, i32 %14, i32 %15)
  %tobool9 = icmp ne i32 %call8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false, %cond.true
  %16 = phi i1 [ false, %cond.false ], [ false, %cond.true ], [ %tobool9, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperdefpat10(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 718), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %a, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp sgt i32 %call, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperdefpat31(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom
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
  store i32 %add6, i32* %C, align 4
  %11 = load i32, i32* %a, align 4
  %call = call i32 @countlib(i32 %11)
  %cmp = icmp sgt i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %12 = load i32, i32* %b, align 4
  %call7 = call i32 @countlib(i32 %12)
  %cmp8 = icmp sgt i32 %call7, 1
  br i1 %cmp8, label %land.lhs.true.9, label %land.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %13 = load i32, i32* %C, align 4
  %call10 = call i32 @countlib(i32 %13)
  %cmp11 = icmp sle i32 %call10, 2
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.9
  %14 = load i32, i32* %move.addr, align 4
  %15 = load i32, i32* %color.addr, align 4
  %call12 = call i32 @accuratelib(i32 %14, i32 %15, i32 20, i32* null)
  %cmp13 = icmp sgt i32 %call12, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.9, %land.lhs.true, %entry
  %16 = phi i1 [ false, %land.lhs.true.9 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp13, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  ret i32 %land.ext
}

declare i32 @accuratelib(i32, i32, i32, i32*) #1

declare i32 @attack(i32, i32*) #1

declare i32 @play_attack_defend_n(i32, i32, i32, ...) #1

declare i32 @countlib(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
