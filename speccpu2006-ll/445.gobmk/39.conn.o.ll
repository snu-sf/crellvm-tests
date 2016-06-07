; ModuleID = 'patterns/conn.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.dfa_rt = type opaque
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.influence_data = type opaque

@conn = internal global [102 x %struct.pattern] [%struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @conn0, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 0, i32 1, i32 2, i32 2, i32 648, [8 x i32] [i32 15790080, i32 -252706816, i32 1060896768, i32 3947532, i32 15790272, i32 -252706816, i32 1010565120, i32 3948288], [8 x i32] [i32 9437184, i32 537919488, i32 18350080, i32 1056772, i32 1056832, i32 9437184, i32 537919488, i32 1573120], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn1, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 2, i32 648, [8 x i32] [i32 15790320, i32 -252706816, i32 1060896768, i32 4144911, i32 15790272, i32 -252706816, i32 1061093376, i32 3948351], [8 x i32] [i32 9437184, i32 537919488, i32 18350080, i32 1056772, i32 1056832, i32 9437184, i32 537919488, i32 1573120], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @conn2, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 2097118208, i32 1962736688, i32 -184749056, i32 -50564096, i32 -50564096, i32 2097118208, i32 1962736688, i32 -184749056], [8 x i32] [i32 9437184, i32 537919488, i32 1572864, i32 1056768, i32 1056768, i32 9437184, i32 537919488, i32 1572864], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @conn3, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 2, i32 648, [8 x i32] [i32 15791356, i32 -252690432, i32 2134835200, i32 121585471, i32 1089532144, i32 -185597952, i32 1061095168, i32 4161535], [8 x i32] [i32 1048576, i32 1048576, i32 1179648, i32 1048608, i32 1048608, i32 1048576, i32 1048576, i32 1179648], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @conn4, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 2, i32 648, [8 x i32] [i32 16055548, i32 -252653568, i32 -8454144, i32 524238655, i32 -789516048, i32 -51118080, i32 1061101312, i32 8388607], [8 x i32] [i32 1049600, i32 1064960, i32 1074921472, i32 68157472, i32 1074790432, i32 68157440, i32 1049600, i32 1196032], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn5, i32 0, i32 0), i32 9, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 722, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1638400, i32 1056784, i32 9437184, i32 537919488, i32 537919488, i32 1638400, i32 1056784, i32 9437184], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @conn6, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 0, i32 3, i32 2, i32 2, i32 648, [8 x i32] [i32 15790320, i32 -252706816, i32 1060896768, i32 4144911, i32 15790272, i32 -252706816, i32 1061093376, i32 3948351], [8 x i32] [i32 9437184, i32 537919488, i32 18350080, i32 1056772, i32 1056832, i32 9437184, i32 537919488, i32 1573120], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn6, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @conn7, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 876560191, i32 16577776, i32 -252678144, i32 2147418112, i32 -184811520, i32 1061106688, i32 16744255, i32 1894838512], [8 x i32] [i32 537985024, i32 1572880, i32 1056768, i32 9437184, i32 1572864, i32 1122304, i32 9437200, i32 537919488], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn7, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn8, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 685, [8 x i32] [i32 3210492, i32 -1057964032, i32 -63963136, i32 255790848, i32 -1057964032, i32 -63963136, i32 255790848, i32 3210492], [8 x i32] [i32 1081408, i32 -2146435072, i32 135266304, i32 1050880, i32 1081344, i32 -2146435072, i32 152043520, i32 1050628], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @conn9, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 2, i32 685, [8 x i32] [i32 821886204, i32 -251858944, i32 -50581504, i32 1073692416, i32 -251858944, i32 -50581504, i32 1073692416, i32 821886204], [8 x i32] [i32 546849792, i32 1612210176, i32 1150820352, i32 613426176, i32 1612210176, i32 1150820352, i32 613426176, i32 546849792], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn9, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn10, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 722, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1179904, i32 1048672, i32 1048576, i32 1048576, i32 1048576, i32 17956864, i32 1048612, i32 1048576], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn10, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([14 x %struct.patval], [14 x %struct.patval]* @conn11, i32 0, i32 0), i32 14, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 3, i32 3, i32 3, i32 2, i32 721, [8 x i32] [i32 255803199, i32 15793404, i32 -252657664, i32 -12648448, i32 -51380224, i32 1061097216, i32 4194303, i32 -1057951504], [8 x i32] [i32 168886272, i32 1050648, i32 1081344, i32 -2146435072, i32 135266304, i32 1116672, i32 1081488, i32 -2146435072], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn11, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @conn12, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 3, i32 3, i32 3, i32 2, i32 758, [8 x i32] [i32 54476607, i32 15790332, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061094144, i32 4145151, i32 15790320], [8 x i32] [i32 34603008, i32 1048584, i32 1048576, i32 1048576, i32 1048576, i32 1049088, i32 1048704, i32 1048576], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn12, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn13, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 205467136, i32 11599024, i32 -521093120, i32 -63438848, i32 -55574528, i32 775883776, i32 3734584, i32 -1057955840], [8 x i32] [i32 135331840, i32 1050640, i32 1081344, i32 -2146435072, i32 135266304, i32 1116160, i32 1081360, i32 -2146435072], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn13, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([17 x %struct.patval], [17 x %struct.patval]* @conn14, i32 0, i32 0), i32 17, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 -1, i32 0, i32 3, i32 3, i32 4, i32 3, i32 2, i32 758, [8 x i32] [i32 54476607, i32 15790332, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061094144, i32 4145151, i32 15790320], [8 x i32] [i32 34603008, i32 1048584, i32 1048576, i32 1048576, i32 1048576, i32 1049088, i32 1048704, i32 1048576], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn14, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @conn15, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 722, [8 x i32] [i32 3997695, i32 -1057951552, i32 -51380224, i32 1061097216, i32 -252657664, i32 -12845056, i32 255803151, i32 15793404], [8 x i32] [i32 1573121, i32 1056832, i32 9437184, i32 537919488, i32 537919488, i32 18350080, i32 1056773, i32 9437184], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn16, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 2, i32 758, [8 x i32] [i32 54476544, i32 15790332, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061094144, i32 3947772, i32 15790080], [8 x i32] [i32 34603008, i32 1048584, i32 1048576, i32 1048576, i32 1048576, i32 1049088, i32 1048704, i32 1048576], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn16, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @conn17, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 -1, i32 0, i32 3, i32 2, i32 4, i32 2, i32 2, i32 722, [8 x i32] [i32 205471551, i32 15793392, i32 -252657664, i32 -12648448, i32 -51380224, i32 1061096448, i32 4194111, i32 -1057951504], [8 x i32] [i32 135856128, i32 1058832, i32 9469952, i32 -1609564160, i32 672137216, i32 1640448, i32 1089552, i32 -2138046464], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn18, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 2, i32 648, [8 x i32] [i32 15790320, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 4144959], [8 x i32] [i32 1048576, i32 1048576, i32 17956864, i32 1048612, i32 1048672, i32 1048576, i32 1048576, i32 1179904], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn18, i32 0, float 0x4012B851E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn19, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 0, i32 1, i32 2, i32 2, i32 648, [8 x i32] [i32 15790080, i32 -252706816, i32 1061093376, i32 3947580, i32 15790320, i32 -252706816, i32 1010565120, i32 4144896], [8 x i32] [i32 1048576, i32 1048576, i32 17956864, i32 1048612, i32 1048672, i32 1048576, i32 1048576, i32 1179904], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn19, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([14 x %struct.patval], [14 x %struct.patval]* @conn20, i32 0, i32 0), i32 14, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 -1, i32 0, i32 3, i32 3, i32 4, i32 3, i32 2, i32 722, [8 x i32] [i32 205471551, i32 15793392, i32 -252657664, i32 -12648448, i32 -51380224, i32 1061096448, i32 4194111, i32 -1057951504], [8 x i32] [i32 135790592, i32 1058816, i32 9469952, i32 -1609564160, i32 672137216, i32 1574912, i32 1089536, i32 -2138046464], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @conn21, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 2, i32 721, [8 x i32] [i32 218103807, i32 -252642064, i32 -50544640, i32 -12632320, i32 -51318784, i32 -62464, i32 1061158719, i32 -1057161988], [8 x i32] [i32 135331840, i32 1050640, i32 1081344, i32 -2146435072, i32 135266304, i32 1116160, i32 1081360, i32 -2146435072], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn21, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @conn22, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 -1, i32 -2, i32 3, i32 1, i32 4, i32 3, i32 2, i32 685, [8 x i32] [i32 821886204, i32 -251858944, i32 -249856, i32 1073692431, i32 -251858752, i32 -50581504, i32 1073692416, i32 821886975], [8 x i32] [i32 546849792, i32 1612210176, i32 1150820352, i32 613426176, i32 1612210176, i32 1150820352, i32 613426176, i32 546849792], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn22, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn23, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 722, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1179649, i32 1048608, i32 1048576, i32 1048576, i32 1048576, i32 1179648, i32 1048609, i32 1048576], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn24, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 -2, i32 -2, i32 1, i32 0, i32 3, i32 2, i32 2, i32 647, [8 x i32] [i32 -252649472, i32 -54591488, i32 792673328, i32 16317500, i32 12582128, i32 -521080784, i32 -50855936, i32 1010773760], [8 x i32] [i32 1048576, i32 1179648, i32 1048608, i32 1048576, i32 1179648, i32 1048608, i32 1048576, i32 1048576], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn24, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn25, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 722, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1048832, i32 1048640, i32 1048576, i32 1048576, i32 1048576, i32 17825792, i32 1048580, i32 1048576], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn25, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn26, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 3996732, i32 -1057951744, i32 -51380224, i32 1061096448, i32 -252657664, i32 -63176704, i32 205471488, i32 15793392], [8 x i32] [i32 1082384, i32 -2146418688, i32 1209008128, i32 68225024, i32 1074823168, i32 -2079326208, i32 135332864, i32 1067024], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn26, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn27, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 3996732, i32 -1057951744, i32 -51380224, i32 1061096448, i32 -252657664, i32 -63176704, i32 205471488, i32 15793392], [8 x i32] [i32 1082384, i32 -2146418688, i32 1209008128, i32 68225024, i32 1074823168, i32 -2079326208, i32 135332864, i32 1067024], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn27, i32 0, float 1.000000e+01 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn28, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 0, i32 686, [8 x i32] [i32 3947772, i32 15790080, i32 -252706816, i32 1061094144, i32 -252706816, i32 1010565120, i32 54476544, i32 15790332], [8 x i32] [i32 1048708, i32 1048576, i32 1048576, i32 17826304, i32 1048576, i32 1048576, i32 34603264, i32 1048648], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn28, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn29, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 0, i32 686, [8 x i32] [i32 3947772, i32 15790080, i32 -252706816, i32 1061094144, i32 -252706816, i32 1010565120, i32 54476544, i32 15790332], [8 x i32] [i32 1048708, i32 1048576, i32 1048576, i32 17826304, i32 1048576, i32 1048576, i32 34603264, i32 1048648], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn29, i32 0, float 1.000000e+01 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn30, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 4144956, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144956, i32 15790320], [8 x i32] [i32 1114628, i32 1048720, i32 1048576, i32 17825792, i32 1048576, i32 34668544, i32 1048856, i32 1048640], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn30, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn31, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 4144956, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144956, i32 15790320], [8 x i32] [i32 1114628, i32 1048720, i32 1048576, i32 17825792, i32 1048576, i32 34668544, i32 1048856, i32 1048640], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn31, i32 0, float 1.000000e+01 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn32, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 15793200, i32 -252657664, i32 -63176704, i32 205470720, i32 -1057951744, i32 -51380224, i32 1010764800, i32 3996720], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* @basic_cut_helper, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn33, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* @basic_cut_helper, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn34, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* @ugly_cutstone_helper, i32 (i32, i32, i32, i32)* @autohelperconn34, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn35, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 512, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* @cutstone2_helper, i32 (i32, i32, i32, i32)* @autohelperconn35, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @conn36, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 0, i32 685, [8 x i32] [i32 3210492, i32 -1057964032, i32 -63963136, i32 255790848, i32 -1057964032, i32 -63963136, i32 255790848, i32 3210492], [8 x i32] [i32 1050628, i32 1081344, i32 -2146435072, i32 152043520, i32 -2146435072, i32 135266304, i32 1050880, i32 1081408], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @conn37, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 0, i32 3, i32 2, i32 0, i32 648, [8 x i32] [i32 15790320, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 4144959], [8 x i32] [i32 1048576, i32 1048576, i32 17956864, i32 1048613, i32 1048672, i32 1048576, i32 1048576, i32 1179905], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn37, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn38, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 792673792, i32 16317628, i32 -252649472, i32 -54788096, i32 -50855936, i32 1044328192, i32 12385528, i32 -521080832], [8 x i32] [i32 34676736, i32 9437208, i32 537919488, i32 1572864, i32 9437184, i32 537985536, i32 1573008, i32 1056768], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn38, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @conn39, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 0, i32 686, [8 x i32] [i32 3997503, i32 -1057951552, i32 -51380224, i32 1061096448, i32 -252657664, i32 -12845056, i32 205471503, i32 15793392], [8 x i32] [i32 1590785, i32 1074815104, i32 1150287872, i32 605029376, i32 1611677696, i32 1175977984, i32 68166665, i32 9454592], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn39, i32 0, float 0x40016872C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @conn40, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 0, i32 686, [8 x i32] [i32 3997503, i32 -1057951552, i32 -51380224, i32 1061096448, i32 -252657664, i32 -12845056, i32 205471503, i32 15793392], [8 x i32] [i32 1590785, i32 1074815104, i32 1150287872, i32 605029376, i32 1611677696, i32 1175977984, i32 68166665, i32 9454592], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn40, i32 0, float 1.000000e+01 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn41, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 88030976, i32 15791348, i32 -252690432, i32 2084306944, i32 -185597952, i32 1061094656, i32 3964028, i32 1089531904], [8 x i32] [i32 1057024, i32 9437248, i32 537919488, i32 1572864, i32 9437184, i32 554696704, i32 1572868, i32 1056768], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn41, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn42, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 648, [8 x i32] [i32 15790320, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 4144959], [8 x i32] [i32 1048592, i32 1048576, i32 17825792, i32 1114118, i32 1048640, i32 1048576, i32 1114112, i32 1048850], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn42, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @conn43, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 -2, i32 0, i32 1, i32 2, i32 3, i32 2, i32 0, i32 721, [8 x i32] [i32 1061106944, i32 16612733, i32 1894838352, i32 -184811520, i32 2113732608, i32 893337365, i32 16577780, i32 -252678144], [8 x i32] [i32 1122304, i32 9437200, i32 537919488, i32 1572864, i32 9437184, i32 537985024, i32 1572880, i32 1056768], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn43, i32 0, float 0x4017851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn44, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 0, i32 721, [8 x i32] [i32 16776960, i32 -252645136, i32 -50593792, i32 1010580480, i32 -252645376, i32 -65536, i32 1010580540, i32 16579584], [8 x i32] [i32 9520128, i32 1611677712, i32 1142423552, i32 68166656, i32 1074814976, i32 1150353408, i32 605029392, i32 1590272], i32 4194820, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn44, i32 0, float 0x4006666660000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn45, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 720, [8 x i32] [i32 205471488, i32 15793392, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061096448, i32 3996732, i32 -1057951744], [8 x i32] [i32 1639424, i32 1073168, i32 1083179008, i32 605028352, i32 1611661312, i32 68747264, i32 1057808, i32 9453568], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn45, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn46, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 720, [8 x i32] [i32 205471488, i32 15793392, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061096448, i32 3996732, i32 -1057951744], [8 x i32] [i32 1639424, i32 1073168, i32 1083179008, i32 605028352, i32 1611661312, i32 68747264, i32 1057808, i32 9453568], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn46, i32 0, float 1.000000e+01 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn47, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 0, i32 3, i32 1, i32 0, i32 685, [8 x i32] [i32 3174640, i32 1089470464, i32 875560960, i32 4130560, i32 15745024, i32 1882193920, i32 121569280, i32 3159100], [8 x i32] [i32 1048720, i32 1048576, i32 1048576, i32 1114624, i32 1048576, i32 1048576, i32 34668544, i32 1048600], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn47, i32 0, float 1.600000e+01 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn48, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 4144176, i32 15790128, i32 -252706816, i32 1010761728, i32 -252706816, i32 1010761728, i32 4144176, i32 15790128], [8 x i32] [i32 1114128, i32 1048592, i32 1048576, i32 1114112, i32 1048576, i32 1114112, i32 1114128, i32 1048592], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn48, i32 0, float 1.000000e+01 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn49, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 -2, i32 0, i32 1, i32 2, i32 3, i32 2, i32 0, i32 759, [8 x i32] [i32 1061097216, i32 3997692, i32 -1057951552, i32 -51380224, i32 -12845056, i32 255803148, i32 15793404, i32 -252657664], [8 x i32] [i32 572064768, i32 1597976, i32 1083187328, i32 613416960, i32 1645740032, i32 68755976, i32 9446544, i32 546324480], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn49, i32 0, float 7.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn50, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 686, [8 x i32] [i32 3948351, i32 15790272, i32 -252706816, i32 1061093376, i32 -252706816, i32 1060896768, i32 4144911, i32 15790320], [8 x i32] [i32 1574401, i32 1073280, i32 1083179008, i32 605028352, i32 1611661312, i32 102236160, i32 1057801, i32 9453568], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn50, i32 0, float 0x40016872C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn51, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 1044265984, i32 16579624, i32 -252645376, i32 -50593792, i32 -50593792, i32 1010712064, i32 16579744, i32 -252645376], [8 x i32] [i32 537927680, i32 9961472, i32 537927680, i32 9961472, i32 9961472, i32 537927680, i32 9961472, i32 537927680], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn51, i32 0, float 0x3FF9A85880000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([24 x %struct.patval], [24 x %struct.patval]* @conn52, i32 0, i32 0), i32 24, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i32 -2, i32 -1, i32 2, i32 4, i32 4, i32 5, i32 2, i32 723, [8 x i32] [i32 1069531071, i32 -1594032386, i32 -117903232, i32 -54784, i32 -16998400, i32 -1077985526, i32 721420287, i32 -252118792], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([28 x %struct.patval], [28 x %struct.patval]* @conn53, i32 0, i32 0), i32 28, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 5, i32 3, i32 7, i32 2, i32 759, [8 x i32] [i32 1073741823, i32 -251855620, i32 -16846848, i32 -49366, i32 -50532192, i32 -49408, i32 1073741823, i32 -251724034], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn54, i32 0, i32 0), i32 9, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn54, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([25 x %struct.patval], [25 x %struct.patval]* @conn55, i32 0, i32 0), i32 25, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 -1, i32 -1, i32 3, i32 3, i32 4, i32 4, i32 2, i32 722, [8 x i32] [i32 -1077952577, i32 -1459815172, i32 -117901312, i32 -22016, i32 -50550784, i32 -1077952768, i32 -1426063361, i32 -117901064], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn55, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([23 x %struct.patval], [23 x %struct.patval]* @conn56, i32 0, i32 0), i32 23, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 -1, i32 -1, i32 3, i32 3, i32 4, i32 4, i32 2, i32 722, [8 x i32] [i32 -1073741825, i32 -117637892, i32 -50530304, i32 -16640, i32 -50530304, i32 -16640, i32 -1073741825, i32 -117637892], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn56, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn57, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 2, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn57, i32 0, float 0x400FAE1480000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn58, i32 0, i32 0), i32 4, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 1064960, i32 1074790400, i32 68157440, i32 1049600, i32 1064960, i32 1074790400, i32 68157440, i32 1049600], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn58, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn59, i32 0, i32 0), i32 6, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 684, [8 x i32] [i32 3947580, i32 15790080, i32 -252706816, i32 1061093376, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320], [8 x i32] [i32 1310740, i32 1052672, i32 5242880, i32 286326784, i32 269484032, i32 1310720, i32 1118464, i32 5242960], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([26 x %struct.patval], [26 x %struct.patval]* @conn60, i32 0, i32 0), i32 26, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 -2, i32 -1, i32 2, i32 4, i32 4, i32 5, i32 0, i32 723, [8 x i32] [i32 -1077952726, i32 -1459683586, i32 -117901152, i32 -16865280, i32 -16865280, i32 -1077952726, i32 -1459683586, i32 -117901152], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([30 x %struct.patval], [30 x %struct.patval]* @conn61, i32 0, i32 0), i32 30, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i32 -2, i32 -1, i32 3, i32 4, i32 5, i32 5, i32 0, i32 723, [8 x i32] [i32 -1077952593, i32 -1459683586, i32 -117901152, i32 -87552, i32 -16865280, i32 -1077952726, i32 -1426128897, i32 -117901080], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([21 x %struct.patval], [21 x %struct.patval]* @conn62, i32 0, i32 0), i32 21, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 -2, i32 -1, i32 2, i32 3, i32 4, i32 4, i32 0, i32 723, [8 x i32] [i32 -214, i32 -50397442, i32 -50529120, i32 -16843776, i32 -16843776, i32 -214, i32 -50397442, i32 -50529120], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([20 x %struct.patval], [20 x %struct.patval]* @conn63, i32 0, i32 0), i32 20, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 3, i32 3, i32 4, i32 0, i32 721, [8 x i32] [i32 16760767, i32 -1326386960, i32 -117702656, i32 1061108224, i32 -252661760, i32 -1073807360, i32 977223487, i32 16578808], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([20 x %struct.patval], [20 x %struct.patval]* @conn64, i32 0, i32 0), i32 20, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 3, i32 3, i32 4, i32 0, i32 721, [8 x i32] [i32 16760767, i32 -1326386960, i32 -117702656, i32 1061108224, i32 -252661760, i32 -1073807360, i32 977223487, i32 16578808], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @conn65, i32 0, i32 0), i32 12, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i32 0, i32 0, i32 3, i32 2, i32 3, i32 2, i32 0, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn65, i32 0, float 0x3F99578A20000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @conn66, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 0, i32 684, [8 x i32] [i32 4079166, i32 15790240, i32 -252706816, i32 1061093376, i32 -252706816, i32 1044250624, i32 4144938, i32 15790320], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn66, i32 0, float 0x3F964840E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn67, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 684, [8 x i32] [i32 3947580, i32 15790080, i32 -252706816, i32 1061093376, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320], [8 x i32] [i32 1310736, i32 1052672, i32 5242880, i32 269549568, i32 269484032, i32 1310720, i32 1118208, i32 5242896], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn67, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn68, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 684, [8 x i32] [i32 3947580, i32 15790080, i32 -252706816, i32 1061093376, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320], [8 x i32] [i32 1310744, i32 1052672, i32 5242880, i32 303104000, i32 269484032, i32 1310720, i32 1118720, i32 5243024], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn68, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn69, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 0, i32 2, i32 1, i32 0, i32 721, [8 x i32] [i32 15790320, i32 -252706816, i32 1010565120, i32 4144896, i32 15790080, i32 -252706816, i32 1061093376, i32 3947580], [8 x i32] [i32 9437280, i32 537919488, i32 1572864, i32 1188096, i32 1056768, i32 9437184, i32 554827776, i32 1572900], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn69, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @conn70, i32 0, i32 0), i32 3, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 0, i32 684, [8 x i32] [i32 3158064, i32 15728640, i32 808452096, i32 4128768, i32 15728640, i32 808452096, i32 4128768, i32 3158064], [8 x i32] [i32 1048592, i32 1048576, i32 1048576, i32 1114112, i32 1048576, i32 1048576, i32 1114112, i32 1048592], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn70, i32 0, float 0x3FF0275260000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn71, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 0, i32 2, i32 2, i32 0, i32 759, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn71, i32 0, float 0x3FB4BD6620000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn72, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144938, i32 15790320, i32 -252706816, i32 1044250624, i32 -252706816, i32 1061093376, i32 4079166, i32 15790240], [8 x i32] [i32 1048832, i32 1048640, i32 1048576, i32 1048576, i32 1048576, i32 17825792, i32 1048580, i32 1048576], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn72, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([15 x %struct.patval], [15 x %struct.patval]* @conn73, i32 0, i32 0), i32 15, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 3, i32 2, i32 4, i32 0, i32 721, [8 x i32] [i32 12582911, i32 -521080592, i32 -50855936, i32 1061105408, i32 -252649472, i32 -4259840, i32 792674111, i32 16317692], [8 x i32] [i32 1310736, i32 1052672, i32 5242880, i32 269549568, i32 269484032, i32 1310720, i32 1118208, i32 5242896], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn73, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn74, i32 0, i32 0), i32 4, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9461760, i32 1620049920, i32 605552640, i32 1582080, i32 9461760, i32 1620049920, i32 605552640, i32 1582080], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn74, i32 0, float 0x400570A3E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn75, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1573888, i32 1073152, i32 1083179008, i32 605028352, i32 1611661312, i32 68681728, i32 1057792, i32 9453568], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn75, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn76, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i32 0, i32 0, i32 3, i32 1, i32 3, i32 1, i32 0, i32 684, [8 x i32] [i32 3947580, i32 15790080, i32 -252706816, i32 1061093376, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320], [8 x i32] [i32 1319936, i32 9457664, i32 1615855616, i32 337117184, i32 1351614464, i32 605290496, i32 1577984, i32 5267456], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn76, i32 0, float 0x400CCCCCC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn77, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 3996732, i32 -1057951744, i32 -51380224, i32 1061096448, i32 -252657664, i32 -63176704, i32 205471488, i32 15793392], [8 x i32] [i32 1048592, i32 1048576, i32 1048576, i32 1114112, i32 1048576, i32 1048576, i32 1114112, i32 1048592], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn77, i32 0, float 0x3FF5B089A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn78, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1048832, i32 1048640, i32 1048576, i32 1048576, i32 1048576, i32 17825792, i32 1048580, i32 1048576], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn78, i32 0, float 0x3FFBE76C80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn79, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 0, i32 3, i32 1, i32 0, i32 721, [8 x i32] [i32 15790320, i32 -252706816, i32 1010565120, i32 4144896, i32 15790080, i32 -252706816, i32 1061093376, i32 3947580], [8 x i32] [i32 1048640, i32 1048576, i32 1048576, i32 1048832, i32 1048576, i32 1048576, i32 17825792, i32 1048580], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn79, i32 0, float 0x40016B1A20000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn80, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1048832, i32 1048640, i32 1048576, i32 1048576, i32 1048576, i32 17825792, i32 1048580, i32 1048576], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn80, i32 0, float 0x401A666660000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn81, i32 0, i32 0), i32 8, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1052672, i32 5242880, i32 269484032, i32 1310720, i32 5242880, i32 269484032, i32 1310720, i32 1052672], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn81, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn82, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1052672, i32 5242880, i32 269484032, i32 1310720, i32 5242880, i32 269484032, i32 1310720, i32 1052672], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn82, i32 0, float 0x4014A3D700000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn83, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1052672, i32 5242880, i32 269484032, i32 1310720, i32 5242880, i32 269484032, i32 1310720, i32 1052672], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn83, i32 0, float 0x4016E4B060000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn84, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 3996732, i32 -1057951744, i32 -51380224, i32 1061096448, i32 -252657664, i32 -63176704, i32 205471488, i32 15793392], [8 x i32] [i32 1082384, i32 -2146418688, i32 1209008128, i32 68225024, i32 1074823168, i32 -2079326208, i32 135332864, i32 1067024], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn84, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn85, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 0, i32 721, [8 x i32] [i32 3947772, i32 15790080, i32 -252706816, i32 1061094144, i32 -252706816, i32 1010565120, i32 54476544, i32 15790332], [8 x i32] [i32 1048708, i32 1048576, i32 1048576, i32 17826304, i32 1048576, i32 1048576, i32 34603264, i32 1048648], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn85, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn86, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 7401472, i32 -789577728, i32 1010040832, i32 3939328, i32 15781888, i32 -261095424, i32 473694208, i32 3423232], [8 x i32] [i32 1064960, i32 1074790400, i32 68157440, i32 1049600, i32 1064960, i32 1074790400, i32 68157440, i32 1049600], i32 -2147483504, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn86, i32 0, float 0x3FA99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn87, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 -2147483504, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn87, i32 0, float 0x3FC47AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn88, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 1064960, i32 1074790400, i32 68157440, i32 1049600, i32 1064960, i32 1074790400, i32 68157440, i32 1049600], i32 -2147483504, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn88, i32 0, float 0x3FBB22D0E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @conn89, i32 0, i32 0), i32 3, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 0, i32 684, [8 x i32] [i32 3158064, i32 15728640, i32 808452096, i32 4128768, i32 15728640, i32 808452096, i32 4128768, i32 3158064], [8 x i32] [i32 1048592, i32 1048576, i32 1048576, i32 1114112, i32 1048576, i32 1048576, i32 1114112, i32 1048592], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn89, i32 0, float 0x40180A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn90, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn90, i32 0, float 0x40180A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn91, i32 0, i32 0), i32 4, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9461760, i32 1620049920, i32 605552640, i32 1582080, i32 9461760, i32 1620049920, i32 605552640, i32 1582080], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn91, i32 0, float 0x4014CCCCC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn92, i32 0, i32 0), i32 4, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i32 0, i32 0, i32 3, i32 0, i32 3, i32 0, i32 0, i32 684, [8 x i32] [i32 3158064, i32 15728640, i32 808452096, i32 4128768, i32 15728640, i32 808452096, i32 4128768, i32 3158064], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn92, i32 0, float 0x400CED9160000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn93, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i32 0, i32 0, i32 3, i32 1, i32 3, i32 1, i32 0, i32 684, [8 x i32] [i32 3946556, i32 15773696, i32 -1326448640, i32 993984512, i32 -1326448640, i32 943456256, i32 4143872, i32 15773936], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn93, i32 0, float 0x40016FD220000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn94, i32 0, i32 0), i32 6, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 684, [8 x i32] [i32 3423260, i32 15781888, i32 -261095424, i32 524091392, i32 -789577728, i32 1010040832, i32 4005632, i32 7401680], [8 x i32] [i32 1048580, i32 1048576, i32 1048576, i32 17825792, i32 1048576, i32 1048576, i32 1048832, i32 1048640], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn94, i32 0, float 0x400CED9160000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @conn95, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 684, [8 x i32] [i32 3161116, i32 15777792, i32 -265289728, i32 255655936, i32 -1058013184, i32 1009778688, i32 4001536, i32 3207376], [8 x i32] [i32 1050628, i32 1081344, i32 -2146435072, i32 152043520, i32 -2146435072, i32 135266304, i32 1050880, i32 1081408], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn95, i32 0, float 0x40180A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn96, i32 0, i32 0), i32 8, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0), i32 0, i32 0, i32 3, i32 1, i32 3, i32 1, i32 0, i32 684, [8 x i32] [i32 3423292, i32 15781888, i32 -261095424, i32 524222464, i32 -789577728, i32 1010040832, i32 4136704, i32 7401712], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn96, i32 0, float 0x3FF5158B80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn97, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 1064960, i32 1074790400, i32 68157440, i32 1049600, i32 1064960, i32 1074790400, i32 68157440, i32 1049600], i32 -2147483504, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn97, i32 0, float 0x3FF9B13160000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn98, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 0, i32 3, i32 1, i32 4, i32 721, [8 x i32] [i32 15790240, i32 -252706816, i32 1010565120, i32 4079104, i32 15790080, i32 -252706816, i32 1044250624, i32 3947560], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 65552, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn98, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn99, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 0, i32 2, i32 1, i32 4, i32 721, [8 x i32] [i32 15790256, i32 -252706816, i32 1010565120, i32 4144640, i32 15790080, i32 -252706816, i32 1044316160, i32 3947576], [8 x i32] [i32 9461760, i32 1620049920, i32 605552640, i32 1582080, i32 9461760, i32 1620049920, i32 605552640, i32 1582080], i32 65552, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn99, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn100, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 0, i32 2, i32 1, i32 6, i32 721, [8 x i32] [i32 15790240, i32 -252706816, i32 1010565120, i32 4079104, i32 15790080, i32 -252706816, i32 1044250624, i32 3947560], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 65552, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn100, i32 0, float 0.000000e+00 }, %struct.pattern zeroinitializer], align 16
@conn_db = global %struct.pattern_db { i32 -1, i32 0, %struct.pattern* getelementptr inbounds ([102 x %struct.pattern], [102 x %struct.pattern]* @conn, i32 0, i32 0), %struct.dfa_rt* null }, align 8
@conn0 = internal global [5 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 0 }], align 16
@.str = private unnamed_addr constant [4 x i8] c"EB1\00", align 1
@conn1 = internal global [8 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"EB2\00", align 1
@conn2 = internal global [10 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 758, i32 7 }, %struct.patval { i32 720, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"EB3\00", align 1
@conn3 = internal global [11 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"EB4\00", align 1
@conn4 = internal global [12 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 611, i32 0 }], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"EB4a\00", align 1
@conn5 = internal global [9 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"EB5\00", align 1
@conn6 = internal global [11 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 650, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 687, i32 0 }], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c"EB6\00", align 1
@conn7 = internal global [11 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 723, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.7 = private unnamed_addr constant [4 x i8] c"EB7\00", align 1
@conn8 = internal global [7 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.8 = private unnamed_addr constant [4 x i8] c"EB8\00", align 1
@conn9 = internal global [10 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"EB9\00", align 1
@conn10 = internal global [9 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"EB10\00", align 1
@conn11 = internal global [14 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.11 = private unnamed_addr constant [5 x i8] c"EB11\00", align 1
@conn12 = internal global [13 x %struct.patval] [%struct.patval { i32 759, i32 7 }, %struct.patval { i32 760, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"EB12\00", align 1
@conn13 = internal global [7 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"EB13\00", align 1
@conn14 = internal global [17 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 760, i32 7 }, %struct.patval { i32 761, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 797, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 798, i32 0 }], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"EB14\00", align 1
@conn15 = internal global [10 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 723, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.15 = private unnamed_addr constant [5 x i8] c"EB15\00", align 1
@conn16 = internal global [9 x %struct.patval] [%struct.patval { i32 759, i32 7 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"EB16\00", align 1
@conn17 = internal global [13 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 724, i32 7 }, %struct.patval { i32 760, i32 7 }, %struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.17 = private unnamed_addr constant [5 x i8] c"EB17\00", align 1
@conn18 = internal global [9 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.18 = private unnamed_addr constant [5 x i8] c"EB18\00", align 1
@conn19 = internal global [6 x %struct.patval] [%struct.patval { i32 647, i32 7 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.19 = private unnamed_addr constant [5 x i8] c"EB19\00", align 1
@conn20 = internal global [14 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 724, i32 7 }, %struct.patval { i32 760, i32 7 }, %struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.20 = private unnamed_addr constant [5 x i8] c"EB20\00", align 1
@conn21 = internal global [13 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.21 = private unnamed_addr constant [5 x i8] c"EB21\00", align 1
@conn22 = internal global [16 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 687, i32 7 }, %struct.patval { i32 723, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.22 = private unnamed_addr constant [5 x i8] c"EB22\00", align 1
@conn23 = internal global [9 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.23 = private unnamed_addr constant [5 x i8] c"EB23\00", align 1
@conn24 = internal global [9 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 646, i32 7 }, %struct.patval { i32 682, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 610, i32 0 }], align 16
@.str.24 = private unnamed_addr constant [5 x i8] c"EB24\00", align 1
@conn25 = internal global [9 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.25 = private unnamed_addr constant [5 x i8] c"EB25\00", align 1
@conn26 = internal global [7 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.26 = private unnamed_addr constant [4 x i8] c"CB1\00", align 1
@conn27 = internal global [7 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.27 = private unnamed_addr constant [5 x i8] c"CB1b\00", align 1
@conn28 = internal global [9 x %struct.patval] [%struct.patval { i32 649, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.28 = private unnamed_addr constant [4 x i8] c"CB2\00", align 1
@conn29 = internal global [9 x %struct.patval] [%struct.patval { i32 649, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.29 = private unnamed_addr constant [5 x i8] c"CB2b\00", align 1
@conn30 = internal global [8 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.30 = private unnamed_addr constant [4 x i8] c"CB3\00", align 1
@conn31 = internal global [8 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.31 = private unnamed_addr constant [5 x i8] c"CB3b\00", align 1
@conn32 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.32 = private unnamed_addr constant [4 x i8] c"CB4\00", align 1
@conn33 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.33 = private unnamed_addr constant [4 x i8] c"CB5\00", align 1
@conn34 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.34 = private unnamed_addr constant [4 x i8] c"CB6\00", align 1
@conn35 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.35 = private unnamed_addr constant [4 x i8] c"CB7\00", align 1
@conn36 = internal global [10 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 650, i32 3 }, %struct.patval { i32 724, i32 4 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.36 = private unnamed_addr constant [4 x i8] c"CB8\00", align 1
@conn37 = internal global [11 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 687, i32 1 }, %struct.patval { i32 650, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 612, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.37 = private unnamed_addr constant [4 x i8] c"CB9\00", align 1
@conn38 = internal global [9 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 720, i32 7 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.38 = private unnamed_addr constant [5 x i8] c"CB10\00", align 1
@conn39 = internal global [10 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 724, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.39 = private unnamed_addr constant [5 x i8] c"CB11\00", align 1
@conn40 = internal global [10 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 724, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.40 = private unnamed_addr constant [6 x i8] c"CB11b\00", align 1
@conn41 = internal global [8 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.41 = private unnamed_addr constant [5 x i8] c"CB12\00", align 1
@conn42 = internal global [9 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 647, i32 7 }, %struct.patval { i32 612, i32 1 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.42 = private unnamed_addr constant [6 x i8] c"CB12a\00", align 1
@conn43 = internal global [12 x %struct.patval] [%struct.patval { i32 720, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 756, i32 3 }, %struct.patval { i32 759, i32 3 }, %struct.patval { i32 719, i32 3 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.43 = private unnamed_addr constant [5 x i8] c"CB13\00", align 1
@conn44 = internal global [8 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.44 = private unnamed_addr constant [5 x i8] c"CB14\00", align 1
@conn45 = internal global [7 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.45 = private unnamed_addr constant [5 x i8] c"CB15\00", align 1
@conn46 = internal global [7 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.46 = private unnamed_addr constant [6 x i8] c"CB15b\00", align 1
@conn47 = internal global [7 x %struct.patval] [%struct.patval { i32 687, i32 7 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 650, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.47 = private unnamed_addr constant [5 x i8] c"CB16\00", align 1
@conn48 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.48 = private unnamed_addr constant [5 x i8] c"CB17\00", align 1
@conn49 = internal global [9 x %struct.patval] [%struct.patval { i32 719, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.49 = private unnamed_addr constant [5 x i8] c"CB18\00", align 1
@conn50 = internal global [8 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.50 = private unnamed_addr constant [5 x i8] c"CB19\00", align 1
@conn51 = internal global [8 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 757, i32 4 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.51 = private unnamed_addr constant [5 x i8] c"CB20\00", align 1
@conn52 = internal global [24 x %struct.patval] [%struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 719, i32 4 }, %struct.patval { i32 833, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 834, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 756, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 832, i32 4 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }, %struct.patval { i32 794, i32 0 }], align 16
@.str.52 = private unnamed_addr constant [4 x i8] c"EC1\00", align 1
@conn53 = internal global [28 x %struct.patval] [%struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 869, i32 4 }, %struct.patval { i32 870, i32 4 }, %struct.patval { i32 610, i32 4 }, %struct.patval { i32 611, i32 4 }, %struct.patval { i32 612, i32 4 }, %struct.patval { i32 871, i32 4 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 832, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 833, i32 0 }, %struct.patval { i32 794, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }, %struct.patval { i32 834, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.53 = private unnamed_addr constant [5 x i8] c"EC1b\00", align 1
@conn54 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.54 = private unnamed_addr constant [4 x i8] c"EC2\00", align 1
@conn55 = internal global [25 x %struct.patval] [%struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 650, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 794, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 795, i32 4 }, %struct.patval { i32 798, i32 4 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.55 = private unnamed_addr constant [5 x i8] c"EC3a\00", align 1
@conn56 = internal global [23 x %struct.patval] [%struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 798, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.56 = private unnamed_addr constant [5 x i8] c"EC3b\00", align 1
@conn57 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.57 = private unnamed_addr constant [4 x i8] c"EC4\00", align 1
@conn58 = internal global [4 x %struct.patval] [%struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.58 = private unnamed_addr constant [6 x i8] c"CC101\00", align 1
@conn59 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.59 = private unnamed_addr constant [6 x i8] c"CC102\00", align 1
@conn60 = internal global [26 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 756, i32 4 }, %struct.patval { i32 719, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 833, i32 4 }, %struct.patval { i32 686, i32 4 }, %struct.patval { i32 723, i32 4 }, %struct.patval { i32 831, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 682, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 793, i32 4 }, %struct.patval { i32 832, i32 4 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 794, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 683, i32 0 }], align 16
@.str.60 = private unnamed_addr constant [6 x i8] c"CC103\00", align 1
@conn61 = internal global [30 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 719, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 724, i32 4 }, %struct.patval { i32 761, i32 4 }, %struct.patval { i32 798, i32 4 }, %struct.patval { i32 794, i32 4 }, %struct.patval { i32 831, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 682, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 686, i32 4 }, %struct.patval { i32 834, i32 4 }, %struct.patval { i32 832, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 833, i32 4 }, %struct.patval { i32 756, i32 4 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 757, i32 0 }], align 16
@.str.61 = private unnamed_addr constant [6 x i8] c"CC104\00", align 1
@conn62 = internal global [21 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 719, i32 4 }, %struct.patval { i32 723, i32 4 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 682, i32 4 }, %struct.patval { i32 686, i32 4 }, %struct.patval { i32 756, i32 4 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 794, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 646, i32 0 }, %struct.patval { i32 683, i32 0 }], align 16
@.str.62 = private unnamed_addr constant [6 x i8] c"CC105\00", align 1
@conn63 = internal global [20 x %struct.patval] [%struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 724, i32 2 }, %struct.patval { i32 650, i32 4 }, %struct.patval { i32 798, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 761, i32 0 }, %struct.patval { i32 795, i32 0 }], align 16
@.str.63 = private unnamed_addr constant [6 x i8] c"CC106\00", align 1
@conn64 = internal global [20 x %struct.patval] [%struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 761, i32 2 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 798, i32 0 }], align 16
@.str.64 = private unnamed_addr constant [6 x i8] c"CC107\00", align 1
@conn65 = internal global [12 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 724, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.65 = private unnamed_addr constant [6 x i8] c"CC108\00", align 1
@conn66 = internal global [16 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 724, i32 2 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 795, i32 4 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 761, i32 4 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 798, i32 4 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.66 = private unnamed_addr constant [6 x i8] c"CC109\00", align 1
@conn67 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.67 = private unnamed_addr constant [6 x i8] c"CC201\00", align 1
@conn68 = internal global [6 x %struct.patval] [%struct.patval { i32 723, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.68 = private unnamed_addr constant [6 x i8] c"CC202\00", align 1
@conn69 = internal global [6 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.69 = private unnamed_addr constant [6 x i8] c"CC203\00", align 1
@conn70 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.70 = private unnamed_addr constant [6 x i8] c"CC204\00", align 1
@conn71 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.71 = private unnamed_addr constant [6 x i8] c"CC205\00", align 1
@conn72 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 723, i32 4 }, %struct.patval { i32 686, i32 4 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.72 = private unnamed_addr constant [6 x i8] c"CC206\00", align 1
@conn73 = internal global [15 x %struct.patval] [%struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 797, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.73 = private unnamed_addr constant [7 x i8] c"CC206a\00", align 1
@conn74 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.74 = private unnamed_addr constant [6 x i8] c"CC207\00", align 1
@conn75 = internal global [4 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.75 = private unnamed_addr constant [6 x i8] c"CC208\00", align 1
@conn76 = internal global [8 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.76 = private unnamed_addr constant [6 x i8] c"CC209\00", align 1
@conn77 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.77 = private unnamed_addr constant [6 x i8] c"CC302\00", align 1
@conn78 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.78 = private unnamed_addr constant [6 x i8] c"CC311\00", align 1
@conn79 = internal global [8 x %struct.patval] [%struct.patval { i32 649, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 650, i32 4 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.79 = private unnamed_addr constant [6 x i8] c"CC312\00", align 1
@conn80 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.80 = private unnamed_addr constant [6 x i8] c"CC313\00", align 1
@conn81 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.81 = private unnamed_addr constant [6 x i8] c"CC321\00", align 1
@conn82 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.82 = private unnamed_addr constant [6 x i8] c"CC322\00", align 1
@conn83 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.83 = private unnamed_addr constant [6 x i8] c"CC323\00", align 1
@conn84 = internal global [7 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.84 = private unnamed_addr constant [6 x i8] c"CC401\00", align 1
@conn85 = internal global [9 x %struct.patval] [%struct.patval { i32 649, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.85 = private unnamed_addr constant [6 x i8] c"CC402\00", align 1
@conn86 = internal global [4 x %struct.patval] [%struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.86 = private unnamed_addr constant [6 x i8] c"CC501\00", align 1
@conn87 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.87 = private unnamed_addr constant [6 x i8] c"CC502\00", align 1
@conn88 = internal global [4 x %struct.patval] [%struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.88 = private unnamed_addr constant [7 x i8] c"CC502b\00", align 1
@conn89 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.89 = private unnamed_addr constant [6 x i8] c"CC503\00", align 1
@conn90 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.90 = private unnamed_addr constant [6 x i8] c"CC504\00", align 1
@conn91 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.91 = private unnamed_addr constant [6 x i8] c"CC505\00", align 1
@conn92 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.92 = private unnamed_addr constant [6 x i8] c"CC506\00", align 1
@conn93 = internal global [8 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 4 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.93 = private unnamed_addr constant [7 x i8] c"CC506b\00", align 1
@conn94 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.94 = private unnamed_addr constant [6 x i8] c"CC507\00", align 1
@conn95 = internal global [5 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.95 = private unnamed_addr constant [6 x i8] c"CC508\00", align 1
@conn96 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 724, i32 2 }, %struct.patval { i32 687, i32 3 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.96 = private unnamed_addr constant [6 x i8] c"CC509\00", align 1
@conn97 = internal global [4 x %struct.patval] [%struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.97 = private unnamed_addr constant [6 x i8] c"CC511\00", align 1
@conn98 = internal global [7 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 687, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 686, i32 4 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.98 = private unnamed_addr constant [7 x i8] c"Lunch1\00", align 1
@conn99 = internal global [6 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.99 = private unnamed_addr constant [7 x i8] c"Lunch2\00", align 1
@conn100 = internal global [6 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 686, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.100 = private unnamed_addr constant [7 x i8] c"Lunch3\00", align 1
@transformation = external global [1369 x [8 x i32]], align 16
@stackp = external global i32, align 4
@worm = external global [400 x %struct.worm_data], align 16
@initial_white_influence = external global %struct.influence_data, align 1
@initial_black_influence = external global %struct.influence_data, align 1

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn6(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
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
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 3, i32 %12, i32 %13, i32 %14, i32 %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %16 = load i32, i32* %color.addr, align 4
  %sub7 = sub nsw i32 3, %16
  %17 = load i32, i32* %move.addr, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %c, align 4
  %20 = load i32, i32* %c, align 4
  %call8 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub7, i32 1, i32 3, i32 %17, i32 %18, i32 %19, i32 %20)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %21 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %21 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn7(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 2, i32 %12, i32 %13, i32 %14)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %15 = load i32, i32* %color.addr, align 4
  %sub7 = sub nsw i32 3, %15
  %16 = load i32, i32* %move.addr, align 4
  %17 = load i32, i32* %b, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %a, align 4
  %call8 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub7, i32 1, i32 3, i32 %16, i32 %17, i32 %18, i32 %19)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %20 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn9(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %11 = load i32, i32* %color.addr, align 4
  %sub4 = sub nsw i32 3, %11
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %b, align 4
  %call5 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub4, i32 1, i32 1, i32 %12, i32 %13)
  %tobool6 = icmp ne i32 %call5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %14 = phi i1 [ true, %entry ], [ %tobool6, %lor.rhs ]
  %lor.ext = zext i1 %14 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn10(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 2, i32 %9, i32 %10, i32 %11)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn11(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
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
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %c, align 4
  %16 = load i32, i32* %a, align 4
  %17 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 4, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn12(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %c, align 4
  %16 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 4, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn13(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom1
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
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 2, i32 %12, i32 %13, i32 %14, i32 %15)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn14(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
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
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 686), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %e, align 4
  %17 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %18, %19
  store i32 %add15, i32* %f, align 4
  %20 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %20
  %21 = load i32, i32* %move.addr, align 4
  %22 = load i32, i32* %a, align 4
  %23 = load i32, i32* %b, align 4
  %24 = load i32, i32* %c, align 4
  %25 = load i32, i32* %d, align 4
  %26 = load i32, i32* %e, align 4
  %27 = load i32, i32* %f, align 4
  %28 = load i32, i32* %move.addr, align 4
  %29 = load i32, i32* %f, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 7, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn16(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %c, align 4
  %16 = load i32, i32* %a, align 4
  %17 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 4, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn18(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
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
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  %15 = load i32, i32* %move.addr, align 4
  %16 = load i32, i32* %a, align 4
  %17 = load i32, i32* %a, align 4
  %18 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 2, i32 %15, i32 %16, i32 %17, i32 %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %19 = load i32, i32* %color.addr, align 4
  %sub10 = sub nsw i32 3, %19
  %20 = load i32, i32* %move.addr, align 4
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %d, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub10, i32 1, i32 2, i32 %20, i32 %21, i32 %22)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %23 = load i32, i32* %color.addr, align 4
  %sub13 = sub nsw i32 3, %23
  %24 = load i32, i32* %move.addr, align 4
  %25 = load i32, i32* %b, align 4
  %26 = load i32, i32* %c, align 4
  %27 = load i32, i32* %a, align 4
  %28 = load i32, i32* %a, align 4
  %29 = load i32, i32* %d, align 4
  %call14 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub13, i32 1, i32 4, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %tobool15 = icmp ne i32 %call14, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %30 = phi i1 [ true, %land.rhs ], [ %tobool15, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %31 = phi i1 [ false, %entry ], [ %30, %lor.end ]
  %land.ext = zext i1 %31 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn19(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 2, i32 %9, i32 %10, i32 %11, i32 %12)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn21(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
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
  store i32 %add, i32* %D, align 4
  %5 = load i32, i32* %D, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp eq i32 %call, 3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn22(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
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
  store i32 %add, i32* %D, align 4
  %5 = load i32, i32* %D, align 4
  %call = call i32 @countlib(i32 %5)
  %cmp = icmp eq i32 %call, 3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn24(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %5
  %6 = load i32, i32* %move.addr, align 4
  %7 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 0, i32 1, i32 %6, i32 %7)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn25(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  %15 = load i32, i32* %move.addr, align 4
  %16 = load i32, i32* %a, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %d, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 2, i32 %15, i32 %16, i32 %17, i32 %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %19 = load i32, i32* %color.addr, align 4
  %sub10 = sub nsw i32 3, %19
  %20 = load i32, i32* %move.addr, align 4
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %c, align 4
  %23 = load i32, i32* %d, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub10, i32 1, i32 2, i32 %20, i32 %21, i32 %22, i32 %23)
  %tobool12 = icmp ne i32 %call11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %24 = phi i1 [ false, %entry ], [ %tobool12, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn26(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %b, align 4
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 3, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %sub4 = sub nsw i32 3, %14
  %15 = load i32, i32* %move.addr, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %a, align 4
  %18 = load i32, i32* %move.addr, align 4
  %19 = load i32, i32* %a, align 4
  %call5 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub4, i32 1, i32 3, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %20 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn27(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom
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
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10, i32 %11)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn28(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %move.addr, align 4
  %16 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 3, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %17 = load i32, i32* %color.addr, align 4
  %sub7 = sub nsw i32 3, %17
  %18 = load i32, i32* %move.addr, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* %c, align 4
  %22 = load i32, i32* %move.addr, align 4
  %23 = load i32, i32* %a, align 4
  %call8 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub7, i32 0, i32 4, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %tobool9 = icmp ne i32 %call8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %24 = phi i1 [ false, %entry ], [ %tobool9, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn29(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 682), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10, i32 %11)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn30(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom
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
  %call = call i32 @countlib(i32 %8)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %9 = load i32, i32* %b, align 4
  %call4 = call i32 @countlib(i32 %9)
  %cmp5 = icmp eq i32 %call4, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %10 = phi i1 [ true, %entry ], [ %cmp5, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn31(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom
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
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10, i32 %11)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare i32 @basic_cut_helper(%struct.pattern*, i32, i32, i32) #1

declare i32 @ugly_cutstone_helper(%struct.pattern*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn34(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %A, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 16
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %7 = load i32, i32* %arrayidx3, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.rhs, label %land.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %A, align 4
  %call = call i32 @attack(i32 %8, i32* null)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false, %cond.true
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %10
  %call5 = call i32 @safe_move(i32 %9, i32 %sub)
  %tobool6 = icmp ne i32 %call5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false, %cond.true
  %11 = phi i1 [ false, %cond.false ], [ false, %cond.true ], [ %tobool6, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  ret i32 %land.ext
}

declare i32 @cutstone2_helper(%struct.pattern*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn35(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %A, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 16
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %7 = load i32, i32* %arrayidx3, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %A, align 4
  %call = call i32 @attack(i32 %8, i32* null)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %call, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn37(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %B, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %move.addr, align 4
  %12 = load i32, i32* %B, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 0, i32 2, i32 %9, i32 %10, i32 %11, i32 %12)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn38(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %d = alloca i32, align 4
  %B = alloca i32, align 4
  %C = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %d, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %B, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %C, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  %15 = load i32, i32* %move.addr, align 4
  %16 = load i32, i32* %a, align 4
  %17 = load i32, i32* %move.addr, align 4
  %18 = load i32, i32* %B, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 0, i32 2, i32 %15, i32 %16, i32 %17, i32 %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %19 = load i32, i32* %color.addr, align 4
  %sub10 = sub nsw i32 3, %19
  %20 = load i32, i32* %move.addr, align 4
  %21 = load i32, i32* %d, align 4
  %22 = load i32, i32* %move.addr, align 4
  %23 = load i32, i32* %C, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub10, i32 0, i32 2, i32 %20, i32 %21, i32 %22, i32 %23)
  %tobool12 = icmp ne i32 %call11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %24 = phi i1 [ false, %entry ], [ %tobool12, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn39(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
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
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 719), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %A, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 757), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %B, align 4
  %14 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load i32, i32* %A, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom10
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx11, i32 0, i32 16
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %16 = load i32, i32* %arrayidx12, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

cond.false:                                       ; preds = %entry
  %17 = load i32, i32* %A, align 4
  %call = call i32 @attack(i32 %17, i32* null)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %18 = load i32, i32* @stackp, align 4
  %cmp14 = icmp eq i32 %18, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.21

cond.true.15:                                     ; preds = %land.lhs.true
  %19 = load i32, i32* %B, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom16
  %attack_codes18 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx17, i32 0, i32 16
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes18, i32 0, i64 0
  %20 = load i32, i32* %arrayidx19, align 4
  %tobool20 = icmp ne i32 %20, 0
  br i1 %tobool20, label %land.end, label %land.lhs.true.24

cond.false.21:                                    ; preds = %land.lhs.true
  %21 = load i32, i32* %B, align 4
  %call22 = call i32 @attack(i32 %21, i32* null)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.end, label %land.lhs.true.24

land.lhs.true.24:                                 ; preds = %cond.false.21, %cond.true.15
  %22 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %22
  %23 = load i32, i32* %move.addr, align 4
  %24 = load i32, i32* %a, align 4
  %25 = load i32, i32* %b, align 4
  %26 = load i32, i32* %move.addr, align 4
  %call25 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 3, i32 %23, i32 %24, i32 %25, i32 %26)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.24
  %27 = load i32, i32* %color.addr, align 4
  %sub27 = sub nsw i32 3, %27
  %28 = load i32, i32* %move.addr, align 4
  %29 = load i32, i32* %b, align 4
  %30 = load i32, i32* %a, align 4
  %31 = load i32, i32* %move.addr, align 4
  %call28 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub27, i32 1, i32 3, i32 %28, i32 %29, i32 %30, i32 %31)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot = xor i1 %tobool29, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.24, %cond.false.21, %cond.true.15, %cond.false, %cond.true
  %32 = phi i1 [ false, %land.lhs.true.24 ], [ false, %cond.false.21 ], [ false, %cond.true.15 ], [ false, %cond.false ], [ false, %cond.true ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %32 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn40(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 682), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10, i32 %11)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn41(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  store i32 %add3, i32* %B, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %move.addr, align 4
  %12 = load i32, i32* %B, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 0, i32 2, i32 %9, i32 %10, i32 %11, i32 %12)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn42(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %b, align 4
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 0, i32 3, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn43(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %F = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %d, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %e, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %F, align 4
  %17 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %17
  %18 = load i32, i32* %move.addr, align 4
  %19 = load i32, i32* %a, align 4
  %20 = load i32, i32* %b, align 4
  %21 = load i32, i32* %d, align 4
  %22 = load i32, i32* %e, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 0, i32 3, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %23 = load i32, i32* %color.addr, align 4
  %sub13 = sub nsw i32 3, %23
  %24 = load i32, i32* %move.addr, align 4
  %25 = load i32, i32* %a, align 4
  %26 = load i32, i32* %b, align 4
  %27 = load i32, i32* %e, align 4
  %28 = load i32, i32* %d, align 4
  %call14 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub13, i32 0, i32 3, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %29 = load i32, i32* %color.addr, align 4
  %sub16 = sub nsw i32 3, %29
  %30 = load i32, i32* %move.addr, align 4
  %31 = load i32, i32* %b, align 4
  %32 = load i32, i32* %a, align 4
  %33 = load i32, i32* %a, align 4
  %34 = load i32, i32* %F, align 4
  %call17 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub16, i32 0, i32 3, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  %tobool18 = icmp ne i32 %call17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %35 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool18, %land.rhs ]
  %land.ext = zext i1 %35 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn44(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %c, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %A, align 4
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %A, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %12, i32 %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %sub7 = sub nsw i32 3, %14
  %15 = load i32, i32* %move.addr, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %c, align 4
  %19 = load i32, i32* %move.addr, align 4
  %call8 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub7, i32 1, i32 3, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %20 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn45(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 649), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %b, align 4
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 3, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %14 = load i32, i32* %color.addr, align 4
  %sub4 = sub nsw i32 3, %14
  %15 = load i32, i32* %move.addr, align 4
  %16 = load i32, i32* %a, align 4
  %17 = load i32, i32* %b, align 4
  %18 = load i32, i32* %move.addr, align 4
  %19 = load i32, i32* %b, align 4
  %call5 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub4, i32 1, i32 3, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %20 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn46(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
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
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10, i32 %11)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn47(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 649), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %sub, i32 1, i32 0, i32 %9, i32 %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %11 = load i32, i32* %color.addr, align 4
  %sub4 = sub nsw i32 3, %11
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* %b, align 4
  %call5 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %sub4, i32 1, i32 1, i32 %12, i32 %13, i32 %14)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %15 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn48(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom
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
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %b, align 4
  %call = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10, i32 %11)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn49(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 645), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %b, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %c, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom4
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
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  %15 = load i32, i32* %move.addr, align 4
  %16 = load i32, i32* %A, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 1, i32 %15, i32 %16)
  %cmp = icmp slt i32 %call, 5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %17 = load i32, i32* %color.addr, align 4
  %sub10 = sub nsw i32 3, %17
  %18 = load i32, i32* %move.addr, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %d, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %sub10, i32 1, i32 3, i32 %18, i32 0, i32 %19, i32 %20, i32 %21)
  %tobool = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %22 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn50(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
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
  store i32 %add, i32* %c, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %d, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 719), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %A, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 757), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %B, align 4
  %14 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load i32, i32* %A, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom10
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx11, i32 0, i32 16
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %16 = load i32, i32* %arrayidx12, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

cond.false:                                       ; preds = %entry
  %17 = load i32, i32* %A, align 4
  %call = call i32 @attack(i32 %17, i32* null)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %18 = load i32, i32* @stackp, align 4
  %cmp14 = icmp eq i32 %18, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.21

cond.true.15:                                     ; preds = %land.lhs.true
  %19 = load i32, i32* %B, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom16
  %attack_codes18 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx17, i32 0, i32 16
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes18, i32 0, i64 0
  %20 = load i32, i32* %arrayidx19, align 4
  %tobool20 = icmp ne i32 %20, 0
  br i1 %tobool20, label %land.end, label %land.lhs.true.24

cond.false.21:                                    ; preds = %land.lhs.true
  %21 = load i32, i32* %B, align 4
  %call22 = call i32 @attack(i32 %21, i32* null)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.end, label %land.lhs.true.24

land.lhs.true.24:                                 ; preds = %cond.false.21, %cond.true.15
  %22 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %22
  %23 = load i32, i32* %move.addr, align 4
  %24 = load i32, i32* %c, align 4
  %25 = load i32, i32* %d, align 4
  %26 = load i32, i32* %move.addr, align 4
  %call25 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 3, i32 %23, i32 %24, i32 %25, i32 %26)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.24
  %27 = load i32, i32* %color.addr, align 4
  %sub27 = sub nsw i32 3, %27
  %28 = load i32, i32* %move.addr, align 4
  %29 = load i32, i32* %d, align 4
  %30 = load i32, i32* %c, align 4
  %31 = load i32, i32* %move.addr, align 4
  %call28 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub27, i32 1, i32 3, i32 %28, i32 %29, i32 %30, i32 %31)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot = xor i1 %tobool29, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.24, %cond.false.21, %cond.true.15, %cond.false, %cond.true
  %32 = phi i1 [ false, %land.lhs.true.24 ], [ false, %cond.false.21 ], [ false, %cond.true.15 ], [ false, %cond.false ], [ false, %cond.true ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %32 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn51(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom
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
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %A, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %B, align 4
  %14 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load i32, i32* %A, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom10
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx11, i32 0, i32 16
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %16 = load i32, i32* %arrayidx12, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

cond.false:                                       ; preds = %entry
  %17 = load i32, i32* %A, align 4
  %call = call i32 @attack(i32 %17, i32* null)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %18 = load i32, i32* @stackp, align 4
  %cmp14 = icmp eq i32 %18, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.21

cond.true.15:                                     ; preds = %land.lhs.true
  %19 = load i32, i32* %B, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom16
  %attack_codes18 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx17, i32 0, i32 16
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes18, i32 0, i64 0
  %20 = load i32, i32* %arrayidx19, align 4
  %tobool20 = icmp ne i32 %20, 0
  br i1 %tobool20, label %land.end, label %land.rhs

cond.false.21:                                    ; preds = %land.lhs.true
  %21 = load i32, i32* %B, align 4
  %call22 = call i32 @attack(i32 %21, i32* null)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %cond.false.21, %cond.true.15
  %22 = load i32, i32* %color.addr, align 4
  %23 = load i32, i32* %a, align 4
  %24 = load i32, i32* %b, align 4
  %call24 = call i32 (i32, i32, i32, ...) @somewhere(i32 %22, i32 0, i32 2, i32 %23, i32 %24)
  %tobool25 = icmp ne i32 %call24, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false.21, %cond.true.15, %cond.false, %cond.true
  %25 = phi i1 [ false, %cond.false.21 ], [ false, %cond.true.15 ], [ false, %cond.false ], [ false, %cond.true ], [ %tobool25, %land.rhs ]
  %land.ext = zext i1 %25 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn54(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %d, align 4
  %19 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 0, i32 4, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %20 = load i32, i32* %color.addr, align 4
  %sub10 = sub nsw i32 3, %20
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %d, align 4
  %24 = load i32, i32* %c, align 4
  %25 = load i32, i32* %d, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub10, i32 0, i32 4, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %26 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %26 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn55(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %5
  %cmp = icmp eq i32 %sub, 1
  %cond = select i1 %cmp, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %6 = load i32, i32* %a, align 4
  %call = call i32 @whose_moyo(%struct.influence_data* %cond, i32 %6)
  %7 = load i32, i32* %color.addr, align 4
  %cmp1 = icmp eq i32 %call, %7
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn56(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 682), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %e, align 4
  %17 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %18, %19
  store i32 %add15, i32* %f, align 4
  %20 = load i32, i32* %trans.addr, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom16
  %21 = load i32, i32* %arrayidx17, align 4
  %22 = load i32, i32* %move.addr, align 4
  %add18 = add nsw i32 %21, %22
  store i32 %add18, i32* %g, align 4
  %23 = load i32, i32* %trans.addr, align 4
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom19
  %24 = load i32, i32* %arrayidx20, align 4
  %25 = load i32, i32* %move.addr, align 4
  %add21 = add nsw i32 %24, %25
  store i32 %add21, i32* %h, align 4
  %26 = load i32, i32* %trans.addr, align 4
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 609), i32 0, i64 %idxprom22
  %27 = load i32, i32* %arrayidx23, align 4
  %28 = load i32, i32* %move.addr, align 4
  %add24 = add nsw i32 %27, %28
  store i32 %add24, i32* %i, align 4
  %29 = load i32, i32* %trans.addr, align 4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 645), i32 0, i64 %idxprom25
  %30 = load i32, i32* %arrayidx26, align 4
  %31 = load i32, i32* %move.addr, align 4
  %add27 = add nsw i32 %30, %31
  store i32 %add27, i32* %j, align 4
  %32 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %32
  %33 = load i32, i32* %a, align 4
  %34 = load i32, i32* %b, align 4
  %35 = load i32, i32* %c, align 4
  %36 = load i32, i32* %d, align 4
  %37 = load i32, i32* %e, align 4
  %38 = load i32, i32* %f, align 4
  %39 = load i32, i32* %g, align 4
  %40 = load i32, i32* %h, align 4
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %j, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 10, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn57(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %e, align 4
  %17 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 796), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %18, %19
  store i32 %add15, i32* %f, align 4
  %20 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %20
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %c, align 4
  %25 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 3, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %26 = load i32, i32* %color.addr, align 4
  %sub16 = sub nsw i32 3, %26
  %27 = load i32, i32* %d, align 4
  %28 = load i32, i32* %e, align 4
  %29 = load i32, i32* %f, align 4
  %call17 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub16, i32 1, i32 2, i32 %27, i32 %28, i32 %29)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %30 = load i32, i32* %color.addr, align 4
  %sub19 = sub nsw i32 3, %30
  %31 = load i32, i32* %b, align 4
  %32 = load i32, i32* %a, align 4
  %33 = load i32, i32* %e, align 4
  %34 = load i32, i32* %d, align 4
  %35 = load i32, i32* %d, align 4
  %call20 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub19, i32 1, i32 4, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %36 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %36 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn58(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %9
  %call = call i32 @cut_possible(i32 %8, i32 %sub)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %10 = load i32, i32* %b, align 4
  %11 = load i32, i32* %color.addr, align 4
  %sub4 = sub nsw i32 3, %11
  %call5 = call i32 @cut_possible(i32 %10, i32 %sub4)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn65(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 686), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %e, align 4
  %17 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %18, %19
  store i32 %add15, i32* %f, align 4
  %20 = load i32, i32* %trans.addr, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 760), i32 0, i64 %idxprom16
  %21 = load i32, i32* %arrayidx17, align 4
  %22 = load i32, i32* %move.addr, align 4
  %add18 = add nsw i32 %21, %22
  store i32 %add18, i32* %g, align 4
  %23 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %23
  %cmp = icmp eq i32 %sub, 1
  %cond = select i1 %cmp, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %24 = load i32, i32* %a, align 4
  %call = call i32 @whose_moyo(%struct.influence_data* %cond, i32 %24)
  %25 = load i32, i32* %color.addr, align 4
  %cmp19 = icmp eq i32 %call, %25
  br i1 %cmp19, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %26 = load i32, i32* %color.addr, align 4
  %sub20 = sub nsw i32 3, %26
  %cmp21 = icmp eq i32 %sub20, 1
  %cond22 = select i1 %cmp21, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %27 = load i32, i32* %c, align 4
  %call23 = call i32 @whose_area(%struct.influence_data* %cond22, i32 %27)
  %28 = load i32, i32* %color.addr, align 4
  %cmp24 = icmp eq i32 %call23, %28
  br i1 %cmp24, label %land.lhs.true.25, label %land.end

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %29 = load i32, i32* %color.addr, align 4
  %sub26 = sub nsw i32 3, %29
  %cmp27 = icmp eq i32 %sub26, 1
  %cond28 = select i1 %cmp27, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %30 = load i32, i32* %f, align 4
  %call29 = call i32 @whose_area(%struct.influence_data* %cond28, i32 %30)
  %31 = load i32, i32* %color.addr, align 4
  %cmp30 = icmp eq i32 %call29, %31
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.25
  %32 = load i32, i32* %color.addr, align 4
  %sub31 = sub nsw i32 3, %32
  %cmp32 = icmp eq i32 %sub31, 1
  %cond33 = select i1 %cmp32, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %33 = load i32, i32* %b, align 4
  %call34 = call i32 @whose_moyo(%struct.influence_data* %cond33, i32 %33)
  %34 = load i32, i32* %color.addr, align 4
  %cmp35 = icmp eq i32 %call34, %34
  %conv = zext i1 %cmp35 to i32
  %35 = load i32, i32* %color.addr, align 4
  %sub36 = sub nsw i32 3, %35
  %cmp37 = icmp eq i32 %sub36, 1
  %cond39 = select i1 %cmp37, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %36 = load i32, i32* %c, align 4
  %call40 = call i32 @whose_moyo(%struct.influence_data* %cond39, i32 %36)
  %37 = load i32, i32* %color.addr, align 4
  %cmp41 = icmp eq i32 %call40, %37
  %conv42 = zext i1 %cmp41 to i32
  %add43 = add nsw i32 %conv, %conv42
  %38 = load i32, i32* %color.addr, align 4
  %sub44 = sub nsw i32 3, %38
  %cmp45 = icmp eq i32 %sub44, 1
  %cond47 = select i1 %cmp45, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %39 = load i32, i32* %d, align 4
  %call48 = call i32 @whose_moyo(%struct.influence_data* %cond47, i32 %39)
  %40 = load i32, i32* %color.addr, align 4
  %cmp49 = icmp eq i32 %call48, %40
  %conv50 = zext i1 %cmp49 to i32
  %add51 = add nsw i32 %add43, %conv50
  %41 = load i32, i32* %color.addr, align 4
  %sub52 = sub nsw i32 3, %41
  %cmp53 = icmp eq i32 %sub52, 1
  %cond55 = select i1 %cmp53, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %42 = load i32, i32* %e, align 4
  %call56 = call i32 @whose_moyo(%struct.influence_data* %cond55, i32 %42)
  %43 = load i32, i32* %color.addr, align 4
  %cmp57 = icmp eq i32 %call56, %43
  %conv58 = zext i1 %cmp57 to i32
  %add59 = add nsw i32 %add51, %conv58
  %44 = load i32, i32* %color.addr, align 4
  %sub60 = sub nsw i32 3, %44
  %cmp61 = icmp eq i32 %sub60, 1
  %cond63 = select i1 %cmp61, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %45 = load i32, i32* %f, align 4
  %call64 = call i32 @whose_moyo(%struct.influence_data* %cond63, i32 %45)
  %46 = load i32, i32* %color.addr, align 4
  %cmp65 = icmp eq i32 %call64, %46
  %conv66 = zext i1 %cmp65 to i32
  %add67 = add nsw i32 %add59, %conv66
  %47 = load i32, i32* %color.addr, align 4
  %sub68 = sub nsw i32 3, %47
  %cmp69 = icmp eq i32 %sub68, 1
  %cond71 = select i1 %cmp69, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %48 = load i32, i32* %g, align 4
  %call72 = call i32 @whose_moyo(%struct.influence_data* %cond71, i32 %48)
  %49 = load i32, i32* %color.addr, align 4
  %cmp73 = icmp eq i32 %call72, %49
  %conv74 = zext i1 %cmp73 to i32
  %add75 = add nsw i32 %add67, %conv74
  %cmp76 = icmp sge i32 %add75, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.25, %land.lhs.true, %entry
  %50 = phi i1 [ false, %land.lhs.true.25 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp76, %land.rhs ]
  %land.ext = zext i1 %50 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn66(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 724), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  %cmp = icmp eq i32 %sub, 1
  %cond = select i1 %cmp, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %15 = load i32, i32* %a, align 4
  %call = call i32 @whose_moyo(%struct.influence_data* %cond, i32 %15)
  %16 = load i32, i32* %color.addr, align 4
  %cmp10 = icmp eq i32 %call, %16
  br i1 %cmp10, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %17 = load i32, i32* %color.addr, align 4
  %sub11 = sub nsw i32 3, %17
  %cmp12 = icmp eq i32 %sub11, 1
  %cond13 = select i1 %cmp12, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %18 = load i32, i32* %b, align 4
  %call14 = call i32 @whose_moyo(%struct.influence_data* %cond13, i32 %18)
  %19 = load i32, i32* %color.addr, align 4
  %cmp15 = icmp eq i32 %call14, %19
  br i1 %cmp15, label %land.lhs.true.16, label %land.end

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %20 = load i32, i32* %c, align 4
  %call17 = call i32 @countlib(i32 %20)
  %cmp18 = icmp sge i32 %call17, 4
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.16
  %21 = load i32, i32* %d, align 4
  %call19 = call i32 @countlib(i32 %21)
  %cmp20 = icmp sge i32 %call19, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.16, %land.lhs.true, %entry
  %22 = phi i1 [ false, %land.lhs.true.16 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp20, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn67(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %c, align 4
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 3, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn68(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %C, align 4
  %11 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %11
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %a, align 4
  %15 = load i32, i32* %C, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 0, i32 2, i32 %12, i32 %13, i32 %14, i32 %15)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn69(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %C = alloca i32, align 4
  %D = alloca i32, align 4
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 649), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %C, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %D, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %C, align 4
  %18 = load i32, i32* %D, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 0, i32 2, i32 %15, i32 %16, i32 %17, i32 %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %19 = load i32, i32* %color.addr, align 4
  %sub10 = sub nsw i32 3, %19
  %20 = load i32, i32* %b, align 4
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %C, align 4
  %23 = load i32, i32* %D, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub10, i32 0, i32 2, i32 %20, i32 %21, i32 %22, i32 %23)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %24 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn70(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %6 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %6
  %call = call i32 @safe_move(i32 %5, i32 %sub)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %A, align 4
  %call1 = call i32 @is_ko_point(i32 %7)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* %A, align 4
  %9 = load i32, i32* %color.addr, align 4
  %sub3 = sub nsw i32 3, %9
  %call4 = call i32 @cut_possible(i32 %8, i32 %sub3)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn71(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 571), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %c, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 535), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %d, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 572), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %A, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %B, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  %15 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @somewhere(i32 %sub, i32 0, i32 1, i32 %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %16 = load i32, i32* %color.addr, align 4
  %17 = load i32, i32* %c, align 4
  %call10 = call i32 (i32, i32, i32, ...) @somewhere(i32 %16, i32 0, i32 1, i32 %17)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %18 = load i32, i32* %c, align 4
  %19 = load i32, i32* %color.addr, align 4
  %sub13 = sub nsw i32 3, %19
  %call14 = call i32 @cut_possible(i32 %18, i32 %sub13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.12, %lor.lhs.false, %entry
  %20 = load i32, i32* %color.addr, align 4
  %sub16 = sub nsw i32 3, %20
  %21 = load i32, i32* %d, align 4
  %call17 = call i32 (i32, i32, i32, ...) @somewhere(i32 %sub16, i32 0, i32 1, i32 %21)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true.26, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true
  %22 = load i32, i32* %color.addr, align 4
  %23 = load i32, i32* %c, align 4
  %call20 = call i32 (i32, i32, i32, ...) @somewhere(i32 %22, i32 0, i32 1, i32 %23)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %land.lhs.true.26, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.19
  %24 = load i32, i32* %d, align 4
  %25 = load i32, i32* %color.addr, align 4
  %sub23 = sub nsw i32 3, %25
  %call24 = call i32 @cut_possible(i32 %24, i32 %sub23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %lor.rhs, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %lor.lhs.false.22, %lor.lhs.false.19, %land.lhs.true
  %26 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.26
  %27 = load i32, i32* %A, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom27
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx28, i32 0, i32 16
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %28 = load i32, i32* %arrayidx29, align 4
  %tobool30 = icmp ne i32 %28, 0
  br i1 %tobool30, label %lor.end, label %lor.rhs

cond.false:                                       ; preds = %land.lhs.true.26
  %29 = load i32, i32* %A, align 4
  %call31 = call i32 @attack(i32 %29, i32* null)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false, %cond.true, %lor.lhs.false.22, %lor.lhs.false.12
  %30 = load i32, i32* %B, align 4
  %call33 = call i32 @is_ko_point(i32 %30)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %land.end, label %land.lhs.true.35

land.lhs.true.35:                                 ; preds = %lor.rhs
  %31 = load i32, i32* %B, align 4
  %32 = load i32, i32* %color.addr, align 4
  %sub36 = sub nsw i32 3, %32
  %call37 = call i32 @cut_possible(i32 %31, i32 %sub36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.35
  %33 = load i32, i32* %B, align 4
  %34 = load i32, i32* %color.addr, align 4
  %sub39 = sub nsw i32 3, %34
  %call40 = call i32 @safe_move(i32 %33, i32 %sub39)
  %tobool41 = icmp ne i32 %call40, 0
  %lnot = xor i1 %tobool41, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.35, %lor.rhs
  %35 = phi i1 [ false, %land.lhs.true.35 ], [ false, %lor.rhs ], [ %lnot, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %cond.false, %cond.true
  %36 = phi i1 [ true, %cond.false ], [ true, %cond.true ], [ %35, %land.end ]
  %lor.ext = zext i1 %36 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn72(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 3, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %20 = load i32, i32* %color.addr, align 4
  %sub10 = sub nsw i32 3, %20
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %a, align 4
  %23 = load i32, i32* %d, align 4
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %d, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub10, i32 1, i32 3, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %cmp12 = icmp eq i32 %call11, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %26 = phi i1 [ false, %entry ], [ %cmp12, %land.rhs ]
  %land.ext = zext i1 %26 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn73(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 686), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %e, align 4
  %17 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %18, %19
  store i32 %add15, i32* %f, align 4
  %20 = load i32, i32* %trans.addr, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 612), i32 0, i64 %idxprom16
  %21 = load i32, i32* %arrayidx17, align 4
  %22 = load i32, i32* %move.addr, align 4
  %add18 = add nsw i32 %21, %22
  store i32 %add18, i32* %g, align 4
  %23 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %23
  %24 = load i32, i32* %a, align 4
  %25 = load i32, i32* %b, align 4
  %26 = load i32, i32* %c, align 4
  %27 = load i32, i32* %d, align 4
  %28 = load i32, i32* %e, align 4
  %29 = load i32, i32* %f, align 4
  %30 = load i32, i32* %g, align 4
  %31 = load i32, i32* %a, align 4
  %32 = load i32, i32* %g, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 7, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn74(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %A, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %B, align 4
  %8 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i32, i32* %A, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom4
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx5, i32 0, i32 16
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %10 = load i32, i32* %arrayidx6, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %A, align 4
  %call = call i32 @attack(i32 %11, i32* null)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %12 = load i32, i32* @stackp, align 4
  %cmp8 = icmp eq i32 %12, 0
  br i1 %cmp8, label %cond.true.9, label %cond.false.15

cond.true.9:                                      ; preds = %land.lhs.true
  %13 = load i32, i32* %B, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom10
  %attack_codes12 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx11, i32 0, i32 16
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes12, i32 0, i64 0
  %14 = load i32, i32* %arrayidx13, align 4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %land.rhs, label %land.end

cond.false.15:                                    ; preds = %land.lhs.true
  %15 = load i32, i32* %B, align 4
  %call16 = call i32 @attack(i32 %15, i32* null)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false.15, %cond.true.9
  %16 = load i32, i32* %color.addr, align 4
  %17 = load i32, i32* %A, align 4
  %18 = load i32, i32* %B, align 4
  %call18 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %16, i32 0, i32 0, i32 %17, i32 %18)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot = xor i1 %tobool19, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false.15, %cond.true.9, %cond.false, %cond.true
  %19 = phi i1 [ false, %cond.false.15 ], [ false, %cond.true.9 ], [ false, %cond.false ], [ false, %cond.true ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %19 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn75(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom
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
  %8 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %8
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* %B, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 1, i32 %9, i32 %10, i32 %11)
  %cmp = icmp eq i32 %call, 5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn76(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 686), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 724), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %D, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 3, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %20 = load i32, i32* %color.addr, align 4
  %sub10 = sub nsw i32 3, %20
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %a, align 4
  %23 = load i32, i32* %D, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub10, i32 0, i32 2, i32 %21, i32 %22, i32 %23)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %24 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn77(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
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
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 686), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %e, align 4
  %17 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 649), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %18, %19
  store i32 %add15, i32* %f, align 4
  %20 = load i32, i32* %trans.addr, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom16
  %21 = load i32, i32* %arrayidx17, align 4
  %22 = load i32, i32* %move.addr, align 4
  %add18 = add nsw i32 %21, %22
  store i32 %add18, i32* %g, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %color.addr, align 4
  %call = call i32 @accuratelib(i32 %23, i32 %24, i32 20, i32* null)
  %cmp = icmp sgt i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %25 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %25
  %26 = load i32, i32* %a, align 4
  %27 = load i32, i32* %b, align 4
  %28 = load i32, i32* %c, align 4
  %29 = load i32, i32* %d, align 4
  %30 = load i32, i32* %e, align 4
  %31 = load i32, i32* %e, align 4
  %call19 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 5, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %land.lhs.true.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %32 = load i32, i32* %color.addr, align 4
  %sub20 = sub nsw i32 3, %32
  %33 = load i32, i32* %a, align 4
  %34 = load i32, i32* %b, align 4
  %35 = load i32, i32* %c, align 4
  %36 = load i32, i32* %e, align 4
  %37 = load i32, i32* %d, align 4
  %38 = load i32, i32* %d, align 4
  %call21 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub20, i32 1, i32 5, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %land.end

land.lhs.true.23:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %39 = load i32, i32* %color.addr, align 4
  %sub24 = sub nsw i32 3, %39
  %40 = load i32, i32* %a, align 4
  %41 = load i32, i32* %b, align 4
  %42 = load i32, i32* %f, align 4
  %call25 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub24, i32 1, i32 2, i32 %40, i32 %41, i32 %42)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.23
  %43 = load i32, i32* %color.addr, align 4
  %sub27 = sub nsw i32 3, %43
  %44 = load i32, i32* %a, align 4
  %45 = load i32, i32* %b, align 4
  %46 = load i32, i32* %g, align 4
  %call28 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub27, i32 1, i32 2, i32 %44, i32 %45, i32 %46)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot = xor i1 %tobool29, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.23, %lor.lhs.false, %entry
  %47 = phi i1 [ false, %land.lhs.true.23 ], [ false, %lor.lhs.false ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %47 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn78(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %E = alloca i32, align 4
  %F = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %E, align 4
  %17 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %18, %19
  store i32 %add15, i32* %F, align 4
  %20 = load i32, i32* %E, align 4
  %call = call i32 @countlib(i32 %20)
  %cmp = icmp sgt i32 %call, 2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %21 = load i32, i32* %F, align 4
  %call16 = call i32 @countlib(i32 %21)
  %cmp17 = icmp sgt i32 %call16, 2
  br i1 %cmp17, label %land.lhs.true.18, label %land.end

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %22 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %22
  %23 = load i32, i32* %a, align 4
  %24 = load i32, i32* %b, align 4
  %25 = load i32, i32* %c, align 4
  %26 = load i32, i32* %a, align 4
  %27 = load i32, i32* %c, align 4
  %call19 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 3, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %cmp20 = icmp eq i32 %call19, 5
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.18
  %28 = load i32, i32* %color.addr, align 4
  %sub21 = sub nsw i32 3, %28
  %29 = load i32, i32* %b, align 4
  %30 = load i32, i32* %a, align 4
  %31 = load i32, i32* %d, align 4
  %32 = load i32, i32* %b, align 4
  %33 = load i32, i32* %d, align 4
  %call22 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub21, i32 1, i32 3, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %cmp23 = icmp eq i32 %call22, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.18, %land.lhs.true, %entry
  %34 = phi i1 [ false, %land.lhs.true.18 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp23, %land.rhs ]
  %land.ext = zext i1 %34 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn79(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
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
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 649), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %a, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub, i32 1, i32 3, i32 %15, i32 %16, i32 %17, i32 %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %19 = load i32, i32* %color.addr, align 4
  %sub10 = sub nsw i32 3, %19
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* %b, align 4
  %22 = load i32, i32* %c, align 4
  %23 = load i32, i32* %c, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub10, i32 1, i32 3, i32 %20, i32 %21, i32 %22, i32 %23)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %24 = load i32, i32* %color.addr, align 4
  %sub13 = sub nsw i32 3, %24
  %25 = load i32, i32* %b, align 4
  %26 = load i32, i32* %a, align 4
  %27 = load i32, i32* %d, align 4
  %28 = load i32, i32* %b, align 4
  %call14 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub13, i32 1, i32 3, i32 %25, i32 %26, i32 %27, i32 %28)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.rhs, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %land.lhs.true
  %29 = load i32, i32* %color.addr, align 4
  %sub17 = sub nsw i32 3, %29
  %30 = load i32, i32* %b, align 4
  %31 = load i32, i32* %a, align 4
  %32 = load i32, i32* %d, align 4
  %33 = load i32, i32* %d, align 4
  %call18 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub17, i32 1, i32 3, i32 %30, i32 %31, i32 %32, i32 %33)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.16, %land.lhs.true
  %34 = load i32, i32* %c, align 4
  %35 = load i32, i32* %color.addr, align 4
  %sub20 = sub nsw i32 3, %35
  %call21 = call i32 @cut_possible(i32 %34, i32 %sub20)
  %tobool22 = icmp ne i32 %call21, 0
  %lnot = xor i1 %tobool22, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.16, %lor.lhs.false
  %36 = phi i1 [ false, %lor.lhs.false.16 ], [ false, %lor.lhs.false ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %36 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn80(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %e, align 4
  %17 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %18, %19
  store i32 %add15, i32* %f, align 4
  %20 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %20
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %a, align 4
  %25 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 3, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %26 = load i32, i32* %color.addr, align 4
  %sub16 = sub nsw i32 3, %26
  %27 = load i32, i32* %b, align 4
  %28 = load i32, i32* %a, align 4
  %29 = load i32, i32* %d, align 4
  %30 = load i32, i32* %b, align 4
  %31 = load i32, i32* %d, align 4
  %call17 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub16, i32 1, i32 3, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %cmp18 = icmp eq i32 %call17, 5
  br i1 %cmp18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %32 = load i32, i32* %color.addr, align 4
  %sub19 = sub nsw i32 3, %32
  %33 = load i32, i32* %b, align 4
  %34 = load i32, i32* %d, align 4
  %35 = load i32, i32* %a, align 4
  %36 = load i32, i32* %e, align 4
  %37 = load i32, i32* %d, align 4
  %38 = load i32, i32* %e, align 4
  %39 = load i32, i32* %f, align 4
  %call20 = call i32 (i32, i32, ...) @play_break_through_n(i32 %sub19, i32 4, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  %tobool = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %40 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %41 = phi i1 [ false, %entry ], [ %40, %lor.end ]
  %land.ext = zext i1 %41 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn81(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %d, align 4
  %19 = load i32, i32* %a, align 4
  %20 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 0, i32 4, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %21 = load i32, i32* %color.addr, align 4
  %sub10 = sub nsw i32 3, %21
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %a, align 4
  %24 = load i32, i32* %d, align 4
  %25 = load i32, i32* %c, align 4
  %26 = load i32, i32* %b, align 4
  %27 = load i32, i32* %d, align 4
  %call11 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub10, i32 0, i32 4, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %28 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %28 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn82(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
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
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 796), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %e, align 4
  %17 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %17
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %d, align 4
  %22 = load i32, i32* %e, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %e, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 1, i32 5, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %25 = load i32, i32* %color.addr, align 4
  %sub13 = sub nsw i32 3, %25
  %26 = load i32, i32* %a, align 4
  %27 = load i32, i32* %b, align 4
  %28 = load i32, i32* %d, align 4
  %29 = load i32, i32* %c, align 4
  %30 = load i32, i32* %a, align 4
  %31 = load i32, i32* %d, align 4
  %call14 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub13, i32 0, i32 4, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %32 = load i32, i32* %color.addr, align 4
  %sub16 = sub nsw i32 3, %32
  %33 = load i32, i32* %b, align 4
  %34 = load i32, i32* %a, align 4
  %35 = load i32, i32* %c, align 4
  %36 = load i32, i32* %c, align 4
  %call17 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub16, i32 1, i32 3, i32 %33, i32 %34, i32 %35, i32 %36)
  %tobool18 = icmp ne i32 %call17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %37 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool18, %land.rhs ]
  %land.ext = zext i1 %37 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn83(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 759), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 758), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 796), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %e, align 4
  %17 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 795), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %18, %19
  store i32 %add15, i32* %f, align 4
  %20 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %20
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %d, align 4
  %25 = load i32, i32* %a, align 4
  %26 = load i32, i32* %c, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub, i32 0, i32 4, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %27 = load i32, i32* %color.addr, align 4
  %sub16 = sub nsw i32 3, %27
  %28 = load i32, i32* %a, align 4
  %29 = load i32, i32* %b, align 4
  %30 = load i32, i32* %d, align 4
  %31 = load i32, i32* %c, align 4
  %32 = load i32, i32* %e, align 4
  %33 = load i32, i32* %d, align 4
  %34 = load i32, i32* %e, align 4
  %call17 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub16, i32 1, i32 5, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %land.end

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %35 = load i32, i32* %color.addr, align 4
  %sub20 = sub nsw i32 3, %35
  %36 = load i32, i32* %d, align 4
  %37 = load i32, i32* %c, align 4
  %38 = load i32, i32* %b, align 4
  %39 = load i32, i32* %a, align 4
  %40 = load i32, i32* %d, align 4
  %call21 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub20, i32 0, i32 4, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %lor.lhs.false, label %land.rhs

lor.lhs.false:                                    ; preds = %land.lhs.true.19
  %41 = load i32, i32* %color.addr, align 4
  %sub23 = sub nsw i32 3, %41
  %42 = load i32, i32* %d, align 4
  %43 = load i32, i32* %c, align 4
  %44 = load i32, i32* %b, align 4
  %45 = load i32, i32* %a, align 4
  %46 = load i32, i32* %e, align 4
  %47 = load i32, i32* %d, align 4
  %call24 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub23, i32 1, i32 5, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %land.end

land.lhs.true.26:                                 ; preds = %lor.lhs.false
  %48 = load i32, i32* %color.addr, align 4
  %sub27 = sub nsw i32 3, %48
  %49 = load i32, i32* %d, align 4
  %50 = load i32, i32* %c, align 4
  %51 = load i32, i32* %b, align 4
  %52 = load i32, i32* %a, align 4
  %53 = load i32, i32* %e, align 4
  %54 = load i32, i32* %b, align 4
  %call28 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub27, i32 1, i32 5, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %land.end

land.lhs.true.30:                                 ; preds = %land.lhs.true.26
  %55 = load i32, i32* %color.addr, align 4
  %sub31 = sub nsw i32 3, %55
  %56 = load i32, i32* %a, align 4
  %57 = load i32, i32* %c, align 4
  %58 = load i32, i32* %b, align 4
  %59 = load i32, i32* %a, align 4
  %60 = load i32, i32* %e, align 4
  %61 = load i32, i32* %e, align 4
  %call32 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub31, i32 1, i32 5, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.30, %land.lhs.true.19
  %62 = load i32, i32* %color.addr, align 4
  %sub34 = sub nsw i32 3, %62
  %63 = load i32, i32* %d, align 4
  %64 = load i32, i32* %c, align 4
  %65 = load i32, i32* %e, align 4
  %66 = load i32, i32* %c, align 4
  %67 = load i32, i32* %f, align 4
  %call35 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub34, i32 0, i32 3, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %tobool36 = icmp ne i32 %call35, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.30, %land.lhs.true.26, %lor.lhs.false, %land.lhs.true, %entry
  %68 = phi i1 [ false, %land.lhs.true.30 ], [ false, %land.lhs.true.26 ], [ false, %lor.lhs.false ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool36, %land.rhs ]
  %land.ext = zext i1 %68 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn84(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 649), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %a, align 4
  %15 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %15
  %call = call i32 @cut_possible(i32 %14, i32 %sub)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %d, align 4
  call void @amalgamate_most_valuable_helper(i32 %16, i32 %17, i32 %18)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn85(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 649), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 650), i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %15 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %14, %15
  store i32 %add12, i32* %e, align 4
  %16 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 686), i32 0, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  %18 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %17, %18
  store i32 %add15, i32* %f, align 4
  %19 = load i32, i32* %trans.addr, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom16
  %20 = load i32, i32* %arrayidx17, align 4
  %21 = load i32, i32* %move.addr, align 4
  %add18 = add nsw i32 %20, %21
  store i32 %add18, i32* %g, align 4
  %22 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %23 = load i32, i32* %a, align 4
  %24 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %24
  %call = call i32 @cut_possible(i32 %23, i32 %sub)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %25 = load i32, i32* %color.addr, align 4
  %sub19 = sub nsw i32 3, %25
  %26 = load i32, i32* %b, align 4
  %27 = load i32, i32* %c, align 4
  %28 = load i32, i32* %d, align 4
  %29 = load i32, i32* %b, align 4
  %30 = load i32, i32* %d, align 4
  %call20 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub19, i32 1, i32 3, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %lor.lhs.false, label %if.then.25

lor.lhs.false:                                    ; preds = %if.end
  %31 = load i32, i32* %color.addr, align 4
  %sub22 = sub nsw i32 3, %31
  %32 = load i32, i32* %c, align 4
  %33 = load i32, i32* %b, align 4
  %34 = load i32, i32* %a, align 4
  %35 = load i32, i32* %c, align 4
  %36 = load i32, i32* %a, align 4
  %call23 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %sub22, i32 1, i32 3, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.else, label %if.then.25

if.then.25:                                       ; preds = %lor.lhs.false, %if.end
  %37 = load i32, i32* %e, align 4
  %38 = load i32, i32* %f, align 4
  call void @join_dragons(i32 %37, i32 %38)
  br label %if.end.26

if.else:                                          ; preds = %lor.lhs.false
  %39 = load i32, i32* %e, align 4
  %40 = load i32, i32* %f, align 4
  %41 = load i32, i32* %g, align 4
  call void @amalgamate_most_valuable_helper(i32 %39, i32 %40, i32 %41)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn86(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %c = alloca i32, align 4
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
  store i32 %add, i32* %c, align 4
  %5 = load i32, i32* %c, align 4
  %6 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %6
  %call = call i32 @is_suicide(i32 %5, i32 %sub)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn87(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom1
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
  store i32 %add6, i32* %c, align 4
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
  %13 = load i32, i32* %c, align 4
  %14 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %14
  %call10 = call i32 @cut_possible(i32 %13, i32 %sub)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %land.end, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %land.lhs.true.9
  %15 = load i32, i32* %c, align 4
  %16 = load i32, i32* %color.addr, align 4
  %sub12 = sub nsw i32 3, %16
  %call13 = call i32 @accuratelib(i32 %15, i32 %sub12, i32 20, i32* null)
  %cmp14 = icmp eq i32 %call13, 1
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.11
  %17 = load i32, i32* %color.addr, align 4
  %sub15 = sub nsw i32 3, %17
  %18 = load i32, i32* %c, align 4
  %19 = load i32, i32* %c, align 4
  %call16 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub15, i32 1, i32 1, i32 %18, i32 %19)
  %cmp17 = icmp eq i32 %call16, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.11, %land.lhs.true.9, %land.lhs.true, %entry
  %20 = phi i1 [ false, %land.lhs.true.11 ], [ false, %land.lhs.true.9 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp17, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn88(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
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
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom1
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
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %a, align 4
  %call = call i32 @countlib(i32 %14)
  %cmp = icmp sgt i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %15 = load i32, i32* %b, align 4
  %call10 = call i32 @countlib(i32 %15)
  %cmp11 = icmp sgt i32 %call10, 1
  br i1 %cmp11, label %land.lhs.true.12, label %land.end

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %16 = load i32, i32* %c, align 4
  %17 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %17
  %call13 = call i32 @cut_possible(i32 %16, i32 %sub)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %land.end, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %land.lhs.true.12
  %18 = load i32, i32* %d, align 4
  %19 = load i32, i32* %color.addr, align 4
  %sub15 = sub nsw i32 3, %19
  %call16 = call i32 @cut_possible(i32 %18, i32 %sub15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.end, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %land.lhs.true.14
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %color.addr, align 4
  %sub19 = sub nsw i32 3, %21
  %call20 = call i32 @accuratelib(i32 %20, i32 %sub19, i32 20, i32* null)
  %cmp21 = icmp eq i32 %call20, 1
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.18
  %22 = load i32, i32* %color.addr, align 4
  %sub22 = sub nsw i32 3, %22
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %c, align 4
  %call23 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %sub22, i32 1, i32 1, i32 %23, i32 %24)
  %tobool24 = icmp ne i32 %call23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.18, %land.lhs.true.14, %land.lhs.true.12, %land.lhs.true, %entry
  %25 = phi i1 [ false, %land.lhs.true.18 ], [ false, %land.lhs.true.14 ], [ false, %land.lhs.true.12 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool24, %land.rhs ]
  %land.ext = zext i1 %25 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn89(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 686), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %12
  %call = call i32 @cut_possible(i32 %11, i32 %sub)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %13 = load i32, i32* %color.addr, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %c, align 4
  %call7 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %13, i32 0, i32 0, i32 %14, i32 %15)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %16 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn90(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %12
  %call = call i32 @cut_possible(i32 %11, i32 %sub)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %13 = load i32, i32* %color.addr, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %c, align 4
  %call7 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %13, i32 0, i32 0, i32 %14, i32 %15)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %16 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn91(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %c, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %d, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 648), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %A, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %B, align 4
  %14 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load i32, i32* %A, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom10
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx11, i32 0, i32 16
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %16 = load i32, i32* %arrayidx12, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.rhs, label %lor.lhs.false

cond.false:                                       ; preds = %entry
  %17 = load i32, i32* %A, align 4
  %call = call i32 @attack(i32 %17, i32* null)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  %18 = load i32, i32* @stackp, align 4
  %cmp14 = icmp eq i32 %18, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.21

cond.true.15:                                     ; preds = %lor.lhs.false
  %19 = load i32, i32* %B, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom16
  %attack_codes18 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx17, i32 0, i32 16
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes18, i32 0, i64 0
  %20 = load i32, i32* %arrayidx19, align 4
  %tobool20 = icmp ne i32 %20, 0
  br i1 %tobool20, label %land.rhs, label %land.end

cond.false.21:                                    ; preds = %lor.lhs.false
  %21 = load i32, i32* %B, align 4
  %call22 = call i32 @attack(i32 %21, i32* null)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false.21, %cond.true.15, %cond.false, %cond.true
  %22 = load i32, i32* %color.addr, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %d, align 4
  %call24 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %22, i32 0, i32 0, i32 %23, i32 %24)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot = xor i1 %tobool25, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false.21, %cond.true.15
  %25 = phi i1 [ false, %cond.false.21 ], [ false, %cond.true.15 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %25 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn92(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 686), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 687), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %a, align 4
  %15 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %15
  %call = call i32 @cut_possible(i32 %14, i32 %sub)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %color.addr, align 4
  %sub10 = sub nsw i32 3, %17
  %call11 = call i32 @cut_possible(i32 %16, i32 %sub10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %18 = load i32, i32* %color.addr, align 4
  %19 = load i32, i32* %c, align 4
  %20 = load i32, i32* %d, align 4
  %call13 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %18, i32 0, i32 0, i32 %19, i32 %20)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %21 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn93(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %E = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %action.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 686), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 687), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 685), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %E, align 4
  %17 = load i32, i32* %a, align 4
  %18 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %18
  %call = call i32 @cut_possible(i32 %17, i32 %sub)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %19 = load i32, i32* %b, align 4
  %20 = load i32, i32* %color.addr, align 4
  %sub13 = sub nsw i32 3, %20
  %call14 = call i32 @cut_possible(i32 %19, i32 %sub13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.end, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %21 = load i32, i32* %E, align 4
  %call17 = call i32 @countlib(i32 %21)
  %cmp = icmp sle i32 %call17, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.16
  %22 = load i32, i32* %color.addr, align 4
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %d, align 4
  %call18 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %22, i32 0, i32 0, i32 %23, i32 %24)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot = xor i1 %tobool19, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.16, %land.lhs.true, %entry
  %25 = phi i1 [ false, %land.lhs.true.16 ], [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %25 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn94(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %a, align 4
  %15 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %15
  %call = call i32 @cut_possible(i32 %14, i32 %sub)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %color.addr, align 4
  %sub10 = sub nsw i32 3, %17
  %call11 = call i32 @cut_possible(i32 %16, i32 %sub10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %18 = load i32, i32* %color.addr, align 4
  %19 = load i32, i32* %c, align 4
  %20 = load i32, i32* %d, align 4
  %call13 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %18, i32 0, i32 0, i32 %19, i32 %20)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %21 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn95(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %12
  %call = call i32 @cut_possible(i32 %11, i32 %sub)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %13 = load i32, i32* %color.addr, align 4
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %c, align 4
  %call7 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %13, i32 0, i32 0, i32 %14, i32 %15)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %16 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn96(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 686), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 723), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* %trans.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 684), i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %15, %16
  store i32 %add12, i32* %e, align 4
  %17 = load i32, i32* %trans.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 724), i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %move.addr, align 4
  %add15 = add nsw i32 %18, %19
  store i32 %add15, i32* %f, align 4
  %20 = load i32, i32* %a, align 4
  %21 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %21
  %call = call i32 @cut_possible(i32 %20, i32 %sub)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %22 = load i32, i32* %b, align 4
  %23 = load i32, i32* %color.addr, align 4
  %sub16 = sub nsw i32 3, %23
  %call17 = call i32 @cut_possible(i32 %22, i32 %sub16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.end, label %land.lhs.true.19

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %24 = load i32, i32* %c, align 4
  %25 = load i32, i32* %color.addr, align 4
  %sub20 = sub nsw i32 3, %25
  %call21 = call i32 @cut_possible(i32 %24, i32 %sub20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.end, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %land.lhs.true.19
  %26 = load i32, i32* %d, align 4
  %27 = load i32, i32* %color.addr, align 4
  %sub24 = sub nsw i32 3, %27
  %call25 = call i32 @cut_possible(i32 %26, i32 %sub24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.23
  %28 = load i32, i32* %color.addr, align 4
  %29 = load i32, i32* %e, align 4
  %30 = load i32, i32* %f, align 4
  %call27 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %28, i32 0, i32 0, i32 %29, i32 %30)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot = xor i1 %tobool28, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.23, %land.lhs.true.19, %land.lhs.true, %entry
  %31 = phi i1 [ false, %land.lhs.true.23 ], [ false, %land.lhs.true.19 ], [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %31 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn97(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
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
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom1
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
  store i32 %add6, i32* %c, align 4
  %11 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %12, %13
  store i32 %add9, i32* %d, align 4
  %14 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load i32, i32* %a, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom10
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx11, i32 0, i32 16
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %16 = load i32, i32* %arrayidx12, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

cond.false:                                       ; preds = %entry
  %17 = load i32, i32* %a, align 4
  %call = call i32 @attack(i32 %17, i32* null)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %cond.false, %cond.true
  %18 = load i32, i32* @stackp, align 4
  %cmp14 = icmp eq i32 %18, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.21

cond.true.15:                                     ; preds = %land.lhs.true
  %19 = load i32, i32* %b, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom16
  %attack_codes18 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx17, i32 0, i32 16
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes18, i32 0, i64 0
  %20 = load i32, i32* %arrayidx19, align 4
  %tobool20 = icmp ne i32 %20, 0
  br i1 %tobool20, label %land.lhs.true.24, label %land.end

cond.false.21:                                    ; preds = %land.lhs.true
  %21 = load i32, i32* %b, align 4
  %call22 = call i32 @attack(i32 %21, i32* null)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %land.end

land.lhs.true.24:                                 ; preds = %cond.false.21, %cond.true.15
  %22 = load i32, i32* %c, align 4
  %23 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %23
  %call25 = call i32 @cut_possible(i32 %22, i32 %sub)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.24
  %24 = load i32, i32* %d, align 4
  %25 = load i32, i32* %color.addr, align 4
  %sub27 = sub nsw i32 3, %25
  %call28 = call i32 @cut_possible(i32 %24, i32 %sub27)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot = xor i1 %tobool29, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.24, %cond.false.21, %cond.true.15, %cond.false, %cond.true
  %26 = phi i1 [ false, %land.lhs.true.24 ], [ false, %cond.false.21 ], [ false, %cond.true.15 ], [ false, %cond.false ], [ false, %cond.true ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %26 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn98(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %b, align 4
  %call = call i32 @not_lunch_helper(i32 %8, i32 %9)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn99(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %a, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %b, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 611), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %c, align 4
  %10 = load i32, i32* %trans.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 649), i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %move.addr, align 4
  %add9 = add nsw i32 %11, %12
  store i32 %add9, i32* %d, align 4
  %13 = load i32, i32* %action.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %15 = load i32, i32* %c, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom10
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx11, i32 0, i32 16
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %16 = load i32, i32* %arrayidx12, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %land.end, label %land.rhs

cond.false:                                       ; preds = %if.then
  %17 = load i32, i32* %c, align 4
  %call = call i32 @attack(i32 %17, i32* null)
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %cond.false, %cond.true
  %18 = load i32, i32* %d, align 4
  %19 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %19
  %call15 = call i32 @safe_move(i32 %18, i32 %sub)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false, %cond.true
  %20 = phi i1 [ false, %cond.false ], [ false, %cond.true ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %21 = load i32, i32* %a, align 4
  %22 = load i32, i32* %b, align 4
  %call17 = call i32 @not_lunch_helper(i32 %21, i32 %22)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %land.end
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @autohelperconn100(i32 %trans, i32 %move, i32 %color, i32 %action) #0 {
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
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 610), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %b, align 4
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %b, align 4
  %call = call i32 @not_lunch_helper(i32 %8, i32 %9)
  ret i32 0
}

declare i32 @play_attack_defend_n(i32, i32, i32, ...) #1

declare i32 @play_attack_defend2_n(i32, i32, i32, ...) #1

declare i32 @countlib(i32) #1

declare i32 @play_connect_n(i32, i32, i32, ...) #1

declare i32 @attack(i32, i32*) #1

declare i32 @safe_move(i32, i32) #1

declare i32 @somewhere(i32, i32, i32, ...) #1

declare i32 @whose_moyo(%struct.influence_data*, i32) #1

declare i32 @cut_possible(i32, i32) #1

declare i32 @whose_area(%struct.influence_data*, i32) #1

declare i32 @is_ko_point(i32) #1

declare i32 @accuratelib(i32, i32, i32, i32*) #1

declare i32 @play_break_through_n(i32, i32, ...) #1

declare void @amalgamate_most_valuable_helper(i32, i32, i32) #1

declare void @join_dragons(i32, i32) #1

declare i32 @is_suicide(i32, i32) #1

declare i32 @not_lunch_helper(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
